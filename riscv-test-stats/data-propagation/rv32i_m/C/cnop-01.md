
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x80000150')]      |
| SIG_REGION  | [('0x80002210', '0x800022c8')]      |
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

|        signature         |              coverpoints               |             code              |
|--------------------------|----------------------------------------|-------------------------------|
|[0x80002210]<br>0x00000000|- opcode : c.nop<br> - imm_val == 1<br> |[0x800000fc]:c.nop.hint.1<br>  |
|[0x80002214]<br>0x00000000|- imm_val == 2<br>                      |[0x80000102]:c.nop.hint.2<br>  |
|[0x80002218]<br>0x00000000|- imm_val == 4<br>                      |[0x80000108]:c.nop.hint.4<br>  |
|[0x8000221c]<br>0x00000000|- imm_val == 8<br>                      |[0x8000010e]:c.nop.hint.8<br>  |
|[0x80002220]<br>0x00000000|- imm_val == 16<br>                     |[0x80000114]:c.nop.hint.16<br> |
|[0x80002224]<br>0x00000000|- imm_val == -32<br>                    |[0x8000011a]:c.nop.hint.32<br> |
|[0x80002228]<br>0x00000000|- imm_val == -2<br>                     |[0x80000120]:c.nop.hint.62<br> |
|[0x8000222c]<br>0x00000000|- imm_val == -3<br>                     |[0x80000126]:c.nop.hint.61<br> |
|[0x80002230]<br>0x00000000|- imm_val == -5<br>                     |[0x8000012c]:c.nop.hint.59<br> |
|[0x80002234]<br>0x00000000|- imm_val == -9<br>                     |[0x80000132]:c.nop.hint.55<br> |
|[0x80002238]<br>0x00000000|- imm_val == -17<br>                    |[0x80000138]:c.nop.hint.47<br> |
|[0x8000223c]<br>0x00000000|- imm_val == 31<br>                     |[0x8000013e]:c.nop.hint.31<br> |
|[0x80002240]<br>0x00000000|- imm_val == 21<br>                     |[0x80000144]:c.nop.hint.21<br> |
|[0x80002244]<br>0x00000000|- imm_val == -22<br>                    |[0x8000014a]:c.nop.hint.42<br> |
