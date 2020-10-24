
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x800803f0')]      |
| SIG_REGION  | [('0x80082210', '0x80082518')]      |
| COV_LABELS  | ('misalign-jal', 'misalign-jal')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-jal-01.S/misalign-jal-01.S    |

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

|            signature             |              coverpoints              |                                                                                                                 code                                                                                                                 |
|----------------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80082210]<br>0x0000000000000027|- opcode : jal<br> - ea_align == 2<br> |[0x800003c4]:jal a0, 524298<br> [0x800803ce]:xori a0, a0, 3<br> [0x800803d2]:jal zero, 6<br> [0x800803d8]:auipc sp, 1048448<br> [0x800803dc]:addi sp, sp, 4044<br> [0x800803e0]:andi sp, sp, 4092<br> [0x800803e4]:sub a0, a0, sp<br> |
