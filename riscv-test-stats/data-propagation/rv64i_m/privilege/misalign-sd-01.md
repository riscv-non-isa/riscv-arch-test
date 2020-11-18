
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000470')]      |
| SIG_REGION                | [('0x80002208', '0x80002440', '71 dwords')]      |
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
	-[0x800003b4]:sd a1, 3072(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x80002240]:0x000000000000010F




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sd a1, 3072(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x80002248]:0x0000000000000006




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sd a1, 3072(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x80002250]:0x00000000000003A8




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sd a1, 3072(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x80002258]:0x0000000000000000




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 4(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x80002260]:0x000000000000010F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 4(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x80002268]:0x0000000000000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 4(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x80002270]:0x00000000000003C8




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sd a1, 4(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x80002278]:0x0000000000000000




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f0]:sd a1, 128(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x80002280]:0x000000000000010F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f0]:sd a1, 128(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x80002288]:0x0000000000000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f0]:sd a1, 128(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x80002290]:0x00000000000003E4




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f0]:sd a1, 128(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x80002298]:0x0000000000000000




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x8000040c]:sd a1, 16(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x800022a0]:0x000000000000010F




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x8000040c]:sd a1, 16(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x800022a8]:0x0000000000000006




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x8000040c]:sd a1, 16(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x800022b0]:0x0000000000000400




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x8000040c]:sd a1, 16(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x800022b8]:0x0000000000000000




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000428]:sd a1, 9(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x800022c0]:0x000000000000010F




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000428]:sd a1, 9(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x800022c8]:0x0000000000000006




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000428]:sd a1, 9(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x800022d0]:0x000000000000041C




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000428]:sd a1, 9(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x800022d8]:0x0000000000000000




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000444]:sd a1, 4091(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x800022e0]:0x000000000000010F




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000444]:sd a1, 4091(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x800022e8]:0x0000000000000006




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000444]:sd a1, 4091(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x800022f0]:0x0000000000000438




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000444]:sd a1, 4091(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x800022f8]:0x0000000000000000




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000460]:sd a1, 4086(a0)
Current Store : [0x80000710] : sd t2, 0(t1) -- Store: [0x80002300]:0x000000000000010F




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000460]:sd a1, 4086(a0)
Current Store : [0x80000718] : sd t2, 8(t1) -- Store: [0x80002308]:0x0000000000000006




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000460]:sd a1, 4086(a0)
Current Store : [0x80000730] : sd t4, 16(t1) -- Store: [0x80002310]:0x0000000000000454




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000460]:sd a1, 4086(a0)
Current Store : [0x800007b8] : sd t2, 24(t1) -- Store: [0x80002318]:0x0000000000000000





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
|   1|[0x80002209]<br>0x0000000000000000|- opcode : sd<br> - ea_align == 1<br> |[0x800003b4]:sd a1, 3072(a0)<br> |
|   2|[0x80002212]<br>0x0000400000000000|- ea_align == 2<br>                   |[0x800003d4]:sd a1, 4(a0)<br>    |
|   3|[0x8000221b]<br>0xFFFFFFFFFFFFFFFE|- ea_align == 3<br>                   |[0x800003f0]:sd a1, 128(a0)<br>  |
|   4|[0x80002224]<br>0x0000000000008000|- ea_align == 4<br>                   |[0x8000040c]:sd a1, 16(a0)<br>   |
|   5|[0x8000222d]<br>0x0000000000000200|- ea_align == 5<br>                   |[0x80000428]:sd a1, 9(a0)<br>    |
|   6|[0x80002236]<br>0x0000000000000004|- ea_align == 6<br>                   |[0x80000444]:sd a1, 4091(a0)<br> |
|   7|[0x8000223f]<br>0x0000000000000008|- ea_align == 7<br>                   |[0x80000460]:sd a1, 4086(a0)<br> |
