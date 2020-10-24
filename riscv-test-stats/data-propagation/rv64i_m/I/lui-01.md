
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800004b0')]      |
| SIG_REGION                | [('0x80002210', '0x80002418')]      |
| COV_LABELS                | ('lui',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Unique Coverpoints  | 36      |
| Total Signature Updates   | 64      |
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

|s.no|            signature             |                     coverpoints                     |              code               |
|---:|----------------------------------|-----------------------------------------------------|---------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : lui<br> - rd : x31<br> - imm_val == 0<br> |[0x80000398]:lui t6, 0<br>       |
|   2|[0x80002218]<br>0x0000000000006000|- rd : x1<br> - imm_val > 0<br>                      |[0x800003a0]:lui ra, 6<br>       |
|   3|[0x80002220]<br>0xFFFFFFFFFFFFF000|- rd : x10<br> - imm_val == ((2**20)-1)<br>          |[0x800003a8]:lui a0, 1048575<br> |
|   4|[0x80002228]<br>0x0000000000000000|- rd : x8<br>                                        |[0x800003b0]:lui fp, 0<br>       |
|   5|[0x80002230]<br>0x0000000000000000|- rd : x15<br>                                       |[0x800003b8]:lui a5, 0<br>       |
|   6|[0x80002238]<br>0x0000000000000000|- rd : x12<br>                                       |[0x800003c0]:lui a2, 0<br>       |
|   7|[0x80002240]<br>0x0000000000000000|- rd : x11<br>                                       |[0x800003c8]:lui a1, 0<br>       |
|   8|[0x80002248]<br>0x0000000000000000|- rd : x21<br>                                       |[0x800003d0]:lui s5, 0<br>       |
|   9|[0x80002250]<br>0x0000000000000000|- rd : x0<br>                                        |[0x800003d8]:lui zero, 0<br>     |
|  10|[0x80002258]<br>0x0000000000000000|- rd : x4<br>                                        |[0x800003e0]:lui tp, 0<br>       |
|  11|[0x80002260]<br>0x0000000000000000|- rd : x27<br>                                       |[0x800003e8]:lui s11, 0<br>      |
|  12|[0x80002268]<br>0x0000000000000000|- rd : x6<br>                                        |[0x800003f0]:lui t1, 0<br>       |
|  13|[0x80002270]<br>0x0000000000000000|- rd : x28<br>                                       |[0x800003f8]:lui t3, 0<br>       |
|  14|[0x80002278]<br>0x0000000000000000|- rd : x23<br>                                       |[0x80000400]:lui s7, 0<br>       |
|  15|[0x80002280]<br>0x0000000000000000|- rd : x2<br>                                        |[0x80000408]:lui sp, 0<br>       |
|  16|[0x80002288]<br>0x0000000000000000|- rd : x14<br>                                       |[0x80000410]:lui a4, 0<br>       |
|  17|[0x80002290]<br>0x0000000000000000|- rd : x20<br>                                       |[0x80000418]:lui s4, 0<br>       |
|  18|[0x80002298]<br>0x0000000000000000|- rd : x19<br>                                       |[0x80000420]:lui s3, 0<br>       |
|  19|[0x800022a0]<br>0x0000000000000000|- rd : x18<br>                                       |[0x80000428]:lui s2, 0<br>       |
|  20|[0x800022a8]<br>0x0000000000000000|- rd : x17<br>                                       |[0x80000430]:lui a7, 0<br>       |
|  21|[0x800022b0]<br>0x0000000000000000|- rd : x3<br>                                        |[0x80000438]:lui gp, 0<br>       |
|  22|[0x800022b8]<br>0x0000000000000000|- rd : x13<br>                                       |[0x80000440]:lui a3, 0<br>       |
|  23|[0x800022c0]<br>0x0000000000000000|- rd : x5<br>                                        |[0x80000448]:lui t0, 0<br>       |
|  24|[0x800022c8]<br>0x0000000000000000|- rd : x29<br>                                       |[0x80000450]:lui t4, 0<br>       |
|  25|[0x800022d0]<br>0x0000000000000000|- rd : x16<br>                                       |[0x80000458]:lui a6, 0<br>       |
|  26|[0x800022d8]<br>0x0000000000000000|- rd : x24<br>                                       |[0x80000460]:lui s8, 0<br>       |
|  27|[0x800022e0]<br>0x0000000000000000|- rd : x7<br>                                        |[0x80000468]:lui t2, 0<br>       |
|  28|[0x800022e8]<br>0x0000000000000000|- rd : x22<br>                                       |[0x80000470]:lui s6, 0<br>       |
|  29|[0x800022f0]<br>0x0000000000000000|- rd : x9<br>                                        |[0x80000478]:lui s1, 0<br>       |
|  30|[0x800022f8]<br>0x0000000000000000|- rd : x25<br>                                       |[0x80000488]:lui s9, 0<br>       |
|  31|[0x80002300]<br>0x0000000000000000|- rd : x30<br>                                       |[0x80000490]:lui t5, 0<br>       |
|  32|[0x80002308]<br>0x0000000000000000|- rd : x26<br>                                       |[0x80000498]:lui s10, 0<br>      |
