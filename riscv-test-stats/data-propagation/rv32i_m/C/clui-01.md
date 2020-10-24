
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x80000200')]      |
| SIG_REGION                | [('0x80002210', '0x80002310')]      |
| COV_LABELS                | ('clui',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Unique Coverpoints  | 50      |
| Total Signature Updates   | 31      |
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

|s.no|        signature         |                                        coverpoints                                        |                                            code                                             |
|---:|--------------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFF7000|- opcode : c.lui<br> - rd : x26<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 55<br> |[0x80000104]:c.lui s10, 55<br>                                                               |
|   2|[0x80002214]<br>0x0001F000|- rd : x7<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 31<br>      |[0x8000010c]:c.lui t2, 31<br>                                                                |
|   3|[0x80002218]<br>0xFFFFE000|- rd : x14<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 62<br>                      |[0x80000116]:c.lui a4, 62<br>                                                                |
|   4|[0x8000221c]<br>0x0000B000|- rd : x1<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                          |[0x8000011e]:c.lui ra, 11<br>                                                                |
|   5|[0x80002220]<br>0x00001000|- rd : x24<br> - imm_val == 1<br>                                                          |[0x80000122]:c.lui s8, 1<br> [0x80000124]:addi s8, s8, 2048<br> [0x80000128]:c.lui s8, 1<br> |
|   6|[0x80002224]<br>0x00002000|- rd : x28<br> - imm_val == 2<br>                                                          |[0x80000130]:c.lui t3, 2<br>                                                                 |
|   7|[0x80002228]<br>0x00004000|- rd : x18<br> - imm_val == 4<br>                                                          |[0x80000136]:c.lui s2, 4<br>                                                                 |
|   8|[0x8000222c]<br>0x00008000|- rd : x11<br> - imm_val == 8<br>                                                          |[0x8000013a]:c.lui a1, 62<br> [0x8000013c]:c.addi a1, 63<br> [0x8000013e]:c.lui a1, 8<br>    |
|   9|[0x80002230]<br>0x00015000|- rd : x30<br> - imm_val == 21<br>                                                         |[0x80000146]:c.lui t5, 21<br>                                                                |
|  10|[0x80002234]<br>0xFFFEA000|- rd : x3<br> - imm_val == 42<br>                                                          |[0x8000014e]:c.lui gp, 42<br>                                                                |
|  11|[0x80002238]<br>0x00010000|- rd : x19<br> - imm_val == 16<br>                                                         |[0x80000152]:c.lui s3, 4<br> [0x80000154]:c.lui s3, 16<br>                                   |
|  12|[0x8000223c]<br>0xFFFE0000|- rd : x16<br> - imm_val == 32<br>                                                         |[0x8000015c]:c.lui a6, 32<br>                                                                |
|  13|[0x80002240]<br>0xFFFFD000|- rd : x4<br> - imm_val == 61<br>                                                          |[0x80000168]:c.lui tp, 61<br>                                                                |
|  14|[0x80002244]<br>0xFFFFB000|- rd : x22<br> - imm_val == 59<br>                                                         |[0x80000172]:c.lui s6, 59<br>                                                                |
|  15|[0x80002248]<br>0xFFFEF000|- rd : x6<br> - imm_val == 47<br>                                                          |[0x80000178]:c.lui t1, 47<br>                                                                |
|  16|[0x8000224c]<br>0x00000000|- rd : x0<br>                                                                              |[0x80000180]:c.lui.hint.16<br>                                                               |
|  17|[0x80002250]<br>0x00010000|- rd : x13<br>                                                                             |[0x80000186]:c.lui a3, 16<br>                                                                |
|  18|[0x80002254]<br>0x00010000|- rd : x5<br>                                                                              |[0x8000018c]:c.lui t0, 16<br>                                                                |
|  19|[0x80002258]<br>0x00010000|- rd : x31<br>                                                                             |[0x80000192]:c.lui t6, 16<br>                                                                |
|  20|[0x8000225c]<br>0x00010000|- rd : x8<br>                                                                              |[0x80000198]:c.lui fp, 16<br>                                                                |
|  21|[0x80002260]<br>0x00010000|- rd : x17<br>                                                                             |[0x8000019e]:c.lui a7, 16<br>                                                                |
|  22|[0x80002264]<br>0x00010000|- rd : x15<br>                                                                             |[0x800001a4]:c.lui a5, 16<br>                                                                |
|  23|[0x80002268]<br>0x00010000|- rd : x27<br>                                                                             |[0x800001aa]:c.lui s11, 16<br>                                                               |
|  24|[0x8000226c]<br>0x00010000|- rd : x12<br>                                                                             |[0x800001b0]:c.lui a2, 16<br>                                                                |
|  25|[0x80002270]<br>0x00010000|- rd : x29<br>                                                                             |[0x800001b6]:c.lui t4, 16<br>                                                                |
|  26|[0x80002274]<br>0x00010000|- rd : x21<br>                                                                             |[0x800001bc]:c.lui s5, 16<br>                                                                |
|  27|[0x80002278]<br>0x00010000|- rd : x10<br>                                                                             |[0x800001c2]:c.lui a0, 16<br>                                                                |
|  28|[0x8000227c]<br>0x00010000|- rd : x20<br>                                                                             |[0x800001c8]:c.lui s4, 16<br>                                                                |
|  29|[0x80002280]<br>0x00010000|- rd : x9<br>                                                                              |[0x800001ce]:c.lui s1, 16<br>                                                                |
|  30|[0x80002284]<br>0x00010000|- rd : x25<br>                                                                             |[0x800001dc]:c.lui s9, 16<br>                                                                |
|  31|[0x80002288]<br>0x00010000|- rd : x23<br>                                                                             |[0x800001e4]:c.lui s7, 16<br>                                                                |
