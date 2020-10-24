
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x800003f0')]      |
| SIG_REGION  | [('0x80002210', '0x80002528')]      |
| COV_LABELS  | ('misalign-lwu', 'misalign-lwu')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lwu-01.S/misalign-lwu-01.S    |

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

|            signature             |              coverpoints              |                                 code                                 |
|----------------------------------|---------------------------------------|----------------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000000|- opcode : lwu<br> - ea_align == 1<br> |[0x800003ac]:lwu a1, 3(a0)<br> [0x800003b4]:addi zero, zero, 0<br>    |
|[0x80002218]<br>0x0000000000000000|- ea_align == 2<br>                    |[0x800003c4]:lwu a1, 4031(a0)<br> [0x800003cc]:addi zero, zero, 0<br> |
|[0x80002220]<br>0x0000000000000000|- ea_align == 3<br>                    |[0x800003dc]:lwu a1, 9(a0)<br> [0x800003e4]:addi zero, zero, 0<br>    |
