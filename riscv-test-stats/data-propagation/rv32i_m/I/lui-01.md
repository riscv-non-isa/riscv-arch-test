
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000210')]      |
| SIG_REGION                | [('0x80002210', '0x80002314')]      |
| COV_LABELS                | ('lui',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Unique Coverpoints  | 36      |
| Total Signature Updates   | 32      |
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

|s.no|        signature         |                     coverpoints                     |              code               |
|---:|--------------------------|-----------------------------------------------------|---------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : lui<br> - rd : x14<br> - imm_val == 0<br> |[0x80000100]:lui a4, 0<br>       |
|   2|[0x80002214]<br>0x00003000|- rd : x3<br> - imm_val > 0<br>                      |[0x80000108]:lui gp, 3<br>       |
|   3|[0x80002218]<br>0xFFFFF000|- rd : x13<br> - imm_val == ((2**20)-1)<br>          |[0x80000110]:lui a3, 1048575<br> |
|   4|[0x8000221c]<br>0x00000000|- rd : x4<br>                                        |[0x80000118]:lui tp, 0<br>       |
|   5|[0x80002220]<br>0x00000000|- rd : x23<br>                                       |[0x80000120]:lui s7, 0<br>       |
|   6|[0x80002224]<br>0x00000000|- rd : x21<br>                                       |[0x80000128]:lui s5, 0<br>       |
|   7|[0x80002228]<br>0x00000000|- rd : x9<br>                                        |[0x80000130]:lui s1, 0<br>       |
|   8|[0x8000222c]<br>0x00000000|- rd : x2<br>                                        |[0x80000138]:lui sp, 0<br>       |
|   9|[0x80002230]<br>0x00000000|- rd : x17<br>                                       |[0x80000140]:lui a7, 0<br>       |
|  10|[0x80002234]<br>0x00000000|- rd : x29<br>                                       |[0x80000148]:lui t4, 0<br>       |
|  11|[0x80002238]<br>0x00000000|- rd : x8<br>                                        |[0x80000150]:lui fp, 0<br>       |
|  12|[0x8000223c]<br>0x00000000|- rd : x25<br>                                       |[0x80000158]:lui s9, 0<br>       |
|  13|[0x80002240]<br>0x00000000|- rd : x30<br>                                       |[0x80000160]:lui t5, 0<br>       |
|  14|[0x80002244]<br>0x00000000|- rd : x1<br>                                        |[0x80000168]:lui ra, 0<br>       |
|  15|[0x80002248]<br>0x00000000|- rd : x24<br>                                       |[0x80000170]:lui s8, 0<br>       |
|  16|[0x8000224c]<br>0x00000000|- rd : x31<br>                                       |[0x80000178]:lui t6, 0<br>       |
|  17|[0x80002250]<br>0x00000000|- rd : x20<br>                                       |[0x80000180]:lui s4, 0<br>       |
|  18|[0x80002254]<br>0x00000000|- rd : x7<br>                                        |[0x80000188]:lui t2, 0<br>       |
|  19|[0x80002258]<br>0x00000000|- rd : x5<br>                                        |[0x80000190]:lui t0, 0<br>       |
|  20|[0x8000225c]<br>0x00000000|- rd : x22<br>                                       |[0x80000198]:lui s6, 0<br>       |
|  21|[0x80002260]<br>0x00000000|- rd : x19<br>                                       |[0x800001a0]:lui s3, 0<br>       |
|  22|[0x80002264]<br>0x00000000|- rd : x0<br>                                        |[0x800001a8]:lui zero, 0<br>     |
|  23|[0x80002268]<br>0x00000000|- rd : x6<br>                                        |[0x800001b0]:lui t1, 0<br>       |
|  24|[0x8000226c]<br>0x00000000|- rd : x16<br>                                       |[0x800001b8]:lui a6, 0<br>       |
|  25|[0x80002270]<br>0x00000000|- rd : x11<br>                                       |[0x800001c0]:lui a1, 0<br>       |
|  26|[0x80002274]<br>0x00000000|- rd : x28<br>                                       |[0x800001c8]:lui t3, 0<br>       |
|  27|[0x80002278]<br>0x00000000|- rd : x10<br>                                       |[0x800001d0]:lui a0, 0<br>       |
|  28|[0x8000227c]<br>0x00000000|- rd : x26<br>                                       |[0x800001d8]:lui s10, 0<br>      |
|  29|[0x80002280]<br>0x00000000|- rd : x27<br>                                       |[0x800001e0]:lui s11, 0<br>      |
|  30|[0x80002284]<br>0x00000000|- rd : x12<br>                                       |[0x800001f0]:lui a2, 0<br>       |
|  31|[0x80002288]<br>0x00000000|- rd : x18<br>                                       |[0x800001f8]:lui s2, 0<br>       |
|  32|[0x8000228c]<br>0x00000000|- rd : x15<br>                                       |[0x80000200]:lui a5, 0<br>       |
