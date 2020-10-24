
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000410')]      |
| SIG_REGION                | [('0x80002210', '0x80002518')]      |
| COV_LABELS                | ('misalign-bne', 'misalign-bne')      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-bne-01.S/misalign-bne-01.S    |
| Total Unique Coverpoints  | 2      |
| Total Signature Updates   | 2      |
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

|s.no|            signature             |                         coverpoints                         |                                             code                                              |
|---:|----------------------------------|-------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000003|- opcode : bne<br> -  rs1_val!=rs2_val and ea_align == 2<br> |[0x800003c0]:bne a0, a1, 66<br> [0x80000402]:addi sp, zero, 3<br> [0x80000406]:jal zero, 6<br> |
