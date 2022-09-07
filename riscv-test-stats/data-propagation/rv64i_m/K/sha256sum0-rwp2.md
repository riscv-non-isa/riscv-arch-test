
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000560')]      |
| SIG_REGION                | [('0x800020e0', '0x800022a0', '56 dwords')]      |
| COV_LABELS                | sha256sum0      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha256sum0-rwp2.S/ref.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 58      |
| Total Signature Updates   | 56      |
| STAT1                     | 28      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 28     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : sha256sum0', 'rs1 : x2', 'rd : x3', 'rs1 != rd']
Last Code Sequence : 
	-[0x800003a4]:sha256sum0
	-[0x800003a8]:sd
Current Store : [0x800003ac] : None -- Store: [0x800020e8]:0x000000007fce0046




Last Coverpoint : ['rs1 : x3', 'rd : x4']
Last Code Sequence : 
	-[0x800003b4]:sha256sum0
	-[0x800003b8]:sd
Current Store : [0x800003bc] : None -- Store: [0x800020f8]:0x00000000712427fc




Last Coverpoint : ['rs1 : x4', 'rd : x5']
Last Code Sequence : 
	-[0x800003c4]:sha256sum0
	-[0x800003c8]:sd
Current Store : [0x800003cc] : None -- Store: [0x80002108]:0x0000000058ca6155




Last Coverpoint : ['rs1 : x5', 'rd : x6']
Last Code Sequence : 
	-[0x800003d4]:sha256sum0
	-[0x800003d8]:sd
Current Store : [0x800003dc] : None -- Store: [0x80002118]:0x00000000801852a3




Last Coverpoint : ['rs1 : x6', 'rd : x7']
Last Code Sequence : 
	-[0x800003e4]:sha256sum0
	-[0x800003e8]:sd
Current Store : [0x800003ec] : None -- Store: [0x80002128]:0x00000000194b0958




Last Coverpoint : ['rs1 : x7', 'rd : x8']
Last Code Sequence : 
	-[0x800003f4]:sha256sum0
	-[0x800003f8]:sd
Current Store : [0x800003fc] : None -- Store: [0x80002138]:0x000000002d4da8d8




Last Coverpoint : ['rs1 : x8', 'rd : x9']
Last Code Sequence : 
	-[0x80000404]:sha256sum0
	-[0x80000408]:sd
Current Store : [0x8000040c] : None -- Store: [0x80002148]:0x0000000059d7d1f5




Last Coverpoint : ['rs1 : x9', 'rd : x10']
Last Code Sequence : 
	-[0x80000414]:sha256sum0
	-[0x80000418]:sd
Current Store : [0x8000041c] : None -- Store: [0x80002158]:0x00000000c8938827




Last Coverpoint : ['rs1 : x10', 'rd : x11']
Last Code Sequence : 
	-[0x80000424]:sha256sum0
	-[0x80000428]:sd
Current Store : [0x8000042c] : None -- Store: [0x80002168]:0x00000000551ad9f6




Last Coverpoint : ['rs1 : x11', 'rd : x12']
Last Code Sequence : 
	-[0x80000434]:sha256sum0
	-[0x80000438]:sd
Current Store : [0x8000043c] : None -- Store: [0x80002178]:0x00000000baa3cf23




Last Coverpoint : ['rs1 : x12', 'rd : x13']
Last Code Sequence : 
	-[0x80000444]:sha256sum0
	-[0x80000448]:sd
Current Store : [0x8000044c] : None -- Store: [0x80002188]:0x0000000066941880




Last Coverpoint : ['rs1 : x13', 'rd : x14']
Last Code Sequence : 
	-[0x80000454]:sha256sum0
	-[0x80000458]:sd
Current Store : [0x8000045c] : None -- Store: [0x80002198]:0x0000000044cc357f




Last Coverpoint : ['rs1 : x14', 'rd : x15']
Last Code Sequence : 
	-[0x80000464]:sha256sum0
	-[0x80000468]:sd
Current Store : [0x8000046c] : None -- Store: [0x800021a8]:0x00000000a2966dc9




Last Coverpoint : ['rs1 : x15', 'rd : x16']
Last Code Sequence : 
	-[0x80000474]:sha256sum0
	-[0x80000478]:sd
Current Store : [0x8000047c] : None -- Store: [0x800021b8]:0x00000000816df800




Last Coverpoint : ['rs1 : x16', 'rd : x17']
Last Code Sequence : 
	-[0x80000484]:sha256sum0
	-[0x80000488]:sd
Current Store : [0x8000048c] : None -- Store: [0x800021c8]:0x00000000074e9a57




Last Coverpoint : ['rs1 : x17', 'rd : x18']
Last Code Sequence : 
	-[0x80000494]:sha256sum0
	-[0x80000498]:sd
Current Store : [0x8000049c] : None -- Store: [0x800021d8]:0x0000000098a7a57b




Last Coverpoint : ['rs1 : x18', 'rd : x19']
Last Code Sequence : 
	-[0x800004a4]:sha256sum0
	-[0x800004a8]:sd
Current Store : [0x800004ac] : None -- Store: [0x800021e8]:0x00000000fa4ad809




Last Coverpoint : ['rs1 : x19', 'rd : x20']
Last Code Sequence : 
	-[0x800004b4]:sha256sum0
	-[0x800004b8]:sd
Current Store : [0x800004bc] : None -- Store: [0x800021f8]:0x00000000907b539b




Last Coverpoint : ['rs1 : x20', 'rd : x21']
Last Code Sequence : 
	-[0x800004c4]:sha256sum0
	-[0x800004c8]:sd
Current Store : [0x800004cc] : None -- Store: [0x80002208]:0x0000000069bacf26




Last Coverpoint : ['rs1 : x21', 'rd : x22']
Last Code Sequence : 
	-[0x800004d4]:sha256sum0
	-[0x800004d8]:sd
Current Store : [0x800004dc] : None -- Store: [0x80002218]:0x000000006ccec0c9




Last Coverpoint : ['rs1 : x22', 'rd : x23']
Last Code Sequence : 
	-[0x800004e4]:sha256sum0
	-[0x800004e8]:sd
Current Store : [0x800004ec] : None -- Store: [0x80002228]:0x000000008efe229b




Last Coverpoint : ['rs1 : x23', 'rd : x24']
Last Code Sequence : 
	-[0x800004f4]:sha256sum0
	-[0x800004f8]:sd
Current Store : [0x800004fc] : None -- Store: [0x80002238]:0x00000000f8e5c707




Last Coverpoint : ['rs1 : x24', 'rd : x25']
Last Code Sequence : 
	-[0x80000504]:sha256sum0
	-[0x80000508]:sd
Current Store : [0x8000050c] : None -- Store: [0x80002248]:0x00000000a8744666




Last Coverpoint : ['rs1 : x25', 'rd : x26']
Last Code Sequence : 
	-[0x80000514]:sha256sum0
	-[0x80000518]:sd
Current Store : [0x8000051c] : None -- Store: [0x80002258]:0x00000000ba09e572




Last Coverpoint : ['rs1 : x26', 'rd : x27']
Last Code Sequence : 
	-[0x80000524]:sha256sum0
	-[0x80000528]:sd
Current Store : [0x8000052c] : None -- Store: [0x80002268]:0x00000000d19c2b5b




Last Coverpoint : ['rs1 : x27', 'rd : x28']
Last Code Sequence : 
	-[0x80000534]:sha256sum0
	-[0x80000538]:sd
Current Store : [0x8000053c] : None -- Store: [0x80002278]:0x00000000824d1d41




Last Coverpoint : ['rs1 : x28', 'rd : x29']
Last Code Sequence : 
	-[0x80000544]:sha256sum0
	-[0x80000548]:sd
Current Store : [0x8000054c] : None -- Store: [0x80002288]:0x000000008679fa90




Last Coverpoint : ['rs1 : x29', 'rd : x30']
Last Code Sequence : 
	-[0x80000554]:sha256sum0
	-[0x80000558]:sd
Current Store : [0x8000055c] : None -- Store: [0x80002298]:0x000000008ea9fb9b





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

|s.no|            signature             |                              coverpoints                              |                      code                      |
|---:|----------------------------------|-----------------------------------------------------------------------|------------------------------------------------|
|   1|[0x800020e0]<br>0x08577eb1924770d3|- opcode : sha256sum0<br> - rs1 : x2<br> - rd : x3<br> - rs1 != rd<br> |[0x800003a4]:sha256sum0<br> [0x800003a8]:sd<br> |
|   2|[0x800020f0]<br>0x93fdcab87b89296c|- rs1 : x3<br> - rd : x4<br>                                           |[0x800003b4]:sha256sum0<br> [0x800003b8]:sd<br> |
|   3|[0x80002100]<br>0xd2d6b8777dc59a3a|- rs1 : x4<br> - rd : x5<br>                                           |[0x800003c4]:sha256sum0<br> [0x800003c8]:sd<br> |
|   4|[0x80002110]<br>0xcf84b683a749f9c5|- rs1 : x5<br> - rd : x6<br>                                           |[0x800003d4]:sha256sum0<br> [0x800003d8]:sd<br> |
|   5|[0x80002120]<br>0x854a965708ceac39|- rs1 : x6<br> - rd : x7<br>                                           |[0x800003e4]:sha256sum0<br> [0x800003e8]:sd<br> |
|   6|[0x80002130]<br>0x137a977753e8eb43|- rs1 : x7<br> - rd : x8<br>                                           |[0x800003f4]:sha256sum0<br> [0x800003f8]:sd<br> |
|   7|[0x80002140]<br>0x5c74e45eff1e5bef|- rs1 : x8<br> - rd : x9<br>                                           |[0x80000404]:sha256sum0<br> [0x80000408]:sd<br> |
|   8|[0x80002150]<br>0xdc3383836b9f15c4|- rs1 : x9<br> - rd : x10<br>                                          |[0x80000414]:sha256sum0<br> [0x80000418]:sd<br> |
|   9|[0x80002160]<br>0x5ae6a2289a6ab329|- rs1 : x10<br> - rd : x11<br>                                         |[0x80000424]:sha256sum0<br> [0x80000428]:sd<br> |
|  10|[0x80002170]<br>0x432779eeacca7f0d|- rs1 : x11<br> - rd : x12<br>                                         |[0x80000434]:sha256sum0<br> [0x80000438]:sd<br> |
|  11|[0x80002180]<br>0xaf949e5e2cb7362c|- rs1 : x12<br> - rd : x13<br>                                         |[0x80000444]:sha256sum0<br> [0x80000448]:sd<br> |
|  12|[0x80002190]<br>0x5cd2875ea96ec2b3|- rs1 : x13<br> - rd : x14<br>                                         |[0x80000454]:sha256sum0<br> [0x80000458]:sd<br> |
|  13|[0x800021a0]<br>0x9d02fc90708cc1b6|- rs1 : x14<br> - rd : x15<br>                                         |[0x80000464]:sha256sum0<br> [0x80000468]:sd<br> |
|  14|[0x800021b0]<br>0x953b00b00b54aa22|- rs1 : x15<br> - rd : x16<br>                                         |[0x80000474]:sha256sum0<br> [0x80000478]:sd<br> |
|  15|[0x800021c0]<br>0x224c06013c53d0e3|- rs1 : x16<br> - rd : x17<br>                                         |[0x80000484]:sha256sum0<br> [0x80000488]:sd<br> |
|  16|[0x800021d0]<br>0xe8dac663f0e58650|- rs1 : x17<br> - rd : x18<br>                                         |[0x80000494]:sha256sum0<br> [0x80000498]:sd<br> |
|  17|[0x800021e0]<br>0x3d7c95f9e5f0307e|- rs1 : x18<br> - rd : x19<br>                                         |[0x800004a4]:sha256sum0<br> [0x800004a8]:sd<br> |
|  18|[0x800021f0]<br>0x8c8a18b2aaac3142|- rs1 : x19<br> - rd : x20<br>                                         |[0x800004b4]:sha256sum0<br> [0x800004b8]:sd<br> |
|  19|[0x80002200]<br>0x785036de6f9fb997|- rs1 : x20<br> - rd : x21<br>                                         |[0x800004c4]:sha256sum0<br> [0x800004c8]:sd<br> |
|  20|[0x80002210]<br>0x95a4d257a7298c66|- rs1 : x21<br> - rd : x22<br>                                         |[0x800004d4]:sha256sum0<br> [0x800004d8]:sd<br> |
|  21|[0x80002220]<br>0x807da245d814d575|- rs1 : x22<br> - rd : x23<br>                                         |[0x800004e4]:sha256sum0<br> [0x800004e8]:sd<br> |
|  22|[0x80002230]<br>0x3d06143769b1dcbf|- rs1 : x23<br> - rd : x24<br>                                         |[0x800004f4]:sha256sum0<br> [0x800004f8]:sd<br> |
|  23|[0x80002240]<br>0x7f21682208208d09|- rs1 : x24<br> - rd : x25<br>                                         |[0x80000504]:sha256sum0<br> [0x80000508]:sd<br> |
|  24|[0x80002250]<br>0x14b91c79dae98554|- rs1 : x25<br> - rd : x26<br>                                         |[0x80000514]:sha256sum0<br> [0x80000518]:sd<br> |
|  25|[0x80002260]<br>0xc5ec6148c6880007|- rs1 : x26<br> - rd : x27<br>                                         |[0x80000524]:sha256sum0<br> [0x80000528]:sd<br> |
|  26|[0x80002270]<br>0x7213516d6a013380|- rs1 : x27<br> - rd : x28<br>                                         |[0x80000534]:sha256sum0<br> [0x80000538]:sd<br> |
|  27|[0x80002280]<br>0x4652f62dae4839a1|- rs1 : x28<br> - rd : x29<br>                                         |[0x80000544]:sha256sum0<br> [0x80000548]:sd<br> |
|  28|[0x80002290]<br>0x85986adb9e044706|- rs1 : x29<br> - rd : x30<br>                                         |[0x80000554]:sha256sum0<br> [0x80000558]:sd<br> |
