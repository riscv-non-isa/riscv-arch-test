
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000410')]      |
| SIG_REGION                | [('0x80003208', '0x80003420', '67 dwords')]      |
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
	-[0x800003b4]:sw a1, 0(a0)
Current Store : [0x800006b0] : sd t2, 0(t1) -- Store: [0x80003220]:0x000000000000010F




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sw a1, 0(a0)
Current Store : [0x800006b8] : sd t2, 8(t1) -- Store: [0x80003228]:0x0000000000000006




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sw a1, 0(a0)
Current Store : [0x800006d0] : sd t4, 16(t1) -- Store: [0x80003230]:0x00000000000003A8




Last Coverpoint : ['opcode : sw', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sw a1, 0(a0)
Current Store : [0x8000075c] : sd t2, 24(t1) -- Store: [0x80003238]:0x00000000000031FD




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sw a1, 2047(a0)
Current Store : [0x800006b0] : sd t2, 0(t1) -- Store: [0x80003240]:0x000000000000010F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sw a1, 2047(a0)
Current Store : [0x800006b8] : sd t2, 8(t1) -- Store: [0x80003248]:0x0000000000000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sw a1, 2047(a0)
Current Store : [0x800006d0] : sd t4, 16(t1) -- Store: [0x80003250]:0x00000000000003C8




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003d4]:sw a1, 2047(a0)
Current Store : [0x8000075c] : sd t2, 24(t1) -- Store: [0x80003258]:0x0000000000003206




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sw a1, 4079(a0)
Current Store : [0x800006b0] : sd t2, 0(t1) -- Store: [0x80003260]:0x000000000000010F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sw a1, 4079(a0)
Current Store : [0x800006b8] : sd t2, 8(t1) -- Store: [0x80003268]:0x0000000000000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sw a1, 4079(a0)
Current Store : [0x800006d0] : sd t4, 16(t1) -- Store: [0x80003270]:0x00000000000003EC




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003f8]:sw a1, 4079(a0)
Current Store : [0x8000075c] : sd t2, 24(t1) -- Store: [0x80003278]:0x000000000000320F





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
|   1|[0x80003209]<br>0x0000000000004000|- opcode : sw<br> - ea_align == 1<br> |[0x800003b4]:sw a1, 0(a0)<br>    |
|   2|[0x80003212]<br>0x0000100000000000|- ea_align == 2<br>                   |[0x800003d4]:sw a1, 2047(a0)<br> |
|   3|[0x8000321b]<br>0xFFFFFF7FFFFFFFFF|- ea_align == 3<br>                   |[0x800003f8]:sw a1, 4079(a0)<br> |
