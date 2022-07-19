
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800002d0')]      |
| SIG_REGION                | [('0x80002070', '0x80002150', '56 words')]      |
| COV_LABELS                | sha256sig0      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha256sig0-rwp2.S/ref.S    |
| Total Number of coverpoints| 156     |
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
Last Coverpoint : ['opcode : sha256sig0', 'rs1 : x2', 'rd : x3', 'rs1 != rd']
Last Code Sequence : 
	-[0x8000010c]:sha256sig0
	-[0x80000110]:sw
Current Store : [0x80000114] : None -- Store: [0x80002074]:0x6958846a




Last Coverpoint : ['rs1 : x3', 'rd : x4']
Last Code Sequence : 
	-[0x8000011c]:sha256sig0
	-[0x80000120]:sw
Current Store : [0x80000124] : None -- Store: [0x8000207c]:0x4676f9a0




Last Coverpoint : ['rs1 : x4', 'rd : x5']
Last Code Sequence : 
	-[0x8000012c]:sha256sig0
	-[0x80000130]:sw
Current Store : [0x80000134] : None -- Store: [0x80002084]:0x11f6663d




Last Coverpoint : ['rs1 : x5', 'rd : x6']
Last Code Sequence : 
	-[0x8000013c]:sha256sig0
	-[0x80000140]:sw
Current Store : [0x80000144] : None -- Store: [0x8000208c]:0xb051d3d5




Last Coverpoint : ['rs1 : x6', 'rd : x7']
Last Code Sequence : 
	-[0x8000014c]:sha256sig0
	-[0x80000150]:sw
Current Store : [0x80000154] : None -- Store: [0x80002094]:0xdd30a5e2




Last Coverpoint : ['rs1 : x7', 'rd : x8']
Last Code Sequence : 
	-[0x8000015c]:sha256sig0
	-[0x80000160]:sw
Current Store : [0x80000164] : None -- Store: [0x8000209c]:0x5be28ecb




Last Coverpoint : ['rs1 : x8', 'rd : x9']
Last Code Sequence : 
	-[0x8000016c]:sha256sig0
	-[0x80000170]:sw
Current Store : [0x80000174] : None -- Store: [0x800020a4]:0xe8095a67




Last Coverpoint : ['rs1 : x9', 'rd : x10']
Last Code Sequence : 
	-[0x8000017c]:sha256sig0
	-[0x80000180]:sw
Current Store : [0x80000184] : None -- Store: [0x800020ac]:0x1a3626b4




Last Coverpoint : ['rs1 : x10', 'rd : x11']
Last Code Sequence : 
	-[0x8000018c]:sha256sig0
	-[0x80000190]:sw
Current Store : [0x80000194] : None -- Store: [0x800020b4]:0xb60a1844




Last Coverpoint : ['rs1 : x11', 'rd : x12']
Last Code Sequence : 
	-[0x8000019c]:sha256sig0
	-[0x800001a0]:sw
Current Store : [0x800001a4] : None -- Store: [0x800020bc]:0x56e6080d




Last Coverpoint : ['rs1 : x12', 'rd : x13']
Last Code Sequence : 
	-[0x800001ac]:sha256sig0
	-[0x800001b0]:sw
Current Store : [0x800001b4] : None -- Store: [0x800020c4]:0x3a7cd341




Last Coverpoint : ['rs1 : x13', 'rd : x14']
Last Code Sequence : 
	-[0x800001bc]:sha256sig0
	-[0x800001c0]:sw
Current Store : [0x800001c4] : None -- Store: [0x800020cc]:0xfcdee07b




Last Coverpoint : ['rs1 : x14', 'rd : x15']
Last Code Sequence : 
	-[0x800001cc]:sha256sig0
	-[0x800001d0]:sw
Current Store : [0x800001d4] : None -- Store: [0x800020d4]:0xecb3e599




Last Coverpoint : ['rs1 : x15', 'rd : x16']
Last Code Sequence : 
	-[0x800001dc]:sha256sig0
	-[0x800001e0]:sw
Current Store : [0x800001e4] : None -- Store: [0x800020dc]:0x25772471




Last Coverpoint : ['rs1 : x16', 'rd : x17']
Last Code Sequence : 
	-[0x800001ec]:sha256sig0
	-[0x800001f0]:sw
Current Store : [0x800001f4] : None -- Store: [0x800020e4]:0x9103b02d




Last Coverpoint : ['rs1 : x17', 'rd : x18']
Last Code Sequence : 
	-[0x800001fc]:sha256sig0
	-[0x80000200]:sw
Current Store : [0x80000204] : None -- Store: [0x800020ec]:0x6ccce4a4




Last Coverpoint : ['rs1 : x18', 'rd : x19']
Last Code Sequence : 
	-[0x8000020c]:sha256sig0
	-[0x80000210]:sw
Current Store : [0x80000214] : None -- Store: [0x800020f4]:0x8f3a1112




Last Coverpoint : ['rs1 : x19', 'rd : x20']
Last Code Sequence : 
	-[0x8000021c]:sha256sig0
	-[0x80000220]:sw
Current Store : [0x80000224] : None -- Store: [0x800020fc]:0xc2d3ef88




Last Coverpoint : ['rs1 : x20', 'rd : x21']
Last Code Sequence : 
	-[0x8000022c]:sha256sig0
	-[0x80000230]:sw
Current Store : [0x80000234] : None -- Store: [0x80002104]:0xa6c7c655




Last Coverpoint : ['rs1 : x21', 'rd : x22']
Last Code Sequence : 
	-[0x8000023c]:sha256sig0
	-[0x80000240]:sw
Current Store : [0x80000244] : None -- Store: [0x8000210c]:0x7f4e6dea




Last Coverpoint : ['rs1 : x22', 'rd : x23']
Last Code Sequence : 
	-[0x8000024c]:sha256sig0
	-[0x80000250]:sw
Current Store : [0x80000254] : None -- Store: [0x80002114]:0x545297fc




Last Coverpoint : ['rs1 : x23', 'rd : x24']
Last Code Sequence : 
	-[0x8000025c]:sha256sig0
	-[0x80000260]:sw
Current Store : [0x80000264] : None -- Store: [0x8000211c]:0x8dbe7d2b




Last Coverpoint : ['rs1 : x24', 'rd : x25']
Last Code Sequence : 
	-[0x8000026c]:sha256sig0
	-[0x80000270]:sw
Current Store : [0x80000274] : None -- Store: [0x80002124]:0x7ea2eb86




Last Coverpoint : ['rs1 : x25', 'rd : x26']
Last Code Sequence : 
	-[0x8000027c]:sha256sig0
	-[0x80000280]:sw
Current Store : [0x80000284] : None -- Store: [0x8000212c]:0x078d505f




Last Coverpoint : ['rs1 : x26', 'rd : x27']
Last Code Sequence : 
	-[0x8000028c]:sha256sig0
	-[0x80000290]:sw
Current Store : [0x80000294] : None -- Store: [0x80002134]:0xed6a5f13




Last Coverpoint : ['rs1 : x27', 'rd : x28']
Last Code Sequence : 
	-[0x8000029c]:sha256sig0
	-[0x800002a0]:sw
Current Store : [0x800002a4] : None -- Store: [0x8000213c]:0xf2a4f405




Last Coverpoint : ['rs1 : x28', 'rd : x29']
Last Code Sequence : 
	-[0x800002ac]:sha256sig0
	-[0x800002b0]:sw
Current Store : [0x800002b4] : None -- Store: [0x80002144]:0xcd4913a6




Last Coverpoint : ['rs1 : x29', 'rd : x30']
Last Code Sequence : 
	-[0x800002bc]:sha256sig0
	-[0x800002c0]:sw
Current Store : [0x800002c4] : None -- Store: [0x8000214c]:0x890a3687





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

|s.no|        signature         |                              coverpoints                              |                      code                      |
|---:|--------------------------|-----------------------------------------------------------------------|------------------------------------------------|
|   1|[0x80002070]<br>0x924770d3|- opcode : sha256sig0<br> - rs1 : x2<br> - rd : x3<br> - rs1 != rd<br> |[0x8000010c]:sha256sig0<br> [0x80000110]:sw<br> |
|   2|[0x80002078]<br>0x6dcbac50|- rs1 : x3<br> - rd : x4<br>                                           |[0x8000011c]:sha256sig0<br> [0x80000120]:sw<br> |
|   3|[0x80002080]<br>0x93fdcab8|- rs1 : x4<br> - rd : x5<br>                                           |[0x8000012c]:sha256sig0<br> [0x80000130]:sw<br> |
|   4|[0x80002088]<br>0x34c2da80|- rs1 : x5<br> - rd : x6<br>                                           |[0x8000013c]:sha256sig0<br> [0x80000140]:sw<br> |
|   5|[0x80002090]<br>0xd035d259|- rs1 : x6<br> - rd : x7<br>                                           |[0x8000014c]:sha256sig0<br> [0x80000150]:sw<br> |
|   6|[0x80002098]<br>0xd2d6b877|- rs1 : x7<br> - rd : x8<br>                                           |[0x8000015c]:sha256sig0<br> [0x80000160]:sw<br> |
|   7|[0x800020a0]<br>0x2904cdef|- rs1 : x8<br> - rd : x9<br>                                           |[0x8000016c]:sha256sig0<br> [0x80000170]:sw<br> |
|   8|[0x800020a8]<br>0x854a9657|- rs1 : x9<br> - rd : x10<br>                                          |[0x8000017c]:sha256sig0<br> [0x80000180]:sw<br> |
|   9|[0x800020b0]<br>0x53e8eb43|- rs1 : x10<br> - rd : x11<br>                                         |[0x8000018c]:sha256sig0<br> [0x80000190]:sw<br> |
|  10|[0x800020b8]<br>0xff1e5bef|- rs1 : x11<br> - rd : x12<br>                                         |[0x8000019c]:sha256sig0<br> [0x800001a0]:sw<br> |
|  11|[0x800020c0]<br>0x0b680c1c|- rs1 : x12<br> - rd : x13<br>                                         |[0x800001ac]:sha256sig0<br> [0x800001b0]:sw<br> |
|  12|[0x800020c8]<br>0xdc338383|- rs1 : x13<br> - rd : x14<br>                                         |[0x800001bc]:sha256sig0<br> [0x800001c0]:sw<br> |
|  13|[0x800020d0]<br>0x9a6ab329|- rs1 : x14<br> - rd : x15<br>                                         |[0x800001cc]:sha256sig0<br> [0x800001d0]:sw<br> |
|  14|[0x800020d8]<br>0x61b0ee09|- rs1 : x15<br> - rd : x16<br>                                         |[0x800001dc]:sha256sig0<br> [0x800001e0]:sw<br> |
|  15|[0x800020e0]<br>0xacca7f0d|- rs1 : x16<br> - rd : x17<br>                                         |[0x800001ec]:sha256sig0<br> [0x800001f0]:sw<br> |
|  16|[0x800020e8]<br>0x74f2e2ed|- rs1 : x17<br> - rd : x18<br>                                         |[0x800001fc]:sha256sig0<br> [0x80000200]:sw<br> |
|  17|[0x800020f0]<br>0xaf949e5e|- rs1 : x18<br> - rd : x19<br>                                         |[0x8000020c]:sha256sig0<br> [0x80000210]:sw<br> |
|  18|[0x800020f8]<br>0xa96ec2b3|- rs1 : x19<br> - rd : x20<br>                                         |[0x8000021c]:sha256sig0<br> [0x80000220]:sw<br> |
|  19|[0x80002100]<br>0x220adb0a|- rs1 : x20<br> - rd : x21<br>                                         |[0x8000022c]:sha256sig0<br> [0x80000230]:sw<br> |
|  20|[0x80002108]<br>0xfb7f6f5d|- rs1 : x21<br> - rd : x22<br>                                         |[0x8000023c]:sha256sig0<br> [0x80000240]:sw<br> |
|  21|[0x80002110]<br>0xf829d29f|- rs1 : x22<br> - rd : x23<br>                                         |[0x8000024c]:sha256sig0<br> [0x80000250]:sw<br> |
|  22|[0x80002118]<br>0x9d02fc90|- rs1 : x23<br> - rd : x24<br>                                         |[0x8000025c]:sha256sig0<br> [0x80000260]:sw<br> |
|  23|[0x80002120]<br>0x0109c207|- rs1 : x24<br> - rd : x25<br>                                         |[0x8000026c]:sha256sig0<br> [0x80000270]:sw<br> |
|  24|[0x80002128]<br>0x224c0601|- rs1 : x25<br> - rd : x26<br>                                         |[0x8000027c]:sha256sig0<br> [0x80000280]:sw<br> |
|  25|[0x80002130]<br>0xe5f0307e|- rs1 : x26<br> - rd : x27<br>                                         |[0x8000028c]:sha256sig0<br> [0x80000290]:sw<br> |
|  26|[0x80002138]<br>0x8c8a18b2|- rs1 : x27<br> - rd : x28<br>                                         |[0x8000029c]:sha256sig0<br> [0x800002a0]:sw<br> |
|  27|[0x80002140]<br>0x6f9fb997|- rs1 : x28<br> - rd : x29<br>                                         |[0x800002ac]:sha256sig0<br> [0x800002b0]:sw<br> |
|  28|[0x80002148]<br>0x95a4d257|- rs1 : x29<br> - rd : x30<br>                                         |[0x800002bc]:sha256sig0<br> [0x800002c0]:sw<br> |
