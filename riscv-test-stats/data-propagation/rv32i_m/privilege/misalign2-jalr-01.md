
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x80000104', '0x80000150')]      |
| SIG_REGION  | [('0x80002210', '0x80002394')]      |
| COV_LABELS  | ('misalign2-jalr', 'misalign2-jalr')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign2-jalr-01.S/misalign2-jalr-01.S    |

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

|        signature         |              coverpoints               |                                                                                                               code                                                                                                                |
|--------------------------|----------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x00000017|- opcode : jalr<br> - ea_align == 2<br> |[0x8000011c]:jalr a1, a0, 4092<br> [0x80000132]:xori a1, a1, 3<br> [0x80000136]:jal zero, 6<br> [0x8000013c]:auipc sp, 0<br> [0x80000140]:addi sp, sp, 4048<br> [0x80000144]:andi sp, sp, 4092<br> [0x80000148]:sub a1, a1, sp<br> |
