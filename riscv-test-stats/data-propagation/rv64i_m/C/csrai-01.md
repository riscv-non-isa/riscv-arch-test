
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 64      |
| TEST_REGION | [('0x800002ce', '0x800008f0')]      |
| SIG_REGION  | [('0x80002210', '0x80002730')]      |
| COV_LABELS  | ('csrai',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/csrai-01.S/csrai-01.S    |

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

|            signature             |                                                            coverpoints                                                             |             code              |
|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|[0x80002210]<br>0xFFFFFFFFFFFFFFFE|- opcode : c.srai<br> - rs1 : 10<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -4611686018427387905<br> - imm_val == 62<br> |[0x800002de]:c.srai a0, 62<br> |
|[0x80002218]<br>0x0000000000000200|- rs1 : 11<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 1073741824<br> - imm_val == 21<br>                                 |[0x800002e8]:c.srai a1, 21<br> |
|[0x80002220]<br>0x0000000000000000|- rs1 : 12<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 4<br> - imm_val == 4<br>                  |[0x800002f0]:c.srai a2, 4<br>  |
|[0x80002228]<br>0xFFFFF00000000000|- rs1 : 14<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>            |[0x800002fc]:c.srai a4, 19<br> |
|[0x80002230]<br>0x0000000000000000|- rs1 : 15<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                               |[0x80000304]:c.srai a5, 21<br> |
|[0x80002238]<br>0x000FFFFFFFFFFFFF|- rs1 : 13<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>            |[0x80000312]:c.srai a3, 11<br> |
|[0x80002240]<br>0x0000000000000000|- rs1 : 9<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                             |[0x8000031a]:c.srai s1, 7<br>  |
|[0x80002248]<br>0x0000000000000800|- rs1 : 8<br> - rs1_val == 4096<br> - imm_val == 1<br>                                                                              |[0x80000322]:c.srai s0, 1<br>  |
|[0x80002250]<br>0x0000000000002000|- rs1_val == 32768<br> - imm_val == 2<br>                                                                                           |[0x8000032a]:c.srai a0, 2<br>  |
|[0x80002258]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -281474976710657<br> - imm_val == 8<br>                                                                                |[0x80000338]:c.srai a0, 8<br>  |
|[0x80002260]<br>0x0000000000040000|- rs1_val == 17179869184<br> - imm_val == 16<br>                                                                                    |[0x80000344]:c.srai a0, 16<br> |
|[0x80002268]<br>0x0000000000000000|- rs1_val == 268435456<br> - imm_val == 32<br>                                                                                      |[0x8000034e]:c.srai a0, 32<br> |
|[0x80002270]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br> - imm_val == 61<br>                                                                                          |[0x80000358]:c.srai a0, 61<br> |
|[0x80002278]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8388609<br> - imm_val == 59<br>                                                                                       |[0x80000364]:c.srai a0, 59<br> |
|[0x80002280]<br>0x0000000000000000|- imm_val == 55<br>                                                                                                                 |[0x8000036c]:c.srai a0, 55<br> |
|[0x80002288]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br> - imm_val == 47<br>                                                                                          |[0x80000378]:c.srai a0, 47<br> |
|[0x80002290]<br>0x00000000AAAAAAAA|- rs1_val == 6148914691236517205<br> - imm_val == 31<br>                                                                            |[0x80000398]:c.srai a0, 31<br> |
|[0x80002298]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br> - imm_val == 42<br>                                                                                          |[0x800003a2]:c.srai a0, 42<br> |
|[0x800022a0]<br>0x0000000000000000|- rs1_val == 2<br>                                                                                                                  |[0x800003aa]:c.srai a0, 7<br>  |
|[0x800022a8]<br>0x0000000000000004|- rs1_val == 8<br>                                                                                                                  |[0x800003b2]:c.srai a0, 1<br>  |
|[0x800022b0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                 |[0x800003ba]:c.srai a0, 31<br> |
|[0x800022b8]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                 |[0x800003c4]:c.srai a0, 63<br> |
|[0x800022c0]<br>0x0000000000000002|- rs1_val == 64<br>                                                                                                                 |[0x800003ce]:c.srai a0, 5<br>  |
|[0x800022c8]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                                                |[0x800003d8]:c.srai a0, 21<br> |
|[0x800022d0]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                                                |[0x800003e2]:c.srai a0, 31<br> |
|[0x800022d8]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                                                |[0x800003ec]:c.srai a0, 19<br> |
|[0x800022e0]<br>0x0000000000000200|- rs1_val == 1024<br>                                                                                                               |[0x800003f6]:c.srai a0, 1<br>  |
|[0x800022e8]<br>0x0000000000000000|- rs1_val == 2048<br>                                                                                                               |[0x80000402]:c.srai a0, 59<br> |
|[0x800022f0]<br>0x0000000000000001|- rs1_val == 8192<br>                                                                                                               |[0x8000040a]:c.srai a0, 13<br> |
|[0x800022f8]<br>0x0000000000001000|- rs1_val == 16384<br>                                                                                                              |[0x80000412]:c.srai a0, 2<br>  |
|[0x80002300]<br>0x0000000000000010|- rs1_val == 65536<br>                                                                                                              |[0x8000041a]:c.srai a0, 12<br> |
|[0x80002308]<br>0x0000000000000040|- rs1_val == 131072<br>                                                                                                             |[0x80000424]:c.srai a0, 11<br> |
|[0x80002310]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                             |[0x8000042e]:c.srai a0, 59<br> |
|[0x80002318]<br>0x0000000000000040|- rs1_val == 524288<br>                                                                                                             |[0x80000438]:c.srai a0, 13<br> |
|[0x80002320]<br>0x0000000000001000|- rs1_val == 1048576<br>                                                                                                            |[0x80000442]:c.srai a0, 8<br>  |
|[0x80002328]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                            |[0x8000044c]:c.srai a0, 61<br> |
|[0x80002330]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                            |[0x80000456]:c.srai a0, 32<br> |
|[0x80002338]<br>0x0000000000000080|- rs1_val == 8388608<br>                                                                                                            |[0x80000460]:c.srai a0, 16<br> |
|[0x80002340]<br>0x0000000000010000|- rs1_val == 16777216<br>                                                                                                           |[0x8000046a]:c.srai a0, 8<br>  |
|[0x80002348]<br>0x0000000000000010|- rs1_val == 33554432<br>                                                                                                           |[0x80000474]:c.srai a0, 21<br> |
|[0x80002350]<br>0x0000000000000400|- rs1_val == 67108864<br>                                                                                                           |[0x8000047e]:c.srai a0, 16<br> |
|[0x80002358]<br>0x0000000000400000|- rs1_val == 134217728<br>                                                                                                          |[0x80000488]:c.srai a0, 5<br>  |
|[0x80002360]<br>0x0000000008000000|- rs1_val == 536870912<br>                                                                                                          |[0x80000492]:c.srai a0, 2<br>  |
|[0x80002368]<br>0x0000000040000000|- rs1_val == 2147483648<br>                                                                                                         |[0x8000049e]:c.srai a0, 1<br>  |
|[0x80002370]<br>0x0000000000080000|- rs1_val == 4294967296<br>                                                                                                         |[0x800004aa]:c.srai a0, 13<br> |
|[0x80002378]<br>0x0000000008000000|- rs1_val == 8589934592<br>                                                                                                         |[0x800004b6]:c.srai a0, 6<br>  |
|[0x80002380]<br>0x0000000001000000|- rs1_val == 34359738368<br>                                                                                                        |[0x800004c2]:c.srai a0, 11<br> |
|[0x80002388]<br>0x0000000008000000|- rs1_val == 68719476736<br>                                                                                                        |[0x800004ce]:c.srai a0, 9<br>  |
|[0x80002390]<br>0x0000000000200000|- rs1_val == 137438953472<br>                                                                                                       |[0x800004da]:c.srai a0, 16<br> |
|[0x80002398]<br>0x0000000000000040|- rs1_val == 274877906944<br>                                                                                                       |[0x800004e6]:c.srai a0, 32<br> |
|[0x800023a0]<br>0x0000000000400000|- rs1_val == 549755813888<br>                                                                                                       |[0x800004f2]:c.srai a0, 17<br> |
|[0x800023a8]<br>0x0000000200000000|- rs1_val == 1099511627776<br>                                                                                                      |[0x800004fe]:c.srai a0, 7<br>  |
|[0x800023b0]<br>0x0000000008000000|- rs1_val == 2199023255552<br>                                                                                                      |[0x8000050a]:c.srai a0, 14<br> |
|[0x800023b8]<br>0x0000000000200000|- rs1_val == 4398046511104<br>                                                                                                      |[0x80000516]:c.srai a0, 21<br> |
|[0x800023c0]<br>0x0000000000000800|- rs1_val == 8796093022208<br>                                                                                                      |[0x80000522]:c.srai a0, 32<br> |
|[0x800023c8]<br>0x0000040000000000|- rs1_val == 17592186044416<br>                                                                                                     |[0x8000052e]:c.srai a0, 2<br>  |
|[0x800023d0]<br>0x0000004000000000|- rs1_val == 35184372088832<br>                                                                                                     |[0x8000053a]:c.srai a0, 7<br>  |
|[0x800023d8]<br>0x0000000010000000|- rs1_val == 70368744177664<br>                                                                                                     |[0x80000546]:c.srai a0, 18<br> |
|[0x800023e0]<br>0x0000400000000000|- rs1_val == 140737488355328<br>                                                                                                    |[0x80000552]:c.srai a0, 1<br>  |
|[0x800023e8]<br>0x0000000800000000|- rs1_val == 281474976710656<br>                                                                                                    |[0x8000055e]:c.srai a0, 13<br> |
|[0x800023f0]<br>0x0001000000000000|- rs1_val == 562949953421312<br>                                                                                                    |[0x8000056a]:c.srai a0, 1<br>  |
|[0x800023f8]<br>0x0000080000000000|- rs1_val == 1125899906842624<br>                                                                                                   |[0x80000576]:c.srai a0, 7<br>  |
|[0x80002400]<br>0x0000000000080000|- rs1_val == 2251799813685248<br>                                                                                                   |[0x80000582]:c.srai a0, 32<br> |
|[0x80002408]<br>0x0000100000000000|- rs1_val == 4503599627370496<br>                                                                                                   |[0x8000058e]:c.srai a0, 8<br>  |
|[0x80002410]<br>0x0000000100000000|- rs1_val == 9007199254740992<br>                                                                                                   |[0x8000059a]:c.srai a0, 21<br> |
|[0x80002418]<br>0x0000001000000000|- rs1_val == 18014398509481984<br>                                                                                                  |[0x800005a6]:c.srai a0, 18<br> |
|[0x80002420]<br>0x0000000000800000|- rs1_val == 36028797018963968<br>                                                                                                  |[0x800005b2]:c.srai a0, 32<br> |
|[0x80002428]<br>0x0000004000000000|- rs1_val == 72057594037927936<br>                                                                                                  |[0x800005be]:c.srai a0, 18<br> |
|[0x80002430]<br>0x0000004000000000|- rs1_val == 144115188075855872<br>                                                                                                 |[0x800005ca]:c.srai a0, 19<br> |
|[0x80002438]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -8796093022209<br>                                                                                                     |[0x800005d8]:c.srai a0, 12<br> |
|[0x80002440]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                    |[0x800005e6]:c.srai a0, 8<br>  |
|[0x80002448]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -35184372088833<br>                                                                                                    |[0x800005f4]:c.srai a0, 14<br> |
|[0x80002450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                    |[0x80000602]:c.srai a0, 63<br> |
|[0x80002458]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                   |[0x80000610]:c.srai a0, 15<br> |
|[0x80002460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                   |[0x8000061e]:c.srai a0, 61<br> |
|[0x80002468]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                  |[0x8000062c]:c.srai a0, 17<br> |
|[0x80002470]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                  |[0x8000063a]:c.srai a0, 18<br> |
|[0x80002478]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                  |[0x80000648]:c.srai a0, 14<br> |
|[0x80002480]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                  |[0x80000656]:c.srai a0, 9<br>  |
|[0x80002488]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                 |[0x80000664]:c.srai a0, 2<br>  |
|[0x80002490]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                 |[0x80000672]:c.srai a0, 17<br> |
|[0x80002498]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -72057594037927937<br>                                                                                                 |[0x80000680]:c.srai a0, 42<br> |
|[0x800024a0]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                |[0x8000068e]:c.srai a0, 2<br>  |
|[0x800024a8]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                |[0x8000069c]:c.srai a0, 6<br>  |
|[0x800024b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                |[0x800006aa]:c.srai a0, 63<br> |
|[0x800024b8]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                               |[0x800006b8]:c.srai a0, 31<br> |
|[0x800024c0]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                               |[0x800006c6]:c.srai a0, 18<br> |
|[0x800024c8]<br>0xFFFFFFFFFFFFFF55|- rs1_val == -6148914691236517206<br>                                                                                               |[0x800006e6]:c.srai a0, 55<br> |
|[0x800024d0]<br>0x0000000004000000|- rs1_val == 288230376151711744<br>                                                                                                 |[0x800006f2]:c.srai a0, 32<br> |
|[0x800024d8]<br>0x0000080000000000|- rs1_val == 576460752303423488<br>                                                                                                 |[0x800006fe]:c.srai a0, 16<br> |
|[0x800024e0]<br>0x0000000000002000|- rs1_val == 1152921504606846976<br>                                                                                                |[0x8000070a]:c.srai a0, 47<br> |
|[0x800024e8]<br>0x0000000000000040|- rs1_val == 2305843009213693952<br>                                                                                                |[0x80000716]:c.srai a0, 55<br> |
|[0x800024f0]<br>0x0000000000000008|- rs1_val == 4611686018427387904<br>                                                                                                |[0x80000722]:c.srai a0, 59<br> |
|[0x800024f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                 |[0x8000072a]:c.srai a0, 13<br> |
|[0x80002500]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                 |[0x80000732]:c.srai a0, 4<br>  |
|[0x80002508]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                 |[0x8000073a]:c.srai a0, 16<br> |
|[0x80002510]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -9<br>                                                                                                                 |[0x80000742]:c.srai a0, 1<br>  |
|[0x80002518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                |[0x8000074a]:c.srai a0, 15<br> |
|[0x80002520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                |[0x80000754]:c.srai a0, 8<br>  |
|[0x80002528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                |[0x8000075e]:c.srai a0, 13<br> |
|[0x80002530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                               |[0x80000768]:c.srai a0, 42<br> |
|[0x80002538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                               |[0x80000772]:c.srai a0, 12<br> |
|[0x80002540]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                               |[0x8000077c]:c.srai a0, 47<br> |
|[0x80002548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                              |[0x80000786]:c.srai a0, 14<br> |
|[0x80002550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                             |[0x80000790]:c.srai a0, 62<br> |
|[0x80002558]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -32769<br>                                                                                                             |[0x8000079a]:c.srai a0, 12<br> |
|[0x80002560]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -65537<br>                                                                                                             |[0x800007a4]:c.srai a0, 12<br> |
|[0x80002568]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -131073<br>                                                                                                            |[0x800007ae]:c.srai a0, 17<br> |
|[0x80002570]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -262145<br>                                                                                                            |[0x800007ba]:c.srai a0, 15<br> |
|[0x80002578]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -524289<br>                                                                                                            |[0x800007c6]:c.srai a0, 10<br> |
|[0x80002580]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -1048577<br>                                                                                                           |[0x800007d2]:c.srai a0, 5<br>  |
|[0x80002588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2097153<br>                                                                                                           |[0x800007de]:c.srai a0, 59<br> |
|[0x80002590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                           |[0x800007ea]:c.srai a0, 62<br> |
|[0x80002598]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -16777217<br>                                                                                                          |[0x800007f6]:c.srai a0, 19<br> |
|[0x800025a0]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -33554433<br>                                                                                                          |[0x80000802]:c.srai a0, 2<br>  |
|[0x800025a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -67108865<br>                                                                                                          |[0x8000080e]:c.srai a0, 59<br> |
|[0x800025b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                         |[0x8000081a]:c.srai a0, 59<br> |
|[0x800025b8]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -268435457<br>                                                                                                         |[0x80000826]:c.srai a0, 7<br>  |
|[0x800025c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                         |[0x80000832]:c.srai a0, 47<br> |
|[0x800025c8]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -1073741825<br>                                                                                                        |[0x8000083e]:c.srai a0, 12<br> |
|[0x800025d0]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -2147483649<br>                                                                                                        |[0x8000084c]:c.srai a0, 15<br> |
|[0x800025d8]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -4294967297<br>                                                                                                        |[0x8000085a]:c.srai a0, 15<br> |
|[0x800025e0]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -8589934593<br>                                                                                                        |[0x80000868]:c.srai a0, 17<br> |
|[0x800025e8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -17179869185<br>                                                                                                       |[0x80000876]:c.srai a0, 14<br> |
|[0x800025f0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -34359738369<br>                                                                                                       |[0x80000884]:c.srai a0, 21<br> |
|[0x800025f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                       |[0x80000892]:c.srai a0, 55<br> |
|[0x80002600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                      |[0x800008a0]:c.srai a0, 59<br> |
|[0x80002608]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                      |[0x800008ae]:c.srai a0, 1<br>  |
|[0x80002610]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                      |[0x800008bc]:c.srai a0, 5<br>  |
|[0x80002618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                     |[0x800008ca]:c.srai a0, 47<br> |
|[0x80002620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                     |[0x800008d8]:c.srai a0, 61<br> |
|[0x80002628]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                     |[0x800008e6]:c.srai a0, 4<br>  |
