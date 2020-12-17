
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x800003f0')]      |
| SIG_REGION                | [('0x800020a0', '0x800022c0', '68 dwords')]      |
| COV_LABELS                | misalign-lwu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lwu-01.S/misalign-lwu-01.S    |
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
Last Coverpoint : ['opcode : lwu', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:lwu a1, 4089(a0)
Current Store : [0x80000698] : sd t2, 8(t1) -- Store: [0x800020c0]:0x0000000000000004




Last Coverpoint : ['opcode : lwu', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:lwu a1, 4089(a0)
Current Store : [0x800006b0] : sd t4, 16(t1) -- Store: [0x800020c8]:0x00000000000003A0




Last Coverpoint : ['opcode : lwu', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:lwu a1, 4089(a0)
Current Store : [0x80000754] : sd t2, 24(t1) -- Store: [0x800020d0]:0xFFFFFFFFFFFFFFD9




Last Coverpoint : ['opcode : lwu', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:lwu a1, 4089(a0)
Current Store : [0x800003b8] : sd a1, 0(ra) -- Store: [0x800020a0]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:lwu a1, 4086(a0)
Current Store : [0x80000698] : sd t2, 8(t1) -- Store: [0x800020e0]:0x0000000000000004




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:lwu a1, 4086(a0)
Current Store : [0x800006b0] : sd t4, 16(t1) -- Store: [0x800020e8]:0x00000000000003B8




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:lwu a1, 4086(a0)
Current Store : [0x80000754] : sd t2, 24(t1) -- Store: [0x800020f0]:0xFFFFFFFFFFFFFFDA




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:lwu a1, 4086(a0)
Current Store : [0x800003d0] : sd a1, 8(ra) -- Store: [0x800020a8]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:lwu a1, 0(a0)
Current Store : [0x80000698] : sd t2, 8(t1) -- Store: [0x80002100]:0x0000000000000004




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:lwu a1, 0(a0)
Current Store : [0x800006b0] : sd t4, 16(t1) -- Store: [0x80002108]:0x00000000000003D0




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:lwu a1, 0(a0)
Current Store : [0x80000754] : sd t2, 24(t1) -- Store: [0x80002110]:0xFFFFFFFFFFFFFFDB




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:lwu a1, 0(a0)
Current Store : [0x800003e8] : sd a1, 16(ra) -- Store: [0x800020b0]:0xAB7FBB6FAB7FBB6F





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

|s.no|            signature             |              coverpoints              |               code               |
|---:|----------------------------------|---------------------------------------|----------------------------------|
|   1|[0x800020b8]<br>0x000000000000010F|- opcode : lwu<br> - ea_align == 1<br> |[0x800003ac]:lwu a1, 4089(a0)<br> |
|   2|[0x800020d8]<br>0x000000000000010F|- ea_align == 2<br>                    |[0x800003c4]:lwu a1, 4086(a0)<br> |
|   3|[0x800020f8]<br>0x000000000000010F|- ea_align == 3<br>                    |[0x800003dc]:lwu a1, 0(a0)<br>    |
