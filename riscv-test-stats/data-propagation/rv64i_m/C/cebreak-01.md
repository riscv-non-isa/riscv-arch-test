
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002da', '0x80000300')]      |
| SIG_REGION  | [('0x80002210', '0x80002328')]      |
| COV_LABELS  | ('cebreak',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cebreak-01.S/cebreak-01.S    |

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

|            signature             |      coverpoints       |           code           |
|----------------------------------|------------------------|--------------------------|
|[0x80002210]<br>0x0000000000000000|- opcode : c.ebreak<br> |[0x800002ea]:c.ebreak<br> |
