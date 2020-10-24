
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800003e0')]      |
| SIG_REGION                | [('0x80002210', '0x800023ac')]      |
| COV_LABELS                | ('csrli',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
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

|s.no|        signature         |                                                   coverpoints                                                   |             code              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80002210]<br>0x00000600|- opcode : c.srli<br> - rs1 : x12<br> - rs1_val < 0 and imm_val < xlen<br> - imm_val == 21<br>                   |[0x80000100]:c.srli a2, 21<br> |
|   2|[0x80002214]<br>0x00000020|- rs1 : x11<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 128<br> - imm_val == 2<br>                     |[0x8000010a]:c.srli a1, 2<br>  |
|   3|[0x80002218]<br>0x00000000|- rs1 : x8<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 2<br>                  |[0x80000112]:c.srli s0, 2<br>  |
|   4|[0x8000221c]<br>0x20000000|- rs1 : x14<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> |[0x8000011c]:c.srli a4, 2<br>  |
|   5|[0x80002220]<br>0x00000000|- rs1 : x10<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br>                                           |[0x80000124]:c.srli a0, 5<br>  |
|   6|[0x80002224]<br>0x00003FFF|- rs1 : x15<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> |[0x80000130]:c.srli a5, 17<br> |
|   7|[0x80002228]<br>0x00000000|- rs1 : x13<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                        |[0x80000138]:c.srli a3, 19<br> |
|   8|[0x8000222c]<br>0x7FFFFEFF|- rs1 : x9<br> - rs1_val == -513<br> - imm_val == 1<br>                                                          |[0x80000142]:c.srli s1, 1<br>  |
|   9|[0x80002230]<br>0x07FFFFFF|- imm_val == 4<br>                                                                                               |[0x8000014e]:c.srli a0, 4<br>  |
|  10|[0x80002234]<br>0x00004000|- rs1_val == 4194304<br> - imm_val == 8<br>                                                                      |[0x80000158]:c.srli a0, 8<br>  |
|  11|[0x80002238]<br>0x00000000|- rs1_val == 16384<br> - imm_val == 16<br>                                                                       |[0x80000160]:c.srli a0, 16<br> |
|  12|[0x8000223c]<br>0x00000001|- rs1_val == 1431655765<br> - imm_val == 30<br>                                                                  |[0x8000016e]:c.srli a0, 30<br> |
|  13|[0x80002240]<br>0x00000000|- rs1_val == 8<br> - imm_val == 29<br>                                                                           |[0x80000176]:c.srli a0, 29<br> |
|  14|[0x80002244]<br>0x0000001F|- rs1_val == -67108865<br> - imm_val == 27<br>                                                                   |[0x80000182]:c.srli a0, 27<br> |
|  15|[0x80002248]<br>0x00000000|- rs1_val == 16<br> - imm_val == 23<br>                                                                          |[0x8000018a]:c.srli a0, 23<br> |
|  16|[0x8000224c]<br>0x0001FFFF|- imm_val == 15<br>                                                                                              |[0x80000194]:c.srli a0, 15<br> |
|  17|[0x80002250]<br>0x003FFFFF|- imm_val == 10<br>                                                                                              |[0x8000019e]:c.srli a0, 10<br> |
|  18|[0x80002254]<br>0x00000000|- rs1_val == 4<br>                                                                                               |[0x800001a6]:c.srli a0, 7<br>  |
|  19|[0x80002258]<br>0x00000000|- rs1_val == 32<br>                                                                                              |[0x800001b0]:c.srli a0, 19<br> |
|  20|[0x8000225c]<br>0x00000000|- rs1_val == 64<br>                                                                                              |[0x800001ba]:c.srli a0, 16<br> |
|  21|[0x80002260]<br>0x00000000|- rs1_val == 256<br>                                                                                             |[0x800001c4]:c.srli a0, 27<br> |
|  22|[0x80002264]<br>0x00000040|- rs1_val == 512<br>                                                                                             |[0x800001ce]:c.srli a0, 3<br>  |
|  23|[0x80002268]<br>0x00000000|- rs1_val == 1024<br>                                                                                            |[0x800001d8]:c.srli a0, 13<br> |
|  24|[0x8000226c]<br>0x00000100|- rs1_val == 2048<br>                                                                                            |[0x800001e4]:c.srli a0, 3<br>  |
|  25|[0x80002270]<br>0x00000000|- rs1_val == 4096<br>                                                                                            |[0x800001ec]:c.srli a0, 18<br> |
|  26|[0x80002274]<br>0x00000000|- rs1_val == 8192<br>                                                                                            |[0x800001f4]:c.srli a0, 29<br> |
|  27|[0x80002278]<br>0x00000000|- rs1_val == 32768<br>                                                                                           |[0x800001fc]:c.srli a0, 31<br> |
|  28|[0x8000227c]<br>0x00000800|- rs1_val == 65536<br>                                                                                           |[0x80000204]:c.srli a0, 5<br>  |
|  29|[0x80002280]<br>0x00000001|- rs1_val == 131072<br>                                                                                          |[0x8000020e]:c.srli a0, 17<br> |
|  30|[0x80002284]<br>0x00000000|- rs1_val == 262144<br>                                                                                          |[0x80000218]:c.srli a0, 30<br> |
|  31|[0x80002288]<br>0x00004000|- rs1_val == 524288<br>                                                                                          |[0x80000222]:c.srli a0, 5<br>  |
|  32|[0x8000228c]<br>0x00000000|- rs1_val == 1048576<br>                                                                                         |[0x8000022c]:c.srli a0, 23<br> |
|  33|[0x80002290]<br>0x00000010|- rs1_val == 2097152<br>                                                                                         |[0x80000236]:c.srli a0, 17<br> |
|  34|[0x80002294]<br>0x00004000|- rs1_val == 8388608<br>                                                                                         |[0x80000240]:c.srli a0, 9<br>  |
|  35|[0x80002298]<br>0x00002000|- rs1_val == 16777216<br>                                                                                        |[0x8000024a]:c.srli a0, 11<br> |
|  36|[0x8000229c]<br>0x00000400|- rs1_val == 33554432<br>                                                                                        |[0x80000254]:c.srli a0, 15<br> |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == 67108864<br>                                                                                        |[0x8000025e]:c.srli a0, 31<br> |
|  38|[0x800022a4]<br>0x00000040|- rs1_val == 134217728<br>                                                                                       |[0x80000268]:c.srli a0, 21<br> |
|  39|[0x800022a8]<br>0x00002000|- rs1_val == 268435456<br>                                                                                       |[0x80000272]:c.srli a0, 15<br> |
|  40|[0x800022ac]<br>0x01000000|- rs1_val == 536870912<br>                                                                                       |[0x8000027c]:c.srli a0, 5<br>  |
|  41|[0x800022b0]<br>0x0007FFFE|- rs1_val == -8193<br>                                                                                           |[0x80000286]:c.srli a0, 13<br> |
|  42|[0x800022b4]<br>0x00000003|- rs1_val == -16385<br>                                                                                          |[0x80000290]:c.srli a0, 30<br> |
|  43|[0x800022b8]<br>0x000001FF|- rs1_val == -32769<br>                                                                                          |[0x8000029a]:c.srli a0, 23<br> |
|  44|[0x800022bc]<br>0x00001FFF|- rs1_val == -65537<br>                                                                                          |[0x800002a4]:c.srli a0, 19<br> |
|  45|[0x800022c0]<br>0x07FFEFFF|- rs1_val == -131073<br>                                                                                         |[0x800002ae]:c.srli a0, 5<br>  |
|  46|[0x800022c4]<br>0x00003FFE|- rs1_val == -262145<br>                                                                                         |[0x800002ba]:c.srli a0, 18<br> |
|  47|[0x800022c8]<br>0x00000001|- rs1_val == -524289<br>                                                                                         |[0x800002c6]:c.srli a0, 31<br> |
|  48|[0x800022cc]<br>0x0007FF7F|- rs1_val == -1048577<br>                                                                                        |[0x800002d2]:c.srli a0, 13<br> |
|  49|[0x800022d0]<br>0x0003FF7F|- rs1_val == -2097153<br>                                                                                        |[0x800002de]:c.srli a0, 14<br> |
|  50|[0x800022d4]<br>0x07FDFFFF|- rs1_val == -4194305<br>                                                                                        |[0x800002ea]:c.srli a0, 5<br>  |
|  51|[0x800022d8]<br>0x0001FEFF|- rs1_val == -8388609<br>                                                                                        |[0x800002f6]:c.srli a0, 15<br> |
|  52|[0x800022dc]<br>0x00FEFFFF|- rs1_val == -16777217<br>                                                                                       |[0x80000302]:c.srli a0, 8<br>  |
|  53|[0x800022e0]<br>0x001FBFFF|- rs1_val == -33554433<br>                                                                                       |[0x8000030e]:c.srli a0, 11<br> |
|  54|[0x800022e4]<br>0x00F7FFFF|- rs1_val == -134217729<br>                                                                                      |[0x8000031a]:c.srli a0, 8<br>  |
|  55|[0x800022e8]<br>0x001DFFFF|- rs1_val == -268435457<br>                                                                                      |[0x80000326]:c.srli a0, 11<br> |
|  56|[0x800022ec]<br>0x37FFFFFF|- rs1_val == -536870913<br>                                                                                      |[0x80000332]:c.srli a0, 2<br>  |
|  57|[0x800022f0]<br>0x07FFFFFB|- rs1_val == -129<br>                                                                                            |[0x8000033c]:c.srli a0, 5<br>  |
|  58|[0x800022f4]<br>0x002FFFFF|- rs1_val == -1073741825<br>                                                                                     |[0x80000348]:c.srli a0, 10<br> |
|  59|[0x800022f8]<br>0x00020000|- rs1_val == 1073741824<br>                                                                                      |[0x80000352]:c.srli a0, 13<br> |
|  60|[0x800022fc]<br>0x07FFFFFF|- rs1_val == -2<br>                                                                                              |[0x8000035c]:c.srli a0, 5<br>  |
|  61|[0x80002300]<br>0x0AAAAAAA|- rs1_val == -1431655766<br>                                                                                     |[0x8000036a]:c.srli a0, 4<br>  |
|  62|[0x80002304]<br>0x000FFFFF|- rs1_val == -3<br>                                                                                              |[0x80000374]:c.srli a0, 12<br> |
|  63|[0x80002308]<br>0x001FFFFF|- rs1_val == -5<br>                                                                                              |[0x8000037e]:c.srli a0, 11<br> |
|  64|[0x8000230c]<br>0x00003FFF|- rs1_val == -9<br>                                                                                              |[0x80000388]:c.srli a0, 18<br> |
|  65|[0x80002310]<br>0x00001FFF|- rs1_val == -17<br>                                                                                             |[0x80000392]:c.srli a0, 19<br> |
|  66|[0x80002314]<br>0x0000FFFF|- rs1_val == -33<br>                                                                                             |[0x8000039c]:c.srli a0, 16<br> |
|  67|[0x80002318]<br>0x001FFFFF|- rs1_val == -65<br>                                                                                             |[0x800003a6]:c.srli a0, 11<br> |
|  68|[0x8000231c]<br>0x00001FFF|- rs1_val == -257<br>                                                                                            |[0x800003b0]:c.srli a0, 19<br> |
|  69|[0x80002320]<br>0x00000001|- rs1_val == -1025<br>                                                                                           |[0x800003ba]:c.srli a0, 31<br> |
|  70|[0x80002324]<br>0x0001FFFF|- rs1_val == -2049<br>                                                                                           |[0x800003c6]:c.srli a0, 15<br> |
|  71|[0x80002328]<br>0x001FFFFD|- rs1_val == -4097<br>                                                                                           |[0x800003d0]:c.srli a0, 11<br> |
