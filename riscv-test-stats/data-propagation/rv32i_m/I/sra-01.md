
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000640')]      |
| SIG_REGION                | [('0x80002210', '0x800023c4')]      |
| COV_LABELS                | ('sra',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Unique Coverpoints  | 189      |
| Total Signature Updates   | 71      |
| Ops w/o unique coverpoints | 6      |
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

|s.no|        signature         |                                                                                           coverpoints                                                                                           |               code               |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002210]<br>0xFDFFFFFF|- opcode : sra<br> - rs1 : x16<br> - rs2 : x14<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -268435457<br> |[0x8000010c]:sra s11, a6, a4<br>  |
|   2|[0x80002214]<br>0x00000000|- rs1 : x1<br> - rs2 : x22<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4<br>                                                      |[0x8000011c]:sra ra, ra, s6<br>   |
|   3|[0x80002218]<br>0x00000000|- rs1 : x28<br> - rs2 : x28<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                     |[0x80000130]:sra s9, t3, t3<br>   |
|   4|[0x8000221c]<br>0x00000002|- rs1 : x15<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2<br>                                                                      |[0x80000140]:sra s10, a5, s10<br> |
|   5|[0x80002220]<br>0x00000000|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 8<br> - rs2_val == 8<br>                          |[0x80000150]:sra t4, t4, t4<br>   |
|   6|[0x80002224]<br>0xFFFE0000|- rs1 : x4<br> - rs2 : x20<br> - rd : x6<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                                    |[0x80000160]:sra t1, tp, s4<br>   |
|   7|[0x80002228]<br>0x00000000|- rs1 : x7<br> - rs2 : x0<br> - rd : x15<br>                                                                                                                                                     |[0x80000170]:sra a5, t2, zero<br> |
|   8|[0x8000222c]<br>0x03FFFFFF|- rs1 : x11<br> - rs2 : x31<br> - rd : x3<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                   |[0x80000184]:sra gp, a1, t6<br>   |
|   9|[0x80002230]<br>0x00000000|- rs1 : x31<br> - rs2 : x6<br> - rd : x5<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 10<br>                                                       |[0x80000194]:sra t0, t6, t1<br>   |
|  10|[0x80002234]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x14<br> - rs2_val == 1<br>                                                                                                                                 |[0x800001a8]:sra a4, zero, a1<br> |
|  11|[0x80002238]<br>0x00008000|- rs1 : x22<br> - rs2 : x5<br> - rd : x28<br> - rs1_val == 131072<br> - rs2_val == 2<br>                                                                                                         |[0x800001b8]:sra t3, s6, t0<br>   |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x17<br> - rd : x7<br> - rs2_val == 4<br>                                                                                                                                 |[0x800001c8]:sra t2, a4, a7<br>   |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x10<br> - rd : x21<br> - rs1_val == -262145<br> - rs2_val == 30<br>                                                                                                      |[0x800001dc]:sra s5, s7, a0<br>   |
|  14|[0x80002244]<br>0x00000000|- rs1 : x27<br> - rs2 : x12<br> - rd : x19<br> - rs1_val == 134217728<br> - rs2_val == 29<br>                                                                                                    |[0x800001ec]:sra s3, s11, a2<br>  |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x1<br> - rd : x8<br> - rs1_val == -33554433<br> - rs2_val == 27<br>                                                                                                       |[0x80000200]:sra fp, sp, ra<br>   |
|  16|[0x8000224c]<br>0x00000020|- rs1 : x8<br> - rs2 : x4<br> - rd : x12<br> - rs1_val == 268435456<br> - rs2_val == 23<br>                                                                                                      |[0x80000210]:sra a2, fp, tp<br>   |
|  17|[0x80002250]<br>0x00000000|- rs1 : x19<br> - rs2 : x9<br> - rd : x24<br> - rs1_val == 1024<br> - rs2_val == 15<br>                                                                                                          |[0x80000220]:sra s8, s3, s1<br>   |
|  18|[0x80002254]<br>0x00000040|- rs1 : x6<br> - rs2 : x18<br> - rd : x11<br> - rs2_val == 21<br>                                                                                                                                |[0x80000238]:sra a1, t1, s2<br>   |
|  19|[0x80002258]<br>0x00000000|- rs1 : x18<br> - rs2 : x13<br> - rd : x30<br> - rs1_val == 16<br>                                                                                                                               |[0x80000248]:sra t5, s2, a3<br>   |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs1_val == 32<br>                                                                                                                               |[0x80000258]:sra s6, s5, s7<br>   |
|  21|[0x80002260]<br>0x00000000|- rs1 : x25<br> - rs2 : x15<br> - rd : x23<br> - rs1_val == 64<br>                                                                                                                               |[0x80000268]:sra s7, s9, a5<br>   |
|  22|[0x80002264]<br>0x00000000|- rs1 : x30<br> - rs2 : x7<br> - rd : x4<br> - rs1_val == 128<br>                                                                                                                                |[0x80000278]:sra tp, t5, t2<br>   |
|  23|[0x80002268]<br>0x00000000|- rs1 : x10<br> - rs2 : x16<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                                              |[0x80000288]:sra t6, a0, a6<br>   |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x20<br> - rs2 : x21<br> - rd : x0<br> - rs1_val == 512<br>                                                                                                                               |[0x80000298]:sra zero, s4, s5<br> |
|  25|[0x80002270]<br>0x00000001|- rs1 : x5<br> - rs2 : x8<br> - rd : x16<br> - rs1_val == 2048<br>                                                                                                                               |[0x800002ac]:sra a6, t0, fp<br>   |
|  26|[0x80002274]<br>0x00000000|- rs1 : x9<br> - rs2 : x27<br> - rd : x13<br> - rs1_val == 4096<br>                                                                                                                              |[0x800002bc]:sra a3, s1, s11<br>  |
|  27|[0x80002278]<br>0x00000040|- rs1 : x13<br> - rs2 : x3<br> - rd : x10<br> - rs1_val == 8192<br>                                                                                                                              |[0x800002cc]:sra a0, a3, gp<br>   |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x24<br> - rs2 : x2<br> - rd : x17<br> - rs1_val == 16384<br>                                                                                                                             |[0x800002dc]:sra a7, s8, sp<br>   |
|  29|[0x80002280]<br>0x00000000|- rs1 : x17<br> - rs2 : x30<br> - rd : x2<br> - rs1_val == 32768<br>                                                                                                                             |[0x800002ec]:sra sp, a7, t5<br>   |
|  30|[0x80002284]<br>0x00000080|- rs1 : x26<br> - rs2 : x25<br> - rd : x9<br> - rs1_val == 65536<br>                                                                                                                             |[0x800002fc]:sra s1, s10, s9<br>  |
|  31|[0x80002288]<br>0x00000800|- rs1 : x3<br> - rs2 : x24<br> - rd : x18<br> - rs1_val == 262144<br>                                                                                                                            |[0x8000030c]:sra s2, gp, s8<br>   |
|  32|[0x8000228c]<br>0x00000080|- rs1 : x12<br> - rs2 : x19<br> - rd : x20<br> - rs1_val == 524288<br>                                                                                                                           |[0x8000031c]:sra s4, a2, s3<br>   |
|  33|[0x80002290]<br>0x00000004|- rs1_val == 1048576<br>                                                                                                                                                                         |[0x8000032c]:sra a2, a0, a1<br>   |
|  34|[0x80002294]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                                                         |[0x8000033c]:sra a2, a0, a1<br>   |
|  35|[0x80002298]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                         |[0x8000034c]:sra a2, a0, a1<br>   |
|  36|[0x8000229c]<br>0x00000001|- rs1_val == 8388608<br>                                                                                                                                                                         |[0x8000035c]:sra a2, a0, a1<br>   |
|  37|[0x800022a0]<br>0x00200000|- rs1_val == 16777216<br>                                                                                                                                                                        |[0x8000036c]:sra a2, a0, a1<br>   |
|  38|[0x800022a4]<br>0x00004000|- rs1_val == 33554432<br>                                                                                                                                                                        |[0x8000037c]:sra a2, a0, a1<br>   |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                        |[0x8000038c]:sra a2, a0, a1<br>   |
|  40|[0x800022ac]<br>0xFFFFFFDF|- rs1_val == -2049<br>                                                                                                                                                                           |[0x800003a0]:sra a2, a0, a1<br>   |
|  41|[0x800022b0]<br>0xFFFFFFFE|- rs1_val == -4097<br>                                                                                                                                                                           |[0x800003b4]:sra a2, a0, a1<br>   |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                           |[0x800003c8]:sra a2, a0, a1<br>   |
|  43|[0x800022b8]<br>0xFFFFDFFF|- rs1_val == -16385<br>                                                                                                                                                                          |[0x800003dc]:sra a2, a0, a1<br>   |
|  44|[0x800022bc]<br>0xFFFFFFFE|- rs1_val == -32769<br>                                                                                                                                                                          |[0x800003f0]:sra a2, a0, a1<br>   |
|  45|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                          |[0x80000404]:sra a2, a0, a1<br>   |
|  46|[0x800022c4]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                         |[0x80000418]:sra a2, a0, a1<br>   |
|  47|[0x800022c8]<br>0xFFFFFFF7|- rs1_val == -524289<br> - rs2_val == 16<br>                                                                                                                                                     |[0x8000042c]:sra a2, a0, a1<br>   |
|  48|[0x800022cc]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                        |[0x80000440]:sra a2, a0, a1<br>   |
|  49|[0x800022d0]<br>0xFFFFFBFF|- rs1_val == -2097153<br>                                                                                                                                                                        |[0x80000454]:sra a2, a0, a1<br>   |
|  50|[0x800022d4]<br>0xFFFFFFFD|- rs1_val == -4194305<br>                                                                                                                                                                        |[0x80000468]:sra a2, a0, a1<br>   |
|  51|[0x800022d8]<br>0xFFEFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                       |[0x8000047c]:sra a2, a0, a1<br>   |
|  52|[0x800022dc]<br>0xFDFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                       |[0x80000490]:sra a2, a0, a1<br>   |
|  53|[0x800022e0]<br>0xFFFFEFFF|- rs1_val == -134217729<br>                                                                                                                                                                      |[0x800004a4]:sra a2, a0, a1<br>   |
|  54|[0x800022e4]<br>0xFFFFF7FF|- rs1_val == -536870913<br>                                                                                                                                                                      |[0x800004b8]:sra a2, a0, a1<br>   |
|  55|[0x800022e8]<br>0xFFDFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                     |[0x800004cc]:sra a2, a0, a1<br>   |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                             |[0x800004dc]:sra a2, a0, a1<br>   |
|  57|[0x800022f0]<br>0xFFFFFFEF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -17<br>                                                                                                                                          |[0x800004ec]:sra a2, a0, a1<br>   |
|  58|[0x800022f4]<br>0x01000000|- rs1_val == 536870912<br>                                                                                                                                                                       |[0x800004fc]:sra a2, a0, a1<br>   |
|  59|[0x800022f8]<br>0x00080000|- rs1_val == 1073741824<br>                                                                                                                                                                      |[0x8000050c]:sra a2, a0, a1<br>   |
|  60|[0x800022fc]<br>0x0000000A|- rs1_val == 1431655765<br>                                                                                                                                                                      |[0x80000520]:sra a2, a0, a1<br>   |
|  61|[0x80002300]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                              |[0x80000530]:sra a2, a0, a1<br>   |
|  62|[0x80002304]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                              |[0x80000540]:sra a2, a0, a1<br>   |
|  63|[0x80002308]<br>0xEAAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                     |[0x80000554]:sra a2, a0, a1<br>   |
|  64|[0x8000230c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                              |[0x80000564]:sra a2, a0, a1<br>   |
|  65|[0x80002310]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                              |[0x80000574]:sra a2, a0, a1<br>   |
|  66|[0x80002314]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                             |[0x80000584]:sra a2, a0, a1<br>   |
|  67|[0x80002318]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                            |[0x80000594]:sra a2, a0, a1<br>   |
|  68|[0x8000231c]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                            |[0x800005a4]:sra a2, a0, a1<br>   |
|  69|[0x80002320]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                            |[0x800005b4]:sra a2, a0, a1<br>   |
|  70|[0x80002324]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                           |[0x800005c4]:sra a2, a0, a1<br>   |
|  71|[0x8000232c]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                        |[0x800005e8]:sra a2, a0, a1<br>   |
