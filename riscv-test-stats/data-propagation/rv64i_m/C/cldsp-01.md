
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000520')]      |
| SIG_REGION                | [('0x80002210', '0x80002410')]      |
| COV_LABELS                | ('cldsp',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cldsp-01.S/cldsp-01.S    |
| Total Unique Coverpoints  | 48      |
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

|s.no|            signature             |                                coverpoints                                 |                                     code                                     |
|---:|----------------------------------|----------------------------------------------------------------------------|------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000BABECAFE|- opcode : c.ldsp<br> - rd : x14<br> - imm_val > 0<br> - imm_val == 168<br> |[0x800002de]:c.ldsp a4, 21<br> [0x800002e0]:c.nop<br> [0x800002e2]:c.nop<br>  |
|   2|[0x80002218]<br>0x00000000BABECAFE|- rd : x6<br> - imm_val == 0<br>                                            |[0x800002f0]:c.ldsp t1, 0<br> [0x800002f2]:c.nop<br> [0x800002f4]:c.nop<br>   |
|   3|[0x80002220]<br>0x00000000BABECAFE|- rd : x17<br> - imm_val == 8<br>                                           |[0x80000302]:c.ldsp a7, 1<br> [0x80000304]:c.nop<br> [0x80000306]:c.nop<br>   |
|   4|[0x80002228]<br>0x00000000BABECAFE|- rd : x28<br> - imm_val == 16<br>                                          |[0x80000314]:c.ldsp t3, 2<br> [0x80000316]:c.nop<br> [0x80000318]:c.nop<br>   |
|   5|[0x80002230]<br>0x00000000BABECAFE|- rd : x25<br> - imm_val == 32<br>                                          |[0x80000326]:c.ldsp s9, 4<br> [0x80000328]:c.nop<br> [0x8000032a]:c.nop<br>   |
|   6|[0x80002238]<br>0x00000000BABECAFE|- rd : x26<br> - imm_val == 64<br>                                          |[0x80000338]:c.ldsp s10, 8<br> [0x8000033a]:c.nop<br> [0x8000033c]:c.nop<br>  |
|   7|[0x80002240]<br>0x00000000BABECAFE|- rd : x10<br> - imm_val == 128<br>                                         |[0x8000034a]:c.ldsp a0, 16<br> [0x8000034c]:c.nop<br> [0x8000034e]:c.nop<br>  |
|   8|[0x80002248]<br>0x00000000BABECAFE|- rd : x31<br> - imm_val == 256<br>                                         |[0x8000035c]:c.ldsp t6, 32<br> [0x8000035e]:c.nop<br> [0x80000360]:c.nop<br>  |
|   9|[0x80002250]<br>0x00000000BABECAFE|- rd : x16<br> - imm_val == 496<br>                                         |[0x8000036e]:c.ldsp a6, 62<br> [0x80000370]:c.nop<br> [0x80000372]:c.nop<br>  |
|  10|[0x80002258]<br>0x00000000BABECAFE|- rd : x19<br> - imm_val == 488<br>                                         |[0x80000380]:c.ldsp s3, 61<br> [0x80000382]:c.nop<br> [0x80000384]:c.nop<br>  |
|  11|[0x80002260]<br>0x00000000BABECAFE|- rd : x23<br> - imm_val == 472<br>                                         |[0x80000392]:c.ldsp s7, 59<br> [0x80000394]:c.nop<br> [0x80000396]:c.nop<br>  |
|  12|[0x80002268]<br>0x00000000BABECAFE|- rd : x30<br> - imm_val == 440<br>                                         |[0x800003a4]:c.ldsp t5, 55<br> [0x800003a6]:c.nop<br> [0x800003a8]:c.nop<br>  |
|  13|[0x80002270]<br>0x00000000BABECAFE|- rd : x15<br> - imm_val == 376<br>                                         |[0x800003b6]:c.ldsp a5, 47<br> [0x800003b8]:c.nop<br> [0x800003ba]:c.nop<br>  |
|  14|[0x80002278]<br>0x00000000BABECAFE|- rd : x22<br> - imm_val == 248<br>                                         |[0x800003c8]:c.ldsp s6, 31<br> [0x800003ca]:c.nop<br> [0x800003cc]:c.nop<br>  |
|  15|[0x80002280]<br>0x00000000BABECAFE|- rd : x27<br> - imm_val == 336<br>                                         |[0x800003da]:c.ldsp s11, 42<br> [0x800003dc]:c.nop<br> [0x800003de]:c.nop<br> |
|  16|[0x80002288]<br>0x00000000BABECAFE|- rd : x5<br>                                                               |[0x800003ec]:c.ldsp t0, 0<br> [0x800003ee]:c.nop<br> [0x800003f0]:c.nop<br>   |
|  17|[0x80002290]<br>0x00000000BABECAFE|- rd : x3<br>                                                               |[0x800003fe]:c.ldsp gp, 0<br> [0x80000400]:c.nop<br> [0x80000402]:c.nop<br>   |
|  18|[0x80002298]<br>0x00000000BABECAFE|- rd : x18<br>                                                              |[0x80000410]:c.ldsp s2, 0<br> [0x80000412]:c.nop<br> [0x80000414]:c.nop<br>   |
|  19|[0x800022a0]<br>0x00000000BABECAFE|- rd : x8<br>                                                               |[0x80000422]:c.ldsp fp, 0<br> [0x80000424]:c.nop<br> [0x80000426]:c.nop<br>   |
|  20|[0x800022a8]<br>0x00000000BABECAFE|- rd : x29<br>                                                              |[0x80000434]:c.ldsp t4, 0<br> [0x80000436]:c.nop<br> [0x80000438]:c.nop<br>   |
|  21|[0x800022b0]<br>0x00000000BABECAFE|- rd : x2<br>                                                               |[0x80000446]:c.ldsp sp, 0<br> [0x80000448]:c.nop<br> [0x8000044a]:c.nop<br>   |
|  22|[0x800022b8]<br>0x00000000BABECAFE|- rd : x20<br>                                                              |[0x80000458]:c.ldsp s4, 0<br> [0x8000045a]:c.nop<br> [0x8000045c]:c.nop<br>   |
|  23|[0x800022c0]<br>0x00000000BABECAFE|- rd : x11<br>                                                              |[0x8000046a]:c.ldsp a1, 0<br> [0x8000046c]:c.nop<br> [0x8000046e]:c.nop<br>   |
|  24|[0x800022c8]<br>0x00000000BABECAFE|- rd : x1<br>                                                               |[0x8000047c]:c.ldsp ra, 0<br> [0x8000047e]:c.nop<br> [0x80000480]:c.nop<br>   |
|  25|[0x800022d0]<br>0x00000000BABECAFE|- rd : x12<br>                                                              |[0x8000048e]:c.ldsp a2, 0<br> [0x80000490]:c.nop<br> [0x80000492]:c.nop<br>   |
|  26|[0x800022d8]<br>0x00000000BABECAFE|- rd : x9<br>                                                               |[0x800004a0]:c.ldsp s1, 0<br> [0x800004a2]:c.nop<br> [0x800004a4]:c.nop<br>   |
|  27|[0x800022e0]<br>0x00000000BABECAFE|- rd : x21<br>                                                              |[0x800004b2]:c.ldsp s5, 0<br> [0x800004b4]:c.nop<br> [0x800004b6]:c.nop<br>   |
|  28|[0x800022e8]<br>0x00000000BABECAFE|- rd : x13<br>                                                              |[0x800004c4]:c.ldsp a3, 0<br> [0x800004c6]:c.nop<br> [0x800004c8]:c.nop<br>   |
|  29|[0x800022f0]<br>0x00000000BABECAFE|- rd : x7<br>                                                               |[0x800004de]:c.ldsp t2, 0<br> [0x800004e0]:c.nop<br> [0x800004e2]:c.nop<br>   |
|  30|[0x800022f8]<br>0x00000000BABECAFE|- rd : x4<br>                                                               |[0x800004f0]:c.ldsp tp, 0<br> [0x800004f2]:c.nop<br> [0x800004f4]:c.nop<br>   |
|  31|[0x80002300]<br>0x00000000BABECAFE|- rd : x24<br>                                                              |[0x80000502]:c.ldsp s8, 0<br> [0x80000504]:c.nop<br> [0x80000506]:c.nop<br>   |
