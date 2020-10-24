
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x80000650')]      |
| SIG_REGION                | [('0x80002210', '0x8000242c')]      |
| COV_LABELS                | ('cadd',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Unique Coverpoints  | 206      |
| Total Signature Updates   | 100      |
| Ops w/o unique coverpoints | 3      |
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

|s.no|        signature         |                                                        coverpoints                                                        |             code              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0x00200007|- opcode : c.add<br> - rs1 : x16<br> - rs2 : x12<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs1_val == 2097152<br>           |[0x80000102]:c.add a6, a2<br>  |
|   2|[0x80002214]<br>0x55555554|- rs1 : x7<br> - rs2 : x7<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -1431655766<br> - rs1_val == -1431655766<br> |[0x80000114]:c.add t2, t2<br>  |
|   3|[0x80002218]<br>0x7FFFFFEF|- rs1 : x18<br> - rs2 : x29<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -17<br> - rs1_val == -2147483648<br>          |[0x80000122]:c.add s2, t4<br>  |
|   4|[0x8000221c]<br>0x00000007|- rs1 : x28<br> - rs2 : x16<br> - rs1_val == 0<br>                                                                         |[0x8000012c]:c.add t3, a6<br>  |
|   5|[0x80002220]<br>0x80FFFFFF|- rs1 : x23<br> - rs2 : x28<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 16777216<br> - rs1_val == 2147483647<br>     |[0x8000013c]:c.add s7, t3<br>  |
|   6|[0x80002224]<br>0x00000041|- rs1 : x3<br> - rs2 : x10<br> - rs1_val == 1<br> - rs2_val == 64<br>                                                      |[0x80000148]:c.add gp, a0<br>  |
|   7|[0x80002228]<br>0x6FFFFFFF|- rs1 : x27<br> - rs2 : x22<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -268435457<br>   |[0x80000158]:c.add s11, s6<br> |
|   8|[0x8000222c]<br>0xFFFFFBFF|- rs1 : x31<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == -1025<br>                                                   |[0x80000164]:c.add t6, s1<br>  |
|   9|[0x80002230]<br>0x87FFFFFF|- rs1 : x21<br> - rs2 : x6<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 134217728<br>     |[0x80000174]:c.add s5, t1<br>  |
|  10|[0x80002234]<br>0x00000008|- rs1 : x10<br> - rs2 : x25<br> - rs2_val == 1<br>                                                                         |[0x8000017e]:c.add a0, s9<br>  |
|  11|[0x80002238]<br>0xFFFFF001|- rs1 : x20<br> - rs2 : x19<br> - rs2_val == -4097<br> - rs1_val == 2<br>                                                  |[0x80000188]:c.add s4, s3<br>  |
|  12|[0x8000223c]<br>0xC0000003|- rs1 : x1<br> - rs2 : x14<br> - rs2_val == -1073741825<br> - rs1_val == 4<br>                                             |[0x80000196]:c.add ra, a4<br>  |
|  13|[0x80002240]<br>0x00000018|- rs1 : x24<br> - rs2 : x11<br> - rs2_val == 16<br> - rs1_val == 8<br>                                                     |[0x800001a0]:c.add s8, a1<br>  |
|  14|[0x80002244]<br>0x00000000|- rs1 : x0<br> - rs2 : x4<br>                                                                                              |[0x800001ae]:c.add.hint.tp<br> |
|  15|[0x80002248]<br>0x00000023|- rs1 : x25<br> - rs2 : x2<br> - rs1_val == 32<br>                                                                         |[0x800001ba]:c.add s9, sp<br>  |
|  16|[0x8000224c]<br>0x00008040|- rs1 : x26<br> - rs2 : x8<br> - rs2_val == 32768<br> - rs1_val == 64<br>                                                  |[0x800001c6]:c.add s10, fp<br> |
|  17|[0x80002250]<br>0x00002080|- rs1 : x2<br> - rs2 : x26<br> - rs2_val == 8192<br> - rs1_val == 128<br>                                                  |[0x800001d2]:c.add sp, s10<br> |
|  18|[0x80002254]<br>0x0000007F|- rs1 : x29<br> - rs2 : x31<br> - rs2_val == -129<br> - rs1_val == 256<br>                                                 |[0x800001e0]:c.add t4, t6<br>  |
|  19|[0x80002258]<br>0x00400200|- rs1 : x8<br> - rs2 : x5<br> - rs2_val == 4194304<br> - rs1_val == 512<br>                                                |[0x800001ee]:c.add fp, t0<br>  |
|  20|[0x8000225c]<br>0x02000400|- rs1 : x4<br> - rs2 : x27<br> - rs2_val == 33554432<br> - rs1_val == 1024<br>                                             |[0x800001fa]:c.add tp, s11<br> |
|  21|[0x80002260]<br>0x000007DF|- rs1 : x5<br> - rs2 : x30<br> - rs2_val == -33<br> - rs1_val == 2048<br>                                                  |[0x8000020a]:c.add t0, t5<br>  |
|  22|[0x80002264]<br>0x00001800|- rs1 : x30<br> - rs2 : x20<br> - rs2_val == 2048<br> - rs1_val == 4096<br>                                                |[0x80000220]:c.add t5, s4<br>  |
|  23|[0x80002268]<br>0x00006000|- rs1 : x17<br> - rs2 : x21<br> - rs2_val == 16384<br> - rs1_val == 8192<br>                                               |[0x80000228]:c.add a7, s5<br>  |
|  24|[0x8000226c]<br>0x08004000|- rs1 : x9<br> - rs2 : x18<br> - rs2_val == 134217728<br> - rs1_val == 16384<br>                                           |[0x80000232]:c.add s1, s2<br>  |
|  25|[0x80002270]<br>0x00008002|- rs1 : x11<br> - rs2 : x24<br> - rs2_val == 2<br> - rs1_val == 32768<br>                                                  |[0x8000023a]:c.add a1, s8<br>  |
|  26|[0x80002274]<br>0x00018000|- rs1 : x13<br> - rs2 : x15<br> - rs1_val == 65536<br>                                                                     |[0x80000242]:c.add a3, a5<br>  |
|  27|[0x80002278]<br>0x000A0000|- rs1 : x14<br> - rs2 : x13<br> - rs2_val == 524288<br> - rs1_val == 131072<br>                                            |[0x8000024e]:c.add a4, a3<br>  |
|  28|[0x8000227c]<br>0x00040800|- rs1 : x19<br> - rs2 : x3<br> - rs1_val == 262144<br>                                                                     |[0x8000025c]:c.add s3, gp<br>  |
|  29|[0x80002280]<br>0x0007FDFF|- rs1 : x22<br> - rs2 : x23<br> - rs2_val == -513<br> - rs1_val == 524288<br>                                              |[0x80000268]:c.add s6, s7<br>  |
|  30|[0x80002284]<br>0x000FFFF6|- rs1 : x12<br> - rs2 : x1<br> - rs1_val == 1048576<br>                                                                    |[0x80000274]:c.add a2, ra<br>  |
|  31|[0x80002288]<br>0x00400009|- rs1 : x15<br> - rs2 : x17<br> - rs1_val == 4194304<br>                                                                   |[0x8000027e]:c.add a5, a7<br>  |
|  32|[0x8000228c]<br>0x007FFFEF|- rs1 : x6<br> - rs1_val == 8388608<br>                                                                                    |[0x8000028a]:c.add t1, t0<br>  |
|  33|[0x80002290]<br>0x00FDFFFF|- rs2_val == -131073<br> - rs1_val == 16777216<br>                                                                         |[0x80000296]:c.add a0, a1<br>  |
|  34|[0x80002294]<br>0x02000010|- rs1_val == 33554432<br>                                                                                                  |[0x800002a0]:c.add a0, a1<br>  |
|  35|[0x80002298]<br>0xFFFFFFFF|- rs2_val == -67108865<br> - rs1_val == 67108864<br>                                                                       |[0x800002ae]:c.add a0, a1<br>  |
|  36|[0x8000229c]<br>0x90000000|- rs1_val == 268435456<br>                                                                                                 |[0x800002ba]:c.add a0, a1<br>  |
|  37|[0x800022a0]<br>0x1FFFFF7F|- rs1_val == 536870912<br>                                                                                                 |[0x800002c6]:c.add a0, a1<br>  |
|  38|[0x800022a4]<br>0x3FFBFFFF|- rs2_val == -262145<br> - rs1_val == 1073741824<br>                                                                       |[0x800002d4]:c.add a0, a1<br>  |
|  39|[0x800022a8]<br>0xFFFFFF7D|- rs1_val == -2<br>                                                                                                        |[0x800002e0]:c.add a0, a1<br>  |
|  40|[0x800022ac]<br>0xFFF7FFFC|- rs2_val == -524289<br> - rs1_val == -3<br>                                                                               |[0x800002ee]:c.add a0, a1<br>  |
|  41|[0x800022b0]<br>0x00007FFB|- rs1_val == -5<br>                                                                                                        |[0x800002f8]:c.add a0, a1<br>  |
|  42|[0x800022b4]<br>0x00000000|- rs1_val == -9<br>                                                                                                        |[0x80000302]:c.add a0, a1<br>  |
|  43|[0x800022b8]<br>0xFFFFFFE6|- rs2_val == -9<br> - rs1_val == -17<br>                                                                                   |[0x8000030e]:c.add a0, a1<br>  |
|  44|[0x800022bc]<br>0xFFF7FFDE|- rs1_val == -33<br>                                                                                                       |[0x8000031c]:c.add a0, a1<br>  |
|  45|[0x800022c0]<br>0xF7FFFFBE|- rs2_val == -134217729<br> - rs1_val == -65<br>                                                                           |[0x8000032a]:c.add a0, a1<br>  |
|  46|[0x800022c4]<br>0x01BFFFFF|- rs2_val == -4194305<br>                                                                                                  |[0x80000338]:c.add a0, a1<br>  |
|  47|[0x800022c8]<br>0xFB7FFFFE|- rs2_val == -8388609<br> - rs1_val == -67108865<br>                                                                       |[0x80000348]:c.add a0, a1<br>  |
|  48|[0x800022cc]<br>0xFEFFF7FE|- rs2_val == -16777217<br> - rs1_val == -2049<br>                                                                          |[0x80000358]:c.add a0, a1<br>  |
|  49|[0x800022d0]<br>0xFDFFFFFB|- rs2_val == -33554433<br>                                                                                                 |[0x80000366]:c.add a0, a1<br>  |
|  50|[0x800022d4]<br>0x2FFFFFFF|- rs2_val == -268435457<br>                                                                                                |[0x80000374]:c.add a0, a1<br>  |
|  51|[0x800022d8]<br>0xDFFFFFF8|- rs2_val == -536870913<br>                                                                                                |[0x80000382]:c.add a0, a1<br>  |
|  52|[0x800022dc]<br>0x57555555|- rs2_val == 1431655765<br>                                                                                                |[0x80000392]:c.add a0, a1<br>  |
|  53|[0x800022e4]<br>0xFEFFFF7E|- rs1_val == -129<br>                                                                                                      |[0x800003ae]:c.add a0, a1<br>  |
|  54|[0x800022e8]<br>0x0001FEFF|- rs2_val == 131072<br> - rs1_val == -257<br>                                                                              |[0x800003ba]:c.add a0, a1<br>  |
|  55|[0x800022ec]<br>0x55555354|- rs1_val == -513<br>                                                                                                      |[0x800003ca]:c.add a0, a1<br>  |
|  56|[0x800022f0]<br>0xFFFFDFFE|- rs1_val == -4097<br>                                                                                                     |[0x800003d6]:c.add a0, a1<br>  |
|  57|[0x800022f4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                     |[0x800003e0]:c.add a0, a1<br>  |
|  58|[0x800022f8]<br>0x07FFBFFF|- rs1_val == -16385<br>                                                                                                    |[0x800003ec]:c.add a0, a1<br>  |
|  59|[0x800022fc]<br>0xF7FF7FFE|- rs1_val == -32769<br>                                                                                                    |[0x800003fa]:c.add a0, a1<br>  |
|  60|[0x80002300]<br>0xFFFEFFFE|- rs1_val == -65537<br>                                                                                                    |[0x80000406]:c.add a0, a1<br>  |
|  61|[0x80002304]<br>0xFFFDEFFE|- rs1_val == -131073<br>                                                                                                   |[0x80000412]:c.add a0, a1<br>  |
|  62|[0x80002308]<br>0xFFFC01FF|- rs2_val == 512<br> - rs1_val == -262145<br>                                                                              |[0x80000420]:c.add a0, a1<br>  |
|  63|[0x8000230c]<br>0xBFF7FFFE|- rs1_val == -524289<br>                                                                                                   |[0x80000430]:c.add a0, a1<br>  |
|  64|[0x80002310]<br>0xFFAFFFFE|- rs1_val == -1048577<br>                                                                                                  |[0x80000440]:c.add a0, a1<br>  |
|  65|[0x80002314]<br>0xFFDFFFBE|- rs2_val == -65<br> - rs1_val == -2097153<br>                                                                             |[0x8000044e]:c.add a0, a1<br>  |
|  66|[0x80002318]<br>0xFFC00007|- rs2_val == 8<br> - rs1_val == -4194305<br>                                                                               |[0x8000045a]:c.add a0, a1<br>  |
|  67|[0x8000231c]<br>0xFF800001|- rs1_val == -8388609<br>                                                                                                  |[0x80000466]:c.add a0, a1<br>  |
|  68|[0x80002320]<br>0x7EFFFFFE|- rs1_val == -16777217<br>                                                                                                 |[0x80000476]:c.add a0, a1<br>  |
|  69|[0x80002324]<br>0xFDFBFFFE|- rs1_val == -33554433<br>                                                                                                 |[0x80000486]:c.add a0, a1<br>  |
|  70|[0x80002328]<br>0xF801FFFF|- rs1_val == -134217729<br>                                                                                                |[0x80000494]:c.add a0, a1<br>  |
|  71|[0x8000232c]<br>0xE000000F|- rs1_val == -536870913<br>                                                                                                |[0x800004a0]:c.add a0, a1<br>  |
|  72|[0x80002330]<br>0xBFFFFFF5|- rs1_val == -1073741825<br>                                                                                               |[0x800004ae]:c.add a0, a1<br>  |
|  73|[0x80002334]<br>0xD5555554|- rs1_val == 1431655765<br>                                                                                                |[0x800004c0]:c.add a0, a1<br>  |
|  74|[0x80002338]<br>0xAAAAAAAE|- rs2_val == 4<br>                                                                                                         |[0x800004ce]:c.add a0, a1<br>  |
|  75|[0x8000233c]<br>0xFFF0001F|- rs2_val == 32<br>                                                                                                        |[0x800004dc]:c.add a0, a1<br>  |
|  76|[0x80002340]<br>0xFF00007F|- rs2_val == 128<br>                                                                                                       |[0x800004ea]:c.add a0, a1<br>  |
|  77|[0x80002344]<br>0xAAAAABAA|- rs2_val == 256<br>                                                                                                       |[0x800004fa]:c.add a0, a1<br>  |
|  78|[0x80002348]<br>0x00080400|- rs2_val == 1024<br>                                                                                                      |[0x80000506]:c.add a0, a1<br>  |
|  79|[0x8000234c]<br>0x00801000|- rs2_val == 4096<br>                                                                                                      |[0x80000510]:c.add a0, a1<br>  |
|  80|[0x80002350]<br>0x00010002|- rs2_val == 65536<br>                                                                                                     |[0x80000518]:c.add a0, a1<br>  |
|  81|[0x80002354]<br>0xFF03FFFF|- rs2_val == 262144<br>                                                                                                    |[0x80000526]:c.add a0, a1<br>  |
|  82|[0x80002358]<br>0x000FFDFF|- rs2_val == 1048576<br>                                                                                                   |[0x80000532]:c.add a0, a1<br>  |
|  83|[0x8000235c]<br>0xFF1FFFFF|- rs2_val == 2097152<br>                                                                                                   |[0x80000540]:c.add a0, a1<br>  |
|  84|[0x80002360]<br>0xAB2AAAAA|- rs2_val == 8388608<br>                                                                                                   |[0x80000550]:c.add a0, a1<br>  |
|  85|[0x80002364]<br>0x04000003|- rs2_val == 67108864<br>                                                                                                  |[0x8000055a]:c.add a0, a1<br>  |
|  86|[0x80002368]<br>0x14000000|- rs2_val == 268435456<br>                                                                                                 |[0x80000568]:c.add a0, a1<br>  |
|  87|[0x8000236c]<br>0x20004000|- rs2_val == 536870912<br>                                                                                                 |[0x80000574]:c.add a0, a1<br>  |
|  88|[0x80002370]<br>0x3FFFFFFE|- rs2_val == 1073741824<br>                                                                                                |[0x80000582]:c.add a0, a1<br>  |
|  89|[0x80002374]<br>0x00000004|- rs2_val == -2<br>                                                                                                        |[0x8000058e]:c.add a0, a1<br>  |
|  90|[0x80002378]<br>0xFFFFFFFB|- rs2_val == -3<br>                                                                                                        |[0x8000059c]:c.add a0, a1<br>  |
|  91|[0x8000237c]<br>0xFFFF7FFA|- rs2_val == -5<br>                                                                                                        |[0x800005aa]:c.add a0, a1<br>  |
|  92|[0x80002380]<br>0xFFFFDEFE|- rs2_val == -257<br>                                                                                                      |[0x800005b8]:c.add a0, a1<br>  |
|  93|[0x80002384]<br>0xFFFFFC01|- rs2_val == -1025<br>                                                                                                     |[0x800005c4]:c.add a0, a1<br>  |
|  94|[0x80002388]<br>0xFFFFF804|- rs2_val == -2049<br>                                                                                                     |[0x800005d2]:c.add a0, a1<br>  |
|  95|[0x8000238c]<br>0xFFFF9FFE|- rs2_val == -8193<br>                                                                                                     |[0x800005e0]:c.add a0, a1<br>  |
|  96|[0x80002390]<br>0xFFFFC00F|- rs2_val == -16385<br> - rs1_val == 16<br>                                                                                |[0x800005ec]:c.add a0, a1<br>  |
|  97|[0x80002394]<br>0x00077FFF|- rs2_val == -32769<br>                                                                                                    |[0x800005fa]:c.add a0, a1<br>  |
|  98|[0x80002398]<br>0xFFFAFFFE|- rs2_val == -65537<br>                                                                                                    |[0x8000060a]:c.add a0, a1<br>  |
|  99|[0x8000239c]<br>0xFFEFBFFE|- rs2_val == -1048577<br>                                                                                                  |[0x8000061a]:c.add a0, a1<br>  |
| 100|[0x800023a0]<br>0xFFE00002|- rs2_val == -2097153<br>                                                                                                  |[0x80000628]:c.add a0, a1<br>  |
