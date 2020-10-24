
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x800003f0')]      |
| SIG_REGION  | [('0x80002210', '0x80002388')]      |
| COV_LABELS  | ('cld',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cld-01.S/cld-01.S    |

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

|            signature             |                         coverpoints                          |                                      code                                      |
|----------------------------------|--------------------------------------------------------------|--------------------------------------------------------------------------------|
|[0x80002210]<br>0x00000000BABECAFE|- rs1 : 14<br> - rd : 8<br> - rs1 != rd<br> - imm_val > 0<br> |[0x800002de]:c.ld s0, a4, 136<br> [0x800002e0]:c.nop<br> [0x800002e2]:c.nop<br> |
|[0x80002218]<br>0x00000000BABECAFE|- rs1 : 9<br> - rd : 9<br> - rs1 == rd<br> - imm_val == 0<br> |[0x800002f0]:c.ld s1, s1, 0<br> [0x800002f2]:c.nop<br> [0x800002f4]:c.nop<br>   |
|[0x80002220]<br>0x00000000BABECAFE|- rs1 : 15<br> - rd : 12<br> - imm_val == 8<br>               |[0x80000302]:c.ld a2, a5, 8<br> [0x80000304]:c.nop<br> [0x80000306]:c.nop<br>   |
|[0x80002228]<br>0x00000000BABECAFE|- rs1 : 11<br> - rd : 13<br> - imm_val == 16<br>              |[0x80000314]:c.ld a3, a1, 16<br> [0x80000316]:c.nop<br> [0x80000318]:c.nop<br>  |
|[0x80002230]<br>0x00000000BABECAFE|- rs1 : 13<br> - rd : 15<br> - imm_val == 32<br>              |[0x80000326]:c.ld a5, a3, 32<br> [0x80000328]:c.nop<br> [0x8000032a]:c.nop<br>  |
|[0x80002238]<br>0x00000000BABECAFE|- rs1 : 10<br> - rd : 11<br> - imm_val == 64<br>              |[0x80000338]:c.ld a1, a0, 64<br> [0x8000033a]:c.nop<br> [0x8000033c]:c.nop<br>  |
|[0x80002240]<br>0x00000000BABECAFE|- rs1 : 8<br> - rd : 14<br> - imm_val == 128<br>              |[0x8000034a]:c.ld a4, s0, 128<br> [0x8000034c]:c.nop<br> [0x8000034e]:c.nop<br> |
|[0x80002248]<br>0x00000000BABECAFE|- rs1 : 12<br> - rd : 10<br> - imm_val == 240<br>             |[0x8000035c]:c.ld a0, a2, 240<br> [0x8000035e]:c.nop<br> [0x80000360]:c.nop<br> |
|[0x80002250]<br>0x00000000BABECAFE|- imm_val == 232<br>                                          |[0x8000036e]:c.ld a0, a1, 232<br> [0x80000370]:c.nop<br> [0x80000372]:c.nop<br> |
|[0x80002258]<br>0x00000000BABECAFE|- imm_val == 216<br>                                          |[0x80000380]:c.ld a0, a1, 216<br> [0x80000382]:c.nop<br> [0x80000384]:c.nop<br> |
|[0x80002260]<br>0x00000000BABECAFE|- imm_val == 184<br>                                          |[0x80000392]:c.ld a0, a1, 184<br> [0x80000394]:c.nop<br> [0x80000396]:c.nop<br> |
|[0x80002268]<br>0x00000000BABECAFE|- imm_val == 120<br>                                          |[0x800003a4]:c.ld a0, a1, 120<br> [0x800003a6]:c.nop<br> [0x800003a8]:c.nop<br> |
|[0x80002270]<br>0x00000000BABECAFE|- imm_val == 168<br>                                          |[0x800003b6]:c.ld a0, a1, 168<br> [0x800003b8]:c.nop<br> [0x800003ba]:c.nop<br> |
|[0x80002278]<br>0x00000000BABECAFE|- imm_val == 80<br>                                           |[0x800003c8]:c.ld a0, a1, 80<br> [0x800003ca]:c.nop<br> [0x800003cc]:c.nop<br>  |
