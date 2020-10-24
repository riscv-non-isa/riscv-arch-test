
## Data Propagation Report

| Param       | Value    |
|-------------|----------|
| XLEN        | 32      |
| TEST_REGION | [('0x800000f4', '0x80001480')]      |
| SIG_REGION  | [('0x80003210', '0x800033a0')]      |
| COV_LABELS  | ('cbeqz',)      |
| TEST_NAME   | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |

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

|        signature         |                                           coverpoints                                            |                                              code                                              |
|--------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
|[0x80003210]<br>0x00000002|- opcode : c.beqz<br> - rs1 : 14<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 536870912<br> |[0x8000010a]:c.beqz a4, 5<br> [0x8000010c]:addi sp, zero, 2<br> [0x80000110]:jal zero, 6<br>    |
|[0x80003214]<br>0x00000002|- rs1 : 10<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -33<br>                             |[0x80000128]:c.beqz a0, 32<br> [0x8000012a]:addi sp, zero, 2<br> [0x8000012e]:jal zero, 60<br>  |
|[0x80003218]<br>0x00000003|- rs1 : 8<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                               |[0x8000017a]:c.beqz s0, 32<br> [0x800001ba]:c.li sp, 3<br>                                      |
|[0x8000321c]<br>0x00000002|- rs1 : 15<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 64<br>                              |[0x800001d2]:c.beqz a5, 250<br> [0x800001d4]:addi sp, zero, 2<br> [0x800001d8]:jal zero, 6<br>  |
|[0x80003220]<br>0x00000002|- rs1 : 11<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2<br>                              |[0x80000294]:c.beqz a1, 170<br> [0x80000296]:addi sp, zero, 2<br> [0x8000029a]:jal zero, 6<br>  |
|[0x80003224]<br>0x00000001|- rs1 : 13<br> - rs1_val == 0 and imm_val < 0<br>                                                 |[0x800002b4]:c.beqz a3, 250<br> [0x800002a8]:addi sp, zero, 1<br> [0x800002ac]:jal zero, 20<br> |
|[0x80003228]<br>0x00000002|- rs1 : 12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                       |[0x8000030c]:c.beqz a2, 223<br> [0x8000030e]:addi sp, zero, 2<br> [0x80000312]:jal zero, 6<br>  |
|[0x8000322c]<br>0x00000002|- rs1 : 9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                        |[0x800003d0]:c.beqz s1, 170<br> [0x800003d2]:addi sp, zero, 2<br> [0x800003d6]:jal zero, 6<br>  |
|[0x80003230]<br>0x00000002|- rs1_val == 1<br>                                                                                |[0x800003f8]:c.beqz a0, 246<br> [0x800003fa]:addi sp, zero, 2<br> [0x800003fe]:jal zero, 6<br>  |
|[0x80003234]<br>0x00000002|- rs1_val == 2<br>                                                                                |[0x80000414]:c.beqz a0, 252<br> [0x80000416]:addi sp, zero, 2<br> [0x8000041a]:jal zero, 6<br>  |
|[0x80003238]<br>0x00000002|- rs1_val == 4<br>                                                                                |[0x8000044a]:c.beqz a0, 239<br> [0x8000044c]:addi sp, zero, 2<br> [0x80000450]:jal zero, 6<br>  |
|[0x8000323c]<br>0x00000002|- rs1_val == 8<br>                                                                                |[0x80000466]:c.beqz a0, 5<br> [0x80000468]:addi sp, zero, 2<br> [0x8000046c]:jal zero, 6<br>    |
|[0x80003240]<br>0x00000002|- rs1_val == 16<br>                                                                               |[0x80000482]:c.beqz a0, 5<br> [0x80000484]:addi sp, zero, 2<br> [0x80000488]:jal zero, 6<br>    |
|[0x80003244]<br>0x00000002|- rs1_val == 32<br>                                                                               |[0x800004ba]:c.beqz a0, 239<br> [0x800004bc]:addi sp, zero, 2<br> [0x800004c0]:jal zero, 6<br>  |
|[0x80003248]<br>0x00000002|- rs1_val == 128<br>                                                                              |[0x800004e4]:c.beqz a0, 246<br> [0x800004e6]:addi sp, zero, 2<br> [0x800004ea]:jal zero, 6<br>  |
|[0x8000324c]<br>0x00000002|- rs1_val == 256<br>                                                                              |[0x80000502]:c.beqz a0, 64<br> [0x80000504]:addi sp, zero, 2<br> [0x80000508]:jal zero, 124<br> |
|[0x80003250]<br>0x00000002|- rs1_val == 512<br>                                                                              |[0x80000596]:c.beqz a0, 5<br> [0x80000598]:addi sp, zero, 2<br> [0x8000059c]:jal zero, 6<br>    |
|[0x80003254]<br>0x00000002|- rs1_val == 1024<br>                                                                             |[0x800005b4]:c.beqz a0, 16<br> [0x800005b6]:addi sp, zero, 2<br> [0x800005ba]:jal zero, 28<br>  |
|[0x80003258]<br>0x00000002|- rs1_val == 2048<br>                                                                             |[0x800005ea]:c.beqz a0, 16<br> [0x800005ec]:addi sp, zero, 2<br> [0x800005f0]:jal zero, 28<br>  |
|[0x8000325c]<br>0x00000002|- rs1_val == 4096<br>                                                                             |[0x8000061e]:c.beqz a0, 251<br> [0x80000620]:addi sp, zero, 2<br> [0x80000624]:jal zero, 6<br>  |
|[0x80003260]<br>0x00000002|- rs1_val == 8192<br>                                                                             |[0x8000063a]:c.beqz a0, 8<br> [0x8000063c]:addi sp, zero, 2<br> [0x80000640]:jal zero, 12<br>   |
|[0x80003264]<br>0x00000002|- rs1_val == 16384<br>                                                                            |[0x8000065c]:c.beqz a0, 85<br> [0x8000065e]:addi sp, zero, 2<br> [0x80000662]:jal zero, 166<br> |
|[0x80003268]<br>0x00000002|- rs1_val == 32768<br>                                                                            |[0x80000718]:c.beqz a0, 6<br> [0x8000071a]:addi sp, zero, 2<br> [0x8000071e]:jal zero, 8<br>    |
|[0x8000326c]<br>0x00000002|- rs1_val == 65536<br>                                                                            |[0x8000073c]:c.beqz a0, 249<br> [0x8000073e]:addi sp, zero, 2<br> [0x80000742]:jal zero, 6<br>  |
|[0x80003270]<br>0x00000002|- rs1_val == 131072<br>                                                                           |[0x8000075a]:c.beqz a0, 6<br> [0x8000075c]:addi sp, zero, 2<br> [0x80000760]:jal zero, 8<br>    |
|[0x80003274]<br>0x00000002|- rs1_val == 262144<br>                                                                           |[0x8000077a]:c.beqz a0, 64<br> [0x8000077c]:addi sp, zero, 2<br> [0x80000780]:jal zero, 124<br> |
|[0x80003278]<br>0x00000002|- rs1_val == 524288<br>                                                                           |[0x8000080e]:c.beqz a0, 9<br> [0x80000810]:addi sp, zero, 2<br> [0x80000814]:jal zero, 14<br>   |
|[0x8000327c]<br>0x00000002|- rs1_val == 1048576<br>                                                                          |[0x80000834]:c.beqz a0, 252<br> [0x80000836]:addi sp, zero, 2<br> [0x8000083a]:jal zero, 6<br>  |
|[0x80003280]<br>0x00000002|- rs1_val == 2097152<br>                                                                          |[0x80000852]:c.beqz a0, 5<br> [0x80000854]:addi sp, zero, 2<br> [0x80000858]:jal zero, 6<br>    |
|[0x80003284]<br>0x00000002|- rs1_val == 4194304<br>                                                                          |[0x800008e8]:c.beqz a0, 192<br> [0x800008ea]:addi sp, zero, 2<br> [0x800008ee]:jal zero, 6<br>  |
|[0x80003288]<br>0x00000002|- rs1_val == 8388608<br>                                                                          |[0x80000906]:c.beqz a0, 252<br> [0x80000908]:addi sp, zero, 2<br> [0x8000090c]:jal zero, 6<br>  |
|[0x8000328c]<br>0x00000002|- rs1_val == 16777216<br>                                                                         |[0x80000924]:c.beqz a0, 252<br> [0x80000926]:addi sp, zero, 2<br> [0x8000092a]:jal zero, 6<br>  |
|[0x80003290]<br>0x00000002|- rs1_val == 33554432<br>                                                                         |[0x80000942]:c.beqz a0, 63<br> [0x80000944]:addi sp, zero, 2<br> [0x80000948]:jal zero, 122<br> |
|[0x80003294]<br>0x00000002|- rs1_val == 67108864<br>                                                                         |[0x800009d4]:c.beqz a0, 64<br> [0x800009d6]:addi sp, zero, 2<br> [0x800009da]:jal zero, 124<br> |
|[0x80003298]<br>0x00000002|- rs1_val == 134217728<br>                                                                        |[0x80000a6a]:c.beqz a0, 251<br> [0x80000a6c]:addi sp, zero, 2<br> [0x80000a70]:jal zero, 6<br>  |
|[0x8000329c]<br>0x00000002|- rs1_val == 268435456<br>                                                                        |[0x80000a88]:c.beqz a0, 252<br> [0x80000a8a]:addi sp, zero, 2<br> [0x80000a8e]:jal zero, 6<br>  |
|[0x800032a0]<br>0x00000002|- rs1_val == 1073741824<br>                                                                       |[0x80000aa6]:c.beqz a0, 9<br> [0x80000aa8]:addi sp, zero, 2<br> [0x80000aac]:jal zero, 14<br>   |
|[0x800032a4]<br>0x00000002|- rs1_val == -8388609<br>                                                                         |[0x80000ace]:c.beqz a0, 7<br> [0x80000ad0]:addi sp, zero, 2<br> [0x80000ad4]:jal zero, 10<br>   |
|[0x800032a8]<br>0x00000002|- rs1_val == -16777217<br>                                                                        |[0x80000af2]:c.beqz a0, 16<br> [0x80000af4]:addi sp, zero, 2<br> [0x80000af8]:jal zero, 28<br>  |
|[0x800032ac]<br>0x00000002|- rs1_val == -33554433<br>                                                                        |[0x80000b28]:c.beqz a0, 63<br> [0x80000b2a]:addi sp, zero, 2<br> [0x80000b2e]:jal zero, 122<br> |
|[0x800032b0]<br>0x00000002|- rs1_val == -67108865<br>                                                                        |[0x80000bbc]:c.beqz a0, 32<br> [0x80000bbe]:addi sp, zero, 2<br> [0x80000bc2]:jal zero, 60<br>  |
|[0x800032b4]<br>0x00000002|- rs1_val == -134217729<br>                                                                       |[0x80000c1c]:c.beqz a0, 247<br> [0x80000c1e]:addi sp, zero, 2<br> [0x80000c22]:jal zero, 6<br>  |
|[0x800032b8]<br>0x00000002|- rs1_val == -268435457<br>                                                                       |[0x80000c44]:c.beqz a0, 248<br> [0x80000c46]:addi sp, zero, 2<br> [0x80000c4a]:jal zero, 6<br>  |
|[0x800032bc]<br>0x00000002|- rs1_val == -536870913<br>                                                                       |[0x80000c64]:c.beqz a0, 5<br> [0x80000c66]:addi sp, zero, 2<br> [0x80000c6a]:jal zero, 6<br>    |
|[0x800032c0]<br>0x00000002|- rs1_val == -1073741825<br>                                                                      |[0x80000c8e]:c.beqz a0, 247<br> [0x80000c90]:addi sp, zero, 2<br> [0x80000c94]:jal zero, 6<br>  |
|[0x800032c4]<br>0x00000002|- rs1_val == 1431655765<br>                                                                       |[0x80000cb4]:c.beqz a0, 250<br> [0x80000cb6]:addi sp, zero, 2<br> [0x80000cba]:jal zero, 6<br>  |
|[0x800032c8]<br>0x00000002|- rs1_val == -1431655766<br>                                                                      |[0x80000d4e]:c.beqz a0, 192<br> [0x80000d50]:addi sp, zero, 2<br> [0x80000d54]:jal zero, 6<br>  |
|[0x800032cc]<br>0x00000002|- rs1_val == -3<br>                                                                               |[0x80000d6c]:c.beqz a0, 5<br> [0x80000d6e]:addi sp, zero, 2<br> [0x80000d72]:jal zero, 6<br>    |
|[0x800032d0]<br>0x00000002|- rs1_val == -5<br>                                                                               |[0x80000e02]:c.beqz a0, 192<br> [0x80000e04]:addi sp, zero, 2<br> [0x80000e08]:jal zero, 6<br>  |
|[0x800032d4]<br>0x00000002|- rs1_val == -9<br>                                                                               |[0x80000ec4]:c.beqz a0, 170<br> [0x80000ec6]:addi sp, zero, 2<br> [0x80000eca]:jal zero, 6<br>  |
|[0x800032d8]<br>0x00000002|- rs1_val == -17<br>                                                                              |[0x80000ee2]:c.beqz a0, 252<br> [0x80000ee4]:addi sp, zero, 2<br> [0x80000ee8]:jal zero, 6<br>  |
|[0x800032dc]<br>0x00000002|- rs1_val == -65<br>                                                                              |[0x80000f02]:c.beqz a0, 251<br> [0x80000f04]:addi sp, zero, 2<br> [0x80000f08]:jal zero, 6<br>  |
|[0x800032e0]<br>0x00000002|- rs1_val == -129<br>                                                                             |[0x80000f22]:c.beqz a0, 251<br> [0x80000f24]:addi sp, zero, 2<br> [0x80000f28]:jal zero, 6<br>  |
|[0x800032e4]<br>0x00000002|- rs1_val == -257<br>                                                                             |[0x80000fba]:c.beqz a0, 191<br> [0x80000fbc]:addi sp, zero, 2<br> [0x80000fc0]:jal zero, 6<br>  |
|[0x800032e8]<br>0x00000002|- rs1_val == -513<br>                                                                             |[0x80000fd8]:c.beqz a0, 5<br> [0x80000fda]:addi sp, zero, 2<br> [0x80000fde]:jal zero, 6<br>    |
|[0x800032ec]<br>0x00000002|- rs1_val == -1025<br>                                                                            |[0x80000ff8]:c.beqz a0, 251<br> [0x80000ffa]:addi sp, zero, 2<br> [0x80000ffe]:jal zero, 6<br>  |
|[0x800032f0]<br>0x00000002|- rs1_val == -2049<br>                                                                            |[0x80001018]:c.beqz a0, 252<br> [0x8000101a]:addi sp, zero, 2<br> [0x8000101e]:jal zero, 6<br>  |
|[0x800032f4]<br>0x00000002|- rs1_val == -4097<br>                                                                            |[0x80001036]:c.beqz a0, 7<br> [0x80001038]:addi sp, zero, 2<br> [0x8000103c]:jal zero, 10<br>   |
|[0x800032f8]<br>0x00000002|- rs1_val == -8193<br>                                                                            |[0x800010fc]:c.beqz a0, 170<br> [0x800010fe]:addi sp, zero, 2<br> [0x80001102]:jal zero, 6<br>  |
|[0x800032fc]<br>0x00000002|- rs1_val == -16385<br>                                                                           |[0x80001134]:c.beqz a0, 239<br> [0x80001136]:addi sp, zero, 2<br> [0x8000113a]:jal zero, 6<br>  |
|[0x80003300]<br>0x00000002|- rs1_val == -32769<br>                                                                           |[0x80001152]:c.beqz a0, 64<br> [0x80001154]:addi sp, zero, 2<br> [0x80001158]:jal zero, 124<br> |
|[0x80003304]<br>0x00000002|- rs1_val == -65537<br>                                                                           |[0x80001200]:c.beqz a0, 239<br> [0x80001202]:addi sp, zero, 2<br> [0x80001206]:jal zero, 6<br>  |
|[0x80003308]<br>0x00000002|- rs1_val == -131073<br>                                                                          |[0x8000121e]:c.beqz a0, 7<br> [0x80001220]:addi sp, zero, 2<br> [0x80001224]:jal zero, 10<br>   |
|[0x8000330c]<br>0x00000002|- rs1_val == -262145<br>                                                                          |[0x80001242]:c.beqz a0, 85<br> [0x80001244]:addi sp, zero, 2<br> [0x80001248]:jal zero, 166<br> |
|[0x80003310]<br>0x00000002|- rs1_val == -524289<br>                                                                          |[0x80001302]:c.beqz a0, 63<br> [0x80001304]:addi sp, zero, 2<br> [0x80001308]:jal zero, 122<br> |
|[0x80003314]<br>0x00000002|- rs1_val == -1048577<br>                                                                         |[0x8000139a]:c.beqz a0, 250<br> [0x8000139c]:addi sp, zero, 2<br> [0x800013a0]:jal zero, 6<br>  |
|[0x80003318]<br>0x00000002|- rs1_val == -2097153<br>                                                                         |[0x800013ba]:c.beqz a0, 63<br> [0x800013bc]:addi sp, zero, 2<br> [0x800013c0]:jal zero, 122<br> |
|[0x8000331c]<br>0x00000002|- rs1_val == -4194305<br>                                                                         |[0x8000144e]:c.beqz a0, 16<br> [0x80001450]:addi sp, zero, 2<br> [0x80001454]:jal zero, 28<br>  |
