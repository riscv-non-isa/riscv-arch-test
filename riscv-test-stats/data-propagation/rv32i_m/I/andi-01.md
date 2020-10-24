
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000530')]      |
| SIG_REGION                | [('0x80002210', '0x800023cc')]      |
| COV_LABELS                | ('andi',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/andi-01.S/andi-01.S    |
| Total Unique Coverpoints  | 171      |
| Total Signature Updates   | 77      |
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

|s.no|        signature         |                                                         coverpoints                                                          |                code                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : andi<br> - rs1 : x0<br> - rd : x13<br> - rs1 != rd<br> - rs1_val == 0<br> - rs1_val != imm_val<br>                 |[0x80000104]:andi a3, zero, 4088<br> |
|   2|[0x80002214]<br>0x00000001|- rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2049<br>      |[0x80000114]:andi tp, tp, 1<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x11<br> - rd : x29<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 536870912<br>                                   |[0x80000120]:andi t4, a1, 3<br>      |
|   4|[0x8000221c]<br>0x00000009|- rs1 : x22<br> - rd : x14<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br>                                        |[0x8000012c]:andi a4, s6, 3583<br>   |
|   5|[0x80002220]<br>0x80000000|- rs1 : x31<br> - rd : x22<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x80000138]:andi s6, t6, 4095<br>   |
|   6|[0x80002224]<br>0x00000000|- rs1 : x3<br> - rd : x20<br> - imm_val == 256<br>                                                                            |[0x80000144]:andi s4, gp, 256<br>    |
|   7|[0x80002228]<br>0x7FFFFFEF|- rs1 : x27<br> - rd : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -17<br> - rs1_val == 2147483647<br>               |[0x80000154]:andi fp, s11, 4079<br>  |
|   8|[0x8000222c]<br>0x00000001|- rs1 : x28<br> - rd : x27<br> - rs1_val == 1<br>                                                                             |[0x80000160]:andi s11, t3, 9<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x25<br> - rd : x23<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                           |[0x8000016c]:andi s7, s9, 2048<br>   |
|  10|[0x80002234]<br>0x00000000|- rs1 : x13<br> - rd : x0<br> - imm_val == 0<br> - rs1_val == 8<br>                                                           |[0x80000178]:andi zero, a3, 0<br>    |
|  11|[0x80002238]<br>0x000007FF|- rs1 : x29<br> - rd : x6<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -32769<br>                    |[0x80000188]:andi t1, t4, 2047<br>   |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x23<br> - rd : x1<br> - rs1_val == 2<br>                                                                              |[0x80000194]:andi ra, s7, 4092<br>   |
|  13|[0x80002240]<br>0x00000000|- rs1 : x15<br> - rd : x12<br> - imm_val == 64<br> - rs1_val == 4<br>                                                         |[0x800001a0]:andi a2, a5, 64<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x30<br> - rd : x28<br> - rs1_val == 16<br>                                                                            |[0x800001ac]:andi t3, t5, 3072<br>   |
|  15|[0x80002248]<br>0x00000020|- rs1 : x1<br> - rd : x9<br> - rs1_val == 32<br>                                                                              |[0x800001b8]:andi s1, ra, 3583<br>   |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x6<br> - rd : x10<br> - imm_val == 128<br> - rs1_val == 64<br>                                                        |[0x800001c4]:andi a0, t1, 128<br>    |
|  17|[0x80002250]<br>0x00000000|- rs1 : x9<br> - rd : x31<br> - rs1_val == 128<br>                                                                            |[0x800001d0]:andi t6, s1, 256<br>    |
|  18|[0x80002254]<br>0x00000100|- rs1 : x8<br> - rd : x11<br> - rs1_val == 256<br>                                                                            |[0x800001dc]:andi a1, fp, 4088<br>   |
|  19|[0x80002258]<br>0x00000000|- rs1 : x16<br> - rd : x30<br> - imm_val == 32<br> - rs1_val == 512<br>                                                       |[0x800001e8]:andi t5, a6, 32<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x18<br> - rd : x15<br> - imm_val == 16<br> - rs1_val == 1024<br>                                                      |[0x800001f4]:andi a5, s2, 16<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x12<br> - rd : x2<br> - rs1_val == 2048<br>                                                                           |[0x80000204]:andi sp, a2, 3<br>      |
|  22|[0x80002264]<br>0x00000000|- rs1 : x2<br> - rd : x5<br> - rs1_val == 4096<br>                                                                            |[0x80000210]:andi t0, sp, 2047<br>   |
|  23|[0x80002268]<br>0x00002000|- rs1 : x17<br> - rd : x19<br> - rs1_val == 8192<br>                                                                          |[0x8000021c]:andi s3, a7, 4090<br>   |
|  24|[0x8000226c]<br>0x00004000|- rs1 : x24<br> - rd : x17<br> - rs1_val == 16384<br>                                                                         |[0x80000228]:andi a7, s8, 4090<br>   |
|  25|[0x80002270]<br>0x00008000|- rs1 : x26<br> - rd : x3<br> - rs1_val == 32768<br>                                                                          |[0x8000023c]:andi gp, s10, 4089<br>  |
|  26|[0x80002274]<br>0x00010000|- rs1 : x5<br> - rd : x16<br> - imm_val == -2<br> - rs1_val == 65536<br>                                                      |[0x80000248]:andi a6, t0, 4094<br>   |
|  27|[0x80002278]<br>0x00000000|- rs1 : x21<br> - rd : x26<br> - imm_val == 2<br> - rs1_val == 131072<br>                                                     |[0x80000254]:andi s10, s5, 2<br>     |
|  28|[0x8000227c]<br>0x00040000|- rs1 : x10<br> - rd : x24<br> - rs1_val == 262144<br>                                                                        |[0x80000260]:andi s8, a0, 4088<br>   |
|  29|[0x80002280]<br>0x00000000|- rs1 : x14<br> - rd : x18<br> - rs1_val == 524288<br>                                                                        |[0x8000026c]:andi s2, a4, 0<br>      |
|  30|[0x80002284]<br>0x00100000|- rs1 : x20<br> - rd : x21<br> - rs1_val == 1048576<br>                                                                       |[0x80000278]:andi s5, s4, 4090<br>   |
|  31|[0x80002288]<br>0x00000000|- rs1 : x19<br> - rd : x7<br> - rs1_val == 2097152<br>                                                                        |[0x80000284]:andi t2, s3, 128<br>    |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x7<br> - rd : x25<br> - rs1_val == 4194304<br>                                                                        |[0x80000290]:andi s9, t2, 0<br>      |
|  33|[0x80002290]<br>0x00000000|- rs1_val == 8388608<br>                                                                                                      |[0x8000029c]:andi a1, a0, 32<br>     |
|  34|[0x80002294]<br>0x01000000|- imm_val == -3<br> - rs1_val == 16777216<br>                                                                                 |[0x800002a8]:andi a1, a0, 4093<br>   |
|  35|[0x80002298]<br>0x02000000|- rs1_val == 33554432<br>                                                                                                     |[0x800002b4]:andi a1, a0, 3072<br>   |
|  36|[0x8000229c]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                     |[0x800002c0]:andi a1, a0, 4079<br>   |
|  37|[0x800022a0]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                    |[0x800002cc]:andi a1, a0, 4095<br>   |
|  38|[0x800022a4]<br>0x10000000|- rs1_val == 268435456<br>                                                                                                    |[0x800002d8]:andi a1, a0, 4089<br>   |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                   |[0x800002e4]:andi a1, a0, 128<br>    |
|  40|[0x800022ac]<br>0xFFFFFEFE|- imm_val == -257<br> - rs1_val == -2<br>                                                                                     |[0x800002f0]:andi a1, a0, 3839<br>   |
|  41|[0x800022b0]<br>0x00000008|- imm_val == 8<br> - rs1_val == -3<br>                                                                                        |[0x800002fc]:andi a1, a0, 8<br>      |
|  42|[0x800022b4]<br>0xFFFFFFDB|- imm_val == -33<br> - rs1_val == -5<br>                                                                                      |[0x80000308]:andi a1, a0, 4063<br>   |
|  43|[0x800022b8]<br>0xFFFFFFF6|- rs1_val == -9<br>                                                                                                           |[0x80000314]:andi a1, a0, 4086<br>   |
|  44|[0x800022bc]<br>0x00000008|- rs1_val == -17<br>                                                                                                          |[0x80000320]:andi a1, a0, 8<br>      |
|  45|[0x800022c0]<br>0x00000000|- rs1_val == -33<br>                                                                                                          |[0x8000032c]:andi a1, a0, 32<br>     |
|  46|[0x800022c4]<br>0x00000080|- rs1_val == -65<br>                                                                                                          |[0x80000338]:andi a1, a0, 128<br>    |
|  47|[0x800022c8]<br>0xFFFFFF7D|- rs1_val == -129<br>                                                                                                         |[0x80000344]:andi a1, a0, 4093<br>   |
|  48|[0x800022cc]<br>0x00000020|- rs1_val == -257<br>                                                                                                         |[0x80000350]:andi a1, a0, 32<br>     |
|  49|[0x800022d0]<br>0x00000004|- imm_val == 4<br> - rs1_val == -513<br>                                                                                      |[0x8000035c]:andi a1, a0, 4<br>      |
|  50|[0x800022d4]<br>0xFFF7F800|- rs1_val == -524289<br>                                                                                                      |[0x8000036c]:andi a1, a0, 2048<br>   |
|  51|[0x800022d8]<br>0xFFEFFFBF|- imm_val == -65<br> - rs1_val == -1048577<br>                                                                                |[0x8000037c]:andi a1, a0, 4031<br>   |
|  52|[0x800022dc]<br>0xFFDFFFF7|- imm_val == -9<br> - rs1_val == -2097153<br>                                                                                 |[0x8000038c]:andi a1, a0, 4087<br>   |
|  53|[0x800022e0]<br>0x00000002|- rs1_val == -4194305<br>                                                                                                     |[0x8000039c]:andi a1, a0, 2<br>      |
|  54|[0x800022e4]<br>0x00000080|- rs1_val == -8388609<br>                                                                                                     |[0x800003ac]:andi a1, a0, 128<br>    |
|  55|[0x800022e8]<br>0x00000002|- rs1_val == -16777217<br>                                                                                                    |[0x800003bc]:andi a1, a0, 2<br>      |
|  56|[0x800022ec]<br>0xFDFFFAAA|- imm_val == -1366<br> - rs1_val == -33554433<br>                                                                             |[0x800003cc]:andi a1, a0, 2730<br>   |
|  57|[0x800022f0]<br>0x00000006|- rs1_val == -67108865<br>                                                                                                    |[0x800003dc]:andi a1, a0, 6<br>      |
|  58|[0x800022f4]<br>0xF7FFFFFF|- rs1_val == -134217729<br>                                                                                                   |[0x800003ec]:andi a1, a0, 4095<br>   |
|  59|[0x800022f8]<br>0x00000040|- rs1_val == -268435457<br>                                                                                                   |[0x800003fc]:andi a1, a0, 64<br>     |
|  60|[0x800022fc]<br>0x00000008|- rs1_val == -536870913<br>                                                                                                   |[0x8000040c]:andi a1, a0, 8<br>      |
|  61|[0x80002300]<br>0x00000000|- rs1_val == -1073741825<br>                                                                                                  |[0x8000041c]:andi a1, a0, 0<br>      |
|  62|[0x80002304]<br>0x10000000|- imm_val == -129<br>                                                                                                         |[0x80000428]:andi a1, a0, 3967<br>   |
|  63|[0x80002308]<br>0x00001000|- imm_val == -1025<br>                                                                                                        |[0x80000434]:andi a1, a0, 3071<br>   |
|  64|[0x8000230c]<br>0x00000000|- imm_val == 1365<br>                                                                                                         |[0x80000440]:andi a1, a0, 1365<br>   |
|  65|[0x80002310]<br>0x55555550|- rs1_val == 1431655765<br>                                                                                                   |[0x80000450]:andi a1, a0, 4088<br>   |
|  66|[0x80002314]<br>0x00000000|- rs1_val == -1431655766<br>                                                                                                  |[0x80000460]:andi a1, a0, 1<br>      |
|  67|[0x80002318]<br>0x00000000|- imm_val == 512<br>                                                                                                          |[0x80000470]:andi a1, a0, 512<br>    |
|  68|[0x8000231c]<br>0xFFFFFAFF|- rs1_val == -1025<br>                                                                                                        |[0x8000047c]:andi a1, a0, 3839<br>   |
|  69|[0x80002320]<br>0x00000000|- imm_val == 1024<br>                                                                                                         |[0x80000488]:andi a1, a0, 1024<br>   |
|  70|[0x80002324]<br>0xFFFFEFFE|- rs1_val == -4097<br>                                                                                                        |[0x80000498]:andi a1, a0, 4094<br>   |
|  71|[0x80002328]<br>0x00000008|- rs1_val == -8193<br>                                                                                                        |[0x800004a8]:andi a1, a0, 8<br>      |
|  72|[0x8000232c]<br>0xFFFFBAAA|- rs1_val == -16385<br>                                                                                                       |[0x800004b8]:andi a1, a0, 2730<br>   |
|  73|[0x80002330]<br>0xC0000000|- imm_val == -5<br>                                                                                                           |[0x800004c4]:andi a1, a0, 4091<br>   |
|  74|[0x80002334]<br>0x00000040|- rs1_val == -65537<br>                                                                                                       |[0x800004d4]:andi a1, a0, 64<br>     |
|  75|[0x80002338]<br>0x00000020|- rs1_val == -131073<br>                                                                                                      |[0x800004e4]:andi a1, a0, 32<br>     |
|  76|[0x8000233c]<br>0x00000020|- rs1_val == -262145<br>                                                                                                      |[0x800004f4]:andi a1, a0, 32<br>     |
|  77|[0x80002340]<br>0xFFFFFFF8|- rs1_val == imm_val<br>                                                                                                      |[0x80000500]:andi a1, a0, 4088<br>   |
