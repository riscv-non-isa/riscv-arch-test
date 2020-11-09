
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001460')]      |
| SIG_REGION                | [('0x80004204', '0x80004318', '69 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 84     |
| Total Coverpoints Hit     | 84      |
| Total Signature Updates   | 69      |
| STAT1                     | 69      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

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
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|        signature         |                                            coverpoints                                            |                                                             code                                                             |
|---:|--------------------------|---------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004204]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x11<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 134217728<br> |[0x80000112]:c.beqz a1, 5<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 6<br> [0x8000011e]:sw sp, 0(ra)<br>      |
|   2|[0x80004208]<br>0xFF76DF5A|- rs1 : x10<br> - rs1_val < 0 and imm_val > 0<br>                                                  |[0x80000134]:c.beqz a0, 8<br> [0x80000136]:addi sp, sp, 2<br> [0x8000013a]:jal zero, 12<br> [0x80000146]:sw sp, 4(ra)<br>     |
|   3|[0x8000420c]<br>0xFF76DF5D|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                              |[0x8000015c]:c.beqz a5, 5<br> [0x80000166]:c.addi sp, 3<br> [0x80000168]:sw sp, 8(ra)<br>                                     |
|   4|[0x80004210]<br>0xFF76DF5F|- rs1 : x13<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 65536<br>                           |[0x800001f8]:c.beqz a3, 191<br> [0x800001fa]:addi sp, sp, 2<br> [0x800001fe]:jal zero, 6<br> [0x80000204]:sw sp, 12(ra)<br>   |
|   5|[0x80004214]<br>0xFF76DF61|- rs1 : x12<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -8388609<br>                        |[0x8000021e]:c.beqz a2, 252<br> [0x80000220]:addi sp, sp, 2<br> [0x80000224]:jal zero, 6<br> [0x8000022a]:sw sp, 16(ra)<br>   |
|   6|[0x80004218]<br>0xFF76DF62|- rs1 : x14<br> - rs1_val == 0 and imm_val < 0<br>                                                 |[0x800002e4]:c.beqz a4, 170<br> [0x80000238]:addi sp, sp, 1<br> [0x8000023c]:jal zero, 180<br> [0x800002f0]:sw sp, 20(ra)<br> |
|   7|[0x8000421c]<br>0xFF76DF64|- rs1 : x9<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                        |[0x80000306]:c.beqz s1, 5<br> [0x80000308]:addi sp, sp, 2<br> [0x8000030c]:jal zero, 6<br> [0x80000312]:sw sp, 24(ra)<br>     |
|   8|[0x80004220]<br>0xFF76DF66|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                        |[0x80000338]:c.beqz s0, 246<br> [0x8000033a]:addi sp, sp, 2<br> [0x8000033e]:jal zero, 6<br> [0x80000344]:sw sp, 28(ra)<br>   |
|   9|[0x80004224]<br>0xFF76DF68|- rs1_val == 1<br>                                                                                 |[0x8000035a]:c.beqz a0, 32<br> [0x8000035c]:addi sp, sp, 2<br> [0x80000360]:jal zero, 60<br> [0x8000039c]:sw sp, 32(ra)<br>   |
|  10|[0x80004228]<br>0xFF76DF6A|- rs1_val == 2<br>                                                                                 |[0x800003be]:c.beqz a0, 246<br> [0x800003c0]:addi sp, sp, 2<br> [0x800003c4]:jal zero, 6<br> [0x800003ca]:sw sp, 36(ra)<br>   |
|  11|[0x8000422c]<br>0xFF76DF6C|- rs1_val == 4<br>                                                                                 |[0x800003e0]:c.beqz a0, 5<br> [0x800003e2]:addi sp, sp, 2<br> [0x800003e6]:jal zero, 6<br> [0x800003ec]:sw sp, 40(ra)<br>     |
|  12|[0x80004230]<br>0xFF76DF6E|- rs1_val == 8<br>                                                                                 |[0x8000040e]:c.beqz a0, 246<br> [0x80000410]:addi sp, sp, 2<br> [0x80000414]:jal zero, 6<br> [0x8000041a]:sw sp, 44(ra)<br>   |
|  13|[0x80004234]<br>0xFF76DF70|- rs1_val == 16<br>                                                                                |[0x80000430]:c.beqz a0, 252<br> [0x80000432]:addi sp, sp, 2<br> [0x80000436]:jal zero, 6<br> [0x8000043c]:sw sp, 48(ra)<br>   |
|  14|[0x80004238]<br>0xFF76DF72|- rs1_val == 32<br>                                                                                |[0x80000458]:c.beqz a0, 249<br> [0x8000045a]:addi sp, sp, 2<br> [0x8000045e]:jal zero, 6<br> [0x80000464]:sw sp, 52(ra)<br>   |
|  15|[0x8000423c]<br>0xFF76DF74|- rs1_val == 64<br>                                                                                |[0x80000494]:c.beqz a0, 239<br> [0x80000496]:addi sp, sp, 2<br> [0x8000049a]:jal zero, 6<br> [0x800004a0]:sw sp, 56(ra)<br>   |
|  16|[0x80004240]<br>0xFF76DF76|- rs1_val == 128<br>                                                                               |[0x800004d0]:c.beqz a0, 239<br> [0x800004d2]:addi sp, sp, 2<br> [0x800004d6]:jal zero, 6<br> [0x800004dc]:sw sp, 60(ra)<br>   |
|  17|[0x80004244]<br>0xFF76DF78|- rs1_val == 256<br>                                                                               |[0x800004f8]:c.beqz a0, 249<br> [0x800004fa]:addi sp, sp, 2<br> [0x800004fe]:jal zero, 6<br> [0x80000504]:sw sp, 64(ra)<br>   |
|  18|[0x80004248]<br>0xFF76DF7A|- rs1_val == 512<br>                                                                               |[0x800005be]:c.beqz a0, 170<br> [0x800005c0]:addi sp, sp, 2<br> [0x800005c4]:jal zero, 6<br> [0x800005ca]:sw sp, 68(ra)<br>   |
|  19|[0x8000424c]<br>0xFF76DF7C|- rs1_val == 1024<br>                                                                              |[0x800005e0]:c.beqz a0, 5<br> [0x800005e2]:addi sp, sp, 2<br> [0x800005e6]:jal zero, 6<br> [0x800005ec]:sw sp, 72(ra)<br>     |
|  20|[0x80004250]<br>0xFF76DF7E|- rs1_val == 2048<br>                                                                              |[0x80000608]:c.beqz a0, 251<br> [0x8000060a]:addi sp, sp, 2<br> [0x8000060e]:jal zero, 6<br> [0x80000614]:sw sp, 76(ra)<br>   |
|  21|[0x80004254]<br>0xFF76DF80|- rs1_val == 4096<br>                                                                              |[0x8000062a]:c.beqz a0, 5<br> [0x8000062c]:addi sp, sp, 2<br> [0x80000630]:jal zero, 6<br> [0x80000636]:sw sp, 80(ra)<br>     |
|  22|[0x80004258]<br>0xFF76DF82|- rs1_val == 8192<br>                                                                              |[0x8000064c]:c.beqz a0, 6<br> [0x8000064e]:addi sp, sp, 2<br> [0x80000652]:jal zero, 8<br> [0x8000065a]:sw sp, 84(ra)<br>     |
|  23|[0x8000425c]<br>0xFF76DF84|- rs1_val == 16384<br>                                                                             |[0x80000670]:c.beqz a0, 6<br> [0x80000672]:addi sp, sp, 2<br> [0x80000676]:jal zero, 8<br> [0x8000067e]:sw sp, 88(ra)<br>     |
|  24|[0x80004260]<br>0xFF76DF86|- rs1_val == 32768<br>                                                                             |[0x80000694]:c.beqz a0, 5<br> [0x80000696]:addi sp, sp, 2<br> [0x8000069a]:jal zero, 6<br> [0x800006a0]:sw sp, 92(ra)<br>     |
|  25|[0x80004264]<br>0xFF76DF88|- rs1_val == 131072<br>                                                                            |[0x800006b6]:c.beqz a0, 16<br> [0x800006b8]:addi sp, sp, 2<br> [0x800006bc]:jal zero, 28<br> [0x800006d8]:sw sp, 96(ra)<br>   |
|  26|[0x80004268]<br>0xFF76DF8A|- rs1_val == 262144<br>                                                                            |[0x800006f8]:c.beqz a0, 247<br> [0x800006fa]:addi sp, sp, 2<br> [0x800006fe]:jal zero, 6<br> [0x80000704]:sw sp, 100(ra)<br>  |
|  27|[0x8000426c]<br>0xFF76DF8C|- rs1_val == 524288<br>                                                                            |[0x8000071a]:c.beqz a0, 6<br> [0x8000071c]:addi sp, sp, 2<br> [0x80000720]:jal zero, 8<br> [0x80000728]:sw sp, 104(ra)<br>    |
|  28|[0x80004270]<br>0xFF76DF8E|- rs1_val == 1048576<br>                                                                           |[0x80000744]:c.beqz a0, 249<br> [0x80000746]:addi sp, sp, 2<br> [0x8000074a]:jal zero, 6<br> [0x80000750]:sw sp, 108(ra)<br>  |
|  29|[0x80004274]<br>0xFF76DF90|- rs1_val == 2097152<br>                                                                           |[0x8000076e]:c.beqz a0, 248<br> [0x80000770]:addi sp, sp, 2<br> [0x80000774]:jal zero, 6<br> [0x8000077a]:sw sp, 112(ra)<br>  |
|  30|[0x80004278]<br>0xFF76DF92|- rs1_val == 4194304<br>                                                                           |[0x80000790]:c.beqz a0, 32<br> [0x80000792]:addi sp, sp, 2<br> [0x80000796]:jal zero, 60<br> [0x800007d2]:sw sp, 116(ra)<br>  |
|  31|[0x8000427c]<br>0xFF76DF94|- rs1_val == 8388608<br>                                                                           |[0x800007e8]:c.beqz a0, 16<br> [0x800007ea]:addi sp, sp, 2<br> [0x800007ee]:jal zero, 28<br> [0x8000080a]:sw sp, 120(ra)<br>  |
|  32|[0x80004280]<br>0xFF76DF96|- rs1_val == 16777216<br>                                                                          |[0x80000820]:c.beqz a0, 252<br> [0x80000822]:addi sp, sp, 2<br> [0x80000826]:jal zero, 6<br> [0x8000082c]:sw sp, 124(ra)<br>  |
|  33|[0x80004284]<br>0xFF76DF98|- rs1_val == 33554432<br>                                                                          |[0x8000084e]:c.beqz a0, 246<br> [0x80000850]:addi sp, sp, 2<br> [0x80000854]:jal zero, 6<br> [0x8000085a]:sw sp, 128(ra)<br>  |
|  34|[0x80004288]<br>0xFF76DF9A|- rs1_val == 67108864<br>                                                                          |[0x80000870]:c.beqz a0, 5<br> [0x80000872]:addi sp, sp, 2<br> [0x80000876]:jal zero, 6<br> [0x8000087c]:sw sp, 132(ra)<br>    |
|  35|[0x8000428c]<br>0xFF76DF9C|- rs1_val == 268435456<br>                                                                         |[0x8000089e]:c.beqz a0, 246<br> [0x800008a0]:addi sp, sp, 2<br> [0x800008a4]:jal zero, 6<br> [0x800008aa]:sw sp, 136(ra)<br>  |
|  36|[0x80004290]<br>0xFF76DF9E|- rs1_val == 536870912<br>                                                                         |[0x800008c0]:c.beqz a0, 5<br> [0x800008c2]:addi sp, sp, 2<br> [0x800008c6]:jal zero, 6<br> [0x800008cc]:sw sp, 140(ra)<br>    |
|  37|[0x80004294]<br>0xFF76DFA0|- rs1_val == 1073741824<br>                                                                        |[0x80000986]:c.beqz a0, 170<br> [0x80000988]:addi sp, sp, 2<br> [0x8000098c]:jal zero, 6<br> [0x80000992]:sw sp, 144(ra)<br>  |
|  38|[0x80004298]<br>0xFF76DFA2|- rs1_val == -2<br>                                                                                |[0x800009a8]:c.beqz a0, 8<br> [0x800009aa]:addi sp, sp, 2<br> [0x800009ae]:jal zero, 12<br> [0x800009ba]:sw sp, 148(ra)<br>   |
|  39|[0x8000429c]<br>0xFF76DFA4|- rs1_val == -16777217<br>                                                                         |[0x800009d8]:c.beqz a0, 250<br> [0x800009da]:addi sp, sp, 2<br> [0x800009de]:jal zero, 6<br> [0x800009e4]:sw sp, 152(ra)<br>  |
|  40|[0x800042a0]<br>0xFF76DFA6|- rs1_val == -33554433<br>                                                                         |[0x80000a0a]:c.beqz a0, 246<br> [0x80000a0c]:addi sp, sp, 2<br> [0x80000a10]:jal zero, 6<br> [0x80000a16]:sw sp, 156(ra)<br>  |
|  41|[0x800042a4]<br>0xFF76DFA8|- rs1_val == -67108865<br>                                                                         |[0x80000aaa]:c.beqz a0, 191<br> [0x80000aac]:addi sp, sp, 2<br> [0x80000ab0]:jal zero, 6<br> [0x80000ab6]:sw sp, 160(ra)<br>  |
|  42|[0x800042a8]<br>0xFF76DFAA|- rs1_val == -134217729<br>                                                                        |[0x80000ad4]:c.beqz a0, 250<br> [0x80000ad6]:addi sp, sp, 2<br> [0x80000ada]:jal zero, 6<br> [0x80000ae0]:sw sp, 164(ra)<br>  |
|  43|[0x800042ac]<br>0xFF76DFAC|- rs1_val == -268435457<br>                                                                        |[0x80000b72]:c.beqz a0, 192<br> [0x80000b74]:addi sp, sp, 2<br> [0x80000b78]:jal zero, 6<br> [0x80000b7e]:sw sp, 168(ra)<br>  |
|  44|[0x800042b0]<br>0xFF76DFAE|- rs1_val == -536870913<br>                                                                        |[0x80000c12]:c.beqz a0, 191<br> [0x80000c14]:addi sp, sp, 2<br> [0x80000c18]:jal zero, 6<br> [0x80000c1e]:sw sp, 172(ra)<br>  |
|  45|[0x800042b4]<br>0xFF76DFB0|- rs1_val == -1073741825<br>                                                                       |[0x80000c38]:c.beqz a0, 5<br> [0x80000c3a]:addi sp, sp, 2<br> [0x80000c3e]:jal zero, 6<br> [0x80000c44]:sw sp, 176(ra)<br>    |
|  46|[0x800042b8]<br>0xFF76DFB2|- rs1_val == 1431655765<br>                                                                        |[0x80000c98]:c.beqz a0, 223<br> [0x80000c9a]:addi sp, sp, 2<br> [0x80000c9e]:jal zero, 6<br> [0x80000ca4]:sw sp, 180(ra)<br>  |
|  47|[0x800042bc]<br>0xFF76DFB4|- rs1_val == -1431655766<br>                                                                       |[0x80000cbe]:c.beqz a0, 252<br> [0x80000cc0]:addi sp, sp, 2<br> [0x80000cc4]:jal zero, 6<br> [0x80000cca]:sw sp, 184(ra)<br>  |
|  48|[0x800042c0]<br>0xFF76DFB6|- rs1_val == -3<br>                                                                                |[0x80000ce0]:c.beqz a0, 252<br> [0x80000ce2]:addi sp, sp, 2<br> [0x80000ce6]:jal zero, 6<br> [0x80000cec]:sw sp, 188(ra)<br>  |
|  49|[0x800042c4]<br>0xFF76DFB8|- rs1_val == -5<br>                                                                                |[0x80000d02]:c.beqz a0, 6<br> [0x80000d04]:addi sp, sp, 2<br> [0x80000d08]:jal zero, 8<br> [0x80000d10]:sw sp, 192(ra)<br>    |
|  50|[0x800042c8]<br>0xFF76DFBA|- rs1_val == -9<br>                                                                                |[0x80000d26]:c.beqz a0, 252<br> [0x80000d28]:addi sp, sp, 2<br> [0x80000d2c]:jal zero, 6<br> [0x80000d32]:sw sp, 196(ra)<br>  |
|  51|[0x800042cc]<br>0xFF76DFBC|- rs1_val == -17<br>                                                                               |[0x80000d52]:c.beqz a0, 247<br> [0x80000d54]:addi sp, sp, 2<br> [0x80000d58]:jal zero, 6<br> [0x80000d5e]:sw sp, 200(ra)<br>  |
|  52|[0x800042d0]<br>0xFF76DFBE|- rs1_val == -33<br>                                                                               |[0x80000d74]:c.beqz a0, 85<br> [0x80000d76]:addi sp, sp, 2<br> [0x80000d7a]:jal zero, 166<br> [0x80000e20]:sw sp, 204(ra)<br> |
|  53|[0x800042d4]<br>0xFF76DFC0|- rs1_val == -65<br>                                                                               |[0x80000e36]:c.beqz a0, 85<br> [0x80000e38]:addi sp, sp, 2<br> [0x80000e3c]:jal zero, 166<br> [0x80000ee2]:sw sp, 208(ra)<br> |
|  54|[0x800042d8]<br>0xFF76DFC2|- rs1_val == -129<br>                                                                              |[0x80000f32]:c.beqz a0, 223<br> [0x80000f34]:addi sp, sp, 2<br> [0x80000f38]:jal zero, 6<br> [0x80000f3e]:sw sp, 212(ra)<br>  |
|  55|[0x800042dc]<br>0xFF76DFC4|- rs1_val == -257<br>                                                                              |[0x80000f54]:c.beqz a0, 5<br> [0x80000f56]:addi sp, sp, 2<br> [0x80000f5a]:jal zero, 6<br> [0x80000f60]:sw sp, 216(ra)<br>    |
|  56|[0x800042e0]<br>0xFF76DFC6|- rs1_val == -513<br>                                                                              |[0x80000fee]:c.beqz a0, 192<br> [0x80000ff0]:addi sp, sp, 2<br> [0x80000ff4]:jal zero, 6<br> [0x80000ffa]:sw sp, 220(ra)<br>  |
|  57|[0x800042e4]<br>0xFF76DFC8|- rs1_val == -1025<br>                                                                             |[0x800010b4]:c.beqz a0, 170<br> [0x800010b6]:addi sp, sp, 2<br> [0x800010ba]:jal zero, 6<br> [0x800010c0]:sw sp, 224(ra)<br>  |
|  58|[0x800042e8]<br>0xFF76DFCA|- rs1_val == -2049<br>                                                                             |[0x800010f4]:c.beqz a0, 239<br> [0x800010f6]:addi sp, sp, 2<br> [0x800010fa]:jal zero, 6<br> [0x80001100]:sw sp, 228(ra)<br>  |
|  59|[0x800042ec]<br>0xFF76DFCC|- rs1_val == -4097<br>                                                                             |[0x80001134]:c.beqz a0, 239<br> [0x80001136]:addi sp, sp, 2<br> [0x8000113a]:jal zero, 6<br> [0x80001140]:sw sp, 232(ra)<br>  |
|  60|[0x800042f0]<br>0xFF76DFCE|- rs1_val == -8193<br>                                                                             |[0x800011fe]:c.beqz a0, 170<br> [0x80001200]:addi sp, sp, 2<br> [0x80001204]:jal zero, 6<br> [0x8000120a]:sw sp, 236(ra)<br>  |
|  61|[0x800042f4]<br>0xFF76DFD0|- rs1_val == -16385<br>                                                                            |[0x80001224]:c.beqz a0, 252<br> [0x80001226]:addi sp, sp, 2<br> [0x8000122a]:jal zero, 6<br> [0x80001230]:sw sp, 240(ra)<br>  |
|  62|[0x800042f8]<br>0xFF76DFD2|- rs1_val == -32769<br>                                                                            |[0x800012c2]:c.beqz a0, 192<br> [0x800012c4]:addi sp, sp, 2<br> [0x800012c8]:jal zero, 6<br> [0x800012ce]:sw sp, 244(ra)<br>  |
|  63|[0x800042fc]<br>0xFF76DFD4|- rs1_val == -65537<br>                                                                            |[0x800012e8]:c.beqz a0, 252<br> [0x800012ea]:addi sp, sp, 2<br> [0x800012ee]:jal zero, 6<br> [0x800012f4]:sw sp, 248(ra)<br>  |
|  64|[0x80004300]<br>0xFF76DFD6|- rs1_val == -131073<br>                                                                           |[0x8000130e]:c.beqz a0, 63<br> [0x80001310]:addi sp, sp, 2<br> [0x80001314]:jal zero, 122<br> [0x8000138e]:sw sp, 252(ra)<br> |
|  65|[0x80004304]<br>0xFF76DFD8|- rs1_val == -262145<br>                                                                           |[0x800013a8]:c.beqz a0, 5<br> [0x800013aa]:addi sp, sp, 2<br> [0x800013ae]:jal zero, 6<br> [0x800013b4]:sw sp, 256(ra)<br>    |
|  66|[0x80004308]<br>0xFF76DFDA|- rs1_val == -524289<br>                                                                           |[0x800013ce]:c.beqz a0, 252<br> [0x800013d0]:addi sp, sp, 2<br> [0x800013d4]:jal zero, 6<br> [0x800013da]:sw sp, 260(ra)<br>  |
|  67|[0x8000430c]<br>0xFF76DFDC|- rs1_val == -1048577<br>                                                                          |[0x800013fe]:c.beqz a0, 247<br> [0x80001400]:addi sp, sp, 2<br> [0x80001404]:jal zero, 6<br> [0x8000140a]:sw sp, 264(ra)<br>  |
|  68|[0x80004310]<br>0xFF76DFDE|- rs1_val == -2097153<br>                                                                          |[0x80001424]:c.beqz a0, 6<br> [0x80001426]:addi sp, sp, 2<br> [0x8000142a]:jal zero, 8<br> [0x80001432]:sw sp, 268(ra)<br>    |
|  69|[0x80004314]<br>0xFF76DFE0|- rs1_val == -4194305<br>                                                                          |[0x8000144c]:c.beqz a0, 252<br> [0x8000144e]:addi sp, sp, 2<br> [0x80001452]:jal zero, 6<br> [0x80001458]:sw sp, 272(ra)<br>  |
