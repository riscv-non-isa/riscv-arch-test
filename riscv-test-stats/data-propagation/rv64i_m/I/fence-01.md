
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x800003e0')]      |
| SIG_REGION  | [('0x80002210', '0x80002318')]      |
| COV_LABELS  | ('fence',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/fence-01.S/fence-01.S    |

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

|            signature             |     coverpoints     |                                                                             code                                                                             |
|----------------------------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0xFFFFFFFFAAAAAAAA|- opcode : fence<br> |[0x800003bc]:fence iorw, iorw<br> [0x800003c0]:lw gp, 0(s1)<br> [0x800003c4]:lw tp, 4(s1)<br> [0x800003c8]:auipc s1, 2<br> [0x800003cc]:addi s1, s1, 3656<br> |
