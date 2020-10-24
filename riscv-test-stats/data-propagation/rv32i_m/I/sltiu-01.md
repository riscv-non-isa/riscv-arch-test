
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x80000520')]      |
| SIG_REGION  | [('0x80002210', '0x800023c8')]      |
| COV_LABELS  | ('sltiu',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/sltiu-01.S/sltiu-01.S    |

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

|        signature         |                                                                        coverpoints                                                                        |                 code                 |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
|[0x80002210]<br>0x00000000|- opcode : sltiu<br> - rs1 : 20<br> - rd : 6<br> - rs1 != rd<br> - rs1_val == imm_val and rs1_val > 0 and imm_val > 0<br>                                  |[0x80000104]:sltiu t1, s4, 12<br>     |
|[0x80002214]<br>0x00000000|- rs1 : 11<br> - rd : 11<br> - rs1 == rd<br> - rs1_val == (2**(xlen)-1)<br> - rs1_val != imm_val and rs1_val > 0 and imm_val > 0<br> - imm_val == 3071<br> |[0x80000110]:sltiu a1, a1, 3071<br>   |
|[0x80002218]<br>0x00000001|- rs1 : 5<br> - rd : 27<br> - rs1_val == 0<br>                                                                                                             |[0x8000011c]:sltiu s11, t0, 11<br>    |
|[0x8000221c]<br>0x00000001|- rs1 : 2<br> - rd : 25<br> - rs1_val == 1<br>                                                                                                             |[0x80000128]:sltiu s9, sp, 14<br>     |
|[0x80002220]<br>0x00000000|- rs1 : 10<br> - rd : 26<br> - imm_val == 0<br> - rs1_val == 4293918719<br>                                                                                |[0x80000138]:sltiu s10, a0, 0<br>     |
|[0x80002224]<br>0x00000001|- rs1 : 21<br> - rd : 5<br> - imm_val == (2**(12)-1)<br> - rs1_val == 256<br>                                                                              |[0x80000144]:sltiu t0, s5, 4095<br>   |
|[0x80002228]<br>0x00000000|- rs1 : 1<br> - rd : 24<br> - imm_val == 1<br>                                                                                                             |[0x80000150]:sltiu s8, ra, 1<br>      |
|[0x8000222c]<br>0x00000001|- rs1 : 4<br> - rd : 23<br> - rs1_val == 2<br>                                                                                                             |[0x8000015c]:sltiu s7, tp, 5<br>      |
|[0x80002230]<br>0x00000001|- rs1 : 29<br> - rd : 13<br> - rs1_val == 4<br>                                                                                                            |[0x80000168]:sltiu a3, t4, 17<br>     |
|[0x80002234]<br>0x00000001|- rs1 : 18<br> - rd : 19<br> - imm_val == 4087<br> - rs1_val == 8<br>                                                                                      |[0x80000174]:sltiu s3, s2, 4087<br>   |
|[0x80002238]<br>0x00000001|- rs1 : 15<br> - rd : 31<br> - imm_val == 512<br> - rs1_val == 16<br>                                                                                      |[0x80000180]:sltiu t6, a5, 512<br>    |
|[0x8000223c]<br>0x00000001|- rs1 : 23<br> - rd : 20<br> - imm_val == 1024<br> - rs1_val == 32<br>                                                                                     |[0x8000018c]:sltiu s4, s7, 1024<br>   |
|[0x80002240]<br>0x00000001|- rs1 : 8<br> - rd : 2<br> - imm_val == 2047<br> - rs1_val == 64<br>                                                                                       |[0x80000198]:sltiu sp, fp, 2047<br>   |
|[0x80002244]<br>0x00000000|- rs1 : 27<br> - rd : 7<br> - rs1_val == 128<br>                                                                                                           |[0x800001a4]:sltiu t2, s11, 15<br>    |
|[0x80002248]<br>0x00000000|- rs1 : 13<br> - rd : 3<br> - rs1_val == 512<br>                                                                                                           |[0x800001b0]:sltiu gp, a3, 0<br>      |
|[0x8000224c]<br>0x00000001|- rs1 : 3<br> - rd : 10<br> - imm_val == 3967<br> - rs1_val == 1024<br>                                                                                    |[0x800001bc]:sltiu a0, gp, 3967<br>   |
|[0x80002250]<br>0x00000000|- rs1 : 9<br> - rd : 15<br> - imm_val == 4<br> - rs1_val == 2048<br>                                                                                       |[0x800001cc]:sltiu a5, s1, 4<br>      |
|[0x80002254]<br>0x00000000|- rs1 : 31<br> - rd : 18<br> - imm_val == 128<br> - rs1_val == 4096<br>                                                                                    |[0x800001d8]:sltiu s2, t6, 128<br>    |
|[0x80002258]<br>0x00000000|- rs1 : 25<br> - rd : 21<br> - rs1_val == 8192<br>                                                                                                         |[0x800001e4]:sltiu s5, s9, 15<br>     |
|[0x8000225c]<br>0x00000000|- rs1 : 19<br> - rd : 28<br> - rs1_val == 16384<br>                                                                                                        |[0x800001f0]:sltiu t3, s3, 15<br>     |
|[0x80002260]<br>0x00000001|- rs1 : 16<br> - rd : 14<br> - imm_val == 4094<br> - rs1_val == 32768<br>                                                                                  |[0x800001fc]:sltiu a4, a6, 4094<br>   |
|[0x80002264]<br>0x00000000|- rs1 : 24<br> - rd : 16<br> - rs1_val == 65536<br>                                                                                                        |[0x80000208]:sltiu a6, s8, 14<br>     |
|[0x80002268]<br>0x00000000|- rs1 : 12<br> - rd : 17<br> - rs1_val == 131072<br>                                                                                                       |[0x80000214]:sltiu a7, a2, 18<br>     |
|[0x8000226c]<br>0x00000000|- rs1 : 22<br> - rd : 0<br> - rs1_val == 262144<br>                                                                                                        |[0x80000228]:sltiu zero, s6, 4095<br> |
|[0x80002270]<br>0x00000001|- rs1 : 14<br> - rd : 30<br> - imm_val == 2730<br> - rs1_val == 524288<br>                                                                                 |[0x80000234]:sltiu t5, a4, 2730<br>   |
|[0x80002274]<br>0x00000000|- rs1 : 30<br> - rd : 8<br> - rs1_val == 1048576<br>                                                                                                       |[0x80000240]:sltiu fp, t5, 512<br>    |
|[0x80002278]<br>0x00000001|- rs1 : 26<br> - rd : 1<br> - rs1_val == 2097152<br>                                                                                                       |[0x8000024c]:sltiu ra, s10, 4087<br>  |
|[0x8000227c]<br>0x00000001|- rs1 : 0<br> - rd : 12<br> - imm_val == 64<br>                                                                                                            |[0x8000025c]:sltiu a2, zero, 64<br>   |
|[0x80002280]<br>0x00000000|- rs1 : 6<br> - rd : 22<br> - rs1_val == 8388608<br>                                                                                                       |[0x80000268]:sltiu s6, t1, 1024<br>   |
|[0x80002284]<br>0x00000001|- rs1 : 7<br> - rd : 9<br> - imm_val == 4093<br> - rs1_val == 16777216<br>                                                                                 |[0x80000274]:sltiu s1, t2, 4093<br>   |
|[0x80002288]<br>0x00000000|- rs1 : 17<br> - rd : 4<br> - rs1_val == 33554432<br>                                                                                                      |[0x80000280]:sltiu tp, a7, 11<br>     |
|[0x8000228c]<br>0x00000001|- rs1 : 28<br> - rd : 29<br> - rs1_val == 67108864<br>                                                                                                     |[0x8000028c]:sltiu t4, t3, 4094<br>   |
|[0x80002290]<br>0x00000000|- imm_val == 32<br> - rs1_val == 134217728<br>                                                                                                             |[0x80000298]:sltiu a1, a0, 32<br>     |
|[0x80002294]<br>0x00000001|- rs1_val == 268435456<br>                                                                                                                                 |[0x800002a4]:sltiu a1, a0, 4094<br>   |
|[0x80002298]<br>0x00000001|- imm_val == 3839<br> - rs1_val == 536870912<br>                                                                                                           |[0x800002b0]:sltiu a1, a0, 3839<br>   |
|[0x8000229c]<br>0x00000000|- imm_val == 256<br> - rs1_val == 1073741824<br>                                                                                                           |[0x800002bc]:sltiu a1, a0, 256<br>    |
|[0x800022a0]<br>0x00000000|- rs1_val == 2147483648<br>                                                                                                                                |[0x800002c8]:sltiu a1, a0, 14<br>     |
|[0x800022a4]<br>0x00000000|- rs1_val == 4294967294<br>                                                                                                                                |[0x800002d4]:sltiu a1, a0, 13<br>     |
|[0x800022a8]<br>0x00000000|- rs1_val == 4294967293<br>                                                                                                                                |[0x800002e0]:sltiu a1, a0, 1<br>      |
|[0x800022ac]<br>0x00000000|- rs1_val == 4294967291<br>                                                                                                                                |[0x800002ec]:sltiu a1, a0, 18<br>     |
|[0x800022b0]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                |[0x800002f8]:sltiu a1, a0, 9<br>      |
|[0x800022b4]<br>0x00000000|- rs1_val == 4294967279<br>                                                                                                                                |[0x80000304]:sltiu a1, a0, 2047<br>   |
|[0x800022b8]<br>0x00000000|- rs1_val == 4294967263<br>                                                                                                                                |[0x80000310]:sltiu a1, a0, 3<br>      |
|[0x800022bc]<br>0x00000000|- rs1_val == 4294967231<br>                                                                                                                                |[0x8000031c]:sltiu a1, a0, 3967<br>   |
|[0x800022c0]<br>0x00000000|- rs1_val == 4294967167<br>                                                                                                                                |[0x80000328]:sltiu a1, a0, 13<br>     |
|[0x800022c4]<br>0x00000000|- rs1_val == 4294967039<br>                                                                                                                                |[0x80000334]:sltiu a1, a0, 512<br>    |
|[0x800022c8]<br>0x00000000|- rs1_val == 4294966783<br>                                                                                                                                |[0x80000340]:sltiu a1, a0, 1<br>      |
|[0x800022cc]<br>0x00000001|- rs1_val == 4294966271<br>                                                                                                                                |[0x8000034c]:sltiu a1, a0, 3967<br>   |
|[0x800022d0]<br>0x00000001|- rs1_val == 4294965247<br>                                                                                                                                |[0x8000035c]:sltiu a1, a0, 2730<br>   |
|[0x800022d4]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                                                |[0x8000036c]:sltiu a1, a0, 128<br>    |
|[0x800022d8]<br>0x00000001|- rs1_val == 4227858431<br>                                                                                                                                |[0x8000037c]:sltiu a1, a0, 4095<br>   |
|[0x800022dc]<br>0x00000001|- rs1_val == 4160749567<br>                                                                                                                                |[0x8000038c]:sltiu a1, a0, 3839<br>   |
|[0x800022e0]<br>0x00000001|- imm_val == 2048<br> - rs1_val == 4026531839<br>                                                                                                          |[0x8000039c]:sltiu a1, a0, 2048<br>   |
|[0x800022e4]<br>0x00000001|- imm_val == 4091<br> - rs1_val == 3758096383<br>                                                                                                          |[0x800003ac]:sltiu a1, a0, 4091<br>   |
|[0x800022e8]<br>0x00000000|- rs1_val == 3221225471<br>                                                                                                                                |[0x800003bc]:sltiu a1, a0, 7<br>      |
|[0x800022ec]<br>0x00000000|- rs1_val == 2147483647<br>                                                                                                                                |[0x800003cc]:sltiu a1, a0, 9<br>      |
|[0x800022f0]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                |[0x800003dc]:sltiu a1, a0, 4094<br>   |
|[0x800022f4]<br>0x00000000|- imm_val == 1365<br> - rs1_val == 2863311530<br>                                                                                                          |[0x800003ec]:sltiu a1, a0, 1365<br>   |
|[0x800022f8]<br>0x00000000|- imm_val == 2<br>                                                                                                                                         |[0x800003f8]:sltiu a1, a0, 2<br>      |
|[0x800022fc]<br>0x00000000|- imm_val == 8<br>                                                                                                                                         |[0x80000404]:sltiu a1, a0, 8<br>      |
|[0x80002300]<br>0x00000001|- imm_val == 16<br>                                                                                                                                        |[0x80000410]:sltiu a1, a0, 16<br>     |
|[0x80002304]<br>0x00000001|- imm_val == 4079<br>                                                                                                                                      |[0x8000041c]:sltiu a1, a0, 4079<br>   |
|[0x80002308]<br>0x00000000|- rs1_val == 4294443007<br>                                                                                                                                |[0x8000042c]:sltiu a1, a0, 32<br>     |
|[0x8000230c]<br>0x00000001|- rs1_val == 4294705151<br>                                                                                                                                |[0x8000043c]:sltiu a1, a0, 4095<br>   |
|[0x80002310]<br>0x00000001|- imm_val == 4063<br> - rs1_val == 4294963199<br>                                                                                                          |[0x8000044c]:sltiu a1, a0, 4063<br>   |
|[0x80002314]<br>0x00000001|- imm_val == 3583<br> - rs1_val == 4294959103<br>                                                                                                          |[0x8000045c]:sltiu a1, a0, 3583<br>   |
|[0x80002318]<br>0x00000000|- rs1_val == 4290772991<br>                                                                                                                                |[0x8000046c]:sltiu a1, a0, 6<br>      |
|[0x8000231c]<br>0x00000000|- rs1_val == 4294950911<br>                                                                                                                                |[0x8000047c]:sltiu a1, a0, 0<br>      |
|[0x80002320]<br>0x00000000|- rs1_val == 4294934527<br>                                                                                                                                |[0x8000048c]:sltiu a1, a0, 256<br>    |
|[0x80002324]<br>0x00000001|- rs1_val == 4294901759<br>                                                                                                                                |[0x8000049c]:sltiu a1, a0, 4093<br>   |
|[0x80002328]<br>0x00000001|- rs1_val == 4294836223<br>                                                                                                                                |[0x800004ac]:sltiu a1, a0, 4079<br>   |
|[0x8000232c]<br>0x00000001|- imm_val == 4031<br>                                                                                                                                      |[0x800004bc]:sltiu a1, a0, 4031<br>   |
|[0x80002330]<br>0x00000001|- rs1_val == 4292870143<br>                                                                                                                                |[0x800004cc]:sltiu a1, a0, 4093<br>   |
|[0x80002334]<br>0x00000000|- rs1_val == 4286578687<br>                                                                                                                                |[0x800004dc]:sltiu a1, a0, 7<br>      |
|[0x80002338]<br>0x00000000|- rs1_val == 4278190079<br>                                                                                                                                |[0x800004ec]:sltiu a1, a0, 5<br>      |
|[0x80002344]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                   |[0x80000510]:sltiu a1, a0, 64<br>     |
