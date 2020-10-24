
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f4', '0x800014a0')]      |
| SIG_REGION                | [('0x80003210', '0x800033a8')]      |
| COV_LABELS                | ('cbnez',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Unique Coverpoints  | 84      |
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

|s.no|        signature         |                                         coverpoints                                          |                                              code                                               |
|---:|--------------------------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000003|- opcode : c.bnez<br> - rs1 : x9<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16384<br> |[0x80000108]:c.bnez s1, 63<br> [0x80000186]:c.li sp, 3<br>                                       |
|   2|[0x80003214]<br>0x00000003|- rs1 : x8<br> - rs1_val < 0 and imm_val > 0<br>                                              |[0x8000019a]:c.bnez s0, 5<br> [0x800001a4]:c.li sp, 3<br>                                        |
|   3|[0x80003218]<br>0x00000002|- rs1 : x10<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                         |[0x800001b6]:c.bnez a0, 85<br> [0x800001b8]:addi sp, zero, 2<br> [0x800001bc]:jal zero, 166<br>  |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x14<br> - rs1_val > 0 and imm_val < 0<br>                                             |[0x80000272]:c.bnez a4, 252<br> [0x8000026a]:addi sp, zero, 1<br> [0x8000026e]:jal zero, 16<br>  |
|   5|[0x80003220]<br>0x00000001|- rs1 : x15<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -129<br>                       |[0x8000029a]:c.bnez a5, 247<br> [0x80000288]:addi sp, zero, 1<br> [0x8000028c]:jal zero, 26<br>  |
|   6|[0x80003224]<br>0x00000002|- rs1 : x11<br> - rs1_val == 0 and imm_val < 0<br>                                            |[0x800002be]:c.bnez a1, 248<br> [0x800002c0]:addi sp, zero, 2<br> [0x800002c4]:jal zero, 6<br>   |
|   7|[0x80003228]<br>0x00000001|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                  |[0x800002dc]:c.bnez a2, 252<br> [0x800002d4]:addi sp, zero, 1<br> [0x800002d8]:jal zero, 16<br>  |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                  |[0x800002fc]:c.bnez a3, 252<br> [0x800002f4]:addi sp, zero, 1<br> [0x800002f8]:jal zero, 16<br>  |
|   9|[0x80003230]<br>0x00000001|- rs1_val == 1<br>                                                                            |[0x8000031e]:c.bnez a0, 249<br> [0x80000310]:addi sp, zero, 1<br> [0x80000314]:jal zero, 22<br>  |
|  10|[0x80003234]<br>0x00000001|- rs1_val == 2<br>                                                                            |[0x80000342]:c.bnez a0, 248<br> [0x80000332]:addi sp, zero, 1<br> [0x80000336]:jal zero, 24<br>  |
|  11|[0x80003238]<br>0x00000001|- rs1_val == 4<br>                                                                            |[0x800003d8]:c.bnez a0, 191<br> [0x80000356]:addi sp, zero, 1<br> [0x8000035a]:jal zero, 138<br> |
|  12|[0x8000323c]<br>0x00000003|- rs1_val == 8<br>                                                                            |[0x800003f4]:c.bnez a0, 63<br> [0x80000472]:c.li sp, 3<br>                                       |
|  13|[0x80003240]<br>0x00000001|- rs1_val == 16<br>                                                                           |[0x80000528]:c.bnez a0, 170<br> [0x8000047c]:addi sp, zero, 1<br> [0x80000480]:jal zero, 180<br> |
|  14|[0x80003244]<br>0x00000001|- rs1_val == 32<br>                                                                           |[0x800005ea]:c.bnez a0, 170<br> [0x8000053e]:addi sp, zero, 1<br> [0x80000542]:jal zero, 180<br> |
|  15|[0x80003248]<br>0x00000001|- rs1_val == 64<br>                                                                           |[0x80000622]:c.bnez a0, 239<br> [0x80000600]:addi sp, zero, 1<br> [0x80000604]:jal zero, 42<br>  |
|  16|[0x8000324c]<br>0x00000003|- rs1_val == 128<br>                                                                          |[0x80000640]:c.bnez a0, 16<br> [0x80000660]:c.li sp, 3<br>                                       |
|  17|[0x80003250]<br>0x00000001|- rs1_val == 256<br>                                                                          |[0x800006ae]:c.bnez a0, 223<br> [0x8000066c]:addi sp, zero, 1<br> [0x80000670]:jal zero, 74<br>  |
|  18|[0x80003254]<br>0x00000003|- rs1_val == 512<br>                                                                          |[0x800006cc]:c.bnez a0, 6<br> [0x800006d8]:c.li sp, 3<br>                                        |
|  19|[0x80003258]<br>0x00000001|- rs1_val == 1024<br>                                                                         |[0x80000790]:c.bnez a0, 170<br> [0x800006e4]:addi sp, zero, 1<br> [0x800006e8]:jal zero, 180<br> |
|  20|[0x8000325c]<br>0x00000001|- rs1_val == 2048<br>                                                                         |[0x800007b8]:c.bnez a0, 248<br> [0x800007a8]:addi sp, zero, 1<br> [0x800007ac]:jal zero, 24<br>  |
|  21|[0x80003260]<br>0x00000003|- rs1_val == 4096<br>                                                                         |[0x800007d4]:c.bnez a0, 85<br> [0x8000087e]:c.li sp, 3<br>                                       |
|  22|[0x80003264]<br>0x00000003|- rs1_val == 8192<br>                                                                         |[0x80000890]:c.bnez a0, 6<br> [0x8000089c]:c.li sp, 3<br>                                        |
|  23|[0x80003268]<br>0x00000001|- rs1_val == 32768<br>                                                                        |[0x800008ba]:c.bnez a0, 246<br> [0x800008a6]:addi sp, zero, 1<br> [0x800008aa]:jal zero, 28<br>  |
|  24|[0x8000326c]<br>0x00000003|- rs1_val == 65536<br>                                                                        |[0x800008d6]:c.bnez a0, 9<br> [0x800008e8]:c.li sp, 3<br>                                        |
|  25|[0x80003270]<br>0x00000003|- rs1_val == 131072<br>                                                                       |[0x800008fc]:c.bnez a0, 5<br> [0x80000906]:c.li sp, 3<br>                                        |
|  26|[0x80003274]<br>0x00000001|- rs1_val == 262144<br>                                                                       |[0x80000954]:c.bnez a0, 223<br> [0x80000912]:addi sp, zero, 1<br> [0x80000916]:jal zero, 74<br>  |
|  27|[0x80003278]<br>0x00000001|- rs1_val == 524288<br>                                                                       |[0x8000097c]:c.bnez a0, 247<br> [0x8000096a]:addi sp, zero, 1<br> [0x8000096e]:jal zero, 26<br>  |
|  28|[0x8000327c]<br>0x00000003|- rs1_val == 1048576<br>                                                                      |[0x8000099a]:c.bnez a0, 32<br> [0x800009da]:c.li sp, 3<br>                                       |
|  29|[0x80003280]<br>0x00000003|- rs1_val == 2097152<br>                                                                      |[0x800009ee]:c.bnez a0, 5<br> [0x800009f8]:c.li sp, 3<br>                                        |
|  30|[0x80003284]<br>0x00000003|- rs1_val == 4194304<br>                                                                      |[0x80000a0c]:c.bnez a0, 63<br> [0x80000a8a]:c.li sp, 3<br>                                       |
|  31|[0x80003288]<br>0x00000001|- rs1_val == 8388608<br>                                                                      |[0x80000aa2]:c.bnez a0, 250<br> [0x80000a96]:addi sp, zero, 1<br> [0x80000a9a]:jal zero, 20<br>  |
|  32|[0x8000328c]<br>0x00000003|- rs1_val == 16777216<br>                                                                     |[0x80000ac0]:c.bnez a0, 8<br> [0x80000ad0]:c.li sp, 3<br>                                        |
|  33|[0x80003290]<br>0x00000003|- rs1_val == 33554432<br>                                                                     |[0x80000ae4]:c.bnez a0, 64<br> [0x80000b64]:c.li sp, 3<br>                                       |
|  34|[0x80003294]<br>0x00000001|- rs1_val == 67108864<br>                                                                     |[0x80000b78]:c.bnez a0, 252<br> [0x80000b70]:addi sp, zero, 1<br> [0x80000b74]:jal zero, 16<br>  |
|  35|[0x80003298]<br>0x00000001|- rs1_val == 134217728<br>                                                                    |[0x80000b98]:c.bnez a0, 251<br> [0x80000b8e]:addi sp, zero, 1<br> [0x80000b92]:jal zero, 18<br>  |
|  36|[0x8000329c]<br>0x00000001|- rs1_val == 268435456<br>                                                                    |[0x80000bbc]:c.bnez a0, 249<br> [0x80000bae]:addi sp, zero, 1<br> [0x80000bb2]:jal zero, 22<br>  |
|  37|[0x800032a0]<br>0x00000003|- rs1_val == 536870912<br>                                                                    |[0x80000bda]:c.bnez a0, 5<br> [0x80000be4]:c.li sp, 3<br>                                        |
|  38|[0x800032a4]<br>0x00000003|- rs1_val == 1073741824<br>                                                                   |[0x80000bf8]:c.bnez a0, 5<br> [0x80000c02]:c.li sp, 3<br>                                        |
|  39|[0x800032a8]<br>0x00000001|- rs1_val == -2<br>                                                                           |[0x80000c1c]:c.bnez a0, 249<br> [0x80000c0e]:addi sp, zero, 1<br> [0x80000c12]:jal zero, 22<br>  |
|  40|[0x800032ac]<br>0x00000003|- rs1_val == -8388609<br>                                                                     |[0x80000c3c]:c.bnez a0, 5<br> [0x80000c46]:c.li sp, 3<br>                                        |
|  41|[0x800032b0]<br>0x00000003|- rs1_val == -16777217<br>                                                                    |[0x80000c5c]:c.bnez a0, 8<br> [0x80000c6c]:c.li sp, 3<br>                                        |
|  42|[0x800032b4]<br>0x00000001|- rs1_val == -33554433<br>                                                                    |[0x80000c82]:c.bnez a0, 252<br> [0x80000c7a]:addi sp, zero, 1<br> [0x80000c7e]:jal zero, 16<br>  |
|  43|[0x800032b8]<br>0x00000003|- rs1_val == -67108865<br>                                                                    |[0x80000ca2]:c.bnez a0, 7<br> [0x80000cb0]:c.li sp, 3<br>                                        |
|  44|[0x800032bc]<br>0x00000003|- rs1_val == -134217729<br>                                                                   |[0x80000cc6]:c.bnez a0, 5<br> [0x80000cd0]:c.li sp, 3<br>                                        |
|  45|[0x800032c0]<br>0x00000001|- rs1_val == -268435457<br>                                                                   |[0x80000d00]:c.bnez a0, 239<br> [0x80000cde]:addi sp, zero, 1<br> [0x80000ce2]:jal zero, 42<br>  |
|  46|[0x800032c4]<br>0x00000001|- rs1_val == -536870913<br>                                                                   |[0x80000d20]:c.bnez a0, 252<br> [0x80000d18]:addi sp, zero, 1<br> [0x80000d1c]:jal zero, 16<br>  |
|  47|[0x800032c8]<br>0x00000001|- rs1_val == -1073741825<br>                                                                  |[0x80000d42]:c.bnez a0, 251<br> [0x80000d38]:addi sp, zero, 1<br> [0x80000d3c]:jal zero, 18<br>  |
|  48|[0x800032cc]<br>0x00000001|- rs1_val == 1431655765<br>                                                                   |[0x80000e08]:c.bnez a0, 170<br> [0x80000d5c]:addi sp, zero, 1<br> [0x80000d60]:jal zero, 180<br> |
|  49|[0x800032d0]<br>0x00000001|- rs1_val == -1431655766<br>                                                                  |[0x80000e32]:c.bnez a0, 248<br> [0x80000e22]:addi sp, zero, 1<br> [0x80000e26]:jal zero, 24<br>  |
|  50|[0x800032d4]<br>0x00000003|- rs1_val == -3<br>                                                                           |[0x80000e50]:c.bnez a0, 85<br> [0x80000efa]:c.li sp, 3<br>                                       |
|  51|[0x800032d8]<br>0x00000001|- rs1_val == -5<br>                                                                           |[0x80000f0e]:c.bnez a0, 252<br> [0x80000f06]:addi sp, zero, 1<br> [0x80000f0a]:jal zero, 16<br>  |
|  52|[0x800032dc]<br>0x00000001|- rs1_val == -9<br>                                                                           |[0x80000f2c]:c.bnez a0, 252<br> [0x80000f24]:addi sp, zero, 1<br> [0x80000f28]:jal zero, 16<br>  |
|  53|[0x800032e0]<br>0x00000003|- rs1_val == -17<br>                                                                          |[0x80000f4a]:c.bnez a0, 64<br> [0x80000fca]:c.li sp, 3<br>                                       |
|  54|[0x800032e4]<br>0x00000001|- rs1_val == -33<br>                                                                          |[0x80000fde]:c.bnez a0, 252<br> [0x80000fd6]:addi sp, zero, 1<br> [0x80000fda]:jal zero, 16<br>  |
|  55|[0x800032e8]<br>0x00000001|- rs1_val == -65<br>                                                                          |[0x80001004]:c.bnez a0, 248<br> [0x80000ff4]:addi sp, zero, 1<br> [0x80000ff8]:jal zero, 24<br>  |
|  56|[0x800032ec]<br>0x00000003|- rs1_val == -257<br>                                                                         |[0x80001022]:c.bnez a0, 7<br> [0x80001030]:c.li sp, 3<br>                                        |
|  57|[0x800032f0]<br>0x00000003|- rs1_val == -513<br>                                                                         |[0x80001044]:c.bnez a0, 5<br> [0x8000104e]:c.li sp, 3<br>                                        |
|  58|[0x800032f4]<br>0x00000003|- rs1_val == -1025<br>                                                                        |[0x80001062]:c.bnez a0, 9<br> [0x80001074]:c.li sp, 3<br>                                        |
|  59|[0x800032f8]<br>0x00000003|- rs1_val == -2049<br>                                                                        |[0x8000108a]:c.bnez a0, 5<br> [0x80001094]:c.li sp, 3<br>                                        |
|  60|[0x800032fc]<br>0x00000001|- rs1_val == -4097<br>                                                                        |[0x800010b0]:c.bnez a0, 248<br> [0x800010a0]:addi sp, zero, 1<br> [0x800010a4]:jal zero, 24<br>  |
|  61|[0x80003300]<br>0x00000003|- rs1_val == -8193<br>                                                                        |[0x800010ce]:c.bnez a0, 63<br> [0x8000114c]:c.li sp, 3<br>                                       |
|  62|[0x80003304]<br>0x00000003|- rs1_val == -16385<br>                                                                       |[0x80001160]:c.bnez a0, 32<br> [0x800011a0]:c.li sp, 3<br>                                       |
|  63|[0x80003308]<br>0x00000003|- rs1_val == -32769<br>                                                                       |[0x800011b4]:c.bnez a0, 9<br> [0x800011c6]:c.li sp, 3<br>                                        |
|  64|[0x8000330c]<br>0x00000003|- rs1_val == -65537<br>                                                                       |[0x800011da]:c.bnez a0, 85<br> [0x80001284]:c.li sp, 3<br>                                       |
|  65|[0x80003310]<br>0x00000001|- rs1_val == -131073<br>                                                                      |[0x80001312]:c.bnez a0, 191<br> [0x80001290]:addi sp, zero, 1<br> [0x80001294]:jal zero, 138<br> |
|  66|[0x80003314]<br>0x00000001|- rs1_val == -262145<br>                                                                      |[0x80001332]:c.bnez a0, 252<br> [0x8000132a]:addi sp, zero, 1<br> [0x8000132e]:jal zero, 16<br>  |
|  67|[0x80003318]<br>0x00000001|- rs1_val == -524289<br>                                                                      |[0x8000136c]:c.bnez a0, 239<br> [0x8000134a]:addi sp, zero, 1<br> [0x8000134e]:jal zero, 42<br>  |
|  68|[0x8000331c]<br>0x00000001|- rs1_val == -1048577<br>                                                                     |[0x80001394]:c.bnez a0, 248<br> [0x80001384]:addi sp, zero, 1<br> [0x80001388]:jal zero, 24<br>  |
|  69|[0x80003320]<br>0x00000001|- rs1_val == -2097153<br>                                                                     |[0x8000142e]:c.bnez a0, 191<br> [0x800013ac]:addi sp, zero, 1<br> [0x800013b0]:jal zero, 138<br> |
|  70|[0x80003324]<br>0x00000001|- rs1_val == -4194305<br>                                                                     |[0x80001488]:c.bnez a0, 223<br> [0x80001446]:addi sp, zero, 1<br> [0x8000144a]:jal zero, 74<br>  |
