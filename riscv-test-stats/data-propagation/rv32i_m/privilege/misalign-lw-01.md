
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x80000104', '0x80000160')]      |
| SIG_REGION  | [('0x80002210', '0x8000239c')]      |
| COV_LABELS  | ('misalign-lw', 'misalign-lw')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lw-01.S/misalign-lw-01.S    |

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

|        signature         |             coverpoints              |                                code                                |
|--------------------------|--------------------------------------|--------------------------------------------------------------------|
|[0x80002210]<br>0x00000000|- opcode : lw<br> - ea_align == 1<br> |[0x80000114]:lw a1, 2(a0)<br> [0x8000011c]:addi zero, zero, 0<br>   |
|[0x80002214]<br>0x00000000|- ea_align == 2<br>                   |[0x8000012c]:lw a1, 128(a0)<br> [0x80000134]:addi zero, zero, 0<br> |
|[0x80002218]<br>0x00000000|- ea_align == 3<br>                   |[0x80000144]:lw a1, 2(a0)<br> [0x8000014c]:addi zero, zero, 0<br>   |
