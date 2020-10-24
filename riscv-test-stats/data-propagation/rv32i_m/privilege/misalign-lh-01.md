
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000130')]      |
| SIG_REGION                | [('0x80002210', '0x80002394')]      |
| COV_LABELS                | ('misalign-lh', 'misalign-lh')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lh-01.S/misalign-lh-01.S    |
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

|s.no|        signature         |             coverpoints              |                               code                               |
|---:|--------------------------|--------------------------------------|------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : lh<br> - ea_align == 1<br> |[0x80000114]:lh a1, 3(a0)<br> [0x8000011c]:addi zero, zero, 0<br> |
