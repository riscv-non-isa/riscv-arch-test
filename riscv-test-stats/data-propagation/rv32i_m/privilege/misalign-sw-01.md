
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000170')]      |
| SIG_REGION                | [('0x80002080', '0x80002190', '68 words')]      |
| COV_LABELS                | misalign-sw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sw-01.S/misalign-sw-01.S    |
| Total Number of coverpoints| 4     |
| Total Coverpoints Hit     | 4      |
| Total Signature Updates   | 15      |
| STAT1                     | 3      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 12     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x8000011c]:sw a1, 2(a0)
Current Store : [0x80000390] : sw t2, 0(t1) -- Store: [0x8000208c]:0x0000008F




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x8000011c]:sw a1, 2(a0)
Current Store : [0x80000398] : sw t2, 4(t1) -- Store: [0x80002090]:0x00000006




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x8000011c]:sw a1, 2(a0)
Current Store : [0x800003b0] : sw t4, 8(t1) -- Store: [0x80002094]:0x00000110




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x8000011c]:sw a1, 2(a0)
Current Store : [0x8000042c] : sw t2, 12(t1) -- Store: [0x80002098]:0x00000000




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000013c]:sw a1, 512(a0)
Current Store : [0x80000390] : sw t2, 0(t1) -- Store: [0x8000209c]:0x0000008F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000013c]:sw a1, 512(a0)
Current Store : [0x80000398] : sw t2, 4(t1) -- Store: [0x800020a0]:0x00000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000013c]:sw a1, 512(a0)
Current Store : [0x800003b0] : sw t4, 8(t1) -- Store: [0x800020a4]:0x00000130




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000013c]:sw a1, 512(a0)
Current Store : [0x8000042c] : sw t2, 12(t1) -- Store: [0x800020a8]:0x00000000




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x8000015c]:sw a1, 4090(a0)
Current Store : [0x80000390] : sw t2, 0(t1) -- Store: [0x800020ac]:0x0000008F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x8000015c]:sw a1, 4090(a0)
Current Store : [0x80000398] : sw t2, 4(t1) -- Store: [0x800020b0]:0x00000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x8000015c]:sw a1, 4090(a0)
Current Store : [0x800003b0] : sw t4, 8(t1) -- Store: [0x800020b4]:0x00000150




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x8000015c]:sw a1, 4090(a0)
Current Store : [0x8000042c] : sw t2, 12(t1) -- Store: [0x800020b8]:0x00000000





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

|s.no|        signature         |             coverpoints              |              code               |
|---:|--------------------------|--------------------------------------|---------------------------------|
|   1|[0x80002081]<br>0x10000000|- opcode : sw<br> - ea_align == 1<br> |[0x8000011c]:sw a1, 2(a0)<br>    |
|   2|[0x80002086]<br>0xFFF7FFFF|- ea_align == 2<br>                   |[0x8000013c]:sw a1, 512(a0)<br>  |
|   3|[0x8000208b]<br>0xFFBFFFFF|- ea_align == 3<br>                   |[0x8000015c]:sw a1, 4090(a0)<br> |
