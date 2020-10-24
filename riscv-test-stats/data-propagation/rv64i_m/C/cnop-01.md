
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x80000330')]      |
| SIG_REGION  | [('0x80002210', '0x80002380')]      |
| COV_LABELS  | ('cnop',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cnop-01.S/cnop-01.S    |

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

|            signature             |     coverpoints     |             code              |
|----------------------------------|---------------------|-------------------------------|
|[0x80002210]<br>0x0000000000000000|- imm_val == 1<br>   |[0x800002d6]:c.nop.hint.1<br>  |
|[0x80002218]<br>0x0000000000000000|- imm_val == 2<br>   |[0x800002dc]:c.nop.hint.2<br>  |
|[0x80002220]<br>0x0000000000000000|- imm_val == 4<br>   |[0x800002e2]:c.nop.hint.4<br>  |
|[0x80002228]<br>0x0000000000000000|- imm_val == 8<br>   |[0x800002e8]:c.nop.hint.8<br>  |
|[0x80002230]<br>0x0000000000000000|- imm_val == 16<br>  |[0x800002ee]:c.nop.hint.16<br> |
|[0x80002238]<br>0x0000000000000000|- imm_val == -32<br> |[0x800002f4]:c.nop.hint.32<br> |
|[0x80002240]<br>0x0000000000000000|- imm_val == -2<br>  |[0x800002fa]:c.nop.hint.62<br> |
|[0x80002248]<br>0x0000000000000000|- imm_val == -3<br>  |[0x80000300]:c.nop.hint.61<br> |
|[0x80002250]<br>0x0000000000000000|- imm_val == -5<br>  |[0x80000306]:c.nop.hint.59<br> |
|[0x80002258]<br>0x0000000000000000|- imm_val == -9<br>  |[0x8000030c]:c.nop.hint.55<br> |
|[0x80002260]<br>0x0000000000000000|- imm_val == -17<br> |[0x80000312]:c.nop.hint.47<br> |
|[0x80002268]<br>0x0000000000000000|- imm_val == 31<br>  |[0x80000318]:c.nop.hint.31<br> |
|[0x80002270]<br>0x0000000000000000|- imm_val == 21<br>  |[0x8000031e]:c.nop.hint.21<br> |
|[0x80002278]<br>0x0000000000000000|- imm_val == -22<br> |[0x80000324]:c.nop.hint.42<br> |
