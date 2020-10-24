
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x80000530')]      |
| SIG_REGION  | [('0x80002210', '0x800023cc')]      |
| COV_LABELS  | ('andi',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/andi-01.S/andi-01.S    |

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

|        signature         |                                                        coverpoints                                                         |                code                 |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
|[0x80002210]<br>0x00000000|- opcode : andi<br> - rs1 : 0<br> - rd : 13<br> - rs1 != rd<br> - rs1_val == 0<br> - rs1_val != imm_val<br>                 |[0x80000104]:andi a3, zero, 4088<br> |
|[0x80002214]<br>0x00000001|- rs1 : 4<br> - rd : 4<br> - rs1 == rd<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2049<br>      |[0x80000114]:andi tp, tp, 1<br>      |
|[0x80002218]<br>0x00000000|- rs1 : 11<br> - rd : 29<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 536870912<br>                                   |[0x80000120]:andi t4, a1, 3<br>      |
|[0x8000221c]<br>0x00000009|- rs1 : 22<br> - rd : 14<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br>                                        |[0x8000012c]:andi a4, s6, 3583<br>   |
|[0x80002220]<br>0x80000000|- rs1 : 31<br> - rd : 22<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x80000138]:andi s6, t6, 4095<br>   |
|[0x80002224]<br>0x00000000|- rs1 : 3<br> - rd : 20<br> - imm_val == 256<br>                                                                            |[0x80000144]:andi s4, gp, 256<br>    |
|[0x80002228]<br>0x7FFFFFEF|- rs1 : 27<br> - rd : 8<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -17<br> - rs1_val == 2147483647<br>               |[0x80000154]:andi fp, s11, 4079<br>  |
|[0x8000222c]<br>0x00000001|- rs1 : 28<br> - rd : 27<br> - rs1_val == 1<br>                                                                             |[0x80000160]:andi s11, t3, 9<br>     |
|[0x80002230]<br>0x00000000|- rs1 : 25<br> - rd : 23<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                           |[0x8000016c]:andi s7, s9, 2048<br>   |
|[0x80002234]<br>0x00000000|- rs1 : 13<br> - rd : 0<br> - imm_val == 0<br> - rs1_val == 8<br>                                                           |[0x80000178]:andi zero, a3, 0<br>    |
|[0x80002238]<br>0x000007FF|- rs1 : 29<br> - rd : 6<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -32769<br>                    |[0x80000188]:andi t1, t4, 2047<br>   |
|[0x8000223c]<br>0x00000000|- rs1 : 23<br> - rd : 1<br> - rs1_val == 2<br>                                                                              |[0x80000194]:andi ra, s7, 4092<br>   |
|[0x80002240]<br>0x00000000|- rs1 : 15<br> - rd : 12<br> - imm_val == 64<br> - rs1_val == 4<br>                                                         |[0x800001a0]:andi a2, a5, 64<br>     |
|[0x80002244]<br>0x00000000|- rs1 : 30<br> - rd : 28<br> - rs1_val == 16<br>                                                                            |[0x800001ac]:andi t3, t5, 3072<br>   |
|[0x80002248]<br>0x00000020|- rs1 : 1<br> - rd : 9<br> - rs1_val == 32<br>                                                                              |[0x800001b8]:andi s1, ra, 3583<br>   |
|[0x8000224c]<br>0x00000000|- rs1 : 6<br> - rd : 10<br> - imm_val == 128<br> - rs1_val == 64<br>                                                        |[0x800001c4]:andi a0, t1, 128<br>    |
|[0x80002250]<br>0x00000000|- rs1 : 9<br> - rd : 31<br> - rs1_val == 128<br>                                                                            |[0x800001d0]:andi t6, s1, 256<br>    |
|[0x80002254]<br>0x00000100|- rs1 : 8<br> - rd : 11<br> - rs1_val == 256<br>                                                                            |[0x800001dc]:andi a1, fp, 4088<br>   |
|[0x80002258]<br>0x00000000|- rs1 : 16<br> - rd : 30<br> - imm_val == 32<br> - rs1_val == 512<br>                                                       |[0x800001e8]:andi t5, a6, 32<br>     |
|[0x8000225c]<br>0x00000000|- rs1 : 18<br> - rd : 15<br> - imm_val == 16<br> - rs1_val == 1024<br>                                                      |[0x800001f4]:andi a5, s2, 16<br>     |
|[0x80002260]<br>0x00000000|- rs1 : 12<br> - rd : 2<br> - rs1_val == 2048<br>                                                                           |[0x80000204]:andi sp, a2, 3<br>      |
|[0x80002264]<br>0x00000000|- rs1 : 2<br> - rd : 5<br> - rs1_val == 4096<br>                                                                            |[0x80000210]:andi t0, sp, 2047<br>   |
|[0x80002268]<br>0x00002000|- rs1 : 17<br> - rd : 19<br> - rs1_val == 8192<br>                                                                          |[0x8000021c]:andi s3, a7, 4090<br>   |
|[0x8000226c]<br>0x00004000|- rs1 : 24<br> - rd : 17<br> - rs1_val == 16384<br>                                                                         |[0x80000228]:andi a7, s8, 4090<br>   |
|[0x80002270]<br>0x00008000|- rs1 : 26<br> - rd : 3<br> - rs1_val == 32768<br>                                                                          |[0x8000023c]:andi gp, s10, 4089<br>  |
|[0x80002274]<br>0x00010000|- rs1 : 5<br> - rd : 16<br> - imm_val == -2<br> - rs1_val == 65536<br>                                                      |[0x80000248]:andi a6, t0, 4094<br>   |
|[0x80002278]<br>0x00000000|- rs1 : 21<br> - rd : 26<br> - imm_val == 2<br> - rs1_val == 131072<br>                                                     |[0x80000254]:andi s10, s5, 2<br>     |
|[0x8000227c]<br>0x00040000|- rs1 : 10<br> - rd : 24<br> - rs1_val == 262144<br>                                                                        |[0x80000260]:andi s8, a0, 4088<br>   |
|[0x80002280]<br>0x00000000|- rs1 : 14<br> - rd : 18<br> - rs1_val == 524288<br>                                                                        |[0x8000026c]:andi s2, a4, 0<br>      |
|[0x80002284]<br>0x00100000|- rs1 : 20<br> - rd : 21<br> - rs1_val == 1048576<br>                                                                       |[0x80000278]:andi s5, s4, 4090<br>   |
|[0x80002288]<br>0x00000000|- rs1 : 19<br> - rd : 7<br> - rs1_val == 2097152<br>                                                                        |[0x80000284]:andi t2, s3, 128<br>    |
|[0x8000228c]<br>0x00000000|- rs1 : 7<br> - rd : 25<br> - rs1_val == 4194304<br>                                                                        |[0x80000290]:andi s9, t2, 0<br>      |
|[0x80002290]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                    |[0x8000029c]:andi a1, a0, 32<br>     |
|[0x80002294]<br>0x01000000|- imm_val == -3<br> - rs1_val == 16777216<br>                                                                               |[0x800002a8]:andi a1, a0, 4093<br>   |
|[0x80002298]<br>0x02000000|- rs1_val == 33554432<br>                                                                                                   |[0x800002b4]:andi a1, a0, 3072<br>   |
|[0x8000229c]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                   |[0x800002c0]:andi a1, a0, 4079<br>   |
|[0x800022a0]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                  |[0x800002cc]:andi a1, a0, 4095<br>   |
|[0x800022a4]<br>0x10000000|- rs1_val == 268435456<br>                                                                                                  |[0x800002d8]:andi a1, a0, 4089<br>   |
|[0x800022a8]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                 |[0x800002e4]:andi a1, a0, 128<br>    |
|[0x800022ac]<br>0xFFFFFEFE|- imm_val == -257<br> - rs1_val == -2<br>                                                                                   |[0x800002f0]:andi a1, a0, 3839<br>   |
|[0x800022b0]<br>0x00000008|- imm_val == 8<br> - rs1_val == -3<br>                                                                                      |[0x800002fc]:andi a1, a0, 8<br>      |
|[0x800022b4]<br>0xFFFFFFDB|- imm_val == -33<br> - rs1_val == -5<br>                                                                                    |[0x80000308]:andi a1, a0, 4063<br>   |
|[0x800022b8]<br>0xFFFFFFF6|- rs1_val == -9<br>                                                                                                         |[0x80000314]:andi a1, a0, 4086<br>   |
|[0x800022bc]<br>0x00000008|- rs1_val == -17<br>                                                                                                        |[0x80000320]:andi a1, a0, 8<br>      |
|[0x800022c0]<br>0x00000000|- rs1_val == -33<br>                                                                                                        |[0x8000032c]:andi a1, a0, 32<br>     |
|[0x800022c4]<br>0x00000080|- rs1_val == -65<br>                                                                                                        |[0x80000338]:andi a1, a0, 128<br>    |
|[0x800022c8]<br>0xFFFFFF7D|- rs1_val == -129<br>                                                                                                       |[0x80000344]:andi a1, a0, 4093<br>   |
|[0x800022cc]<br>0x00000020|- rs1_val == -257<br>                                                                                                       |[0x80000350]:andi a1, a0, 32<br>     |
|[0x800022d0]<br>0x00000004|- imm_val == 4<br> - rs1_val == -513<br>                                                                                    |[0x8000035c]:andi a1, a0, 4<br>      |
|[0x800022d4]<br>0xFFF7F800|- rs1_val == -524289<br>                                                                                                    |[0x8000036c]:andi a1, a0, 2048<br>   |
|[0x800022d8]<br>0xFFEFFFBF|- imm_val == -65<br> - rs1_val == -1048577<br>                                                                              |[0x8000037c]:andi a1, a0, 4031<br>   |
|[0x800022dc]<br>0xFFDFFFF7|- imm_val == -9<br> - rs1_val == -2097153<br>                                                                               |[0x8000038c]:andi a1, a0, 4087<br>   |
|[0x800022e0]<br>0x00000002|- rs1_val == -4194305<br>                                                                                                   |[0x8000039c]:andi a1, a0, 2<br>      |
|[0x800022e4]<br>0x00000080|- rs1_val == -8388609<br>                                                                                                   |[0x800003ac]:andi a1, a0, 128<br>    |
|[0x800022e8]<br>0x00000002|- rs1_val == -16777217<br>                                                                                                  |[0x800003bc]:andi a1, a0, 2<br>      |
|[0x800022ec]<br>0xFDFFFAAA|- imm_val == -1366<br> - rs1_val == -33554433<br>                                                                           |[0x800003cc]:andi a1, a0, 2730<br>   |
|[0x800022f0]<br>0x00000006|- rs1_val == -67108865<br>                                                                                                  |[0x800003dc]:andi a1, a0, 6<br>      |
|[0x800022f4]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                 |[0x800003ec]:andi a1, a0, 4095<br>   |
|[0x800022f8]<br>0x00000040|- rs1_val == -268435457<br>                                                                                                 |[0x800003fc]:andi a1, a0, 64<br>     |
|[0x800022fc]<br>0x00000008|- rs1_val == -536870913<br>                                                                                                 |[0x8000040c]:andi a1, a0, 8<br>      |
|[0x80002300]<br>0x00000000|- rs1_val == -1073741825<br>                                                                                                |[0x8000041c]:andi a1, a0, 0<br>      |
|[0x80002304]<br>0x10000000|- imm_val == -129<br>                                                                                                       |[0x80000428]:andi a1, a0, 3967<br>   |
|[0x80002308]<br>0x00001000|- imm_val == -1025<br>                                                                                                      |[0x80000434]:andi a1, a0, 3071<br>   |
|[0x8000230c]<br>0x00000000|- imm_val == 1365<br>                                                                                                       |[0x80000440]:andi a1, a0, 1365<br>   |
|[0x80002310]<br>0x55555550|- rs1_val == 1431655765<br>                                                                                                 |[0x80000450]:andi a1, a0, 4088<br>   |
|[0x80002314]<br>0x00000000|- rs1_val == -1431655766<br>                                                                                                |[0x80000460]:andi a1, a0, 1<br>      |
|[0x80002318]<br>0x00000000|- imm_val == 512<br>                                                                                                        |[0x80000470]:andi a1, a0, 512<br>    |
|[0x8000231c]<br>0xFFFFFAFF|- rs1_val == -1025<br>                                                                                                      |[0x8000047c]:andi a1, a0, 3839<br>   |
|[0x80002320]<br>0x00000000|- imm_val == 1024<br>                                                                                                       |[0x80000488]:andi a1, a0, 1024<br>   |
|[0x80002324]<br>0xFFFFEFFE|- rs1_val == -4097<br>                                                                                                      |[0x80000498]:andi a1, a0, 4094<br>   |
|[0x80002328]<br>0x00000008|- rs1_val == -8193<br>                                                                                                      |[0x800004a8]:andi a1, a0, 8<br>      |
|[0x8000232c]<br>0xFFFFBAAA|- rs1_val == -16385<br>                                                                                                     |[0x800004b8]:andi a1, a0, 2730<br>   |
|[0x80002330]<br>0xC0000000|- imm_val == -5<br>                                                                                                         |[0x800004c4]:andi a1, a0, 4091<br>   |
|[0x80002334]<br>0x00000040|- rs1_val == -65537<br>                                                                                                     |[0x800004d4]:andi a1, a0, 64<br>     |
|[0x80002338]<br>0x00000020|- rs1_val == -131073<br>                                                                                                    |[0x800004e4]:andi a1, a0, 32<br>     |
|[0x8000233c]<br>0x00000020|- rs1_val == -262145<br>                                                                                                    |[0x800004f4]:andi a1, a0, 32<br>     |
|[0x80002340]<br>0xFFFFFFF8|- rs1_val == imm_val<br>                                                                                                    |[0x80000500]:andi a1, a0, 4088<br>   |
