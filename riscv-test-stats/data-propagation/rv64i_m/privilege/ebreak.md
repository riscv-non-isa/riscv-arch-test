
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x800003c0')]      |
| SIG_REGION  | [('0x80002210', '0x80002328')]      |
| COV_LABELS  | ('ebreak',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/ebreak.S/ebreak.S    |

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

|            signature             |     coverpoints      |                            code                            |
|----------------------------------|----------------------|------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000000|- opcode : ebreak<br> |[0x800003ac]:ebreak<br> [0x800003b4]:addi zero, zero, 0<br> |
