
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800001c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002314')]      |
| COV_LABELS                | ('cli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Unique Coverpoints  | 50      |
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

|s.no|        signature         |                                    coverpoints                                     |            code             |
|---:|--------------------------|------------------------------------------------------------------------------------|-----------------------------|
|   1|[0x80002210]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x7<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x800000fc]:c.li t2, 32<br> |
|   2|[0x80002214]<br>0x00000000|- rd : x18<br> - imm_val == 0<br>                                                   |[0x80000102]:c.li s2, 0<br>  |
|   3|[0x80002218]<br>0x0000001F|- rd : x14<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                    |[0x80000108]:c.li a4, 31<br> |
|   4|[0x8000221c]<br>0x00000001|- rd : x15<br> - imm_val == 1<br>                                                   |[0x8000010c]:c.li a5, 1<br>  |
|   5|[0x80002220]<br>0x00000002|- rd : x1<br> - imm_val == 2<br>                                                    |[0x80000110]:c.li ra, 2<br>  |
|   6|[0x80002224]<br>0x00000004|- rd : x28<br> - imm_val == 4<br>                                                   |[0x80000116]:c.li t3, 4<br>  |
|   7|[0x80002228]<br>0x00000008|- rd : x8<br> - imm_val == 8<br>                                                    |[0x8000011c]:c.li fp, 8<br>  |
|   8|[0x8000222c]<br>0x00000010|- rd : x12<br> - imm_val == 16<br>                                                  |[0x80000120]:c.li a2, 16<br> |
|   9|[0x80002230]<br>0xFFFFFFEA|- rd : x30<br> - imm_val == -22<br>                                                 |[0x80000124]:c.li t5, 42<br> |
|  10|[0x80002234]<br>0xFFFFFFFE|- rd : x31<br> - imm_val == -2<br>                                                  |[0x8000012a]:c.li t6, 62<br> |
|  11|[0x80002238]<br>0xFFFFFFFD|- rd : x13<br> - imm_val == -3<br>                                                  |[0x80000130]:c.li a3, 61<br> |
|  12|[0x8000223c]<br>0xFFFFFFFB|- rd : x21<br> - imm_val == -5<br>                                                  |[0x80000134]:c.li s5, 59<br> |
|  13|[0x80002240]<br>0xFFFFFFF7|- rd : x2<br> - imm_val == -9<br>                                                   |[0x8000013a]:c.li sp, 55<br> |
|  14|[0x80002244]<br>0xFFFFFFEF|- rd : x17<br> - imm_val == -17<br>                                                 |[0x80000140]:c.li a7, 47<br> |
|  15|[0x80002248]<br>0x00000015|- rd : x22<br> - imm_val == 21<br>                                                  |[0x80000146]:c.li s6, 21<br> |
|  16|[0x8000224c]<br>0x00000000|- rd : x5<br>                                                                       |[0x8000014c]:c.li t0, 0<br>  |
|  17|[0x80002250]<br>0x00000000|- rd : x23<br>                                                                      |[0x80000152]:c.li s7, 0<br>  |
|  18|[0x80002254]<br>0x00000000|- rd : x25<br>                                                                      |[0x80000158]:c.li s9, 0<br>  |
|  19|[0x80002258]<br>0x00000000|- rd : x27<br>                                                                      |[0x8000015e]:c.li s11, 0<br> |
|  20|[0x8000225c]<br>0x00000000|- rd : x6<br>                                                                       |[0x80000164]:c.li t1, 0<br>  |
|  21|[0x80002260]<br>0x00000000|- rd : x0<br>                                                                       |[0x8000016a]:c.li.hint.0<br> |
|  22|[0x80002264]<br>0x00000000|- rd : x9<br>                                                                       |[0x80000170]:c.li s1, 0<br>  |
|  23|[0x80002268]<br>0x00000000|- rd : x4<br>                                                                       |[0x80000174]:c.li tp, 0<br>  |
|  24|[0x8000226c]<br>0x00000000|- rd : x20<br>                                                                      |[0x8000017a]:c.li s4, 0<br>  |
|  25|[0x80002270]<br>0x00000000|- rd : x16<br>                                                                      |[0x80000180]:c.li a6, 0<br>  |
|  26|[0x80002274]<br>0x00000000|- rd : x24<br>                                                                      |[0x80000186]:c.li s8, 0<br>  |
|  27|[0x80002278]<br>0x00000000|- rd : x19<br>                                                                      |[0x8000018c]:c.li s3, 0<br>  |
|  28|[0x8000227c]<br>0x00000000|- rd : x26<br>                                                                      |[0x80000192]:c.li s10, 0<br> |
|  29|[0x80002280]<br>0x00000000|- rd : x3<br>                                                                       |[0x80000198]:c.li gp, 0<br>  |
|  30|[0x80002284]<br>0x00000000|- rd : x29<br>                                                                      |[0x800001a6]:c.li t4, 0<br>  |
|  31|[0x80002288]<br>0x00000000|- rd : x10<br>                                                                      |[0x800001ac]:c.li a0, 0<br>  |
|  32|[0x8000228c]<br>0x00000000|- rd : x11<br>                                                                      |[0x800001b2]:c.li a1, 0<br>  |
