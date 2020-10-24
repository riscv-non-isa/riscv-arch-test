
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000f20')]      |
| SIG_REGION                | [('0x80002210', '0x800028c0')]      |
| COV_LABELS                | ('caddw',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddw-01.S/caddw-01.S    |
| Total Unique Coverpoints  | 287      |
| Total Signature Updates   | 360      |
| Ops w/o unique coverpoints | 2      |
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

|s.no|            signature             |                                                                       coverpoints                                                                       |             code              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : c.addw<br> - rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val > 0<br> - rs2_val == 70368744177664<br> - rs1_val == 70368744177664<br> |[0x800002e0]:c.addw a1, a1<br> |
|   2|[0x80002218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs1 != rs2<br> - rs2_val < 0<br> - rs2_val == -281474976710657<br> - rs1_val == 4611686018427387904<br>                 |[0x800002f4]:c.addw s1, a3<br> |
|   3|[0x80002220]<br>0x0000000000400000|- rs1 : x14<br> - rs2 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 4194304<br> - rs1_val == -9223372036854775808<br>                           |[0x80000304]:c.addw a4, a5<br> |
|   4|[0x80002228]<br>0x0000000000000800|- rs1 : x10<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val == 2048<br>                                                                                 |[0x80000312]:c.addw a0, a2<br> |
|   5|[0x80002230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 140737488355328<br> - rs1_val == 9223372036854775807<br>                   |[0x80000326]:c.addw a2, a0<br> |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == -35184372088833<br>                                                                       |[0x80000336]:c.addw a5, s1<br> |
|   7|[0x80002240]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                                     |[0x80000344]:c.addw s0, a4<br> |
|   8|[0x80002248]<br>0xFFFFFFFFFFFFEFFF|- rs1 : x13<br> - rs2 : x8<br> - rs2_val == 0<br> - rs1_val == -4097<br>                                                                                 |[0x80000350]:c.addw a3, s0<br> |
|   9|[0x80002250]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 549755813888<br>                                                      |[0x80000364]:c.addw a0, a1<br> |
|  10|[0x80002258]<br>0x0000000000000081|- rs2_val == 1<br> - rs1_val == 128<br>                                                                                                                  |[0x80000370]:c.addw a0, a1<br> |
|  11|[0x80002260]<br>0xFFFFFFFFFFFFFC01|- rs2_val == -1025<br> - rs1_val == 2<br>                                                                                                                |[0x8000037c]:c.addw a0, a1<br> |
|  12|[0x80002268]<br>0xFFFFFFFFFFFE0003|- rs2_val == -131073<br> - rs1_val == 4<br>                                                                                                              |[0x80000388]:c.addw a0, a1<br> |
|  13|[0x80002270]<br>0x0000000010000008|- rs2_val == 268435456<br> - rs1_val == 8<br>                                                                                                            |[0x80000394]:c.addw a0, a1<br> |
|  14|[0x80002278]<br>0x0000000000000013|- rs1_val == 16<br>                                                                                                                                      |[0x8000039e]:c.addw a0, a1<br> |
|  15|[0x80002280]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -33<br> - rs1_val == 32<br>                                                                                                                 |[0x800003ac]:c.addw a0, a1<br> |
|  16|[0x80002288]<br>0x000000000000003F|- rs2_val == -68719476737<br> - rs1_val == 64<br>                                                                                                        |[0x800003be]:c.addw a0, a1<br> |
|  17|[0x80002290]<br>0xFFFFFFFFFFC000FF|- rs2_val == -4194305<br> - rs1_val == 256<br>                                                                                                           |[0x800003ce]:c.addw a0, a1<br> |
|  18|[0x80002298]<br>0xFFFFFFFFF80001FF|- rs2_val == -134217729<br> - rs1_val == 512<br>                                                                                                         |[0x800003de]:c.addw a0, a1<br> |
|  19|[0x800022a0]<br>0x00000000000003FF|- rs2_val == -34359738369<br> - rs1_val == 1024<br>                                                                                                      |[0x800003f0]:c.addw a0, a1<br> |
|  20|[0x800022a8]<br>0x0000000040000800|- rs2_val == 1073741824<br> - rs1_val == 2048<br>                                                                                                        |[0x80000400]:c.addw a0, a1<br> |
|  21|[0x800022b0]<br>0x0000000000021000|- rs2_val == 131072<br> - rs1_val == 4096<br>                                                                                                            |[0x8000040c]:c.addw a0, a1<br> |
|  22|[0x800022b8]<br>0x0000000000001FFF|- rs2_val == -72057594037927937<br> - rs1_val == 8192<br>                                                                                                |[0x8000041c]:c.addw a0, a1<br> |
|  23|[0x800022c0]<br>0x0000000000003FFF|- rs1_val == 16384<br>                                                                                                                                   |[0x80000426]:c.addw a0, a1<br> |
|  24|[0x800022c8]<br>0x0000000000007FFF|- rs2_val == -576460752303423489<br> - rs1_val == 32768<br>                                                                                              |[0x80000436]:c.addw a0, a1<br> |
|  25|[0x800022d0]<br>0x000000000000FFFF|- rs2_val == -8796093022209<br> - rs1_val == 65536<br>                                                                                                   |[0x80000446]:c.addw a0, a1<br> |
|  26|[0x800022d8]<br>0x0000000000020000|- rs1_val == 131072<br>                                                                                                                                  |[0x80000456]:c.addw a0, a1<br> |
|  27|[0x800022e0]<br>0x0000000000040000|- rs1_val == 262144<br>                                                                                                                                  |[0x80000462]:c.addw a0, a1<br> |
|  28|[0x800022e8]<br>0x0000000000080000|- rs1_val == 524288<br>                                                                                                                                  |[0x8000046e]:c.addw a0, a1<br> |
|  29|[0x800022f0]<br>0xFFFFFFFFF80FFFFF|- rs1_val == 1048576<br>                                                                                                                                 |[0x8000047e]:c.addw a0, a1<br> |
|  30|[0x800022f8]<br>0x0000000000208000|- rs2_val == 32768<br> - rs1_val == 2097152<br>                                                                                                          |[0x8000048a]:c.addw a0, a1<br> |
|  31|[0x80002300]<br>0x00000000003FFFFF|- rs2_val == -562949953421313<br> - rs1_val == 4194304<br>                                                                                               |[0x8000049c]:c.addw a0, a1<br> |
|  32|[0x80002308]<br>0x00000000007FF7FF|- rs2_val == -2049<br> - rs1_val == 8388608<br>                                                                                                          |[0x800004ac]:c.addw a0, a1<br> |
|  33|[0x80002310]<br>0x0000000001000000|- rs2_val == 34359738368<br> - rs1_val == 16777216<br>                                                                                                   |[0x800004bc]:c.addw a0, a1<br> |
|  34|[0x80002318]<br>0x0000000002000000|- rs2_val == 36028797018963968<br> - rs1_val == 33554432<br>                                                                                             |[0x800004cc]:c.addw a0, a1<br> |
|  35|[0x80002320]<br>0x0000000004000002|- rs2_val == 2<br> - rs1_val == 67108864<br>                                                                                                             |[0x800004d8]:c.addw a0, a1<br> |
|  36|[0x80002328]<br>0x0000000008000000|- rs2_val == 576460752303423488<br> - rs1_val == 134217728<br>                                                                                           |[0x800004e8]:c.addw a0, a1<br> |
|  37|[0x80002330]<br>0x000000000FFFFDFF|- rs2_val == -513<br> - rs1_val == 268435456<br>                                                                                                         |[0x800004f6]:c.addw a0, a1<br> |
|  38|[0x80002338]<br>0x0000000020000007|- rs1_val == 536870912<br>                                                                                                                               |[0x80000502]:c.addw a0, a1<br> |
|  39|[0x80002340]<br>0x0000000040000000|- rs2_val == 4611686018427387904<br> - rs1_val == 1073741824<br>                                                                                         |[0x80000512]:c.addw a0, a1<br> |
|  40|[0x80002348]<br>0x000000007FFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 2147483648<br>                                                                                              |[0x80000526]:c.addw a0, a1<br> |
|  41|[0x80002350]<br>0x0000000000000009|- rs1_val == 4294967296<br>                                                                                                                              |[0x80000534]:c.addw a0, a1<br> |
|  42|[0x80002358]<br>0x0000000000020000|- rs1_val == 8589934592<br>                                                                                                                              |[0x80000544]:c.addw a0, a1<br> |
|  43|[0x80002360]<br>0x0000000000000000|- rs2_val == 4398046511104<br> - rs1_val == 17179869184<br>                                                                                              |[0x80000556]:c.addw a0, a1<br> |
|  44|[0x80002368]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == 34359738368<br>                                                                                                                             |[0x80000566]:c.addw a0, a1<br> |
|  45|[0x80002370]<br>0x0000000000800000|- rs2_val == 8388608<br> - rs1_val == 68719476736<br>                                                                                                    |[0x80000576]:c.addw a0, a1<br> |
|  46|[0x80002378]<br>0x0000000000000000|- rs2_val == 9007199254740992<br> - rs1_val == 137438953472<br>                                                                                          |[0x80000588]:c.addw a0, a1<br> |
|  47|[0x80002380]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 274877906944<br>                                                                                                                            |[0x8000059c]:c.addw a0, a1<br> |
|  48|[0x80002388]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                           |[0x800005ae]:c.addw a0, a1<br> |
|  49|[0x80002390]<br>0x0000000000800000|- rs1_val == 2199023255552<br>                                                                                                                           |[0x800005be]:c.addw a0, a1<br> |
|  50|[0x80002398]<br>0x0000000010000000|- rs1_val == 4398046511104<br>                                                                                                                           |[0x800005ce]:c.addw a0, a1<br> |
|  51|[0x800023a0]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br> - rs1_val == 8796093022208<br>                                                                                                  |[0x800005e0]:c.addw a0, a1<br> |
|  52|[0x800023a8]<br>0x0000000000010000|- rs2_val == 65536<br> - rs1_val == 17592186044416<br>                                                                                                   |[0x800005ee]:c.addw a0, a1<br> |
|  53|[0x800023b0]<br>0x0000000040000000|- rs1_val == 35184372088832<br>                                                                                                                          |[0x800005fe]:c.addw a0, a1<br> |
|  54|[0x800023b8]<br>0x0000000000100000|- rs2_val == 1048576<br> - rs1_val == 140737488355328<br>                                                                                                |[0x8000060e]:c.addw a0, a1<br> |
|  55|[0x800023c0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                         |[0x80000620]:c.addw a0, a1<br> |
|  56|[0x800023c8]<br>0x0000000000000000|- rs2_val == 8796093022208<br> - rs1_val == 562949953421312<br>                                                                                          |[0x80000632]:c.addw a0, a1<br> |
|  57|[0x800023d0]<br>0x0000000000000010|- rs2_val == 16<br> - rs1_val == 1125899906842624<br>                                                                                                    |[0x80000640]:c.addw a0, a1<br> |
|  58|[0x800023d8]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 2251799813685248<br>                                                                                           |[0x80000652]:c.addw a0, a1<br> |
|  59|[0x800023e0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br> - rs1_val == 4503599627370496<br>                                                                                                    |[0x80000660]:c.addw a0, a1<br> |
|  60|[0x800023e8]<br>0x0000000000000000|- rs2_val == 1099511627776<br> - rs1_val == 9007199254740992<br>                                                                                         |[0x80000672]:c.addw a0, a1<br> |
|  61|[0x800023f0]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br> - rs1_val == 18014398509481984<br>                                                                                             |[0x80000684]:c.addw a0, a1<br> |
|  62|[0x800023f8]<br>0x0000000000000004|- rs2_val == 4<br> - rs1_val == 36028797018963968<br>                                                                                                    |[0x80000692]:c.addw a0, a1<br> |
|  63|[0x80002400]<br>0x0000000000000400|- rs2_val == 1024<br> - rs1_val == 72057594037927936<br>                                                                                                 |[0x800006a2]:c.addw a0, a1<br> |
|  64|[0x80002408]<br>0x0000000000000005|- rs1_val == 144115188075855872<br>                                                                                                                      |[0x800006b0]:c.addw a0, a1<br> |
|  65|[0x80002410]<br>0x0000000001000000|- rs2_val == 16777216<br> - rs1_val == 288230376151711744<br>                                                                                            |[0x800006c0]:c.addw a0, a1<br> |
|  66|[0x80002418]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -549755813889<br> - rs1_val == 576460752303423488<br>                                                                                       |[0x800006d4]:c.addw a0, a1<br> |
|  67|[0x80002420]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 1152921504606846976<br>                                                                                         |[0x800006e6]:c.addw a0, a1<br> |
|  68|[0x80002428]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br> - rs1_val == 2305843009213693952<br>                                                                                                 |[0x800006f4]:c.addw a0, a1<br> |
|  69|[0x80002430]<br>0xFFFFFFFFFFBFFFFD|- rs1_val == -2<br>                                                                                                                                      |[0x80000702]:c.addw a0, a1<br> |
|  70|[0x80002438]<br>0xFFFFFFFFAAAAAAA7|- rs2_val == -6148914691236517206<br> - rs1_val == -3<br>                                                                                                |[0x80000724]:c.addw a0, a1<br> |
|  71|[0x80002440]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 4503599627370496<br> - rs1_val == -5<br>                                                                                                    |[0x80000732]:c.addw a0, a1<br> |
|  72|[0x80002448]<br>0xFFFFFFFFF7FFFFF6|- rs1_val == -9<br>                                                                                                                                      |[0x80000740]:c.addw a0, a1<br> |
|  73|[0x80002450]<br>0xFFFFFFFFFFFFFFEE|- rs2_val == -70368744177665<br> - rs1_val == -17<br>                                                                                                    |[0x80000750]:c.addw a0, a1<br> |
|  74|[0x80002458]<br>0xFFFFFFFFFFFFFFDE|- rs2_val == -4503599627370497<br> - rs1_val == -33<br>                                                                                                  |[0x80000762]:c.addw a0, a1<br> |
|  75|[0x80002460]<br>0x0000000000007FBF|- rs1_val == -65<br>                                                                                                                                     |[0x8000076e]:c.addw a0, a1<br> |
|  76|[0x80002468]<br>0xFFFFFFFFFFFFFF7A|- rs1_val == -129<br>                                                                                                                                    |[0x8000077a]:c.addw a0, a1<br> |
|  77|[0x80002470]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 2199023255552<br> - rs1_val == -257<br>                                                                                                     |[0x8000078a]:c.addw a0, a1<br> |
|  78|[0x80002478]<br>0x000000000003FDFF|- rs2_val == 262144<br> - rs1_val == -513<br>                                                                                                            |[0x80000798]:c.addw a0, a1<br> |
|  79|[0x80002480]<br>0xFFFFFFFFFFFFFBF5|- rs1_val == -1025<br>                                                                                                                                   |[0x800007a4]:c.addw a0, a1<br> |
|  80|[0x80002488]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                      |[0x800007b8]:c.addw a0, a1<br> |
|  81|[0x80002490]<br>0x0000000000000FFF|- rs2_val == -36028797018963969<br>                                                                                                                      |[0x800007c8]:c.addw a0, a1<br> |
|  82|[0x80002498]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -144115188075855873<br> - rs1_val == -72057594037927937<br>                                                                                 |[0x800007de]:c.addw a0, a1<br> |
|  83|[0x800024a0]<br>0x0000000000000003|- rs2_val == -288230376151711745<br>                                                                                                                     |[0x800007ee]:c.addw a0, a1<br> |
|  84|[0x800024a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                    |[0x80000802]:c.addw a0, a1<br> |
|  85|[0x800024b0]<br>0xFFFFFFFFFF7FFFFE|- rs2_val == -2305843009213693953<br> - rs1_val == -8388609<br>                                                                                          |[0x80000816]:c.addw a0, a1<br> |
|  86|[0x800024b8]<br>0x0000000000FFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                    |[0x80000828]:c.addw a0, a1<br> |
|  87|[0x800024c0]<br>0x0000000055555555|- rs2_val == 6148914691236517205<br>                                                                                                                     |[0x8000084e]:c.addw a0, a1<br> |
|  88|[0x800024c8]<br>0xFFFFFFFFFFFFF7FE|- rs2_val == -140737488355329<br> - rs1_val == -2049<br>                                                                                                 |[0x80000862]:c.addw a0, a1<br> |
|  89|[0x800024d0]<br>0xFFFFFFFFFFFFDFF7|- rs1_val == -8193<br>                                                                                                                                   |[0x8000086e]:c.addw a0, a1<br> |
|  90|[0x800024d8]<br>0xFFFFFFFFFFFFBFFE|- rs1_val == -16385<br>                                                                                                                                  |[0x80000880]:c.addw a0, a1<br> |
|  91|[0x800024e0]<br>0xFFFFFFFFFFFF7FFE|- rs2_val == -2251799813685249<br> - rs1_val == -32769<br>                                                                                               |[0x80000892]:c.addw a0, a1<br> |
|  92|[0x800024e8]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == 562949953421312<br> - rs1_val == -65537<br>                                                                                                 |[0x800008a2]:c.addw a0, a1<br> |
|  93|[0x800024f0]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == 17179869184<br> - rs1_val == -131073<br>                                                                                                    |[0x800008b2]:c.addw a0, a1<br> |
|  94|[0x800024f8]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 549755813888<br> - rs1_val == -262145<br>                                                                                                   |[0x800008c4]:c.addw a0, a1<br> |
|  95|[0x80002500]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == 72057594037927936<br> - rs1_val == -524289<br>                                                                                              |[0x800008d6]:c.addw a0, a1<br> |
|  96|[0x80002508]<br>0xFFFFFFFFFFEFFFFE|- rs1_val == -1048577<br>                                                                                                                                |[0x800008ea]:c.addw a0, a1<br> |
|  97|[0x80002510]<br>0xFFFFFFFFFFDFFFFE|- rs1_val == -2097153<br>                                                                                                                                |[0x800008fe]:c.addw a0, a1<br> |
|  98|[0x80002518]<br>0xFFFFFFFFFFC3FFFF|- rs1_val == -4194305<br>                                                                                                                                |[0x8000090e]:c.addw a0, a1<br> |
|  99|[0x80002520]<br>0x000000000EFFFFFF|- rs1_val == -16777217<br>                                                                                                                               |[0x8000091e]:c.addw a0, a1<br> |
| 100|[0x80002528]<br>0xFFFFFFFFFDFFFFFE|- rs2_val == -4294967297<br> - rs1_val == -33554433<br>                                                                                                  |[0x80000932]:c.addw a0, a1<br> |
| 101|[0x80002530]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                               |[0x80000944]:c.addw a0, a1<br> |
| 102|[0x80002538]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 2251799813685248<br> - rs1_val == -134217729<br>                                                                                            |[0x80000956]:c.addw a0, a1<br> |
| 103|[0x80002540]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                              |[0x80000968]:c.addw a0, a1<br> |
| 104|[0x80002548]<br>0xFFFFFFFFDFFFFFF9|- rs1_val == -536870913<br>                                                                                                                              |[0x80000976]:c.addw a0, a1<br> |
| 105|[0x80002550]<br>0xFFFFFFFFBFFFFFFE|- rs1_val == -1073741825<br>                                                                                                                             |[0x8000098a]:c.addw a0, a1<br> |
| 106|[0x80002558]<br>0xFFFFFFFF87FFFFFF|- rs2_val == 134217728<br> - rs1_val == -2147483649<br>                                                                                                  |[0x8000099c]:c.addw a0, a1<br> |
| 107|[0x80002560]<br>0x000000000003FFFF|- rs1_val == -4294967297<br>                                                                                                                             |[0x800009ae]:c.addw a0, a1<br> |
| 108|[0x80002568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                             |[0x800009c2]:c.addw a0, a1<br> |
| 109|[0x80002570]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2305843009213693952<br> - rs1_val == -17179869185<br>                                                                                       |[0x800009d6]:c.addw a0, a1<br> |
| 110|[0x80002578]<br>0x0000000000000001|- rs1_val == -34359738369<br>                                                                                                                            |[0x800009e6]:c.addw a0, a1<br> |
| 111|[0x80002580]<br>0x000000000007FFFF|- rs2_val == 524288<br> - rs1_val == -68719476737<br>                                                                                                    |[0x800009f8]:c.addw a0, a1<br> |
| 112|[0x80002588]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -137438953473<br>                                                                                                                           |[0x80000a0e]:c.addw a0, a1<br> |
| 113|[0x80002590]<br>0xFFFFFFFFFFFFFFEE|- rs2_val == -17<br> - rs1_val == -274877906945<br>                                                                                                      |[0x80000a1e]:c.addw a0, a1<br> |
| 114|[0x80002598]<br>0x0000000001FFFFFF|- rs2_val == 33554432<br> - rs1_val == -549755813889<br>                                                                                                 |[0x80000a30]:c.addw a0, a1<br> |
| 115|[0x800025a0]<br>0x0000000000000FFF|- rs2_val == 4096<br> - rs1_val == -1099511627777<br>                                                                                                    |[0x80000a40]:c.addw a0, a1<br> |
| 116|[0x800025a8]<br>0x0000000000000000|- rs1_val == -2199023255553<br>                                                                                                                          |[0x80000a50]:c.addw a0, a1<br> |
| 117|[0x800025b0]<br>0xFFFFFFFFFFFF7FFE|- rs2_val == -32769<br> - rs1_val == -4398046511105<br>                                                                                                  |[0x80000a62]:c.addw a0, a1<br> |
| 118|[0x800025b8]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -17592186044417<br> - rs1_val == -8796093022209<br>                                                                                         |[0x80000a78]:c.addw a0, a1<br> |
| 119|[0x800025c0]<br>0xFFFFFFFFFFFF7FFE|- rs1_val == -17592186044417<br>                                                                                                                         |[0x80000a8a]:c.addw a0, a1<br> |
| 120|[0x800025c8]<br>0xFFFFFFFFFFFEFFFE|- rs2_val == -65537<br> - rs1_val == -35184372088833<br>                                                                                                 |[0x80000a9c]:c.addw a0, a1<br> |
| 121|[0x800025d0]<br>0xFFFFFFFFFFFFFF7E|- rs2_val == -129<br> - rs1_val == -70368744177665<br>                                                                                                   |[0x80000aae]:c.addw a0, a1<br> |
| 122|[0x800025d8]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -140737488355329<br>                                                                                                                        |[0x80000abe]:c.addw a0, a1<br> |
| 123|[0x800025e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                        |[0x80000ad2]:c.addw a0, a1<br> |
| 124|[0x800025e8]<br>0x0000000000000007|- rs2_val == 8<br> - rs1_val == -36028797018963969<br>                                                                                                   |[0x80000ae2]:c.addw a0, a1<br> |
| 125|[0x800025f0]<br>0xFFFFFFFFAAAAAAA9|- rs1_val == -144115188075855873<br>                                                                                                                     |[0x80000b0a]:c.addw a0, a1<br> |
| 126|[0x800025f8]<br>0x000000000000003F|- rs2_val == 64<br> - rs1_val == -288230376151711745<br>                                                                                                 |[0x80000b1c]:c.addw a0, a1<br> |
| 127|[0x80002600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                     |[0x80000b30]:c.addw a0, a1<br> |
| 128|[0x80002608]<br>0x0000000000000003|- rs2_val == -9007199254740993<br>                                                                                                                       |[0x80000b40]:c.addw a0, a1<br> |
| 129|[0x80002610]<br>0x00000000000001FF|- rs2_val == 512<br> - rs1_val == -1152921504606846977<br>                                                                                               |[0x80000b52]:c.addw a0, a1<br> |
| 130|[0x80002618]<br>0x000000001FFFFFFF|- rs2_val == 536870912<br> - rs1_val == -2305843009213693953<br>                                                                                         |[0x80000b64]:c.addw a0, a1<br> |
| 131|[0x80002620]<br>0xFFFFFFFFFFFFF7FE|- rs1_val == -4611686018427387905<br>                                                                                                                    |[0x80000b78]:c.addw a0, a1<br> |
| 132|[0x80002628]<br>0x0000000059555555|- rs2_val == 67108864<br> - rs1_val == 6148914691236517205<br>                                                                                           |[0x80000b9c]:c.addw a0, a1<br> |
| 133|[0x80002630]<br>0xFFFFFFFFAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                    |[0x80000bc2]:c.addw a0, a1<br> |
| 134|[0x80002638]<br>0x000000000000001F|- rs2_val == 32<br>                                                                                                                                      |[0x80000bd4]:c.addw a0, a1<br> |
| 135|[0x80002640]<br>0x0000000000000080|- rs2_val == 128<br>                                                                                                                                     |[0x80000be0]:c.addw a0, a1<br> |
| 136|[0x80002648]<br>0x00000000000000FA|- rs2_val == 256<br>                                                                                                                                     |[0x80000bec]:c.addw a0, a1<br> |
| 137|[0x80002650]<br>0x000000000000A000|- rs2_val == 8192<br>                                                                                                                                    |[0x80000bf6]:c.addw a0, a1<br> |
| 138|[0x80002658]<br>0x0000000000004000|- rs2_val == 16384<br>                                                                                                                                   |[0x80000c04]:c.addw a0, a1<br> |
| 139|[0x80002660]<br>0x0000000000200000|- rs2_val == 2097152<br>                                                                                                                                 |[0x80000c14]:c.addw a0, a1<br> |
| 140|[0x80002668]<br>0xFFFFFFFF80000000|- rs2_val == 2147483648<br>                                                                                                                              |[0x80000c26]:c.addw a0, a1<br> |
| 141|[0x80002670]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == 4294967296<br>                                                                                                                              |[0x80000c36]:c.addw a0, a1<br> |
| 142|[0x80002678]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == 8589934592<br>                                                                                                                              |[0x80000c46]:c.addw a0, a1<br> |
| 143|[0x80002680]<br>0x0000000000000000|- rs2_val == 68719476736<br>                                                                                                                             |[0x80000c58]:c.addw a0, a1<br> |
| 144|[0x80002688]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == 137438953472<br>                                                                                                                            |[0x80000c66]:c.addw a0, a1<br> |
| 145|[0x80002690]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 274877906944<br>                                                                                                                            |[0x80000c78]:c.addw a0, a1<br> |
| 146|[0x80002698]<br>0x0000000000000000|- rs2_val == 17592186044416<br>                                                                                                                          |[0x80000c8a]:c.addw a0, a1<br> |
| 147|[0x800026a0]<br>0x0000000000000800|- rs2_val == 35184372088832<br>                                                                                                                          |[0x80000c9c]:c.addw a0, a1<br> |
| 148|[0x800026b0]<br>0x0000000000000006|- rs2_val == 281474976710656<br>                                                                                                                         |[0x80000cbc]:c.addw a0, a1<br> |
| 149|[0x800026b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -562949953421313<br>                                                                                      |[0x80000cd0]:c.addw a0, a1<br> |
| 150|[0x800026c0]<br>0x0000000001000000|- rs2_val == 18014398509481984<br>                                                                                                                       |[0x80000ce0]:c.addw a0, a1<br> |
| 151|[0x800026c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                                      |[0x80000cf4]:c.addw a0, a1<br> |
| 152|[0x800026d0]<br>0x0000000000000001|- rs2_val == 288230376151711744<br>                                                                                                                      |[0x80000d02]:c.addw a0, a1<br> |
| 153|[0x800026d8]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == 1152921504606846976<br>                                                                                                                     |[0x80000d14]:c.addw a0, a1<br> |
| 154|[0x800026e0]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                      |[0x80000d22]:c.addw a0, a1<br> |
| 155|[0x800026e8]<br>0xFFFFFFFFFFFFFFF6|- rs2_val == -9<br>                                                                                                                                      |[0x80000d32]:c.addw a0, a1<br> |
| 156|[0x800026f0]<br>0xFFFFFFFFFFFFBFBE|- rs2_val == -65<br>                                                                                                                                     |[0x80000d40]:c.addw a0, a1<br> |
| 157|[0x800026f8]<br>0xFFFFFFFFFFFFFE7E|- rs2_val == -257<br>                                                                                                                                    |[0x80000d4e]:c.addw a0, a1<br> |
| 158|[0x80002700]<br>0xFFFFFFFFFFFFEFF7|- rs2_val == -4097<br>                                                                                                                                   |[0x80000d5a]:c.addw a0, a1<br> |
| 159|[0x80002708]<br>0xFFFFFFFFFFFFE0FF|- rs2_val == -8193<br>                                                                                                                                   |[0x80000d68]:c.addw a0, a1<br> |
| 160|[0x80002710]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                  |[0x80000d78]:c.addw a0, a1<br> |
| 161|[0x80002718]<br>0xFFFFFFFFFFFBFFF8|- rs2_val == -262145<br>                                                                                                                                 |[0x80000d86]:c.addw a0, a1<br> |
| 162|[0x80002720]<br>0xFFFFFFFFFFEFFFFE|- rs2_val == -1048577<br>                                                                                                                                |[0x80000d9a]:c.addw a0, a1<br> |
| 163|[0x80002728]<br>0xFFFFFFFFFFDFFFF8|- rs2_val == -2097153<br>                                                                                                                                |[0x80000da8]:c.addw a0, a1<br> |
| 164|[0x80002730]<br>0xFFFFFFFFFEFFFEFE|- rs2_val == -16777217<br>                                                                                                                               |[0x80000db8]:c.addw a0, a1<br> |
| 165|[0x80002738]<br>0x0000000053555554|- rs2_val == -33554433<br>                                                                                                                               |[0x80000dde]:c.addw a0, a1<br> |
| 166|[0x80002740]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                               |[0x80000df0]:c.addw a0, a1<br> |
| 167|[0x80002748]<br>0x0000000045555554|- rs2_val == -268435457<br>                                                                                                                              |[0x80000e16]:c.addw a0, a1<br> |
| 168|[0x80002750]<br>0x000000007FFFFFFE|- rs2_val == -2147483649<br>                                                                                                                             |[0x80000e2c]:c.addw a0, a1<br> |
| 169|[0x80002758]<br>0x0000000000000003|- rs2_val == -8589934593<br>                                                                                                                             |[0x80000e3c]:c.addw a0, a1<br> |
| 170|[0x80002760]<br>0xFFFFFFFFEFFFFFFE|- rs2_val == -17179869185<br>                                                                                                                            |[0x80000e50]:c.addw a0, a1<br> |
| 171|[0x80002768]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                           |[0x80000e64]:c.addw a0, a1<br> |
| 172|[0x80002770]<br>0xFFFFFFFFFFFFFFF6|- rs2_val == -274877906945<br>                                                                                                                           |[0x80000e74]:c.addw a0, a1<br> |
| 173|[0x80002778]<br>0x0000000000000008|- rs2_val == -1099511627777<br>                                                                                                                          |[0x80000e84]:c.addw a0, a1<br> |
| 174|[0x80002780]<br>0xFFFFFFFFFFFFFBFE|- rs1_val == -2251799813685249<br>                                                                                                                       |[0x80000e96]:c.addw a0, a1<br> |
| 175|[0x80002788]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                          |[0x80000eaa]:c.addw a0, a1<br> |
| 176|[0x80002790]<br>0xFFFFFFFFFFFFFFEE|- rs1_val == -1125899906842625<br>                                                                                                                       |[0x80000eba]:c.addw a0, a1<br> |
| 177|[0x80002798]<br>0xFFFFFFFFFFFFFF7E|- rs2_val == -1125899906842625<br>                                                                                                                       |[0x80000ecc]:c.addw a0, a1<br> |
| 178|[0x800027a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                       |[0x80000ee0]:c.addw a0, a1<br> |
| 179|[0x800027a8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -9007199254740993<br>                                                                                                                       |[0x80000ef6]:c.addw a0, a1<br> |
| 180|[0x800027b0]<br>0x000000000000001F|- rs1_val == -18014398509481985<br>                                                                                                                      |[0x80000f08]:c.addw a0, a1<br> |
