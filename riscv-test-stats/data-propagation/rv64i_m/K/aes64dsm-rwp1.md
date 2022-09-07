
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
| COV_LABELS                | aes64dsm      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/aes64dsm-rwp1.S/ref.S    |
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
[0x800003dc]:aes64dsm

[0x80000430]:aes64dsm

[0x8000048c]:aes64dsm

[0x800004e8]:aes64dsm

[0x80000544]:aes64dsm

[0x800005a0]:aes64dsm

[0x800005fc]:aes64dsm

[0x80000648]:aes64dsm

[0x800006a4]:aes64dsm

[0x80000700]:aes64dsm

[0x80000754]:aes64dsm

[0x800007b0]:aes64dsm

[0x80000804]:aes64dsm

[0x80000860]:aes64dsm

[0x800008bc]:aes64dsm

[0x80000918]:aes64dsm

[0x80000974]:aes64dsm

[0x800009d0]:aes64dsm

[0x80000a24]:aes64dsm

[0x80000a80]:aes64dsm

[0x80000ad4]:aes64dsm

[0x80000b30]:aes64dsm

[0x80000b8c]:aes64dsm

[0x80000be8]:aes64dsm

[0x80000c44]:aes64dsm

[0x80000ca0]:aes64dsm



```

## Details of STAT4:

```
Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64dsm
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003ec] : None -- Store: [0x80002018]:0x32372b71f7676848




Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x4']
Last Code Sequence : 
	-[0x800003e0]:aes64dsm
	-[0x800003e4]:xor
	-[0x800003e8]:sd
Current Store : [0x800003f0] : None -- Store: [0x80002020]:0xa1cae1c98cee4124




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64dsm
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000440] : None -- Store: [0x80002030]:0x6566ed599bd59647




Last Coverpoint : ['rs1 : x3', 'rd : x5']
Last Code Sequence : 
	-[0x80000434]:aes64dsm
	-[0x80000438]:xor
	-[0x8000043c]:sd
Current Store : [0x80000444] : None -- Store: [0x80002038]:0x3912090764cbcda8




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64dsm
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x8000049c] : None -- Store: [0x80002048]:0x59a91923133c2f87




Last Coverpoint : ['rs1 : x4', 'rd : x6']
Last Code Sequence : 
	-[0x80000490]:aes64dsm
	-[0x80000494]:xor
	-[0x80000498]:sd
Current Store : [0x800004a0] : None -- Store: [0x80002050]:0x057b9e7dba52ed34




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64dsm
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004f8] : None -- Store: [0x80002060]:0x8033aa926b7d4c24




Last Coverpoint : ['rs1 : x5', 'rd : x7']
Last Code Sequence : 
	-[0x800004ec]:aes64dsm
	-[0x800004f0]:xor
	-[0x800004f4]:sd
Current Store : [0x800004fc] : None -- Store: [0x80002068]:0xbd4f3f6b8e8d7c5a




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64dsm
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000554] : None -- Store: [0x80002078]:0x45a268fbdc6370e0




Last Coverpoint : ['rs1 : x6', 'rd : x8']
Last Code Sequence : 
	-[0x80000548]:aes64dsm
	-[0x8000054c]:xor
	-[0x80000550]:sd
Current Store : [0x80000558] : None -- Store: [0x80002080]:0x78a47cccb5d2ac5f




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64dsm
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b0] : None -- Store: [0x80002090]:0x0e1364a85cc1c51c




Last Coverpoint : ['rs1 : x7', 'rd : x9']
Last Code Sequence : 
	-[0x800005a4]:aes64dsm
	-[0x800005a8]:xor
	-[0x800005ac]:sd
Current Store : [0x800005b4] : None -- Store: [0x80002098]:0x48419285f289fcbd




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64dsm
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x8000060c] : None -- Store: [0x800020a8]:0x8fbe653de45db495




Last Coverpoint : ['rs1 : x8', 'rd : x10']
Last Code Sequence : 
	-[0x80000600]:aes64dsm
	-[0x80000604]:xor
	-[0x80000608]:sd
Current Store : [0x80000610] : None -- Store: [0x800020b0]:0x8490435452368611




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64dsm
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x80000658] : None -- Store: [0x800020c0]:0xdc20c4bb3d17e9a1




Last Coverpoint : ['rs1 : x9', 'rd : x11']
Last Code Sequence : 
	-[0x8000064c]:aes64dsm
	-[0x80000650]:xor
	-[0x80000654]:sd
Current Store : [0x8000065c] : None -- Store: [0x800020c8]:0xcc312a0f42efcb4c




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64dsm
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b4] : None -- Store: [0x800020d8]:0x7b15e2031de7b49e




Last Coverpoint : ['rs1 : x10', 'rd : x12']
Last Code Sequence : 
	-[0x800006a8]:aes64dsm
	-[0x800006ac]:xor
	-[0x800006b0]:sd
Current Store : [0x800006b8] : None -- Store: [0x800020e0]:0x0be9f8ff92eff23c




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64dsm
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000710] : None -- Store: [0x800020f0]:0x018357ac7d3b4e86




Last Coverpoint : ['rs1 : x11', 'rd : x13']
Last Code Sequence : 
	-[0x80000704]:aes64dsm
	-[0x80000708]:xor
	-[0x8000070c]:sd
Current Store : [0x80000714] : None -- Store: [0x800020f8]:0x73f704ab9109106a




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64dsm
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000764] : None -- Store: [0x80002108]:0x8b65b2639c3ee2f8




Last Coverpoint : ['rs1 : x12', 'rd : x14']
Last Code Sequence : 
	-[0x80000758]:aes64dsm
	-[0x8000075c]:xor
	-[0x80000760]:sd
Current Store : [0x80000768] : None -- Store: [0x80002110]:0x45db96ba9a5ee56a




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64dsm
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c0] : None -- Store: [0x80002120]:0xace0ba22fdae20d6




Last Coverpoint : ['rs1 : x13', 'rd : x15']
Last Code Sequence : 
	-[0x800007b4]:aes64dsm
	-[0x800007b8]:xor
	-[0x800007bc]:sd
Current Store : [0x800007c4] : None -- Store: [0x80002128]:0x07658ee3d40c7789




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64dsm
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000814] : None -- Store: [0x80002138]:0x6001052655200088




Last Coverpoint : ['rs1 : x14', 'rd : x16']
Last Code Sequence : 
	-[0x80000808]:aes64dsm
	-[0x8000080c]:xor
	-[0x80000810]:sd
Current Store : [0x80000818] : None -- Store: [0x80002140]:0x61fabbb5f5ab847b




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64dsm
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000870] : None -- Store: [0x80002150]:0xf3cc11d12d44a4d9




Last Coverpoint : ['rs1 : x15', 'rd : x17']
Last Code Sequence : 
	-[0x80000864]:aes64dsm
	-[0x80000868]:xor
	-[0x8000086c]:sd
Current Store : [0x80000874] : None -- Store: [0x80002158]:0x8739bc0471732043




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64dsm
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008cc] : None -- Store: [0x80002168]:0x0ca6605be6435aa0




Last Coverpoint : ['rs1 : x16', 'rd : x18']
Last Code Sequence : 
	-[0x800008c0]:aes64dsm
	-[0x800008c4]:xor
	-[0x800008c8]:sd
Current Store : [0x800008d0] : None -- Store: [0x80002170]:0x9af78e3e9c5e696a




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64dsm
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x80000928] : None -- Store: [0x80002180]:0x962c962d35264c58




Last Coverpoint : ['rs1 : x17', 'rd : x19']
Last Code Sequence : 
	-[0x8000091c]:aes64dsm
	-[0x80000920]:xor
	-[0x80000924]:sd
Current Store : [0x8000092c] : None -- Store: [0x80002188]:0x0d3d45ae7d600dad




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64dsm
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000984] : None -- Store: [0x80002198]:0x95eab991644fd22d




Last Coverpoint : ['rs1 : x18', 'rd : x20']
Last Code Sequence : 
	-[0x80000978]:aes64dsm
	-[0x8000097c]:xor
	-[0x80000980]:sd
Current Store : [0x80000988] : None -- Store: [0x800021a0]:0x06ebcf01871980b1




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64dsm
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e0] : None -- Store: [0x800021b0]:0x65ebedafa053b59f




Last Coverpoint : ['rs1 : x19', 'rd : x21']
Last Code Sequence : 
	-[0x800009d4]:aes64dsm
	-[0x800009d8]:xor
	-[0x800009dc]:sd
Current Store : [0x800009e4] : None -- Store: [0x800021b8]:0xa03b763b8bb16d56




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64dsm
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a34] : None -- Store: [0x800021c8]:0x5300dbc8a9f95dbe




Last Coverpoint : ['rs1 : x20', 'rd : x22']
Last Code Sequence : 
	-[0x80000a28]:aes64dsm
	-[0x80000a2c]:xor
	-[0x80000a30]:sd
Current Store : [0x80000a38] : None -- Store: [0x800021d0]:0x4bd7c02c983958ce




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64dsm
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a90] : None -- Store: [0x800021e0]:0xc84fb701a768df2d




Last Coverpoint : ['rs1 : x21', 'rd : x23']
Last Code Sequence : 
	-[0x80000a84]:aes64dsm
	-[0x80000a88]:xor
	-[0x80000a8c]:sd
Current Store : [0x80000a94] : None -- Store: [0x800021e8]:0xe21277a1aa2de3f2




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64dsm
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae4] : None -- Store: [0x800021f8]:0x46e8ebd48dae897a




Last Coverpoint : ['rs1 : x22', 'rd : x24']
Last Code Sequence : 
	-[0x80000ad8]:aes64dsm
	-[0x80000adc]:xor
	-[0x80000ae0]:sd
Current Store : [0x80000ae8] : None -- Store: [0x80002200]:0x8499d736d5c69921




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64dsm
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b40] : None -- Store: [0x80002210]:0x77d6018373efea14




Last Coverpoint : ['rs1 : x23', 'rd : x25']
Last Code Sequence : 
	-[0x80000b34]:aes64dsm
	-[0x80000b38]:xor
	-[0x80000b3c]:sd
Current Store : [0x80000b44] : None -- Store: [0x80002218]:0xe9716e8bf67a6295




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64dsm
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000b9c] : None -- Store: [0x80002228]:0xa59688d26206e297




Last Coverpoint : ['rs1 : x24', 'rd : x26']
Last Code Sequence : 
	-[0x80000b90]:aes64dsm
	-[0x80000b94]:xor
	-[0x80000b98]:sd
Current Store : [0x80000ba0] : None -- Store: [0x80002230]:0xb6bcf9a464a823c7




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64dsm
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bf8] : None -- Store: [0x80002240]:0x3ef5bdc20ab6f5e6




Last Coverpoint : ['rs1 : x25', 'rd : x27']
Last Code Sequence : 
	-[0x80000bec]:aes64dsm
	-[0x80000bf0]:xor
	-[0x80000bf4]:sd
Current Store : [0x80000bfc] : None -- Store: [0x80002248]:0x0d6dde06d8a01b4e




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64dsm
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c54] : None -- Store: [0x80002258]:0xd7704460eee5ac2c




Last Coverpoint : ['rs1 : x26', 'rd : x28']
Last Code Sequence : 
	-[0x80000c48]:aes64dsm
	-[0x80000c4c]:xor
	-[0x80000c50]:sd
Current Store : [0x80000c58] : None -- Store: [0x80002260]:0xfaf81402144cd549




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64dsm
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb0] : None -- Store: [0x80002270]:0x4ae269fbb8c9f9f9




Last Coverpoint : ['rs1 : x27', 'rd : x29']
Last Code Sequence : 
	-[0x80000ca4]:aes64dsm
	-[0x80000ca8]:xor
	-[0x80000cac]:sd
Current Store : [0x80000cb4] : None -- Store: [0x80002278]:0xf9055540b54ba13d





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
|   1|[0x80002010]<br>0x3f18c79752914d70|- rs1 : x2<br> - rs2 : x1<br> - rd : x4<br> |[0x800003e0]:aes64dsm<br> [0x800003e4]:xor<br> [0x800003e8]:sd<br> |
|   2|[0x80002028]<br>0x12ae9d26b8a27a1f|- rs1 : x3<br> - rd : x5<br>                |[0x80000434]:aes64dsm<br> [0x80000438]:xor<br> [0x8000043c]:sd<br> |
|   3|[0x80002040]<br>0x697b241608aff9e1|- rs1 : x4<br> - rd : x6<br>                |[0x80000490]:aes64dsm<br> [0x80000494]:xor<br> [0x80000498]:sd<br> |
|   4|[0x80002058]<br>0x27efbe13cfc35494|- rs1 : x5<br> - rd : x7<br>                |[0x800004ec]:aes64dsm<br> [0x800004f0]:xor<br> [0x800004f4]:sd<br> |
|   5|[0x80002070]<br>0x4a1ad09fbfe8c98e|- rs1 : x6<br> - rd : x8<br>                |[0x80000548]:aes64dsm<br> [0x8000054c]:xor<br> [0x80000550]:sd<br> |
|   6|[0x80002088]<br>0x4d531e27b452e85f|- rs1 : x7<br> - rd : x9<br>                |[0x800005a4]:aes64dsm<br> [0x800005a8]:xor<br> [0x800005ac]:sd<br> |
|   7|[0x800020a0]<br>0xda3d529ef424a6ec|- rs1 : x8<br> - rd : x10<br>               |[0x80000600]:aes64dsm<br> [0x80000604]:xor<br> [0x80000608]:sd<br> |
|   8|[0x800020b8]<br>0x055ae4bcd790c27a|- rs1 : x9<br> - rd : x11<br>               |[0x8000064c]:aes64dsm<br> [0x80000650]:xor<br> [0x80000654]:sd<br> |
|   9|[0x800020d0]<br>0xbdf6334dc974f6e1|- rs1 : x10<br> - rd : x12<br>              |[0x800006a8]:aes64dsm<br> [0x800006ac]:xor<br> [0x800006b0]:sd<br> |
|  10|[0x800020e8]<br>0x507f884cc389aa5c|- rs1 : x11<br> - rd : x13<br>              |[0x80000704]:aes64dsm<br> [0x80000708]:xor<br> [0x8000070c]:sd<br> |
|  11|[0x80002100]<br>0x0b9ac5ad52d939f6|- rs1 : x12<br> - rd : x14<br>              |[0x80000758]:aes64dsm<br> [0x8000075c]:xor<br> [0x80000760]:sd<br> |
|  12|[0x80002118]<br>0xd1e5b967f55f74d4|- rs1 : x13<br> - rd : x15<br>              |[0x800007b4]:aes64dsm<br> [0x800007b8]:xor<br> [0x800007bc]:sd<br> |
|  13|[0x80002130]<br>0xb664751fc308f676|- rs1 : x14<br> - rd : x16<br>              |[0x80000808]:aes64dsm<br> [0x8000080c]:xor<br> [0x80000810]:sd<br> |
|  14|[0x80002148]<br>0x6c051dd439ee122c|- rs1 : x15<br> - rd : x17<br>              |[0x80000864]:aes64dsm<br> [0x80000868]:xor<br> [0x8000086c]:sd<br> |
|  15|[0x80002160]<br>0x7231f276406b64ac|- rs1 : x16<br> - rd : x18<br>              |[0x800008c0]:aes64dsm<br> [0x800008c4]:xor<br> [0x800008c8]:sd<br> |
|  16|[0x80002178]<br>0xb682330e1be7a9c9|- rs1 : x17<br> - rd : x19<br>              |[0x8000091c]:aes64dsm<br> [0x80000920]:xor<br> [0x80000924]:sd<br> |
|  17|[0x80002190]<br>0xaf7ea6b95702ffbb|- rs1 : x18<br> - rd : x20<br>              |[0x80000978]:aes64dsm<br> [0x8000097c]:xor<br> [0x80000980]:sd<br> |
|  18|[0x800021a8]<br>0x75765142af6f5758|- rs1 : x19<br> - rd : x21<br>              |[0x800009d4]:aes64dsm<br> [0x800009d8]:xor<br> [0x800009dc]:sd<br> |
|  19|[0x800021c0]<br>0xaaee7f506a3c9841|- rs1 : x20<br> - rd : x22<br>              |[0x80000a28]:aes64dsm<br> [0x80000a2c]:xor<br> [0x80000a30]:sd<br> |
|  20|[0x800021d8]<br>0x6e38632c5bfae08a|- rs1 : x21<br> - rd : x23<br>              |[0x80000a84]:aes64dsm<br> [0x80000a88]:xor<br> [0x80000a8c]:sd<br> |
|  21|[0x800021f0]<br>0x189d4e6b427ad510|- rs1 : x22<br> - rd : x24<br>              |[0x80000ad8]:aes64dsm<br> [0x80000adc]:xor<br> [0x80000ae0]:sd<br> |
|  22|[0x80002208]<br>0x94cdb41b4811efb8|- rs1 : x23<br> - rd : x25<br>              |[0x80000b34]:aes64dsm<br> [0x80000b38]:xor<br> [0x80000b3c]:sd<br> |
|  23|[0x80002220]<br>0xa8a71635b6b33230|- rs1 : x24<br> - rd : x26<br>              |[0x80000b90]:aes64dsm<br> [0x80000b94]:xor<br> [0x80000b98]:sd<br> |
|  24|[0x80002238]<br>0x0ffcdbcb09cee88b|- rs1 : x25<br> - rd : x27<br>              |[0x80000bec]:aes64dsm<br> [0x80000bf0]:xor<br> [0x80000bf4]:sd<br> |
|  25|[0x80002250]<br>0x47693eb27c2c056e|- rs1 : x26<br> - rd : x28<br>              |[0x80000c48]:aes64dsm<br> [0x80000c4c]:xor<br> [0x80000c50]:sd<br> |
|  26|[0x80002268]<br>0xae47c51278a5ee26|- rs1 : x27<br> - rd : x29<br>              |[0x80000ca4]:aes64dsm<br> [0x80000ca8]:xor<br> [0x80000cac]:sd<br> |
