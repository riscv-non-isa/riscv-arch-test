
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x800028d0')]      |
| SIG_REGION                | [('0x80004210', '0x80004730')]      |
| COV_LABELS                | ('cbeqz',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Unique Coverpoints  | 148      |
| Total Signature Updates   | 264      |
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

|s.no|            signature             |                                        coverpoints                                         |                                              code                                               |
|---:|----------------------------------|--------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000002|- opcode : c.beqz<br> - rs1 : x11<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16<br> |[0x800002e2]:c.beqz a1, 7<br> [0x800002e4]:addi sp, zero, 2<br> [0x800002e8]:jal zero, 10<br>    |
|   2|[0x80004218]<br>0x0000000000000002|- rs1 : x14<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -67108865<br>                |[0x80000306]:c.beqz a4, 9<br> [0x80000308]:addi sp, zero, 2<br> [0x8000030c]:jal zero, 14<br>    |
|   3|[0x80004220]<br>0x0000000000000003|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                       |[0x8000032a]:c.beqz a5, 5<br> [0x80000334]:c.li sp, 3<br>                                        |
|   4|[0x80004228]<br>0x0000000000000002|- rs1 : x9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 35184372088832<br>            |[0x8000034a]:c.beqz s1, 252<br> [0x8000034c]:addi sp, zero, 2<br> [0x80000350]:jal zero, 6<br>   |
|   5|[0x80004230]<br>0x0000000000000002|- rs1 : x13<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -129<br>                     |[0x80000370]:c.beqz a3, 248<br> [0x80000372]:addi sp, zero, 2<br> [0x80000376]:jal zero, 6<br>   |
|   6|[0x80004238]<br>0x0000000000000001|- rs1 : x10<br> - rs1_val == 0 and imm_val < 0<br>                                          |[0x80000430]:c.beqz a0, 170<br> [0x80000384]:addi sp, zero, 1<br> [0x80000388]:jal zero, 180<br> |
|   7|[0x80004240]<br>0x0000000000000002|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>       |[0x80000450]:c.beqz a2, 16<br> [0x80000452]:addi sp, zero, 2<br> [0x80000456]:jal zero, 28<br>   |
|   8|[0x80004248]<br>0x0000000000000002|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>        |[0x8000052c]:c.beqz s0, 170<br> [0x8000052e]:addi sp, zero, 2<br> [0x80000532]:jal zero, 6<br>   |
|   9|[0x80004250]<br>0x0000000000000002|- rs1_val == 1<br>                                                                          |[0x80000548]:c.beqz a0, 5<br> [0x8000054a]:addi sp, zero, 2<br> [0x8000054e]:jal zero, 6<br>     |
|  10|[0x80004258]<br>0x0000000000000002|- rs1_val == 2<br>                                                                          |[0x800005dc]:c.beqz a0, 192<br> [0x800005de]:addi sp, zero, 2<br> [0x800005e2]:jal zero, 6<br>   |
|  11|[0x80004260]<br>0x0000000000000002|- rs1_val == 4<br>                                                                          |[0x800005f8]:c.beqz a0, 9<br> [0x800005fa]:addi sp, zero, 2<br> [0x800005fe]:jal zero, 14<br>    |
|  12|[0x80004268]<br>0x0000000000000002|- rs1_val == 8<br>                                                                          |[0x8000061c]:c.beqz a0, 16<br> [0x8000061e]:addi sp, zero, 2<br> [0x80000622]:jal zero, 28<br>   |
|  13|[0x80004270]<br>0x0000000000000002|- rs1_val == 32<br>                                                                         |[0x80000650]:c.beqz a0, 5<br> [0x80000652]:addi sp, zero, 2<br> [0x80000656]:jal zero, 6<br>     |
|  14|[0x80004278]<br>0x0000000000000002|- rs1_val == 64<br>                                                                         |[0x800006a8]:c.beqz a0, 223<br> [0x800006aa]:addi sp, zero, 2<br> [0x800006ae]:jal zero, 6<br>   |
|  15|[0x80004280]<br>0x0000000000000002|- rs1_val == 128<br>                                                                        |[0x80000700]:c.beqz a0, 223<br> [0x80000702]:addi sp, zero, 2<br> [0x80000706]:jal zero, 6<br>   |
|  16|[0x80004288]<br>0x0000000000000002|- rs1_val == 256<br>                                                                        |[0x80000758]:c.beqz a0, 223<br> [0x8000075a]:addi sp, zero, 2<br> [0x8000075e]:jal zero, 6<br>   |
|  17|[0x80004290]<br>0x0000000000000002|- rs1_val == 512<br>                                                                        |[0x80000776]:c.beqz a0, 5<br> [0x80000778]:addi sp, zero, 2<br> [0x8000077c]:jal zero, 6<br>     |
|  18|[0x80004298]<br>0x0000000000000002|- rs1_val == 1024<br>                                                                       |[0x800007ae]:c.beqz a0, 239<br> [0x800007b0]:addi sp, zero, 2<br> [0x800007b4]:jal zero, 6<br>   |
|  19|[0x800042a0]<br>0x0000000000000002|- rs1_val == 2048<br>                                                                       |[0x800007d2]:c.beqz a0, 250<br> [0x800007d4]:addi sp, zero, 2<br> [0x800007d8]:jal zero, 6<br>   |
|  20|[0x800042a8]<br>0x0000000000000002|- rs1_val == 4096<br>                                                                       |[0x800007f6]:c.beqz a0, 248<br> [0x800007f8]:addi sp, zero, 2<br> [0x800007fc]:jal zero, 6<br>   |
|  21|[0x800042b0]<br>0x0000000000000002|- rs1_val == 8192<br>                                                                       |[0x80000812]:c.beqz a0, 5<br> [0x80000814]:addi sp, zero, 2<br> [0x80000818]:jal zero, 6<br>     |
|  22|[0x800042b8]<br>0x0000000000000002|- rs1_val == 16384<br>                                                                      |[0x8000082e]:c.beqz a0, 85<br> [0x80000830]:addi sp, zero, 2<br> [0x80000834]:jal zero, 166<br>  |
|  23|[0x800042c0]<br>0x0000000000000002|- rs1_val == 32768<br>                                                                      |[0x800008ea]:c.beqz a0, 85<br> [0x800008ec]:addi sp, zero, 2<br> [0x800008f0]:jal zero, 166<br>  |
|  24|[0x800042c8]<br>0x0000000000000002|- rs1_val == 65536<br>                                                                      |[0x800009c0]:c.beqz a0, 239<br> [0x800009c2]:addi sp, zero, 2<br> [0x800009c6]:jal zero, 6<br>   |
|  25|[0x800042d0]<br>0x0000000000000002|- rs1_val == 131072<br>                                                                     |[0x800009f8]:c.beqz a0, 239<br> [0x800009fa]:addi sp, zero, 2<br> [0x800009fe]:jal zero, 6<br>   |
|  26|[0x800042d8]<br>0x0000000000000002|- rs1_val == 262144<br>                                                                     |[0x80000a16]:c.beqz a0, 5<br> [0x80000a18]:addi sp, zero, 2<br> [0x80000a1c]:jal zero, 6<br>     |
|  27|[0x800042e0]<br>0x0000000000000002|- rs1_val == 524288<br>                                                                     |[0x80000a34]:c.beqz a0, 5<br> [0x80000a36]:addi sp, zero, 2<br> [0x80000a3a]:jal zero, 6<br>     |
|  28|[0x800042e8]<br>0x0000000000000002|- rs1_val == 1048576<br>                                                                    |[0x80000acc]:c.beqz a0, 191<br> [0x80000ace]:addi sp, zero, 2<br> [0x80000ad2]:jal zero, 6<br>   |
|  29|[0x800042f0]<br>0x0000000000000002|- rs1_val == 2097152<br>                                                                    |[0x80000aea]:c.beqz a0, 252<br> [0x80000aec]:addi sp, zero, 2<br> [0x80000af0]:jal zero, 6<br>   |
|  30|[0x800042f8]<br>0x0000000000000002|- rs1_val == 4194304<br>                                                                    |[0x80000b08]:c.beqz a0, 16<br> [0x80000b0a]:addi sp, zero, 2<br> [0x80000b0e]:jal zero, 28<br>   |
|  31|[0x80004300]<br>0x0000000000000002|- rs1_val == 8388608<br>                                                                    |[0x80000b3e]:c.beqz a0, 251<br> [0x80000b40]:addi sp, zero, 2<br> [0x80000b44]:jal zero, 6<br>   |
|  32|[0x80004308]<br>0x0000000000000002|- rs1_val == 16777216<br>                                                                   |[0x80000b5c]:c.beqz a0, 6<br> [0x80000b5e]:addi sp, zero, 2<br> [0x80000b62]:jal zero, 8<br>     |
|  33|[0x80004310]<br>0x0000000000000002|- rs1_val == 33554432<br>                                                                   |[0x80000bf6]:c.beqz a0, 191<br> [0x80000bf8]:addi sp, zero, 2<br> [0x80000bfc]:jal zero, 6<br>   |
|  34|[0x80004318]<br>0x0000000000000002|- rs1_val == 67108864<br>                                                                   |[0x80000c16]:c.beqz a0, 251<br> [0x80000c18]:addi sp, zero, 2<br> [0x80000c1c]:jal zero, 6<br>   |
|  35|[0x80004320]<br>0x0000000000000002|- rs1_val == 134217728<br>                                                                  |[0x80000c38]:c.beqz a0, 250<br> [0x80000c3a]:addi sp, zero, 2<br> [0x80000c3e]:jal zero, 6<br>   |
|  36|[0x80004328]<br>0x0000000000000002|- rs1_val == 268435456<br>                                                                  |[0x80000c58]:c.beqz a0, 251<br> [0x80000c5a]:addi sp, zero, 2<br> [0x80000c5e]:jal zero, 6<br>   |
|  37|[0x80004330]<br>0x0000000000000002|- rs1_val == 536870912<br>                                                                  |[0x80000cb0]:c.beqz a0, 223<br> [0x80000cb2]:addi sp, zero, 2<br> [0x80000cb6]:jal zero, 6<br>   |
|  38|[0x80004338]<br>0x0000000000000002|- rs1_val == 1073741824<br>                                                                 |[0x80000d48]:c.beqz a0, 191<br> [0x80000d4a]:addi sp, zero, 2<br> [0x80000d4e]:jal zero, 6<br>   |
|  39|[0x80004340]<br>0x0000000000000002|- rs1_val == 2147483648<br>                                                                 |[0x80000d68]:c.beqz a0, 252<br> [0x80000d6a]:addi sp, zero, 2<br> [0x80000d6e]:jal zero, 6<br>   |
|  40|[0x80004348]<br>0x0000000000000002|- rs1_val == 4294967296<br>                                                                 |[0x80000d8a]:c.beqz a0, 251<br> [0x80000d8c]:addi sp, zero, 2<br> [0x80000d90]:jal zero, 6<br>   |
|  41|[0x80004350]<br>0x0000000000000002|- rs1_val == 8589934592<br>                                                                 |[0x80000daa]:c.beqz a0, 5<br> [0x80000dac]:addi sp, zero, 2<br> [0x80000db0]:jal zero, 6<br>     |
|  42|[0x80004358]<br>0x0000000000000002|- rs1_val == 17179869184<br>                                                                |[0x80000dca]:c.beqz a0, 6<br> [0x80000dcc]:addi sp, zero, 2<br> [0x80000dd0]:jal zero, 8<br>     |
|  43|[0x80004360]<br>0x0000000000000002|- rs1_val == 34359738368<br>                                                                |[0x80000df2]:c.beqz a0, 249<br> [0x80000df4]:addi sp, zero, 2<br> [0x80000df8]:jal zero, 6<br>   |
|  44|[0x80004368]<br>0x0000000000000002|- rs1_val == 68719476736<br>                                                                |[0x80000e8c]:c.beqz a0, 191<br> [0x80000e8e]:addi sp, zero, 2<br> [0x80000e92]:jal zero, 6<br>   |
|  45|[0x80004370]<br>0x0000000000000002|- rs1_val == 137438953472<br>                                                               |[0x80000eac]:c.beqz a0, 252<br> [0x80000eae]:addi sp, zero, 2<br> [0x80000eb2]:jal zero, 6<br>   |
|  46|[0x80004378]<br>0x0000000000000002|- rs1_val == 274877906944<br>                                                               |[0x80000f70]:c.beqz a0, 170<br> [0x80000f72]:addi sp, zero, 2<br> [0x80000f76]:jal zero, 6<br>   |
|  47|[0x80004380]<br>0x0000000000000002|- rs1_val == 549755813888<br>                                                               |[0x8000100a]:c.beqz a0, 191<br> [0x8000100c]:addi sp, zero, 2<br> [0x80001010]:jal zero, 6<br>   |
|  48|[0x80004388]<br>0x0000000000000002|- rs1_val == 1099511627776<br>                                                              |[0x80001030]:c.beqz a0, 249<br> [0x80001032]:addi sp, zero, 2<br> [0x80001036]:jal zero, 6<br>   |
|  49|[0x80004390]<br>0x0000000000000002|- rs1_val == 2199023255552<br>                                                              |[0x8000105c]:c.beqz a0, 246<br> [0x8000105e]:addi sp, zero, 2<br> [0x80001062]:jal zero, 6<br>   |
|  50|[0x80004398]<br>0x0000000000000002|- rs1_val == 4398046511104<br>                                                              |[0x80001088]:c.beqz a0, 246<br> [0x8000108a]:addi sp, zero, 2<br> [0x8000108e]:jal zero, 6<br>   |
|  51|[0x800043a0]<br>0x0000000000000002|- rs1_val == 8796093022208<br>                                                              |[0x800010a8]:c.beqz a0, 5<br> [0x800010aa]:addi sp, zero, 2<br> [0x800010ae]:jal zero, 6<br>     |
|  52|[0x800043a8]<br>0x0000000000000002|- rs1_val == 17592186044416<br>                                                             |[0x800010ce]:c.beqz a0, 249<br> [0x800010d0]:addi sp, zero, 2<br> [0x800010d4]:jal zero, 6<br>   |
|  53|[0x800043b0]<br>0x0000000000000002|- rs1_val == 70368744177664<br>                                                             |[0x80001128]:c.beqz a0, 223<br> [0x8000112a]:addi sp, zero, 2<br> [0x8000112e]:jal zero, 6<br>   |
|  54|[0x800043b8]<br>0x0000000000000002|- rs1_val == 140737488355328<br>                                                            |[0x800011c2]:c.beqz a0, 191<br> [0x800011c4]:addi sp, zero, 2<br> [0x800011c8]:jal zero, 6<br>   |
|  55|[0x800043c0]<br>0x0000000000000002|- rs1_val == 281474976710656<br>                                                            |[0x800011e2]:c.beqz a0, 63<br> [0x800011e4]:addi sp, zero, 2<br> [0x800011e8]:jal zero, 122<br>  |
|  56|[0x800043c8]<br>0x0000000000000002|- rs1_val == 562949953421312<br>                                                            |[0x80001276]:c.beqz a0, 6<br> [0x80001278]:addi sp, zero, 2<br> [0x8000127c]:jal zero, 8<br>     |
|  57|[0x800043d0]<br>0x0000000000000002|- rs1_val == 1125899906842624<br>                                                           |[0x80001298]:c.beqz a0, 32<br> [0x8000129a]:addi sp, zero, 2<br> [0x8000129e]:jal zero, 60<br>   |
|  58|[0x800043d8]<br>0x0000000000000002|- rs1_val == 2251799813685248<br>                                                           |[0x800012ee]:c.beqz a0, 85<br> [0x800012f0]:addi sp, zero, 2<br> [0x800012f4]:jal zero, 166<br>  |
|  59|[0x800043e0]<br>0x0000000000000002|- rs1_val == 4503599627370496<br>                                                           |[0x800013ae]:c.beqz a0, 7<br> [0x800013b0]:addi sp, zero, 2<br> [0x800013b4]:jal zero, 10<br>    |
|  60|[0x800043e8]<br>0x0000000000000002|- rs1_val == 9007199254740992<br>                                                           |[0x800013d2]:c.beqz a0, 252<br> [0x800013d4]:addi sp, zero, 2<br> [0x800013d8]:jal zero, 6<br>   |
|  61|[0x800043f0]<br>0x0000000000000002|- rs1_val == 18014398509481984<br>                                                          |[0x800013f2]:c.beqz a0, 5<br> [0x800013f4]:addi sp, zero, 2<br> [0x800013f8]:jal zero, 6<br>     |
|  62|[0x800043f8]<br>0x0000000000000002|- rs1_val == 36028797018963968<br>                                                          |[0x80001412]:c.beqz a0, 5<br> [0x80001414]:addi sp, zero, 2<br> [0x80001418]:jal zero, 6<br>     |
|  63|[0x80004400]<br>0x0000000000000002|- rs1_val == 72057594037927936<br>                                                          |[0x80001432]:c.beqz a0, 5<br> [0x80001434]:addi sp, zero, 2<br> [0x80001438]:jal zero, 6<br>     |
|  64|[0x80004408]<br>0x0000000000000002|- rs1_val == 144115188075855872<br>                                                         |[0x80001452]:c.beqz a0, 8<br> [0x80001454]:addi sp, zero, 2<br> [0x80001458]:jal zero, 12<br>    |
|  65|[0x80004410]<br>0x0000000000000002|- rs1_val == 288230376151711744<br>                                                         |[0x80001478]:c.beqz a0, 16<br> [0x8000147a]:addi sp, zero, 2<br> [0x8000147e]:jal zero, 28<br>   |
|  66|[0x80004418]<br>0x0000000000000002|- rs1_val == 576460752303423488<br>                                                         |[0x800014c8]:c.beqz a0, 239<br> [0x800014ca]:addi sp, zero, 2<br> [0x800014ce]:jal zero, 6<br>   |
|  67|[0x80004420]<br>0x0000000000000002|- rs1_val == 1152921504606846976<br>                                                        |[0x800014e8]:c.beqz a0, 63<br> [0x800014ea]:addi sp, zero, 2<br> [0x800014ee]:jal zero, 122<br>  |
|  68|[0x80004428]<br>0x0000000000000002|- rs1_val == 2305843009213693952<br>                                                        |[0x800015f4]:c.beqz a0, 192<br> [0x800015f6]:addi sp, zero, 2<br> [0x800015fa]:jal zero, 6<br>   |
|  69|[0x80004430]<br>0x0000000000000002|- rs1_val == 4611686018427387904<br>                                                        |[0x8000161e]:c.beqz a0, 247<br> [0x80001620]:addi sp, zero, 2<br> [0x80001624]:jal zero, 6<br>   |
|  70|[0x80004438]<br>0x0000000000000002|- rs1_val == -36028797018963969<br>                                                         |[0x800016b8]:c.beqz a0, 192<br> [0x800016ba]:addi sp, zero, 2<br> [0x800016be]:jal zero, 6<br>   |
|  71|[0x80004440]<br>0x0000000000000002|- rs1_val == -72057594037927937<br>                                                         |[0x800016da]:c.beqz a0, 7<br> [0x800016dc]:addi sp, zero, 2<br> [0x800016e0]:jal zero, 10<br>    |
|  72|[0x80004448]<br>0x0000000000000002|- rs1_val == -144115188075855873<br>                                                        |[0x80001700]:c.beqz a0, 32<br> [0x80001702]:addi sp, zero, 2<br> [0x80001706]:jal zero, 60<br>   |
|  73|[0x80004450]<br>0x0000000000000002|- rs1_val == -288230376151711745<br>                                                        |[0x80001758]:c.beqz a0, 64<br> [0x8000175a]:addi sp, zero, 2<br> [0x8000175e]:jal zero, 124<br>  |
|  74|[0x80004458]<br>0x0000000000000002|- rs1_val == -576460752303423489<br>                                                        |[0x800017f0]:c.beqz a0, 63<br> [0x800017f2]:addi sp, zero, 2<br> [0x800017f6]:jal zero, 122<br>  |
|  75|[0x80004460]<br>0x0000000000000002|- rs1_val == -1152921504606846977<br>                                                       |[0x80001886]:c.beqz a0, 5<br> [0x80001888]:addi sp, zero, 2<br> [0x8000188c]:jal zero, 6<br>     |
|  76|[0x80004468]<br>0x0000000000000002|- rs1_val == -2305843009213693953<br>                                                       |[0x800018a8]:c.beqz a0, 64<br> [0x800018aa]:addi sp, zero, 2<br> [0x800018ae]:jal zero, 124<br>  |
|  77|[0x80004470]<br>0x0000000000000002|- rs1_val == -4611686018427387905<br>                                                       |[0x8000195a]:c.beqz a0, 239<br> [0x8000195c]:addi sp, zero, 2<br> [0x80001960]:jal zero, 6<br>   |
|  78|[0x80004478]<br>0x0000000000000002|- rs1_val == 6148914691236517205<br>                                                        |[0x80001994]:c.beqz a0, 249<br> [0x80001996]:addi sp, zero, 2<br> [0x8000199a]:jal zero, 6<br>   |
|  79|[0x80004480]<br>0x0000000000000002|- rs1_val == -6148914691236517206<br>                                                       |[0x800019d4]:c.beqz a0, 246<br> [0x800019d6]:addi sp, zero, 2<br> [0x800019da]:jal zero, 6<br>   |
|  80|[0x80004488]<br>0x0000000000000002|- rs1_val == -2<br>                                                                         |[0x80001a68]:c.beqz a0, 192<br> [0x80001a6a]:addi sp, zero, 2<br> [0x80001a6e]:jal zero, 6<br>   |
|  81|[0x80004490]<br>0x0000000000000002|- rs1_val == -3<br>                                                                         |[0x80001abe]:c.beqz a0, 223<br> [0x80001ac0]:addi sp, zero, 2<br> [0x80001ac4]:jal zero, 6<br>   |
|  82|[0x80004498]<br>0x0000000000000002|- rs1_val == -5<br>                                                                         |[0x80001ada]:c.beqz a0, 252<br> [0x80001adc]:addi sp, zero, 2<br> [0x80001ae0]:jal zero, 6<br>   |
|  83|[0x800044a0]<br>0x0000000000000002|- rs1_val == -9<br>                                                                         |[0x80001af8]:c.beqz a0, 251<br> [0x80001afa]:addi sp, zero, 2<br> [0x80001afe]:jal zero, 6<br>   |
|  84|[0x800044a8]<br>0x0000000000000002|- rs1_val == -17<br>                                                                        |[0x80001b14]:c.beqz a0, 252<br> [0x80001b16]:addi sp, zero, 2<br> [0x80001b1a]:jal zero, 6<br>   |
|  85|[0x800044b0]<br>0x0000000000000002|- rs1_val == -33<br>                                                                        |[0x80001b32]:c.beqz a0, 5<br> [0x80001b34]:addi sp, zero, 2<br> [0x80001b38]:jal zero, 6<br>     |
|  86|[0x800044b8]<br>0x0000000000000002|- rs1_val == -65<br>                                                                        |[0x80001b56]:c.beqz a0, 249<br> [0x80001b58]:addi sp, zero, 2<br> [0x80001b5c]:jal zero, 6<br>   |
|  87|[0x800044c0]<br>0x0000000000000002|- rs1_val == -257<br>                                                                       |[0x80001b74]:c.beqz a0, 16<br> [0x80001b76]:addi sp, zero, 2<br> [0x80001b7a]:jal zero, 28<br>   |
|  88|[0x800044c8]<br>0x0000000000000002|- rs1_val == -513<br>                                                                       |[0x80001ba8]:c.beqz a0, 32<br> [0x80001baa]:addi sp, zero, 2<br> [0x80001bae]:jal zero, 60<br>   |
|  89|[0x800044d0]<br>0x0000000000000002|- rs1_val == -1025<br>                                                                      |[0x80001bfe]:c.beqz a0, 251<br> [0x80001c00]:addi sp, zero, 2<br> [0x80001c04]:jal zero, 6<br>   |
|  90|[0x800044d8]<br>0x0000000000000002|- rs1_val == -2049<br>                                                                      |[0x80001c1e]:c.beqz a0, 252<br> [0x80001c20]:addi sp, zero, 2<br> [0x80001c24]:jal zero, 6<br>   |
|  91|[0x800044e0]<br>0x0000000000000002|- rs1_val == -4097<br>                                                                      |[0x80001c3c]:c.beqz a0, 252<br> [0x80001c3e]:addi sp, zero, 2<br> [0x80001c42]:jal zero, 6<br>   |
|  92|[0x800044e8]<br>0x0000000000000002|- rs1_val == -8193<br>                                                                      |[0x80001c94]:c.beqz a0, 223<br> [0x80001c96]:addi sp, zero, 2<br> [0x80001c9a]:jal zero, 6<br>   |
|  93|[0x800044f0]<br>0x0000000000000002|- rs1_val == -16385<br>                                                                     |[0x80001cb8]:c.beqz a0, 249<br> [0x80001cba]:addi sp, zero, 2<br> [0x80001cbe]:jal zero, 6<br>   |
|  94|[0x800044f8]<br>0x0000000000000002|- rs1_val == -32769<br>                                                                     |[0x80001cd6]:c.beqz a0, 252<br> [0x80001cd8]:addi sp, zero, 2<br> [0x80001cdc]:jal zero, 6<br>   |
|  95|[0x80004500]<br>0x0000000000000002|- rs1_val == -65537<br>                                                                     |[0x80001cf4]:c.beqz a0, 64<br> [0x80001cf6]:addi sp, zero, 2<br> [0x80001cfa]:jal zero, 124<br>  |
|  96|[0x80004508]<br>0x0000000000000002|- rs1_val == -131073<br>                                                                    |[0x80001d88]:c.beqz a0, 252<br> [0x80001d8a]:addi sp, zero, 2<br> [0x80001d8e]:jal zero, 6<br>   |
|  97|[0x80004510]<br>0x0000000000000002|- rs1_val == -262145<br>                                                                    |[0x80001da8]:c.beqz a0, 5<br> [0x80001daa]:addi sp, zero, 2<br> [0x80001dae]:jal zero, 6<br>     |
|  98|[0x80004518]<br>0x0000000000000002|- rs1_val == -524289<br>                                                                    |[0x80001dc8]:c.beqz a0, 6<br> [0x80001dca]:addi sp, zero, 2<br> [0x80001dce]:jal zero, 8<br>     |
|  99|[0x80004520]<br>0x0000000000000002|- rs1_val == -1048577<br>                                                                   |[0x80001df0]:c.beqz a0, 249<br> [0x80001df2]:addi sp, zero, 2<br> [0x80001df6]:jal zero, 6<br>   |
| 100|[0x80004528]<br>0x0000000000000002|- rs1_val == -2097153<br>                                                                   |[0x80001e10]:c.beqz a0, 5<br> [0x80001e12]:addi sp, zero, 2<br> [0x80001e16]:jal zero, 6<br>     |
| 101|[0x80004530]<br>0x0000000000000002|- rs1_val == -4194305<br>                                                                   |[0x80001e30]:c.beqz a0, 7<br> [0x80001e32]:addi sp, zero, 2<br> [0x80001e36]:jal zero, 10<br>    |
| 102|[0x80004538]<br>0x0000000000000002|- rs1_val == -8388609<br>                                                                   |[0x80001e5c]:c.beqz a0, 248<br> [0x80001e5e]:addi sp, zero, 2<br> [0x80001e62]:jal zero, 6<br>   |
| 103|[0x80004540]<br>0x0000000000000002|- rs1_val == -16777217<br>                                                                  |[0x80001e7c]:c.beqz a0, 16<br> [0x80001e7e]:addi sp, zero, 2<br> [0x80001e82]:jal zero, 28<br>   |
| 104|[0x80004548]<br>0x0000000000000002|- rs1_val == -33554433<br>                                                                  |[0x80001eb4]:c.beqz a0, 251<br> [0x80001eb6]:addi sp, zero, 2<br> [0x80001eba]:jal zero, 6<br>   |
| 105|[0x80004550]<br>0x0000000000000002|- rs1_val == -134217729<br>                                                                 |[0x80001f4c]:c.beqz a0, 192<br> [0x80001f4e]:addi sp, zero, 2<br> [0x80001f52]:jal zero, 6<br>   |
| 106|[0x80004558]<br>0x0000000000000002|- rs1_val == -268435457<br>                                                                 |[0x80001f6c]:c.beqz a0, 8<br> [0x80001f6e]:addi sp, zero, 2<br> [0x80001f72]:jal zero, 12<br>    |
| 107|[0x80004560]<br>0x0000000000000002|- rs1_val == -536870913<br>                                                                 |[0x80001f9c]:c.beqz a0, 247<br> [0x80001f9e]:addi sp, zero, 2<br> [0x80001fa2]:jal zero, 6<br>   |
| 108|[0x80004568]<br>0x0000000000000002|- rs1_val == -1073741825<br>                                                                |[0x80001fbc]:c.beqz a0, 85<br> [0x80001fbe]:addi sp, zero, 2<br> [0x80001fc2]:jal zero, 166<br>  |
| 109|[0x80004570]<br>0x0000000000000002|- rs1_val == -2147483649<br>                                                                |[0x8000207e]:c.beqz a0, 7<br> [0x80002080]:addi sp, zero, 2<br> [0x80002084]:jal zero, 10<br>    |
| 110|[0x80004578]<br>0x0000000000000002|- rs1_val == -4294967297<br>                                                                |[0x800020a6]:c.beqz a0, 251<br> [0x800020a8]:addi sp, zero, 2<br> [0x800020ac]:jal zero, 6<br>   |
| 111|[0x80004580]<br>0x0000000000000002|- rs1_val == -8589934593<br>                                                                |[0x8000216c]:c.beqz a0, 170<br> [0x8000216e]:addi sp, zero, 2<br> [0x80002172]:jal zero, 6<br>   |
| 112|[0x80004588]<br>0x0000000000000002|- rs1_val == -17179869185<br>                                                               |[0x80002192]:c.beqz a0, 250<br> [0x80002194]:addi sp, zero, 2<br> [0x80002198]:jal zero, 6<br>   |
| 113|[0x80004590]<br>0x0000000000000002|- rs1_val == -34359738369<br>                                                               |[0x800021b4]:c.beqz a0, 32<br> [0x800021b6]:addi sp, zero, 2<br> [0x800021ba]:jal zero, 60<br>   |
| 114|[0x80004598]<br>0x0000000000000002|- rs1_val == -68719476737<br>                                                               |[0x8000220c]:c.beqz a0, 32<br> [0x8000220e]:addi sp, zero, 2<br> [0x80002212]:jal zero, 60<br>   |
| 115|[0x800045a0]<br>0x0000000000000002|- rs1_val == -137438953473<br>                                                              |[0x8000229e]:c.beqz a0, 223<br> [0x800022a0]:addi sp, zero, 2<br> [0x800022a4]:jal zero, 6<br>   |
| 116|[0x800045a8]<br>0x0000000000000002|- rs1_val == -274877906945<br>                                                              |[0x800022fa]:c.beqz a0, 223<br> [0x800022fc]:addi sp, zero, 2<br> [0x80002300]:jal zero, 6<br>   |
| 117|[0x800045b0]<br>0x0000000000000002|- rs1_val == -549755813889<br>                                                              |[0x8000231c]:c.beqz a0, 5<br> [0x8000231e]:addi sp, zero, 2<br> [0x80002322]:jal zero, 6<br>     |
| 118|[0x800045b8]<br>0x0000000000000002|- rs1_val == -1099511627777<br>                                                             |[0x8000233e]:c.beqz a0, 63<br> [0x80002340]:addi sp, zero, 2<br> [0x80002344]:jal zero, 122<br>  |
| 119|[0x800045c0]<br>0x0000000000000002|- rs1_val == -2199023255553<br>                                                             |[0x800023d4]:c.beqz a0, 85<br> [0x800023d6]:addi sp, zero, 2<br> [0x800023da]:jal zero, 166<br>  |
| 120|[0x800045c8]<br>0x0000000000000002|- rs1_val == -4398046511105<br>                                                             |[0x80002496]:c.beqz a0, 16<br> [0x80002498]:addi sp, zero, 2<br> [0x8000249c]:jal zero, 28<br>   |
| 121|[0x800045d0]<br>0x0000000000000002|- rs1_val == -8796093022209<br>                                                             |[0x800024ce]:c.beqz a0, 6<br> [0x800024d0]:addi sp, zero, 2<br> [0x800024d4]:jal zero, 8<br>     |
| 122|[0x800045d8]<br>0x0000000000000002|- rs1_val == -17592186044417<br>                                                            |[0x800024f6]:c.beqz a0, 250<br> [0x800024f8]:addi sp, zero, 2<br> [0x800024fc]:jal zero, 6<br>   |
| 123|[0x800045e0]<br>0x0000000000000002|- rs1_val == -35184372088833<br>                                                            |[0x80002518]:c.beqz a0, 64<br> [0x8000251a]:addi sp, zero, 2<br> [0x8000251e]:jal zero, 124<br>  |
| 124|[0x800045e8]<br>0x0000000000000002|- rs1_val == -70368744177665<br>                                                            |[0x800025b0]:c.beqz a0, 16<br> [0x800025b2]:addi sp, zero, 2<br> [0x800025b6]:jal zero, 28<br>   |
| 125|[0x800045f0]<br>0x0000000000000002|- rs1_val == -140737488355329<br>                                                           |[0x800025e8]:c.beqz a0, 16<br> [0x800025ea]:addi sp, zero, 2<br> [0x800025ee]:jal zero, 28<br>   |
| 126|[0x800045f8]<br>0x0000000000000002|- rs1_val == -281474976710657<br>                                                           |[0x80002620]:c.beqz a0, 5<br> [0x80002622]:addi sp, zero, 2<br> [0x80002626]:jal zero, 6<br>     |
| 127|[0x80004600]<br>0x0000000000000002|- rs1_val == -562949953421313<br>                                                           |[0x80002646]:c.beqz a0, 250<br> [0x80002648]:addi sp, zero, 2<br> [0x8000264c]:jal zero, 6<br>   |
| 128|[0x80004608]<br>0x0000000000000002|- rs1_val == -1125899906842625<br>                                                          |[0x80002668]:c.beqz a0, 8<br> [0x8000266a]:addi sp, zero, 2<br> [0x8000266e]:jal zero, 12<br>    |
| 129|[0x80004610]<br>0x0000000000000002|- rs1_val == -2251799813685249<br>                                                          |[0x8000270a]:c.beqz a0, 191<br> [0x8000270c]:addi sp, zero, 2<br> [0x80002710]:jal zero, 6<br>   |
| 130|[0x80004618]<br>0x0000000000000002|- rs1_val == -4503599627370497<br>                                                          |[0x8000272c]:c.beqz a0, 5<br> [0x8000272e]:addi sp, zero, 2<br> [0x80002732]:jal zero, 6<br>     |
| 131|[0x80004620]<br>0x0000000000000002|- rs1_val == -9007199254740993<br>                                                          |[0x800027f2]:c.beqz a0, 170<br> [0x800027f4]:addi sp, zero, 2<br> [0x800027f8]:jal zero, 6<br>   |
| 132|[0x80004628]<br>0x0000000000000002|- rs1_val == -18014398509481985<br>                                                         |[0x80002814]:c.beqz a0, 85<br> [0x80002816]:addi sp, zero, 2<br> [0x8000281a]:jal zero, 166<br>  |
