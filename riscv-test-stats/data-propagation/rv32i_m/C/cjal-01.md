
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x80001dd0')]      |
| SIG_REGION                | [('0x80003210', '0x800032d4')]      |
| COV_LABELS                | ('cjal',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjal-01.S/cjal-01.S    |
| Total Unique Coverpoints  | 20      |
| Total Signature Updates   | 17      |
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

|s.no|        signature         |                        coverpoints                         |                                                                                                             code                                                                                                              |
|---:|--------------------------|------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000F|- opcode : c.jal<br> - imm_val > 0<br> - imm_val == 512<br> |[0x80000106]:c.jal 512<br> [0x80000306]:xori ra, ra, 3<br> [0x8000030a]:auipc gp, 0<br> [0x8000030e]:addi gp, gp, 3570<br> [0x80000312]:andi gp, gp, 4092<br> [0x80000316]:sub ra, ra, gp<br>                                  |
|   2|[0x80003214]<br>0x00000107|- imm_val < 0<br> - imm_val == -258<br>                     |[0x80000420]:c.jal 3838<br> [0x8000031e]:xori ra, ra, 1<br> [0x80000322]:jal zero, 268<br> [0x8000042e]:auipc gp, 0<br> [0x80000432]:addi gp, gp, 3822<br> [0x80000436]:andi gp, gp, 4092<br> [0x8000043a]:sub ra, ra, gp<br>  |
|   3|[0x80003218]<br>0x0000000F|- imm_val == 16<br>                                         |[0x8000044a]:c.jal 16<br> [0x8000045a]:xori ra, ra, 3<br> [0x8000045e]:auipc gp, 0<br> [0x80000462]:addi gp, gp, 4066<br> [0x80000466]:andi gp, gp, 4092<br> [0x8000046a]:sub ra, ra, gp<br>                                   |
|   4|[0x8000321c]<br>0x0000000F|- imm_val == 32<br>                                         |[0x8000047a]:c.jal 32<br> [0x8000049a]:xori ra, ra, 3<br> [0x8000049e]:auipc gp, 0<br> [0x800004a2]:addi gp, gp, 4050<br> [0x800004a6]:andi gp, gp, 4092<br> [0x800004aa]:sub ra, ra, gp<br>                                   |
|   5|[0x80003220]<br>0x0000000F|- imm_val == 64<br>                                         |[0x800004ba]:c.jal 64<br> [0x800004fa]:xori ra, ra, 3<br> [0x800004fe]:auipc gp, 0<br> [0x80000502]:addi gp, gp, 4018<br> [0x80000506]:andi gp, gp, 4092<br> [0x8000050a]:sub ra, ra, gp<br>                                   |
|   6|[0x80003224]<br>0x0000000F|- imm_val == 128<br>                                        |[0x8000051a]:c.jal 128<br> [0x8000059a]:xori ra, ra, 3<br> [0x8000059e]:auipc gp, 0<br> [0x800005a2]:addi gp, gp, 3954<br> [0x800005a6]:andi gp, gp, 4092<br> [0x800005aa]:sub ra, ra, gp<br>                                  |
|   7|[0x80003228]<br>0x0000000F|- imm_val == 256<br>                                        |[0x800005ba]:c.jal 256<br> [0x800006ba]:xori ra, ra, 3<br> [0x800006be]:auipc gp, 0<br> [0x800006c2]:addi gp, gp, 3826<br> [0x800006c6]:andi gp, gp, 4092<br> [0x800006ca]:sub ra, ra, gp<br>                                  |
|   8|[0x8000322c]<br>0x0000000F|- imm_val == 1024<br>                                       |[0x800006da]:c.jal 1024<br> [0x80000ada]:xori ra, ra, 3<br> [0x80000ade]:auipc gp, 0<br> [0x80000ae2]:addi gp, gp, 3058<br> [0x80000ae6]:andi gp, gp, 4092<br> [0x80000aea]:sub ra, ra, gp<br>                                 |
|   9|[0x80003230]<br>0x0000000F|- imm_val == -10<br>                                        |[0x80000afc]:c.jal 4086<br> [0x80000af2]:xori ra, ra, 1<br> [0x80000af6]:jal zero, 20<br> [0x80000b0a]:auipc gp, 0<br> [0x80000b0e]:addi gp, gp, 4070<br> [0x80000b12]:andi gp, gp, 4092<br> [0x80000b16]:sub ra, ra, gp<br>   |
|  10|[0x80003234]<br>0x00000017|- imm_val == -18<br>                                        |[0x80000b30]:c.jal 4078<br> [0x80000b1e]:xori ra, ra, 1<br> [0x80000b22]:jal zero, 28<br> [0x80000b3e]:auipc gp, 0<br> [0x80000b42]:addi gp, gp, 4062<br> [0x80000b46]:andi gp, gp, 4092<br> [0x80000b4a]:sub ra, ra, gp<br>   |
|  11|[0x80003238]<br>0x00000407|- imm_val == -1026<br>                                      |[0x80000f54]:c.jal 3070<br> [0x80000b52]:xori ra, ra, 1<br> [0x80000b56]:jal zero, 1036<br> [0x80000f62]:auipc gp, 0<br> [0x80000f66]:addi gp, gp, 3054<br> [0x80000f6a]:andi gp, gp, 4092<br> [0x80000f6e]:sub ra, ra, gp<br> |
|  12|[0x8000323c]<br>0x0000055B|- imm_val == -1366<br>                                      |[0x800014cc]:c.jal 2730<br> [0x80000f76]:xori ra, ra, 1<br> [0x80000f7a]:jal zero, 1376<br> [0x800014da]:auipc gp, 0<br> [0x800014de]:addi gp, gp, 2714<br> [0x800014e2]:andi gp, gp, 4092<br> [0x800014e6]:sub ra, ra, gp<br> |
|  13|[0x80003240]<br>0x0000000F|- imm_val == 1364<br>                                       |[0x800014f6]:c.jal 1364<br> [0x80001a4a]:xori ra, ra, 3<br> [0x80001a4e]:auipc gp, 0<br> [0x80001a52]:addi gp, gp, 2718<br> [0x80001a56]:andi gp, gp, 4092<br> [0x80001a5a]:sub ra, ra, gp<br>                                 |
|  14|[0x80003244]<br>0x00000027|- imm_val == -34<br>                                        |[0x80001a84]:c.jal 4062<br> [0x80001a62]:xori ra, ra, 1<br> [0x80001a66]:jal zero, 44<br> [0x80001a92]:auipc gp, 0<br> [0x80001a96]:addi gp, gp, 4046<br> [0x80001a9a]:andi gp, gp, 4092<br> [0x80001a9e]:sub ra, ra, gp<br>   |
|  15|[0x80003248]<br>0x00000047|- imm_val == -66<br>                                        |[0x80001ae8]:c.jal 4030<br> [0x80001aa6]:xori ra, ra, 1<br> [0x80001aaa]:jal zero, 76<br> [0x80001af6]:auipc gp, 0<br> [0x80001afa]:addi gp, gp, 4014<br> [0x80001afe]:andi gp, gp, 4092<br> [0x80001b02]:sub ra, ra, gp<br>   |
|  16|[0x8000324c]<br>0x00000087|- imm_val == -130<br>                                       |[0x80001b8c]:c.jal 3966<br> [0x80001b0a]:xori ra, ra, 1<br> [0x80001b0e]:jal zero, 140<br> [0x80001b9a]:auipc gp, 0<br> [0x80001b9e]:addi gp, gp, 3950<br> [0x80001ba2]:andi gp, gp, 4092<br> [0x80001ba6]:sub ra, ra, gp<br>  |
|  17|[0x80003250]<br>0x00000207|- imm_val == -514<br>                                       |[0x80001db0]:c.jal 3582<br> [0x80001bae]:xori ra, ra, 1<br> [0x80001bb2]:jal zero, 524<br> [0x80001dbe]:auipc gp, 0<br> [0x80001dc2]:addi gp, gp, 3566<br> [0x80001dc6]:andi gp, gp, 4092<br> [0x80001dca]:sub ra, ra, gp<br>  |
