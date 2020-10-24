
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x80000f80')]      |
| SIG_REGION  | [('0x80003210', '0x800038d8')]      |
| COV_LABELS  | ('csubw',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/csubw-01.S/csubw-01.S    |

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

|            signature             |                                                                   coverpoints                                                                   |             code              |
|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|[0x80003210]<br>0x0000000000000000|- opcode : c.subw<br> - rs1 : 10<br> - rs2 : 10<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -1073741825<br> - rs1_val == -1073741825<br> |[0x800002e2]:c.subw a0, a0<br> |
|[0x80003218]<br>0xFFFFFFFF80000001|- rs1 : 12<br> - rs2 : 13<br> - rs1 != rs2<br> - rs2_val == -2147483649<br> - rs1_val == 2251799813685248<br>                                    |[0x800002f6]:c.subw a2, a3<br> |
|[0x80003220]<br>0xFFFFFFFFFFFFFFFF|- rs1 : 8<br> - rs2 : 11<br> - rs2_val == 1<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs1_val == -9223372036854775808<br>          |[0x80000304]:c.subw s0, a1<br> |
|[0x80003228]<br>0xFFFFFFFFFFFFF800|- rs1 : 14<br> - rs2 : 9<br> - rs1_val == 0<br> - rs2_val == 2048<br>                                                                            |[0x80000312]:c.subw a4, s1<br> |
|[0x80003230]<br>0x0000000000000000|- rs1 : 13<br> - rs2 : 8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -9007199254740993<br> - rs1_val == 9223372036854775807<br>            |[0x80000328]:c.subw a3, s0<br> |
|[0x80003238]<br>0x0000000000000002|- rs1 : 9<br> - rs2 : 15<br> - rs1_val == 1<br> - rs2_val == -17179869185<br>                                                                    |[0x80000338]:c.subw s1, a5<br> |
|[0x80003240]<br>0x0000000000000000|- rs1 : 15<br> - rs2 : 14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 137438953472<br>                |[0x8000034a]:c.subw a5, a4<br> |
|[0x80003248]<br>0x0000000000000000|- rs1 : 11<br> - rs2 : 12<br> - rs2_val == 0<br>                                                                                                 |[0x80000358]:c.subw a1, a2<br> |
|[0x80003250]<br>0x0000000000000001|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 70368744177664<br>                                            |[0x8000036c]:c.subw a0, a1<br> |
|[0x80003258]<br>0x0000000000000002|- rs2_val == 576460752303423488<br> - rs1_val == 2<br>                                                                                           |[0x8000037a]:c.subw a0, a1<br> |
|[0x80003260]<br>0x0000000000000004|- rs2_val == 137438953472<br> - rs1_val == 4<br>                                                                                                 |[0x80000388]:c.subw a0, a1<br> |
|[0x80003268]<br>0x0000000000000009|- rs2_val == -4398046511105<br> - rs1_val == 8<br>                                                                                               |[0x80000398]:c.subw a0, a1<br> |
|[0x80003270]<br>0x0000000000000010|- rs2_val == 1125899906842624<br> - rs1_val == 16<br>                                                                                            |[0x800003a6]:c.subw a0, a1<br> |
|[0x80003278]<br>0xFFFFFFFFFFFE0020|- rs2_val == 131072<br> - rs1_val == 32<br>                                                                                                      |[0x800003b4]:c.subw a0, a1<br> |
|[0x80003280]<br>0x0000000000000041|- rs2_val == -1125899906842625<br> - rs1_val == 64<br>                                                                                           |[0x800003c6]:c.subw a0, a1<br> |
|[0x80003288]<br>0xFFFFFFFFFFFE0080|- rs1_val == 128<br>                                                                                                                             |[0x800003d4]:c.subw a0, a1<br> |
|[0x80003290]<br>0x0000000000080101|- rs2_val == -524289<br> - rs1_val == 256<br>                                                                                                    |[0x800003e4]:c.subw a0, a1<br> |
|[0x80003298]<br>0x0000000000000201|- rs2_val == -36028797018963969<br> - rs1_val == 512<br>                                                                                         |[0x800003f6]:c.subw a0, a1<br> |
|[0x800032a0]<br>0x0000000000020401|- rs2_val == -131073<br> - rs1_val == 1024<br>                                                                                                   |[0x80000404]:c.subw a0, a1<br> |
|[0x800032a8]<br>0x0000000000000800|- rs2_val == 140737488355328<br> - rs1_val == 2048<br>                                                                                           |[0x80000416]:c.subw a0, a1<br> |
|[0x800032b0]<br>0x0000000000001001|- rs2_val == -1099511627777<br> - rs1_val == 4096<br>                                                                                            |[0x80000426]:c.subw a0, a1<br> |
|[0x800032b8]<br>0xFFFFFFFFFFFFE000|- rs2_val == 16384<br> - rs1_val == 8192<br>                                                                                                     |[0x80000430]:c.subw a0, a1<br> |
|[0x800032c0]<br>0x0000000000004000|- rs2_val == 8796093022208<br> - rs1_val == 16384<br>                                                                                            |[0x8000043e]:c.subw a0, a1<br> |
|[0x800032c8]<br>0x0000000000028001|- rs1_val == 32768<br>                                                                                                                           |[0x8000044a]:c.subw a0, a1<br> |
|[0x800032d0]<br>0x0000000000011001|- rs2_val == -4097<br> - rs1_val == 65536<br>                                                                                                    |[0x80000456]:c.subw a0, a1<br> |
|[0x800032d8]<br>0x0000000002020001|- rs2_val == -33554433<br> - rs1_val == 131072<br>                                                                                               |[0x80000466]:c.subw a0, a1<br> |
|[0x800032e0]<br>0x000000000003FE00|- rs2_val == 512<br> - rs1_val == 262144<br>                                                                                                     |[0x80000474]:c.subw a0, a1<br> |
|[0x800032e8]<br>0xFFFFFFFFFE080000|- rs2_val == 33554432<br> - rs1_val == 524288<br>                                                                                                |[0x80000482]:c.subw a0, a1<br> |
|[0x800032f0]<br>0x00000000000FFFF7|- rs1_val == 1048576<br>                                                                                                                         |[0x8000048e]:c.subw a0, a1<br> |
|[0x800032f8]<br>0x0000000000200000|- rs2_val == 4398046511104<br> - rs1_val == 2097152<br>                                                                                          |[0x8000049e]:c.subw a0, a1<br> |
|[0x80003300]<br>0x000000000040000A|- rs1_val == 4194304<br>                                                                                                                         |[0x800004aa]:c.subw a0, a1<br> |
|[0x80003308]<br>0x0000000008800001|- rs2_val == -134217729<br> - rs1_val == 8388608<br>                                                                                             |[0x800004ba]:c.subw a0, a1<br> |
|[0x80003310]<br>0x0000000000FF0000|- rs2_val == 65536<br> - rs1_val == 16777216<br>                                                                                                 |[0x800004c6]:c.subw a0, a1<br> |
|[0x80003318]<br>0x0000000002000000|- rs2_val == 9007199254740992<br> - rs1_val == 33554432<br>                                                                                      |[0x800004d6]:c.subw a0, a1<br> |
|[0x80003320]<br>0x0000000004000006|- rs1_val == 67108864<br>                                                                                                                        |[0x800004e2]:c.subw a0, a1<br> |
|[0x80003328]<br>0x0000000008002001|- rs2_val == -8193<br> - rs1_val == 134217728<br>                                                                                                |[0x800004f0]:c.subw a0, a1<br> |
|[0x80003330]<br>0x000000000FFE0000|- rs1_val == 268435456<br>                                                                                                                       |[0x800004fe]:c.subw a0, a1<br> |
|[0x80003338]<br>0x0000000020000081|- rs2_val == -129<br> - rs1_val == 536870912<br>                                                                                                 |[0x8000050c]:c.subw a0, a1<br> |
|[0x80003340]<br>0x0000000040000001|- rs1_val == 1073741824<br>                                                                                                                      |[0x8000051e]:c.subw a0, a1<br> |
|[0x80003348]<br>0xFFFFFFFF80000000|- rs1_val == 2147483648<br>                                                                                                                      |[0x80000530]:c.subw a0, a1<br> |
|[0x80003350]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                      |[0x80000542]:c.subw a0, a1<br> |
|[0x80003358]<br>0x0000000000000000|- rs2_val == 288230376151711744<br> - rs1_val == 8589934592<br>                                                                                  |[0x80000554]:c.subw a0, a1<br> |
|[0x80003360]<br>0xFFFFFFFFFFFFE000|- rs2_val == 8192<br> - rs1_val == 17179869184<br>                                                                                               |[0x80000562]:c.subw a0, a1<br> |
|[0x80003368]<br>0x0000000000000002|- rs2_val == -2<br> - rs1_val == 34359738368<br>                                                                                                 |[0x80000570]:c.subw a0, a1<br> |
|[0x80003370]<br>0x0000000000000001|- rs2_val == -274877906945<br> - rs1_val == 68719476736<br>                                                                                      |[0x80000584]:c.subw a0, a1<br> |
|[0x80003378]<br>0x0000000000000000|- rs2_val == 18014398509481984<br> - rs1_val == 274877906944<br>                                                                                 |[0x80000596]:c.subw a0, a1<br> |
|[0x80003380]<br>0x0000000000000001|- rs1_val == 549755813888<br>                                                                                                                    |[0x800005aa]:c.subw a0, a1<br> |
|[0x80003388]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                   |[0x800005bc]:c.subw a0, a1<br> |
|[0x80003390]<br>0xFFFFFFFFFFF80000|- rs2_val == 524288<br> - rs1_val == 2199023255552<br>                                                                                           |[0x800005cc]:c.subw a0, a1<br> |
|[0x80003398]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == 8<br> - rs1_val == 4398046511104<br>                                                                                                |[0x800005da]:c.subw a0, a1<br> |
|[0x800033a0]<br>0xFFFFFFFFFFFFFFF0|- rs2_val == 16<br> - rs1_val == 8796093022208<br>                                                                                               |[0x800005e8]:c.subw a0, a1<br> |
|[0x800033a8]<br>0x0000000000000001|- rs1_val == 17592186044416<br>                                                                                                                  |[0x800005fc]:c.subw a0, a1<br> |
|[0x800033b0]<br>0x0000000000000000|- rs2_val == 274877906944<br> - rs1_val == 35184372088832<br>                                                                                    |[0x8000060e]:c.subw a0, a1<br> |
|[0x800033b8]<br>0x0000000000000001|- rs2_val == -18014398509481985<br> - rs1_val == 140737488355328<br>                                                                             |[0x80000622]:c.subw a0, a1<br> |
|[0x800033c0]<br>0x0000000001000001|- rs2_val == -16777217<br> - rs1_val == 281474976710656<br>                                                                                      |[0x80000634]:c.subw a0, a1<br> |
|[0x800033c8]<br>0xFFFFFFFFFFFFF000|- rs2_val == 4096<br> - rs1_val == 562949953421312<br>                                                                                           |[0x80000642]:c.subw a0, a1<br> |
|[0x800033d0]<br>0x0000000004000001|- rs2_val == -67108865<br> - rs1_val == 1125899906842624<br>                                                                                     |[0x80000654]:c.subw a0, a1<br> |
|[0x800033d8]<br>0x0000000000000000|- rs2_val == 68719476736<br> - rs1_val == 4503599627370496<br>                                                                                   |[0x80000666]:c.subw a0, a1<br> |
|[0x800033e0]<br>0x0000000000000001|- rs2_val == -35184372088833<br> - rs1_val == 9007199254740992<br>                                                                               |[0x8000067a]:c.subw a0, a1<br> |
|[0x800033e8]<br>0x0000000000000001|- rs1_val == 18014398509481984<br>                                                                                                               |[0x8000068e]:c.subw a0, a1<br> |
|[0x800033f0]<br>0xFFFFFFFFFFFFFFC0|- rs2_val == 64<br> - rs1_val == 36028797018963968<br>                                                                                           |[0x8000069e]:c.subw a0, a1<br> |
|[0x800033f8]<br>0x0000000055555556|- rs2_val == -6148914691236517206<br> - rs1_val == 72057594037927936<br>                                                                         |[0x800006c4]:c.subw a0, a1<br> |
|[0x80003400]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                              |[0x800006d6]:c.subw a0, a1<br> |
|[0x80003408]<br>0xFFFFFFFFFFFE0000|- rs1_val == 288230376151711744<br>                                                                                                              |[0x800006e6]:c.subw a0, a1<br> |
|[0x80003410]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == 576460752303423488<br>                                                                                                              |[0x800006f6]:c.subw a0, a1<br> |
|[0x80003418]<br>0xFFFFFFFFFFFFC000|- rs1_val == 1152921504606846976<br>                                                                                                             |[0x80000704]:c.subw a0, a1<br> |
|[0x80003420]<br>0x0000000000000001|- rs2_val == -2199023255553<br> - rs1_val == 2305843009213693952<br>                                                                             |[0x80000718]:c.subw a0, a1<br> |
|[0x80003428]<br>0x0000000000000001|- rs2_val == -281474976710657<br> - rs1_val == 4611686018427387904<br>                                                                           |[0x8000072c]:c.subw a0, a1<br> |
|[0x80003430]<br>0xFFFFFFFFFFFFFEFE|- rs2_val == 256<br> - rs1_val == -2<br>                                                                                                         |[0x80000738]:c.subw a0, a1<br> |
|[0x80003438]<br>0xFFFFFFFFAAAAAAA8|- rs2_val == 6148914691236517205<br> - rs1_val == -3<br>                                                                                         |[0x8000075a]:c.subw a0, a1<br> |
|[0x80003440]<br>0x0000000000001FFC|- rs1_val == -5<br>                                                                                                                              |[0x80000766]:c.subw a0, a1<br> |
|[0x80003448]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == -68719476737<br> - rs1_val == -9<br>                                                                                                |[0x80000776]:c.subw a0, a1<br> |
|[0x80003450]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == 4294967296<br> - rs1_val == -17<br>                                                                                                 |[0x80000784]:c.subw a0, a1<br> |
|[0x80003458]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -33<br>                                                                                                                             |[0x80000796]:c.subw a0, a1<br> |
|[0x80003460]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                             |[0x800007a6]:c.subw a0, a1<br> |
|[0x80003468]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == 34359738368<br> - rs1_val == -129<br>                                                                                               |[0x800007b6]:c.subw a0, a1<br> |
|[0x80003470]<br>0x0000000001FFFF00|- rs1_val == -257<br>                                                                                                                            |[0x800007c6]:c.subw a0, a1<br> |
|[0x80003478]<br>0xFFFFFFFFFFFFFE00|- rs2_val == -140737488355329<br> - rs1_val == -513<br>                                                                                          |[0x800007d8]:c.subw a0, a1<br> |
|[0x80003480]<br>0xFFFFFFFFFFFFFC07|- rs1_val == -1025<br>                                                                                                                           |[0x800007e4]:c.subw a0, a1<br> |
|[0x80003488]<br>0xFFFFFFFFF8000000|- rs2_val == -72057594037927937<br> - rs1_val == -134217729<br>                                                                                  |[0x800007f8]:c.subw a0, a1<br> |
|[0x80003490]<br>0x0000000000000000|- rs2_val == -144115188075855873<br> - rs1_val == -562949953421313<br>                                                                           |[0x8000080e]:c.subw a0, a1<br> |
|[0x80003498]<br>0x0000000000000001|- rs2_val == -288230376151711745<br>                                                                                                             |[0x80000822]:c.subw a0, a1<br> |
|[0x800034a0]<br>0x0000000000000001|- rs2_val == -576460752303423489<br>                                                                                                             |[0x80000836]:c.subw a0, a1<br> |
|[0x800034a8]<br>0x0000000000000000|- rs2_val == -1152921504606846977<br> - rs1_val == -18014398509481985<br>                                                                        |[0x8000084c]:c.subw a0, a1<br> |
|[0x800034b0]<br>0x0000000000000001|- rs2_val == -2305843009213693953<br>                                                                                                            |[0x80000860]:c.subw a0, a1<br> |
|[0x800034b8]<br>0xFFFFFFFFFC000000|- rs2_val == -4611686018427387905<br> - rs1_val == -67108865<br>                                                                                 |[0x80000874]:c.subw a0, a1<br> |
|[0x800034c0]<br>0x000000001FFFF800|- rs2_val == -536870913<br> - rs1_val == -2049<br>                                                                                               |[0x80000886]:c.subw a0, a1<br> |
|[0x800034c8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                           |[0x80000896]:c.subw a0, a1<br> |
|[0x800034d0]<br>0xFFFFFFFFFFFFE000|- rs1_val == -8193<br>                                                                                                                           |[0x800008a8]:c.subw a0, a1<br> |
|[0x800034d8]<br>0xFFFFFFFFFFFFBFFD|- rs2_val == 2<br> - rs1_val == -16385<br>                                                                                                       |[0x800008b4]:c.subw a0, a1<br> |
|[0x800034e0]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 562949953421312<br> - rs1_val == -32769<br>                                                                                         |[0x800008c4]:c.subw a0, a1<br> |
|[0x800034e8]<br>0xFFFFFFFFFFFEFF7F|- rs2_val == 128<br> - rs1_val == -65537<br>                                                                                                     |[0x800008d2]:c.subw a0, a1<br> |
|[0x800034f0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -131073<br>                                                                                                                         |[0x800008e2]:c.subw a0, a1<br> |
|[0x800034f8]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -262145<br>                                                                                    |[0x800008f4]:c.subw a0, a1<br> |
|[0x80003500]<br>0xFFFFFFFFFFF80006|- rs1_val == -524289<br>                                                                                                                         |[0x80000902]:c.subw a0, a1<br> |
|[0x80003508]<br>0xFFFFFFFFFFF04000|- rs2_val == -16385<br> - rs1_val == -1048577<br>                                                                                                |[0x80000912]:c.subw a0, a1<br> |
|[0x80003510]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                        |[0x80000920]:c.subw a0, a1<br> |
|[0x80003518]<br>0x000000001FC00000|- rs1_val == -4194305<br>                                                                                                                        |[0x80000932]:c.subw a0, a1<br> |
|[0x80003520]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                        |[0x80000944]:c.subw a0, a1<br> |
|[0x80003528]<br>0xFFFFFFFFFF000080|- rs1_val == -16777217<br>                                                                                                                       |[0x80000954]:c.subw a0, a1<br> |
|[0x80003530]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                       |[0x80000966]:c.subw a0, a1<br> |
|[0x80003538]<br>0xFFFFFFFFEFFFFFBF|- rs1_val == -268435457<br>                                                                                                                      |[0x80000976]:c.subw a0, a1<br> |
|[0x80003540]<br>0xFFFFFFFFDFFDFFFF|- rs1_val == -536870913<br>                                                                                                                      |[0x80000986]:c.subw a0, a1<br> |
|[0x80003548]<br>0x000000007FFFFFFF|- rs2_val == 2305843009213693952<br> - rs1_val == -2147483649<br>                                                                                |[0x8000099a]:c.subw a0, a1<br> |
|[0x80003550]<br>0x0000000000000800|- rs2_val == -2049<br> - rs1_val == -4294967297<br>                                                                                              |[0x800009ae]:c.subw a0, a1<br> |
|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -8589934593<br>                                                                                    |[0x800009c2]:c.subw a0, a1<br> |
|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                    |[0x800009d6]:c.subw a0, a1<br> |
|[0x80003568]<br>0x0000000000000006|- rs1_val == -34359738369<br>                                                                                                                    |[0x800009e6]:c.subw a0, a1<br> |
|[0x80003570]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == 16777216<br> - rs1_val == -68719476737<br>                                                                                          |[0x800009f8]:c.subw a0, a1<br> |
|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                   |[0x80000a0c]:c.subw a0, a1<br> |
|[0x80003580]<br>0x0000000000000000|- rs1_val == -274877906945<br>                                                                                                                   |[0x80000a22]:c.subw a0, a1<br> |
|[0x80003588]<br>0x0000000000000000|- rs2_val == -137438953473<br> - rs1_val == -549755813889<br>                                                                                    |[0x80000a38]:c.subw a0, a1<br> |
|[0x80003590]<br>0x0000000004000000|- rs1_val == -1099511627777<br>                                                                                                                  |[0x80000a4c]:c.subw a0, a1<br> |
|[0x80003598]<br>0x0000000000020000|- rs1_val == -2199023255553<br>                                                                                                                  |[0x80000a5e]:c.subw a0, a1<br> |
|[0x800035a0]<br>0x0000000000000020|- rs2_val == -33<br> - rs1_val == -4398046511105<br>                                                                                             |[0x80000a70]:c.subw a0, a1<br> |
|[0x800035a8]<br>0x0000000000080000|- rs1_val == -8796093022209<br>                                                                                                                  |[0x80000a84]:c.subw a0, a1<br> |
|[0x800035b0]<br>0x0000000000000000|- rs1_val == -17592186044417<br>                                                                                                                 |[0x80000a9a]:c.subw a0, a1<br> |
|[0x800035b8]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -35184372088833<br>                                                                                                                 |[0x80000aac]:c.subw a0, a1<br> |
|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                 |[0x80000ac0]:c.subw a0, a1<br> |
|[0x800035c8]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 268435456<br> - rs1_val == -140737488355329<br>                                                                                     |[0x80000ad2]:c.subw a0, a1<br> |
|[0x800035d0]<br>0x0000000000000000|- rs2_val == -17592186044417<br> - rs1_val == -281474976710657<br>                                                                               |[0x80000ae8]:c.subw a0, a1<br> |
|[0x800035d8]<br>0x0000000000000000|- rs1_val == -1125899906842625<br>                                                                                                               |[0x80000afe]:c.subw a0, a1<br> |
|[0x800035e0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -2251799813685249<br>                                                                                                               |[0x80000b0e]:c.subw a0, a1<br> |
|[0x800035e8]<br>0x0000000000000007|- rs1_val == -4503599627370497<br>                                                                                                               |[0x80000b1e]:c.subw a0, a1<br> |
|[0x800035f0]<br>0x0000000000000008|- rs2_val == -9<br> - rs1_val == -9007199254740993<br>                                                                                           |[0x80000b2e]:c.subw a0, a1<br> |
|[0x800035f8]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 32768<br> - rs1_val == -36028797018963969<br>                                                                                       |[0x80000b3e]:c.subw a0, a1<br> |
|[0x80003600]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == 4194304<br> - rs1_val == -72057594037927937<br>                                                                                     |[0x80000b50]:c.subw a0, a1<br> |
|[0x80003608]<br>0x0000000000000000|- rs1_val == -144115188075855873<br>                                                                                                             |[0x80000b66]:c.subw a0, a1<br> |
|[0x80003610]<br>0x0000000000000100|- rs2_val == -257<br> - rs1_val == -288230376151711745<br>                                                                                       |[0x80000b78]:c.subw a0, a1<br> |
|[0x80003618]<br>0x0000000000000003|- rs1_val == -576460752303423489<br>                                                                                                             |[0x80000b88]:c.subw a0, a1<br> |
|[0x80003620]<br>0x0000000000040000|- rs2_val == -262145<br> - rs1_val == -1152921504606846977<br>                                                                                   |[0x80000b9c]:c.subw a0, a1<br> |
|[0x80003628]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -2305843009213693953<br>                                                                                                            |[0x80000bac]:c.subw a0, a1<br> |
|[0x80003630]<br>0x0000000000000000|- rs1_val == -4611686018427387905<br>                                                                                                            |[0x80000bc2]:c.subw a0, a1<br> |
|[0x80003638]<br>0x000000005555555C|- rs1_val == 6148914691236517205<br>                                                                                                             |[0x80000be4]:c.subw a0, a1<br> |
|[0x80003640]<br>0xFFFFFFFFAAAAAAAB|- rs1_val == -6148914691236517206<br>                                                                                                            |[0x80000c0c]:c.subw a0, a1<br> |
|[0x80003648]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == 4<br>                                                                                                                               |[0x80000c1a]:c.subw a0, a1<br> |
|[0x80003650]<br>0xFFFFFFFFFFFFFFE0|- rs2_val == 32<br>                                                                                                                              |[0x80000c2a]:c.subw a0, a1<br> |
|[0x80003658]<br>0xFFFFFFFFFFFFFBDF|- rs2_val == 1024<br>                                                                                                                            |[0x80000c38]:c.subw a0, a1<br> |
|[0x80003660]<br>0xFFFFFFFFFFFC0000|- rs2_val == 262144<br>                                                                                                                          |[0x80000c48]:c.subw a0, a1<br> |
|[0x80003668]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 1048576<br>                                                                                                                         |[0x80000c5a]:c.subw a0, a1<br> |
|[0x80003670]<br>0xFFFFFFFFFFDFFFF8|- rs2_val == 2097152<br>                                                                                                                         |[0x80000c66]:c.subw a0, a1<br> |
|[0x80003678]<br>0xFFFFFFFFFF800000|- rs2_val == 8388608<br>                                                                                                                         |[0x80000c76]:c.subw a0, a1<br> |
|[0x80003680]<br>0xFFFFFFFFFBFFF7FF|- rs2_val == 67108864<br>                                                                                                                        |[0x80000c86]:c.subw a0, a1<br> |
|[0x80003688]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 134217728<br>                                                                                                                       |[0x80000c98]:c.subw a0, a1<br> |
|[0x80003690]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == 536870912<br>                                                                                                                       |[0x80000caa]:c.subw a0, a1<br> |
|[0x80003698]<br>0xFFFFFFFFBFFFFFF9|- rs2_val == 1073741824<br>                                                                                                                      |[0x80000cb6]:c.subw a0, a1<br> |
|[0x800036a0]<br>0x000000003FFFFFFF|- rs2_val == 2147483648<br>                                                                                                                      |[0x80000cc8]:c.subw a0, a1<br> |
|[0x800036a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                      |[0x80000cdc]:c.subw a0, a1<br> |
|[0x800036b0]<br>0x0000000000000000|- rs2_val == 17179869184<br>                                                                                                                     |[0x80000cee]:c.subw a0, a1<br> |
|[0x800036b8]<br>0x0000000000000400|- rs2_val == 549755813888<br>                                                                                                                    |[0x80000cfe]:c.subw a0, a1<br> |
|[0x800036c0]<br>0x0000000000000000|- rs2_val == 1099511627776<br>                                                                                                                   |[0x80000d10]:c.subw a0, a1<br> |
|[0x800036c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                                   |[0x80000d24]:c.subw a0, a1<br> |
|[0x800036d0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 17592186044416<br>                                                                                                                  |[0x80000d32]:c.subw a0, a1<br> |
|[0x800036d8]<br>0x0000000000200000|- rs2_val == 36028797018963968<br>                                                                                                               |[0x80000d42]:c.subw a0, a1<br> |
|[0x800036e0]<br>0x0000000000000000|- rs2_val == 72057594037927936<br>                                                                                                               |[0x80000d54]:c.subw a0, a1<br> |
|[0x800036e8]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 144115188075855872<br>                                                                                                              |[0x80000d64]:c.subw a0, a1<br> |
|[0x800036f0]<br>0x000000007FFFFFFF|- rs2_val == 4611686018427387904<br>                                                                                                             |[0x80000d78]:c.subw a0, a1<br> |
|[0x800036f8]<br>0x0000000000000002|- rs2_val == -3<br>                                                                                                                              |[0x80000d88]:c.subw a0, a1<br> |
|[0x80003700]<br>0xFFFFFFFFFFFFFFC4|- rs2_val == -5<br>                                                                                                                              |[0x80000d94]:c.subw a0, a1<br> |
|[0x80003708]<br>0xFFFFFFFFF8000010|- rs2_val == -17<br>                                                                                                                             |[0x80000da2]:c.subw a0, a1<br> |
|[0x80003710]<br>0x0000000000000042|- rs2_val == -65<br>                                                                                                                             |[0x80000dae]:c.subw a0, a1<br> |
|[0x80003718]<br>0x0000000000000201|- rs2_val == -513<br>                                                                                                                            |[0x80000dbe]:c.subw a0, a1<br> |
|[0x80003720]<br>0xFFFFFFFFFE000400|- rs2_val == -1025<br>                                                                                                                           |[0x80000dce]:c.subw a0, a1<br> |
|[0x80003728]<br>0x0000000000000001|- rs2_val == -4503599627370497<br>                                                                                                               |[0x80000de2]:c.subw a0, a1<br> |
|[0x80003730]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 2251799813685248<br>                                                                                                                |[0x80000df4]:c.subw a0, a1<br> |
|[0x80003738]<br>0x0000000000008101|- rs2_val == -32769<br>                                                                                                                          |[0x80000e02]:c.subw a0, a1<br> |
|[0x80003740]<br>0x0000000000010001|- rs2_val == -65537<br>                                                                                                                          |[0x80000e12]:c.subw a0, a1<br> |
|[0x80003748]<br>0x0000000055655556|- rs2_val == -1048577<br>                                                                                                                        |[0x80000e38]:c.subw a0, a1<br> |
|[0x80003750]<br>0x0000000000000000|- rs2_val == 70368744177664<br>                                                                                                                  |[0x80000e4a]:c.subw a0, a1<br> |
|[0x80003758]<br>0x0000000000C00001|- rs2_val == -4194305<br>                                                                                                                        |[0x80000e5a]:c.subw a0, a1<br> |
|[0x80003760]<br>0x0000000000800001|- rs2_val == -8388609<br>                                                                                                                        |[0x80000e6c]:c.subw a0, a1<br> |
|[0x80003768]<br>0x0000000010000002|- rs2_val == -268435457<br>                                                                                                                      |[0x80000e7a]:c.subw a0, a1<br> |
|[0x80003778]<br>0x0000000000000001|- rs2_val == -4294967297<br>                                                                                                                     |[0x80000ea0]:c.subw a0, a1<br> |
|[0x80003780]<br>0x0000000000000001|- rs2_val == -8589934593<br>                                                                                                                     |[0x80000eb4]:c.subw a0, a1<br> |
|[0x80003788]<br>0xFFFFFFFFFFFF8000|- rs2_val == -34359738369<br>                                                                                                                    |[0x80000ec6]:c.subw a0, a1<br> |
|[0x80003790]<br>0xFFFFFFFFFFF00000|- rs2_val == -549755813889<br>                                                                                                                   |[0x80000eda]:c.subw a0, a1<br> |
|[0x80003798]<br>0x0000000000000081|- rs2_val == -8796093022209<br>                                                                                                                  |[0x80000eec]:c.subw a0, a1<br> |
|[0x800037a0]<br>0x0000000000100000|- rs2_val == 35184372088832<br>                                                                                                                  |[0x80000efc]:c.subw a0, a1<br> |
|[0x800037a8]<br>0x0000000000000000|- rs2_val == -70368744177665<br>                                                                                                                 |[0x80000f12]:c.subw a0, a1<br> |
|[0x800037b0]<br>0x0000000008000001|- rs2_val == -562949953421313<br>                                                                                                                |[0x80000f24]:c.subw a0, a1<br> |
|[0x800037b8]<br>0xFFFFFFFFFC000000|- rs2_val == -2251799813685249<br>                                                                                                               |[0x80000f38]:c.subw a0, a1<br> |
|[0x800037c0]<br>0x0000000000000000|- rs2_val == 4503599627370496<br>                                                                                                                |[0x80000f4a]:c.subw a0, a1<br> |
|[0x800037c8]<br>0x0000000000200000|- rs2_val == -2097153<br>                                                                                                                        |[0x80000f5e]:c.subw a0, a1<br> |
