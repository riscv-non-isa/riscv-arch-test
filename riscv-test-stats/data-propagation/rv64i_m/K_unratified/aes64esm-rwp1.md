
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
| COV_LABELS                | aes64esm      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64esm-rwp1.S/ref.S    |
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
[0x800003dc]:aes64esm

[0x80000430]:aes64esm

[0x8000048c]:aes64esm

[0x800004e8]:aes64esm

[0x80000544]:aes64esm

[0x800005a0]:aes64esm

[0x800005fc]:aes64esm

[0x80000648]:aes64esm

[0x800006a4]:aes64esm

[0x80000700]:aes64esm

[0x80000754]:aes64esm

[0x800007b0]:aes64esm

[0x80000804]:aes64esm

[0x80000860]:aes64esm

[0x800008bc]:aes64esm

[0x80000918]:aes64esm

[0x80000974]:aes64esm

[0x800009d0]:aes64esm

[0x80000a24]:aes64esm

[0x80000a80]:aes64esm

[0x80000ad4]:aes64esm

[0x80000b30]:aes64esm

[0x80000b8c]:aes64esm

[0x80000be8]:aes64esm

[0x80000c44]:aes64esm

[0x80000ca0]:aes64esm



```

## Details of STAT4:

```
Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64esm
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003ec] : None -- Store: [0x80002018]:0x91872f1327152aa3




Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64esm
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003f0] : None -- Store: [0x80002020]:0x027ae5ab5c9c03cf




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64esm
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000440] : None -- Store: [0x80002030]:0x88c87d3f42a54fd8




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64esm
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000444] : None -- Store: [0x80002038]:0xd4bc9961bdbb1437




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64esm
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x8000049c] : None -- Store: [0x80002048]:0xb03d00e38f0711db




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64esm
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x800004a0] : None -- Store: [0x80002050]:0xecef87bd2669d368




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64esm
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004f8] : None -- Store: [0x80002060]:0x73efb0067b6e4fd9




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64esm
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004fc] : None -- Store: [0x80002068]:0x4e9325ff9e9e7fa7




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64esm
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000554] : None -- Store: [0x80002078]:0x7cc902f410709779




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64esm
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000558] : None -- Store: [0x80002080]:0x41cf16c379c14bc6




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64esm
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b0] : None -- Store: [0x80002090]:0x44956c651f2ee381




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64esm
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b4] : None -- Store: [0x80002098]:0x02c79a48b166da20




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64esm
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x8000060c] : None -- Store: [0x800020a8]:0xc567267a430f5857




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64esm
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x80000610] : None -- Store: [0x800020b0]:0xce490013f5646ad3




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64esm
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x80000658] : None -- Store: [0x800020c0]:0xfd2dd998aa65601f




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64esm
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x8000065c] : None -- Store: [0x800020c8]:0xed3c372cd59d42f2




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64esm
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b4] : None -- Store: [0x800020d8]:0x578689e15f2f6148




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64esm
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b8] : None -- Store: [0x800020e0]:0x277a931dd02727ea




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64esm
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000710] : None -- Store: [0x800020f0]:0x868694ca2a43e1cc




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64esm
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000714] : None -- Store: [0x800020f8]:0xf4f2c7cdc671bf20




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64esm
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000764] : None -- Store: [0x80002108]:0xa44948da54f41dcd




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64esm
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000768] : None -- Store: [0x80002110]:0x6af76c0352941a5f




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64esm
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c0] : None -- Store: [0x80002120]:0x468b79f6d7f65b5d




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64esm
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c4] : None -- Store: [0x80002128]:0xed0e4d37fe540c02




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64esm
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000814] : None -- Store: [0x80002138]:0xc49e0204c6e177a5




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64esm
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000818] : None -- Store: [0x80002140]:0xc565bc97666af356




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64esm
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000870] : None -- Store: [0x80002150]:0xccb3e28990a4d66a




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64esm
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000874] : None -- Store: [0x80002158]:0xb8464f5ccc9352f0




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64esm
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008cc] : None -- Store: [0x80002168]:0x38d7724a45ee67f1




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64esm
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008d0] : None -- Store: [0x80002170]:0xae869c2f3ff3543b




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64esm
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x80000928] : None -- Store: [0x80002180]:0x585a721d60831e1e




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64esm
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x8000092c] : None -- Store: [0x80002188]:0xc34ba19e28c55feb




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64esm
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000984] : None -- Store: [0x80002198]:0x113dee203091a81d




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64esm
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000988] : None -- Store: [0x800021a0]:0x823c98b0d3c7fa81




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64esm
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e0] : None -- Store: [0x800021b0]:0x0e5b43545f2a219e




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64esm
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e4] : None -- Store: [0x800021b8]:0xcb8bd8c074c8f957




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64esm
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a34] : None -- Store: [0x800021c8]:0x566847af33941163




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64esm
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a38] : None -- Store: [0x800021d0]:0x4ebf5c4b02541413




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64esm
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a90] : None -- Store: [0x800021e0]:0xef8e27105e8c04a5




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64esm
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a94] : None -- Store: [0x800021e8]:0xc5d3e7b053c9387a




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64esm
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae4] : None -- Store: [0x800021f8]:0x051d018997c8d9e8




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64esm
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae8] : None -- Store: [0x80002200]:0xc76c3d6bcfa0c9b3




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64esm
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b40] : None -- Store: [0x80002210]:0x701f0cd17a032648




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64esm
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b44] : None -- Store: [0x80002218]:0xeeb863d9ff96aec9




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64esm
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000b9c] : None -- Store: [0x80002228]:0x1c7b70ca31bc2565




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64esm
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000ba0] : None -- Store: [0x80002230]:0x0f5101bc3712e435




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64esm
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bf8] : None -- Store: [0x80002240]:0xe1a26937de224c44




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64esm
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bfc] : None -- Store: [0x80002248]:0xd23a0af30c34a2ec




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64esm
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c54] : None -- Store: [0x80002258]:0xaf97913effc54b05




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64esm
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c58] : None -- Store: [0x80002260]:0x821fc15c056c3260




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64esm
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb0] : None -- Store: [0x80002270]:0xef66458e1e7d8a02




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64esm
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb4] : None -- Store: [0x80002278]:0x5c81793513ffd2c6





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

|s.no|            signature             |                coverpoints                 |                               code                                |
|---:|----------------------------------|--------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xce2eb2bc91af27e7|- rs1 : x2<br> - rs2 : x1<br> - rd : x4<br> |[0x800003e0]:aes64esm<br> [0x800003e4]:xor<br> [0x800003e8]:sd<br> |
|   2|[0x80002028]<br>0x660beb19c124488b|- rs1 : x3<br> - rd : x5<br>                |[0x80000434]:aes64esm<br> [0x80000438]:xor<br> [0x8000043c]:sd<br> |
|   3|[0x80002040]<br>0x00957a8ba9f4981f|- rs1 : x4<br> - rd : x6<br>                |[0x80000490]:aes64esm<br> [0x80000494]:xor<br> [0x80000498]:sd<br> |
|   4|[0x80002058]<br>0x7577d92e7cb658e5|- rs1 : x5<br> - rd : x7<br>                |[0x800004ec]:aes64esm<br> [0x800004f0]:xor<br> [0x800004f4]:sd<br> |
|   5|[0x80002070]<br>0xa25b2eb654d88cd5|- rs1 : x6<br> - rd : x8<br>                |[0x80000548]:aes64esm<br> [0x8000054c]:xor<br> [0x80000550]:sd<br> |
|   6|[0x80002088]<br>0x313f3138a6ebe90d|- rs1 : x7<br> - rd : x9<br>                |[0x800005a4]:aes64esm<br> [0x800005a8]:xor<br> [0x800005ac]:sd<br> |
|   7|[0x800020a0]<br>0xff5256aad6f08687|- rs1 : x8<br> - rd : x10<br>               |[0x80000600]:aes64esm<br> [0x80000604]:xor<br> [0x80000608]:sd<br> |
|   8|[0x800020b8]<br>0x01695dd9c1a09b16|- rs1 : x9<br> - rd : x11<br>               |[0x8000064c]:aes64esm<br> [0x80000650]:xor<br> [0x80000654]:sd<br> |
|   9|[0x800020d0]<br>0xa96e3952934f9cfd|- rs1 : x10<br> - rd : x12<br>              |[0x800006a8]:aes64esm<br> [0x800006ac]:xor<br> [0x800006b0]:sd<br> |
|  10|[0x800020e8]<br>0xaf8a79f2f5d30010|- rs1 : x11<br> - rd : x13<br>              |[0x80000704]:aes64esm<br> [0x80000708]:xor<br> [0x8000070c]:sd<br> |
|  11|[0x80002100]<br>0x508902cae06b9f19|- rs1 : x12<br> - rd : x14<br>              |[0x80000758]:aes64esm<br> [0x8000075c]:xor<br> [0x80000760]:sd<br> |
|  12|[0x80002118]<br>0xcd73786600275ed4|- rs1 : x13<br> - rd : x15<br>              |[0x800007b4]:aes64esm<br> [0x800007b8]:xor<br> [0x800007bc]:sd<br> |
|  13|[0x80002130]<br>0x1789b561a74cfce4|- rs1 : x14<br> - rd : x16<br>              |[0x80000808]:aes64esm<br> [0x8000080c]:xor<br> [0x80000810]:sd<br> |
|  14|[0x80002148]<br>0xd9a8af47bfe1291c|- rs1 : x15<br> - rd : x17<br>              |[0x80000864]:aes64esm<br> [0x80000868]:xor<br> [0x8000086c]:sd<br> |
|  15|[0x80002160]<br>0xd5885bba98dc90c4|- rs1 : x16<br> - rd : x18<br>              |[0x800008c0]:aes64esm<br> [0x800008c4]:xor<br> [0x800008c8]:sd<br> |
|  16|[0x80002178]<br>0x90f94ee8ffd4764f|- rs1 : x17<br> - rd : x19<br>              |[0x8000091c]:aes64esm<br> [0x80000920]:xor<br> [0x80000924]:sd<br> |
|  17|[0x80002190]<br>0x7eb7f43126915e13|- rs1 : x18<br> - rd : x20<br>              |[0x80000978]:aes64esm<br> [0x8000097c]:xor<br> [0x80000980]:sd<br> |
|  18|[0x800021a8]<br>0x10767525ac015c14|- rs1 : x19<br> - rd : x21<br>              |[0x800009d4]:aes64esm<br> [0x800009d8]:xor<br> [0x800009dc]:sd<br> |
|  19|[0x800021c0]<br>0x35cd105983ce4057|- rs1 : x20<br> - rd : x22<br>              |[0x80000a28]:aes64esm<br> [0x80000a2c]:xor<br> [0x80000a30]:sd<br> |
|  20|[0x800021d8]<br>0xfbb162f44fc9210d|- rs1 : x21<br> - rd : x23<br>              |[0x80000a84]:aes64esm<br> [0x80000a88]:xor<br> [0x80000a8c]:sd<br> |
|  21|[0x800021f0]<br>0x58559b15c6a32360|- rs1 : x22<br> - rd : x24<br>              |[0x80000ad8]:aes64esm<br> [0x80000adc]:xor<br> [0x80000ae0]:sd<br> |
|  22|[0x80002208]<br>0x6387180be5a11a97|- rs1 : x23<br> - rd : x25<br>              |[0x80000b34]:aes64esm<br> [0x80000b38]:xor<br> [0x80000b3c]:sd<br> |
|  23|[0x80002220]<br>0xbb5c92bec5d32d25|- rs1 : x24<br> - rd : x26<br>              |[0x80000b90]:aes64esm<br> [0x80000b94]:xor<br> [0x80000b98]:sd<br> |
|  24|[0x80002238]<br>0x4b1007af08e6f0ac|- rs1 : x25<br> - rd : x27<br>              |[0x80000bec]:aes64esm<br> [0x80000bf0]:xor<br> [0x80000bf4]:sd<br> |
|  25|[0x80002250]<br>0xc0268bb432037e89|- rs1 : x26<br> - rd : x28<br>              |[0x80000c48]:aes64esm<br> [0x80000c4c]:xor<br> [0x80000c50]:sd<br> |
|  26|[0x80002268]<br>0x7ef527062dd520e2|- rs1 : x27<br> - rd : x29<br>              |[0x80000ca4]:aes64esm<br> [0x80000ca8]:xor<br> [0x80000cac]:sd<br> |
