
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x80000520')]      |
| SIG_REGION  | [('0x80002210', '0x800023c4')]      |
| COV_LABELS  | ('ori',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |

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

|        signature         |                                                          coverpoints                                                          |               code                |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|[0x80002210]<br>0xFFFFFFFA|- opcode : ori<br> - rs1 : 17<br> - rd : 7<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>      |[0x80000104]:ori t2, a7, 4090<br>  |
|[0x80002214]<br>0xFFFFFBFF|- rs1 : 23<br> - rd : 23<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -1025<br> |[0x80000110]:ori s7, s7, 5<br>     |
|[0x80002218]<br>0x04000007|- rs1 : 4<br> - rd : 5<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 67108864<br>                                         |[0x8000011c]:ori t0, tp, 7<br>     |
|[0x8000221c]<br>0xFFFFFFBF|- rs1 : 10<br> - rd : 2<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == 131072<br>                     |[0x80000128]:ori sp, a0, 4031<br>  |
|[0x80002220]<br>0xFFFFFC00|- rs1 : 25<br> - rd : 30<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                      |[0x80000134]:ori t5, s9, 3072<br>  |
|[0x80002224]<br>0x000007FF|- rs1 : 15<br> - rd : 28<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == 0<br> - imm_val == 2047<br>                           |[0x80000140]:ori t3, a5, 2047<br>  |
|[0x80002228]<br>0x7FFFFFFF|- rs1 : 19<br> - rd : 13<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 16<br> - rs1_val == 2147483647<br>                  |[0x80000150]:ori a3, s3, 16<br>    |
|[0x8000222c]<br>0x00000041|- rs1 : 5<br> - rd : 12<br> - rs1_val == 1<br> - imm_val == 64<br>                                                             |[0x8000015c]:ori a2, t0, 64<br>    |
|[0x80002230]<br>0xFFFFFFFF|- rs1 : 13<br> - rd : 25<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -262145<br>                     |[0x8000016c]:ori s9, a3, 2048<br>  |
|[0x80002234]<br>0xFEFFFFFF|- rs1 : 20<br> - rd : 26<br> - imm_val == 0<br> - rs1_val == -16777217<br>                                                     |[0x8000017c]:ori s10, s4, 0<br>    |
|[0x80002238]<br>0x00000009|- rs1 : 7<br> - rd : 22<br> - imm_val == 1<br> - rs1_val == 8<br>                                                              |[0x80000188]:ori s6, t2, 1<br>     |
|[0x8000223c]<br>0x00000003|- rs1 : 12<br> - rd : 27<br> - rs1_val == 2<br>                                                                                |[0x80000194]:ori s11, a2, 1<br>    |
|[0x80002240]<br>0x00000004|- rs1 : 8<br> - rd : 10<br> - rs1_val == 4<br>                                                                                 |[0x800001a0]:ori a0, fp, 0<br>     |
|[0x80002244]<br>0x00000015|- rs1 : 11<br> - rd : 31<br> - rs1_val == 16<br>                                                                               |[0x800001ac]:ori t6, a1, 5<br>     |
|[0x80002248]<br>0xFFFFF820|- rs1 : 6<br> - rd : 18<br> - rs1_val == 32<br>                                                                                |[0x800001b8]:ori s2, t1, 2048<br>  |
|[0x8000224c]<br>0xFFFFFFEF|- rs1 : 30<br> - rd : 20<br> - imm_val == -17<br> - rs1_val == 64<br>                                                          |[0x800001c4]:ori s4, t5, 4079<br>  |
|[0x80002250]<br>0xFFFFFFF9|- rs1 : 27<br> - rd : 11<br> - rs1_val == 128<br>                                                                              |[0x800001d0]:ori a1, s11, 4089<br> |
|[0x80002254]<br>0x00000500|- rs1 : 29<br> - rd : 4<br> - imm_val == 1024<br> - rs1_val == 256<br>                                                         |[0x800001dc]:ori tp, t4, 1024<br>  |
|[0x80002258]<br>0x00000007|- rs1 : 0<br> - rd : 21<br>                                                                                                    |[0x800001e8]:ori s5, zero, 7<br>   |
|[0x8000225c]<br>0x00000409|- rs1 : 18<br> - rd : 29<br> - rs1_val == 1024<br>                                                                             |[0x800001f4]:ori t4, s2, 9<br>     |
|[0x80002260]<br>0x00000804|- rs1 : 2<br> - rd : 3<br> - imm_val == 4<br> - rs1_val == 2048<br>                                                            |[0x80000204]:ori gp, sp, 4<br>     |
|[0x80002264]<br>0x00001020|- rs1 : 16<br> - rd : 14<br> - imm_val == 32<br> - rs1_val == 4096<br>                                                         |[0x80000210]:ori a4, a6, 32<br>    |
|[0x80002268]<br>0x00002002|- rs1 : 28<br> - rd : 1<br> - imm_val == 2<br> - rs1_val == 8192<br>                                                           |[0x80000224]:ori ra, t3, 2<br>     |
|[0x8000226c]<br>0x00004100|- rs1 : 1<br> - rd : 15<br> - imm_val == 256<br> - rs1_val == 16384<br>                                                        |[0x80000230]:ori a5, ra, 256<br>   |
|[0x80002270]<br>0xFFFFFF7F|- rs1 : 31<br> - rd : 9<br> - imm_val == -129<br> - rs1_val == 32768<br>                                                       |[0x8000023c]:ori s1, t6, 3967<br>  |
|[0x80002274]<br>0x00010010|- rs1 : 26<br> - rd : 24<br> - rs1_val == 65536<br>                                                                            |[0x80000248]:ori s8, s10, 16<br>   |
|[0x80002278]<br>0xFFFFFFEF|- rs1 : 22<br> - rd : 19<br> - rs1_val == 262144<br>                                                                           |[0x80000254]:ori s3, s6, 4079<br>  |
|[0x8000227c]<br>0xFFFFFFBF|- rs1 : 3<br> - rd : 17<br> - rs1_val == 524288<br>                                                                            |[0x80000260]:ori a7, gp, 4031<br>  |
|[0x80002280]<br>0x00000000|- rs1 : 14<br> - rd : 0<br> - imm_val == 8<br> - rs1_val == 1048576<br>                                                        |[0x8000026c]:ori zero, a4, 8<br>   |
|[0x80002284]<br>0xFFFFFFFB|- rs1 : 24<br> - rd : 8<br> - imm_val == -5<br> - rs1_val == 2097152<br>                                                       |[0x80000278]:ori fp, s8, 4091<br>  |
|[0x80002288]<br>0x00400007|- rs1 : 21<br> - rd : 16<br> - rs1_val == 4194304<br>                                                                          |[0x80000284]:ori a6, s5, 7<br>     |
|[0x8000228c]<br>0x00800004|- rs1 : 9<br> - rd : 6<br> - rs1_val == 8388608<br>                                                                            |[0x80000290]:ori t1, s1, 4<br>     |
|[0x80002290]<br>0x01000080|- imm_val == 128<br> - rs1_val == 16777216<br>                                                                                 |[0x8000029c]:ori a1, a0, 128<br>   |
|[0x80002294]<br>0x02000003|- rs1_val == 33554432<br>                                                                                                      |[0x800002a8]:ori a1, a0, 3<br>     |
|[0x80002298]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                     |[0x800002b4]:ori a1, a0, 0<br>     |
|[0x8000229c]<br>0x10000020|- rs1_val == 268435456<br>                                                                                                     |[0x800002c0]:ori a1, a0, 32<br>    |
|[0x800022a0]<br>0xFFFFFFBF|- rs1_val == 536870912<br>                                                                                                     |[0x800002cc]:ori a1, a0, 4031<br>  |
|[0x800022a4]<br>0x40000006|- rs1_val == 1073741824<br>                                                                                                    |[0x800002d8]:ori a1, a0, 6<br>     |
|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                            |[0x800002e4]:ori a1, a0, 4031<br>  |
|[0x800022ac]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                            |[0x800002f0]:ori a1, a0, 8<br>     |
|[0x800022b0]<br>0xFFFFFFFB|- rs1_val == -5<br>                                                                                                            |[0x800002fc]:ori a1, a0, 3072<br>  |
|[0x800022b4]<br>0xFFFFFFF7|- rs1_val == -9<br>                                                                                                            |[0x80000308]:ori a1, a0, 1024<br>  |
|[0x800022b8]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                           |[0x80000314]:ori a1, a0, 1<br>     |
|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                           |[0x80000320]:ori a1, a0, 32<br>    |
|[0x800022c0]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                           |[0x8000032c]:ori a1, a0, 6<br>     |
|[0x800022c4]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                          |[0x80000338]:ori a1, a0, 128<br>   |
|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                          |[0x80000344]:ori a1, a0, 1023<br>  |
|[0x800022cc]<br>0xFFFFFFFF|- imm_val == -33<br> - rs1_val == -524289<br>                                                                                  |[0x80000354]:ori a1, a0, 4063<br>  |
|[0x800022d0]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                      |[0x80000364]:ori a1, a0, 4092<br>  |
|[0x800022d4]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                      |[0x80000374]:ori a1, a0, 4092<br>  |
|[0x800022d8]<br>0xFFFFFFFF|- rs1_val == -4194305<br>                                                                                                      |[0x80000384]:ori a1, a0, 4031<br>  |
|[0x800022dc]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                      |[0x80000394]:ori a1, a0, 3<br>     |
|[0x800022e0]<br>0xFDFFFFFF|- imm_val == 512<br> - rs1_val == -33554433<br>                                                                                |[0x800003a4]:ori a1, a0, 512<br>   |
|[0x800022e4]<br>0xFFFFFFFF|- imm_val == -2<br> - rs1_val == -67108865<br>                                                                                 |[0x800003b4]:ori a1, a0, 4094<br>  |
|[0x800022e8]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                    |[0x800003c4]:ori a1, a0, 64<br>    |
|[0x800022ec]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                    |[0x800003d4]:ori a1, a0, 256<br>   |
|[0x800022f0]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                    |[0x800003e4]:ori a1, a0, 128<br>   |
|[0x800022f4]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                   |[0x800003f4]:ori a1, a0, 256<br>   |
|[0x800022f8]<br>0x55555557|- rs1_val == 1431655765<br>                                                                                                    |[0x80000404]:ori a1, a0, 6<br>     |
|[0x800022fc]<br>0xFFFFFFFF|- imm_val == -9<br> - rs1_val == -1431655766<br>                                                                               |[0x80000414]:ori a1, a0, 4087<br>  |
|[0x80002300]<br>0xFFFFFEFF|- imm_val == -257<br>                                                                                                          |[0x80000424]:ori a1, a0, 3839<br>  |
|[0x80002304]<br>0xFFFFFDFF|- imm_val == -513<br>                                                                                                          |[0x80000430]:ori a1, a0, 3583<br>  |
|[0x80002308]<br>0xFFFFFFFF|- imm_val == -1025<br>                                                                                                         |[0x80000440]:ori a1, a0, 3071<br>  |
|[0x8000230c]<br>0xFFEFFFFF|- imm_val == 1365<br>                                                                                                          |[0x80000450]:ori a1, a0, 1365<br>  |
|[0x80002310]<br>0xFFFFFFFF|- imm_val == -1366<br>                                                                                                         |[0x80000460]:ori a1, a0, 2730<br>  |
|[0x80002314]<br>0xFFFFFFFF|- imm_val == -3<br>                                                                                                            |[0x8000046c]:ori a1, a0, 4093<br>  |
|[0x80002318]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                          |[0x80000478]:ori a1, a0, 1024<br>  |
|[0x8000231c]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                         |[0x80000488]:ori a1, a0, 3839<br>  |
|[0x80002320]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                         |[0x80000498]:ori a1, a0, 4089<br>  |
|[0x80002324]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                         |[0x800004a8]:ori a1, a0, 7<br>     |
|[0x80002328]<br>0xFFFFBFFF|- rs1_val == -16385<br>                                                                                                        |[0x800004b8]:ori a1, a0, 512<br>   |
|[0x8000232c]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                        |[0x800004c8]:ori a1, a0, 3071<br>  |
|[0x80002330]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                        |[0x800004d8]:ori a1, a0, 64<br>    |
|[0x80002334]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                       |[0x800004e8]:ori a1, a0, 2047<br>  |
|[0x8000233c]<br>0x00000207|- rs1_val == 512<br>                                                                                                           |[0x80000500]:ori a1, a0, 7<br>     |
