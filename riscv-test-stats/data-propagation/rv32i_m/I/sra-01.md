
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x80000640')]      |
| SIG_REGION  | [('0x80002210', '0x800023c4')]      |
| COV_LABELS  | ('sra',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |

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

|        signature         |                                                                                         coverpoints                                                                                          |               code               |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|[0x80002210]<br>0xFDFFFFFF|- opcode : sra<br> - rs1 : 16<br> - rs2 : 14<br> - rd : 27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -268435457<br> |[0x8000010c]:sra s11, a6, a4<br>  |
|[0x80002214]<br>0x00000000|- rs1 : 1<br> - rs2 : 22<br> - rd : 1<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4<br>                                                      |[0x8000011c]:sra ra, ra, s6<br>   |
|[0x80002218]<br>0x00000000|- rs1 : 28<br> - rs2 : 28<br> - rd : 25<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                     |[0x80000130]:sra s9, t3, t3<br>   |
|[0x8000221c]<br>0x00000002|- rs1 : 15<br> - rs2 : 26<br> - rd : 26<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2<br>                                                                      |[0x80000140]:sra s10, a5, s10<br> |
|[0x80002220]<br>0x00000000|- rs1 : 29<br> - rs2 : 29<br> - rd : 29<br> - rs1 == rs2 == rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 8<br> - rs2_val == 8<br>                          |[0x80000150]:sra t4, t4, t4<br>   |
|[0x80002224]<br>0xFFFE0000|- rs1 : 4<br> - rs2 : 20<br> - rd : 6<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                                    |[0x80000160]:sra t1, tp, s4<br>   |
|[0x80002228]<br>0x00000000|- rs1 : 7<br> - rs2 : 0<br> - rd : 15<br>                                                                                                                                                     |[0x80000170]:sra a5, t2, zero<br> |
|[0x8000222c]<br>0x03FFFFFF|- rs1 : 11<br> - rs2 : 31<br> - rd : 3<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                   |[0x80000184]:sra gp, a1, t6<br>   |
|[0x80002230]<br>0x00000000|- rs1 : 31<br> - rs2 : 6<br> - rd : 5<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 10<br>                                                       |[0x80000194]:sra t0, t6, t1<br>   |
|[0x80002234]<br>0x00000000|- rs1 : 0<br> - rs2 : 11<br> - rd : 14<br> - rs2_val == 1<br>                                                                                                                                 |[0x800001a8]:sra a4, zero, a1<br> |
|[0x80002238]<br>0x00008000|- rs1 : 22<br> - rs2 : 5<br> - rd : 28<br> - rs1_val == 131072<br> - rs2_val == 2<br>                                                                                                         |[0x800001b8]:sra t3, s6, t0<br>   |
|[0x8000223c]<br>0xFFFFFFFF|- rs1 : 14<br> - rs2 : 17<br> - rd : 7<br> - rs2_val == 4<br>                                                                                                                                 |[0x800001c8]:sra t2, a4, a7<br>   |
|[0x80002240]<br>0xFFFFFFFF|- rs1 : 23<br> - rs2 : 10<br> - rd : 21<br> - rs1_val == -262145<br> - rs2_val == 30<br>                                                                                                      |[0x800001dc]:sra s5, s7, a0<br>   |
|[0x80002244]<br>0x00000000|- rs1 : 27<br> - rs2 : 12<br> - rd : 19<br> - rs1_val == 134217728<br> - rs2_val == 29<br>                                                                                                    |[0x800001ec]:sra s3, s11, a2<br>  |
|[0x80002248]<br>0xFFFFFFFF|- rs1 : 2<br> - rs2 : 1<br> - rd : 8<br> - rs1_val == -33554433<br> - rs2_val == 27<br>                                                                                                       |[0x80000200]:sra fp, sp, ra<br>   |
|[0x8000224c]<br>0x00000020|- rs1 : 8<br> - rs2 : 4<br> - rd : 12<br> - rs1_val == 268435456<br> - rs2_val == 23<br>                                                                                                      |[0x80000210]:sra a2, fp, tp<br>   |
|[0x80002250]<br>0x00000000|- rs1 : 19<br> - rs2 : 9<br> - rd : 24<br> - rs1_val == 1024<br> - rs2_val == 15<br>                                                                                                          |[0x80000220]:sra s8, s3, s1<br>   |
|[0x80002254]<br>0x00000040|- rs1 : 6<br> - rs2 : 18<br> - rd : 11<br> - rs2_val == 21<br>                                                                                                                                |[0x80000238]:sra a1, t1, s2<br>   |
|[0x80002258]<br>0x00000000|- rs1 : 18<br> - rs2 : 13<br> - rd : 30<br> - rs1_val == 16<br>                                                                                                                               |[0x80000248]:sra t5, s2, a3<br>   |
|[0x8000225c]<br>0x00000000|- rs1 : 21<br> - rs2 : 23<br> - rd : 22<br> - rs1_val == 32<br>                                                                                                                               |[0x80000258]:sra s6, s5, s7<br>   |
|[0x80002260]<br>0x00000000|- rs1 : 25<br> - rs2 : 15<br> - rd : 23<br> - rs1_val == 64<br>                                                                                                                               |[0x80000268]:sra s7, s9, a5<br>   |
|[0x80002264]<br>0x00000000|- rs1 : 30<br> - rs2 : 7<br> - rd : 4<br> - rs1_val == 128<br>                                                                                                                                |[0x80000278]:sra tp, t5, t2<br>   |
|[0x80002268]<br>0x00000000|- rs1 : 10<br> - rs2 : 16<br> - rd : 31<br> - rs1_val == 256<br>                                                                                                                              |[0x80000288]:sra t6, a0, a6<br>   |
|[0x8000226c]<br>0x00000000|- rs1 : 20<br> - rs2 : 21<br> - rd : 0<br> - rs1_val == 512<br>                                                                                                                               |[0x80000298]:sra zero, s4, s5<br> |
|[0x80002270]<br>0x00000001|- rs1 : 5<br> - rs2 : 8<br> - rd : 16<br> - rs1_val == 2048<br>                                                                                                                               |[0x800002ac]:sra a6, t0, fp<br>   |
|[0x80002274]<br>0x00000000|- rs1 : 9<br> - rs2 : 27<br> - rd : 13<br> - rs1_val == 4096<br>                                                                                                                              |[0x800002bc]:sra a3, s1, s11<br>  |
|[0x80002278]<br>0x00000040|- rs1 : 13<br> - rs2 : 3<br> - rd : 10<br> - rs1_val == 8192<br>                                                                                                                              |[0x800002cc]:sra a0, a3, gp<br>   |
|[0x8000227c]<br>0x00000000|- rs1 : 24<br> - rs2 : 2<br> - rd : 17<br> - rs1_val == 16384<br>                                                                                                                             |[0x800002dc]:sra a7, s8, sp<br>   |
|[0x80002280]<br>0x00000000|- rs1 : 17<br> - rs2 : 30<br> - rd : 2<br> - rs1_val == 32768<br>                                                                                                                             |[0x800002ec]:sra sp, a7, t5<br>   |
|[0x80002284]<br>0x00000080|- rs1 : 26<br> - rs2 : 25<br> - rd : 9<br> - rs1_val == 65536<br>                                                                                                                             |[0x800002fc]:sra s1, s10, s9<br>  |
|[0x80002288]<br>0x00000800|- rs1 : 3<br> - rs2 : 24<br> - rd : 18<br> - rs1_val == 262144<br>                                                                                                                            |[0x8000030c]:sra s2, gp, s8<br>   |
|[0x8000228c]<br>0x00000080|- rs1 : 12<br> - rs2 : 19<br> - rd : 20<br> - rs1_val == 524288<br>                                                                                                                           |[0x8000031c]:sra s4, a2, s3<br>   |
|[0x80002290]<br>0x00000004|- rs1_val == 1048576<br>                                                                                                                                                                      |[0x8000032c]:sra a2, a0, a1<br>   |
|[0x80002294]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                                                      |[0x8000033c]:sra a2, a0, a1<br>   |
|[0x80002298]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                      |[0x8000034c]:sra a2, a0, a1<br>   |
|[0x8000229c]<br>0x00000001|- rs1_val == 8388608<br>                                                                                                                                                                      |[0x8000035c]:sra a2, a0, a1<br>   |
|[0x800022a0]<br>0x00200000|- rs1_val == 16777216<br>                                                                                                                                                                     |[0x8000036c]:sra a2, a0, a1<br>   |
|[0x800022a4]<br>0x00004000|- rs1_val == 33554432<br>                                                                                                                                                                     |[0x8000037c]:sra a2, a0, a1<br>   |
|[0x800022a8]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                     |[0x8000038c]:sra a2, a0, a1<br>   |
|[0x800022ac]<br>0xFFFFFFDF|- rs1_val == -2049<br>                                                                                                                                                                        |[0x800003a0]:sra a2, a0, a1<br>   |
|[0x800022b0]<br>0xFFFFFFFE|- rs1_val == -4097<br>                                                                                                                                                                        |[0x800003b4]:sra a2, a0, a1<br>   |
|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                        |[0x800003c8]:sra a2, a0, a1<br>   |
|[0x800022b8]<br>0xFFFFDFFF|- rs1_val == -16385<br>                                                                                                                                                                       |[0x800003dc]:sra a2, a0, a1<br>   |
|[0x800022bc]<br>0xFFFFFFFE|- rs1_val == -32769<br>                                                                                                                                                                       |[0x800003f0]:sra a2, a0, a1<br>   |
|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                       |[0x80000404]:sra a2, a0, a1<br>   |
|[0x800022c4]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                      |[0x80000418]:sra a2, a0, a1<br>   |
|[0x800022c8]<br>0xFFFFFFF7|- rs1_val == -524289<br> - rs2_val == 16<br>                                                                                                                                                  |[0x8000042c]:sra a2, a0, a1<br>   |
|[0x800022cc]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                     |[0x80000440]:sra a2, a0, a1<br>   |
|[0x800022d0]<br>0xFFFFFBFF|- rs1_val == -2097153<br>                                                                                                                                                                     |[0x80000454]:sra a2, a0, a1<br>   |
|[0x800022d4]<br>0xFFFFFFFD|- rs1_val == -4194305<br>                                                                                                                                                                     |[0x80000468]:sra a2, a0, a1<br>   |
|[0x800022d8]<br>0xFFEFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                    |[0x8000047c]:sra a2, a0, a1<br>   |
|[0x800022dc]<br>0xFDFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                    |[0x80000490]:sra a2, a0, a1<br>   |
|[0x800022e0]<br>0xFFFFEFFF|- rs1_val == -134217729<br>                                                                                                                                                                   |[0x800004a4]:sra a2, a0, a1<br>   |
|[0x800022e4]<br>0xFFFFF7FF|- rs1_val == -536870913<br>                                                                                                                                                                   |[0x800004b8]:sra a2, a0, a1<br>   |
|[0x800022e8]<br>0xFFDFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                  |[0x800004cc]:sra a2, a0, a1<br>   |
|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                          |[0x800004dc]:sra a2, a0, a1<br>   |
|[0x800022f0]<br>0xFFFFFFEF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -17<br>                                                                                                                                       |[0x800004ec]:sra a2, a0, a1<br>   |
|[0x800022f4]<br>0x01000000|- rs1_val == 536870912<br>                                                                                                                                                                    |[0x800004fc]:sra a2, a0, a1<br>   |
|[0x800022f8]<br>0x00080000|- rs1_val == 1073741824<br>                                                                                                                                                                   |[0x8000050c]:sra a2, a0, a1<br>   |
|[0x800022fc]<br>0x0000000A|- rs1_val == 1431655765<br>                                                                                                                                                                   |[0x80000520]:sra a2, a0, a1<br>   |
|[0x80002300]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                           |[0x80000530]:sra a2, a0, a1<br>   |
|[0x80002304]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                           |[0x80000540]:sra a2, a0, a1<br>   |
|[0x80002308]<br>0xEAAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                  |[0x80000554]:sra a2, a0, a1<br>   |
|[0x8000230c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                           |[0x80000564]:sra a2, a0, a1<br>   |
|[0x80002310]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                           |[0x80000574]:sra a2, a0, a1<br>   |
|[0x80002314]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                          |[0x80000584]:sra a2, a0, a1<br>   |
|[0x80002318]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                         |[0x80000594]:sra a2, a0, a1<br>   |
|[0x8000231c]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                         |[0x800005a4]:sra a2, a0, a1<br>   |
|[0x80002320]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                         |[0x800005b4]:sra a2, a0, a1<br>   |
|[0x80002324]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                        |[0x800005c4]:sra a2, a0, a1<br>   |
|[0x8000232c]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                     |[0x800005e8]:sra a2, a0, a1<br>   |
