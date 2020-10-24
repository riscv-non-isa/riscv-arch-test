
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x800003e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410')]      |
| COV_LABELS                | ('clui',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Unique Coverpoints  | 50      |
| Total Signature Updates   | 62      |
| Ops w/o unique coverpoints | 1      |
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

|s.no|            signature             |                                        coverpoints                                        |                                                code                                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFFFFFEA000|- opcode : c.lui<br> - rd : x10<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 42<br> |[0x800002da]:c.lui a0, 42<br>                                                                       |
|   2|[0x80002218]<br>0x000000000000B000|- rd : x23<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x800002e0]:c.lui s7, 11<br>                                                                       |
|   3|[0x80002220]<br>0xFFFFFFFFFFFEA000|- rd : x27<br> - rs1_val < 0 and imm_val > 32<br>                                          |[0x800002e4]:c.lui s11, 63<br> [0x800002e6]:addiw s11, s11, 2047<br> [0x800002ea]:c.lui s11, 42<br> |
|   4|[0x80002228]<br>0x0000000000006000|- rd : x26<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x800002f6]:c.lui s10, 6<br>                                                                       |
|   5|[0x80002230]<br>0x0000000000001000|- rd : x24<br> - imm_val == 1<br>                                                          |[0x800002fe]:c.lui s8, 1<br>                                                                        |
|   6|[0x80002238]<br>0x0000000000002000|- rd : x17<br> - imm_val == 2<br>                                                          |[0x80000308]:c.lui a7, 2<br>                                                                        |
|   7|[0x80002240]<br>0x0000000000004000|- rd : x1<br> - imm_val == 4<br>                                                           |[0x8000030c]:c.lui ra, 1<br> [0x8000030e]:addiw ra, ra, 2048<br> [0x80000312]:c.lui ra, 4<br>       |
|   8|[0x80002248]<br>0x0000000000008000|- rd : x19<br> - imm_val == 8<br>                                                          |[0x8000031e]:c.lui s3, 8<br>                                                                        |
|   9|[0x80002250]<br>0x0000000000010000|- rd : x31<br> - imm_val == 16<br>                                                         |[0x80000328]:c.lui t6, 16<br>                                                                       |
|  10|[0x80002258]<br>0xFFFFFFFFFFFE0000|- rd : x13<br> - imm_val == 32<br>                                                         |[0x80000332]:c.lui a3, 32<br>                                                                       |
|  11|[0x80002260]<br>0x0000000000015000|- rd : x30<br> - imm_val == 21<br>                                                         |[0x80000336]:c.lui t5, 1<br> [0x80000338]:c.lui t5, 21<br>                                          |
|  12|[0x80002268]<br>0xFFFFFFFFFFFFE000|- rd : x14<br> - imm_val == 62<br>                                                         |[0x80000344]:c.lui a4, 62<br>                                                                       |
|  13|[0x80002270]<br>0xFFFFFFFFFFFFD000|- rd : x15<br> - imm_val == 61<br>                                                         |[0x8000034a]:c.lui a5, 61<br>                                                                       |
|  14|[0x80002278]<br>0xFFFFFFFFFFFFB000|- rd : x3<br> - imm_val == 59<br>                                                          |[0x80000354]:c.lui gp, 59<br>                                                                       |
|  15|[0x80002280]<br>0xFFFFFFFFFFFF7000|- rd : x28<br> - imm_val == 55<br>                                                         |[0x8000035c]:c.lui t3, 55<br>                                                                       |
|  16|[0x80002288]<br>0xFFFFFFFFFFFEF000|- rd : x18<br> - imm_val == 47<br>                                                         |[0x80000366]:c.lui s2, 47<br>                                                                       |
|  17|[0x80002290]<br>0x000000000001F000|- rd : x22<br> - imm_val == 31<br>                                                         |[0x80000370]:c.lui s6, 31<br>                                                                       |
|  18|[0x80002298]<br>0x0000000000010000|- rd : x9<br>                                                                              |[0x80000376]:c.lui s1, 16<br>                                                                       |
|  19|[0x800022a0]<br>0x0000000000010000|- rd : x5<br>                                                                              |[0x8000037c]:c.lui t0, 16<br>                                                                       |
|  20|[0x800022a8]<br>0x0000000000010000|- rd : x7<br>                                                                              |[0x80000382]:c.lui t2, 16<br>                                                                       |
|  21|[0x800022b0]<br>0x0000000000010000|- rd : x21<br>                                                                             |[0x80000388]:c.lui s5, 16<br>                                                                       |
|  22|[0x800022b8]<br>0x0000000000010000|- rd : x8<br>                                                                              |[0x8000038e]:c.lui fp, 16<br>                                                                       |
|  23|[0x800022c0]<br>0x0000000000010000|- rd : x16<br>                                                                             |[0x80000394]:c.lui a6, 16<br>                                                                       |
|  24|[0x800022c8]<br>0x0000000000010000|- rd : x4<br>                                                                              |[0x8000039a]:c.lui tp, 16<br>                                                                       |
|  25|[0x800022d0]<br>0x0000000000010000|- rd : x11<br>                                                                             |[0x800003a0]:c.lui a1, 16<br>                                                                       |
|  26|[0x800022d8]<br>0x0000000000010000|- rd : x29<br>                                                                             |[0x800003a6]:c.lui t4, 16<br>                                                                       |
|  27|[0x800022e0]<br>0x0000000000010000|- rd : x12<br>                                                                             |[0x800003ac]:c.lui a2, 16<br>                                                                       |
|  28|[0x800022e8]<br>0x0000000000010000|- rd : x20<br>                                                                             |[0x800003b2]:c.lui s4, 16<br>                                                                       |
|  29|[0x800022f0]<br>0x0000000000010000|- rd : x6<br>                                                                              |[0x800003c0]:c.lui t1, 16<br>                                                                       |
|  30|[0x800022f8]<br>0x0000000000000000|- rd : x0<br>                                                                              |[0x800003ca]:c.lui.hint.16<br>                                                                      |
|  31|[0x80002300]<br>0x0000000000010000|- rd : x25<br>                                                                             |[0x800003d2]:c.lui s9, 16<br>                                                                       |
