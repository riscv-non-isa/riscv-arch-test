
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x80000200')]      |
| SIG_REGION  | [('0x80002210', '0x800022c8')]      |
| COV_LABELS  | ('clw',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/clw-01.S/clw-01.S    |

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

|        signature         |                                             coverpoints                                             |                                      code                                      |
|--------------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------|
|[0x80002210]<br>0xBABECAFE|- opcode : c.lw<br> - rs1 : 14<br> - rd : 8<br> - rs1 != rd<br> - imm_val > 0<br> - imm_val == 8<br> |[0x80000104]:c.lw s0, a4, 8<br> [0x80000106]:c.nop<br> [0x80000108]:c.nop<br>   |
|[0x80002214]<br>0xBABECAFE|- rs1 : 15<br> - rd : 15<br> - rs1 == rd<br> - imm_val == 0<br>                                      |[0x80000116]:c.lw a5, a5, 0<br> [0x80000118]:c.nop<br> [0x8000011a]:c.nop<br>   |
|[0x80002218]<br>0xBABECAFE|- rs1 : 10<br> - rd : 13<br> - imm_val == 4<br>                                                      |[0x80000128]:c.lw a3, a0, 4<br> [0x8000012a]:c.nop<br> [0x8000012c]:c.nop<br>   |
|[0x8000221c]<br>0xBABECAFE|- rs1 : 9<br> - rd : 11<br> - imm_val == 16<br>                                                      |[0x8000013a]:c.lw a1, s1, 16<br> [0x8000013c]:c.nop<br> [0x8000013e]:c.nop<br>  |
|[0x80002220]<br>0xBABECAFE|- rs1 : 8<br> - rd : 10<br> - imm_val == 32<br>                                                      |[0x8000014c]:c.lw a0, s0, 32<br> [0x8000014e]:c.nop<br> [0x80000150]:c.nop<br>  |
|[0x80002224]<br>0xBABECAFE|- rs1 : 12<br> - rd : 9<br> - imm_val == 64<br>                                                      |[0x8000015e]:c.lw s1, a2, 64<br> [0x80000160]:c.nop<br> [0x80000162]:c.nop<br>  |
|[0x80002228]<br>0xBABECAFE|- rs1 : 13<br> - rd : 12<br> - imm_val == 120<br>                                                    |[0x80000170]:c.lw a2, a3, 120<br> [0x80000172]:c.nop<br> [0x80000174]:c.nop<br> |
|[0x8000222c]<br>0xBABECAFE|- rs1 : 11<br> - rd : 14<br> - imm_val == 116<br>                                                    |[0x80000182]:c.lw a4, a1, 116<br> [0x80000184]:c.nop<br> [0x80000186]:c.nop<br> |
|[0x80002230]<br>0xBABECAFE|- imm_val == 108<br>                                                                                 |[0x80000194]:c.lw a0, a1, 108<br> [0x80000196]:c.nop<br> [0x80000198]:c.nop<br> |
|[0x80002234]<br>0xBABECAFE|- imm_val == 92<br>                                                                                  |[0x800001a6]:c.lw a0, a1, 92<br> [0x800001a8]:c.nop<br> [0x800001aa]:c.nop<br>  |
|[0x80002238]<br>0xBABECAFE|- imm_val == 60<br>                                                                                  |[0x800001b8]:c.lw a0, a1, 60<br> [0x800001ba]:c.nop<br> [0x800001bc]:c.nop<br>  |
|[0x8000223c]<br>0xBABECAFE|- imm_val == 84<br>                                                                                  |[0x800001ca]:c.lw a0, a1, 84<br> [0x800001cc]:c.nop<br> [0x800001ce]:c.nop<br>  |
|[0x80002240]<br>0xBABECAFE|- imm_val == 40<br>                                                                                  |[0x800001dc]:c.lw a0, a1, 40<br> [0x800001de]:c.nop<br> [0x800001e0]:c.nop<br>  |
