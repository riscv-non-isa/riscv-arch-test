
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION  | [('0x80002210', '0x800023bc')]      |
| COV_LABELS  | ('slti',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/slti-01.S/slti-01.S    |

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

|        signature         |                                                                           coverpoints                                                                           |                 code                 |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
|[0x80002210]<br>0x00000000|- opcode : slti<br> - rs1 : 21<br> - rd : 6<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == 4<br> |[0x80000104]:slti t1, s5, 4<br>       |
|[0x80002214]<br>0x00000000|- rs1 : 8<br> - rd : 8<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == 524288<br>               |[0x80000110]:slti fp, fp, 4031<br>    |
|[0x80002218]<br>0x00000001|- rs1 : 4<br> - rd : 9<br> - imm_val == (2**(12-1)-1)<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 2047<br> - rs1_val == -513<br>                          |[0x8000011c]:slti s1, tp, 2047<br>    |
|[0x8000221c]<br>0x00000001|- rs1 : 15<br> - rd : 21<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -5<br>                                                                               |[0x80000128]:slti s5, a5, 4091<br>    |
|[0x80002220]<br>0x00000001|- rs1 : 22<br> - rd : 17<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 2<br> - rs1_val == -2147483648<br>                                                     |[0x80000134]:slti a7, s6, 2<br>       |
|[0x80002224]<br>0x00000001|- rs1 : 6<br> - rd : 16<br> - rs1_val == 0<br> - imm_val == 512<br>                                                                                              |[0x80000140]:slti a6, t1, 512<br>     |
|[0x80002228]<br>0x00000000|- rs1 : 13<br> - rd : 29<br> - imm_val == (-2**(12-1))<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -2048<br> - rs1_val == 2147483647<br>                   |[0x80000150]:slti t4, a3, 2048<br>    |
|[0x8000222c]<br>0x00000000|- rs1 : 1<br> - rd : 13<br> - rs1_val == 1<br> - imm_val == -17<br>                                                                                              |[0x8000015c]:slti a3, ra, 4079<br>    |
|[0x80002230]<br>0x00000001|- rs1 : 27<br> - rd : 3<br> - imm_val == 0<br>                                                                                                                   |[0x80000168]:slti gp, s11, 0<br>      |
|[0x80002234]<br>0x00000000|- rs1 : 30<br> - rd : 26<br> - imm_val == 1<br> - rs1_val == 134217728<br>                                                                                       |[0x80000174]:slti s10, t5, 1<br>      |
|[0x80002238]<br>0x00000000|- rs1 : 28<br> - rd : 10<br> - rs1_val == 2<br>                                                                                                                  |[0x80000180]:slti a0, t3, 4088<br>    |
|[0x8000223c]<br>0x00000000|- rs1 : 18<br> - rd : 23<br> - imm_val == -2<br> - rs1_val == 8<br>                                                                                              |[0x8000018c]:slti s7, s2, 4094<br>    |
|[0x80002240]<br>0x00000000|- rs1 : 16<br> - rd : 22<br> - rs1_val == 16<br>                                                                                                                 |[0x80000198]:slti s6, a6, 4088<br>    |
|[0x80002244]<br>0x00000000|- rs1 : 17<br> - rd : 12<br> - rs1_val == 32<br>                                                                                                                 |[0x800001a4]:slti a2, a7, 0<br>       |
|[0x80002248]<br>0x00000000|- rs1 : 20<br> - rd : 15<br> - rs1_val == 64<br>                                                                                                                 |[0x800001b0]:slti a5, s4, 3072<br>    |
|[0x8000224c]<br>0x00000000|- rs1 : 10<br> - rd : 27<br> - rs1_val == 128<br>                                                                                                                |[0x800001bc]:slti s11, a0, 4090<br>   |
|[0x80002250]<br>0x00000000|- rs1 : 26<br> - rd : 0<br> - rs1_val == 256<br>                                                                                                                 |[0x800001c8]:slti zero, s10, 4031<br> |
|[0x80002254]<br>0x00000000|- rs1 : 9<br> - rd : 20<br> - imm_val == 128<br> - rs1_val == 512<br>                                                                                            |[0x800001d4]:slti s4, s1, 128<br>     |
|[0x80002258]<br>0x00000000|- rs1 : 19<br> - rd : 5<br> - rs1_val == 1024<br>                                                                                                                |[0x800001e0]:slti t0, s3, 4079<br>    |
|[0x8000225c]<br>0x00000000|- rs1 : 5<br> - rd : 18<br> - imm_val == 256<br> - rs1_val == 2048<br>                                                                                           |[0x800001f0]:slti s2, t0, 256<br>     |
|[0x80002260]<br>0x00000000|- rs1 : 12<br> - rd : 24<br> - imm_val == -9<br> - rs1_val == 4096<br>                                                                                           |[0x800001fc]:slti s8, a2, 4087<br>    |
|[0x80002264]<br>0x00000000|- rs1 : 2<br> - rd : 31<br> - imm_val == 1365<br> - rs1_val == 8192<br>                                                                                          |[0x80000208]:slti t6, sp, 1365<br>    |
|[0x80002268]<br>0x00000000|- rs1 : 31<br> - rd : 1<br> - rs1_val == 16384<br>                                                                                                               |[0x80000214]:slti ra, t6, 4089<br>    |
|[0x8000226c]<br>0x00000001|- rs1 : 0<br> - rd : 2<br>                                                                                                                                       |[0x80000224]:slti sp, zero, 4<br>     |
|[0x80002270]<br>0x00000000|- rs1 : 24<br> - rd : 25<br> - imm_val == -33<br> - rs1_val == 65536<br>                                                                                         |[0x80000230]:slti s9, s8, 4063<br>    |
|[0x80002274]<br>0x00000000|- rs1 : 25<br> - rd : 7<br> - imm_val == 64<br> - rs1_val == 131072<br>                                                                                          |[0x80000244]:slti t2, s9, 64<br>      |
|[0x80002278]<br>0x00000000|- rs1 : 29<br> - rd : 14<br> - imm_val == -129<br> - rs1_val == 262144<br>                                                                                       |[0x80000250]:slti a4, t4, 3967<br>    |
|[0x8000227c]<br>0x00000000|- rs1 : 23<br> - rd : 30<br> - imm_val == -1025<br> - rs1_val == 1048576<br>                                                                                     |[0x8000025c]:slti t5, s7, 3071<br>    |
|[0x80002280]<br>0x00000000|- rs1 : 14<br> - rd : 28<br> - imm_val == 1024<br> - rs1_val == 2097152<br>                                                                                      |[0x80000268]:slti t3, a4, 1024<br>    |
|[0x80002284]<br>0x00000000|- rs1 : 7<br> - rd : 11<br> - rs1_val == 4194304<br>                                                                                                             |[0x80000274]:slti a1, t2, 1<br>       |
|[0x80002288]<br>0x00000000|- rs1 : 3<br> - rd : 19<br> - rs1_val == 8388608<br>                                                                                                             |[0x80000280]:slti s3, gp, 4086<br>    |
|[0x8000228c]<br>0x00000000|- rs1 : 11<br> - rd : 4<br> - rs1_val == 16777216<br>                                                                                                            |[0x8000028c]:slti tp, a1, 128<br>     |
|[0x80002290]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                        |[0x80000298]:slti a1, a0, 9<br>       |
|[0x80002294]<br>0x00000000|- imm_val == -1366<br> - rs1_val == 67108864<br>                                                                                                                 |[0x800002a4]:slti a1, a0, 2730<br>    |
|[0x80002298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                       |[0x800002b0]:slti a1, a0, 4086<br>    |
|[0x8000229c]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                       |[0x800002bc]:slti a1, a0, 7<br>       |
|[0x800022a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                      |[0x800002c8]:slti a1, a0, 4031<br>    |
|[0x800022a4]<br>0x00000001|- imm_val == 16<br> - rs1_val == -2<br>                                                                                                                          |[0x800002d4]:slti a1, a0, 16<br>      |
|[0x800022a8]<br>0x00000001|- imm_val == 32<br> - rs1_val == -3<br>                                                                                                                          |[0x800002e0]:slti a1, a0, 32<br>      |
|[0x800022ac]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                              |[0x800002ec]:slti a1, a0, 4089<br>    |
|[0x800022b0]<br>0x00000001|- rs1_val == -9<br>                                                                                                                                              |[0x800002f8]:slti a1, a0, 16<br>      |
|[0x800022b4]<br>0x00000001|- rs1_val == -17<br>                                                                                                                                             |[0x80000304]:slti a1, a0, 512<br>     |
|[0x800022b8]<br>0x00000001|- imm_val == -257<br> - rs1_val == -524289<br>                                                                                                                   |[0x80000314]:slti a1, a0, 3839<br>    |
|[0x800022bc]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                        |[0x80000324]:slti a1, a0, 4094<br>    |
|[0x800022c0]<br>0x00000001|- rs1_val == -2097153<br>                                                                                                                                        |[0x80000334]:slti a1, a0, 4031<br>    |
|[0x800022c4]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                                                        |[0x80000344]:slti a1, a0, 7<br>       |
|[0x800022c8]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                        |[0x80000354]:slti a1, a0, 16<br>      |
|[0x800022cc]<br>0x00000001|- rs1_val == -16777217<br>                                                                                                                                       |[0x80000364]:slti a1, a0, 6<br>       |
|[0x800022d0]<br>0x00000001|- rs1_val == -33554433<br>                                                                                                                                       |[0x80000374]:slti a1, a0, 2730<br>    |
|[0x800022d4]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                       |[0x80000384]:slti a1, a0, 3967<br>    |
|[0x800022d8]<br>0x00000001|- rs1_val == -134217729<br>                                                                                                                                      |[0x80000394]:slti a1, a0, 3071<br>    |
|[0x800022dc]<br>0x00000001|- rs1_val == -268435457<br>                                                                                                                                      |[0x800003a4]:slti a1, a0, 1365<br>    |
|[0x800022e0]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                      |[0x800003b4]:slti a1, a0, 4088<br>    |
|[0x800022e4]<br>0x00000001|- rs1_val == -1073741825<br>                                                                                                                                     |[0x800003c4]:slti a1, a0, 128<br>     |
|[0x800022e8]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                      |[0x800003d4]:slti a1, a0, 4091<br>    |
|[0x800022ec]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                     |[0x800003e4]:slti a1, a0, 2<br>       |
|[0x800022f0]<br>0x00000000|- imm_val == 8<br>                                                                                                                                               |[0x800003f0]:slti a1, a0, 8<br>       |
|[0x800022f4]<br>0x00000000|- imm_val == -513<br>                                                                                                                                            |[0x800003fc]:slti a1, a0, 3583<br>    |
|[0x800022f8]<br>0x00000000|- imm_val == -3<br>                                                                                                                                              |[0x80000408]:slti a1, a0, 4093<br>    |
|[0x800022fc]<br>0x00000001|- rs1_val == -33<br>                                                                                                                                             |[0x80000414]:slti a1, a0, 4091<br>    |
|[0x80002300]<br>0x00000001|- rs1_val == -65<br>                                                                                                                                             |[0x80000420]:slti a1, a0, 4091<br>    |
|[0x80002304]<br>0x00000001|- rs1_val == -129<br>                                                                                                                                            |[0x8000042c]:slti a1, a0, 1024<br>    |
|[0x80002308]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                            |[0x80000438]:slti a1, a0, 4063<br>    |
|[0x8000230c]<br>0x00000001|- rs1_val == -1025<br>                                                                                                                                           |[0x80000444]:slti a1, a0, 7<br>       |
|[0x80002310]<br>0x00000001|- rs1_val == -2049<br>                                                                                                                                           |[0x80000454]:slti a1, a0, 4088<br>    |
|[0x80002314]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                           |[0x80000464]:slti a1, a0, 4091<br>    |
|[0x80002318]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                           |[0x80000474]:slti a1, a0, 8<br>       |
|[0x8000231c]<br>0x00000001|- rs1_val == -16385<br>                                                                                                                                          |[0x80000484]:slti a1, a0, 3072<br>    |
|[0x80002320]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                          |[0x80000494]:slti a1, a0, 4091<br>    |
|[0x80002324]<br>0x00000001|- rs1_val == -65537<br>                                                                                                                                          |[0x800004a4]:slti a1, a0, 1024<br>    |
|[0x80002328]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                         |[0x800004b4]:slti a1, a0, 0<br>       |
|[0x8000232c]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                         |[0x800004c4]:slti a1, a0, 1365<br>    |
|[0x80002338]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                                           |[0x800004e8]:slti a1, a0, 4<br>       |
