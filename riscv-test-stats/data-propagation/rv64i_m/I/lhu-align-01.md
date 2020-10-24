
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006d0')]      |
| SIG_REGION                | [('0x80002210', '0x80002420')]      |
| COV_LABELS                | ('lhu-align',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lhu-align-01.S/lhu-align-01.S    |
| Total Unique Coverpoints  | 77      |
| Total Signature Updates   | 64      |
| Ops w/o unique coverpoints | 2      |
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

|s.no|            signature             |                                                          coverpoints                                                          |                                                    code                                                    |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000000000CAFE|- opcode : lhu<br> - rs1 : x16<br> - rd : x15<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x800003a0]:lhu a5, 8(a6)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br>      |
|   2|[0x80002218]<br>0x000000000000CAFE|- rs1 : x9<br> - rd : x9<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                        |[0x800003b8]:lhu s1, 1365(s1)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br>   |
|   3|[0x80002220]<br>0x000000000000CAFE|- rs1 : x18<br> - rd : x17<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                                    |[0x800003d0]:lhu a7, 2730(s2)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br>   |
|   4|[0x80002228]<br>0x000000000000CAFE|- rs1 : x10<br> - rd : x19<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x800003e8]:lhu s3, 3071(a0)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br>   |
|   5|[0x80002230]<br>0x000000000000BABE|- rs1 : x28<br> - rd : x13<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000400]:lhu a3, 4088(t3)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br>   |
|   6|[0x80002238]<br>0x000000000000CAFE|- rs1 : x13<br> - rd : x18<br> - imm_val == 0<br>                                                                              |[0x80000418]:lhu s2, 0(a3)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br>      |
|   7|[0x80002240]<br>0x000000000000BABE|- rs1 : x30<br> - rd : x5<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                       |[0x80000430]:lhu t0, 1365(t5)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br>   |
|   8|[0x80002248]<br>0x000000000000BABE|- rs1 : x21<br> - rd : x4<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                       |[0x80000448]:lhu tp, 4094(s5)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br>   |
|   9|[0x80002250]<br>0x000000000000BABE|- rs1 : x22<br> - rd : x11<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                      |[0x80000460]:lhu a1, 3967(s6)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br>   |
|  10|[0x80002258]<br>0x000000000000CAFE|- rs1 : x5<br> - rd : x23<br>                                                                                                  |[0x80000478]:lhu s7, 2048(t0)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br>   |
|  11|[0x80002260]<br>0x000000000000CAFE|- rs1 : x31<br> - rd : x28<br>                                                                                                 |[0x80000490]:lhu t3, 2048(t6)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br>   |
|  12|[0x80002268]<br>0x000000000000CAFE|- rs1 : x11<br> - rd : x14<br>                                                                                                 |[0x800004a8]:lhu a4, 2048(a1)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br>   |
|  13|[0x80002270]<br>0x000000000000CAFE|- rs1 : x4<br> - rd : x20<br>                                                                                                  |[0x800004c0]:lhu s4, 2048(tp)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br>   |
|  14|[0x80002278]<br>0x000000000000CAFE|- rs1 : x29<br> - rd : x30<br>                                                                                                 |[0x800004d8]:lhu t5, 2048(t4)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br>   |
|  15|[0x80002280]<br>0x000000000000CAFE|- rs1 : x23<br> - rd : x26<br>                                                                                                 |[0x800004f0]:lhu s10, 2048(s7)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br>  |
|  16|[0x80002288]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br>                                                                                                   |[0x80000508]:lhu zero, 2048(ra)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> |
|  17|[0x80002290]<br>0x000000000000CAFE|- rs1 : x15<br> - rd : x6<br>                                                                                                  |[0x80000520]:lhu t1, 2048(a5)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br>   |
|  18|[0x80002298]<br>0x000000000000CAFE|- rs1 : x2<br> - rd : x31<br>                                                                                                  |[0x80000538]:lhu t6, 2048(sp)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br>   |
|  19|[0x800022a0]<br>0x000000000000CAFE|- rs1 : x19<br> - rd : x7<br>                                                                                                  |[0x80000550]:lhu t2, 2048(s3)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br>   |
|  20|[0x800022a8]<br>0x000000000000CAFE|- rs1 : x26<br> - rd : x24<br>                                                                                                 |[0x80000568]:lhu s8, 2048(s10)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br>  |
|  21|[0x800022b0]<br>0x000000000000CAFE|- rs1 : x25<br> - rd : x2<br>                                                                                                  |[0x80000580]:lhu sp, 2048(s9)<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:addi zero, zero, 0<br>   |
|  22|[0x800022b8]<br>0x000000000000CAFE|- rs1 : x24<br> - rd : x27<br>                                                                                                 |[0x80000598]:lhu s11, 2048(s8)<br> [0x8000059c]:addi zero, zero, 0<br> [0x800005a0]:addi zero, zero, 0<br>  |
|  23|[0x800022c0]<br>0x000000000000CAFE|- rs1 : x17<br> - rd : x3<br>                                                                                                  |[0x800005b8]:lhu gp, 2048(a7)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br>   |
|  24|[0x800022c8]<br>0x000000000000CAFE|- rs1 : x8<br> - rd : x21<br>                                                                                                  |[0x800005d0]:lhu s5, 2048(fp)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br>   |
|  25|[0x800022d0]<br>0x000000000000CAFE|- rs1 : x20<br> - rd : x8<br>                                                                                                  |[0x800005e8]:lhu fp, 2048(s4)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br>   |
|  26|[0x800022d8]<br>0x000000000000CAFE|- rs1 : x12<br> - rd : x1<br>                                                                                                  |[0x80000600]:lhu ra, 2048(a2)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br>   |
|  27|[0x800022e0]<br>0x000000000000CAFE|- rs1 : x3<br> - rd : x22<br>                                                                                                  |[0x80000618]:lhu s6, 2048(gp)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br>   |
|  28|[0x800022e8]<br>0x000000000000CAFE|- rs1 : x7<br> - rd : x12<br>                                                                                                  |[0x80000630]:lhu a2, 2048(t2)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br>   |
|  29|[0x800022f0]<br>0x000000000000CAFE|- rs1 : x27<br> - rd : x25<br>                                                                                                 |[0x80000648]:lhu s9, 2048(s11)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br>  |
|  30|[0x800022f8]<br>0x000000000000CAFE|- rs1 : x6<br> - rd : x29<br>                                                                                                  |[0x80000660]:lhu t4, 2048(t1)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br>   |
|  31|[0x80002300]<br>0x000000000000CAFE|- rs1 : x14<br> - rd : x10<br>                                                                                                 |[0x80000678]:lhu a0, 2048(a4)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br>   |
|  32|[0x80002308]<br>0x000000000000CAFE|- rd : x16<br>                                                                                                                 |[0x80000690]:lhu a6, 2048(s11)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br>  |
