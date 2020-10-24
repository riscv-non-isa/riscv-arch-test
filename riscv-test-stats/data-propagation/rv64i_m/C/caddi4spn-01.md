
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x80000370')]      |
| SIG_REGION  | [('0x80002210', '0x800023a8')]      |
| COV_LABELS  | ('caddi4spn',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi4spn-01.S/caddi4spn-01.S    |

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

|            signature             |                    coverpoints                     |                code                 |
|----------------------------------|----------------------------------------------------|-------------------------------------|
|[0x80002210]<br>0x0000000000000100|- rd : 9<br> - imm_val > 0<br> - imm_val == 256<br> |[0x800002d8]:c.addi4spn s1, 256<br>  |
|[0x80002218]<br>0x00000000000003FC|- rd : 11<br> - imm_val == 1020<br>                 |[0x800002e0]:c.addi4spn a1, 1020<br> |
|[0x80002220]<br>0x0000000000000004|- rd : 13<br> - imm_val == 4<br>                    |[0x800002e8]:c.addi4spn a3, 4<br>    |
|[0x80002228]<br>0x0000000000000008|- rd : 10<br> - imm_val == 8<br>                    |[0x800002f0]:c.addi4spn a0, 8<br>    |
|[0x80002230]<br>0x0000000000000010|- rd : 14<br> - imm_val == 16<br>                   |[0x800002f8]:c.addi4spn a4, 16<br>   |
|[0x80002238]<br>0x0000000000000020|- rd : 8<br> - imm_val == 32<br>                    |[0x80000300]:c.addi4spn s0, 32<br>   |
|[0x80002240]<br>0x0000000000000040|- rd : 15<br> - imm_val == 64<br>                   |[0x80000308]:c.addi4spn a5, 64<br>   |
|[0x80002248]<br>0x0000000000000080|- rd : 12<br> - imm_val == 128<br>                  |[0x80000310]:c.addi4spn a2, 128<br>  |
|[0x80002250]<br>0x0000000000000200|- imm_val == 512<br>                                |[0x80000318]:c.addi4spn a0, 512<br>  |
|[0x80002258]<br>0x00000000000003F8|- imm_val == 1016<br>                               |[0x80000320]:c.addi4spn a0, 1016<br> |
|[0x80002260]<br>0x00000000000003F4|- imm_val == 1012<br>                               |[0x80000328]:c.addi4spn a0, 1012<br> |
|[0x80002268]<br>0x00000000000003EC|- imm_val == 1004<br>                               |[0x80000330]:c.addi4spn a0, 1004<br> |
|[0x80002270]<br>0x00000000000002FC|- imm_val == 764<br>                                |[0x80000338]:c.addi4spn a0, 764<br>  |
|[0x80002278]<br>0x00000000000001FC|- imm_val == 508<br>                                |[0x80000340]:c.addi4spn a0, 508<br>  |
|[0x80002280]<br>0x0000000000000154|- imm_val == 340<br>                                |[0x80000348]:c.addi4spn a0, 340<br>  |
|[0x80002288]<br>0x00000000000002A8|- imm_val == 680<br>                                |[0x80000350]:c.addi4spn a0, 680<br>  |
|[0x80002290]<br>0x00000000000003DC|- imm_val == 988<br>                                |[0x80000358]:c.addi4spn a0, 988<br>  |
|[0x80002298]<br>0x00000000000003BC|- imm_val == 956<br>                                |[0x80000360]:c.addi4spn a0, 956<br>  |
|[0x800022a0]<br>0x000000000000037C|- imm_val == 892<br>                                |[0x80000368]:c.addi4spn a0, 892<br>  |
