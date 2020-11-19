
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000160')]      |
| SIG_REGION                | [('0x80002010', '0x80002020', '4 words')]      |
| COV_LABELS                | fencei      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/Fencei.S/Fencei.S    |
| Total Number of coverpoints| 1     |
| Total Coverpoints Hit     | 1      |
| Total Signature Updates   | 4      |
| STAT1                     | 1      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 3     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fence.i']
Last Code Sequence : 
	-[0x8000012c]:fence.i
	-[0x80000130]:add gp, sp, ra
	-[0x80000134]:sw ra, 0(a7)
Current Store : [0x80000138] : sw sp, 4(a7) -- Store: [0x80002014]:0x00000012




Last Coverpoint : ['opcode : fence.i']
Last Code Sequence : 
	-[0x8000012c]:fence.i
	-[0x80000130]:add gp, sp, ra
	-[0x80000134]:sw ra, 0(a7)
Current Store : [0x8000013c] : sw gp, 8(a7) -- Store: [0x80002018]:0x00000042




Last Coverpoint : ['opcode : fence.i']
Last Code Sequence : 
	-[0x8000012c]:fence.i
	-[0x80000130]:add gp, sp, ra
	-[0x80000134]:sw ra, 0(a7)
Current Store : [0x80000140] : sw a5, 12(a7) -- Store: [0x8000201c]:0x001101B3





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

|s.no|        signature         |      coverpoints      |                                         code                                          |
|---:|--------------------------|-----------------------|---------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000030|- opcode : fence.i<br> |[0x8000012c]:fence.i<br> [0x80000130]:add gp, sp, ra<br> [0x80000134]:sw ra, 0(a7)<br> |
