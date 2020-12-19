
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000150')]      |
| SIG_REGION                | [('0x80002080', '0x80002190', '68 words')]      |
| COV_LABELS                | misalign-bge      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-bge-01.S/misalign-bge-01.S    |
| Total Number of coverpoints| 2     |
| Total Coverpoints Hit     | 2      |
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

|s.no|        signature         |                        coverpoints                         |                                                           code                                                            |
|---:|--------------------------|------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002080]<br>0x00000003|- opcode : bge<br> -  rs1_val>rs2_val and ea_align == 2<br> |[0x8000012c]:bge a0, a1, 14<br> [0x8000013a]:addi sp, sp, 3<br> [0x8000013e]:jal zero, 6<br> [0x80000144]:sw sp, 0(ra)<br> |
