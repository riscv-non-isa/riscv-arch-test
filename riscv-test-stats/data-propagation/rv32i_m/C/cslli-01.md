
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800003d0')]      |
| SIG_REGION                | [('0x80002210', '0x800023ac')]      |
| COV_LABELS                | ('cslli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Unique Coverpoints  | 94      |
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

|s.no|        signature         |                                                            coverpoints                                                            |             code              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0xF7FFFE00|- opcode : c.slli<br> - rd : x8<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -262145<br>                                  |[0x80000102]:c.slli fp, 9<br>  |
|   2|[0x80002214]<br>0x00000030|- rd : x11<br> - rs1_val > 0 and imm_val < xlen<br>                                                                                |[0x8000010a]:c.slli a1, 3<br>  |
|   3|[0x80002218]<br>0x00000800|- rd : x10<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                 |[0x80000112]:c.slli a0, 8<br>  |
|   4|[0x8000221c]<br>0x00000000|- rd : x12<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                    |[0x8000011c]:c.slli a2, 7<br>  |
|   5|[0x80002220]<br>0x00000000|- rd : x15<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - imm_val == 27<br>                                          |[0x80000124]:c.slli a5, 27<br> |
|   6|[0x80002224]<br>0xFFFFFFFE|- rd : x13<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 1<br> |[0x80000130]:c.slli a3, 1<br>  |
|   7|[0x80002228]<br>0x00000200|- rd : x9<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                            |[0x80000138]:c.slli s1, 9<br>  |
|   8|[0x8000222c]<br>0xFFDFFFFC|- rd : x14<br> - rs1_val == -524289<br> - imm_val == 2<br>                                                                         |[0x80000144]:c.slli a4, 2<br>  |
|   9|[0x80002230]<br>0x00000000|- rs1_val == 1073741824<br> - imm_val == 4<br>                                                                                     |[0x8000014e]:c.slli a0, 4<br>  |
|  10|[0x80002234]<br>0xFFFD0000|- rs1_val == -3<br> - imm_val == 16<br>                                                                                            |[0x80000158]:c.slli a0, 16<br> |
|  11|[0x80002238]<br>0x00000000|- rs1_val == 16777216<br> - imm_val == 30<br>                                                                                      |[0x80000162]:c.slli a0, 30<br> |
|  12|[0x8000223c]<br>0x00000000|- imm_val == 29<br>                                                                                                                |[0x8000016c]:c.slli a0, 29<br> |
|  13|[0x80002240]<br>0xFF800000|- rs1_val == -1025<br> - imm_val == 23<br>                                                                                         |[0x80000176]:c.slli a0, 23<br> |
|  14|[0x80002244]<br>0x00040000|- imm_val == 15<br>                                                                                                                |[0x8000017e]:c.slli a0, 15<br> |
|  15|[0x80002248]<br>0x02000000|- rs1_val == 16<br> - imm_val == 21<br>                                                                                            |[0x80000186]:c.slli a0, 21<br> |
|  16|[0x8000224c]<br>0x00000000|- imm_val == 10<br>                                                                                                                |[0x80000190]:c.slli a0, 10<br> |
|  17|[0x80002250]<br>0x00080000|- rs1_val == 2<br>                                                                                                                 |[0x80000198]:c.slli a0, 18<br> |
|  18|[0x80002254]<br>0x02000000|- rs1_val == 4<br>                                                                                                                 |[0x800001a0]:c.slli a0, 23<br> |
|  19|[0x80002258]<br>0x00004000|- rs1_val == 32<br>                                                                                                                |[0x800001aa]:c.slli a0, 9<br>  |
|  20|[0x8000225c]<br>0x00001000|- rs1_val == 64<br>                                                                                                                |[0x800001b4]:c.slli a0, 6<br>  |
|  21|[0x80002260]<br>0x00400000|- rs1_val == 128<br>                                                                                                               |[0x800001be]:c.slli a0, 15<br> |
|  22|[0x80002264]<br>0x08000000|- rs1_val == 256<br>                                                                                                               |[0x800001c8]:c.slli a0, 19<br> |
|  23|[0x80002268]<br>0x00020000|- rs1_val == 512<br>                                                                                                               |[0x800001d2]:c.slli a0, 8<br>  |
|  24|[0x8000226c]<br>0x00080000|- rs1_val == 1024<br>                                                                                                              |[0x800001dc]:c.slli a0, 9<br>  |
|  25|[0x80002270]<br>0x20000000|- rs1_val == 2048<br>                                                                                                              |[0x800001e8]:c.slli a0, 18<br> |
|  26|[0x80002274]<br>0x00800000|- rs1_val == 4096<br>                                                                                                              |[0x800001f0]:c.slli a0, 11<br> |
|  27|[0x80002278]<br>0x00400000|- rs1_val == 8192<br>                                                                                                              |[0x800001f8]:c.slli a0, 9<br>  |
|  28|[0x8000227c]<br>0x00000000|- rs1_val == 16384<br>                                                                                                             |[0x80000200]:c.slli a0, 31<br> |
|  29|[0x80002280]<br>0x00020000|- rs1_val == 32768<br>                                                                                                             |[0x80000208]:c.slli a0, 2<br>  |
|  30|[0x80002284]<br>0x00100000|- rs1_val == 65536<br>                                                                                                             |[0x80000210]:c.slli a0, 4<br>  |
|  31|[0x80002288]<br>0x00400000|- rs1_val == 131072<br>                                                                                                            |[0x8000021a]:c.slli a0, 5<br>  |
|  32|[0x8000228c]<br>0x00400000|- rs1_val == 262144<br>                                                                                                            |[0x80000224]:c.slli a0, 4<br>  |
|  33|[0x80002290]<br>0x00000000|- rs1_val == 524288<br>                                                                                                            |[0x8000022e]:c.slli a0, 31<br> |
|  34|[0x80002294]<br>0x00800000|- rs1_val == 1048576<br>                                                                                                           |[0x80000238]:c.slli a0, 3<br>  |
|  35|[0x80002298]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                           |[0x80000242]:c.slli a0, 29<br> |
|  36|[0x8000229c]<br>0x04000000|- rs1_val == 4194304<br>                                                                                                           |[0x8000024c]:c.slli a0, 4<br>  |
|  37|[0x800022a0]<br>0x02000000|- rs1_val == 8388608<br>                                                                                                           |[0x80000256]:c.slli a0, 2<br>  |
|  38|[0x800022a4]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                          |[0x80000260]:c.slli a0, 30<br> |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                          |[0x8000026a]:c.slli a0, 11<br> |
|  40|[0x800022ac]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                         |[0x80000274]:c.slli a0, 13<br> |
|  41|[0x800022b0]<br>0xFFEFFF80|- rs1_val == -8193<br>                                                                                                             |[0x8000027e]:c.slli a0, 7<br>  |
|  42|[0x800022b4]<br>0xFF7FFE00|- rs1_val == -16385<br>                                                                                                            |[0x80000288]:c.slli a0, 9<br>  |
|  43|[0x800022b8]<br>0xC0000000|- rs1_val == -32769<br>                                                                                                            |[0x80000292]:c.slli a0, 30<br> |
|  44|[0x800022bc]<br>0xFFDFFFE0|- rs1_val == -65537<br>                                                                                                            |[0x8000029c]:c.slli a0, 5<br>  |
|  45|[0x800022c0]<br>0xEFFFF800|- rs1_val == -131073<br>                                                                                                           |[0x800002a6]:c.slli a0, 11<br> |
|  46|[0x800022c4]<br>0xFFDFFFFE|- rs1_val == -1048577<br>                                                                                                          |[0x800002b2]:c.slli a0, 1<br>  |
|  47|[0x800022c8]<br>0xFFFE0000|- rs1_val == -2097153<br>                                                                                                          |[0x800002be]:c.slli a0, 17<br> |
|  48|[0x800022cc]<br>0xBFFFFF00|- rs1_val == -4194305<br>                                                                                                          |[0x800002ca]:c.slli a0, 8<br>  |
|  49|[0x800022d0]<br>0xBFFFFF80|- rs1_val == -8388609<br>                                                                                                          |[0x800002d6]:c.slli a0, 7<br>  |
|  50|[0x800022d4]<br>0xBFFFFFC0|- rs1_val == -16777217<br>                                                                                                         |[0x800002e2]:c.slli a0, 6<br>  |
|  51|[0x800022d8]<br>0xFFFFFE00|- rs1_val == -33554433<br>                                                                                                         |[0x800002ee]:c.slli a0, 9<br>  |
|  52|[0x800022dc]<br>0xFFFFF000|- rs1_val == -67108865<br>                                                                                                         |[0x800002fa]:c.slli a0, 12<br> |
|  53|[0x800022e0]<br>0xFFFFFC00|- rs1_val == -134217729<br>                                                                                                        |[0x80000306]:c.slli a0, 10<br> |
|  54|[0x800022e4]<br>0xFFFC0000|- rs1_val == -268435457<br>                                                                                                        |[0x80000312]:c.slli a0, 18<br> |
|  55|[0x800022e8]<br>0xFFFFFFC0|- rs1_val == -536870913<br>                                                                                                        |[0x8000031e]:c.slli a0, 6<br>  |
|  56|[0x800022ec]<br>0xFFFFFF80|- rs1_val == -1073741825<br>                                                                                                       |[0x8000032a]:c.slli a0, 7<br>  |
|  57|[0x800022f0]<br>0xFFFFEFE0|- rs1_val == -129<br>                                                                                                              |[0x80000334]:c.slli a0, 5<br>  |
|  58|[0x800022f4]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                         |[0x8000033e]:c.slli a0, 21<br> |
|  59|[0x800022f8]<br>0x40000000|- rs1_val == 536870912<br>                                                                                                         |[0x80000348]:c.slli a0, 1<br>  |
|  60|[0x800022fc]<br>0xAAAAAAA8|- rs1_val == 1431655765<br>                                                                                                        |[0x80000356]:c.slli a0, 3<br>  |
|  61|[0x80002300]<br>0xFFFFFFFC|- rs1_val == -2<br>                                                                                                                |[0x80000360]:c.slli a0, 1<br>  |
|  62|[0x80002304]<br>0x55555540|- rs1_val == -1431655766<br>                                                                                                       |[0x8000036e]:c.slli a0, 5<br>  |
|  63|[0x80002308]<br>0xFFFEC000|- rs1_val == -5<br>                                                                                                                |[0x80000378]:c.slli a0, 14<br> |
|  64|[0x8000230c]<br>0xFFFFDC00|- rs1_val == -9<br>                                                                                                                |[0x80000382]:c.slli a0, 10<br> |
|  65|[0x80002310]<br>0xFFFDE000|- rs1_val == -17<br>                                                                                                               |[0x8000038c]:c.slli a0, 13<br> |
|  66|[0x80002314]<br>0xFFFFDF00|- rs1_val == -33<br>                                                                                                               |[0x80000396]:c.slli a0, 8<br>  |
|  67|[0x80002318]<br>0x80000000|- rs1_val == -65<br>                                                                                                               |[0x800003a0]:c.slli a0, 31<br> |
|  68|[0x8000231c]<br>0xFFFDFE00|- rs1_val == -257<br>                                                                                                              |[0x800003aa]:c.slli a0, 9<br>  |
|  69|[0x80002320]<br>0x80000000|- rs1_val == -513<br>                                                                                                              |[0x800003b4]:c.slli a0, 31<br> |
|  70|[0x80002324]<br>0xFBFF8000|- rs1_val == -2049<br>                                                                                                             |[0x800003c0]:c.slli a0, 15<br> |
|  71|[0x80002328]<br>0xFFFFDFFE|- rs1_val == -4097<br>                                                                                                             |[0x800003ca]:c.slli a0, 1<br>  |
