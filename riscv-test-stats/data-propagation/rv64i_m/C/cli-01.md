
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000370')]      |
| SIG_REGION                | [('0x80002210', '0x80002418')]      |
| COV_LABELS                | ('cli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Unique Coverpoints  | 50      |
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

|s.no|            signature             |                                     coverpoints                                     |            code             |
|---:|----------------------------------|-------------------------------------------------------------------------------------|-----------------------------|
|   1|[0x80002210]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x15<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x800002d6]:c.li a5, 32<br> |
|   2|[0x80002218]<br>0x0000000000000000|- rd : x25<br> - imm_val == 0<br>                                                    |[0x800002da]:c.li s9, 0<br>  |
|   3|[0x80002220]<br>0x000000000000001F|- rd : x13<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800002de]:c.li a3, 31<br> |
|   4|[0x80002228]<br>0x0000000000000001|- rd : x28<br> - imm_val == 1<br>                                                    |[0x800002e2]:c.li t3, 1<br>  |
|   5|[0x80002230]<br>0x0000000000000000|- rd : x0<br> - imm_val == 2<br>                                                     |[0x800002e6]:c.li.hint.2<br> |
|   6|[0x80002238]<br>0x0000000000000004|- rd : x10<br> - imm_val == 4<br>                                                    |[0x800002ea]:c.li a0, 4<br>  |
|   7|[0x80002240]<br>0x0000000000000008|- rd : x23<br> - imm_val == 8<br>                                                    |[0x800002ee]:c.li s7, 8<br>  |
|   8|[0x80002248]<br>0x0000000000000010|- rd : x21<br> - imm_val == 16<br>                                                   |[0x800002f2]:c.li s5, 16<br> |
|   9|[0x80002250]<br>0xFFFFFFFFFFFFFFEA|- rd : x18<br> - imm_val == -22<br>                                                  |[0x800002f6]:c.li s2, 42<br> |
|  10|[0x80002258]<br>0xFFFFFFFFFFFFFFFE|- rd : x6<br> - imm_val == -2<br>                                                    |[0x800002fa]:c.li t1, 62<br> |
|  11|[0x80002260]<br>0xFFFFFFFFFFFFFFFD|- rd : x3<br> - imm_val == -3<br>                                                    |[0x800002fe]:c.li gp, 61<br> |
|  12|[0x80002268]<br>0xFFFFFFFFFFFFFFFB|- rd : x9<br> - imm_val == -5<br>                                                    |[0x80000302]:c.li s1, 59<br> |
|  13|[0x80002270]<br>0xFFFFFFFFFFFFFFF7|- rd : x22<br> - imm_val == -9<br>                                                   |[0x80000306]:c.li s6, 55<br> |
|  14|[0x80002278]<br>0xFFFFFFFFFFFFFFEF|- rd : x12<br> - imm_val == -17<br>                                                  |[0x8000030a]:c.li a2, 47<br> |
|  15|[0x80002280]<br>0x0000000000000015|- rd : x11<br> - imm_val == 21<br>                                                   |[0x8000030e]:c.li a1, 21<br> |
|  16|[0x80002288]<br>0x0000000000000000|- rd : x27<br>                                                                       |[0x80000312]:c.li s11, 0<br> |
|  17|[0x80002290]<br>0x0000000000000000|- rd : x29<br>                                                                       |[0x80000316]:c.li t4, 0<br>  |
|  18|[0x80002298]<br>0x0000000000000000|- rd : x26<br>                                                                       |[0x8000031a]:c.li s10, 0<br> |
|  19|[0x800022a0]<br>0x0000000000000000|- rd : x30<br>                                                                       |[0x8000031e]:c.li t5, 0<br>  |
|  20|[0x800022a8]<br>0x0000000000000000|- rd : x31<br>                                                                       |[0x80000322]:c.li t6, 0<br>  |
|  21|[0x800022b0]<br>0x0000000000000000|- rd : x4<br>                                                                        |[0x80000326]:c.li tp, 0<br>  |
|  22|[0x800022b8]<br>0x0000000000000000|- rd : x7<br>                                                                        |[0x8000032a]:c.li t2, 0<br>  |
|  23|[0x800022c0]<br>0x0000000000000000|- rd : x17<br>                                                                       |[0x8000032e]:c.li a7, 0<br>  |
|  24|[0x800022c8]<br>0x0000000000000000|- rd : x20<br>                                                                       |[0x80000332]:c.li s4, 0<br>  |
|  25|[0x800022d0]<br>0x0000000000000000|- rd : x14<br>                                                                       |[0x80000336]:c.li a4, 0<br>  |
|  26|[0x800022d8]<br>0x0000000000000000|- rd : x1<br>                                                                        |[0x8000033a]:c.li ra, 0<br>  |
|  27|[0x800022e0]<br>0x0000000000000000|- rd : x5<br>                                                                        |[0x8000033e]:c.li t0, 0<br>  |
|  28|[0x800022e8]<br>0x0000000000000000|- rd : x19<br>                                                                       |[0x80000342]:c.li s3, 0<br>  |
|  29|[0x800022f0]<br>0x0000000000000000|- rd : x24<br>                                                                       |[0x80000346]:c.li s8, 0<br>  |
|  30|[0x800022f8]<br>0x0000000000000000|- rd : x16<br>                                                                       |[0x80000352]:c.li a6, 0<br>  |
|  31|[0x80002300]<br>0x0000000000000000|- rd : x8<br>                                                                        |[0x80000358]:c.li fp, 0<br>  |
|  32|[0x80002308]<br>0x0000000000000000|- rd : x2<br>                                                                        |[0x8000035e]:c.li sp, 0<br>  |
