
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800003e0')]      |
| SIG_REGION                | [('0x80002210', '0x800023ac')]      |
| COV_LABELS                | ('caddi',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Unique Coverpoints  | 124      |
| Total Signature Updates   | 71      |
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

|s.no|        signature         |                                                                         coverpoints                                                                         |                            code                             |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
|   1|[0x80002210]<br>0x80000005|- opcode : c.addi<br> - rd : x31<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000100]:c.addi t6, 5<br>                                |
|   2|[0x80002214]<br>0xFFFFFFF7|- rd : x30<br> - rs1_val == 0<br> - imm_val == -9<br>                                                                                                        |[0x80000108]:c.addi t5, 55<br>                               |
|   3|[0x80002218]<br>0x80000005|- rd : x22<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>              |[0x80000112]:c.addi s6, 63<br> [0x80000114]:c.addi s6, 6<br> |
|   4|[0x8000221c]<br>0xFFFFFFF1|- rd : x21<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1<br>                                                                                          |[0x8000011c]:c.addi s5, 48<br>                               |
|   5|[0x80002220]<br>0x00001FE0|- rd : x10<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 8192<br>                                                                       |[0x80000124]:c.addi a0, 32<br>                               |
|   6|[0x80002224]<br>0x00000006|- rd : x28<br> - imm_val == 0<br>                                                                                                                            |[0x8000012c]:c.addi.hint.t3<br>                              |
|   7|[0x80002228]<br>0x0000009F|- rd : x15<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 128<br>                                                                        |[0x80000136]:c.addi a5, 31<br>                               |
|   8|[0x8000222c]<br>0x01000001|- rd : x12<br> - imm_val == 1<br> - rs1_val == 16777216<br>                                                                                                  |[0x80000140]:c.addi a2, 1<br>                                |
|   9|[0x80002230]<br>0x00000004|- rd : x18<br> - rs1_val == imm_val<br> - imm_val == 2<br> - rs1_val == 2<br>                                                                                |[0x80000148]:c.addi s2, 2<br>                                |
|  10|[0x80002234]<br>0xFFFFFFEE|- rd : x24<br>                                                                                                                                               |[0x80000152]:c.addi s8, 56<br>                               |
|  11|[0x80002238]<br>0x0000000C|- rd : x4<br> - imm_val == 8<br> - rs1_val == 4<br>                                                                                                          |[0x8000015a]:c.addi tp, 8<br>                                |
|  12|[0x8000223c]<br>0xFFFFFFFE|- rd : x2<br> - rs1_val == 8<br>                                                                                                                             |[0x80000162]:c.addi sp, 54<br>                               |
|  13|[0x80002240]<br>0x00000007|- rd : x25<br> - rs1_val == 16<br>                                                                                                                           |[0x8000016a]:c.addi s9, 55<br>                               |
|  14|[0x80002244]<br>0x00000017|- rd : x6<br> - rs1_val == 32<br>                                                                                                                            |[0x80000174]:c.addi t1, 55<br>                               |
|  15|[0x80002248]<br>0x00000040|- rd : x14<br> - rs1_val == 64<br>                                                                                                                           |[0x8000017e]:c.addi.hint.a4<br>                              |
|  16|[0x8000224c]<br>0x000000F6|- rd : x19<br> - rs1_val == 256<br>                                                                                                                          |[0x80000188]:c.addi s3, 54<br>                               |
|  17|[0x80002250]<br>0x00000200|- rd : x3<br> - rs1_val == 512<br>                                                                                                                           |[0x80000192]:c.addi.hint.gp<br>                              |
|  18|[0x80002254]<br>0x000003FD|- rd : x9<br> - imm_val == -3<br> - rs1_val == 1024<br>                                                                                                      |[0x8000019c]:c.addi s1, 61<br>                               |
|  19|[0x80002258]<br>0x00000806|- rd : x11<br> - rs1_val == 2048<br>                                                                                                                         |[0x800001a8]:c.addi a1, 6<br>                                |
|  20|[0x8000225c]<br>0x00000FFF|- rd : x26<br> - rs1_val == 4096<br>                                                                                                                         |[0x800001b0]:c.addi s10, 63<br>                              |
|  21|[0x80002260]<br>0x00003FF7|- rd : x27<br> - rs1_val == 16384<br>                                                                                                                        |[0x800001b8]:c.addi s11, 55<br>                              |
|  22|[0x80002264]<br>0x00008005|- rd : x29<br> - rs1_val == 32768<br>                                                                                                                        |[0x800001c0]:c.addi t4, 5<br>                                |
|  23|[0x80002268]<br>0x0001001F|- rd : x16<br> - rs1_val == 65536<br>                                                                                                                        |[0x800001c8]:c.addi a6, 31<br>                               |
|  24|[0x8000226c]<br>0x0001FFF9|- rd : x13<br> - rs1_val == 131072<br>                                                                                                                       |[0x800001d2]:c.addi a3, 57<br>                               |
|  25|[0x80002270]<br>0x00040002|- rd : x1<br> - rs1_val == 262144<br>                                                                                                                        |[0x800001dc]:c.addi ra, 2<br>                                |
|  26|[0x80002274]<br>0x00080008|- rd : x17<br> - rs1_val == 524288<br>                                                                                                                       |[0x800001e6]:c.addi a7, 8<br>                                |
|  27|[0x80002278]<br>0x000FFFF7|- rd : x8<br> - rs1_val == 1048576<br>                                                                                                                       |[0x800001f0]:c.addi fp, 55<br>                               |
|  28|[0x8000227c]<br>0x0020000F|- rd : x5<br> - rs1_val == 2097152<br>                                                                                                                       |[0x800001fa]:c.addi t0, 15<br>                               |
|  29|[0x80002280]<br>0x00400006|- rd : x20<br> - rs1_val == 4194304<br>                                                                                                                      |[0x8000020c]:c.addi s4, 6<br>                                |
|  30|[0x80002284]<br>0x00800006|- rd : x23<br> - rs1_val == 8388608<br>                                                                                                                      |[0x80000216]:c.addi s7, 6<br>                                |
|  31|[0x80002288]<br>0x01FFFFFD|- rd : x7<br> - rs1_val == 33554432<br>                                                                                                                      |[0x80000220]:c.addi t2, 61<br>                               |
|  32|[0x8000228c]<br>0x0400000F|- rs1_val == 67108864<br>                                                                                                                                    |[0x8000022a]:c.addi a0, 15<br>                               |
|  33|[0x80002290]<br>0x08000001|- rs1_val == 134217728<br>                                                                                                                                   |[0x80000234]:c.addi a0, 1<br>                                |
|  34|[0x80002294]<br>0x0FFFFFF7|- rs1_val == 268435456<br>                                                                                                                                   |[0x8000023e]:c.addi a0, 55<br>                               |
|  35|[0x80002298]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                   |[0x80000248]:c.addi.hint.a0<br>                              |
|  36|[0x8000229c]<br>0x4000000F|- rs1_val == 1073741824<br>                                                                                                                                  |[0x80000252]:c.addi a0, 15<br>                               |
|  37|[0x800022a0]<br>0x00000006|- rs1_val == -2<br>                                                                                                                                          |[0x8000025c]:c.addi a0, 8<br>                                |
|  38|[0x800022a4]<br>0xFFFFFFFC|- rs1_val == -3<br>                                                                                                                                          |[0x80000266]:c.addi a0, 63<br>                               |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                          |[0x80000270]:c.addi a0, 5<br>                                |
|  40|[0x800022ac]<br>0xFFFFFFEF|- rs1_val == -9<br>                                                                                                                                          |[0x8000027a]:c.addi a0, 56<br>                               |
|  41|[0x800022b0]<br>0xFFFFFFDF|- rs1_val == -17<br>                                                                                                                                         |[0x80000284]:c.addi a0, 48<br>                               |
|  42|[0x800022b4]<br>0xFFFFFFCE|- imm_val == -17<br> - rs1_val == -33<br>                                                                                                                    |[0x8000028e]:c.addi a0, 47<br>                               |
|  43|[0x800022b8]<br>0xFFFFFFB8|- rs1_val == -65<br>                                                                                                                                         |[0x80000298]:c.addi a0, 57<br>                               |
|  44|[0x800022bc]<br>0xFFFFFF7D|- imm_val == -2<br> - rs1_val == -129<br>                                                                                                                    |[0x800002a2]:c.addi a0, 62<br>                               |
|  45|[0x800022c0]<br>0xFFF7FFFA|- imm_val == -5<br> - rs1_val == -524289<br>                                                                                                                 |[0x800002ae]:c.addi a0, 59<br>                               |
|  46|[0x800022c4]<br>0xFFF00004|- rs1_val == -1048577<br>                                                                                                                                    |[0x800002ba]:c.addi a0, 5<br>                                |
|  47|[0x800022c8]<br>0xFFDFFFE9|- imm_val == -22<br> - rs1_val == -2097153<br>                                                                                                               |[0x800002c6]:c.addi a0, 42<br>                               |
|  48|[0x800022cc]<br>0xFFC00006|- rs1_val == -4194305<br>                                                                                                                                    |[0x800002d2]:c.addi a0, 7<br>                                |
|  49|[0x800022d0]<br>0xFF800001|- rs1_val == -8388609<br>                                                                                                                                    |[0x800002de]:c.addi a0, 2<br>                                |
|  50|[0x800022d4]<br>0xFEFFFFFE|- rs1_val == -16777217<br>                                                                                                                                   |[0x800002ea]:c.addi a0, 63<br>                               |
|  51|[0x800022d8]<br>0xFE000006|- rs1_val == -33554433<br>                                                                                                                                   |[0x800002f6]:c.addi a0, 7<br>                                |
|  52|[0x800022dc]<br>0xFC00000F|- imm_val == 16<br> - rs1_val == -67108865<br>                                                                                                               |[0x80000302]:c.addi a0, 16<br>                               |
|  53|[0x800022e0]<br>0xF7FFFFF6|- rs1_val == -134217729<br>                                                                                                                                  |[0x8000030e]:c.addi a0, 55<br>                               |
|  54|[0x800022e4]<br>0xEFFFFFF8|- rs1_val == -268435457<br>                                                                                                                                  |[0x8000031a]:c.addi a0, 57<br>                               |
|  55|[0x800022e8]<br>0xDFFFFFEF|- rs1_val == -536870913<br>                                                                                                                                  |[0x80000326]:c.addi a0, 48<br>                               |
|  56|[0x800022ec]<br>0xC0000005|- rs1_val == -1073741825<br>                                                                                                                                 |[0x80000332]:c.addi a0, 6<br>                                |
|  57|[0x800022f0]<br>0xFFFFDFFD|- rs1_val == -8193<br>                                                                                                                                       |[0x8000033c]:c.addi a0, 62<br>                               |
|  58|[0x800022f4]<br>0x5555554D|- rs1_val == 1431655765<br>                                                                                                                                  |[0x8000034a]:c.addi a0, 56<br>                               |
|  59|[0x800022f8]<br>0xAAAAAAA6|- rs1_val == -1431655766<br>                                                                                                                                 |[0x80000358]:c.addi a0, 60<br>                               |
|  60|[0x800022fc]<br>0xE0000003|- imm_val == 4<br>                                                                                                                                           |[0x80000364]:c.addi a0, 4<br>                                |
|  61|[0x80002300]<br>0xFFFFFF0E|- rs1_val == -257<br>                                                                                                                                        |[0x8000036e]:c.addi a0, 15<br>                               |
|  62|[0x80002304]<br>0xFFFFFE0F|- rs1_val == -513<br>                                                                                                                                        |[0x80000378]:c.addi a0, 16<br>                               |
|  63|[0x80002308]<br>0xFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                       |[0x80000382]:c.addi.hint.a0<br>                              |
|  64|[0x8000230c]<br>0xFFFFF808|- rs1_val == -2049<br>                                                                                                                                       |[0x8000038e]:c.addi a0, 9<br>                                |
|  65|[0x80002310]<br>0xFFFFEFF8|- rs1_val == -4097<br>                                                                                                                                       |[0x80000398]:c.addi a0, 57<br>                               |
|  66|[0x80002314]<br>0x0000001A|- imm_val == 21<br>                                                                                                                                          |[0x800003a0]:c.addi a0, 21<br>                               |
|  67|[0x80002318]<br>0xFFFFC002|- rs1_val == -16385<br>                                                                                                                                      |[0x800003aa]:c.addi a0, 3<br>                                |
|  68|[0x8000231c]<br>0xFFFF7FFC|- rs1_val == -32769<br>                                                                                                                                      |[0x800003b4]:c.addi a0, 61<br>                               |
|  69|[0x80002320]<br>0xFFFEFFDF|- rs1_val == -65537<br>                                                                                                                                      |[0x800003be]:c.addi a0, 32<br>                               |
|  70|[0x80002324]<br>0xFFFE0003|- rs1_val == -131073<br>                                                                                                                                     |[0x800003c8]:c.addi a0, 4<br>                                |
|  71|[0x80002328]<br>0xFFFBFFFB|- rs1_val == -262145<br>                                                                                                                                     |[0x800003d4]:c.addi a0, 60<br>                               |
