
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x800003e0')]      |
| SIG_REGION  | [('0x80002210', '0x80002518')]      |
| COV_LABELS  | ('misalign-blt', 'misalign-blt')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-blt-01.S/misalign-blt-01.S    |

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

|            signature             |                        coverpoints                         |                                               code                                               |
|----------------------------------|------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000001|- opcode : blt<br> -  rs1_val<rs2_val and ea_align == 2<br> |[0x800003c4]:blt a0, a1, 8178<br> [0x800003b6]:addi sp, zero, 1<br> [0x800003ba]:jal zero, 34<br> |
