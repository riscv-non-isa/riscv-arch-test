
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cc0')]      |
| SIG_REGION                | [('0x80002010', '0x80002280', '78 dwords')]      |
| COV_LABELS                | aes64es      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64es-rwp1.S/ref.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 80      |
| Total Signature Updates   | 78      |
| STAT1                     | 26      |
| STAT2                     | 0      |
| STAT3                     | 26     |
| STAT4                     | 52     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```
[0x800003dc]:aes64es

[0x80000430]:aes64es

[0x8000048c]:aes64es

[0x800004e8]:aes64es

[0x80000544]:aes64es

[0x800005a0]:aes64es

[0x800005fc]:aes64es

[0x80000648]:aes64es

[0x800006a4]:aes64es

[0x80000700]:aes64es

[0x80000754]:aes64es

[0x800007b0]:aes64es

[0x80000804]:aes64es

[0x80000860]:aes64es

[0x800008bc]:aes64es

[0x80000918]:aes64es

[0x80000974]:aes64es

[0x800009d0]:aes64es

[0x80000a24]:aes64es

[0x80000a80]:aes64es

[0x80000ad4]:aes64es

[0x80000b30]:aes64es

[0x80000b8c]:aes64es

[0x80000be8]:aes64es

[0x80000c44]:aes64es

[0x80000ca0]:aes64es



```

## Details of STAT4:

```
Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64es
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003ec] : None -- Store: [0x80002018]:0x21accb6c148b7450




Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64es
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003f0] : None -- Store: [0x80002020]:0xb25101d46f025d3c




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64es
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000440] : None -- Store: [0x80002030]:0x16abe758844269df




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64es
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000444] : None -- Store: [0x80002038]:0x4adf03067b5c3230




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64es
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x8000049c] : None -- Store: [0x80002048]:0xd35abf580d35176d




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64es
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x800004a0] : None -- Store: [0x80002050]:0x8f883806a45bd5de




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64es
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004f8] : None -- Store: [0x80002060]:0xd9244e9903592af3




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64es
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004fc] : None -- Store: [0x80002068]:0xe458db60e6a91a8d




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64es
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000554] : None -- Store: [0x80002078]:0xf921019a7a06fa08




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64es
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000558] : None -- Store: [0x80002080]:0xc42715ad13b726b7




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64es
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b0] : None -- Store: [0x80002090]:0xe48367d8183b4232




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64es
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b4] : None -- Store: [0x80002098]:0xa2d191f5b6737b93




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64es
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x8000060c] : None -- Store: [0x800020a8]:0x4e034af96a81f75f




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64es
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x80000610] : None -- Store: [0x800020b0]:0x452d6c90dceac5db




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64es
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x80000658] : None -- Store: [0x800020c0]:0xd201cf8d99542855




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64es
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x8000065c] : None -- Store: [0x800020c8]:0xc2102139e6ac0ab8




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64es
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b4] : None -- Store: [0x800020d8]:0x73bec4b02eefa23a




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64es
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b8] : None -- Store: [0x800020e0]:0x0342de4ca1e7e498




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64es
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000710] : None -- Store: [0x800020f0]:0xce3560c5aec9edce




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64es
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000714] : None -- Store: [0x800020f8]:0xbc4133c242fbb322




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64es
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000764] : None -- Store: [0x80002108]:0x6f587d359f96364f




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64es
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000768] : None -- Store: [0x80002110]:0xa1e659ec99f631dd




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64es
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c0] : None -- Store: [0x80002120]:0xa5811e78da2a18cf




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64es
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c4] : None -- Store: [0x80002128]:0x0e042ab9f3884f90




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64es
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000814] : None -- Store: [0x80002138]:0xe0fe9edceeb8ae0d




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64es
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000818] : None -- Store: [0x80002140]:0xe105204f4e332afe




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64es
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000870] : None -- Store: [0x80002150]:0x4a114c03d87d95b8




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64es
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000874] : None -- Store: [0x80002158]:0x3ee4e1d6844a1122




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64es
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008cc] : None -- Store: [0x80002168]:0xda65254d70112874




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64es
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008d0] : None -- Store: [0x80002170]:0x4c34cb280a0c1bbe




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64es
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x80000928] : None -- Store: [0x80002180]:0x5271a2ecc5a666e6




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64es
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x8000092c] : None -- Store: [0x80002188]:0xc960716f8de02713




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64es
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000984] : None -- Store: [0x80002198]:0x11a23160887a38de




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64es
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000988] : None -- Store: [0x800021a0]:0x82a347f06b2c6a42




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64es
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e0] : None -- Store: [0x800021b0]:0xf1a93822e5e614dd




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64es
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e4] : None -- Store: [0x800021b8]:0x3479a3b6ce04cc14




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64es
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a34] : None -- Store: [0x800021c8]:0xc71961693c17af51




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64es
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a38] : None -- Store: [0x800021d0]:0xdfce7a8d0dd7aa21




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64es
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a90] : None -- Store: [0x800021e0]:0xd7d2b3e00651ba9e




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64es
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a94] : None -- Store: [0x800021e8]:0xfd8f73400b148641




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64es
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae4] : None -- Store: [0x800021f8]:0x6a37559879c5eb39




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64es
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae8] : None -- Store: [0x80002200]:0xa846697a21adfb62




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64es
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b40] : None -- Store: [0x80002210]:0x97819430da69a80c




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64es
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b44] : None -- Store: [0x80002218]:0x0926fb385ffc208d




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64es
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000b9c] : None -- Store: [0x80002228]:0x6f28a238360ba353




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64es
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000ba0] : None -- Store: [0x80002230]:0x7c02d34e30a56203




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64es
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bf8] : None -- Store: [0x80002240]:0xb5b3071c9a57fbc2




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64es
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bfc] : None -- Store: [0x80002248]:0x862b64d84841156a




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64es
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c54] : None -- Store: [0x80002258]:0x2d3626aa0f65534d




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64es
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c58] : None -- Store: [0x80002260]:0x00be76c8f5cc2a28




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64es
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb0] : None -- Store: [0x80002270]:0xd786f9eab2aeeb1c




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64es
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb4] : None -- Store: [0x80002278]:0x6461c551bf2cb3d8





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

|s.no|            signature             |                coverpoints                 |                               code                               |
|---:|----------------------------------|--------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002010]<br>0x1e54a501dca78d08|- rs1 : x2<br> - rs2 : x1<br> - rd : x4<br> |[0x800003e0]:aes64es<br> [0x800003e4]:xor<br> [0x800003e8]:sd<br> |
|   2|[0x80002028]<br>0x919239a54a728f91|- rs1 : x3<br> - rd : x5<br>                |[0x80000434]:aes64es<br> [0x80000438]:xor<br> [0x8000043c]:sd<br> |
|   3|[0x80002040]<br>0x97b525634a9fd4db|- rs1 : x4<br> - rd : x6<br>                |[0x80000490]:aes64es<br> [0x80000494]:xor<br> [0x80000498]:sd<br> |
|   4|[0x80002058]<br>0x591004b8278ced31|- rs1 : x5<br> - rd : x7<br>                |[0x800004ec]:aes64es<br> [0x800004f0]:xor<br> [0x800004f4]:sd<br> |
|   5|[0x80002070]<br>0xc86f864027c84e74|- rs1 : x6<br> - rd : x8<br>                |[0x80000548]:aes64es<br> [0x8000054c]:xor<br> [0x80000550]:sd<br> |
|   6|[0x80002088]<br>0x1c0012095a525cfd|- rs1 : x7<br> - rd : x9<br>                |[0x800005a4]:aes64es<br> [0x800005a8]:xor<br> [0x800005ac]:sd<br> |
|   7|[0x800020a0]<br>0x2831236b2b7f3546|- rs1 : x8<br> - rd : x10<br>               |[0x80000600]:aes64es<br> [0x80000604]:xor<br> [0x80000608]:sd<br> |
|   8|[0x800020b8]<br>0x0c8293f1ca415334|- rs1 : x9<br> - rd : x11<br>               |[0x8000064c]:aes64es<br> [0x80000650]:xor<br> [0x80000654]:sd<br> |
|   9|[0x800020d0]<br>0x89b05acf51303fe3|- rs1 : x10<br> - rd : x12<br>              |[0x800006a8]:aes64es<br> [0x800006ac]:xor<br> [0x800006b0]:sd<br> |
|  10|[0x800020e8]<br>0xc99258ad4023d98c|- rs1 : x11<br> - rd : x13<br>              |[0x80000704]:aes64es<br> [0x80000708]:xor<br> [0x8000070c]:sd<br> |
|  11|[0x80002100]<br>0xb5aec5cf8bd0eeb8|- rs1 : x12<br> - rd : x14<br>              |[0x80000758]:aes64es<br> [0x8000075c]:xor<br> [0x80000760]:sd<br> |
|  12|[0x80002118]<br>0xb5975bd9623a7d88|- rs1 : x13<br> - rd : x15<br>              |[0x800007b4]:aes64es<br> [0x800007b8]:xor<br> [0x800007bc]:sd<br> |
|  13|[0x80002130]<br>0x690f5f737c3dda68|- rs1 : x14<br> - rd : x16<br>              |[0x80000808]:aes64es<br> [0x8000080c]:xor<br> [0x80000810]:sd<br> |
|  14|[0x80002148]<br>0x00e65f20929ad2b1|- rs1 : x15<br> - rd : x17<br>              |[0x80000864]:aes64es<br> [0x80000868]:xor<br> [0x8000086c]:sd<br> |
|  15|[0x80002160]<br>0x2ed1c38090a4b89c|- rs1 : x16<br> - rd : x18<br>              |[0x800008c0]:aes64es<br> [0x800008c4]:xor<br> [0x800008c8]:sd<br> |
|  16|[0x80002178]<br>0xd8828316145ab9e5|- rs1 : x17<br> - rd : x19<br>              |[0x8000091c]:aes64es<br> [0x80000920]:xor<br> [0x80000924]:sd<br> |
|  17|[0x80002190]<br>0x927c00e2dcb14bdc|- rs1 : x18<br> - rd : x20<br>              |[0x80000978]:aes64es<br> [0x8000097c]:xor<br> [0x80000980]:sd<br> |
|  18|[0x800021a8]<br>0x6870614fa698875c|- rs1 : x19<br> - rd : x21<br>              |[0x800009d4]:aes64es<br> [0x800009d8]:xor<br> [0x800009dc]:sd<br> |
|  19|[0x800021c0]<br>0x370e6be3adbada97|- rs1 : x20<br> - rd : x22<br>              |[0x80000a28]:aes64es<br> [0x80000a2c]:xor<br> [0x80000a30]:sd<br> |
|  20|[0x800021d8]<br>0xd14cebaae56ec4e5|- rs1 : x21<br> - rd : x23<br>              |[0x80000a84]:aes64es<br> [0x80000a88]:xor<br> [0x80000a8c]:sd<br> |
|  21|[0x800021f0]<br>0x14a3cafe25458cca|- rs1 : x22<br> - rd : x24<br>              |[0x80000ad8]:aes64es<br> [0x80000adc]:xor<br> [0x80000ae0]:sd<br> |
|  22|[0x80002208]<br>0x4a5cc4250b2a7d95|- rs1 : x23<br> - rd : x25<br>              |[0x80000b34]:aes64es<br> [0x80000b38]:xor<br> [0x80000b3c]:sd<br> |
|  23|[0x80002220]<br>0xdce5788a7de4a92e|- rs1 : x24<br> - rd : x26<br>              |[0x80000b90]:aes64es<br> [0x80000b94]:xor<br> [0x80000b98]:sd<br> |
|  24|[0x80002238]<br>0x99462804c3474472|- rs1 : x25<br> - rd : x27<br>              |[0x80000bec]:aes64es<br> [0x80000bf0]:xor<br> [0x80000bf4]:sd<br> |
|  25|[0x80002250]<br>0x54c4b6ffd8d303ce|- rs1 : x26<br> - rd : x28<br>              |[0x80000c48]:aes64es<br> [0x80000c4c]:xor<br> [0x80000c50]:sd<br> |
|  26|[0x80002268]<br>0x7c946a286d131450|- rs1 : x27<br> - rd : x29<br>              |[0x80000ca4]:aes64es<br> [0x80000ca8]:xor<br> [0x80000cac]:sd<br> |
