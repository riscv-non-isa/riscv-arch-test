
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000510')]      |
| SIG_REGION                | [('0x80002210', '0x80002410')]      |
| COV_LABELS                | ('clwsp',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clwsp-01.S/clwsp-01.S    |
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
|   1|[0x80002210]<br>0xFFFFFFFFBABECAFE|- opcode : c.lwsp<br> - rd : x20<br> - imm_val > 0<br> - imm_val == 188<br> |[0x800002de]:c.lwsp s4, 47<br> [0x800002e0]:c.nop<br> [0x800002e2]:c.nop<br>  |
|   2|[0x80002218]<br>0xFFFFFFFFBABECAFE|- rd : x25<br> - imm_val == 0<br>                                           |[0x800002f0]:c.lwsp s9, 0<br> [0x800002f2]:c.nop<br> [0x800002f4]:c.nop<br>   |
|   3|[0x80002220]<br>0xFFFFFFFFBABECAFE|- rd : x4<br> - imm_val == 4<br>                                            |[0x80000302]:c.lwsp tp, 1<br> [0x80000304]:c.nop<br> [0x80000306]:c.nop<br>   |
|   4|[0x80002228]<br>0xFFFFFFFFBABECAFE|- rd : x22<br> - imm_val == 8<br>                                           |[0x80000314]:c.lwsp s6, 2<br> [0x80000316]:c.nop<br> [0x80000318]:c.nop<br>   |
|   5|[0x80002230]<br>0xFFFFFFFFBABECAFE|- rd : x24<br> - imm_val == 16<br>                                          |[0x80000326]:c.lwsp s8, 4<br> [0x80000328]:c.nop<br> [0x8000032a]:c.nop<br>   |
|   6|[0x80002238]<br>0xFFFFFFFFBABECAFE|- rd : x3<br> - imm_val == 32<br>                                           |[0x80000338]:c.lwsp gp, 8<br> [0x8000033a]:c.nop<br> [0x8000033c]:c.nop<br>   |
|   7|[0x80002240]<br>0xFFFFFFFFBABECAFE|- rd : x7<br> - imm_val == 64<br>                                           |[0x8000034a]:c.lwsp t2, 16<br> [0x8000034c]:c.nop<br> [0x8000034e]:c.nop<br>  |
|   8|[0x80002248]<br>0xFFFFFFFFBABECAFE|- rd : x23<br> - imm_val == 128<br>                                         |[0x8000035c]:c.lwsp s7, 32<br> [0x8000035e]:c.nop<br> [0x80000360]:c.nop<br>  |
|   9|[0x80002250]<br>0xFFFFFFFFBABECAFE|- rd : x2<br> - imm_val == 248<br>                                          |[0x8000036e]:c.lwsp sp, 62<br> [0x80000370]:c.nop<br> [0x80000372]:c.nop<br>  |
|  10|[0x80002258]<br>0xFFFFFFFFBABECAFE|- rd : x11<br> - imm_val == 244<br>                                         |[0x80000380]:c.lwsp a1, 61<br> [0x80000382]:c.nop<br> [0x80000384]:c.nop<br>  |
|  11|[0x80002260]<br>0xFFFFFFFFBABECAFE|- rd : x16<br> - imm_val == 236<br>                                         |[0x80000390]:c.lwsp a6, 59<br> [0x80000392]:c.nop<br> [0x80000394]:c.nop<br>  |
|  12|[0x80002268]<br>0xFFFFFFFFBABECAFE|- rd : x5<br> - imm_val == 220<br>                                          |[0x800003a2]:c.lwsp t0, 55<br> [0x800003a4]:c.nop<br> [0x800003a6]:c.nop<br>  |
|  13|[0x80002270]<br>0xFFFFFFFFBABECAFE|- rd : x10<br> - imm_val == 124<br>                                         |[0x800003b4]:c.lwsp a0, 31<br> [0x800003b6]:c.nop<br> [0x800003b8]:c.nop<br>  |
|  14|[0x80002278]<br>0xFFFFFFFFBABECAFE|- rd : x9<br> - imm_val == 84<br>                                           |[0x800003c4]:c.lwsp s1, 21<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br>  |
|  15|[0x80002280]<br>0xFFFFFFFFBABECAFE|- rd : x26<br> - imm_val == 168<br>                                         |[0x800003d4]:c.lwsp s10, 42<br> [0x800003d6]:c.nop<br> [0x800003d8]:c.nop<br> |
|  16|[0x80002288]<br>0xFFFFFFFFBABECAFE|- rd : x17<br>                                                              |[0x800003e6]:c.lwsp a7, 0<br> [0x800003e8]:c.nop<br> [0x800003ea]:c.nop<br>   |
|  17|[0x80002290]<br>0xFFFFFFFFBABECAFE|- rd : x6<br>                                                               |[0x800003f8]:c.lwsp t1, 0<br> [0x800003fa]:c.nop<br> [0x800003fc]:c.nop<br>   |
|  18|[0x80002298]<br>0xFFFFFFFFBABECAFE|- rd : x28<br>                                                              |[0x8000040a]:c.lwsp t3, 0<br> [0x8000040c]:c.nop<br> [0x8000040e]:c.nop<br>   |
|  19|[0x800022a0]<br>0xFFFFFFFFBABECAFE|- rd : x18<br>                                                              |[0x8000041c]:c.lwsp s2, 0<br> [0x8000041e]:c.nop<br> [0x80000420]:c.nop<br>   |
|  20|[0x800022a8]<br>0xFFFFFFFFBABECAFE|- rd : x14<br>                                                              |[0x8000042e]:c.lwsp a4, 0<br> [0x80000430]:c.nop<br> [0x80000432]:c.nop<br>   |
|  21|[0x800022b0]<br>0xFFFFFFFFBABECAFE|- rd : x13<br>                                                              |[0x8000043e]:c.lwsp a3, 0<br> [0x80000440]:c.nop<br> [0x80000442]:c.nop<br>   |
|  22|[0x800022b8]<br>0xFFFFFFFFBABECAFE|- rd : x21<br>                                                              |[0x8000044e]:c.lwsp s5, 0<br> [0x80000450]:c.nop<br> [0x80000452]:c.nop<br>   |
|  23|[0x800022c0]<br>0xFFFFFFFFBABECAFE|- rd : x29<br>                                                              |[0x80000460]:c.lwsp t4, 0<br> [0x80000462]:c.nop<br> [0x80000464]:c.nop<br>   |
|  24|[0x800022c8]<br>0xFFFFFFFFBABECAFE|- rd : x1<br>                                                               |[0x80000472]:c.lwsp ra, 0<br> [0x80000474]:c.nop<br> [0x80000476]:c.nop<br>   |
|  25|[0x800022d0]<br>0xFFFFFFFFBABECAFE|- rd : x19<br>                                                              |[0x80000484]:c.lwsp s3, 0<br> [0x80000486]:c.nop<br> [0x80000488]:c.nop<br>   |
|  26|[0x800022d8]<br>0xFFFFFFFFBABECAFE|- rd : x31<br>                                                              |[0x80000496]:c.lwsp t6, 0<br> [0x80000498]:c.nop<br> [0x8000049a]:c.nop<br>   |
|  27|[0x800022e0]<br>0xFFFFFFFFBABECAFE|- rd : x15<br>                                                              |[0x800004a8]:c.lwsp a5, 0<br> [0x800004aa]:c.nop<br> [0x800004ac]:c.nop<br>   |
|  28|[0x800022e8]<br>0xFFFFFFFFBABECAFE|- rd : x12<br>                                                              |[0x800004b8]:c.lwsp a2, 0<br> [0x800004ba]:c.nop<br> [0x800004bc]:c.nop<br>   |
|  29|[0x800022f0]<br>0xFFFFFFFFBABECAFE|- rd : x8<br>                                                               |[0x800004d0]:c.lwsp fp, 0<br> [0x800004d2]:c.nop<br> [0x800004d4]:c.nop<br>   |
|  30|[0x800022f8]<br>0xFFFFFFFFBABECAFE|- rd : x30<br>                                                              |[0x800004e2]:c.lwsp t5, 0<br> [0x800004e4]:c.nop<br> [0x800004e6]:c.nop<br>   |
|  31|[0x80002300]<br>0xFFFFFFFFBABECAFE|- rd : x27<br>                                                              |[0x800004f4]:c.lwsp s11, 0<br> [0x800004f6]:c.nop<br> [0x800004f8]:c.nop<br>  |
