
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000640')]      |
| SIG_REGION                | [('0x80002210', '0x80002418')]      |
| COV_LABELS                | ('auipc',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/auipc-01.S/auipc-01.S    |
| Total Unique Coverpoints  | 36      |
| Total Signature Updates   | 60      |
| Ops w/o unique coverpoints | 3      |
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

|s.no|            signature             |                                             coverpoints                                              |                                                                                            code                                                                                             |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : auipc<br> - rd : x8<br> - imm_val > 0<br> - rd : x21<br> - imm_val == 0<br> - rd : x14<br> |[0x80000390]:auipc fp, 2<br> [0x80000394]:addi fp, fp, 3712<br> [0x80000398]:auipc s5, 0<br> [0x8000039c]:auipc a4, 0<br> [0x800003a0]:addi a4, a4, 4092<br> [0x800003a4]:sub s5, s5, a4<br> |
|   2|[0x80002218]<br>0xFFFFFFFFFFDFF000|- rd : x28<br>                                                                                        |[0x800003ac]:auipc t3, 1048063<br> [0x800003b0]:auipc a4, 0<br> [0x800003b4]:addi a4, a4, 4092<br> [0x800003b8]:sub t3, t3, a4<br>                                                           |
|   3|[0x80002220]<br>0xFFFFFFFFFFFFF000|- rd : x4<br> - imm_val == ((2**20)-1)<br>                                                            |[0x800003c0]:auipc tp, 1048575<br> [0x800003c4]:auipc a4, 0<br> [0x800003c8]:addi a4, a4, 4092<br> [0x800003cc]:sub tp, tp, a4<br>                                                           |
|   4|[0x80002228]<br>0x0000000000000000|- rd : x26<br>                                                                                        |[0x800003d4]:auipc s10, 0<br> [0x800003d8]:auipc a4, 0<br> [0x800003dc]:addi a4, a4, 4092<br> [0x800003e0]:sub s10, s10, a4<br>                                                              |
|   5|[0x80002230]<br>0x0000000000000000|- rd : x31<br>                                                                                        |[0x800003e8]:auipc t6, 0<br> [0x800003ec]:auipc a4, 0<br> [0x800003f0]:addi a4, a4, 4092<br> [0x800003f4]:sub t6, t6, a4<br>                                                                 |
|   6|[0x80002238]<br>0x0000000000000000|- rd : x2<br>                                                                                         |[0x800003fc]:auipc sp, 0<br> [0x80000400]:auipc a4, 0<br> [0x80000404]:addi a4, a4, 4092<br> [0x80000408]:sub sp, sp, a4<br>                                                                 |
|   7|[0x80002240]<br>0x0000000000000000|- rd : x11<br>                                                                                        |[0x80000410]:auipc a1, 0<br> [0x80000414]:auipc a4, 0<br> [0x80000418]:addi a4, a4, 4092<br> [0x8000041c]:sub a1, a1, a4<br>                                                                 |
|   8|[0x80002248]<br>0x0000000000000000|- rd : x18<br>                                                                                        |[0x80000424]:auipc s2, 0<br> [0x80000428]:auipc a4, 0<br> [0x8000042c]:addi a4, a4, 4092<br> [0x80000430]:sub s2, s2, a4<br>                                                                 |
|   9|[0x80002250]<br>0x0000000000000000|- rd : x3<br>                                                                                         |[0x80000438]:auipc gp, 0<br> [0x8000043c]:auipc a4, 0<br> [0x80000440]:addi a4, a4, 4092<br> [0x80000444]:sub gp, gp, a4<br>                                                                 |
|  10|[0x80002258]<br>0x0000000000000000|- rd : x1<br>                                                                                         |[0x8000044c]:auipc ra, 0<br> [0x80000450]:auipc a4, 0<br> [0x80000454]:addi a4, a4, 4092<br> [0x80000458]:sub ra, ra, a4<br>                                                                 |
|  11|[0x80002260]<br>0x0000000000000000|- rd : x15<br>                                                                                        |[0x80000460]:auipc a5, 0<br> [0x80000464]:auipc a4, 0<br> [0x80000468]:addi a4, a4, 4092<br> [0x8000046c]:sub a5, a5, a4<br>                                                                 |
|  12|[0x80002268]<br>0x0000000000000000|- rd : x5<br>                                                                                         |[0x80000474]:auipc t0, 0<br> [0x80000478]:auipc a4, 0<br> [0x8000047c]:addi a4, a4, 4092<br> [0x80000480]:sub t0, t0, a4<br>                                                                 |
|  13|[0x80002270]<br>0x0000000000000000|- rd : x9<br>                                                                                         |[0x80000488]:auipc s1, 0<br> [0x8000048c]:auipc a4, 0<br> [0x80000490]:addi a4, a4, 4092<br> [0x80000494]:sub s1, s1, a4<br>                                                                 |
|  14|[0x80002278]<br>0x0000000000000000|- rd : x25<br>                                                                                        |[0x8000049c]:auipc s9, 0<br> [0x800004a0]:auipc a4, 0<br> [0x800004a4]:addi a4, a4, 4092<br> [0x800004a8]:sub s9, s9, a4<br>                                                                 |
|  15|[0x80002280]<br>0x0000000000000000|- rd : x7<br>                                                                                         |[0x800004b0]:auipc t2, 0<br> [0x800004b4]:auipc a4, 0<br> [0x800004b8]:addi a4, a4, 4092<br> [0x800004bc]:sub t2, t2, a4<br>                                                                 |
|  16|[0x80002288]<br>0x0000000000000000|- rd : x22<br>                                                                                        |[0x800004c4]:auipc s6, 0<br> [0x800004c8]:auipc a4, 0<br> [0x800004cc]:addi a4, a4, 4092<br> [0x800004d0]:sub s6, s6, a4<br>                                                                 |
|  17|[0x80002290]<br>0x0000000000000000|- rd : x10<br>                                                                                        |[0x800004d8]:auipc a0, 0<br> [0x800004dc]:auipc a4, 0<br> [0x800004e0]:addi a4, a4, 4092<br> [0x800004e4]:sub a0, a0, a4<br>                                                                 |
|  18|[0x80002298]<br>0x0000000000000000|- rd : x17<br>                                                                                        |[0x800004ec]:auipc a7, 0<br> [0x800004f0]:auipc a4, 0<br> [0x800004f4]:addi a4, a4, 4092<br> [0x800004f8]:sub a7, a7, a4<br>                                                                 |
|  19|[0x800022a0]<br>0x0000000000000000|- rd : x20<br>                                                                                        |[0x80000500]:auipc s4, 0<br> [0x80000504]:auipc a4, 0<br> [0x80000508]:addi a4, a4, 4092<br> [0x8000050c]:sub s4, s4, a4<br>                                                                 |
|  20|[0x800022a8]<br>0x0000000000000000|- rd : x27<br>                                                                                        |[0x80000514]:auipc s11, 0<br> [0x80000518]:auipc a4, 0<br> [0x8000051c]:addi a4, a4, 4092<br> [0x80000520]:sub s11, s11, a4<br>                                                              |
|  21|[0x800022b0]<br>0x0000000000000000|- rd : x23<br>                                                                                        |[0x80000528]:auipc s7, 0<br> [0x8000052c]:auipc a4, 0<br> [0x80000530]:addi a4, a4, 4092<br> [0x80000534]:sub s7, s7, a4<br>                                                                 |
|  22|[0x800022b8]<br>0x0000000000000000|- rd : x6<br>                                                                                         |[0x8000053c]:auipc t1, 0<br> [0x80000540]:auipc a4, 0<br> [0x80000544]:addi a4, a4, 4092<br> [0x80000548]:sub t1, t1, a4<br>                                                                 |
|  23|[0x800022c0]<br>0x0000000000000000|- rd : x13<br>                                                                                        |[0x80000550]:auipc a3, 0<br> [0x80000554]:auipc a4, 0<br> [0x80000558]:addi a4, a4, 4092<br> [0x8000055c]:sub a3, a3, a4<br>                                                                 |
|  24|[0x800022c8]<br>0x0000000000000000|- rd : x29<br>                                                                                        |[0x80000564]:auipc t4, 0<br> [0x80000568]:auipc a4, 0<br> [0x8000056c]:addi a4, a4, 4092<br> [0x80000570]:sub t4, t4, a4<br>                                                                 |
|  25|[0x800022d0]<br>0x0000000000000000|- rd : x30<br>                                                                                        |[0x80000578]:auipc t5, 0<br> [0x8000057c]:auipc a4, 0<br> [0x80000580]:addi a4, a4, 4092<br> [0x80000584]:sub t5, t5, a4<br>                                                                 |
|  26|[0x800022d8]<br>0x0000000000000000|- rd : x12<br>                                                                                        |[0x8000058c]:auipc a2, 0<br> [0x80000590]:auipc a4, 0<br> [0x80000594]:addi a4, a4, 4092<br> [0x80000598]:sub a2, a2, a4<br>                                                                 |
|  27|[0x800022e0]<br>0x0000000000000000|- rd : x24<br>                                                                                        |[0x800005a0]:auipc s8, 0<br> [0x800005a4]:auipc a4, 0<br> [0x800005a8]:addi a4, a4, 4092<br> [0x800005ac]:sub s8, s8, a4<br>                                                                 |
|  28|[0x800022e8]<br>0x0000000000000000|- rd : x16<br>                                                                                        |[0x800005b4]:auipc a6, 0<br> [0x800005b8]:auipc sp, 0<br> [0x800005bc]:addi sp, sp, 4092<br> [0x800005c0]:sub a6, a6, sp<br>                                                                 |
|  29|[0x800022f0]<br>0x0000000000000000|- rd : x0<br>                                                                                         |[0x800005d0]:auipc zero, 0<br> [0x800005d4]:auipc sp, 0<br> [0x800005d8]:addi sp, sp, 4092<br> [0x800005dc]:sub zero, zero, sp<br>                                                           |
|  30|[0x800022f8]<br>0x0000000000000000|- rd : x19<br>                                                                                        |[0x800005e4]:auipc s3, 0<br> [0x800005e8]:auipc sp, 0<br> [0x800005ec]:addi sp, sp, 4092<br> [0x800005f0]:sub s3, s3, sp<br>                                                                 |
