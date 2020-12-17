
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000400')]      |
| SIG_REGION                | [('0x800020a0', '0x800022c0', '68 dwords')]      |
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
	-[0x800003b8]:sw a1, 128(a0)
Current Store : [0x800006a0] : sd t2, 0(t1) -- Store: [0x800020b8]:0x000000000000010F




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sw a1, 128(a0)
Current Store : [0x800006a8] : sd t2, 8(t1) -- Store: [0x800020c0]:0x0000000000000006




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sw a1, 128(a0)
Current Store : [0x800006c0] : sd t4, 16(t1) -- Store: [0x800020c8]:0x00000000000003AC




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b8]:sw a1, 128(a0)
Current Store : [0x80000764] : sd t2, 24(t1) -- Store: [0x800020d0]:0xFFFFFFFFFFFFFFE9




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d8]:sw a1, 3(a0)
Current Store : [0x800006a0] : sd t2, 0(t1) -- Store: [0x800020d8]:0x000000000000010F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d8]:sw a1, 3(a0)
Current Store : [0x800006a8] : sd t2, 8(t1) -- Store: [0x800020e0]:0x0000000000000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d8]:sw a1, 3(a0)
Current Store : [0x800006c0] : sd t4, 16(t1) -- Store: [0x800020e8]:0x00000000000003CC




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d8]:sw a1, 3(a0)
Current Store : [0x80000764] : sd t2, 24(t1) -- Store: [0x800020f0]:0xFFFFFFFFFFFFFFF2




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f4]:sw a1, 1(a0)
Current Store : [0x800006a0] : sd t2, 0(t1) -- Store: [0x800020f8]:0x000000000000010F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f4]:sw a1, 1(a0)
Current Store : [0x800006a8] : sd t2, 8(t1) -- Store: [0x80002100]:0x0000000000000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f4]:sw a1, 1(a0)
Current Store : [0x800006c0] : sd t4, 16(t1) -- Store: [0x80002108]:0x00000000000003E8




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f4]:sw a1, 1(a0)
Current Store : [0x80000764] : sd t2, 24(t1) -- Store: [0x80002110]:0xFFFFFFFFFFFFFFFB





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

|s.no|            signature             |             coverpoints              |              code              |
|---:|----------------------------------|--------------------------------------|--------------------------------|
|   1|[0x800020a1]<br>0x0004000000000000|- opcode : sw<br> - ea_align == 1<br> |[0x800003b8]:sw a1, 128(a0)<br> |
|   2|[0x800020aa]<br>0xFFFFFFFFFFEFFFFF|- ea_align == 2<br>                   |[0x800003d8]:sw a1, 3(a0)<br>   |
|   3|[0x800020b3]<br>0xFFFFFFFFFFFFFFFA|- ea_align == 3<br>                   |[0x800003f4]:sw a1, 1(a0)<br>   |
