
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80002210', '0x800023bc')]      |
| COV_LABELS                | ('xori',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Unique Coverpoints  | 171      |
| Total Signature Updates   | 73      |
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
|   1|[0x80002210]<br>0x00000000|- opcode : xori<br> - rs1 : x29<br> - rd : x2<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br>  |[0x80000104]:xori sp, t4, 4089<br>   |
|   2|[0x80002214]<br>0xFFFFFFF4|- rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -9<br> |[0x80000110]:xori s10, s10, 4087<br> |
|   3|[0x80002218]<br>0x00010006|- rs1 : x24<br> - rd : x3<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 65536<br>                                        |[0x8000011c]:xori gp, s8, 6<br>      |
|   4|[0x8000221c]<br>0xFFEFFC00|- rs1 : x9<br> - rd : x22<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -1048577<br>                                     |[0x8000012c]:xori s6, s1, 1023<br>   |
|   5|[0x80002220]<br>0x7FFFFFDF|- rs1 : x10<br> - rd : x1<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -33<br> - rs1_val == -2147483648<br>               |[0x80000138]:xori ra, a0, 4063<br>   |
|   6|[0x80002224]<br>0x00000000|- rs1 : x15<br> - rd : x20<br> - imm_val == 0<br> - rs1_val == 0<br>                                                          |[0x80000144]:xori s4, a5, 0<br>      |
|   7|[0x80002228]<br>0x7FFFFFF8|- rs1 : x28<br> - rd : x11<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                   |[0x80000154]:xori a1, t3, 7<br>      |
|   8|[0x8000222c]<br>0xFFFFFDFE|- rs1 : x12<br> - rd : x25<br> - rs1_val == 1<br> - imm_val == -513<br>                                                       |[0x80000160]:xori s9, a2, 3583<br>   |
|   9|[0x80002230]<br>0x00000000|- rs1 : x30<br> - rd : x0<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 524288<br>                    |[0x8000016c]:xori zero, t5, 2048<br> |
|  10|[0x80002234]<br>0xFBFFF800|- rs1 : x8<br> - rd : x24<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -67108865<br>                 |[0x8000017c]:xori s8, fp, 2047<br>   |
|  11|[0x80002238]<br>0x40000001|- rs1 : x16<br> - rd : x18<br> - imm_val == 1<br> - rs1_val == 1073741824<br>                                                 |[0x80000188]:xori s2, a6, 1<br>      |
|  12|[0x8000223c]<br>0x00000557|- rs1 : x13<br> - rd : x23<br> - imm_val == 1365<br> - rs1_val == 2<br>                                                       |[0x80000194]:xori s7, a3, 1365<br>   |
|  13|[0x80002240]<br>0x00000204|- rs1 : x19<br> - rd : x14<br> - imm_val == 512<br> - rs1_val == 4<br>                                                        |[0x800001a0]:xori a4, s3, 512<br>    |
|  14|[0x80002244]<br>0x0000000F|- rs1 : x21<br> - rd : x8<br> - rs1_val == 8<br>                                                                              |[0x800001ac]:xori fp, s5, 7<br>      |
|  15|[0x80002248]<br>0x00000100|- rs1 : x0<br> - rd : x13<br> - imm_val == 256<br>                                                                            |[0x800001b8]:xori a3, zero, 256<br>  |
|  16|[0x8000224c]<br>0x00000028|- rs1 : x6<br> - rd : x21<br> - imm_val == 8<br> - rs1_val == 32<br>                                                          |[0x800001c4]:xori s5, t1, 8<br>      |
|  17|[0x80002250]<br>0xFFFFFBBF|- rs1 : x3<br> - rd : x4<br> - imm_val == -1025<br> - rs1_val == 64<br>                                                       |[0x800001d0]:xori tp, gp, 3071<br>   |
|  18|[0x80002254]<br>0x00000480|- rs1 : x1<br> - rd : x17<br> - imm_val == 1024<br> - rs1_val == 128<br>                                                      |[0x800001dc]:xori a7, ra, 1024<br>   |
|  19|[0x80002258]<br>0xFFFFFEFE|- rs1 : x20<br> - rd : x29<br> - imm_val == -2<br> - rs1_val == 256<br>                                                       |[0x800001e8]:xori t4, s4, 4094<br>   |
|  20|[0x8000225c]<br>0xFFFFFDFF|- rs1 : x23<br> - rd : x7<br> - rs1_val == 512<br>                                                                            |[0x800001f4]:xori t2, s7, 4095<br>   |
|  21|[0x80002260]<br>0xFFFFFC00|- rs1 : x4<br> - rd : x10<br> - rs1_val == 1024<br>                                                                           |[0x80000208]:xori a0, tp, 2048<br>   |
|  22|[0x80002264]<br>0xFFFFF7F8|- rs1 : x7<br> - rd : x16<br> - rs1_val == 2048<br>                                                                           |[0x80000218]:xori a6, t2, 4088<br>   |
|  23|[0x80002268]<br>0xFFFFEFFD|- rs1 : x17<br> - rd : x5<br> - imm_val == -3<br> - rs1_val == 4096<br>                                                       |[0x80000224]:xori t0, a7, 4093<br>   |
|  24|[0x8000226c]<br>0xFFFFDFFC|- rs1 : x14<br> - rd : x19<br> - rs1_val == 8192<br>                                                                          |[0x80000230]:xori s3, a4, 4092<br>   |
|  25|[0x80002270]<br>0x00004005|- rs1 : x5<br> - rd : x27<br> - rs1_val == 16384<br>                                                                          |[0x8000023c]:xori s11, t0, 5<br>     |
|  26|[0x80002274]<br>0x00008000|- rs1 : x11<br> - rd : x28<br> - rs1_val == 32768<br>                                                                         |[0x80000248]:xori t3, a1, 0<br>      |
|  27|[0x80002278]<br>0xFFFDFFFB|- rs1 : x2<br> - rd : x30<br> - imm_val == -5<br> - rs1_val == 131072<br>                                                     |[0x80000254]:xori t5, sp, 4091<br>   |
|  28|[0x8000227c]<br>0xFFFBFFFC|- rs1 : x22<br> - rd : x9<br> - rs1_val == 262144<br>                                                                         |[0x80000260]:xori s1, s6, 4092<br>   |
|  29|[0x80002280]<br>0xFFEFFFF6|- rs1 : x31<br> - rd : x12<br> - rs1_val == 1048576<br>                                                                       |[0x8000026c]:xori a2, t6, 4086<br>   |
|  30|[0x80002284]<br>0xFFDFFFFD|- rs1 : x27<br> - rd : x6<br> - rs1_val == 2097152<br>                                                                        |[0x80000278]:xori t1, s11, 4093<br>  |
|  31|[0x80002288]<br>0xFFBFFFF7|- rs1 : x18<br> - rd : x15<br> - rs1_val == 4194304<br>                                                                       |[0x80000284]:xori a5, s2, 4087<br>   |
|  32|[0x8000228c]<br>0x00800020|- rs1 : x25<br> - rd : x31<br> - imm_val == 32<br> - rs1_val == 8388608<br>                                                   |[0x80000290]:xori t6, s9, 32<br>     |
|  33|[0x80002290]<br>0xFEFFFFDF|- rs1_val == 16777216<br>                                                                                                     |[0x8000029c]:xori a1, a0, 4063<br>   |
|  34|[0x80002294]<br>0x02000006|- rs1_val == 33554432<br>                                                                                                     |[0x800002a8]:xori a1, a0, 6<br>      |
|  35|[0x80002298]<br>0xFBFFFFEF|- imm_val == -17<br> - rs1_val == 67108864<br>                                                                                |[0x800002b4]:xori a1, a0, 4079<br>   |
|  36|[0x8000229c]<br>0xF7FFFFF7|- rs1_val == 134217728<br>                                                                                                    |[0x800002c0]:xori a1, a0, 4087<br>   |
|  37|[0x800022a0]<br>0x10000008|- rs1_val == 268435456<br>                                                                                                    |[0x800002cc]:xori a1, a0, 8<br>      |
|  38|[0x800022a4]<br>0xDFFFFFEF|- rs1_val == 536870912<br>                                                                                                    |[0x800002d8]:xori a1, a0, 4079<br>   |
|  39|[0x800022a8]<br>0xFFFFFF7E|- imm_val == 128<br> - rs1_val == -2<br>                                                                                      |[0x800002e4]:xori a1, a0, 128<br>    |
|  40|[0x800022ac]<br>0x00000002|- rs1_val == -3<br>                                                                                                           |[0x800002f0]:xori a1, a0, 4095<br>   |
|  41|[0x800022b0]<br>0xFFFFFFFC|- rs1_val == -5<br>                                                                                                           |[0x800002fc]:xori a1, a0, 7<br>      |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                           |[0x80000308]:xori a1, a0, 8<br>      |
|  43|[0x800022b8]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                          |[0x80000314]:xori a1, a0, 0<br>      |
|  44|[0x800022bc]<br>0xFFFFFFD6|- rs1_val == -33<br>                                                                                                          |[0x80000320]:xori a1, a0, 9<br>      |
|  45|[0x800022c0]<br>0x00000140|- imm_val == -257<br> - rs1_val == -65<br>                                                                                    |[0x8000032c]:xori a1, a0, 3839<br>   |
|  46|[0x800022c4]<br>0x00000081|- rs1_val == -129<br>                                                                                                         |[0x80000338]:xori a1, a0, 4094<br>   |
|  47|[0x800022c8]<br>0xFFF7FFFF|- rs1_val == -524289<br>                                                                                                      |[0x80000348]:xori a1, a0, 0<br>      |
|  48|[0x800022cc]<br>0x00200005|- rs1_val == -2097153<br>                                                                                                     |[0x80000358]:xori a1, a0, 4090<br>   |
|  49|[0x800022d0]<br>0x00400000|- rs1_val == -4194305<br>                                                                                                     |[0x80000368]:xori a1, a0, 4095<br>   |
|  50|[0x800022d4]<br>0x00800555|- imm_val == -1366<br> - rs1_val == -8388609<br>                                                                              |[0x80000378]:xori a1, a0, 2730<br>   |
|  51|[0x800022d8]<br>0x01000000|- rs1_val == -16777217<br>                                                                                                    |[0x80000388]:xori a1, a0, 4095<br>   |
|  52|[0x800022dc]<br>0x02000009|- rs1_val == -33554433<br>                                                                                                    |[0x80000398]:xori a1, a0, 4086<br>   |
|  53|[0x800022e0]<br>0xF7FFFFEF|- imm_val == 16<br> - rs1_val == -134217729<br>                                                                               |[0x800003a8]:xori a1, a0, 16<br>     |
|  54|[0x800022e4]<br>0x10000000|- rs1_val == -268435457<br>                                                                                                   |[0x800003b8]:xori a1, a0, 4095<br>   |
|  55|[0x800022e8]<br>0x200003FF|- rs1_val == -536870913<br>                                                                                                   |[0x800003c8]:xori a1, a0, 3072<br>   |
|  56|[0x800022ec]<br>0x40000080|- imm_val == -129<br> - rs1_val == -1073741825<br>                                                                            |[0x800003d8]:xori a1, a0, 3967<br>   |
|  57|[0x800022f0]<br>0xAAAAAA2A|- rs1_val == 1431655765<br>                                                                                                   |[0x800003e8]:xori a1, a0, 3967<br>   |
|  58|[0x800022f4]<br>0xAAAAAAAF|- rs1_val == -1431655766<br>                                                                                                  |[0x800003f8]:xori a1, a0, 5<br>      |
|  59|[0x800022f8]<br>0x3FFFFFBF|- imm_val == -65<br>                                                                                                          |[0x80000404]:xori a1, a0, 4031<br>   |
|  60|[0x800022fc]<br>0xFF7FFFFD|- imm_val == 2<br>                                                                                                            |[0x80000414]:xori a1, a0, 2<br>      |
|  61|[0x80002300]<br>0x00080004|- imm_val == 4<br>                                                                                                            |[0x80000420]:xori a1, a0, 4<br>      |
|  62|[0x80002304]<br>0xFFFFDFBF|- imm_val == 64<br> - rs1_val == -8193<br>                                                                                    |[0x80000430]:xori a1, a0, 64<br>     |
|  63|[0x80002308]<br>0xFFFFFD00|- rs1_val == -257<br>                                                                                                         |[0x8000043c]:xori a1, a0, 1023<br>   |
|  64|[0x8000230c]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                         |[0x80000448]:xori a1, a0, 512<br>    |
|  65|[0x80002310]<br>0x00000408|- rs1_val == -1025<br>                                                                                                        |[0x80000454]:xori a1, a0, 4087<br>   |
|  66|[0x80002314]<br>0x00000BFF|- rs1_val == -2049<br>                                                                                                        |[0x80000464]:xori a1, a0, 3072<br>   |
|  67|[0x80002318]<br>0xFFFFEFF7|- rs1_val == -4097<br>                                                                                                        |[0x80000474]:xori a1, a0, 8<br>      |
|  68|[0x8000231c]<br>0xFFFFBBFF|- rs1_val == -16385<br>                                                                                                       |[0x80000484]:xori a1, a0, 1024<br>   |
|  69|[0x80002320]<br>0xFFFF7C00|- rs1_val == -32769<br>                                                                                                       |[0x80000494]:xori a1, a0, 1023<br>   |
|  70|[0x80002324]<br>0x00010009|- rs1_val == -65537<br>                                                                                                       |[0x800004a4]:xori a1, a0, 4086<br>   |
|  71|[0x80002328]<br>0xFFFDFEFF|- rs1_val == -131073<br>                                                                                                      |[0x800004b4]:xori a1, a0, 256<br>    |
|  72|[0x8000232c]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                      |[0x800004c4]:xori a1, a0, 0<br>      |
|  73|[0x80002338]<br>0x00000110|- rs1_val == 16<br>                                                                                                           |[0x800004e8]:xori a1, a0, 256<br>    |
