
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800003d0')]      |
| SIG_REGION                | [('0x80002210', '0x800023a8')]      |
| COV_LABELS                | ('csrai',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrai-01.S/csrai-01.S    |
| Total Unique Coverpoints  | 94      |
| Total Signature Updates   | 70      |
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

|s.no|        signature         |                                                        coverpoints                                                        |             code              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0xFFFFFFF7|- opcode : c.srai<br> - rs1 : x8<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -1073741825<br> - imm_val == 27<br> |[0x80000102]:c.srai s0, 27<br> |
|   2|[0x80002214]<br>0x00000004|- rs1 : x12<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 32768<br>                                                |[0x8000010a]:c.srai a2, 13<br> |
|   3|[0x80002218]<br>0x00000000|- rs1 : x14<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 2<br> - imm_val == 2<br>        |[0x80000112]:c.srai a4, 2<br>  |
|   4|[0x8000221c]<br>0xFC000000|- rs1 : x15<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>           |[0x8000011c]:c.srai a5, 5<br>  |
|   5|[0x80002220]<br>0x00000000|- rs1 : x11<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                                     |[0x80000124]:c.srai a1, 18<br> |
|   6|[0x80002224]<br>0x0003FFFF|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>           |[0x80000130]:c.srai a3, 13<br> |
|   7|[0x80002228]<br>0x00000000|- rs1 : x9<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                   |[0x80000138]:c.srai s1, 14<br> |
|   8|[0x8000222c]<br>0xFFFFFEFF|- rs1 : x10<br> - rs1_val == -513<br> - imm_val == 1<br>                                                                   |[0x80000142]:c.srai a0, 1<br>  |
|   9|[0x80002230]<br>0x00000000|- imm_val == 4<br>                                                                                                         |[0x8000014a]:c.srai a0, 4<br>  |
|  10|[0x80002234]<br>0x00000000|- rs1_val == 32<br> - imm_val == 8<br>                                                                                     |[0x80000154]:c.srai a0, 8<br>  |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1_val == -2<br> - imm_val == 16<br>                                                                                    |[0x8000015e]:c.srai a0, 16<br> |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1_val == -134217729<br> - imm_val == 30<br>                                                                            |[0x8000016a]:c.srai a0, 30<br> |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1_val == -257<br> - imm_val == 29<br>                                                                                  |[0x80000174]:c.srai a0, 29<br> |
|  14|[0x80002244]<br>0x00000000|- imm_val == 23<br>                                                                                                        |[0x8000017c]:c.srai a0, 23<br> |
|  15|[0x80002248]<br>0x00000000|- imm_val == 15<br>                                                                                                        |[0x80000184]:c.srai a0, 15<br> |
|  16|[0x8000224c]<br>0x00000000|- rs1_val == 64<br> - imm_val == 21<br>                                                                                    |[0x8000018e]:c.srai a0, 21<br> |
|  17|[0x80002250]<br>0x00000000|- rs1_val == 16<br> - imm_val == 10<br>                                                                                    |[0x80000196]:c.srai a0, 10<br> |
|  18|[0x80002254]<br>0x00000000|- rs1_val == 4<br>                                                                                                         |[0x8000019e]:c.srai a0, 27<br> |
|  19|[0x80002258]<br>0x00000000|- rs1_val == 8<br>                                                                                                         |[0x800001a6]:c.srai a0, 23<br> |
|  20|[0x8000225c]<br>0x00000010|- rs1_val == 128<br>                                                                                                       |[0x800001b0]:c.srai a0, 3<br>  |
|  21|[0x80002260]<br>0x00000040|- rs1_val == 256<br>                                                                                                       |[0x800001ba]:c.srai a0, 2<br>  |
|  22|[0x80002264]<br>0x00000002|- rs1_val == 512<br>                                                                                                       |[0x800001c4]:c.srai a0, 8<br>  |
|  23|[0x80002268]<br>0x00000000|- rs1_val == 1024<br>                                                                                                      |[0x800001ce]:c.srai a0, 12<br> |
|  24|[0x8000226c]<br>0x00000400|- rs1_val == 2048<br>                                                                                                      |[0x800001da]:c.srai a0, 1<br>  |
|  25|[0x80002270]<br>0x00000000|- rs1_val == 4096<br>                                                                                                      |[0x800001e2]:c.srai a0, 27<br> |
|  26|[0x80002274]<br>0x00000001|- rs1_val == 8192<br>                                                                                                      |[0x800001ea]:c.srai a0, 13<br> |
|  27|[0x80002278]<br>0x00000000|- rs1_val == 16384<br>                                                                                                     |[0x800001f2]:c.srai a0, 18<br> |
|  28|[0x8000227c]<br>0x00000000|- rs1_val == 65536<br>                                                                                                     |[0x800001fa]:c.srai a0, 27<br> |
|  29|[0x80002280]<br>0x00000100|- rs1_val == 131072<br>                                                                                                    |[0x80000204]:c.srai a0, 9<br>  |
|  30|[0x80002284]<br>0x00000100|- rs1_val == 262144<br>                                                                                                    |[0x8000020e]:c.srai a0, 10<br> |
|  31|[0x80002288]<br>0x00000000|- rs1_val == 524288<br>                                                                                                    |[0x80000218]:c.srai a0, 30<br> |
|  32|[0x8000228c]<br>0x00000008|- rs1_val == 1048576<br>                                                                                                   |[0x80000222]:c.srai a0, 17<br> |
|  33|[0x80002290]<br>0x00004000|- rs1_val == 2097152<br>                                                                                                   |[0x8000022c]:c.srai a0, 7<br>  |
|  34|[0x80002294]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                   |[0x80000236]:c.srai a0, 29<br> |
|  35|[0x80002298]<br>0x00002000|- rs1_val == 8388608<br>                                                                                                   |[0x80000240]:c.srai a0, 10<br> |
|  36|[0x8000229c]<br>0x00000002|- rs1_val == 16777216<br>                                                                                                  |[0x8000024a]:c.srai a0, 23<br> |
|  37|[0x800022a0]<br>0x00000040|- rs1_val == 33554432<br>                                                                                                  |[0x80000254]:c.srai a0, 19<br> |
|  38|[0x800022a4]<br>0x02000000|- rs1_val == 67108864<br>                                                                                                  |[0x8000025e]:c.srai a0, 1<br>  |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                 |[0x80000268]:c.srai a0, 29<br> |
|  40|[0x800022ac]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                     |[0x80000272]:c.srai a0, 27<br> |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                    |[0x8000027c]:c.srai a0, 29<br> |
|  42|[0x800022b4]<br>0xFFFFFFEF|- rs1_val == -32769<br>                                                                                                    |[0x80000286]:c.srai a0, 11<br> |
|  43|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                    |[0x80000290]:c.srai a0, 17<br> |
|  44|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                   |[0x8000029a]:c.srai a0, 18<br> |
|  45|[0x800022c0]<br>0xFFFFFFEF|- rs1_val == -262145<br>                                                                                                   |[0x800002a6]:c.srai a0, 14<br> |
|  46|[0x800022c4]<br>0xFFFFFDFF|- rs1_val == -524289<br>                                                                                                   |[0x800002b2]:c.srai a0, 10<br> |
|  47|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == -1048577<br>                                                                                                  |[0x800002be]:c.srai a0, 27<br> |
|  48|[0x800022cc]<br>0xFFFFFFDF|- rs1_val == -2097153<br>                                                                                                  |[0x800002ca]:c.srai a0, 16<br> |
|  49|[0x800022d0]<br>0xFFFFFFF7|- rs1_val == -4194305<br>                                                                                                  |[0x800002d6]:c.srai a0, 19<br> |
|  50|[0x800022d4]<br>0xFFFFFFFB|- rs1_val == -8388609<br>                                                                                                  |[0x800002e2]:c.srai a0, 21<br> |
|  51|[0x800022d8]<br>0xFFF7FFFF|- rs1_val == -16777217<br>                                                                                                 |[0x800002ee]:c.srai a0, 5<br>  |
|  52|[0x800022dc]<br>0xFFFFFBFF|- rs1_val == -33554433<br>                                                                                                 |[0x800002fa]:c.srai a0, 15<br> |
|  53|[0x800022e0]<br>0xFF7FFFFF|- rs1_val == -67108865<br>                                                                                                 |[0x80000306]:c.srai a0, 3<br>  |
|  54|[0x800022e4]<br>0xFFDFFFFF|- rs1_val == -268435457<br>                                                                                                |[0x80000312]:c.srai a0, 7<br>  |
|  55|[0x800022e8]<br>0xFFF7FFFF|- rs1_val == -536870913<br>                                                                                                |[0x8000031e]:c.srai a0, 10<br> |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                      |[0x80000328]:c.srai a0, 15<br> |
|  57|[0x800022f0]<br>0x00100000|- rs1_val == 268435456<br>                                                                                                 |[0x80000332]:c.srai a0, 8<br>  |
|  58|[0x800022f4]<br>0x00002000|- rs1_val == 536870912<br>                                                                                                 |[0x8000033c]:c.srai a0, 16<br> |
|  59|[0x800022f8]<br>0x20000000|- rs1_val == 1073741824<br>                                                                                                |[0x80000346]:c.srai a0, 1<br>  |
|  60|[0x800022fc]<br>0x0000AAAA|- rs1_val == 1431655765<br>                                                                                                |[0x80000354]:c.srai a0, 15<br> |
|  61|[0x80002300]<br>0xFFAAAAAA|- rs1_val == -1431655766<br>                                                                                               |[0x80000362]:c.srai a0, 8<br>  |
|  62|[0x80002304]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                        |[0x8000036c]:c.srai a0, 27<br> |
|  63|[0x80002308]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                        |[0x80000376]:c.srai a0, 12<br> |
|  64|[0x8000230c]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                        |[0x80000380]:c.srai a0, 19<br> |
|  65|[0x80002310]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                       |[0x8000038a]:c.srai a0, 29<br> |
|  66|[0x80002314]<br>0xFFFFFFFE|- rs1_val == -33<br>                                                                                                       |[0x80000394]:c.srai a0, 5<br>  |
|  67|[0x80002318]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                       |[0x8000039e]:c.srai a0, 10<br> |
|  68|[0x8000231c]<br>0xFFFFFFEF|- rs1_val == -1025<br>                                                                                                     |[0x800003a8]:c.srai a0, 6<br>  |
|  69|[0x80002320]<br>0xFFFFFFFD|- rs1_val == -2049<br>                                                                                                     |[0x800003b4]:c.srai a0, 10<br> |
|  70|[0x80002324]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                     |[0x800003be]:c.srai a0, 14<br> |
