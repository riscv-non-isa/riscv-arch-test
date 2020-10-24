
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000910')]      |
| SIG_REGION                | [('0x80002210', '0x80002740')]      |
| COV_LABELS                | ('csrli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
| Total Unique Coverpoints  | 160      |
| Total Signature Updates   | 268      |
| Ops w/o unique coverpoints | 0      |
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

|s.no|            signature             |                                                                coverpoints                                                                 |             code              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : c.srli<br> - rs1 : x13<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -2<br>                                              |[0x800002d8]:c.srli a3, 63<br> |
|   2|[0x80002218]<br>0x0000001000000000|- rs1 : x14<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 18014398509481984<br>                                                     |[0x800002e4]:c.srli a4, 18<br> |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x10<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>                       |[0x800002ec]:c.srli a0, 16<br> |
|   4|[0x80002228]<br>0x4000000000000000|- rs1 : x9<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 1<br> |[0x800002f8]:c.srli s1, 1<br>  |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x11<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                                      |[0x80000300]:c.srli a1, 63<br> |
|   6|[0x80002238]<br>0x003FFFFFFFFFFFFF|- rs1 : x12<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                   |[0x8000030e]:c.srli a2, 9<br>  |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x8<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                    |[0x80000316]:c.srli s0, 18<br> |
|   8|[0x80002248]<br>0x0000000000001000|- rs1 : x15<br> - rs1_val == 16384<br> - imm_val == 2<br>                                                                                   |[0x8000031e]:c.srli a5, 2<br>  |
|   9|[0x80002250]<br>0x0FFFFFFFFFFFFFFF|- rs1_val == -5<br> - imm_val == 4<br>                                                                                                      |[0x80000326]:c.srli a0, 4<br>  |
|  10|[0x80002258]<br>0x0000000000000000|- imm_val == 8<br>                                                                                                                          |[0x8000032e]:c.srli a0, 8<br>  |
|  11|[0x80002260]<br>0x0000000000000000|- rs1_val == 2147483648<br> - imm_val == 32<br>                                                                                             |[0x8000033a]:c.srli a0, 32<br> |
|  12|[0x80002268]<br>0x0000000000000000|- rs1_val == 4096<br> - imm_val == 62<br>                                                                                                   |[0x80000342]:c.srli a0, 62<br> |
|  13|[0x80002270]<br>0x0000000000000000|- imm_val == 61<br>                                                                                                                         |[0x8000034a]:c.srli a0, 61<br> |
|  14|[0x80002278]<br>0x000000000000000F|- imm_val == 59<br>                                                                                                                         |[0x80000358]:c.srli a0, 59<br> |
|  15|[0x80002280]<br>0x00000000000001FE|- rs1_val == -36028797018963969<br> - imm_val == 55<br>                                                                                     |[0x80000366]:c.srli a0, 55<br> |
|  16|[0x80002288]<br>0x000000000001FBFF|- rs1_val == -144115188075855873<br> - imm_val == 47<br>                                                                                    |[0x80000374]:c.srli a0, 47<br> |
|  17|[0x80002290]<br>0x00000001FFFFFBFF|- rs1_val == -2199023255553<br> - imm_val == 31<br>                                                                                         |[0x80000382]:c.srli a0, 31<br> |
|  18|[0x80002298]<br>0x0000000000000000|- rs1_val == 2<br> - imm_val == 21<br>                                                                                                      |[0x8000038a]:c.srli a0, 21<br> |
|  19|[0x800022a0]<br>0x0000000000000000|- rs1_val == 4<br> - imm_val == 42<br>                                                                                                      |[0x80000392]:c.srli a0, 42<br> |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1_val == 8<br>                                                                                                                          |[0x8000039a]:c.srli a0, 47<br> |
|  21|[0x800022b0]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                         |[0x800003a4]:c.srli a0, 9<br>  |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1_val == 64<br>                                                                                                                         |[0x800003ae]:c.srli a0, 14<br> |
|  23|[0x800022c0]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                                                        |[0x800003b8]:c.srli a0, 17<br> |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                                                        |[0x800003c2]:c.srli a0, 12<br> |
|  25|[0x800022d0]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                                                        |[0x800003cc]:c.srli a0, 16<br> |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                                                       |[0x800003d6]:c.srli a0, 63<br> |
|  27|[0x800022e0]<br>0x0000000000000004|- rs1_val == 2048<br>                                                                                                                       |[0x800003e2]:c.srli a0, 9<br>  |
|  28|[0x800022e8]<br>0x0000000000000040|- rs1_val == 8192<br>                                                                                                                       |[0x800003ea]:c.srli a0, 7<br>  |
|  29|[0x800022f0]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                      |[0x800003f2]:c.srli a0, 19<br> |
|  30|[0x800022f8]<br>0x0000000000000200|- rs1_val == 65536<br>                                                                                                                      |[0x800003fa]:c.srli a0, 7<br>  |
|  31|[0x80002300]<br>0x0000000000000010|- rs1_val == 131072<br>                                                                                                                     |[0x80000404]:c.srli a0, 13<br> |
|  32|[0x80002308]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                     |[0x8000040e]:c.srli a0, 42<br> |
|  33|[0x80002310]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                     |[0x80000418]:c.srli a0, 62<br> |
|  34|[0x80002318]<br>0x0000000000000040|- rs1_val == 1048576<br>                                                                                                                    |[0x80000422]:c.srli a0, 14<br> |
|  35|[0x80002320]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                    |[0x8000042c]:c.srli a0, 63<br> |
|  36|[0x80002328]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                    |[0x80000436]:c.srli a0, 63<br> |
|  37|[0x80002330]<br>0x0000000000000020|- rs1_val == 8388608<br>                                                                                                                    |[0x80000440]:c.srli a0, 18<br> |
|  38|[0x80002338]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                   |[0x8000044a]:c.srli a0, 63<br> |
|  39|[0x80002340]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                   |[0x80000454]:c.srli a0, 55<br> |
|  40|[0x80002348]<br>0x0000000000040000|- rs1_val == 67108864<br>                                                                                                                   |[0x8000045e]:c.srli a0, 8<br>  |
|  41|[0x80002350]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                  |[0x80000468]:c.srli a0, 32<br> |
|  42|[0x80002358]<br>0x0000000000004000|- rs1_val == 268435456<br>                                                                                                                  |[0x80000472]:c.srli a0, 14<br> |
|  43|[0x80002360]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                  |[0x8000047c]:c.srli a0, 47<br> |
|  44|[0x80002368]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                 |[0x80000486]:c.srli a0, 55<br> |
|  45|[0x80002370]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                 |[0x80000492]:c.srli a0, 47<br> |
|  46|[0x80002378]<br>0x0000000000004000|- rs1_val == 8589934592<br>                                                                                                                 |[0x8000049e]:c.srli a0, 19<br> |
|  47|[0x80002380]<br>0x0000000000040000|- rs1_val == 17179869184<br>                                                                                                                |[0x800004aa]:c.srli a0, 16<br> |
|  48|[0x80002388]<br>0x0000000000010000|- rs1_val == 34359738368<br>                                                                                                                |[0x800004b6]:c.srli a0, 19<br> |
|  49|[0x80002390]<br>0x0000000080000000|- rs1_val == 68719476736<br>                                                                                                                |[0x800004c2]:c.srli a0, 5<br>  |
|  50|[0x80002398]<br>0x0000000004000000|- rs1_val == 137438953472<br>                                                                                                               |[0x800004ce]:c.srli a0, 11<br> |
|  51|[0x800023a0]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                               |[0x800004da]:c.srli a0, 62<br> |
|  52|[0x800023a8]<br>0x0000000800000000|- rs1_val == 549755813888<br>                                                                                                               |[0x800004e6]:c.srli a0, 4<br>  |
|  53|[0x800023b0]<br>0x0000000004000000|- rs1_val == 1099511627776<br>                                                                                                              |[0x800004f2]:c.srli a0, 14<br> |
|  54|[0x800023b8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                              |[0x800004fe]:c.srli a0, 55<br> |
|  55|[0x800023c0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                              |[0x8000050a]:c.srli a0, 47<br> |
|  56|[0x800023c8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                              |[0x80000516]:c.srli a0, 61<br> |
|  57|[0x800023d0]<br>0x0000008000000000|- rs1_val == 17592186044416<br>                                                                                                             |[0x80000522]:c.srli a0, 5<br>  |
|  58|[0x800023d8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                             |[0x8000052e]:c.srli a0, 62<br> |
|  59|[0x800023e0]<br>0x0000000008000000|- rs1_val == 70368744177664<br>                                                                                                             |[0x8000053a]:c.srli a0, 19<br> |
|  60|[0x800023e8]<br>0x0000000000008000|- rs1_val == 140737488355328<br>                                                                                                            |[0x80000546]:c.srli a0, 32<br> |
|  61|[0x800023f0]<br>0x0000020000000000|- rs1_val == 281474976710656<br>                                                                                                            |[0x80000552]:c.srli a0, 7<br>  |
|  62|[0x800023f8]<br>0x0000020000000000|- rs1_val == 562949953421312<br>                                                                                                            |[0x8000055e]:c.srli a0, 8<br>  |
|  63|[0x80002400]<br>0x0000000000000008|- rs1_val == 1125899906842624<br>                                                                                                           |[0x8000056a]:c.srli a0, 47<br> |
|  64|[0x80002408]<br>0x0000000040000000|- rs1_val == 2251799813685248<br>                                                                                                           |[0x80000576]:c.srli a0, 21<br> |
|  65|[0x80002410]<br>0x0008000000000000|- rs1_val == 4503599627370496<br>                                                                                                           |[0x80000582]:c.srli a0, 1<br>  |
|  66|[0x80002418]<br>0x0000002000000000|- rs1_val == 9007199254740992<br>                                                                                                           |[0x8000058e]:c.srli a0, 16<br> |
|  67|[0x80002420]<br>0x0000000000002000|- rs1_val == 36028797018963968<br>                                                                                                          |[0x8000059a]:c.srli a0, 42<br> |
|  68|[0x80002428]<br>0x0000004000000000|- rs1_val == 72057594037927936<br>                                                                                                          |[0x800005a6]:c.srli a0, 18<br> |
|  69|[0x80002430]<br>0x0100000000000000|- rs1_val == 144115188075855872<br>                                                                                                         |[0x800005b2]:c.srli a0, 1<br>  |
|  70|[0x80002438]<br>0x0080000000000000|- rs1_val == 288230376151711744<br>                                                                                                         |[0x800005be]:c.srli a0, 3<br>  |
|  71|[0x80002440]<br>0x0000400000000000|- rs1_val == 576460752303423488<br>                                                                                                         |[0x800005ca]:c.srli a0, 13<br> |
|  72|[0x80002448]<br>0x0001FFFFEFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                             |[0x800005d8]:c.srli a0, 15<br> |
|  73|[0x80002450]<br>0x000007FFFF7FFFFF|- rs1_val == -17592186044417<br>                                                                                                            |[0x800005e6]:c.srli a0, 21<br> |
|  74|[0x80002458]<br>0x0000000000000003|- rs1_val == -35184372088833<br>                                                                                                            |[0x800005f4]:c.srli a0, 62<br> |
|  75|[0x80002460]<br>0x0001FFFF7FFFFFFF|- rs1_val == -70368744177665<br>                                                                                                            |[0x80000602]:c.srli a0, 15<br> |
|  76|[0x80002468]<br>0x1FFFEFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                           |[0x80000610]:c.srli a0, 3<br>  |
|  77|[0x80002470]<br>0x7FFF7FFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                           |[0x8000061e]:c.srli a0, 1<br>  |
|  78|[0x80002478]<br>0x1FFFBFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                           |[0x8000062c]:c.srli a0, 3<br>  |
|  79|[0x80002480]<br>0x003FFEFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                          |[0x8000063a]:c.srli a0, 10<br> |
|  80|[0x80002488]<br>0x01FFEFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                          |[0x80000648]:c.srli a0, 7<br>  |
|  81|[0x80002490]<br>0x00000000000001FF|- rs1_val == -4503599627370497<br>                                                                                                          |[0x80000656]:c.srli a0, 55<br> |
|  82|[0x80002498]<br>0x1FFBFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                          |[0x80000664]:c.srli a0, 3<br>  |
|  83|[0x800024a0]<br>0x00000001FF7FFFFF|- rs1_val == -18014398509481985<br>                                                                                                         |[0x80000672]:c.srli a0, 31<br> |
|  84|[0x800024a8]<br>0x00000000FEFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                         |[0x80000680]:c.srli a0, 32<br> |
|  85|[0x800024b0]<br>0x00000001F7FFFFFF|- rs1_val == -288230376151711745<br>                                                                                                        |[0x8000068e]:c.srli a0, 31<br> |
|  86|[0x800024b8]<br>0x00000001EFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                        |[0x8000069c]:c.srli a0, 31<br> |
|  87|[0x800024c0]<br>0x0000000000000007|- rs1_val == -1152921504606846977<br>                                                                                                       |[0x800006aa]:c.srli a0, 61<br> |
|  88|[0x800024c8]<br>0x0DFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                       |[0x800006b8]:c.srli a0, 4<br>  |
|  89|[0x800024d0]<br>0x00005FFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                       |[0x800006c6]:c.srli a0, 17<br> |
|  90|[0x800024d8]<br>0x00000000AAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                        |[0x800006e6]:c.srli a0, 31<br> |
|  91|[0x800024e0]<br>0x0000555555555555|- rs1_val == -6148914691236517206<br>                                                                                                       |[0x80000706]:c.srli a0, 17<br> |
|  92|[0x800024e8]<br>0x0001000000000000|- rs1_val == 1152921504606846976<br>                                                                                                        |[0x80000712]:c.srli a0, 12<br> |
|  93|[0x800024f0]<br>0x0200000000000000|- rs1_val == 2305843009213693952<br>                                                                                                        |[0x8000071e]:c.srli a0, 4<br>  |
|  94|[0x800024f8]<br>0x0000100000000000|- rs1_val == 4611686018427387904<br>                                                                                                        |[0x8000072a]:c.srli a0, 18<br> |
|  95|[0x80002500]<br>0x0000000000000003|- rs1_val == -3<br>                                                                                                                         |[0x80000732]:c.srli a0, 62<br> |
|  96|[0x80002508]<br>0x00001FFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                         |[0x8000073a]:c.srli a0, 19<br> |
|  97|[0x80002510]<br>0x07FFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                        |[0x80000742]:c.srli a0, 5<br>  |
|  98|[0x80002518]<br>0x01FFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                        |[0x8000074c]:c.srli a0, 7<br>  |
|  99|[0x80002520]<br>0x0000000000000007|- rs1_val == -65<br>                                                                                                                        |[0x80000756]:c.srli a0, 61<br> |
| 100|[0x80002528]<br>0x03FFFFFFFFFFFFFD|- rs1_val == -129<br>                                                                                                                       |[0x80000760]:c.srli a0, 6<br>  |
| 101|[0x80002530]<br>0x01FFFFFFFFFFFFFD|- rs1_val == -257<br>                                                                                                                       |[0x8000076a]:c.srli a0, 7<br>  |
| 102|[0x80002538]<br>0x0000000000000007|- rs1_val == -513<br>                                                                                                                       |[0x80000774]:c.srli a0, 61<br> |
| 103|[0x80002540]<br>0x0000000000000003|- rs1_val == -1025<br>                                                                                                                      |[0x8000077e]:c.srli a0, 62<br> |
| 104|[0x80002548]<br>0x0000000000000007|- rs1_val == -2049<br>                                                                                                                      |[0x8000078a]:c.srli a0, 61<br> |
| 105|[0x80002550]<br>0x000FFFFFFFFFFFFE|- rs1_val == -4097<br>                                                                                                                      |[0x80000794]:c.srli a0, 12<br> |
| 106|[0x80002558]<br>0x0003FFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                      |[0x8000079e]:c.srli a0, 14<br> |
| 107|[0x80002560]<br>0x00007FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                     |[0x800007a8]:c.srli a0, 17<br> |
| 108|[0x80002568]<br>0x00FFFFFFFFFFFF7F|- rs1_val == -32769<br>                                                                                                                     |[0x800007b2]:c.srli a0, 8<br>  |
| 109|[0x80002570]<br>0x000FFFFFFFFFFFEF|- rs1_val == -65537<br>                                                                                                                     |[0x800007bc]:c.srli a0, 12<br> |
| 110|[0x80002578]<br>0x00007FFFFFFFFFFE|- rs1_val == -131073<br>                                                                                                                    |[0x800007c6]:c.srli a0, 17<br> |
| 111|[0x80002580]<br>0x0000FFFFFFFFFFFB|- rs1_val == -262145<br>                                                                                                                    |[0x800007d2]:c.srli a0, 16<br> |
| 112|[0x80002588]<br>0x0000000000000007|- rs1_val == -524289<br>                                                                                                                    |[0x800007de]:c.srli a0, 61<br> |
| 113|[0x80002590]<br>0x00FFFFFFFFFFEFFF|- rs1_val == -1048577<br>                                                                                                                   |[0x800007ea]:c.srli a0, 8<br>  |
| 114|[0x80002598]<br>0x003FFFFFFFFFF7FF|- rs1_val == -2097153<br>                                                                                                                   |[0x800007f6]:c.srli a0, 10<br> |
| 115|[0x800025a0]<br>0x7FFFFFFFFFDFFFFF|- rs1_val == -4194305<br>                                                                                                                   |[0x80000802]:c.srli a0, 1<br>  |
| 116|[0x800025a8]<br>0x1FFFFFFFFFEFFFFF|- rs1_val == -8388609<br>                                                                                                                   |[0x8000080e]:c.srli a0, 3<br>  |
| 117|[0x800025b0]<br>0x00000000FFFFFFFF|- rs1_val == -16777217<br>                                                                                                                  |[0x8000081a]:c.srli a0, 32<br> |
| 118|[0x800025b8]<br>0x000FFFFFFFFFDFFF|- rs1_val == -33554433<br>                                                                                                                  |[0x80000826]:c.srli a0, 12<br> |
| 119|[0x800025c0]<br>0x003FFFFFFFFEFFFF|- rs1_val == -67108865<br>                                                                                                                  |[0x80000832]:c.srli a0, 10<br> |
| 120|[0x800025c8]<br>0x1FFFFFFFFEFFFFFF|- rs1_val == -134217729<br>                                                                                                                 |[0x8000083e]:c.srli a0, 3<br>  |
| 121|[0x800025d0]<br>0x7FFFFFFFF7FFFFFF|- rs1_val == -268435457<br>                                                                                                                 |[0x8000084a]:c.srli a0, 1<br>  |
| 122|[0x800025d8]<br>0x3FFFFFFFF7FFFFFF|- rs1_val == -536870913<br>                                                                                                                 |[0x80000856]:c.srli a0, 2<br>  |
| 123|[0x800025e0]<br>0x0000000000000007|- rs1_val == -1073741825<br>                                                                                                                |[0x80000862]:c.srli a0, 61<br> |
| 124|[0x800025e8]<br>0x00001FFFFFFFEFFF|- rs1_val == -2147483649<br>                                                                                                                |[0x80000870]:c.srli a0, 19<br> |
| 125|[0x800025f0]<br>0x03FFFFFFFBFFFFFF|- rs1_val == -4294967297<br>                                                                                                                |[0x8000087e]:c.srli a0, 6<br>  |
| 126|[0x800025f8]<br>0x00000000FFFFFFFD|- rs1_val == -8589934593<br>                                                                                                                |[0x8000088c]:c.srli a0, 32<br> |
| 127|[0x80002600]<br>0x003FFFFFFEFFFFFF|- rs1_val == -17179869185<br>                                                                                                               |[0x8000089a]:c.srli a0, 10<br> |
| 128|[0x80002608]<br>0x00000001FFFFFFEF|- rs1_val == -34359738369<br>                                                                                                               |[0x800008a8]:c.srli a0, 31<br> |
| 129|[0x80002610]<br>0x00000000003FFFFF|- rs1_val == -68719476737<br>                                                                                                               |[0x800008b6]:c.srli a0, 42<br> |
| 130|[0x80002618]<br>0x00000000FFFFFFDF|- rs1_val == -137438953473<br>                                                                                                              |[0x800008c4]:c.srli a0, 32<br> |
| 131|[0x80002620]<br>0x00000000003FFFFF|- rs1_val == -274877906945<br>                                                                                                              |[0x800008d2]:c.srli a0, 42<br> |
| 132|[0x80002628]<br>0x000000000000001F|- rs1_val == -549755813889<br>                                                                                                              |[0x800008e0]:c.srli a0, 59<br> |
| 133|[0x80002630]<br>0x1FFFFFDFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                             |[0x800008ee]:c.srli a0, 3<br>  |
| 134|[0x80002638]<br>0x000000000000001F|- rs1_val == -4398046511105<br>                                                                                                             |[0x800008fc]:c.srli a0, 59<br> |
