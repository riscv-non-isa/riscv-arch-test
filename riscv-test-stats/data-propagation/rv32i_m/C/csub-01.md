
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x80000680')]      |
| SIG_REGION                | [('0x80002210', '0x8000241c')]      |
| COV_LABELS                | ('csub',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
| Total Unique Coverpoints  | 159      |
| Total Signature Updates   | 97      |
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

|s.no|        signature         |                                                       coverpoints                                                       |             code             |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------|------------------------------|
|   1|[0x80002210]<br>0xB8000000|- opcode : c.sub<br> - rs1 : x15<br> - rs2 : x14<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 134217728<br>       |[0x80000104]:c.sub a5, a4<br> |
|   2|[0x80002214]<br>0x00000000|- rs1 : x12<br> - rs2 : x12<br> - rs1 == rs2<br> - rs2_val == 1048576<br> - rs1_val == 1048576<br>                       |[0x80000112]:c.sub a2, a2<br> |
|   3|[0x80002218]<br>0x7FFFFFFD|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                              |[0x8000011e]:c.sub s1, a3<br> |
|   4|[0x8000221c]<br>0x00000009|- rs1 : x8<br> - rs2 : x11<br> - rs1_val == 0<br> - rs2_val < 0<br> - rs2_val == -9<br>                                  |[0x8000012a]:c.sub s0, a1<br> |
|   5|[0x80002220]<br>0x2AAAAAAA|- rs1 : x13<br> - rs2 : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1431655765<br> - rs1_val == 2147483647<br> |[0x8000013e]:c.sub a3, a5<br> |
|   6|[0x80002224]<br>0xFFFFE001|- rs1 : x10<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val == 8192<br>                                                  |[0x80000148]:c.sub a0, s0<br> |
|   7|[0x80002228]<br>0x80040000|- rs1 : x14<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 262144<br>     |[0x80000156]:c.sub a4, a0<br> |
|   8|[0x8000222c]<br>0x00000010|- rs1 : x11<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == 16<br>                                                    |[0x80000160]:c.sub a1, s1<br> |
|   9|[0x80002230]<br>0x7FE00000|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -2097153<br>                                   |[0x80000172]:c.sub a0, a1<br> |
|  10|[0x80002234]<br>0x0007FFFF|- rs2_val == 1<br> - rs1_val == 524288<br>                                                                               |[0x8000017e]:c.sub a0, a1<br> |
|  11|[0x80002238]<br>0x01000003|- rs2_val == -16777217<br> - rs1_val == 2<br>                                                                            |[0x8000018c]:c.sub a0, a1<br> |
|  12|[0x8000223c]<br>0xFF800004|- rs2_val == 8388608<br> - rs1_val == 4<br>                                                                              |[0x80000198]:c.sub a0, a1<br> |
|  13|[0x80002240]<br>0x00000809|- rs2_val == -2049<br> - rs1_val == 8<br>                                                                                |[0x800001a6]:c.sub a0, a1<br> |
|  14|[0x80002244]<br>0x00400021|- rs2_val == -4194305<br> - rs1_val == 32<br>                                                                            |[0x800001b6]:c.sub a0, a1<br> |
|  15|[0x80002248]<br>0x00002041|- rs2_val == -8193<br> - rs1_val == 64<br>                                                                               |[0x800001c4]:c.sub a0, a1<br> |
|  16|[0x8000224c]<br>0x80000080|- rs1_val == 128<br>                                                                                                     |[0x800001d2]:c.sub a0, a1<br> |
|  17|[0x80002250]<br>0x10000101|- rs2_val == -268435457<br> - rs1_val == 256<br>                                                                         |[0x800001e2]:c.sub a0, a1<br> |
|  18|[0x80002254]<br>0x00800201|- rs2_val == -8388609<br> - rs1_val == 512<br>                                                                           |[0x800001f2]:c.sub a0, a1<br> |
|  19|[0x80002258]<br>0x00000403|- rs2_val == -3<br> - rs1_val == 1024<br>                                                                                |[0x80000200]:c.sub a0, a1<br> |
|  20|[0x8000225c]<br>0x00000A01|- rs2_val == -513<br> - rs1_val == 2048<br>                                                                              |[0x80000210]:c.sub a0, a1<br> |
|  21|[0x80002260]<br>0x00000FF9|- rs1_val == 4096<br>                                                                                                    |[0x8000021a]:c.sub a0, a1<br> |
|  22|[0x80002264]<br>0x00002005|- rs2_val == -5<br> - rs1_val == 8192<br>                                                                                |[0x80000226]:c.sub a0, a1<br> |
|  23|[0x80002268]<br>0x00003F80|- rs2_val == 128<br> - rs1_val == 16384<br>                                                                              |[0x80000232]:c.sub a0, a1<br> |
|  24|[0x8000226c]<br>0x00008007|- rs1_val == 32768<br>                                                                                                   |[0x8000023e]:c.sub a0, a1<br> |
|  25|[0x80002270]<br>0x0000FFF7|- rs1_val == 65536<br>                                                                                                   |[0x80000248]:c.sub a0, a1<br> |
|  26|[0x80002274]<br>0x0001FFF9|- rs1_val == 131072<br>                                                                                                  |[0x80000254]:c.sub a0, a1<br> |
|  27|[0x80002278]<br>0x001FFFFA|- rs1_val == 2097152<br>                                                                                                 |[0x80000260]:c.sub a0, a1<br> |
|  28|[0x8000227c]<br>0x0040000A|- rs1_val == 4194304<br>                                                                                                 |[0x8000026e]:c.sub a0, a1<br> |
|  29|[0x80002280]<br>0x007FFC00|- rs2_val == 1024<br> - rs1_val == 8388608<br>                                                                           |[0x8000027c]:c.sub a0, a1<br> |
|  30|[0x80002284]<br>0x01080001|- rs2_val == -524289<br> - rs1_val == 16777216<br>                                                                       |[0x8000028c]:c.sub a0, a1<br> |
|  31|[0x80002288]<br>0x01FFFFFE|- rs2_val == 2<br> - rs1_val == 33554432<br>                                                                             |[0x80000298]:c.sub a0, a1<br> |
|  32|[0x8000228c]<br>0x04000041|- rs2_val == -65<br> - rs1_val == 67108864<br>                                                                           |[0x800002a6]:c.sub a0, a1<br> |
|  33|[0x80002290]<br>0x07F80000|- rs2_val == 524288<br> - rs1_val == 134217728<br>                                                                       |[0x800002b4]:c.sub a0, a1<br> |
|  34|[0x80002294]<br>0x0FFF0000|- rs2_val == 65536<br> - rs1_val == 268435456<br>                                                                        |[0x800002c0]:c.sub a0, a1<br> |
|  35|[0x80002298]<br>0x1FFFFFF0|- rs2_val == 16<br> - rs1_val == 536870912<br>                                                                           |[0x800002cc]:c.sub a0, a1<br> |
|  36|[0x8000229c]<br>0x80000000|- rs1_val == 1073741824<br>                                                                                              |[0x800002da]:c.sub a0, a1<br> |
|  37|[0x800022a0]<br>0x00001FFF|- rs1_val == -2<br>                                                                                                      |[0x800002e8]:c.sub a0, a1<br> |
|  38|[0x800022a4]<br>0x0000FFFE|- rs2_val == -65537<br> - rs1_val == -3<br>                                                                              |[0x800002f6]:c.sub a0, a1<br> |
|  39|[0x800022a8]<br>0x000000FC|- rs2_val == -257<br> - rs1_val == -5<br>                                                                                |[0x80000304]:c.sub a0, a1<br> |
|  40|[0x800022ac]<br>0xFFFFFFF8|- rs1_val == -9<br>                                                                                                      |[0x80000312]:c.sub a0, a1<br> |
|  41|[0x800022b0]<br>0xFDFFFFEF|- rs2_val == 33554432<br> - rs1_val == -17<br>                                                                           |[0x80000320]:c.sub a0, a1<br> |
|  42|[0x800022b4]<br>0xFFFFFFE2|- rs1_val == -33<br>                                                                                                     |[0x8000032e]:c.sub a0, a1<br> |
|  43|[0x800022b8]<br>0xFFFFFFBE|- rs1_val == -65<br>                                                                                                     |[0x8000033a]:c.sub a0, a1<br> |
|  44|[0x800022bc]<br>0x02000005|- rs2_val == -33554433<br>                                                                                               |[0x80000348]:c.sub a0, a1<br> |
|  45|[0x800022c0]<br>0x04000011|- rs2_val == -67108865<br>                                                                                               |[0x80000356]:c.sub a0, a1<br> |
|  46|[0x800022c4]<br>0x07000000|- rs2_val == -134217729<br> - rs1_val == -16777217<br>                                                                   |[0x80000368]:c.sub a0, a1<br> |
|  47|[0x800022c8]<br>0x1FFFFFF0|- rs2_val == -536870913<br>                                                                                              |[0x80000378]:c.sub a0, a1<br> |
|  48|[0x800022cc]<br>0x3FFFFFF0|- rs2_val == -1073741825<br>                                                                                             |[0x80000388]:c.sub a0, a1<br> |
|  49|[0x800022d0]<br>0x55555558|- rs2_val == -1431655766<br>                                                                                             |[0x80000398]:c.sub a0, a1<br> |
|  50|[0x800022d4]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                    |[0x800003a4]:c.sub a0, a1<br> |
|  51|[0x800022d8]<br>0x0003FF00|- rs2_val == -262145<br> - rs1_val == -257<br>                                                                           |[0x800003b4]:c.sub a0, a1<br> |
|  52|[0x800022dc]<br>0xFDFFFDFF|- rs1_val == -513<br>                                                                                                    |[0x800003c2]:c.sub a0, a1<br> |
|  53|[0x800022e0]<br>0xFFFFFC20|- rs2_val == -33<br> - rs1_val == -1025<br>                                                                              |[0x800003d0]:c.sub a0, a1<br> |
|  54|[0x800022e4]<br>0x00000000|- rs1_val == -2049<br>                                                                                                   |[0x800003e2]:c.sub a0, a1<br> |
|  55|[0x800022e8]<br>0x0003F000|- rs1_val == -4097<br>                                                                                                   |[0x800003f2]:c.sub a0, a1<br> |
|  56|[0x800022ec]<br>0xFFFFDFFA|- rs1_val == -8193<br>                                                                                                   |[0x800003fe]:c.sub a0, a1<br> |
|  57|[0x800022f0]<br>0xF7FFBFFF|- rs1_val == -16385<br>                                                                                                  |[0x8000040c]:c.sub a0, a1<br> |
|  58|[0x800022f4]<br>0x7FFF8000|- rs1_val == -32769<br>                                                                                                  |[0x8000041c]:c.sub a0, a1<br> |
|  59|[0x800022f8]<br>0xFFFEFFEF|- rs1_val == -65537<br>                                                                                                  |[0x80000428]:c.sub a0, a1<br> |
|  60|[0x800022fc]<br>0x001E0000|- rs2_val == -2097153<br> - rs1_val == -131073<br>                                                                       |[0x80000438]:c.sub a0, a1<br> |
|  61|[0x80002300]<br>0xFFFBFFEF|- rs1_val == -262145<br>                                                                                                 |[0x80000446]:c.sub a0, a1<br> |
|  62|[0x80002304]<br>0xFFF7FFF6|- rs1_val == -524289<br>                                                                                                 |[0x80000454]:c.sub a0, a1<br> |
|  63|[0x80002308]<br>0x3FEFFFFF|- rs1_val == -1048577<br>                                                                                                |[0x80000464]:c.sub a0, a1<br> |
|  64|[0x8000230c]<br>0xFFC40000|- rs1_val == -4194305<br>                                                                                                |[0x80000476]:c.sub a0, a1<br> |
|  65|[0x80002310]<br>0xFF800002|- rs1_val == -8388609<br>                                                                                                |[0x80000486]:c.sub a0, a1<br> |
|  66|[0x80002314]<br>0xA8AAAAAA|- rs1_val == -33554433<br>                                                                                               |[0x8000049a]:c.sub a0, a1<br> |
|  67|[0x80002318]<br>0xFBFFFFFB|- rs2_val == 4<br> - rs1_val == -67108865<br>                                                                            |[0x800004a8]:c.sub a0, a1<br> |
|  68|[0x8000231c]<br>0xF8000010|- rs2_val == -17<br> - rs1_val == -134217729<br>                                                                         |[0x800004b8]:c.sub a0, a1<br> |
|  69|[0x80002320]<br>0xF0000009|- rs1_val == -268435457<br>                                                                                              |[0x800004c8]:c.sub a0, a1<br> |
|  70|[0x80002324]<br>0x20000000|- rs1_val == -536870913<br>                                                                                              |[0x800004da]:c.sub a0, a1<br> |
|  71|[0x80002328]<br>0xC0000020|- rs1_val == -1073741825<br>                                                                                             |[0x800004ea]:c.sub a0, a1<br> |
|  72|[0x8000232c]<br>0x55555557|- rs2_val == -2<br> - rs1_val == 1431655765<br>                                                                          |[0x800004fc]:c.sub a0, a1<br> |
|  73|[0x80002330]<br>0x6AAAAAAA|- rs2_val == 1073741824<br> - rs1_val == -1431655766<br>                                                                 |[0x8000050e]:c.sub a0, a1<br> |
|  74|[0x80002334]<br>0xFFFFDFF7|- rs2_val == 8<br>                                                                                                       |[0x8000051a]:c.sub a0, a1<br> |
|  75|[0x80002338]<br>0xFFFFFFDE|- rs2_val == 32<br>                                                                                                      |[0x80000528]:c.sub a0, a1<br> |
|  76|[0x8000233c]<br>0x00003FC0|- rs2_val == 64<br>                                                                                                      |[0x80000534]:c.sub a0, a1<br> |
|  77|[0x80002340]<br>0xFFFFFF20|- rs2_val == 256<br>                                                                                                     |[0x80000542]:c.sub a0, a1<br> |
|  78|[0x80002344]<br>0xFFFFBDFF|- rs2_val == 512<br>                                                                                                     |[0x80000550]:c.sub a0, a1<br> |
|  79|[0x80002348]<br>0xFFFFF7FC|- rs2_val == 2048<br>                                                                                                    |[0x80000560]:c.sub a0, a1<br> |
|  80|[0x8000234c]<br>0xFFFFF100|- rs2_val == 4096<br>                                                                                                    |[0x8000056c]:c.sub a0, a1<br> |
|  81|[0x80002350]<br>0x7FFFC000|- rs2_val == 16384<br>                                                                                                   |[0x80000578]:c.sub a0, a1<br> |
|  82|[0x80002354]<br>0xFFFF8001|- rs2_val == 32768<br>                                                                                                   |[0x80000582]:c.sub a0, a1<br> |
|  83|[0x80002358]<br>0xDFFDFFFF|- rs2_val == 131072<br>                                                                                                  |[0x80000592]:c.sub a0, a1<br> |
|  84|[0x8000235c]<br>0xFFBFBFFF|- rs2_val == 4194304<br>                                                                                                 |[0x800005a0]:c.sub a0, a1<br> |
|  85|[0x80002360]<br>0xFEFFFFFE|- rs2_val == 16777216<br>                                                                                                |[0x800005ae]:c.sub a0, a1<br> |
|  86|[0x80002364]<br>0x0C000000|- rs2_val == 67108864<br>                                                                                                |[0x800005bc]:c.sub a0, a1<br> |
|  87|[0x80002368]<br>0xF0040000|- rs2_val == 268435456<br>                                                                                               |[0x800005ca]:c.sub a0, a1<br> |
|  88|[0x8000236c]<br>0xDFFFFFFA|- rs2_val == 536870912<br>                                                                                               |[0x800005d8]:c.sub a0, a1<br> |
|  89|[0x80002370]<br>0x00000181|- rs2_val == -129<br>                                                                                                    |[0x800005e6]:c.sub a0, a1<br> |
|  90|[0x80002374]<br>0x000003F0|- rs2_val == -1025<br>                                                                                                   |[0x800005f4]:c.sub a0, a1<br> |
|  91|[0x80002378]<br>0xFFFFF000|- rs2_val == -4097<br>                                                                                                   |[0x80000602]:c.sub a0, a1<br> |
|  92|[0x8000237c]<br>0x00004801|- rs2_val == -16385<br>                                                                                                  |[0x80000612]:c.sub a0, a1<br> |
|  93|[0x80002384]<br>0x00008801|- rs2_val == -32769<br>                                                                                                  |[0x80000630]:c.sub a0, a1<br> |
|  94|[0x80002388]<br>0x00021001|- rs2_val == -131073<br>                                                                                                 |[0x8000063c]:c.sub a0, a1<br> |
|  95|[0x8000238c]<br>0x00FC0000|- rs2_val == 262144<br>                                                                                                  |[0x8000064a]:c.sub a0, a1<br> |
|  96|[0x80002390]<br>0x00101001|- rs2_val == -1048577<br>                                                                                                |[0x80000658]:c.sub a0, a1<br> |
|  97|[0x80002394]<br>0xFFE00040|- rs2_val == 2097152<br>                                                                                                 |[0x80000666]:c.sub a0, a1<br> |
