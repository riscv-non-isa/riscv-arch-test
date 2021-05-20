
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000330')]      |
| SIG_REGION                | [('0x80002070', '0x80002150', '56 words')]      |
| COV_LABELS                | sha512sig1l      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/sha512sig1l-rwp2.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 83      |
| Total Signature Updates   | 54      |
| STAT1                     | 27      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 27     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : sha512sig1l', 'rs1 : x2', 'rs2 : x3', 'rd : x4', 'rs1 != rs2  and rs1 != rd and rs2 != rd']
Last Code Sequence : 
	-[0x80000110]:sha512sig1l
	-[0x80000114]:sw
Current Store : [0x80000118] : None -- Store: [0x80002074]:0xa5f88910




Last Coverpoint : ['rs1 : x3', 'rs2 : x4', 'rd : x5']
Last Code Sequence : 
	-[0x80000124]:sha512sig1l
	-[0x80000128]:sw
Current Store : [0x8000012c] : None -- Store: [0x8000207c]:0x36bd418c




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x6']
Last Code Sequence : 
	-[0x80000138]:sha512sig1l
	-[0x8000013c]:sw
Current Store : [0x80000140] : None -- Store: [0x80002084]:0xc6f1b094




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rd : x7']
Last Code Sequence : 
	-[0x8000014c]:sha512sig1l
	-[0x80000150]:sw
Current Store : [0x80000154] : None -- Store: [0x8000208c]:0x788ef9f4




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x8']
Last Code Sequence : 
	-[0x80000160]:sha512sig1l
	-[0x80000164]:sw
Current Store : [0x80000168] : None -- Store: [0x80002094]:0x89e0bf81




Last Coverpoint : ['rs1 : x7', 'rs2 : x8', 'rd : x9']
Last Code Sequence : 
	-[0x80000174]:sha512sig1l
	-[0x80000178]:sw
Current Store : [0x8000017c] : None -- Store: [0x8000209c]:0xb0436302




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x10']
Last Code Sequence : 
	-[0x80000188]:sha512sig1l
	-[0x8000018c]:sw
Current Store : [0x80000190] : None -- Store: [0x800020a4]:0x4648996b




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x11']
Last Code Sequence : 
	-[0x8000019c]:sha512sig1l
	-[0x800001a0]:sw
Current Store : [0x800001a4] : None -- Store: [0x800020ac]:0x3929e84a




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rd : x12']
Last Code Sequence : 
	-[0x800001b0]:sha512sig1l
	-[0x800001b4]:sw
Current Store : [0x800001b8] : None -- Store: [0x800020b4]:0xe97513cf




Last Coverpoint : ['rs1 : x11', 'rs2 : x12', 'rd : x13']
Last Code Sequence : 
	-[0x800001c4]:sha512sig1l
	-[0x800001c8]:sw
Current Store : [0x800001cc] : None -- Store: [0x800020bc]:0x8a8d39f4




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rd : x14']
Last Code Sequence : 
	-[0x800001d8]:sha512sig1l
	-[0x800001dc]:sw
Current Store : [0x800001e0] : None -- Store: [0x800020c4]:0x271da1bb




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x15']
Last Code Sequence : 
	-[0x800001ec]:sha512sig1l
	-[0x800001f0]:sw
Current Store : [0x800001f4] : None -- Store: [0x800020cc]:0x1089e994




Last Coverpoint : ['rs1 : x14', 'rs2 : x15', 'rd : x16']
Last Code Sequence : 
	-[0x80000200]:sha512sig1l
	-[0x80000204]:sw
Current Store : [0x80000208] : None -- Store: [0x800020d4]:0xe8fd00ca




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x17']
Last Code Sequence : 
	-[0x80000214]:sha512sig1l
	-[0x80000218]:sw
Current Store : [0x8000021c] : None -- Store: [0x800020dc]:0x77e01fc3




Last Coverpoint : ['rs1 : x16', 'rs2 : x17', 'rd : x18']
Last Code Sequence : 
	-[0x80000228]:sha512sig1l
	-[0x8000022c]:sw
Current Store : [0x80000230] : None -- Store: [0x800020e4]:0x8cbd640e




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x19']
Last Code Sequence : 
	-[0x8000023c]:sha512sig1l
	-[0x80000240]:sw
Current Store : [0x80000244] : None -- Store: [0x800020ec]:0x4d8f1278




Last Coverpoint : ['rs1 : x18', 'rs2 : x19', 'rd : x20']
Last Code Sequence : 
	-[0x80000250]:sha512sig1l
	-[0x80000254]:sw
Current Store : [0x80000258] : None -- Store: [0x800020f4]:0x6a4cd57e




Last Coverpoint : ['rs1 : x19', 'rs2 : x20', 'rd : x21']
Last Code Sequence : 
	-[0x80000264]:sha512sig1l
	-[0x80000268]:sw
Current Store : [0x8000026c] : None -- Store: [0x800020fc]:0x3ab2fbbe




Last Coverpoint : ['rs1 : x20', 'rs2 : x21', 'rd : x22']
Last Code Sequence : 
	-[0x80000278]:sha512sig1l
	-[0x8000027c]:sw
Current Store : [0x80000280] : None -- Store: [0x80002104]:0x8935577a




Last Coverpoint : ['rs1 : x21', 'rs2 : x22', 'rd : x23']
Last Code Sequence : 
	-[0x8000028c]:sha512sig1l
	-[0x80000290]:sw
Current Store : [0x80000294] : None -- Store: [0x8000210c]:0x9e45783d




Last Coverpoint : ['rs1 : x22', 'rs2 : x23', 'rd : x24']
Last Code Sequence : 
	-[0x800002a0]:sha512sig1l
	-[0x800002a4]:sw
Current Store : [0x800002a8] : None -- Store: [0x80002114]:0xdd3c2cb3




Last Coverpoint : ['rs1 : x23', 'rs2 : x24', 'rd : x25']
Last Code Sequence : 
	-[0x800002b4]:sha512sig1l
	-[0x800002b8]:sw
Current Store : [0x800002bc] : None -- Store: [0x8000211c]:0xce231cd2




Last Coverpoint : ['rs1 : x24', 'rs2 : x25', 'rd : x26']
Last Code Sequence : 
	-[0x800002c8]:sha512sig1l
	-[0x800002cc]:sw
Current Store : [0x800002d0] : None -- Store: [0x80002124]:0x8c8a1710




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x27']
Last Code Sequence : 
	-[0x800002dc]:sha512sig1l
	-[0x800002e0]:sw
Current Store : [0x800002e4] : None -- Store: [0x8000212c]:0xece6c45e




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x28']
Last Code Sequence : 
	-[0x800002f0]:sha512sig1l
	-[0x800002f4]:sw
Current Store : [0x800002f8] : None -- Store: [0x80002134]:0xa7001f8b




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x29']
Last Code Sequence : 
	-[0x80000304]:sha512sig1l
	-[0x80000308]:sw
Current Store : [0x8000030c] : None -- Store: [0x8000213c]:0xcd501c60




Last Coverpoint : ['rs1 : x28', 'rs2 : x29', 'rd : x30']
Last Code Sequence : 
	-[0x80000318]:sha512sig1l
	-[0x8000031c]:sw
Current Store : [0x80000320] : None -- Store: [0x80002144]:0xbb095fa9





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

|s.no|        signature         |                                                     coverpoints                                                     |                      code                       |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
|   1|[0x80002070]<br>0x924770d3|- opcode : sha512sig1l<br> - rs1 : x2<br> - rs2 : x3<br> - rd : x4<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> |[0x80000110]:sha512sig1l<br> [0x80000114]:sw<br> |
|   2|[0x80002078]<br>0x6dcbac50|- rs1 : x3<br> - rs2 : x4<br> - rd : x5<br>                                                                          |[0x80000124]:sha512sig1l<br> [0x80000128]:sw<br> |
|   3|[0x80002080]<br>0x93fdcab8|- rs1 : x4<br> - rs2 : x5<br> - rd : x6<br>                                                                          |[0x80000138]:sha512sig1l<br> [0x8000013c]:sw<br> |
|   4|[0x80002088]<br>0x34c2da80|- rs1 : x5<br> - rs2 : x6<br> - rd : x7<br>                                                                          |[0x8000014c]:sha512sig1l<br> [0x80000150]:sw<br> |
|   5|[0x80002090]<br>0xd035d259|- rs1 : x6<br> - rs2 : x7<br> - rd : x8<br>                                                                          |[0x80000160]:sha512sig1l<br> [0x80000164]:sw<br> |
|   6|[0x80002098]<br>0xd2d6b877|- rs1 : x7<br> - rs2 : x8<br> - rd : x9<br>                                                                          |[0x80000174]:sha512sig1l<br> [0x80000178]:sw<br> |
|   7|[0x800020a0]<br>0x2904cdef|- rs1 : x8<br> - rs2 : x9<br> - rd : x10<br>                                                                         |[0x80000188]:sha512sig1l<br> [0x8000018c]:sw<br> |
|   8|[0x800020a8]<br>0x854a9657|- rs1 : x9<br> - rs2 : x10<br> - rd : x11<br>                                                                        |[0x8000019c]:sha512sig1l<br> [0x800001a0]:sw<br> |
|   9|[0x800020b0]<br>0x53e8eb43|- rs1 : x10<br> - rs2 : x11<br> - rd : x12<br>                                                                       |[0x800001b0]:sha512sig1l<br> [0x800001b4]:sw<br> |
|  10|[0x800020b8]<br>0xff1e5bef|- rs1 : x11<br> - rs2 : x12<br> - rd : x13<br>                                                                       |[0x800001c4]:sha512sig1l<br> [0x800001c8]:sw<br> |
|  11|[0x800020c0]<br>0x0b680c1c|- rs1 : x12<br> - rs2 : x13<br> - rd : x14<br>                                                                       |[0x800001d8]:sha512sig1l<br> [0x800001dc]:sw<br> |
|  12|[0x800020c8]<br>0xdc338383|- rs1 : x13<br> - rs2 : x14<br> - rd : x15<br>                                                                       |[0x800001ec]:sha512sig1l<br> [0x800001f0]:sw<br> |
|  13|[0x800020d0]<br>0x9a6ab329|- rs1 : x14<br> - rs2 : x15<br> - rd : x16<br>                                                                       |[0x80000200]:sha512sig1l<br> [0x80000204]:sw<br> |
|  14|[0x800020d8]<br>0x61b0ee09|- rs1 : x15<br> - rs2 : x16<br> - rd : x17<br>                                                                       |[0x80000214]:sha512sig1l<br> [0x80000218]:sw<br> |
|  15|[0x800020e0]<br>0xacca7f0d|- rs1 : x16<br> - rs2 : x17<br> - rd : x18<br>                                                                       |[0x80000228]:sha512sig1l<br> [0x8000022c]:sw<br> |
|  16|[0x800020e8]<br>0x74f2e2ed|- rs1 : x17<br> - rs2 : x18<br> - rd : x19<br>                                                                       |[0x8000023c]:sha512sig1l<br> [0x80000240]:sw<br> |
|  17|[0x800020f0]<br>0xaf949e5e|- rs1 : x18<br> - rs2 : x19<br> - rd : x20<br>                                                                       |[0x80000250]:sha512sig1l<br> [0x80000254]:sw<br> |
|  18|[0x800020f8]<br>0xa96ec2b3|- rs1 : x19<br> - rs2 : x20<br> - rd : x21<br>                                                                       |[0x80000264]:sha512sig1l<br> [0x80000268]:sw<br> |
|  19|[0x80002100]<br>0x220adb0a|- rs1 : x20<br> - rs2 : x21<br> - rd : x22<br>                                                                       |[0x80000278]:sha512sig1l<br> [0x8000027c]:sw<br> |
|  20|[0x80002108]<br>0xfb7f6f5d|- rs1 : x21<br> - rs2 : x22<br> - rd : x23<br>                                                                       |[0x8000028c]:sha512sig1l<br> [0x80000290]:sw<br> |
|  21|[0x80002110]<br>0xf829d29f|- rs1 : x22<br> - rs2 : x23<br> - rd : x24<br>                                                                       |[0x800002a0]:sha512sig1l<br> [0x800002a4]:sw<br> |
|  22|[0x80002118]<br>0x9d02fc90|- rs1 : x23<br> - rs2 : x24<br> - rd : x25<br>                                                                       |[0x800002b4]:sha512sig1l<br> [0x800002b8]:sw<br> |
|  23|[0x80002120]<br>0x0109c207|- rs1 : x24<br> - rs2 : x25<br> - rd : x26<br>                                                                       |[0x800002c8]:sha512sig1l<br> [0x800002cc]:sw<br> |
|  24|[0x80002128]<br>0x224c0601|- rs1 : x25<br> - rs2 : x26<br> - rd : x27<br>                                                                       |[0x800002dc]:sha512sig1l<br> [0x800002e0]:sw<br> |
|  25|[0x80002130]<br>0xe5f0307e|- rs1 : x26<br> - rs2 : x27<br> - rd : x28<br>                                                                       |[0x800002f0]:sha512sig1l<br> [0x800002f4]:sw<br> |
|  26|[0x80002138]<br>0x8c8a18b2|- rs1 : x27<br> - rs2 : x28<br> - rd : x29<br>                                                                       |[0x80000304]:sha512sig1l<br> [0x80000308]:sw<br> |
|  27|[0x80002140]<br>0x6f9fb997|- rs1 : x28<br> - rs2 : x29<br> - rd : x30<br>                                                                       |[0x80000318]:sha512sig1l<br> [0x8000031c]:sw<br> |
