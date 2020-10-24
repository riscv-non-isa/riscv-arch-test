
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION  | [('0x80002210', '0x800023b8')]      |
| COV_LABELS  | ('srli',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |

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

|        signature         |                                                                          coverpoints                                                                           |               code               |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|[0x80002210]<br>0x0000001F|- opcode : srli<br> - rs1 : 25<br> - rd : 3<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -4097<br> - imm_val == 27<br> |[0x80000108]:srli gp, s9, 27<br>  |
|[0x80002214]<br>0x00000040|- rs1 : 16<br> - rd : 16<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 131072<br>                                       |[0x80000114]:srli a6, a6, 11<br>  |
|[0x80002218]<br>0xFFFFFFBF|- rs1 : 21<br> - rd : 12<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -65<br>                                                                            |[0x80000120]:srli a2, s5, 0<br>   |
|[0x8000221c]<br>0x00000000|- rs1 : 0<br> - rd : 20<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                              |[0x80000130]:srli s4, zero, 0<br> |
|[0x80002220]<br>0x00000001|- rs1 : 20<br> - rd : 11<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2049<br>                                                                   |[0x80000140]:srli a1, s4, 31<br>  |
|[0x80002224]<br>0x00000000|- rs1 : 11<br> - rd : 28<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 1024<br>                                                                    |[0x8000014c]:srli t3, a1, 31<br>  |
|[0x80002228]<br>0x00000000|- rs1 : 5<br> - rd : 7<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                          |[0x80000158]:srli t2, t0, 5<br>   |
|[0x8000222c]<br>0x00200000|- rs1 : 31<br> - rd : 26<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 10<br>               |[0x80000164]:srli s10, t6, 10<br> |
|[0x80002230]<br>0x00000000|- rs1 : 9<br> - rd : 0<br>                                                                                                                                      |[0x80000170]:srli zero, s1, 9<br> |
|[0x80002234]<br>0x00000000|- rs1 : 17<br> - rd : 14<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 21<br>                                      |[0x8000017c]:srli a4, a7, 21<br>  |
|[0x80002238]<br>0x10000000|- rs1 : 27<br> - rd : 5<br> - rs1_val == 536870912<br> - imm_val == 1<br>                                                                                       |[0x80000188]:srli t0, s11, 1<br>  |
|[0x8000223c]<br>0x00020000|- rs1 : 23<br> - rd : 19<br> - rs1_val == 524288<br> - imm_val == 2<br>                                                                                         |[0x80000194]:srli s3, s7, 2<br>   |
|[0x80002240]<br>0x00008000|- rs1 : 29<br> - rd : 18<br> - imm_val == 4<br>                                                                                                                 |[0x800001a0]:srli s2, t4, 4<br>   |
|[0x80002244]<br>0x00BFFFFF|- rs1 : 28<br> - rd : 1<br> - rs1_val == -1073741825<br> - imm_val == 8<br>                                                                                     |[0x800001b0]:srli ra, t3, 8<br>   |
|[0x80002248]<br>0x0000FFFF|- rs1 : 4<br> - rd : 9<br> - rs1_val == -32769<br> - imm_val == 16<br>                                                                                          |[0x800001c0]:srli s1, tp, 16<br>  |
|[0x8000224c]<br>0x00000003|- rs1 : 19<br> - rd : 2<br> - rs1_val == -262145<br> - imm_val == 30<br>                                                                                        |[0x800001d0]:srli sp, s3, 30<br>  |
|[0x80002250]<br>0x00000007|- rs1 : 18<br> - rd : 15<br> - imm_val == 29<br>                                                                                                                |[0x800001dc]:srli a5, s2, 29<br>  |
|[0x80002254]<br>0x00000000|- rs1 : 6<br> - rd : 22<br> - rs1_val == 8<br> - imm_val == 23<br>                                                                                              |[0x800001e8]:srli s6, t1, 23<br>  |
|[0x80002258]<br>0x00000000|- rs1 : 3<br> - rd : 4<br> - imm_val == 15<br>                                                                                                                  |[0x800001f4]:srli tp, gp, 15<br>  |
|[0x8000225c]<br>0x00000000|- rs1 : 14<br> - rd : 8<br> - rs1_val == 2<br>                                                                                                                  |[0x80000200]:srli fp, a4, 17<br>  |
|[0x80002260]<br>0x00000000|- rs1 : 24<br> - rd : 6<br> - rs1_val == 4<br>                                                                                                                  |[0x8000020c]:srli t1, s8, 3<br>   |
|[0x80002264]<br>0x00000002|- rs1 : 22<br> - rd : 30<br> - rs1_val == 16<br>                                                                                                                |[0x80000220]:srli t5, s6, 3<br>   |
|[0x80002268]<br>0x00000020|- rs1 : 8<br> - rd : 27<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 32<br>                                                                              |[0x8000022c]:srli s11, fp, 0<br>  |
|[0x8000226c]<br>0x00000000|- rs1 : 12<br> - rd : 31<br> - rs1_val == 64<br>                                                                                                                |[0x80000238]:srli t6, a2, 8<br>   |
|[0x80002270]<br>0x00000010|- rs1 : 26<br> - rd : 24<br> - rs1_val == 128<br>                                                                                                               |[0x80000244]:srli s8, s10, 3<br>  |
|[0x80002274]<br>0x00000000|- rs1 : 7<br> - rd : 10<br> - rs1_val == 256<br>                                                                                                                |[0x80000250]:srli a0, t2, 30<br>  |
|[0x80002278]<br>0x00000002|- rs1 : 15<br> - rd : 13<br> - rs1_val == 512<br>                                                                                                               |[0x8000025c]:srli a3, a5, 8<br>   |
|[0x8000227c]<br>0x00000200|- rs1 : 1<br> - rd : 17<br> - rs1_val == 2048<br>                                                                                                               |[0x8000026c]:srli a7, ra, 2<br>   |
|[0x80002280]<br>0x00000000|- rs1 : 30<br> - rd : 29<br> - rs1_val == 4096<br>                                                                                                              |[0x80000278]:srli t4, t5, 23<br>  |
|[0x80002284]<br>0x00000800|- rs1 : 2<br> - rd : 25<br> - rs1_val == 8192<br>                                                                                                               |[0x80000284]:srli s9, sp, 2<br>   |
|[0x80002288]<br>0x00004000|- rs1 : 10<br> - rd : 23<br> - rs1_val == 16384<br>                                                                                                             |[0x80000290]:srli s7, a0, 0<br>   |
|[0x8000228c]<br>0x00002000|- rs1 : 13<br> - rd : 21<br> - rs1_val == 32768<br>                                                                                                             |[0x8000029c]:srli s5, a3, 2<br>   |
|[0x80002290]<br>0x00000200|- rs1_val == 65536<br>                                                                                                                                          |[0x800002a8]:srli a1, a0, 7<br>   |
|[0x80002294]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                         |[0x800002b4]:srli a1, a0, 29<br>  |
|[0x80002298]<br>0x00000200|- rs1_val == 1048576<br>                                                                                                                                        |[0x800002c0]:srli a1, a0, 11<br>  |
|[0x8000229c]<br>0x00000400|- rs1_val == 2097152<br>                                                                                                                                        |[0x800002cc]:srli a1, a0, 11<br>  |
|[0x800022a0]<br>0x00000010|- rs1_val == 4194304<br>                                                                                                                                        |[0x800002d8]:srli a1, a0, 18<br>  |
|[0x800022a4]<br>0x00000020|- rs1_val == 8388608<br>                                                                                                                                        |[0x800002e4]:srli a1, a0, 18<br>  |
|[0x800022a8]<br>0x00002000|- rs1_val == 16777216<br>                                                                                                                                       |[0x800002f0]:srli a1, a0, 11<br>  |
|[0x800022ac]<br>0x00000040|- rs1_val == 33554432<br>                                                                                                                                       |[0x800002fc]:srli a1, a0, 19<br>  |
|[0x800022b0]<br>0x01FFFFFB|- rs1_val == -513<br>                                                                                                                                           |[0x80000308]:srli a1, a0, 7<br>   |
|[0x800022b4]<br>0x0FFFFFBF|- rs1_val == -1025<br>                                                                                                                                          |[0x80000314]:srli a1, a0, 4<br>   |
|[0x800022b8]<br>0x1FFFFBFF|- rs1_val == -8193<br>                                                                                                                                          |[0x80000324]:srli a1, a0, 3<br>   |
|[0x800022bc]<br>0x000FFFFB|- rs1_val == -16385<br>                                                                                                                                         |[0x80000334]:srli a1, a0, 12<br>  |
|[0x800022c0]<br>0x00000003|- rs1_val == -65537<br>                                                                                                                                         |[0x80000344]:srli a1, a0, 30<br>  |
|[0x800022c4]<br>0x0FFFDFFF|- rs1_val == -131073<br>                                                                                                                                        |[0x80000354]:srli a1, a0, 4<br>   |
|[0x800022c8]<br>0x00001FFE|- rs1_val == -524289<br>                                                                                                                                        |[0x80000364]:srli a1, a0, 19<br>  |
|[0x800022cc]<br>0x00FFEFFF|- rs1_val == -1048577<br>                                                                                                                                       |[0x80000374]:srli a1, a0, 8<br>   |
|[0x800022d0]<br>0x00007FEF|- rs1_val == -2097153<br>                                                                                                                                       |[0x80000384]:srli a1, a0, 17<br>  |
|[0x800022d4]<br>0x00007FDF|- rs1_val == -4194305<br>                                                                                                                                       |[0x80000394]:srli a1, a0, 17<br>  |
|[0x800022d8]<br>0x0000FF7F|- rs1_val == -8388609<br>                                                                                                                                       |[0x800003a4]:srli a1, a0, 16<br>  |
|[0x800022dc]<br>0x00003FBF|- rs1_val == -16777217<br>                                                                                                                                      |[0x800003b4]:srli a1, a0, 18<br>  |
|[0x800022e0]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                      |[0x800003c4]:srli a1, a0, 31<br>  |
|[0x800022e4]<br>0x003EFFFF|- rs1_val == -67108865<br>                                                                                                                                      |[0x800003d4]:srli a1, a0, 10<br>  |
|[0x800022e8]<br>0x0007BFFF|- rs1_val == -134217729<br>                                                                                                                                     |[0x800003e4]:srli a1, a0, 13<br>  |
|[0x800022ec]<br>0x0003BFFF|- rs1_val == -268435457<br>                                                                                                                                     |[0x800003f4]:srli a1, a0, 14<br>  |
|[0x800022f0]<br>0x00FFFFFF|- rs1_val == -9<br>                                                                                                                                             |[0x80000400]:srli a1, a0, 8<br>   |
|[0x800022f4]<br>0x01000000|- rs1_val == 67108864<br>                                                                                                                                       |[0x8000040c]:srli a1, a0, 2<br>   |
|[0x800022f8]<br>0x00400000|- rs1_val == 134217728<br>                                                                                                                                      |[0x80000418]:srli a1, a0, 5<br>   |
|[0x800022fc]<br>0x00000400|- rs1_val == 268435456<br>                                                                                                                                      |[0x80000424]:srli a1, a0, 18<br>  |
|[0x80002300]<br>0x0DFFFFFF|- rs1_val == -536870913<br>                                                                                                                                     |[0x80000434]:srli a1, a0, 4<br>   |
|[0x80002304]<br>0x00001000|- rs1_val == 1073741824<br>                                                                                                                                     |[0x80000440]:srli a1, a0, 18<br>  |
|[0x80002308]<br>0x00000007|- rs1_val == -2<br>                                                                                                                                             |[0x8000044c]:srli a1, a0, 29<br>  |
|[0x8000230c]<br>0x15555555|- rs1_val == 1431655765<br>                                                                                                                                     |[0x8000045c]:srli a1, a0, 2<br>   |
|[0x80002310]<br>0x002AAAAA|- rs1_val == -1431655766<br>                                                                                                                                    |[0x8000046c]:srli a1, a0, 10<br>  |
|[0x80002314]<br>0x000007FF|- rs1_val == -3<br>                                                                                                                                             |[0x80000478]:srli a1, a0, 21<br>  |
|[0x80002318]<br>0x0000001F|- rs1_val == -5<br>                                                                                                                                             |[0x80000484]:srli a1, a0, 27<br>  |
|[0x8000231c]<br>0x0000001F|- rs1_val == -17<br>                                                                                                                                            |[0x80000490]:srli a1, a0, 27<br>  |
|[0x80002320]<br>0x3FFFFFF7|- rs1_val == -33<br>                                                                                                                                            |[0x8000049c]:srli a1, a0, 2<br>   |
|[0x80002324]<br>0x00007FFF|- rs1_val == -129<br>                                                                                                                                           |[0x800004a8]:srli a1, a0, 17<br>  |
|[0x80002328]<br>0x00007FFF|- rs1_val == -257<br>                                                                                                                                           |[0x800004b4]:srli a1, a0, 17<br>  |
|[0x80002330]<br>0x7FFFFFFF|- rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                                                |[0x800004d0]:srli a1, a0, 0<br>   |
