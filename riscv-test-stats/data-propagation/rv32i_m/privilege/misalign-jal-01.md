
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80040160')]      |
| SIG_REGION                | [('0x80042080', '0x80042190', '68 words')]      |
| COV_LABELS                | misalign-jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-jal-01.S/misalign-jal-01.S    |
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

|s.no|        signature         |              coverpoints              |                                                                                                                                                                 code                                                                                                                                                                  |
|---:|--------------------------|---------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80042080]<br>0x0000002B|- opcode : jal<br> - ea_align == 2<br> |[0x80000130]:jal a0, 262154<br> [0x8004013a]:xori a0, a0, 3<br> [0x8004013e]:auipc sp, 0<br> [0x80040142]:addi sp, sp, 14<br> [0x80040146]:jalr zero, sp, 0<br> [0x8004014c]:auipc sp, 1048512<br> [0x80040150]:addi sp, sp, 4032<br> [0x80040154]:andi sp, sp, 4092<br> [0x80040158]:sub a0, a0, sp<br> [0x8004015c]:sw a0, 0(ra)<br> |
