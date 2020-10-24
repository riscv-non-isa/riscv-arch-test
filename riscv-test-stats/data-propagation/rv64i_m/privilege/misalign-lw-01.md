
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x800003f0')]      |
| SIG_REGION                | [('0x80002210', '0x80002528')]      |
| COV_LABELS                | ('misalign-lw', 'misalign-lw')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-lw-01.S/misalign-lw-01.S    |
| Total Unique Coverpoints  | 4      |
| Total Signature Updates   | 6      |
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

|s.no|            signature             |             coverpoints              |                                code                                 |
|---:|----------------------------------|--------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : lw<br> - ea_align == 1<br> |[0x800003ac]:lw a1, 4063(a0)<br> [0x800003b4]:addi zero, zero, 0<br> |
|   2|[0x80002218]<br>0x0000000000000000|- ea_align == 2<br>                   |[0x800003c4]:lw a1, 2730(a0)<br> [0x800003cc]:addi zero, zero, 0<br> |
|   3|[0x80002220]<br>0x0000000000000000|- ea_align == 3<br>                   |[0x800003dc]:lw a1, 2(a0)<br> [0x800003e4]:addi zero, zero, 0<br>    |
