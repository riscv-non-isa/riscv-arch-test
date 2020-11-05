
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
| SIG_REGION                | [('0x80003204', '0x80003418', '66 dwords')]      |
| COV_LABELS                | misalign-jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-jal-01.S/misalign-jal-01.S    |
| Total Number of coverpoints| 2     |
| Total Coverpoints Hit     | 1      |
| Total Signature Updates   | 1      |
| STAT1                     | 0      |
| STAT2                     | 1      |
| STAT3                     | 1     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003b6]:jal zero, 38
      [0x800003dc]:auipc sp, 0
      [0x800003e0]:addi sp, sp, 4040
      [0x800003e4]:andi sp, sp, 4092
      [0x800003e8]:sub a0, a0, sp
      [0x800003ec]:sd a0, 0(ra)
 -- Signature Address: 0x80003210 Data: 0x000000000000001D
 -- Redundant Coverpoints hit by the op
      - opcode : jal






```

## Details of STAT3

```
[0x800003bc]:jal a0, 2097142
[0x800003b2]:xori a0, a0, 1



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

|s.no|signature|coverpoints|code|
|----|---------|-----------|----|
