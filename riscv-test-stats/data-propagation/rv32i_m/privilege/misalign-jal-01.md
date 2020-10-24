
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000104', '0x80000180')]      |
| SIG_REGION                | [('0x80002210', '0x80002394')]      |
| COV_LABELS                | ('misalign-jal', 'misalign-jal')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-jal-01.S/misalign-jal-01.S    |
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

|s.no|        signature         |              coverpoints              |                                                                                                            code                                                                                                            |
|---:|--------------------------|---------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000027|- opcode : jal<br> - ea_align == 2<br> |[0x8000012c]:jal a0, 42<br> [0x80000156]:xori a0, a0, 3<br> [0x8000015a]:jal zero, 6<br> [0x80000160]:auipc sp, 0<br> [0x80000164]:addi sp, sp, 4012<br> [0x80000168]:andi sp, sp, 4092<br> [0x8000016c]:sub a0, a0, sp<br> |
