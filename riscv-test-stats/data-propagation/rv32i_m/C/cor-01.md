
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x800006a0')]      |
| SIG_REGION  | [('0x80002210', '0x80002420')]      |
| COV_LABELS  | ('cor',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |

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

|        signature         |                                                             coverpoints                                                              |            code             |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
|[0x80002210]<br>0x00880000|- opcode : c.or<br> - rs1 : 11<br> - rs2 : 14<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 524288<br> - rs1_val == 8388608<br> |[0x80000104]:c.or a1, a4<br> |
|[0x80002214]<br>0x00000004|- rs1 : 8<br> - rs2 : 8<br> - rs1 == rs2<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                    |[0x80000110]:c.or s0, s0<br> |
|[0x80002218]<br>0xFFF7FFFF|- rs1 : 9<br> - rs2 : 12<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs2_val == -524289<br> - rs1_val == -2147483648<br>  |[0x80000120]:c.or s1, a2<br> |
|[0x8000221c]<br>0x00000006|- rs1 : 14<br> - rs2 : 11<br> - rs1_val == 0<br>                                                                                      |[0x8000012a]:c.or a4, a1<br> |
|[0x80002220]<br>0x7FFFFFFF|- rs1 : 15<br> - rs2 : 9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                             |[0x80000138]:c.or a5, s1<br> |
|[0x80002224]<br>0x08000001|- rs1 : 12<br> - rs2 : 10<br> - rs1_val == 1<br> - rs2_val == 134217728<br>                                                           |[0x80000144]:c.or a2, a0<br> |
|[0x80002228]<br>0x82000000|- rs1 : 10<br> - rs2 : 13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 33554432<br>                  |[0x80000152]:c.or a0, a3<br> |
|[0x8000222c]<br>0xFFFBFFFF|- rs1 : 13<br> - rs2 : 15<br> - rs2_val == 0<br> - rs1_val == -262145<br>                                                             |[0x80000160]:c.or a3, a5<br> |
|[0x80002230]<br>0xFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -9<br>                                                      |[0x80000170]:c.or a0, a1<br> |
|[0x80002234]<br>0xFFFFFFEF|- rs2_val == 1<br> - rs1_val == -17<br>                                                                                               |[0x8000017c]:c.or a0, a1<br> |
|[0x80002238]<br>0xFFFFFFFA|- rs1_val == 2<br>                                                                                                                    |[0x80000188]:c.or a0, a1<br> |
|[0x8000223c]<br>0xFFFFFFFE|- rs2_val == -2<br> - rs1_val == 8<br>                                                                                                |[0x80000194]:c.or a0, a1<br> |
|[0x80002240]<br>0x00002010|- rs2_val == 8192<br> - rs1_val == 16<br>                                                                                             |[0x8000019e]:c.or a0, a1<br> |
|[0x80002244]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs1_val == 32<br>                                                                                      |[0x800001b0]:c.or a0, a1<br> |
|[0x80002248]<br>0xFFFFFFFD|- rs2_val == -3<br> - rs1_val == 64<br>                                                                                               |[0x800001be]:c.or a0, a1<br> |
|[0x8000224c]<br>0xFFF7FFFF|- rs1_val == 128<br>                                                                                                                  |[0x800001ce]:c.or a0, a1<br> |
|[0x80002250]<br>0x02000100|- rs2_val == 33554432<br> - rs1_val == 256<br>                                                                                        |[0x800001dc]:c.or a0, a1<br> |
|[0x80002254]<br>0x00008200|- rs2_val == 32768<br> - rs1_val == 512<br>                                                                                           |[0x800001e8]:c.or a0, a1<br> |
|[0x80002258]<br>0x01000400|- rs2_val == 16777216<br> - rs1_val == 1024<br>                                                                                       |[0x800001f6]:c.or a0, a1<br> |
|[0x8000225c]<br>0xFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 2048<br>                                                                                       |[0x80000208]:c.or a0, a1<br> |
|[0x80002260]<br>0xFFFFF7FF|- rs2_val == -2049<br> - rs1_val == 4096<br>                                                                                          |[0x80000216]:c.or a0, a1<br> |
|[0x80002264]<br>0xFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 8192<br>                                                                                        |[0x80000222]:c.or a0, a1<br> |
|[0x80002268]<br>0xFFFFFFBF|- rs2_val == -65<br> - rs1_val == 16384<br>                                                                                           |[0x8000022e]:c.or a0, a1<br> |
|[0x8000226c]<br>0xFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 32768<br>                                                                                         |[0x8000023a]:c.or a0, a1<br> |
|[0x80002270]<br>0x00010010|- rs2_val == 16<br> - rs1_val == 65536<br>                                                                                            |[0x80000244]:c.or a0, a1<br> |
|[0x80002274]<br>0x00020009|- rs1_val == 131072<br>                                                                                                               |[0x80000250]:c.or a0, a1<br> |
|[0x80002278]<br>0x00040006|- rs1_val == 262144<br>                                                                                                               |[0x8000025c]:c.or a0, a1<br> |
|[0x8000227c]<br>0x01080000|- rs1_val == 524288<br>                                                                                                               |[0x8000026a]:c.or a0, a1<br> |
|[0x80002280]<br>0xFFFFFF7F|- rs2_val == -129<br> - rs1_val == 1048576<br>                                                                                        |[0x80000278]:c.or a0, a1<br> |
|[0x80002284]<br>0xFFFFFFF6|- rs1_val == 2097152<br>                                                                                                              |[0x80000286]:c.or a0, a1<br> |
|[0x80002288]<br>0xFFFFFFFF|- rs1_val == 4194304<br>                                                                                                              |[0x80000296]:c.or a0, a1<br> |
|[0x8000228c]<br>0x01000009|- rs1_val == 16777216<br>                                                                                                             |[0x800002a2]:c.or a0, a1<br> |
|[0x80002290]<br>0xFFFFFF7F|- rs1_val == 67108864<br>                                                                                                             |[0x800002b0]:c.or a0, a1<br> |
|[0x80002294]<br>0xFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == 134217728<br>                                                                                 |[0x800002c0]:c.or a0, a1<br> |
|[0x80002298]<br>0xFFFBFFFF|- rs2_val == -262145<br> - rs1_val == 268435456<br>                                                                                   |[0x800002d0]:c.or a0, a1<br> |
|[0x8000229c]<br>0xFFFDFFFF|- rs1_val == 536870912<br>                                                                                                            |[0x800002de]:c.or a0, a1<br> |
|[0x800022a0]<br>0x40000000|- rs2_val == 1073741824<br> - rs1_val == 1073741824<br>                                                                               |[0x800002ec]:c.or a0, a1<br> |
|[0x800022a4]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                   |[0x800002f8]:c.or a0, a1<br> |
|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                   |[0x80000308]:c.or a0, a1<br> |
|[0x800022ac]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                   |[0x80000314]:c.or a0, a1<br> |
|[0x800022b0]<br>0xFFFFFFFF|- rs2_val == -17<br> - rs1_val == -33<br>                                                                                             |[0x80000322]:c.or a0, a1<br> |
|[0x800022b4]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                  |[0x8000032e]:c.or a0, a1<br> |
|[0x800022b8]<br>0xFFFFFFFF|- rs2_val == -32769<br> - rs1_val == -129<br>                                                                                         |[0x8000033c]:c.or a0, a1<br> |
|[0x800022bc]<br>0xFFFFFEFF|- rs2_val == 32<br> - rs1_val == -257<br>                                                                                             |[0x8000034a]:c.or a0, a1<br> |
|[0x800022c0]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                             |[0x80000358]:c.or a0, a1<br> |
|[0x800022c4]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                            |[0x80000368]:c.or a0, a1<br> |
|[0x800022c8]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                            |[0x80000378]:c.or a0, a1<br> |
|[0x800022cc]<br>0xFFFFFFFF|- rs2_val == -134217729<br>                                                                                                           |[0x80000388]:c.or a0, a1<br> |
|[0x800022d0]<br>0xFFFFFFFF|- rs2_val == -268435457<br>                                                                                                           |[0x80000398]:c.or a0, a1<br> |
|[0x800022d4]<br>0xFFFFFFFF|- rs2_val == -536870913<br> - rs1_val == -16385<br>                                                                                   |[0x800003a8]:c.or a0, a1<br> |
|[0x800022d8]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                          |[0x800003b8]:c.or a0, a1<br> |
|[0x800022dc]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                           |[0x800003c8]:c.or a0, a1<br> |
|[0x800022e0]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                 |[0x800003d8]:c.or a0, a1<br> |
|[0x800022e4]<br>0xFFFFFBFF|- rs1_val == -1025<br>                                                                                                                |[0x800003e6]:c.or a0, a1<br> |
|[0x800022e8]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                |[0x800003f6]:c.or a0, a1<br> |
|[0x800022ec]<br>0xFFFFEFFF|- rs2_val == 536870912<br> - rs1_val == -4097<br>                                                                                     |[0x80000404]:c.or a0, a1<br> |
|[0x800022f0]<br>0xFFFFDFFF|- rs2_val == 64<br> - rs1_val == -8193<br>                                                                                            |[0x80000412]:c.or a0, a1<br> |
|[0x800022f4]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                               |[0x8000041e]:c.or a0, a1<br> |
|[0x800022f8]<br>0xFFFEFFFF|- rs2_val == 128<br> - rs1_val == -65537<br>                                                                                          |[0x8000042c]:c.or a0, a1<br> |
|[0x800022fc]<br>0xFFFFFFFF|- rs2_val == -2097153<br> - rs1_val == -131073<br>                                                                                    |[0x8000043c]:c.or a0, a1<br> |
|[0x80002300]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                              |[0x8000044c]:c.or a0, a1<br> |
|[0x80002304]<br>0xFFEFFFFF|- rs2_val == 8<br> - rs1_val == -1048577<br>                                                                                          |[0x8000045a]:c.or a0, a1<br> |
|[0x80002308]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                             |[0x8000046a]:c.or a0, a1<br> |
|[0x8000230c]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                             |[0x80000478]:c.or a0, a1<br> |
|[0x80002310]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                             |[0x80000486]:c.or a0, a1<br> |
|[0x80002314]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                            |[0x80000494]:c.or a0, a1<br> |
|[0x80002318]<br>0xFFFFFFFF|- rs1_val == -33554433<br>                                                                                                            |[0x800004a6]:c.or a0, a1<br> |
|[0x8000231c]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                            |[0x800004b8]:c.or a0, a1<br> |
|[0x80002320]<br>0xFFFFFFFF|- rs1_val == -134217729<br>                                                                                                           |[0x800004ca]:c.or a0, a1<br> |
|[0x80002324]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                           |[0x800004d8]:c.or a0, a1<br> |
|[0x80002328]<br>0xFFFFFFFF|- rs1_val == -536870913<br>                                                                                                           |[0x800004ea]:c.or a0, a1<br> |
|[0x8000232c]<br>0xFFFFFFFF|- rs1_val == -1073741825<br>                                                                                                          |[0x800004fa]:c.or a0, a1<br> |
|[0x80002330]<br>0x7FFFFFFF|- rs1_val == 1431655765<br>                                                                                                           |[0x8000050e]:c.or a0, a1<br> |
|[0x80002334]<br>0xAABAAAAA|- rs2_val == 1048576<br> - rs1_val == -1431655766<br>                                                                                 |[0x80000520]:c.or a0, a1<br> |
|[0x80002338]<br>0xFFFFFFF6|- rs2_val == 2<br>                                                                                                                    |[0x8000052c]:c.or a0, a1<br> |
|[0x8000233c]<br>0x00040100|- rs2_val == 256<br>                                                                                                                  |[0x8000053a]:c.or a0, a1<br> |
|[0x80002340]<br>0x00040200|- rs2_val == 512<br>                                                                                                                  |[0x80000548]:c.or a0, a1<br> |
|[0x80002344]<br>0xFFFFF7FF|- rs2_val == 1024<br>                                                                                                                 |[0x80000558]:c.or a0, a1<br> |
|[0x80002348]<br>0xBFFFFFFF|- rs2_val == 2048<br>                                                                                                                 |[0x8000056a]:c.or a0, a1<br> |
|[0x8000234c]<br>0x08001000|- rs2_val == 4096<br>                                                                                                                 |[0x80000576]:c.or a0, a1<br> |
|[0x80002350]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                |[0x80000580]:c.or a0, a1<br> |
|[0x80002354]<br>0xFFFFFF7F|- rs2_val == 65536<br>                                                                                                                |[0x8000058c]:c.or a0, a1<br> |
|[0x80002358]<br>0xFFFFFFFD|- rs2_val == 131072<br>                                                                                                               |[0x8000059a]:c.or a0, a1<br> |
|[0x8000235c]<br>0xFF7FFFFF|- rs2_val == 262144<br>                                                                                                               |[0x800005aa]:c.or a0, a1<br> |
|[0x80002360]<br>0xFFFFFFFF|- rs2_val == 4194304<br>                                                                                                              |[0x800005ba]:c.or a0, a1<br> |
|[0x80002364]<br>0x00820000|- rs2_val == 8388608<br>                                                                                                              |[0x800005c8]:c.or a0, a1<br> |
|[0x80002368]<br>0x06000000|- rs2_val == 67108864<br>                                                                                                             |[0x800005d6]:c.or a0, a1<br> |
|[0x8000236c]<br>0x10040000|- rs2_val == 268435456<br>                                                                                                            |[0x800005e4]:c.or a0, a1<br> |
|[0x80002370]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                   |[0x800005f0]:c.or a0, a1<br> |
|[0x80002374]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                   |[0x800005fe]:c.or a0, a1<br> |
|[0x80002378]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                  |[0x8000060c]:c.or a0, a1<br> |
|[0x8000237c]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                 |[0x80000618]:c.or a0, a1<br> |
|[0x80002380]<br>0xFFFFFFFF|- rs2_val == -513<br>                                                                                                                 |[0x80000628]:c.or a0, a1<br> |
|[0x80002384]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                |[0x80000636]:c.or a0, a1<br> |
|[0x80002388]<br>0xFFFFFFFF|- rs2_val == -8193<br>                                                                                                                |[0x80000646]:c.or a0, a1<br> |
|[0x8000238c]<br>0xFFFFFFFF|- rs2_val == -16385<br>                                                                                                               |[0x80000654]:c.or a0, a1<br> |
|[0x80002390]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                               |[0x80000662]:c.or a0, a1<br> |
|[0x80002394]<br>0xFFFFFFFF|- rs2_val == -1048577<br>                                                                                                             |[0x80000674]:c.or a0, a1<br> |
|[0x80002398]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                              |[0x80000680]:c.or a0, a1<br> |
