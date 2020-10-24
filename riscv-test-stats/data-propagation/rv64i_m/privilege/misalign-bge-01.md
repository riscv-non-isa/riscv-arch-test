
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x8000039c', '0x800007e0')]      |
| SIG_REGION  | [('0x80002210', '0x80002518')]      |
| COV_LABELS  | ('misalign-bge', 'misalign-bge')      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-bge-01.S/misalign-bge-01.S    |

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

<style>
table th:first-of-type {
    width: 5%;
}
table th:nth-of-type(2) {
    width: 40%;
}
table th:nth-of-type(3) {
    width: 55%;
}
</style>

|            signature             |               coverpoints               |                                              code                                               |
|----------------------------------|-----------------------------------------|-------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0x0000000000000003|-  rs1_val>rs2_val and ea_align == 2<br> |[0x800003c4]:bge a0, a1, 1026<br> [0x800007c6]:addi sp, zero, 3<br> [0x800007ca]:jal zero, 6<br> |
