
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION  | [('0x80002210', '0x800023b8')]      |
| COV_LABELS  | ('srai',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |

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

|        signature         |                                                                coverpoints                                                                |               code                |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|[0x80002210]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : 11<br> - rd : 7<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -33<br>  |[0x80000104]:srai t2, a1, 14<br>   |
|[0x80002214]<br>0x00000000|- rs1 : 30<br> - rd : 30<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 256<br> - imm_val == 30<br> |[0x80000110]:srai t5, t5, 30<br>   |
|[0x80002218]<br>0xFFFFF7FF|- rs1 : 13<br> - rd : 23<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -2049<br>                                                     |[0x80000120]:srai s7, a3, 0<br>    |
|[0x8000221c]<br>0x3FFFFFFF|- rs1 : 31<br> - rd : 12<br> - rs1_val > 0 and imm_val == 0<br>                                                                            |[0x80000130]:srai a2, t6, 0<br>    |
|[0x80002220]<br>0xFFFFFFFF|- rs1 : 28<br> - rd : 13<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -268435457<br>                                         |[0x80000140]:srai a3, t3, 31<br>   |
|[0x80002224]<br>0x00000000|- rs1 : 21<br> - rd : 29<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 16384<br>                                              |[0x8000014c]:srai t4, s5, 31<br>   |
|[0x80002228]<br>0x00000000|- rs1 : 1<br> - rd : 5<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>               |[0x80000158]:srai t0, ra, 8<br>    |
|[0x8000222c]<br>0xF0000000|- rs1 : 17<br> - rd : 8<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>               |[0x80000164]:srai fp, a7, 3<br>    |
|[0x80002230]<br>0x00000000|- rs1 : 2<br> - rd : 28<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                         |[0x80000170]:srai t3, sp, 12<br>   |
|[0x80002234]<br>0x00000001|- rs1 : 10<br> - rd : 3<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>               |[0x80000180]:srai gp, a0, 30<br>   |
|[0x80002238]<br>0x00000000|- rs1 : 19<br> - rd : 10<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 10<br>                 |[0x8000018c]:srai a0, s3, 10<br>   |
|[0x8000223c]<br>0x00000000|- rs1 : 0<br> - rd : 26<br> - imm_val == 1<br>                                                                                             |[0x80000198]:srai s10, zero, 1<br> |
|[0x80002240]<br>0xFFEFFFFF|- rs1 : 4<br> - rd : 6<br> - rs1_val == -4194305<br> - imm_val == 2<br>                                                                    |[0x800001a8]:srai t1, tp, 2<br>    |
|[0x80002244]<br>0x00001000|- rs1 : 9<br> - rd : 17<br> - rs1_val == 65536<br> - imm_val == 4<br>                                                                      |[0x800001b4]:srai a7, s1, 4<br>    |
|[0x80002248]<br>0x00000800|- rs1 : 12<br> - rd : 14<br> - rs1_val == 134217728<br> - imm_val == 16<br>                                                                |[0x800001c0]:srai a4, a2, 16<br>   |
|[0x8000224c]<br>0x00000000|- rs1 : 27<br> - rd : 19<br> - imm_val == 29<br>                                                                                           |[0x800001cc]:srai s3, s11, 29<br>  |
|[0x80002250]<br>0xFFFFFFFF|- rs1 : 22<br> - rd : 27<br> - rs1_val == -524289<br> - imm_val == 27<br>                                                                  |[0x800001dc]:srai s11, s6, 27<br>  |
|[0x80002254]<br>0xFFFFFFFF|- rs1 : 3<br> - rd : 25<br> - rs1_val == -2097153<br> - imm_val == 23<br>                                                                  |[0x800001ec]:srai s9, gp, 23<br>   |
|[0x80002258]<br>0xFFFFFF7F|- rs1 : 24<br> - rd : 4<br> - imm_val == 15<br>                                                                                            |[0x800001fc]:srai tp, s8, 15<br>   |
|[0x8000225c]<br>0xFFFFFFFF|- rs1 : 7<br> - rd : 18<br> - rs1_val == -129<br> - imm_val == 21<br>                                                                      |[0x80000208]:srai s2, t2, 21<br>   |
|[0x80002260]<br>0x00000001|- rs1 : 26<br> - rd : 11<br> - rs1_val == 2<br>                                                                                            |[0x8000021c]:srai a1, s10, 1<br>   |
|[0x80002264]<br>0x00000004|- rs1 : 5<br> - rd : 15<br> - rs1_val == 4<br>                                                                                             |[0x80000228]:srai a5, t0, 0<br>    |
|[0x80002268]<br>0x00000000|- rs1 : 29<br> - rd : 31<br> - rs1_val == 16<br>                                                                                           |[0x80000234]:srai t6, t4, 15<br>   |
|[0x8000226c]<br>0x00000000|- rs1 : 15<br> - rd : 0<br> - rs1_val == 32<br>                                                                                            |[0x80000240]:srai zero, a5, 1<br>  |
|[0x80002270]<br>0x00000000|- rs1 : 8<br> - rd : 22<br> - rs1_val == 64<br>                                                                                            |[0x8000024c]:srai s6, fp, 9<br>    |
|[0x80002274]<br>0x00000000|- rs1 : 25<br> - rd : 24<br> - rs1_val == 128<br>                                                                                          |[0x80000258]:srai s8, s9, 21<br>   |
|[0x80002278]<br>0x00000000|- rs1 : 18<br> - rd : 21<br> - rs1_val == 512<br>                                                                                          |[0x80000264]:srai s5, s2, 27<br>   |
|[0x8000227c]<br>0x00000000|- rs1 : 6<br> - rd : 1<br> - rs1_val == 1024<br>                                                                                           |[0x80000270]:srai ra, t1, 13<br>   |
|[0x80002280]<br>0x00000000|- rs1 : 16<br> - rd : 20<br> - rs1_val == 2048<br>                                                                                         |[0x80000280]:srai s4, a6, 27<br>   |
|[0x80002284]<br>0x00000000|- rs1 : 20<br> - rd : 2<br> - rs1_val == 4096<br>                                                                                          |[0x8000028c]:srai sp, s4, 18<br>   |
|[0x80002288]<br>0x00000004|- rs1 : 14<br> - rd : 16<br> - rs1_val == 8192<br>                                                                                         |[0x80000298]:srai a6, a4, 11<br>   |
|[0x8000228c]<br>0x00000001|- rs1 : 23<br> - rd : 9<br> - rs1_val == 32768<br>                                                                                         |[0x800002a4]:srai s1, s7, 15<br>   |
|[0x80002290]<br>0x00000002|- rs1_val == 131072<br>                                                                                                                    |[0x800002b0]:srai a1, a0, 16<br>   |
|[0x80002294]<br>0x00020000|- rs1_val == 262144<br>                                                                                                                    |[0x800002bc]:srai a1, a0, 1<br>    |
|[0x80002298]<br>0x00004000|- rs1_val == 524288<br>                                                                                                                    |[0x800002c8]:srai a1, a0, 5<br>    |
|[0x8000229c]<br>0x00010000|- rs1_val == 1048576<br>                                                                                                                   |[0x800002d4]:srai a1, a0, 4<br>    |
|[0x800022a0]<br>0x00000004|- rs1_val == 2097152<br>                                                                                                                   |[0x800002e0]:srai a1, a0, 19<br>   |
|[0x800022a4]<br>0x00000020|- rs1_val == 4194304<br>                                                                                                                   |[0x800002ec]:srai a1, a0, 17<br>   |
|[0x800022a8]<br>0x00080000|- rs1_val == 8388608<br>                                                                                                                   |[0x800002f8]:srai a1, a0, 4<br>    |
|[0x800022ac]<br>0x00008000|- rs1_val == 16777216<br>                                                                                                                  |[0x80000304]:srai a1, a0, 9<br>    |
|[0x800022b0]<br>0xFFFFFFFD|- rs1_val == -513<br>                                                                                                                      |[0x80000310]:srai a1, a0, 8<br>    |
|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                     |[0x8000031c]:srai a1, a0, 18<br>   |
|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                     |[0x8000032c]:srai a1, a0, 19<br>   |
|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                     |[0x8000033c]:srai a1, a0, 17<br>   |
|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                    |[0x8000034c]:srai a1, a0, 30<br>   |
|[0x800022c4]<br>0xFFFFFFFD|- rs1_val == -32769<br>                                                                                                                    |[0x8000035c]:srai a1, a0, 14<br>   |
|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                    |[0x8000036c]:srai a1, a0, 30<br>   |
|[0x800022cc]<br>0xFFFEFFFF|- rs1_val == -131073<br>                                                                                                                   |[0x8000037c]:srai a1, a0, 1<br>    |
|[0x800022d0]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                   |[0x8000038c]:srai a1, a0, 27<br>   |
|[0x800022d4]<br>0xFFFFFF7F|- rs1_val == -1048577<br>                                                                                                                  |[0x8000039c]:srai a1, a0, 13<br>   |
|[0x800022d8]<br>0xFFFFFFEF|- rs1_val == -8388609<br>                                                                                                                  |[0x800003ac]:srai a1, a0, 19<br>   |
|[0x800022dc]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                 |[0x800003bc]:srai a1, a0, 29<br>   |
|[0x800022e0]<br>0xFFFBFFFF|- rs1_val == -33554433<br>                                                                                                                 |[0x800003cc]:srai a1, a0, 7<br>    |
|[0x800022e4]<br>0xFFFFF7FF|- rs1_val == -67108865<br>                                                                                                                 |[0x800003dc]:srai a1, a0, 15<br>   |
|[0x800022e8]<br>0xFFFFFBFF|- rs1_val == -134217729<br>                                                                                                                |[0x800003ec]:srai a1, a0, 17<br>   |
|[0x800022ec]<br>0xFFFFEFFF|- rs1_val == -536870913<br>                                                                                                                |[0x800003fc]:srai a1, a0, 17<br>   |
|[0x800022f0]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                        |[0x80000408]:srai a1, a0, 4<br>    |
|[0x800022f4]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                  |[0x80000414]:srai a1, a0, 27<br>   |
|[0x800022f8]<br>0x00000100|- rs1_val == 67108864<br>                                                                                                                  |[0x80000420]:srai a1, a0, 18<br>   |
|[0x800022fc]<br>0x00008000|- rs1_val == 268435456<br>                                                                                                                 |[0x8000042c]:srai a1, a0, 13<br>   |
|[0x80002300]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                      |[0x80000438]:srai a1, a0, 11<br>   |
|[0x80002304]<br>0x04000000|- rs1_val == 536870912<br>                                                                                                                 |[0x80000444]:srai a1, a0, 3<br>    |
|[0x80002308]<br>0xFFFFF7FF|- rs1_val == -1073741825<br>                                                                                                               |[0x80000454]:srai a1, a0, 19<br>   |
|[0x8000230c]<br>0x00100000|- rs1_val == 1073741824<br>                                                                                                                |[0x80000460]:srai a1, a0, 10<br>   |
|[0x80002310]<br>0x00000002|- rs1_val == 1431655765<br>                                                                                                                |[0x80000470]:srai a1, a0, 29<br>   |
|[0x80002314]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                        |[0x8000047c]:srai a1, a0, 5<br>    |
|[0x80002318]<br>0xD5555555|- rs1_val == -1431655766<br>                                                                                                               |[0x8000048c]:srai a1, a0, 1<br>    |
|[0x8000231c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                        |[0x80000498]:srai a1, a0, 29<br>   |
|[0x80002320]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                        |[0x800004a4]:srai a1, a0, 4<br>    |
|[0x80002324]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                       |[0x800004b0]:srai a1, a0, 13<br>   |
|[0x80002328]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                       |[0x800004bc]:srai a1, a0, 0<br>    |
