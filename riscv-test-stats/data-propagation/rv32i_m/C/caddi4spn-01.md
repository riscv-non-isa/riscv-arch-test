
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800001a0')]      |
| SIG_REGION                | [('0x80002210', '0x800022dc')]      |
| COV_LABELS                | ('caddi4spn',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi4spn-01.S/caddi4spn-01.S    |
| Total Unique Coverpoints  | 29      |
| Total Signature Updates   | 19      |
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

|s.no|        signature         |                                  coverpoints                                   |                code                 |
|---:|--------------------------|--------------------------------------------------------------------------------|-------------------------------------|
|   1|[0x80002210]<br>0x00000154|- opcode : c.addi4spn<br> - rd : x13<br> - imm_val > 0<br> - imm_val == 340<br> |[0x800000fe]:c.addi4spn a3, 340<br>  |
|   2|[0x80002214]<br>0x000003FC|- rd : x10<br> - imm_val == 1020<br>                                            |[0x80000106]:c.addi4spn a0, 1020<br> |
|   3|[0x80002218]<br>0x00000004|- rd : x9<br> - imm_val == 4<br>                                                |[0x8000010e]:c.addi4spn s1, 4<br>    |
|   4|[0x8000221c]<br>0x00000008|- rd : x8<br> - imm_val == 8<br>                                                |[0x80000116]:c.addi4spn s0, 8<br>    |
|   5|[0x80002220]<br>0x00000010|- rd : x15<br> - imm_val == 16<br>                                              |[0x8000011e]:c.addi4spn a5, 16<br>   |
|   6|[0x80002224]<br>0x00000020|- rd : x14<br> - imm_val == 32<br>                                              |[0x80000126]:c.addi4spn a4, 32<br>   |
|   7|[0x80002228]<br>0x00000040|- rd : x11<br> - imm_val == 64<br>                                              |[0x8000012e]:c.addi4spn a1, 64<br>   |
|   8|[0x8000222c]<br>0x00000080|- rd : x12<br> - imm_val == 128<br>                                             |[0x80000136]:c.addi4spn a2, 128<br>  |
|   9|[0x80002230]<br>0x00000100|- imm_val == 256<br>                                                            |[0x8000013e]:c.addi4spn a0, 256<br>  |
|  10|[0x80002234]<br>0x00000200|- imm_val == 512<br>                                                            |[0x80000146]:c.addi4spn a0, 512<br>  |
|  11|[0x80002238]<br>0x000003F8|- imm_val == 1016<br>                                                           |[0x8000014e]:c.addi4spn a0, 1016<br> |
|  12|[0x8000223c]<br>0x000003F4|- imm_val == 1012<br>                                                           |[0x80000156]:c.addi4spn a0, 1012<br> |
|  13|[0x80002240]<br>0x000002FC|- imm_val == 764<br>                                                            |[0x8000015e]:c.addi4spn a0, 764<br>  |
|  14|[0x80002244]<br>0x000001FC|- imm_val == 508<br>                                                            |[0x80000166]:c.addi4spn a0, 508<br>  |
|  15|[0x80002248]<br>0x000002A8|- imm_val == 680<br>                                                            |[0x8000016e]:c.addi4spn a0, 680<br>  |
|  16|[0x8000224c]<br>0x000003EC|- imm_val == 1004<br>                                                           |[0x80000176]:c.addi4spn a0, 1004<br> |
|  17|[0x80002250]<br>0x000003DC|- imm_val == 988<br>                                                            |[0x8000017e]:c.addi4spn a0, 988<br>  |
|  18|[0x80002254]<br>0x000003BC|- imm_val == 956<br>                                                            |[0x80000186]:c.addi4spn a0, 956<br>  |
|  19|[0x80002258]<br>0x0000037C|- imm_val == 892<br>                                                            |[0x8000018e]:c.addi4spn a0, 892<br>  |
