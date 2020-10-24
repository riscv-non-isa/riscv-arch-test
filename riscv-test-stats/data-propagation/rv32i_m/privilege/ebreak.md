
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000130')]      |
| SIG_REGION                | [('0x80002210', '0x800022a8')]      |
| COV_LABELS                | ('ebreak',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ebreak.S/ebreak.S    |
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

|s.no|        signature         |     coverpoints      |                            code                            |
|---:|--------------------------|----------------------|------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ebreak<br> |[0x80000114]:ebreak<br> [0x8000011c]:addi zero, zero, 0<br> |
