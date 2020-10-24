
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000f10')]      |
| SIG_REGION                | [('0x80002210', '0x800028c0')]      |
| COV_LABELS                | ('cxor',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Unique Coverpoints  | 287      |
| Total Signature Updates   | 362      |
| Ops w/o unique coverpoints | 1      |
| Sig Updates w/o Coverpoints | 0    |

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

|s.no|            signature             |                                                            coverpoints                                                            |             code             |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : c.xor<br> - rs1 : x13<br> - rs2 : x13<br> - rs1 == rs2<br> - rs2_val > 0<br>                                            |[0x800002da]:c.xor a3, a3<br> |
|   2|[0x80002218]<br>0x0800000080000000|- rs1 : x9<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -576460752303423489<br> - rs1_val == -2147483649<br> |[0x800002f0]:c.xor s1, s0<br> |
|   3|[0x80002220]<br>0x8000000004000000|- rs1 : x15<br> - rs2 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 67108864<br> - rs1_val == -9223372036854775808<br>    |[0x80000300]:c.xor a5, a0<br> |
|   4|[0x80002228]<br>0xFFFFDFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x9<br> - rs1_val == 0<br> - rs2_val == -35184372088833<br>                                                 |[0x80000310]:c.xor a0, s1<br> |
|   5|[0x80002230]<br>0x7FFFFFFFFFFBFFFF|- rs1 : x14<br> - rs2 : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 262144<br> - rs1_val == 9223372036854775807<br>      |[0x80000322]:c.xor a4, a5<br> |
|   6|[0x80002238]<br>0xFFFFF7FFFFFFFFFE|- rs1 : x11<br> - rs2 : x12<br> - rs1_val == 1<br> - rs2_val == -8796093022209<br>                                                 |[0x80000332]:c.xor a1, a2<br> |
|   7|[0x80002240]<br>0x8000000400000000|- rs1 : x12<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 17179869184<br> |[0x80000344]:c.xor a2, a1<br> |
|   8|[0x80002248]<br>0x0000000000000100|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == 0<br> - rs1_val == 256<br>                                                             |[0x80000350]:c.xor s0, a4<br> |
|   9|[0x80002250]<br>0x7FFFFFFFFFFBFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 262144<br>                                      |[0x80000362]:c.xor a0, a1<br> |
|  10|[0x80002258]<br>0xFFFFFFFFFFFFDFFE|- rs2_val == 1<br> - rs1_val == -8193<br>                                                                                          |[0x8000036e]:c.xor a0, a1<br> |
|  11|[0x80002260]<br>0x0000000000000001|- rs1_val == 2<br>                                                                                                                 |[0x80000378]:c.xor a0, a1<br> |
|  12|[0x80002268]<br>0xFF7FFFFFFFFFFFFB|- rs2_val == -36028797018963969<br> - rs1_val == 4<br>                                                                             |[0x80000388]:c.xor a0, a1<br> |
|  13|[0x80002270]<br>0x0000000000000408|- rs2_val == 1024<br> - rs1_val == 8<br>                                                                                           |[0x80000394]:c.xor a0, a1<br> |
|  14|[0x80002278]<br>0x0020000000000010|- rs2_val == 9007199254740992<br> - rs1_val == 16<br>                                                                              |[0x800003a2]:c.xor a0, a1<br> |
|  15|[0x80002280]<br>0xFFEFFFFFFFFFFFDF|- rs2_val == -4503599627370497<br> - rs1_val == 32<br>                                                                             |[0x800003b4]:c.xor a0, a1<br> |
|  16|[0x80002288]<br>0x0008000000000040|- rs2_val == 2251799813685248<br> - rs1_val == 64<br>                                                                              |[0x800003c4]:c.xor a0, a1<br> |
|  17|[0x80002290]<br>0xFFFFF7FFFFFFFF7F|- rs1_val == 128<br>                                                                                                               |[0x800003d6]:c.xor a0, a1<br> |
|  18|[0x80002298]<br>0x0001000000000200|- rs2_val == 281474976710656<br> - rs1_val == 512<br>                                                                              |[0x800003e6]:c.xor a0, a1<br> |
|  19|[0x800022a0]<br>0xFFFFFBFFFFFFFBFF|- rs2_val == -4398046511105<br> - rs1_val == 1024<br>                                                                              |[0x800003f8]:c.xor a0, a1<br> |
|  20|[0x800022a8]<br>0x0000000020000800|- rs2_val == 536870912<br> - rs1_val == 2048<br>                                                                                   |[0x80000408]:c.xor a0, a1<br> |
|  21|[0x800022b0]<br>0x0010000000001000|- rs2_val == 4503599627370496<br> - rs1_val == 4096<br>                                                                            |[0x80000416]:c.xor a0, a1<br> |
|  22|[0x800022b8]<br>0xFFFFFFFFFFFFDFEF|- rs2_val == -17<br> - rs1_val == 8192<br>                                                                                         |[0x80000420]:c.xor a0, a1<br> |
|  23|[0x800022c0]<br>0xFEFFFFFFFFFFBFFF|- rs2_val == -72057594037927937<br> - rs1_val == 16384<br>                                                                         |[0x80000430]:c.xor a0, a1<br> |
|  24|[0x800022c8]<br>0xFFFFDFFFFFFF7FFF|- rs1_val == 32768<br>                                                                                                             |[0x80000440]:c.xor a0, a1<br> |
|  25|[0x800022d0]<br>0x0000000040010000|- rs2_val == 1073741824<br> - rs1_val == 65536<br>                                                                                 |[0x8000044c]:c.xor a0, a1<br> |
|  26|[0x800022d8]<br>0x0001000000020000|- rs1_val == 131072<br>                                                                                                            |[0x8000045c]:c.xor a0, a1<br> |
|  27|[0x800022e0]<br>0xFFFEFFFFFFF7FFFF|- rs2_val == -281474976710657<br> - rs1_val == 524288<br>                                                                          |[0x8000046e]:c.xor a0, a1<br> |
|  28|[0x800022e8]<br>0x0000000000100080|- rs2_val == 128<br> - rs1_val == 1048576<br>                                                                                      |[0x8000047c]:c.xor a0, a1<br> |
|  29|[0x800022f0]<br>0xC000000000200000|- rs1_val == 2097152<br>                                                                                                           |[0x8000048c]:c.xor a0, a1<br> |
|  30|[0x800022f8]<br>0x0000000000400003|- rs1_val == 4194304<br>                                                                                                           |[0x80000498]:c.xor a0, a1<br> |
|  31|[0x80002300]<br>0x0000000040800000|- rs1_val == 8388608<br>                                                                                                           |[0x800004a6]:c.xor a0, a1<br> |
|  32|[0x80002308]<br>0x0000000001000800|- rs2_val == 2048<br> - rs1_val == 16777216<br>                                                                                    |[0x800004b6]:c.xor a0, a1<br> |
|  33|[0x80002310]<br>0xFFFFFFFFFDFFFFFE|- rs2_val == -2<br> - rs1_val == 33554432<br>                                                                                      |[0x800004c2]:c.xor a0, a1<br> |
|  34|[0x80002318]<br>0xFFEFFFFFFBFFFFFF|- rs1_val == 67108864<br>                                                                                                          |[0x800004d4]:c.xor a0, a1<br> |
|  35|[0x80002320]<br>0x0000000108000000|- rs2_val == 4294967296<br> - rs1_val == 134217728<br>                                                                             |[0x800004e4]:c.xor a0, a1<br> |
|  36|[0x80002328]<br>0x0000400010000000|- rs2_val == 70368744177664<br> - rs1_val == 268435456<br>                                                                         |[0x800004f4]:c.xor a0, a1<br> |
|  37|[0x80002330]<br>0x0000010020000000|- rs2_val == 1099511627776<br> - rs1_val == 536870912<br>                                                                          |[0x80000504]:c.xor a0, a1<br> |
|  38|[0x80002338]<br>0x0000000050000000|- rs2_val == 268435456<br> - rs1_val == 1073741824<br>                                                                             |[0x80000512]:c.xor a0, a1<br> |
|  39|[0x80002340]<br>0xFFFFFFFF7FFFFF7F|- rs2_val == -129<br> - rs1_val == 2147483648<br>                                                                                  |[0x80000522]:c.xor a0, a1<br> |
|  40|[0x80002348]<br>0xFEFFFFFEFFFFFFFF|- rs1_val == 4294967296<br>                                                                                                        |[0x80000536]:c.xor a0, a1<br> |
|  41|[0x80002350]<br>0xFFFFFFFD7FFFFFFF|- rs2_val == -2147483649<br> - rs1_val == 8589934592<br>                                                                           |[0x8000054a]:c.xor a0, a1<br> |
|  42|[0x80002358]<br>0x0000000A00000000|- rs2_val == 8589934592<br> - rs1_val == 34359738368<br>                                                                           |[0x8000055c]:c.xor a0, a1<br> |
|  43|[0x80002360]<br>0x0000001000200000|- rs2_val == 2097152<br> - rs1_val == 68719476736<br>                                                                              |[0x8000056c]:c.xor a0, a1<br> |
|  44|[0x80002368]<br>0xFFFFFDDFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 137438953472<br>                                                                      |[0x80000580]:c.xor a0, a1<br> |
|  45|[0x80002370]<br>0xFFFFFFBFFFFFEFFF|- rs2_val == -4097<br> - rs1_val == 274877906944<br>                                                                               |[0x80000590]:c.xor a0, a1<br> |
|  46|[0x80002378]<br>0x555555D555555555|- rs2_val == 6148914691236517205<br> - rs1_val == 549755813888<br>                                                                 |[0x800005b6]:c.xor a0, a1<br> |
|  47|[0x80002380]<br>0xFFFFFEFFFFFFFFDF|- rs2_val == -33<br> - rs1_val == 1099511627776<br>                                                                                |[0x800005c6]:c.xor a0, a1<br> |
|  48|[0x80002388]<br>0xFFFFFDFFDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 2199023255552<br>                                                                         |[0x800005d8]:c.xor a0, a1<br> |
|  49|[0x80002390]<br>0xFFFFFBFFFFFFFDFF|- rs2_val == -513<br> - rs1_val == 4398046511104<br>                                                                               |[0x800005e8]:c.xor a0, a1<br> |
|  50|[0x80002398]<br>0x0000080010000000|- rs1_val == 8796093022208<br>                                                                                                     |[0x800005f8]:c.xor a0, a1<br> |
|  51|[0x800023a0]<br>0xFFFFEFFF7FFFFFFF|- rs1_val == 17592186044416<br>                                                                                                    |[0x8000060c]:c.xor a0, a1<br> |
|  52|[0x800023a8]<br>0xFFFFDFFFFFDFFFFF|- rs2_val == -2097153<br> - rs1_val == 35184372088832<br>                                                                          |[0x8000061e]:c.xor a0, a1<br> |
|  53|[0x800023b0]<br>0x0000500000000000|- rs2_val == 17592186044416<br> - rs1_val == 70368744177664<br>                                                                    |[0x80000630]:c.xor a0, a1<br> |
|  54|[0x800023b8]<br>0xFFFF7FFFFFFFFEFF|- rs2_val == -257<br> - rs1_val == 140737488355328<br>                                                                             |[0x80000640]:c.xor a0, a1<br> |
|  55|[0x800023c0]<br>0xFFFEFFFEFFFFFFFF|- rs2_val == -4294967297<br> - rs1_val == 281474976710656<br>                                                                      |[0x80000654]:c.xor a0, a1<br> |
|  56|[0x800023c8]<br>0x0002000000080000|- rs2_val == 524288<br> - rs1_val == 562949953421312<br>                                                                           |[0x80000664]:c.xor a0, a1<br> |
|  57|[0x800023d0]<br>0x0004040000000000|- rs2_val == 4398046511104<br> - rs1_val == 1125899906842624<br>                                                                   |[0x80000676]:c.xor a0, a1<br> |
|  58|[0x800023d8]<br>0xFFF7FFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 2251799813685248<br>                                                                             |[0x80000686]:c.xor a0, a1<br> |
|  59|[0x800023e0]<br>0xEFEFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br> - rs1_val == 4503599627370496<br>                                                            |[0x8000069a]:c.xor a0, a1<br> |
|  60|[0x800023e8]<br>0x7FDFFFFFFFFFFFFF|- rs1_val == 9007199254740992<br>                                                                                                  |[0x800006ae]:c.xor a0, a1<br> |
|  61|[0x800023f0]<br>0x0040001000000000|- rs2_val == 68719476736<br> - rs1_val == 18014398509481984<br>                                                                    |[0x800006c0]:c.xor a0, a1<br> |
|  62|[0x800023f8]<br>0xFF7FFFFFFFFFFFDF|- rs1_val == 36028797018963968<br>                                                                                                 |[0x800006d0]:c.xor a0, a1<br> |
|  63|[0x80002400]<br>0x8100000000000000|- rs1_val == 72057594037927936<br>                                                                                                 |[0x800006e2]:c.xor a0, a1<br> |
|  64|[0x80002408]<br>0xFDFFFFFFFFFFFFF9|- rs1_val == 144115188075855872<br>                                                                                                |[0x800006f0]:c.xor a0, a1<br> |
|  65|[0x80002410]<br>0xFBFFFFFFFFFFFFF7|- rs2_val == -9<br> - rs1_val == 288230376151711744<br>                                                                            |[0x800006fe]:c.xor a0, a1<br> |
|  66|[0x80002418]<br>0xF7FFFFFFFFFFBFFF|- rs2_val == -16385<br> - rs1_val == 576460752303423488<br>                                                                        |[0x8000070e]:c.xor a0, a1<br> |
|  67|[0x80002420]<br>0x1000200000000000|- rs2_val == 35184372088832<br> - rs1_val == 1152921504606846976<br>                                                               |[0x80000720]:c.xor a0, a1<br> |
|  68|[0x80002428]<br>0xDFFEFFFFFFFFFFFF|- rs1_val == 2305843009213693952<br>                                                                                               |[0x80000734]:c.xor a0, a1<br> |
|  69|[0x80002430]<br>0x4000008000000000|- rs2_val == 549755813888<br> - rs1_val == 4611686018427387904<br>                                                                 |[0x80000746]:c.xor a0, a1<br> |
|  70|[0x80002438]<br>0xFBFFFFFFFFFFFFFE|- rs2_val == 288230376151711744<br> - rs1_val == -2<br>                                                                            |[0x80000754]:c.xor a0, a1<br> |
|  71|[0x80002440]<br>0x0000000400000002|- rs2_val == -17179869185<br> - rs1_val == -3<br>                                                                                  |[0x80000764]:c.xor a0, a1<br> |
|  72|[0x80002448]<br>0x0100000000000004|- rs1_val == -5<br>                                                                                                                |[0x80000774]:c.xor a0, a1<br> |
|  73|[0x80002450]<br>0x0000000000000208|- rs1_val == -9<br>                                                                                                                |[0x80000780]:c.xor a0, a1<br> |
|  74|[0x80002458]<br>0x0010000000000010|- rs1_val == -17<br>                                                                                                               |[0x80000790]:c.xor a0, a1<br> |
|  75|[0x80002460]<br>0x0010000000000020|- rs1_val == -33<br>                                                                                                               |[0x800007a2]:c.xor a0, a1<br> |
|  76|[0x80002468]<br>0xFDFFFFFFFFFFFFBF|- rs2_val == 144115188075855872<br> - rs1_val == -65<br>                                                                           |[0x800007b2]:c.xor a0, a1<br> |
|  77|[0x80002470]<br>0x55555555555555D5|- rs2_val == -6148914691236517206<br> - rs1_val == -129<br>                                                                        |[0x800007d6]:c.xor a0, a1<br> |
|  78|[0x80002478]<br>0x0000000000080100|- rs2_val == -524289<br> - rs1_val == -257<br>                                                                                     |[0x800007e6]:c.xor a0, a1<br> |
|  79|[0x80002480]<br>0x0000000000200200|- rs1_val == -513<br>                                                                                                              |[0x800007f6]:c.xor a0, a1<br> |
|  80|[0x80002488]<br>0xFFBFFFFFFFDFFFFF|- rs2_val == -18014398509481985<br>                                                                                                |[0x80000808]:c.xor a0, a1<br> |
|  81|[0x80002490]<br>0x0200000000400000|- rs2_val == -144115188075855873<br> - rs1_val == -4194305<br>                                                                     |[0x8000081c]:c.xor a0, a1<br> |
|  82|[0x80002498]<br>0x0400000000010000|- rs2_val == -288230376151711745<br> - rs1_val == -65537<br>                                                                       |[0x8000082e]:c.xor a0, a1<br> |
|  83|[0x800024a0]<br>0x2000000000000800|- rs2_val == -2305843009213693953<br> - rs1_val == -2049<br>                                                                       |[0x80000842]:c.xor a0, a1<br> |
|  84|[0x800024a8]<br>0xBFFFFFFFFFFFFFF8|- rs2_val == -4611686018427387905<br>                                                                                              |[0x80000852]:c.xor a0, a1<br> |
|  85|[0x800024b0]<br>0x0000004000000400|- rs2_val == -274877906945<br> - rs1_val == -1025<br>                                                                              |[0x80000864]:c.xor a0, a1<br> |
|  86|[0x800024b8]<br>0x0000000000001007|- rs1_val == -4097<br>                                                                                                             |[0x80000870]:c.xor a0, a1<br> |
|  87|[0x800024c0]<br>0xFFFFFFFFFFFFBFFE|- rs1_val == -16385<br>                                                                                                            |[0x8000087c]:c.xor a0, a1<br> |
|  88|[0x800024c8]<br>0xFFFFFFFFFFFF7FF8|- rs1_val == -32769<br>                                                                                                            |[0x80000888]:c.xor a0, a1<br> |
|  89|[0x800024d0]<br>0xFFFFFFFFFFFDDFFF|- rs2_val == 8192<br> - rs1_val == -131073<br>                                                                                     |[0x80000894]:c.xor a0, a1<br> |
|  90|[0x800024d8]<br>0xFFFFFFBFFFFBFFFF|- rs2_val == 274877906944<br> - rs1_val == -262145<br>                                                                             |[0x800008a6]:c.xor a0, a1<br> |
|  91|[0x800024e0]<br>0xFBFFFFFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                           |[0x800008b8]:c.xor a0, a1<br> |
|  92|[0x800024e8]<br>0xFFFEFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                          |[0x800008ca]:c.xor a0, a1<br> |
|  93|[0x800024f0]<br>0x0000000000200002|- rs2_val == -3<br> - rs1_val == -2097153<br>                                                                                      |[0x800008d8]:c.xor a0, a1<br> |
|  94|[0x800024f8]<br>0xFFFFFFFFFF7FFF7F|- rs1_val == -8388609<br>                                                                                                          |[0x800008e8]:c.xor a0, a1<br> |
|  95|[0x80002500]<br>0xFFFFFFFFFEFFFEFF|- rs2_val == 256<br> - rs1_val == -16777217<br>                                                                                    |[0x800008f8]:c.xor a0, a1<br> |
|  96|[0x80002508]<br>0x0000000802000000|- rs2_val == -34359738369<br> - rs1_val == -33554433<br>                                                                           |[0x8000090c]:c.xor a0, a1<br> |
|  97|[0x80002510]<br>0x0000000004000004|- rs2_val == -5<br> - rs1_val == -67108865<br>                                                                                     |[0x8000091a]:c.xor a0, a1<br> |
|  98|[0x80002518]<br>0x0000000008000100|- rs1_val == -134217729<br>                                                                                                        |[0x8000092a]:c.xor a0, a1<br> |
|  99|[0x80002520]<br>0x0000000010000020|- rs1_val == -268435457<br>                                                                                                        |[0x8000093a]:c.xor a0, a1<br> |
| 100|[0x80002528]<br>0x0000000020000080|- rs1_val == -536870913<br>                                                                                                        |[0x8000094a]:c.xor a0, a1<br> |
| 101|[0x80002530]<br>0xFFFFFFFFBFBFFFFF|- rs2_val == 4194304<br> - rs1_val == -1073741825<br>                                                                              |[0x8000095a]:c.xor a0, a1<br> |
| 102|[0x80002538]<br>0xFFFFFFFEFFEFFFFF|- rs2_val == 1048576<br> - rs1_val == -4294967297<br>                                                                              |[0x8000096c]:c.xor a0, a1<br> |
| 103|[0x80002540]<br>0xFFFFFBFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                       |[0x80000980]:c.xor a0, a1<br> |
| 104|[0x80002548]<br>0x0000010400000000|- rs2_val == -1099511627777<br> - rs1_val == -17179869185<br>                                                                      |[0x80000996]:c.xor a0, a1<br> |
| 105|[0x80002550]<br>0xFFFFFFF7FFDFFFFF|- rs1_val == -34359738369<br>                                                                                                      |[0x800009a8]:c.xor a0, a1<br> |
| 106|[0x80002558]<br>0x0000001000000002|- rs1_val == -68719476737<br>                                                                                                      |[0x800009b8]:c.xor a0, a1<br> |
| 107|[0x80002560]<br>0xFFFFBFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                     |[0x800009cc]:c.xor a0, a1<br> |
| 108|[0x80002568]<br>0x0000004800000000|- rs1_val == -274877906945<br>                                                                                                     |[0x800009e2]:c.xor a0, a1<br> |
| 109|[0x80002570]<br>0xFFFFFF7FFFFFFFF7|- rs2_val == 8<br> - rs1_val == -549755813889<br>                                                                                  |[0x800009f2]:c.xor a0, a1<br> |
| 110|[0x80002578]<br>0xFFFFFEFFFFDFFFFF|- rs1_val == -1099511627777<br>                                                                                                    |[0x80000a04]:c.xor a0, a1<br> |
| 111|[0x80002580]<br>0xFFFFFDFFFFFFFFFA|- rs1_val == -2199023255553<br>                                                                                                    |[0x80000a14]:c.xor a0, a1<br> |
| 112|[0x80002588]<br>0xFFFFFBFFFFFFFFFD|- rs2_val == 2<br> - rs1_val == -4398046511105<br>                                                                                 |[0x80000a24]:c.xor a0, a1<br> |
| 113|[0x80002590]<br>0xFFFFF77FFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                    |[0x80000a38]:c.xor a0, a1<br> |
| 114|[0x80002598]<br>0x0000100000001000|- rs1_val == -17592186044417<br>                                                                                                   |[0x80000a4a]:c.xor a0, a1<br> |
| 115|[0x800025a0]<br>0xFEFFDFFFFFFFFFFF|- rs2_val == 72057594037927936<br> - rs1_val == -35184372088833<br>                                                                |[0x80000a5e]:c.xor a0, a1<br> |
| 116|[0x800025a8]<br>0x0000400020000000|- rs1_val == -70368744177665<br>                                                                                                   |[0x80000a72]:c.xor a0, a1<br> |
| 117|[0x800025b0]<br>0xFFFF77FFFFFFFFFF|- rs2_val == 8796093022208<br> - rs1_val == -140737488355329<br>                                                                   |[0x80000a86]:c.xor a0, a1<br> |
| 118|[0x800025b8]<br>0xFFFE7FFFFFFFFFFF|- rs2_val == 140737488355328<br> - rs1_val == -281474976710657<br>                                                                 |[0x80000a9a]:c.xor a0, a1<br> |
| 119|[0x800025c0]<br>0xFFFDFFFFDFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                  |[0x80000aac]:c.xor a0, a1<br> |
| 120|[0x800025c8]<br>0x0004000000000005|- rs1_val == -1125899906842625<br>                                                                                                 |[0x80000abc]:c.xor a0, a1<br> |
| 121|[0x800025d0]<br>0xFFF5FFFFFFFFFFFF|- rs2_val == 562949953421312<br> - rs1_val == -2251799813685249<br>                                                                |[0x80000ad0]:c.xor a0, a1<br> |
| 122|[0x800025d8]<br>0x2010000000000000|- rs1_val == -4503599627370497<br>                                                                                                 |[0x80000ae6]:c.xor a0, a1<br> |
| 123|[0x800025e0]<br>0xFFDF7FFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                 |[0x80000afa]:c.xor a0, a1<br> |
| 124|[0x800025e8]<br>0x0040800000000000|- rs2_val == -140737488355329<br> - rs1_val == -18014398509481985<br>                                                              |[0x80000b10]:c.xor a0, a1<br> |
| 125|[0x800025f0]<br>0x00C0000000000000|- rs1_val == -36028797018963969<br>                                                                                                |[0x80000b26]:c.xor a0, a1<br> |
| 126|[0x800025f8]<br>0xFEFFFFFFFFF7FFFF|- rs1_val == -72057594037927937<br>                                                                                                |[0x80000b38]:c.xor a0, a1<br> |
| 127|[0x80002600]<br>0x0200000000000001|- rs1_val == -144115188075855873<br>                                                                                               |[0x80000b48]:c.xor a0, a1<br> |
| 128|[0x80002608]<br>0x0500000000000000|- rs1_val == -288230376151711745<br>                                                                                               |[0x80000b5e]:c.xor a0, a1<br> |
| 129|[0x80002610]<br>0xF7FFFFDFFFFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -576460752303423489<br>                                                                 |[0x80000b72]:c.xor a0, a1<br> |
| 130|[0x80002618]<br>0x1000000400000000|- rs1_val == -1152921504606846977<br>                                                                                              |[0x80000b88]:c.xor a0, a1<br> |
| 131|[0x80002620]<br>0x2000000010000000|- rs2_val == -268435457<br> - rs1_val == -2305843009213693953<br>                                                                  |[0x80000b9c]:c.xor a0, a1<br> |
| 132|[0x80002628]<br>0x4000000000400000|- rs2_val == -4194305<br> - rs1_val == -4611686018427387905<br>                                                                    |[0x80000bb0]:c.xor a0, a1<br> |
| 133|[0x80002630]<br>0x5555555557555555|- rs2_val == 33554432<br> - rs1_val == 6148914691236517205<br>                                                                     |[0x80000bd4]:c.xor a0, a1<br> |
| 134|[0x80002638]<br>0x5555555557555555|- rs2_val == -33554433<br> - rs1_val == -6148914691236517206<br>                                                                   |[0x80000bfa]:c.xor a0, a1<br> |
| 135|[0x80002640]<br>0xFFFFFFFFFFFEFFFB|- rs2_val == 4<br>                                                                                                                 |[0x80000c06]:c.xor a0, a1<br> |
| 136|[0x80002648]<br>0x0004000000000010|- rs2_val == 16<br>                                                                                                                |[0x80000c14]:c.xor a0, a1<br> |
| 137|[0x80002650]<br>0xFFBFFFFFFFFFFFDF|- rs2_val == 32<br>                                                                                                                |[0x80000c26]:c.xor a0, a1<br> |
| 138|[0x80002658]<br>0x0080000000000040|- rs2_val == 64<br>                                                                                                                |[0x80000c36]:c.xor a0, a1<br> |
| 139|[0x80002660]<br>0x0000000008000200|- rs2_val == 512<br>                                                                                                               |[0x80000c44]:c.xor a0, a1<br> |
| 140|[0x80002668]<br>0x0000004000001000|- rs2_val == 4096<br>                                                                                                              |[0x80000c52]:c.xor a0, a1<br> |
| 141|[0x80002670]<br>0x0000000000006000|- rs2_val == 16384<br>                                                                                                             |[0x80000c5c]:c.xor a0, a1<br> |
| 142|[0x80002678]<br>0x0000000000008080|- rs2_val == 32768<br>                                                                                                             |[0x80000c68]:c.xor a0, a1<br> |
| 143|[0x80002680]<br>0x0000000000010080|- rs2_val == 65536<br>                                                                                                             |[0x80000c74]:c.xor a0, a1<br> |
| 144|[0x80002688]<br>0xFFFFFFFFFFFDFEFF|- rs2_val == 131072<br>                                                                                                            |[0x80000c82]:c.xor a0, a1<br> |
| 145|[0x80002690]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 8388608<br>                                                                                                           |[0x80000c92]:c.xor a0, a1<br> |
| 146|[0x80002698]<br>0x0000000001000009|- rs2_val == 16777216<br>                                                                                                          |[0x80000c9e]:c.xor a0, a1<br> |
| 147|[0x800026a0]<br>0xFFFFFFFEF7FFFFFF|- rs2_val == 134217728<br>                                                                                                         |[0x80000cb0]:c.xor a0, a1<br> |
| 148|[0x800026a8]<br>0x0000020080000000|- rs2_val == 2147483648<br>                                                                                                        |[0x80000cc2]:c.xor a0, a1<br> |
| 149|[0x800026b0]<br>0xFFFFFFFBFFFFFF7F|- rs2_val == 17179869184<br>                                                                                                       |[0x80000cd2]:c.xor a0, a1<br> |
| 150|[0x800026b8]<br>0xFFFFFFF7FFFFFFF7|- rs2_val == 34359738368<br>                                                                                                       |[0x80000ce0]:c.xor a0, a1<br> |
| 151|[0x800026c0]<br>0xFFBFFFFFFFFFFFDF|- rs2_val == 18014398509481984<br>                                                                                                 |[0x80000cf0]:c.xor a0, a1<br> |
| 152|[0x800026c8]<br>0xFF7FFFFFFFFFFFDF|- rs2_val == 36028797018963968<br>                                                                                                 |[0x80000d00]:c.xor a0, a1<br> |
| 153|[0x800026d0]<br>0xF7FFFFF7FFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                |[0x80000d14]:c.xor a0, a1<br> |
| 154|[0x800026d8]<br>0xEFFFFEFFFFFFFFFF|- rs2_val == 1152921504606846976<br>                                                                                               |[0x80000d28]:c.xor a0, a1<br> |
| 155|[0x800026e0]<br>0xDFFFFFFF7FFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                               |[0x80000d3c]:c.xor a0, a1<br> |
| 156|[0x800026e8]<br>0x4000008000000000|- rs2_val == 4611686018427387904<br>                                                                                               |[0x80000d4e]:c.xor a0, a1<br> |
| 157|[0x800026f0]<br>0xFFFFFFFFFFFFDBFF|- rs2_val == -1025<br>                                                                                                             |[0x80000d5a]:c.xor a0, a1<br> |
| 158|[0x800026f8]<br>0xFFFFDFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                             |[0x80000d6c]:c.xor a0, a1<br> |
| 159|[0x80002700]<br>0x0000000004002000|- rs2_val == -8193<br>                                                                                                             |[0x80000d7c]:c.xor a0, a1<br> |
| 160|[0x80002708]<br>0xFFFFFFFFFFFF7FF7|- rs2_val == -32769<br>                                                                                                            |[0x80000d88]:c.xor a0, a1<br> |
| 161|[0x80002710]<br>0x0000004000010000|- rs2_val == -65537<br>                                                                                                            |[0x80000d9a]:c.xor a0, a1<br> |
| 162|[0x80002718]<br>0xFFFFFFFF7FFDFFFF|- rs2_val == -131073<br>                                                                                                           |[0x80000daa]:c.xor a0, a1<br> |
| 163|[0x80002720]<br>0xFFFDFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                           |[0x80000dbc]:c.xor a0, a1<br> |
| 164|[0x80002728]<br>0xFFFFFFFFFFEFFFFA|- rs2_val == -1048577<br>                                                                                                          |[0x80000dca]:c.xor a0, a1<br> |
| 165|[0x80002730]<br>0xFFFFFFFFFF7FEFFF|- rs2_val == -8388609<br>                                                                                                          |[0x80000dd8]:c.xor a0, a1<br> |
| 166|[0x80002738]<br>0x0000000011000000|- rs2_val == -16777217<br>                                                                                                         |[0x80000dea]:c.xor a0, a1<br> |
| 167|[0x80002740]<br>0x0000000004020000|- rs2_val == -67108865<br>                                                                                                         |[0x80000dfa]:c.xor a0, a1<br> |
| 168|[0x80002748]<br>0x0000000208000000|- rs2_val == -134217729<br>                                                                                                        |[0x80000e0e]:c.xor a0, a1<br> |
| 169|[0x80002750]<br>0x0000000041000000|- rs2_val == -1073741825<br>                                                                                                       |[0x80000e20]:c.xor a0, a1<br> |
| 170|[0x80002758]<br>0x0000000200400000|- rs2_val == -8589934593<br>                                                                                                       |[0x80000e34]:c.xor a0, a1<br> |
| 171|[0x80002760]<br>0x0000001000000009|- rs2_val == -68719476737<br>                                                                                                      |[0x80000e44]:c.xor a0, a1<br> |
| 172|[0x80002768]<br>0xFFFEFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                     |[0x80000e58]:c.xor a0, a1<br> |
| 173|[0x80002770]<br>0xFFFFFF3FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                     |[0x80000e6c]:c.xor a0, a1<br> |
| 174|[0x80002778]<br>0x0004000000000007|- rs2_val == 1125899906842624<br>                                                                                                  |[0x80000e7a]:c.xor a0, a1<br> |
| 175|[0x80002780]<br>0x0000020010000000|- rs2_val == 2199023255552<br>                                                                                                     |[0x80000e8a]:c.xor a0, a1<br> |
| 176|[0x80002788]<br>0xFFFEEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                   |[0x80000e9e]:c.xor a0, a1<br> |
| 177|[0x80002790]<br>0xFFFFBFFFDFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                   |[0x80000eb0]:c.xor a0, a1<br> |
| 178|[0x80002798]<br>0xFFFDFFFFFFBFFFFF|- rs2_val == -562949953421313<br>                                                                                                  |[0x80000ec2]:c.xor a0, a1<br> |
| 179|[0x800027a0]<br>0x0004000000000004|- rs2_val == -1125899906842625<br>                                                                                                 |[0x80000ed2]:c.xor a0, a1<br> |
| 180|[0x800027a8]<br>0xFFF7FFFFFFFFFFEF|- rs2_val == -2251799813685249<br>                                                                                                 |[0x80000ee2]:c.xor a0, a1<br> |
| 181|[0x800027b0]<br>0x0020002000000000|- rs2_val == -9007199254740993<br>                                                                                                 |[0x80000ef8]:c.xor a0, a1<br> |
