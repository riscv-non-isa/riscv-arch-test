
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000150')]      |
| SIG_REGION                | [('0x80002210', '0x80002394')]      |
| COV_LABELS                | ('misalign-bltu', 'misalign-bltu')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-bltu-01.S/misalign-bltu-01.S    |
| Total Unique Coverpoints  | 2      |
| Total Signature Updates   | 1      |
| Ops w/o unique coverpoints | 0      |
| Sig Updates w/o Coverpoints | 0    |

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

|s.no|        signature         |                         coverpoints                         |                                              code                                              |
|---:|--------------------------|-------------------------------------------------------------|------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000003|- opcode : bltu<br> -  rs1_val<rs2_val and ea_align == 2<br> |[0x80000128]:bltu a0, a1, 14<br> [0x80000136]:addi sp, zero, 3<br> [0x8000013a]:jal zero, 6<br> |
