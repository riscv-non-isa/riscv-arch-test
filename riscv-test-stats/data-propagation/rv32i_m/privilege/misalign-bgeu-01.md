
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x80000104', '0x80000bf0')]      |
| SIG_REGION  | [('0x80003210', '0x80003394')]      |
| COV_LABELS  | ('misalign-bgeu', 'misalign-bgeu')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-bgeu-01.S/misalign-bgeu-01.S    |

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

|        signature         |                         coverpoints                         |                                                code                                                 |
|--------------------------|-------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
|[0x80003210]<br>0x00000001|- opcode : bgeu<br> -  rs1_val>rs2_val and ea_align == 2<br> |[0x80000bcc]:bgeu a0, a1, 5458<br> [0x8000011e]:addi sp, zero, 1<br> [0x80000122]:jal zero, 2754<br> |
