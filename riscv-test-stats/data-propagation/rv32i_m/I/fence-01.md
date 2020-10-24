
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000130')]      |
| SIG_REGION                | [('0x80002210', '0x80002298')]      |
| COV_LABELS                | ('fence',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/fence-01.S/fence-01.S    |
| Total Unique Coverpoints  | 1      |
| Total Signature Updates   | 1      |
| Ops w/o unique coverpoints | 0      |
| Sig Updates w/o Coverpoints | 1    |

## Report Table

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

|s.no|        signature         |     coverpoints     |                                                                            code                                                                             |
|---:|--------------------------|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xAAAAAAAA|- opcode : fence<br> |[0x80000114]:fence iorw, iorw<br> [0x80000118]:lw gp, 0(s1)<br> [0x8000011c]:lw tp, 4(s1)<br> [0x80000120]:auipc s1, 2<br> [0x80000124]:addi s1, s1, 240<br> |
