
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x800003c0')]      |
| SIG_REGION                | [('0x800020a0', '0x800022b0', '66 dwords')]      |
| COV_LABELS                | misalign-sh      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sh-01.S/misalign-sh-01.S    |
| Total Number of coverpoints| 2     |
| Total Coverpoints Hit     | 2      |
| Total Signature Updates   | 5      |
| STAT1                     | 1      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 4     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : sh', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sh a1, 1023(a0)
Current Store : [0x80000660] : sd t2, 0(t1) -- Store: [0x800020a8]:0x000000000000010F




Last Coverpoint : ['opcode : sh', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sh a1, 1023(a0)
Current Store : [0x80000668] : sd t2, 8(t1) -- Store: [0x800020b0]:0x0000000000000006




Last Coverpoint : ['opcode : sh', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sh a1, 1023(a0)
Current Store : [0x80000680] : sd t4, 16(t1) -- Store: [0x800020b8]:0x00000000000003A8




Last Coverpoint : ['opcode : sh', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003b4]:sh a1, 1023(a0)
Current Store : [0x80000724] : sd t2, 24(t1) -- Store: [0x800020c0]:0xFFFFFFFFFFFFFFF9





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
|   1|[0x800020a1]<br>0x0000000000000006|- opcode : sh<br> - ea_align == 1<br> |[0x800003b4]:sh a1, 1023(a0)<br> |
