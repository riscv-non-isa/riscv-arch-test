
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000490')]      |
| SIG_REGION                | [('0x80003208', '0x80003440', '71 dwords')]      |
| COV_LABELS                | misalign-sd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sd-01.S/misalign-sd-01.S    |
| Total Number of coverpoints| 8     |
| Total Coverpoints Hit     | 8      |
| Total Signature Updates   | 35      |
| STAT1                     | 7      |
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
Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sd a1, 4090(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x80003240]:0x000000000000010F




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sd a1, 4090(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x80003248]:0x0000000000000006




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sd a1, 4090(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x80003250]:0x00000000000003AC




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sd a1, 4090(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x80003258]:0x00000000000031FD




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 5(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x80003260]:0x000000000000010F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 5(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x80003268]:0x0000000000000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 5(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x80003270]:0x00000000000003C8




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 5(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x80003278]:0x0000000000003206




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sd a1, 4089(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x80003280]:0x000000000000010F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sd a1, 4089(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x80003288]:0x0000000000000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sd a1, 4089(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x80003290]:0x00000000000003EC




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sd a1, 4089(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x80003298]:0x000000000000320F




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000414]:sd a1, 128(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x800032a0]:0x000000000000010F




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000414]:sd a1, 128(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x800032a8]:0x0000000000000006




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000414]:sd a1, 128(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x800032b0]:0x0000000000000408




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000414]:sd a1, 128(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x800032b8]:0x0000000000003218




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000438]:sd a1, 512(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x800032c0]:0x000000000000010F




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000438]:sd a1, 512(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x800032c8]:0x0000000000000006




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000438]:sd a1, 512(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x800032d0]:0x000000000000042C




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000438]:sd a1, 512(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x800032d8]:0x0000000000003221




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000458]:sd a1, 3072(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x800032e0]:0x000000000000010F




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000458]:sd a1, 3072(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x800032e8]:0x0000000000000006




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000458]:sd a1, 3072(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x800032f0]:0x000000000000044C




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000458]:sd a1, 3072(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x800032f8]:0x000000000000322A




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000047c]:sd a1, 5(a0)
Current Store : [0x80000730] : sd t2, 0(t1) -- Store: [0x80003300]:0x000000000000010F




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000047c]:sd a1, 5(a0)
Current Store : [0x80000738] : sd t2, 8(t1) -- Store: [0x80003308]:0x0000000000000006




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000047c]:sd a1, 5(a0)
Current Store : [0x80000750] : sd t4, 16(t1) -- Store: [0x80003310]:0x0000000000000470




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000047c]:sd a1, 5(a0)
Current Store : [0x800007dc] : sd t2, 24(t1) -- Store: [0x80003318]:0x0000000000003233





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

|s.no|            signature             |             coverpoints              |              code               |
|---:|----------------------------------|--------------------------------------|---------------------------------|
|   1|[0x80003209]<br>0xFFFFFFFFFF7FFFFF|- opcode : sd<br> - ea_align == 1<br> |[0x800003b8]:sd a1, 4090(a0)<br> |
|   2|[0x80003212]<br>0x0000000004000000|- ea_align == 2<br>                   |[0x800003d4]:sd a1, 5(a0)<br>    |
|   3|[0x8000321b]<br>0xFFFFFFEFFFFFFFFF|- ea_align == 3<br>                   |[0x800003f8]:sd a1, 4089(a0)<br> |
|   4|[0x80003224]<br>0x0000000000000010|- ea_align == 4<br>                   |[0x80000414]:sd a1, 128(a0)<br>  |
|   5|[0x8000322d]<br>0xFFFFDFFFFFFFFFFF|- ea_align == 5<br>                   |[0x80000438]:sd a1, 512(a0)<br>  |
|   6|[0x80003236]<br>0x0100000000000000|- ea_align == 6<br>                   |[0x80000458]:sd a1, 3072(a0)<br> |
|   7|[0x8000323f]<br>0xBFFFFFFFFFFFFFFF|- ea_align == 7<br>                   |[0x8000047c]:sd a1, 5(a0)<br>    |
