
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x80000390', '0x80000c30')]      |
| SIG_REGION  | [('0x80002210', '0x80002758')]      |
| COV_LABELS  | ('slliw',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/slliw-01.S/slliw-01.S    |

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

|            signature             |                                                                          coverpoints                                                                          |                code                |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
|[0x80002210]<br>0xFFFFFFFFFDFF8000|- opcode : slliw<br> - rs1 : 18<br> - rd : 3<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -1025<br> - imm_val == 15<br> |[0x8000039c]:slli gp, s2, 15<br>    |
|[0x80002218]<br>0x0000000000000000|- rs1 : 0<br> - rd : 0<br> - rs1 == rd<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - imm_val == 1<br>                                             |[0x800003a8]:slli zero, zero, 1<br> |
|[0x80002220]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 29<br> - rd : 24<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -35184372088833<br>                                                               |[0x800003bc]:slli s8, t4, 0<br>     |
|[0x80002228]<br>0x0000000000000009|- rs1 : 6<br> - rd : 12<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                 |[0x800003c8]:slli a2, t1, 0<br>     |
|[0x80002230]<br>0x0000000000000000|- rs1 : 25<br> - rd : 10<br> - rs1_val < 0 and imm_val == 31<br>                                                                                               |[0x800003d4]:slli a0, s9, 31<br>    |
|[0x80002238]<br>0xFFFFFFFF80000000|- rs1 : 28<br> - rd : 11<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val > 0 and imm_val == 31<br>                                            |[0x800003e0]:slli a1, t3, 31<br>    |
|[0x80002240]<br>0x0000000000000180|- rs1 : 4<br> - rd : 6<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br>                                                                           |[0x800003ec]:slli t1, tp, 6<br>     |
|[0x80002248]<br>0x0000000000000000|- rs1 : 31<br> - rd : 18<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                           |[0x800003fc]:slli s2, t6, 9<br>     |
|[0x80002250]<br>0x0000000000000000|- rs1 : 8<br> - rd : 14<br>                                                                                                                                    |[0x80000408]:slli a4, fp, 9<br>     |
|[0x80002258]<br>0xFFFFFFFF80000000|- rs1 : 3<br> - rd : 29<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                            |[0x8000041c]:slli t4, gp, 31<br>    |
|[0x80002260]<br>0x0000000000000002|- rs1 : 16<br> - rd : 15<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                                           |[0x80000428]:slli a5, a6, 1<br>     |
|[0x80002268]<br>0xFFFFFFFFFFFFFFFC|- rs1 : 27<br> - rd : 21<br> - rs1_val == -8589934593<br> - imm_val == 2<br>                                                                                   |[0x8000043c]:slli s5, s11, 2<br>    |
|[0x80002270]<br>0xFFFFFFFFFFFEFFF0|- rs1 : 19<br> - rd : 23<br> - rs1_val == -4097<br> - imm_val == 4<br>                                                                                         |[0x8000044c]:slli s7, s3, 4<br>     |
|[0x80002278]<br>0x0000000000000000|- rs1 : 2<br> - rd : 13<br> - rs1_val == 144115188075855872<br> - imm_val == 8<br>                                                                             |[0x8000045c]:slli a3, sp, 8<br>     |
|[0x80002280]<br>0x0000000008000000|- rs1 : 21<br> - rd : 17<br> - rs1_val == 2048<br> - imm_val == 16<br>                                                                                         |[0x8000046c]:slli a7, s5, 16<br>    |
|[0x80002288]<br>0x0000000000000000|- rs1 : 11<br> - rd : 20<br> - rs1_val == 72057594037927936<br> - imm_val == 30<br>                                                                            |[0x8000047c]:slli s4, a1, 30<br>    |
|[0x80002290]<br>0xFFFFFFFFE0000000|- rs1 : 10<br> - rd : 22<br> - imm_val == 29<br>                                                                                                               |[0x80000490]:slli s6, a0, 29<br>    |
|[0x80002298]<br>0x0000000000000000|- rs1 : 20<br> - rd : 30<br> - rs1_val == 68719476736<br> - imm_val == 27<br>                                                                                  |[0x800004a0]:slli t5, s4, 27<br>    |
|[0x800022a0]<br>0xFFFFFFFFFF800000|- rs1 : 17<br> - rd : 2<br> - rs1_val == -281474976710657<br> - imm_val == 23<br>                                                                              |[0x800004b4]:slli sp, a7, 23<br>    |
|[0x800022a8]<br>0x0000000000000000|- rs1 : 7<br> - rd : 4<br> - rs1_val == 2305843009213693952<br> - imm_val == 21<br>                                                                            |[0x800004c4]:slli tp, t2, 21<br>    |
|[0x800022b0]<br>0x0000000000000000|- rs1 : 26<br> - rd : 28<br> - rs1_val == 67108864<br> - imm_val == 10<br>                                                                                     |[0x800004d0]:slli t3, s10, 10<br>   |
|[0x800022b8]<br>0x0000000000000100|- rs1 : 13<br> - rd : 8<br> - rs1_val == 2<br>                                                                                                                 |[0x800004e4]:slli fp, a3, 7<br>     |
|[0x800022c0]<br>0x0000000000100000|- rs1 : 5<br> - rd : 19<br> - rs1_val == 4<br>                                                                                                                 |[0x800004f0]:slli s3, t0, 18<br>    |
|[0x800022c8]<br>0x0000000000000020|- rs1 : 9<br> - rd : 1<br> - rs1_val == 8<br>                                                                                                                  |[0x800004fc]:slli ra, s1, 2<br>     |
|[0x800022d0]<br>0x0000000000100000|- rs1 : 14<br> - rd : 31<br> - rs1_val == 16<br>                                                                                                               |[0x80000508]:slli t6, a4, 16<br>    |
|[0x800022d8]<br>0x0000000001000000|- rs1 : 24<br> - rd : 26<br> - rs1_val == 64<br>                                                                                                               |[0x80000514]:slli s10, s8, 18<br>   |
|[0x800022e0]<br>0x0000000000200000|- rs1 : 12<br> - rd : 5<br> - rs1_val == 128<br>                                                                                                               |[0x80000520]:slli t0, a2, 14<br>    |
|[0x800022e8]<br>0x0000000000000000|- rs1 : 15<br> - rd : 9<br> - rs1_val == 256<br>                                                                                                               |[0x8000052c]:slli s1, a5, 27<br>    |
|[0x800022f0]<br>0x0000000000004000|- rs1 : 30<br> - rd : 27<br> - rs1_val == 512<br>                                                                                                              |[0x80000538]:slli s11, t5, 5<br>    |
|[0x800022f8]<br>0x0000000000004000|- rs1 : 22<br> - rd : 7<br> - rs1_val == 1024<br>                                                                                                              |[0x80000544]:slli t2, s6, 4<br>     |
|[0x80002300]<br>0x0000000004000000|- rs1 : 23<br> - rd : 16<br> - rs1_val == 4096<br>                                                                                                             |[0x80000550]:slli a6, s7, 14<br>    |
|[0x80002308]<br>0x0000000000800000|- rs1 : 1<br> - rd : 25<br> - rs1_val == 8192<br>                                                                                                              |[0x8000055c]:slli s9, ra, 10<br>    |
|[0x80002310]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                                         |[0x80000568]:slli a1, a0, 23<br>    |
|[0x80002318]<br>0x0000000000100000|- rs1_val == 32768<br>                                                                                                                                         |[0x80000574]:slli a1, a0, 5<br>     |
|[0x80002320]<br>0x0000000000040000|- rs1_val == 65536<br>                                                                                                                                         |[0x80000580]:slli a1, a0, 2<br>     |
|[0x80002328]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                        |[0x8000058c]:slli a1, a0, 21<br>    |
|[0x80002330]<br>0x0000000000400000|- rs1_val == 262144<br>                                                                                                                                        |[0x80000598]:slli a1, a0, 4<br>     |
|[0x80002338]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                                        |[0x800005a4]:slli a1, a0, 31<br>    |
|[0x80002340]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                       |[0x800005b0]:slli a1, a0, 16<br>    |
|[0x80002348]<br>0x0000000002000000|- rs1_val == 2097152<br>                                                                                                                                       |[0x800005bc]:slli a1, a0, 4<br>     |
|[0x80002350]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                       |[0x800005c8]:slli a1, a0, 15<br>    |
|[0x80002358]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                       |[0x800005d4]:slli a1, a0, 12<br>    |
|[0x80002360]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                      |[0x800005e0]:slli a1, a0, 16<br>    |
|[0x80002368]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                      |[0x800005ec]:slli a1, a0, 14<br>    |
|[0x80002370]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                     |[0x800005f8]:slli a1, a0, 17<br>    |
|[0x80002378]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                     |[0x80000604]:slli a1, a0, 31<br>    |
|[0x80002380]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                     |[0x80000610]:slli a1, a0, 31<br>    |
|[0x80002388]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                    |[0x8000061c]:slli a1, a0, 7<br>     |
|[0x80002390]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                    |[0x8000062c]:slli a1, a0, 2<br>     |
|[0x80002398]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                    |[0x8000063c]:slli a1, a0, 14<br>    |
|[0x800023a0]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                    |[0x8000064c]:slli a1, a0, 17<br>    |
|[0x800023a8]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                   |[0x8000065c]:slli a1, a0, 15<br>    |
|[0x800023b0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                   |[0x8000066c]:slli a1, a0, 6<br>     |
|[0x800023b8]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                  |[0x8000067c]:slli a1, a0, 2<br>     |
|[0x800023c0]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                  |[0x8000068c]:slli a1, a0, 8<br>     |
|[0x800023c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                  |[0x8000069c]:slli a1, a0, 3<br>     |
|[0x800023d0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                 |[0x800006ac]:slli a1, a0, 8<br>     |
|[0x800023d8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                 |[0x800006bc]:slli a1, a0, 16<br>    |
|[0x800023e0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                 |[0x800006cc]:slli a1, a0, 3<br>     |
|[0x800023e8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                 |[0x800006dc]:slli a1, a0, 5<br>     |
|[0x800023f0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                |[0x800006ec]:slli a1, a0, 2<br>     |
|[0x800023f8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                |[0x800006fc]:slli a1, a0, 18<br>    |
|[0x80002400]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                |[0x8000070c]:slli a1, a0, 3<br>     |
|[0x80002408]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                               |[0x8000071c]:slli a1, a0, 17<br>    |
|[0x80002410]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                               |[0x8000072c]:slli a1, a0, 1<br>     |
|[0x80002418]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                               |[0x8000073c]:slli a1, a0, 23<br>    |
|[0x80002420]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                              |[0x8000074c]:slli a1, a0, 30<br>    |
|[0x80002428]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                              |[0x8000075c]:slli a1, a0, 29<br>    |
|[0x80002430]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                              |[0x8000076c]:slli a1, a0, 4<br>     |
|[0x80002438]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                              |[0x8000077c]:slli a1, a0, 14<br>    |
|[0x80002440]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                             |[0x8000078c]:slli a1, a0, 12<br>    |
|[0x80002448]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                             |[0x8000079c]:slli a1, a0, 18<br>    |
|[0x80002450]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                            |[0x800007ac]:slli a1, a0, 29<br>    |
|[0x80002458]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -2199023255553<br>                                                                                                                                |[0x800007c0]:slli a1, a0, 9<br>     |
|[0x80002460]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -4398046511105<br>                                                                                                                                |[0x800007d4]:slli a1, a0, 5<br>     |
|[0x80002468]<br>0xFFFFFFFFFFF80000|- rs1_val == -8796093022209<br>                                                                                                                                |[0x800007e8]:slli a1, a0, 19<br>    |
|[0x80002470]<br>0xFFFFFFFFFFF80000|- rs1_val == -17592186044417<br>                                                                                                                               |[0x800007fc]:slli a1, a0, 19<br>    |
|[0x80002478]<br>0xFFFFFFFFFFFFE000|- rs1_val == -70368744177665<br>                                                                                                                               |[0x80000810]:slli a1, a0, 13<br>    |
|[0x80002480]<br>0xFFFFFFFFFFFFC000|- rs1_val == -140737488355329<br>                                                                                                                              |[0x80000824]:slli a1, a0, 14<br>    |
|[0x80002488]<br>0xFFFFFFFFFFFFF800|- rs1_val == -562949953421313<br>                                                                                                                              |[0x80000838]:slli a1, a0, 11<br>    |
|[0x80002490]<br>0xFFFFFFFFFFF80000|- rs1_val == -1125899906842625<br>                                                                                                                             |[0x8000084c]:slli a1, a0, 19<br>    |
|[0x80002498]<br>0xFFFFFFFFFFE00000|- rs1_val == -2251799813685249<br>                                                                                                                             |[0x80000860]:slli a1, a0, 21<br>    |
|[0x800024a0]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -4503599627370497<br>                                                                                                                             |[0x80000874]:slli a1, a0, 5<br>     |
|[0x800024a8]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -9007199254740993<br>                                                                                                                             |[0x80000888]:slli a1, a0, 2<br>     |
|[0x800024b0]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -18014398509481985<br>                                                                                                                            |[0x8000089c]:slli a1, a0, 8<br>     |
|[0x800024b8]<br>0xFFFFFFFFFFFF8000|- rs1_val == -36028797018963969<br>                                                                                                                            |[0x800008b0]:slli a1, a0, 15<br>    |
|[0x800024c0]<br>0xFFFFFFFFFFFFF000|- rs1_val == -72057594037927937<br>                                                                                                                            |[0x800008c4]:slli a1, a0, 12<br>    |
|[0x800024c8]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -144115188075855873<br>                                                                                                                           |[0x800008d8]:slli a1, a0, 6<br>     |
|[0x800024d0]<br>0xFFFFFFFFFFFFFF80|- rs1_val == -288230376151711745<br>                                                                                                                           |[0x800008ec]:slli a1, a0, 7<br>     |
|[0x800024d8]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -576460752303423489<br>                                                                                                                           |[0x80000900]:slli a1, a0, 2<br>     |
|[0x800024e0]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -1152921504606846977<br>                                                                                                                          |[0x80000914]:slli a1, a0, 6<br>     |
|[0x800024e8]<br>0xFFFFFFFFFFFF8000|- rs1_val == -2305843009213693953<br>                                                                                                                          |[0x80000928]:slli a1, a0, 15<br>    |
|[0x800024f0]<br>0xFFFFFFFFE0000000|- rs1_val == -4611686018427387905<br>                                                                                                                          |[0x8000093c]:slli a1, a0, 29<br>    |
|[0x800024f8]<br>0xFFFFFFFFAAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                           |[0x80000964]:slli a1, a0, 1<br>     |
|[0x80002500]<br>0xFFFFFFFFAAAAAAA8|- rs1_val == -6148914691236517206<br>                                                                                                                          |[0x8000098c]:slli a1, a0, 2<br>     |
|[0x80002508]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                            |[0x8000099c]:slli a1, a0, 19<br>    |
|[0x80002510]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                           |[0x800009ac]:slli a1, a0, 15<br>    |
|[0x80002518]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                           |[0x800009bc]:slli a1, a0, 7<br>     |
|[0x80002520]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -2<br>                                                                                                                                            |[0x800009c8]:slli a1, a0, 4<br>     |
|[0x80002528]<br>0xFFFFFFFFFFE80000|- rs1_val == -3<br>                                                                                                                                            |[0x800009d4]:slli a1, a0, 19<br>    |
|[0x80002530]<br>0xFFFFFFFFFFFFEC00|- rs1_val == -5<br>                                                                                                                                            |[0x800009e0]:slli a1, a0, 10<br>    |
|[0x80002538]<br>0xFFFFFFFFFFFFFB80|- rs1_val == -9<br>                                                                                                                                            |[0x800009ec]:slli a1, a0, 7<br>     |
|[0x80002540]<br>0xFFFFFFFFFFFFEF00|- rs1_val == -17<br>                                                                                                                                           |[0x800009f8]:slli a1, a0, 8<br>     |
|[0x80002548]<br>0xFFFFFFFFFFFFFFBE|- rs1_val == -33<br>                                                                                                                                           |[0x80000a04]:slli a1, a0, 1<br>     |
|[0x80002550]<br>0xFFFFFFFFFFDF8000|- rs1_val == -65<br>                                                                                                                                           |[0x80000a10]:slli a1, a0, 15<br>    |
|[0x80002558]<br>0xFFFFFFFFFFF7F000|- rs1_val == -129<br>                                                                                                                                          |[0x80000a1c]:slli a1, a0, 12<br>    |
|[0x80002560]<br>0xFFFFFFFFFFFFFBFC|- rs1_val == -257<br>                                                                                                                                          |[0x80000a28]:slli a1, a0, 2<br>     |
|[0x80002568]<br>0xFFFFFFFFFF800000|- rs1_val == -513<br>                                                                                                                                          |[0x80000a34]:slli a1, a0, 23<br>    |
|[0x80002570]<br>0xFFFFFFFFF7FF0000|- rs1_val == -2049<br>                                                                                                                                         |[0x80000a44]:slli a1, a0, 16<br>    |
|[0x80002578]<br>0xFFFFFFFFFFFEFFF8|- rs1_val == -8193<br>                                                                                                                                         |[0x80000a54]:slli a1, a0, 3<br>     |
|[0x80002580]<br>0xFFFFFFFFFFF80000|- rs1_val == -16385<br>                                                                                                                                        |[0x80000a64]:slli a1, a0, 19<br>    |
|[0x80002588]<br>0xFFFFFFFFEFFFE000|- rs1_val == -32769<br>                                                                                                                                        |[0x80000a74]:slli a1, a0, 13<br>    |
|[0x80002590]<br>0xFFFFFFFFBFFFC000|- rs1_val == -65537<br>                                                                                                                                        |[0x80000a84]:slli a1, a0, 14<br>    |
|[0x80002598]<br>0xFFFFFFFFFFFF8000|- rs1_val == -131073<br>                                                                                                                                       |[0x80000a94]:slli a1, a0, 15<br>    |
|[0x800025a0]<br>0xFFFFFFFFC0000000|- rs1_val == -262145<br>                                                                                                                                       |[0x80000aa4]:slli a1, a0, 30<br>    |
|[0x800025a8]<br>0x000000007FFFF000|- rs1_val == -524289<br>                                                                                                                                       |[0x80000ab4]:slli a1, a0, 12<br>    |
|[0x800025b0]<br>0xFFFFFFFFC0000000|- rs1_val == -1048577<br>                                                                                                                                      |[0x80000ac4]:slli a1, a0, 30<br>    |
|[0x800025b8]<br>0xFFFFFFFF80000000|- rs1_val == -2097153<br>                                                                                                                                      |[0x80000ad4]:slli a1, a0, 31<br>    |
|[0x800025c0]<br>0xFFFFFFFF80000000|- rs1_val == -4194305<br>                                                                                                                                      |[0x80000ae4]:slli a1, a0, 31<br>    |
|[0x800025c8]<br>0xFFFFFFFFEFFFFFE0|- rs1_val == -8388609<br>                                                                                                                                      |[0x80000af4]:slli a1, a0, 5<br>     |
|[0x800025d0]<br>0xFFFFFFFFFF800000|- rs1_val == -16777217<br>                                                                                                                                     |[0x80000b04]:slli a1, a0, 23<br>    |
|[0x800025d8]<br>0xFFFFFFFFFFFFC000|- rs1_val == -33554433<br>                                                                                                                                     |[0x80000b14]:slli a1, a0, 14<br>    |
|[0x800025e0]<br>0xFFFFFFFFFFFFF000|- rs1_val == -67108865<br>                                                                                                                                     |[0x80000b24]:slli a1, a0, 12<br>    |
|[0x800025e8]<br>0xFFFFFFFFFFFE0000|- rs1_val == -134217729<br>                                                                                                                                    |[0x80000b34]:slli a1, a0, 17<br>    |
|[0x800025f0]<br>0xFFFFFFFFE0000000|- rs1_val == -268435457<br>                                                                                                                                    |[0x80000b44]:slli a1, a0, 29<br>    |
|[0x800025f8]<br>0xFFFFFFFFF8000000|- rs1_val == -536870913<br>                                                                                                                                    |[0x80000b54]:slli a1, a0, 27<br>    |
|[0x80002600]<br>0xFFFFFFFFFFFE0000|- rs1_val == -1073741825<br>                                                                                                                                   |[0x80000b64]:slli a1, a0, 17<br>    |
|[0x80002608]<br>0xFFFFFFFFFF800000|- rs1_val == -2147483649<br>                                                                                                                                   |[0x80000b78]:slli a1, a0, 23<br>    |
|[0x80002610]<br>0xFFFFFFFFFFFFC000|- rs1_val == -4294967297<br>                                                                                                                                   |[0x80000b8c]:slli a1, a0, 14<br>    |
|[0x80002618]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -17179869185<br>                                                                                                                                  |[0x80000ba0]:slli a1, a0, 1<br>     |
|[0x80002620]<br>0xFFFFFFFFFFFE0000|- rs1_val == -34359738369<br>                                                                                                                                  |[0x80000bb4]:slli a1, a0, 17<br>    |
|[0x80002628]<br>0xFFFFFFFFFFFF0000|- rs1_val == -68719476737<br>                                                                                                                                  |[0x80000bc8]:slli a1, a0, 16<br>    |
|[0x80002630]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -137438953473<br>                                                                                                                                 |[0x80000bdc]:slli a1, a0, 4<br>     |
|[0x80002638]<br>0xFFFFFFFFFFFFC000|- rs1_val == -274877906945<br>                                                                                                                                 |[0x80000bf0]:slli a1, a0, 14<br>    |
|[0x80002640]<br>0xFFFFFFFFE0000000|- rs1_val == -549755813889<br>                                                                                                                                 |[0x80000c04]:slli a1, a0, 29<br>    |
|[0x80002648]<br>0xFFFFFFFFFFFF8000|- rs1_val == -1099511627777<br>                                                                                                                                |[0x80000c18]:slli a1, a0, 15<br>    |
|[0x80002650]<br>0x0000000000000040|- rs1_val == 32<br>                                                                                                                                            |[0x80000c24]:slli a1, a0, 1<br>     |
