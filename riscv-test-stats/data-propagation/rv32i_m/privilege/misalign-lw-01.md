
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000160')]      |
| SIG_REGION                | [('0x80002080', '0x80002190', '68 words')]      |
| COV_LABELS                | misalign-lw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lw-01.S/misalign-lw-01.S    |
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
Last Coverpoint : ['opcode : lw', 'ea_align == 1']
Last Code Sequence : 
	-[0x80000114]:lw a1, 0(a0)
Current Store : [0x80000388] : sw t2, 4(t1) -- Store: [0x80002090]:0x00000004




Last Coverpoint : ['opcode : lw', 'ea_align == 1']
Last Code Sequence : 
	-[0x80000114]:lw a1, 0(a0)
Current Store : [0x800003a0] : sw t4, 8(t1) -- Store: [0x80002094]:0x00000108




Last Coverpoint : ['opcode : lw', 'ea_align == 1']
Last Code Sequence : 
	-[0x80000114]:lw a1, 0(a0)
Current Store : [0x80000438] : sw t2, 12(t1) -- Store: [0x80002098]:0xFFFFFFE5




Last Coverpoint : ['opcode : lw', 'ea_align == 1']
Last Code Sequence : 
	-[0x80000114]:lw a1, 0(a0)
Current Store : [0x80000120] : sw a1, 0(ra) -- Store: [0x80002080]:0xAB7FBB6F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000012c]:lw a1, 256(a0)
Current Store : [0x80000388] : sw t2, 4(t1) -- Store: [0x800020a0]:0x00000004




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000012c]:lw a1, 256(a0)
Current Store : [0x800003a0] : sw t4, 8(t1) -- Store: [0x800020a4]:0x00000120




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000012c]:lw a1, 256(a0)
Current Store : [0x80000438] : sw t2, 12(t1) -- Store: [0x800020a8]:0xFFFFFFE6




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x8000012c]:lw a1, 256(a0)
Current Store : [0x80000138] : sw a1, 4(ra) -- Store: [0x80002084]:0xAB7FBB6F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x80000144]:lw a1, 2048(a0)
Current Store : [0x80000388] : sw t2, 4(t1) -- Store: [0x800020b0]:0x00000004




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x80000144]:lw a1, 2048(a0)
Current Store : [0x800003a0] : sw t4, 8(t1) -- Store: [0x800020b4]:0x00000138




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x80000144]:lw a1, 2048(a0)
Current Store : [0x80000438] : sw t2, 12(t1) -- Store: [0x800020b8]:0xFFFFFFE7




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x80000144]:lw a1, 2048(a0)
Current Store : [0x80000150] : sw a1, 8(ra) -- Store: [0x80002088]:0xAB7FBB6F





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
|   1|[0x8000208c]<br>0x0000008F|- opcode : lw<br> - ea_align == 1<br> |[0x80000114]:lw a1, 0(a0)<br>    |
|   2|[0x8000209c]<br>0x0000008F|- ea_align == 2<br>                   |[0x8000012c]:lw a1, 256(a0)<br>  |
|   3|[0x800020ac]<br>0x0000008F|- ea_align == 3<br>                   |[0x80000144]:lw a1, 2048(a0)<br> |
