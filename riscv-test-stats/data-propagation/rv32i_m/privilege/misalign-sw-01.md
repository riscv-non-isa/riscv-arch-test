
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x80000104', '0x80000170')]      |
| SIG_REGION  | [('0x80002210', '0x8000239c')]      |
| COV_LABELS  | ('misalign-sw', 'misalign-sw')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sw-01.S/misalign-sw-01.S    |

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

|        signature         |             coverpoints              |                                                                                                                    code                                                                                                                    |
|--------------------------|--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002216]<br>0xFF7FFFFF|- opcode : sw<br> - ea_align == 1<br> |[0x8000011c]:sw a1, 5(a0)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:lui a1, 1046528<br> [0x8000012c]:addi a1, a1, 4095<br> [0x80000130]:addi a0, ra, 6<br> [0x80000134]:addi sp, zero, 4093<br> [0x80000138]:sub a0, a0, sp<br>  |
|[0x8000221b]<br>0xFF7FFFFF|- ea_align == 2<br>                   |[0x8000013c]:sw a1, 4093(a0)<br> [0x80000144]:addi zero, zero, 0<br> [0x80000148]:lui a1, 1046528<br> [0x8000014c]:addi a1, a1, 4095<br> [0x80000150]:addi a0, ra, 11<br> [0x80000154]:addi sp, zero, 5<br> [0x80000158]:sub a0, a0, sp<br> |
