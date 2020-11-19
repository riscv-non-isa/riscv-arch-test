
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800003e0')]      |
| SIG_REGION                | [('0x80002010', '0x80002020', '2 dwords')]      |
| COV_LABELS                | fence      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/fence-01.S/fence-01.S    |
| Total Number of coverpoints| 1     |
| Total Coverpoints Hit     | 1      |
| Total Signature Updates   | 2      |
| STAT1                     | 1      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 1     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fence']
Last Code Sequence : 
	-[0x800003bc]:fence iorw, iorw
	-[0x800003c0]:lw gp, 0(s1)
	-[0x800003c4]:lw tp, 4(s1)
	-[0x800003c8]:auipc s1, 2
	-[0x800003cc]:addi s1, s1, 3144
	-[0x800003d0]:sw tp, 0(s1)
Current Store : [0x800003d4] : sw gp, 4(s1) -- Store: [0x80002014]:0xFFFFFFFFFFFFFFFF





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

|s.no|            signature             |     coverpoints     |                                                                                            code                                                                                            |
|---:|----------------------------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFAAAAAAAA|- opcode : fence<br> |[0x800003bc]:fence iorw, iorw<br> [0x800003c0]:lw gp, 0(s1)<br> [0x800003c4]:lw tp, 4(s1)<br> [0x800003c8]:auipc s1, 2<br> [0x800003cc]:addi s1, s1, 3144<br> [0x800003d0]:sw tp, 0(s1)<br> |
