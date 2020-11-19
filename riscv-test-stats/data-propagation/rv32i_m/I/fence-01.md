
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000120')]      |
| SIG_REGION                | [('0x80002010', '0x80002020', '4 words')]      |
| COV_LABELS                | fence      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/fence-01.S/fence-01.S    |
| Total Number of coverpoints| 1     |
| Total Coverpoints Hit     | 1      |
| Total Signature Updates   | 1      |
| STAT1                     | 1      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

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

|s.no|        signature         |     coverpoints     |                                                                             code                                                                             |
|---:|--------------------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFF|- opcode : fence<br> |[0x80000108]:fence iorw, iorw<br> [0x8000010c]:lw gp, 0(s1)<br> [0x80000110]:auipc s1, 2<br> [0x80000114]:addi s1, s1, 3840<br> [0x80000118]:sw gp, 0(s1)<br> |
