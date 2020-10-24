
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x80000640')]      |
| SIG_REGION  | [('0x80002210', '0x8000240c')]      |
| COV_LABELS  | ('cxor',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |

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

|        signature         |                                                                 coverpoints                                                                  |             code             |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
|[0x80002210]<br>0x00000000|- opcode : c.xor<br> - rs1 : 13<br> - rs2 : 15<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 1431655765<br> - rs1_val == 1431655765<br> |[0x8000010c]:c.xor a3, a5<br> |
|[0x80002214]<br>0x00000000|- rs1 : 14<br> - rs2 : 14<br> - rs1 == rs2<br> - rs2_val == 8192<br> - rs1_val == 8192<br>                                                    |[0x8000011a]:c.xor a4, a4<br> |
|[0x80002218]<br>0x7FFFFFFA|- rs1 : 11<br> - rs2 : 9<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs1_val == -2147483648<br>                                   |[0x80000128]:c.xor a1, s1<br> |
|[0x8000221c]<br>0x00000008|- rs1 : 9<br> - rs2 : 10<br> - rs1_val == 0<br> - rs2_val == 8<br>                                                                            |[0x80000132]:c.xor s1, a0<br> |
|[0x80002220]<br>0x7FFFEFFF|- rs1 : 15<br> - rs2 : 12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 4096<br> - rs1_val == 2147483647<br>                              |[0x80000140]:c.xor a5, a2<br> |
|[0x80002224]<br>0xFFFFEFFE|- rs1 : 10<br> - rs2 : 8<br> - rs1_val == 1<br> - rs2_val == -4097<br>                                                                        |[0x8000014c]:c.xor a0, s0<br> |
|[0x80002228]<br>0x80008000|- rs1 : 8<br> - rs2 : 13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 32768<br>                              |[0x80000158]:c.xor s0, a3<br> |
|[0x8000222c]<br>0xFFFFBFFF|- rs1 : 12<br> - rs2 : 11<br> - rs2_val == 0<br> - rs1_val == -16385<br>                                                                      |[0x80000164]:c.xor a2, a1<br> |
|[0x80002230]<br>0x81000000|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -16777217<br>                                                       |[0x80000176]:c.xor a0, a1<br> |
|[0x80002234]<br>0xFFFFFFFC|- rs2_val == 1<br> - rs1_val == -3<br>                                                                                                        |[0x80000182]:c.xor a0, a1<br> |
|[0x80002238]<br>0x00000082|- rs2_val == 128<br> - rs1_val == 2<br>                                                                                                       |[0x8000018e]:c.xor a0, a1<br> |
|[0x8000223c]<br>0xFF7FFFFB|- rs2_val == -8388609<br> - rs1_val == 4<br>                                                                                                  |[0x8000019c]:c.xor a0, a1<br> |
|[0x80002240]<br>0xFFFFFFF4|- rs1_val == 8<br>                                                                                                                            |[0x800001a8]:c.xor a0, a1<br> |
|[0x80002244]<br>0xFFFFFF6F|- rs2_val == -129<br> - rs1_val == 16<br>                                                                                                     |[0x800001b4]:c.xor a0, a1<br> |
|[0x80002248]<br>0xFFFFEFDF|- rs1_val == 32<br>                                                                                                                           |[0x800001c2]:c.xor a0, a1<br> |
|[0x8000224c]<br>0xFFFDFFBF|- rs2_val == -131073<br> - rs1_val == 64<br>                                                                                                  |[0x800001d0]:c.xor a0, a1<br> |
|[0x80002250]<br>0x00000480|- rs2_val == 1024<br> - rs1_val == 128<br>                                                                                                    |[0x800001de]:c.xor a0, a1<br> |
|[0x80002254]<br>0x00000180|- rs1_val == 256<br>                                                                                                                          |[0x800001ec]:c.xor a0, a1<br> |
|[0x80002258]<br>0xFFDFFDFF|- rs2_val == -2097153<br> - rs1_val == 512<br>                                                                                                |[0x800001fc]:c.xor a0, a1<br> |
|[0x8000225c]<br>0x00000402|- rs2_val == 2<br> - rs1_val == 1024<br>                                                                                                      |[0x80000208]:c.xor a0, a1<br> |
|[0x80002260]<br>0x00001800|- rs1_val == 2048<br>                                                                                                                         |[0x80000216]:c.xor a0, a1<br> |
|[0x80002264]<br>0xFFFFEFFD|- rs2_val == -3<br> - rs1_val == 4096<br>                                                                                                     |[0x80000222]:c.xor a0, a1<br> |
|[0x80002268]<br>0xC0004000|- rs1_val == 16384<br>                                                                                                                        |[0x8000022e]:c.xor a0, a1<br> |
|[0x8000226c]<br>0xFDFEFFFF|- rs2_val == -33554433<br> - rs1_val == 65536<br>                                                                                             |[0x8000023c]:c.xor a0, a1<br> |
|[0x80002270]<br>0xFFFD7FFF|- rs2_val == -32769<br> - rs1_val == 131072<br>                                                                                               |[0x8000024a]:c.xor a0, a1<br> |
|[0x80002274]<br>0x00240000|- rs2_val == 2097152<br> - rs1_val == 262144<br>                                                                                              |[0x80000258]:c.xor a0, a1<br> |
|[0x80002278]<br>0x00080080|- rs1_val == 524288<br>                                                                                                                       |[0x80000266]:c.xor a0, a1<br> |
|[0x8000227c]<br>0x00100020|- rs2_val == 32<br> - rs1_val == 1048576<br>                                                                                                  |[0x80000274]:c.xor a0, a1<br> |
|[0x80002280]<br>0xFFDFFFEF|- rs2_val == -17<br> - rs1_val == 2097152<br>                                                                                                 |[0x80000282]:c.xor a0, a1<br> |
|[0x80002284]<br>0x00400002|- rs1_val == 4194304<br>                                                                                                                      |[0x8000028e]:c.xor a0, a1<br> |
|[0x80002288]<br>0x10800000|- rs2_val == 268435456<br> - rs1_val == 8388608<br>                                                                                           |[0x8000029c]:c.xor a0, a1<br> |
|[0x8000228c]<br>0x01008000|- rs2_val == 32768<br> - rs1_val == 16777216<br>                                                                                              |[0x800002a8]:c.xor a0, a1<br> |
|[0x80002290]<br>0xFDFFFFFF|- rs1_val == 33554432<br>                                                                                                                     |[0x800002b6]:c.xor a0, a1<br> |
|[0x80002294]<br>0xFAFFFFFF|- rs2_val == -16777217<br> - rs1_val == 67108864<br>                                                                                          |[0x800002c6]:c.xor a0, a1<br> |
|[0x80002298]<br>0x08000400|- rs1_val == 134217728<br>                                                                                                                    |[0x800002d4]:c.xor a0, a1<br> |
|[0x8000229c]<br>0xEFFFFFFB|- rs2_val == -5<br> - rs1_val == 268435456<br>                                                                                                |[0x800002e2]:c.xor a0, a1<br> |
|[0x800022a0]<br>0xDF7FFFFF|- rs1_val == 536870912<br>                                                                                                                    |[0x800002f2]:c.xor a0, a1<br> |
|[0x800022a4]<br>0x50000000|- rs1_val == 1073741824<br>                                                                                                                   |[0x80000300]:c.xor a0, a1<br> |
|[0x800022a8]<br>0xFFFFF7FE|- rs2_val == 2048<br> - rs1_val == -2<br>                                                                                                     |[0x80000310]:c.xor a0, a1<br> |
|[0x800022ac]<br>0x00001004|- rs1_val == -5<br>                                                                                                                           |[0x8000031e]:c.xor a0, a1<br> |
|[0x800022b0]<br>0xFFFFFDF7|- rs2_val == 512<br> - rs1_val == -9<br>                                                                                                      |[0x8000032c]:c.xor a0, a1<br> |
|[0x800022b4]<br>0x00020010|- rs1_val == -17<br>                                                                                                                          |[0x8000033a]:c.xor a0, a1<br> |
|[0x800022b8]<br>0xFFBFFFDF|- rs2_val == 4194304<br> - rs1_val == -33<br>                                                                                                 |[0x80000348]:c.xor a0, a1<br> |
|[0x800022bc]<br>0xFFFFFF9F|- rs1_val == -65<br>                                                                                                                          |[0x80000356]:c.xor a0, a1<br> |
|[0x800022c0]<br>0x00000000|- rs2_val == -4194305<br> - rs1_val == -4194305<br>                                                                                           |[0x80000368]:c.xor a0, a1<br> |
|[0x800022c4]<br>0x04008000|- rs2_val == -67108865<br> - rs1_val == -32769<br>                                                                                            |[0x80000378]:c.xor a0, a1<br> |
|[0x800022c8]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                   |[0x80000386]:c.xor a0, a1<br> |
|[0x800022cc]<br>0xEFFFFFF7|- rs2_val == -268435457<br>                                                                                                                   |[0x80000394]:c.xor a0, a1<br> |
|[0x800022d0]<br>0x20000800|- rs2_val == -536870913<br> - rs1_val == -2049<br>                                                                                            |[0x800003a6]:c.xor a0, a1<br> |
|[0x800022d4]<br>0xBFFFFFEF|- rs2_val == -1073741825<br>                                                                                                                  |[0x800003b4]:c.xor a0, a1<br> |
|[0x800022d8]<br>0xAAAAAA2A|- rs2_val == -1431655766<br>                                                                                                                  |[0x800003c6]:c.xor a0, a1<br> |
|[0x800022dc]<br>0x00004080|- rs2_val == -16385<br> - rs1_val == -129<br>                                                                                                 |[0x800003d4]:c.xor a0, a1<br> |
|[0x800022e0]<br>0xFFFFFEFC|- rs1_val == -257<br>                                                                                                                         |[0x800003e0]:c.xor a0, a1<br> |
|[0x800022e4]<br>0xFFFFFDEF|- rs2_val == 16<br> - rs1_val == -513<br>                                                                                                     |[0x800003ec]:c.xor a0, a1<br> |
|[0x800022e8]<br>0xFBFFFBFF|- rs2_val == 67108864<br> - rs1_val == -1025<br>                                                                                              |[0x800003fa]:c.xor a0, a1<br> |
|[0x800022ec]<br>0xFFFFAFFF|- rs2_val == 16384<br> - rs1_val == -4097<br>                                                                                                 |[0x80000406]:c.xor a0, a1<br> |
|[0x800022f0]<br>0x08002000|- rs1_val == -8193<br>                                                                                                                        |[0x80000416]:c.xor a0, a1<br> |
|[0x800022f4]<br>0xFFFAFFFF|- rs2_val == 262144<br> - rs1_val == -65537<br>                                                                                               |[0x80000424]:c.xor a0, a1<br> |
|[0x800022f8]<br>0x01020000|- rs1_val == -131073<br>                                                                                                                      |[0x80000434]:c.xor a0, a1<br> |
|[0x800022fc]<br>0xFFFBFFFA|- rs1_val == -262145<br>                                                                                                                      |[0x80000442]:c.xor a0, a1<br> |
|[0x80002300]<br>0xFFB7FFFF|- rs1_val == -524289<br>                                                                                                                      |[0x80000452]:c.xor a0, a1<br> |
|[0x80002304]<br>0xFBEFFFFF|- rs1_val == -1048577<br>                                                                                                                     |[0x80000462]:c.xor a0, a1<br> |
|[0x80002308]<br>0xFFDFFFF7|- rs1_val == -2097153<br>                                                                                                                     |[0x80000470]:c.xor a0, a1<br> |
|[0x8000230c]<br>0xFF7FFFF8|- rs1_val == -8388609<br>                                                                                                                     |[0x8000047e]:c.xor a0, a1<br> |
|[0x80002310]<br>0x7DFFFFFF|- rs1_val == -33554433<br>                                                                                                                    |[0x8000048e]:c.xor a0, a1<br> |
|[0x80002314]<br>0x04000000|- rs1_val == -67108865<br>                                                                                                                    |[0x8000049e]:c.xor a0, a1<br> |
|[0x80002318]<br>0xF7FFFFFB|- rs2_val == 4<br> - rs1_val == -134217729<br>                                                                                                |[0x800004ac]:c.xor a0, a1<br> |
|[0x8000231c]<br>0xEFEFFFFF|- rs2_val == 1048576<br> - rs1_val == -268435457<br>                                                                                          |[0x800004bc]:c.xor a0, a1<br> |
|[0x80002320]<br>0xDFFBFFFF|- rs1_val == -536870913<br>                                                                                                                   |[0x800004cc]:c.xor a0, a1<br> |
|[0x80002324]<br>0x40002000|- rs2_val == -8193<br> - rs1_val == -1073741825<br>                                                                                           |[0x800004dc]:c.xor a0, a1<br> |
|[0x80002328]<br>0x55555575|- rs2_val == -33<br> - rs1_val == -1431655766<br>                                                                                             |[0x800004ee]:c.xor a0, a1<br> |
|[0x8000232c]<br>0x00000041|- rs2_val == 64<br>                                                                                                                           |[0x800004fa]:c.xor a0, a1<br> |
|[0x80002330]<br>0x00200100|- rs2_val == 256<br>                                                                                                                          |[0x80000508]:c.xor a0, a1<br> |
|[0x80002338]<br>0x00010007|- rs2_val == 65536<br>                                                                                                                        |[0x8000051e]:c.xor a0, a1<br> |
|[0x8000233c]<br>0xFFFDFFDF|- rs2_val == 131072<br>                                                                                                                       |[0x8000052c]:c.xor a0, a1<br> |
|[0x80002340]<br>0xFFF7FFF8|- rs2_val == 524288<br>                                                                                                                       |[0x8000053a]:c.xor a0, a1<br> |
|[0x80002344]<br>0x00800080|- rs2_val == 8388608<br>                                                                                                                      |[0x80000548]:c.xor a0, a1<br> |
|[0x80002348]<br>0xFEFFFFEF|- rs2_val == 16777216<br>                                                                                                                     |[0x80000556]:c.xor a0, a1<br> |
|[0x8000234c]<br>0xFDFFFFFE|- rs2_val == 33554432<br>                                                                                                                     |[0x80000564]:c.xor a0, a1<br> |
|[0x80002350]<br>0xF7FEFFFF|- rs2_val == 134217728<br>                                                                                                                    |[0x80000572]:c.xor a0, a1<br> |
|[0x80002354]<br>0xDFEFFFFF|- rs2_val == 536870912<br>                                                                                                                    |[0x80000582]:c.xor a0, a1<br> |
|[0x80002358]<br>0x40000040|- rs2_val == 1073741824<br>                                                                                                                   |[0x80000590]:c.xor a0, a1<br> |
|[0x8000235c]<br>0x00000004|- rs2_val == -2<br>                                                                                                                           |[0x8000059e]:c.xor a0, a1<br> |
|[0x80002360]<br>0xFFFFFFF1|- rs2_val == -9<br>                                                                                                                           |[0x800005aa]:c.xor a0, a1<br> |
|[0x80002364]<br>0xFFFFFF3F|- rs2_val == -65<br>                                                                                                                          |[0x800005b8]:c.xor a0, a1<br> |
|[0x80002368]<br>0xDFFFFEFF|- rs2_val == -257<br>                                                                                                                         |[0x800005c6]:c.xor a0, a1<br> |
|[0x8000236c]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                         |[0x800005d2]:c.xor a0, a1<br> |
|[0x80002370]<br>0xFDFFFBFF|- rs2_val == -1025<br>                                                                                                                        |[0x800005e0]:c.xor a0, a1<br> |
|[0x80002374]<br>0xFFFFB7FF|- rs2_val == -2049<br>                                                                                                                        |[0x800005ee]:c.xor a0, a1<br> |
|[0x80002378]<br>0x00014000|- rs2_val == -65537<br>                                                                                                                       |[0x800005fc]:c.xor a0, a1<br> |
|[0x8000237c]<br>0xFFFB7FFF|- rs2_val == -262145<br>                                                                                                                      |[0x8000060a]:c.xor a0, a1<br> |
|[0x80002380]<br>0x00080040|- rs2_val == -524289<br>                                                                                                                      |[0x8000061a]:c.xor a0, a1<br> |
|[0x80002384]<br>0x3FEFFFFF|- rs2_val == -1048577<br>                                                                                                                     |[0x8000062a]:c.xor a0, a1<br> |
