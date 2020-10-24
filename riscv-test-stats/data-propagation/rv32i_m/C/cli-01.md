
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x800001c0')]      |
| SIG_REGION  | [('0x80002210', '0x80002314')]      |
| COV_LABELS  | ('cli',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |

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

|        signature         |                                                           coverpoints                                                           |                                                                          code                                                                          |
|--------------------------|---------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
|[0x80002210]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : 7<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br>                                               |[0x800000fc]:c.li t2, 32<br>                                                                                                                            |
|[0x80002214]<br>0x00000000|- rd : 18<br> - imm_val == 0<br>                                                                                                 |[0x80000102]:c.li s2, 0<br>                                                                                                                             |
|[0x80002220]<br>0x00000002|- rd : 14<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rd : 15<br> - imm_val == 1<br> - rd : 1<br> - imm_val == 2<br> |[0x80000108]:c.li a4, 31<br> [0x8000010a]:c.sw a0, a4, 8<br> [0x8000010c]:c.li a5, 1<br> [0x8000010e]:c.sw a0, a5, 12<br> [0x80000110]:c.li ra, 2<br>   |
|[0x80002224]<br>0x00000004|- rd : 28<br> - imm_val == 4<br>                                                                                                 |[0x80000116]:c.li t3, 4<br>                                                                                                                             |
|[0x80002230]<br>0xFFFFFFEA|- rd : 8<br> - imm_val == 8<br> - rd : 12<br> - imm_val == 16<br> - rd : 30<br> - imm_val == -22<br>                             |[0x8000011c]:c.li fp, 8<br> [0x8000011e]:c.sw a0, s0, 24<br> [0x80000120]:c.li a2, 16<br> [0x80000122]:c.sw a0, a2, 28<br> [0x80000124]:c.li t5, 42<br> |
|[0x80002234]<br>0xFFFFFFFE|- rd : 31<br> - imm_val == -2<br>                                                                                                |[0x8000012a]:c.li t6, 62<br>                                                                                                                            |
|[0x8000223c]<br>0xFFFFFFFB|- rd : 13<br> - imm_val == -3<br> - rd : 21<br> - imm_val == -5<br>                                                              |[0x80000130]:c.li a3, 61<br> [0x80000132]:c.sw a0, a3, 40<br> [0x80000134]:c.li s5, 59<br>                                                              |
|[0x80002240]<br>0xFFFFFFF7|- rd : 2<br> - imm_val == -9<br>                                                                                                 |[0x8000013a]:c.li sp, 55<br>                                                                                                                            |
|[0x80002244]<br>0xFFFFFFEF|- rd : 17<br> - imm_val == -17<br>                                                                                               |[0x80000140]:c.li a7, 47<br>                                                                                                                            |
|[0x80002248]<br>0x00000015|- rd : 22<br> - imm_val == 21<br>                                                                                                |[0x80000146]:c.li s6, 21<br>                                                                                                                            |
|[0x8000224c]<br>0x00000000|- rd : 5<br>                                                                                                                     |[0x8000014c]:c.li t0, 0<br>                                                                                                                             |
|[0x80002250]<br>0x00000000|- rd : 23<br>                                                                                                                    |[0x80000152]:c.li s7, 0<br>                                                                                                                             |
|[0x80002254]<br>0x00000000|- rd : 25<br>                                                                                                                    |[0x80000158]:c.li s9, 0<br>                                                                                                                             |
|[0x80002258]<br>0x00000000|- rd : 27<br>                                                                                                                    |[0x8000015e]:c.li s11, 0<br>                                                                                                                            |
|[0x8000225c]<br>0x00000000|- rd : 6<br>                                                                                                                     |[0x80000164]:c.li t1, 0<br>                                                                                                                             |
|[0x80002260]<br>0x00000000|- rd : 0<br>                                                                                                                     |[0x8000016a]:c.li.hint.0<br>                                                                                                                            |
|[0x80002268]<br>0x00000000|- rd : 9<br> - rd : 4<br>                                                                                                        |[0x80000170]:c.li s1, 0<br> [0x80000172]:c.sw a0, s1, 84<br> [0x80000174]:c.li tp, 0<br>                                                                |
|[0x8000226c]<br>0x00000000|- rd : 20<br>                                                                                                                    |[0x8000017a]:c.li s4, 0<br>                                                                                                                             |
|[0x80002270]<br>0x00000000|- rd : 16<br>                                                                                                                    |[0x80000180]:c.li a6, 0<br>                                                                                                                             |
|[0x80002274]<br>0x00000000|- rd : 24<br>                                                                                                                    |[0x80000186]:c.li s8, 0<br>                                                                                                                             |
|[0x80002278]<br>0x00000000|- rd : 19<br>                                                                                                                    |[0x8000018c]:c.li s3, 0<br>                                                                                                                             |
|[0x8000227c]<br>0x00000000|- rd : 26<br>                                                                                                                    |[0x80000192]:c.li s10, 0<br>                                                                                                                            |
|[0x80002280]<br>0x00000000|- rd : 3<br>                                                                                                                     |[0x80000198]:c.li gp, 0<br>                                                                                                                             |
|[0x80002284]<br>0x00000000|- rd : 29<br>                                                                                                                    |[0x800001a6]:c.li t4, 0<br>                                                                                                                             |
|[0x80002288]<br>0x00000000|- rd : 10<br>                                                                                                                    |[0x800001ac]:c.li a0, 0<br>                                                                                                                             |
|[0x8000228c]<br>0x00000000|- rd : 11<br>                                                                                                                    |[0x800001b2]:c.li a1, 0<br>                                                                                                                             |
