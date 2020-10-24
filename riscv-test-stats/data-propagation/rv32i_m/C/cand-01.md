
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800006c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002428')]      |
| COV_LABELS                | ('cand',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cand-01.S/cand-01.S    |
| Total Unique Coverpoints  | 159      |
| Total Signature Updates   | 100      |
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

|s.no|        signature         |                                                              coverpoints                                                              |             code             |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : c.and<br> - rs1 : x8<br> - rs2 : x10<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 16384<br> - rs1_val == 1048576<br> |[0x80000102]:c.and s0, a0<br> |
|   2|[0x80002214]<br>0x00100000|- rs1 : x9<br> - rs2 : x9<br> - rs1 == rs2<br> - rs2_val == 1048576<br>                                                                |[0x80000112]:c.and s1, s1<br> |
|   3|[0x80002218]<br>0x00000000|- rs1 : x11<br> - rs2 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 2097152<br> - rs1_val == -2147483648<br>                  |[0x80000120]:c.and a1, a5<br> |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x14<br> - rs2 : x8<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                   |[0x8000012a]:c.and a4, s0<br> |
|   5|[0x80002220]<br>0x7FFFFFDF|- rs1 : x15<br> - rs2 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val < 0<br> - rs2_val == -33<br> - rs1_val == 2147483647<br>    |[0x8000013a]:c.and a5, a2<br> |
|   6|[0x80002224]<br>0x00000000|- rs1 : x12<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == 512<br>                                                                |[0x80000146]:c.and a2, a3<br> |
|   7|[0x80002228]<br>0x00000000|- rs1 : x10<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 4<br>                        |[0x80000152]:c.and a0, a1<br> |
|   8|[0x8000222c]<br>0x3FFFFFFF|- rs1 : x13<br> - rs2 : x14<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                           |[0x80000164]:c.and a3, a4<br> |
|   9|[0x80002230]<br>0x00000000|- rs2_val == 1<br> - rs1_val == 4194304<br>                                                                                            |[0x80000170]:c.and a0, a1<br> |
|  10|[0x80002234]<br>0x00000000|- rs2_val == 2048<br> - rs1_val == 2<br>                                                                                               |[0x8000017e]:c.and a0, a1<br> |
|  11|[0x80002238]<br>0x00000000|- rs2_val == 32<br> - rs1_val == 8<br>                                                                                                 |[0x8000018a]:c.and a0, a1<br> |
|  12|[0x8000223c]<br>0x00000000|- rs2_val == 2<br> - rs1_val == 16<br>                                                                                                 |[0x80000194]:c.and a0, a1<br> |
|  13|[0x80002240]<br>0x00000000|- rs1_val == 32<br>                                                                                                                    |[0x800001a0]:c.and a0, a1<br> |
|  14|[0x80002244]<br>0x00000000|- rs2_val == -65<br> - rs1_val == 64<br>                                                                                               |[0x800001ae]:c.and a0, a1<br> |
|  15|[0x80002248]<br>0x00000080|- rs1_val == 128<br>                                                                                                                   |[0x800001bc]:c.and a0, a1<br> |
|  16|[0x8000224c]<br>0x00000000|- rs2_val == 65536<br> - rs1_val == 256<br>                                                                                            |[0x800001c8]:c.and a0, a1<br> |
|  17|[0x80002250]<br>0x00000000|- rs1_val == 512<br>                                                                                                                   |[0x800001d4]:c.and a0, a1<br> |
|  18|[0x80002254]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 1024<br>                                                                                             |[0x800001e2]:c.and a0, a1<br> |
|  19|[0x80002258]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                  |[0x800001f0]:c.and a0, a1<br> |
|  20|[0x8000225c]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                  |[0x800001fa]:c.and a0, a1<br> |
|  21|[0x80002260]<br>0x00002000|- rs1_val == 8192<br>                                                                                                                  |[0x80000206]:c.and a0, a1<br> |
|  22|[0x80002264]<br>0x00000000|- rs2_val == 32768<br> - rs1_val == 16384<br>                                                                                          |[0x80000210]:c.and a0, a1<br> |
|  23|[0x80002268]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                 |[0x8000021a]:c.and a0, a1<br> |
|  24|[0x8000226c]<br>0x00010000|- rs2_val == -2<br> - rs1_val == 65536<br>                                                                                             |[0x80000226]:c.and a0, a1<br> |
|  25|[0x80002270]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                |[0x80000232]:c.and a0, a1<br> |
|  26|[0x80002274]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                |[0x8000023e]:c.and a0, a1<br> |
|  27|[0x80002278]<br>0x00080000|- rs2_val == 524288<br> - rs1_val == 524288<br>                                                                                        |[0x8000024c]:c.and a0, a1<br> |
|  28|[0x8000227c]<br>0x00200000|- rs2_val == -8388609<br> - rs1_val == 2097152<br>                                                                                     |[0x8000025c]:c.and a0, a1<br> |
|  29|[0x80002280]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                               |[0x80000268]:c.and a0, a1<br> |
|  30|[0x80002284]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                              |[0x80000276]:c.and a0, a1<br> |
|  31|[0x80002288]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                              |[0x80000282]:c.and a0, a1<br> |
|  32|[0x8000228c]<br>0x04000000|- rs2_val == -2097153<br> - rs1_val == 67108864<br>                                                                                    |[0x80000292]:c.and a0, a1<br> |
|  33|[0x80002290]<br>0x00000000|- rs2_val == 8<br> - rs1_val == 134217728<br>                                                                                          |[0x8000029e]:c.and a0, a1<br> |
|  34|[0x80002294]<br>0x10000000|- rs2_val == -4194305<br> - rs1_val == 268435456<br>                                                                                   |[0x800002ae]:c.and a0, a1<br> |
|  35|[0x80002298]<br>0x00000000|- rs2_val == 1431655765<br> - rs1_val == 536870912<br>                                                                                 |[0x800002c0]:c.and a0, a1<br> |
|  36|[0x8000229c]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                            |[0x800002d0]:c.and a0, a1<br> |
|  37|[0x800022a0]<br>0xFFFFFFBE|- rs1_val == -2<br>                                                                                                                    |[0x800002de]:c.and a0, a1<br> |
|  38|[0x800022a4]<br>0x00008000|- rs1_val == -3<br>                                                                                                                    |[0x800002ea]:c.and a0, a1<br> |
|  39|[0x800022a8]<br>0x00000200|- rs1_val == -5<br>                                                                                                                    |[0x800002f8]:c.and a0, a1<br> |
|  40|[0x800022ac]<br>0x00000003|- rs1_val == -9<br>                                                                                                                    |[0x80000304]:c.and a0, a1<br> |
|  41|[0x800022b0]<br>0x7FFFFFEF|- rs1_val == -17<br>                                                                                                                   |[0x80000314]:c.and a0, a1<br> |
|  42|[0x800022b4]<br>0x00000005|- rs1_val == -33<br>                                                                                                                   |[0x80000320]:c.and a0, a1<br> |
|  43|[0x800022b8]<br>0x08000000|- rs2_val == 134217728<br> - rs1_val == -65<br>                                                                                        |[0x8000032e]:c.and a0, a1<br> |
|  44|[0x800022bc]<br>0xFFFFFF76|- rs1_val == -129<br>                                                                                                                  |[0x8000033c]:c.and a0, a1<br> |
|  45|[0x800022c0]<br>0x00000080|- rs2_val == 128<br> - rs1_val == -257<br>                                                                                             |[0x8000034a]:c.and a0, a1<br> |
|  46|[0x800022c4]<br>0xFFFFFDDF|- rs1_val == -513<br>                                                                                                                  |[0x80000358]:c.and a0, a1<br> |
|  47|[0x800022c8]<br>0xDFFFFBFF|- rs2_val == -536870913<br> - rs1_val == -1025<br>                                                                                     |[0x80000368]:c.and a0, a1<br> |
|  48|[0x800022cc]<br>0x00000100|- rs1_val == -2049<br>                                                                                                                 |[0x80000378]:c.and a0, a1<br> |
|  49|[0x800022d0]<br>0xFEEFFFFF|- rs2_val == -16777217<br> - rs1_val == -1048577<br>                                                                                   |[0x8000038a]:c.and a0, a1<br> |
|  50|[0x800022d4]<br>0xFDFFFFFC|- rs2_val == -33554433<br>                                                                                                             |[0x8000039a]:c.and a0, a1<br> |
|  51|[0x800022d8]<br>0xDBFFFFFF|- rs2_val == -67108865<br> - rs1_val == -536870913<br>                                                                                 |[0x800003ac]:c.and a0, a1<br> |
|  52|[0x800022dc]<br>0xF5FFFFFF|- rs2_val == -134217729<br> - rs1_val == -33554433<br>                                                                                 |[0x800003be]:c.and a0, a1<br> |
|  53|[0x800022e0]<br>0x00800000|- rs2_val == -268435457<br>                                                                                                            |[0x800003ce]:c.and a0, a1<br> |
|  54|[0x800022e4]<br>0x00800000|- rs2_val == -1073741825<br>                                                                                                           |[0x800003de]:c.and a0, a1<br> |
|  55|[0x800022e8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs1_val == -4097<br>                                                                                    |[0x800003f0]:c.and a0, a1<br> |
|  56|[0x800022ec]<br>0x04000000|- rs2_val == 67108864<br> - rs1_val == -8193<br>                                                                                       |[0x800003fe]:c.and a0, a1<br> |
|  57|[0x800022f0]<br>0x00200000|- rs1_val == -16385<br>                                                                                                                |[0x8000040c]:c.and a0, a1<br> |
|  58|[0x800022f4]<br>0xFDFF7FFF|- rs1_val == -32769<br>                                                                                                                |[0x8000041c]:c.and a0, a1<br> |
|  59|[0x800022f8]<br>0xFFBEFFFF|- rs1_val == -65537<br>                                                                                                                |[0x8000042c]:c.and a0, a1<br> |
|  60|[0x800022fc]<br>0x00000004|- rs2_val == 4<br> - rs1_val == -131073<br>                                                                                            |[0x80000438]:c.and a0, a1<br> |
|  61|[0x80002300]<br>0xFFFBFFF9|- rs1_val == -262145<br>                                                                                                               |[0x80000448]:c.and a0, a1<br> |
|  62|[0x80002304]<br>0xFFF7FFFD|- rs2_val == -3<br> - rs1_val == -524289<br>                                                                                           |[0x80000458]:c.and a0, a1<br> |
|  63|[0x80002308]<br>0x00800000|- rs2_val == 8388608<br> - rs1_val == -2097153<br>                                                                                     |[0x80000468]:c.and a0, a1<br> |
|  64|[0x8000230c]<br>0xFF3FFFFF|- rs1_val == -4194305<br>                                                                                                              |[0x8000047a]:c.and a0, a1<br> |
|  65|[0x80002310]<br>0x00000200|- rs1_val == -8388609<br>                                                                                                              |[0x8000048a]:c.and a0, a1<br> |
|  66|[0x80002314]<br>0x80000000|- rs1_val == -16777217<br>                                                                                                             |[0x8000049a]:c.and a0, a1<br> |
|  67|[0x80002318]<br>0x00000002|- rs1_val == -67108865<br>                                                                                                             |[0x800004a8]:c.and a0, a1<br> |
|  68|[0x8000231c]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                            |[0x800004b8]:c.and a0, a1<br> |
|  69|[0x80002320]<br>0x2FFFFFFF|- rs1_val == -268435457<br>                                                                                                            |[0x800004ca]:c.and a0, a1<br> |
|  70|[0x80002324]<br>0x00000040|- rs2_val == 64<br> - rs1_val == -1073741825<br>                                                                                       |[0x800004da]:c.and a0, a1<br> |
|  71|[0x80002328]<br>0x55555555|- rs2_val == -513<br> - rs1_val == 1431655765<br>                                                                                      |[0x800004ec]:c.and a0, a1<br> |
|  72|[0x8000232c]<br>0xAAAAA8AA|- rs1_val == -1431655766<br>                                                                                                           |[0x800004fe]:c.and a0, a1<br> |
|  73|[0x80002330]<br>0x00000000|- rs2_val == 16<br>                                                                                                                    |[0x8000050a]:c.and a0, a1<br> |
|  74|[0x80002334]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                  |[0x80000518]:c.and a0, a1<br> |
|  75|[0x80002338]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                  |[0x80000524]:c.and a0, a1<br> |
|  76|[0x8000233c]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                  |[0x80000530]:c.and a0, a1<br> |
|  77|[0x80002340]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                |[0x8000053c]:c.and a0, a1<br> |
|  78|[0x80002344]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                |[0x8000054a]:c.and a0, a1<br> |
|  79|[0x8000234c]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                               |[0x80000568]:c.and a0, a1<br> |
|  80|[0x80002350]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                              |[0x80000574]:c.and a0, a1<br> |
|  81|[0x80002354]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                              |[0x80000584]:c.and a0, a1<br> |
|  82|[0x80002358]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                             |[0x80000594]:c.and a0, a1<br> |
|  83|[0x8000235c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                             |[0x800005a4]:c.and a0, a1<br> |
|  84|[0x80002360]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                            |[0x800005b2]:c.and a0, a1<br> |
|  85|[0x80002364]<br>0x00000002|- rs2_val == -5<br>                                                                                                                    |[0x800005be]:c.and a0, a1<br> |
|  86|[0x80002368]<br>0x02000000|- rs2_val == -9<br>                                                                                                                    |[0x800005cc]:c.and a0, a1<br> |
|  87|[0x8000236c]<br>0xFFFFEFEF|- rs2_val == -17<br>                                                                                                                   |[0x800005da]:c.and a0, a1<br> |
|  88|[0x80002370]<br>0x02000000|- rs2_val == -129<br>                                                                                                                  |[0x800005e8]:c.and a0, a1<br> |
|  89|[0x80002374]<br>0xFFFFFEFD|- rs2_val == -257<br>                                                                                                                  |[0x800005f6]:c.and a0, a1<br> |
|  90|[0x80002378]<br>0xFFBFFBFF|- rs2_val == -1025<br>                                                                                                                 |[0x80000606]:c.and a0, a1<br> |
|  91|[0x8000237c]<br>0xFFFFF7FA|- rs2_val == -2049<br>                                                                                                                 |[0x80000616]:c.and a0, a1<br> |
|  92|[0x80002380]<br>0x00000020|- rs2_val == -4097<br>                                                                                                                 |[0x80000624]:c.and a0, a1<br> |
|  93|[0x80002384]<br>0x00100000|- rs2_val == -8193<br>                                                                                                                 |[0x80000632]:c.and a0, a1<br> |
|  94|[0x80002388]<br>0xFDFFBFFF|- rs2_val == -16385<br>                                                                                                                |[0x80000642]:c.and a0, a1<br> |
|  95|[0x8000238c]<br>0x00000004|- rs2_val == -32769<br>                                                                                                                |[0x8000064e]:c.and a0, a1<br> |
|  96|[0x80002390]<br>0xFBFEFFFF|- rs2_val == -65537<br>                                                                                                                |[0x8000065e]:c.and a0, a1<br> |
|  97|[0x80002394]<br>0xFFFDFFF9|- rs2_val == -131073<br>                                                                                                               |[0x8000066c]:c.and a0, a1<br> |
|  98|[0x80002398]<br>0x00000080|- rs2_val == -262145<br>                                                                                                               |[0x8000067c]:c.and a0, a1<br> |
|  99|[0x8000239c]<br>0x02000000|- rs2_val == -524289<br>                                                                                                               |[0x8000068c]:c.and a0, a1<br> |
| 100|[0x800023a0]<br>0xFFEFFFF8|- rs2_val == -1048577<br>                                                                                                              |[0x8000069c]:c.and a0, a1<br> |
