
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001290')]      |
| SIG_REGION                | [('0x80004204', '0x80004314', '68 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 84     |
| Total Coverpoints Hit     | 84      |
| Total Signature Updates   | 68      |
| STAT1                     | 68      |
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

|s.no|        signature         |                                                  coverpoints                                                  |                                                             code                                                             |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004204]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x13<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 262144<br>                |[0x80000112]:c.beqz a3, 32<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 60<br> [0x80000154]:sw sp, 0(ra)<br>    |
|   2|[0x80004208]<br>0xFF76DF5A|- rs1 : x8<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -67108865<br>                                    |[0x8000016e]:c.beqz s0, 5<br> [0x80000170]:addi sp, sp, 2<br> [0x80000174]:jal zero, 6<br> [0x8000017a]:sw sp, 4(ra)<br>      |
|   3|[0x8000420c]<br>0xFF76DF5D|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                          |[0x80000190]:c.beqz a5, 16<br> [0x800001b0]:c.addi sp, 3<br> [0x800001b2]:sw sp, 8(ra)<br>                                    |
|   4|[0x80004210]<br>0xFF76DF5F|- rs1 : x14<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br>                                           |[0x80000202]:c.beqz a4, 223<br> [0x80000204]:addi sp, sp, 2<br> [0x80000208]:jal zero, 6<br> [0x8000020e]:sw sp, 12(ra)<br>   |
|   5|[0x80004214]<br>0xFF76DF61|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x80000224]:c.beqz a2, 252<br> [0x80000226]:addi sp, sp, 2<br> [0x8000022a]:jal zero, 6<br> [0x80000230]:sw sp, 16(ra)<br>   |
|   6|[0x80004218]<br>0xFF76DF62|- rs1 : x10<br> - rs1_val == 0 and imm_val < 0<br>                                                             |[0x80000246]:c.beqz a0, 252<br> [0x8000023e]:addi sp, sp, 1<br> [0x80000242]:jal zero, 16<br> [0x80000252]:sw sp, 20(ra)<br>  |
|   7|[0x8000421c]<br>0xFF76DF64|- rs1 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                    |[0x80000278]:c.beqz s1, 246<br> [0x8000027a]:addi sp, sp, 2<br> [0x8000027e]:jal zero, 6<br> [0x80000284]:sw sp, 24(ra)<br>   |
|   8|[0x80004220]<br>0xFF76DF66|- rs1 : x11<br> - rs1_val == 2<br>                                                                             |[0x8000029a]:c.beqz a1, 85<br> [0x8000029c]:addi sp, sp, 2<br> [0x800002a0]:jal zero, 166<br> [0x80000346]:sw sp, 28(ra)<br>  |
|   9|[0x80004224]<br>0xFF76DF68|- rs1_val == 4<br>                                                                                             |[0x80000396]:c.beqz a0, 223<br> [0x80000398]:addi sp, sp, 2<br> [0x8000039c]:jal zero, 6<br> [0x800003a2]:sw sp, 32(ra)<br>   |
|  10|[0x80004228]<br>0xFF76DF6A|- rs1_val == 8<br>                                                                                             |[0x800003b8]:c.beqz a0, 6<br> [0x800003ba]:addi sp, sp, 2<br> [0x800003be]:jal zero, 8<br> [0x800003c6]:sw sp, 36(ra)<br>     |
|  11|[0x8000422c]<br>0xFF76DF6C|- rs1_val == 16<br>                                                                                            |[0x800003dc]:c.beqz a0, 85<br> [0x800003de]:addi sp, sp, 2<br> [0x800003e2]:jal zero, 166<br> [0x80000488]:sw sp, 40(ra)<br>  |
|  12|[0x80004230]<br>0xFF76DF6E|- rs1_val == 32<br>                                                                                            |[0x800004a0]:c.beqz a0, 251<br> [0x800004a2]:addi sp, sp, 2<br> [0x800004a6]:jal zero, 6<br> [0x800004ac]:sw sp, 44(ra)<br>   |
|  13|[0x80004234]<br>0xFF76DF70|- rs1_val == 64<br>                                                                                            |[0x800004c2]:c.beqz a0, 5<br> [0x800004c4]:addi sp, sp, 2<br> [0x800004c8]:jal zero, 6<br> [0x800004ce]:sw sp, 48(ra)<br>     |
|  14|[0x80004238]<br>0xFF76DF72|- rs1_val == 128<br>                                                                                           |[0x800004e4]:c.beqz a0, 85<br> [0x800004e6]:addi sp, sp, 2<br> [0x800004ea]:jal zero, 166<br> [0x80000590]:sw sp, 52(ra)<br>  |
|  15|[0x8000423c]<br>0xFF76DF74|- rs1_val == 256<br>                                                                                           |[0x800005a6]:c.beqz a0, 5<br> [0x800005a8]:addi sp, sp, 2<br> [0x800005ac]:jal zero, 6<br> [0x800005b2]:sw sp, 56(ra)<br>     |
|  16|[0x80004240]<br>0xFF76DF76|- rs1_val == 512<br>                                                                                           |[0x800005c8]:c.beqz a0, 8<br> [0x800005ca]:addi sp, sp, 2<br> [0x800005ce]:jal zero, 12<br> [0x800005da]:sw sp, 60(ra)<br>    |
|  17|[0x80004244]<br>0xFF76DF78|- rs1_val == 1024<br>                                                                                          |[0x800005f0]:c.beqz a0, 85<br> [0x800005f2]:addi sp, sp, 2<br> [0x800005f6]:jal zero, 166<br> [0x8000069c]:sw sp, 64(ra)<br>  |
|  18|[0x80004248]<br>0xFF76DF7A|- rs1_val == 2048<br>                                                                                          |[0x8000072e]:c.beqz a0, 192<br> [0x80000730]:addi sp, sp, 2<br> [0x80000734]:jal zero, 6<br> [0x8000073a]:sw sp, 68(ra)<br>   |
|  19|[0x8000424c]<br>0xFF76DF7C|- rs1_val == 4096<br>                                                                                          |[0x8000076a]:c.beqz a0, 239<br> [0x8000076c]:addi sp, sp, 2<br> [0x80000770]:jal zero, 6<br> [0x80000776]:sw sp, 72(ra)<br>   |
|  20|[0x80004250]<br>0xFF76DF7E|- rs1_val == 8192<br>                                                                                          |[0x8000078c]:c.beqz a0, 5<br> [0x8000078e]:addi sp, sp, 2<br> [0x80000792]:jal zero, 6<br> [0x80000798]:sw sp, 76(ra)<br>     |
|  21|[0x80004254]<br>0xFF76DF80|- rs1_val == 16384<br>                                                                                         |[0x800007ae]:c.beqz a0, 63<br> [0x800007b0]:addi sp, sp, 2<br> [0x800007b4]:jal zero, 122<br> [0x8000082e]:sw sp, 80(ra)<br>  |
|  22|[0x80004258]<br>0xFF76DF82|- rs1_val == 32768<br>                                                                                         |[0x80000844]:c.beqz a0, 252<br> [0x80000846]:addi sp, sp, 2<br> [0x8000084a]:jal zero, 6<br> [0x80000850]:sw sp, 84(ra)<br>   |
|  23|[0x8000425c]<br>0xFF76DF84|- rs1_val == 65536<br>                                                                                         |[0x80000866]:c.beqz a0, 6<br> [0x80000868]:addi sp, sp, 2<br> [0x8000086c]:jal zero, 8<br> [0x80000874]:sw sp, 88(ra)<br>     |
|  24|[0x80004260]<br>0xFF76DF86|- rs1_val == 131072<br>                                                                                        |[0x8000088a]:c.beqz a0, 252<br> [0x8000088c]:addi sp, sp, 2<br> [0x80000890]:jal zero, 6<br> [0x80000896]:sw sp, 92(ra)<br>   |
|  25|[0x80004264]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                        |[0x800008ac]:c.beqz a0, 5<br> [0x800008ae]:addi sp, sp, 2<br> [0x800008b2]:jal zero, 6<br> [0x800008b8]:sw sp, 96(ra)<br>     |
|  26|[0x80004268]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                                       |[0x800008ce]:c.beqz a0, 5<br> [0x800008d0]:addi sp, sp, 2<br> [0x800008d4]:jal zero, 6<br> [0x800008da]:sw sp, 100(ra)<br>    |
|  27|[0x8000426c]<br>0xFF76DF8C|- rs1_val == 2097152<br>                                                                                       |[0x80000968]:c.beqz a0, 192<br> [0x8000096a]:addi sp, sp, 2<br> [0x8000096e]:jal zero, 6<br> [0x80000974]:sw sp, 104(ra)<br>  |
|  28|[0x80004270]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                                       |[0x8000098e]:c.beqz a0, 250<br> [0x80000990]:addi sp, sp, 2<br> [0x80000994]:jal zero, 6<br> [0x8000099a]:sw sp, 108(ra)<br>  |
|  29|[0x80004274]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                       |[0x800009bc]:c.beqz a0, 246<br> [0x800009be]:addi sp, sp, 2<br> [0x800009c2]:jal zero, 6<br> [0x800009c8]:sw sp, 112(ra)<br>  |
|  30|[0x80004278]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                      |[0x800009de]:c.beqz a0, 7<br> [0x800009e0]:addi sp, sp, 2<br> [0x800009e4]:jal zero, 10<br> [0x800009ee]:sw sp, 116(ra)<br>   |
|  31|[0x8000427c]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                      |[0x80000a1e]:c.beqz a0, 239<br> [0x80000a20]:addi sp, sp, 2<br> [0x80000a24]:jal zero, 6<br> [0x80000a2a]:sw sp, 120(ra)<br>  |
|  32|[0x80004280]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                      |[0x80000a40]:c.beqz a0, 6<br> [0x80000a42]:addi sp, sp, 2<br> [0x80000a46]:jal zero, 8<br> [0x80000a4e]:sw sp, 124(ra)<br>    |
|  33|[0x80004284]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                     |[0x80000a64]:c.beqz a0, 8<br> [0x80000a66]:addi sp, sp, 2<br> [0x80000a6a]:jal zero, 12<br> [0x80000a76]:sw sp, 128(ra)<br>   |
|  34|[0x80004288]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                     |[0x80000a8c]:c.beqz a0, 63<br> [0x80000a8e]:addi sp, sp, 2<br> [0x80000a92]:jal zero, 122<br> [0x80000b0c]:sw sp, 132(ra)<br> |
|  35|[0x8000428c]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                     |[0x80000b22]:c.beqz a0, 8<br> [0x80000b24]:addi sp, sp, 2<br> [0x80000b28]:jal zero, 12<br> [0x80000b34]:sw sp, 136(ra)<br>   |
|  36|[0x80004290]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                    |[0x80000b4a]:c.beqz a0, 32<br> [0x80000b4c]:addi sp, sp, 2<br> [0x80000b50]:jal zero, 60<br> [0x80000b8c]:sw sp, 140(ra)<br>  |
|  37|[0x80004294]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                            |[0x80000ba2]:c.beqz a0, 5<br> [0x80000ba4]:addi sp, sp, 2<br> [0x80000ba8]:jal zero, 6<br> [0x80000bae]:sw sp, 144(ra)<br>    |
|  38|[0x80004298]<br>0xFF76DFA2|- rs1_val == -8388609<br>                                                                                      |[0x80000c42]:c.beqz a0, 191<br> [0x80000c44]:addi sp, sp, 2<br> [0x80000c48]:jal zero, 6<br> [0x80000c4e]:sw sp, 148(ra)<br>  |
|  39|[0x8000429c]<br>0xFF76DFA4|- rs1_val == -16777217<br>                                                                                     |[0x80000c68]:c.beqz a0, 8<br> [0x80000c6a]:addi sp, sp, 2<br> [0x80000c6e]:jal zero, 12<br> [0x80000c7a]:sw sp, 152(ra)<br>   |
|  40|[0x800042a0]<br>0xFF76DFA6|- rs1_val == -33554433<br>                                                                                     |[0x80000c94]:c.beqz a0, 252<br> [0x80000c96]:addi sp, sp, 2<br> [0x80000c9a]:jal zero, 6<br> [0x80000ca0]:sw sp, 156(ra)<br>  |
|  41|[0x800042a4]<br>0xFF76DFA8|- rs1_val == -134217729<br>                                                                                    |[0x80000cba]:c.beqz a0, 5<br> [0x80000cbc]:addi sp, sp, 2<br> [0x80000cc0]:jal zero, 6<br> [0x80000cc6]:sw sp, 160(ra)<br>    |
|  42|[0x800042a8]<br>0xFF76DFAA|- rs1_val == -268435457<br>                                                                                    |[0x80000ce0]:c.beqz a0, 7<br> [0x80000ce2]:addi sp, sp, 2<br> [0x80000ce6]:jal zero, 10<br> [0x80000cf0]:sw sp, 164(ra)<br>   |
|  43|[0x800042ac]<br>0xFF76DFAC|- rs1_val == -536870913<br>                                                                                    |[0x80000d0a]:c.beqz a0, 6<br> [0x80000d0c]:addi sp, sp, 2<br> [0x80000d10]:jal zero, 8<br> [0x80000d18]:sw sp, 168(ra)<br>    |
|  44|[0x800042b0]<br>0xFF76DFAE|- rs1_val == -1073741825<br>                                                                                   |[0x80000d32]:c.beqz a0, 252<br> [0x80000d34]:addi sp, sp, 2<br> [0x80000d38]:jal zero, 6<br> [0x80000d3e]:sw sp, 172(ra)<br>  |
|  45|[0x800042b4]<br>0xFF76DFB0|- rs1_val == 1431655765<br>                                                                                    |[0x80000d58]:c.beqz a0, 7<br> [0x80000d5a]:addi sp, sp, 2<br> [0x80000d5e]:jal zero, 10<br> [0x80000d68]:sw sp, 176(ra)<br>   |
|  46|[0x800042b8]<br>0xFF76DFB2|- rs1_val == -1431655766<br>                                                                                   |[0x80000d82]:c.beqz a0, 5<br> [0x80000d84]:addi sp, sp, 2<br> [0x80000d88]:jal zero, 6<br> [0x80000d8e]:sw sp, 180(ra)<br>    |
|  47|[0x800042bc]<br>0xFF76DFB4|- rs1_val == -3<br>                                                                                            |[0x80000da4]:c.beqz a0, 7<br> [0x80000da6]:addi sp, sp, 2<br> [0x80000daa]:jal zero, 10<br> [0x80000db4]:sw sp, 184(ra)<br>   |
|  48|[0x800042c0]<br>0xFF76DFB6|- rs1_val == -5<br>                                                                                            |[0x80000dca]:c.beqz a0, 5<br> [0x80000dcc]:addi sp, sp, 2<br> [0x80000dd0]:jal zero, 6<br> [0x80000dd6]:sw sp, 188(ra)<br>    |
|  49|[0x800042c4]<br>0xFF76DFB8|- rs1_val == -9<br>                                                                                            |[0x80000df8]:c.beqz a0, 246<br> [0x80000dfa]:addi sp, sp, 2<br> [0x80000dfe]:jal zero, 6<br> [0x80000e04]:sw sp, 192(ra)<br>  |
|  50|[0x800042c8]<br>0xFF76DFBA|- rs1_val == -17<br>                                                                                           |[0x80000e92]:c.beqz a0, 192<br> [0x80000e94]:addi sp, sp, 2<br> [0x80000e98]:jal zero, 6<br> [0x80000e9e]:sw sp, 196(ra)<br>  |
|  51|[0x800042cc]<br>0xFF76DFBC|- rs1_val == -33<br>                                                                                           |[0x80000eb4]:c.beqz a0, 9<br> [0x80000eb6]:addi sp, sp, 2<br> [0x80000eba]:jal zero, 14<br> [0x80000ec8]:sw sp, 200(ra)<br>   |
|  52|[0x800042d0]<br>0xFF76DFBE|- rs1_val == -65<br>                                                                                           |[0x80000ede]:c.beqz a0, 7<br> [0x80000ee0]:addi sp, sp, 2<br> [0x80000ee4]:jal zero, 10<br> [0x80000eee]:sw sp, 204(ra)<br>   |
|  53|[0x800042d4]<br>0xFF76DFC0|- rs1_val == -129<br>                                                                                          |[0x80000f04]:c.beqz a0, 7<br> [0x80000f06]:addi sp, sp, 2<br> [0x80000f0a]:jal zero, 10<br> [0x80000f14]:sw sp, 208(ra)<br>   |
|  54|[0x800042d8]<br>0xFF76DFC2|- rs1_val == -257<br>                                                                                          |[0x80000f30]:c.beqz a0, 249<br> [0x80000f32]:addi sp, sp, 2<br> [0x80000f36]:jal zero, 6<br> [0x80000f3c]:sw sp, 212(ra)<br>  |
|  55|[0x800042dc]<br>0xFF76DFC4|- rs1_val == -513<br>                                                                                          |[0x80000f52]:c.beqz a0, 63<br> [0x80000f54]:addi sp, sp, 2<br> [0x80000f58]:jal zero, 122<br> [0x80000fd2]:sw sp, 216(ra)<br> |
|  56|[0x800042e0]<br>0xFF76DFC6|- rs1_val == -1025<br>                                                                                         |[0x80000fe8]:c.beqz a0, 7<br> [0x80000fea]:addi sp, sp, 2<br> [0x80000fee]:jal zero, 10<br> [0x80000ff8]:sw sp, 220(ra)<br>   |
|  57|[0x800042e4]<br>0xFF76DFC8|- rs1_val == -2049<br>                                                                                         |[0x80001012]:c.beqz a0, 252<br> [0x80001014]:addi sp, sp, 2<br> [0x80001018]:jal zero, 6<br> [0x8000101e]:sw sp, 224(ra)<br>  |
|  58|[0x800042e8]<br>0xFF76DFCA|- rs1_val == -4097<br>                                                                                         |[0x80001038]:c.beqz a0, 8<br> [0x8000103a]:addi sp, sp, 2<br> [0x8000103e]:jal zero, 12<br> [0x8000104a]:sw sp, 228(ra)<br>   |
|  59|[0x800042ec]<br>0xFF76DFCC|- rs1_val == -8193<br>                                                                                         |[0x80001064]:c.beqz a0, 8<br> [0x80001066]:addi sp, sp, 2<br> [0x8000106a]:jal zero, 12<br> [0x80001076]:sw sp, 232(ra)<br>   |
|  60|[0x800042f0]<br>0xFF76DFCE|- rs1_val == -16385<br>                                                                                        |[0x80001096]:c.beqz a0, 249<br> [0x80001098]:addi sp, sp, 2<br> [0x8000109c]:jal zero, 6<br> [0x800010a2]:sw sp, 236(ra)<br>  |
|  61|[0x800042f4]<br>0xFF76DFD0|- rs1_val == -32769<br>                                                                                        |[0x800010d6]:c.beqz a0, 239<br> [0x800010d8]:addi sp, sp, 2<br> [0x800010dc]:jal zero, 6<br> [0x800010e2]:sw sp, 240(ra)<br>  |
|  62|[0x800042f8]<br>0xFF76DFD2|- rs1_val == -65537<br>                                                                                        |[0x800010fc]:c.beqz a0, 7<br> [0x800010fe]:addi sp, sp, 2<br> [0x80001102]:jal zero, 10<br> [0x8000110c]:sw sp, 244(ra)<br>   |
|  63|[0x800042fc]<br>0xFF76DFD4|- rs1_val == -131073<br>                                                                                       |[0x80001126]:c.beqz a0, 252<br> [0x80001128]:addi sp, sp, 2<br> [0x8000112c]:jal zero, 6<br> [0x80001132]:sw sp, 248(ra)<br>  |
|  64|[0x80004300]<br>0xFF76DFD6|- rs1_val == -262145<br>                                                                                       |[0x800011c4]:c.beqz a0, 192<br> [0x800011c6]:addi sp, sp, 2<br> [0x800011ca]:jal zero, 6<br> [0x800011d0]:sw sp, 252(ra)<br>  |
|  65|[0x80004304]<br>0xFF76DFD8|- rs1_val == -524289<br>                                                                                       |[0x800011f4]:c.beqz a0, 247<br> [0x800011f6]:addi sp, sp, 2<br> [0x800011fa]:jal zero, 6<br> [0x80001200]:sw sp, 256(ra)<br>  |
|  66|[0x80004308]<br>0xFF76DFDA|- rs1_val == -1048577<br>                                                                                      |[0x8000121a]:c.beqz a0, 16<br> [0x8000121c]:addi sp, sp, 2<br> [0x80001220]:jal zero, 28<br> [0x8000123c]:sw sp, 260(ra)<br>  |
|  67|[0x8000430c]<br>0xFF76DFDC|- rs1_val == -2097153<br>                                                                                      |[0x80001256]:c.beqz a0, 5<br> [0x80001258]:addi sp, sp, 2<br> [0x8000125c]:jal zero, 6<br> [0x80001262]:sw sp, 264(ra)<br>    |
|  68|[0x80004310]<br>0xFF76DFDE|- rs1_val == -4194305<br>                                                                                      |[0x8000127c]:c.beqz a0, 6<br> [0x8000127e]:addi sp, sp, 2<br> [0x80001282]:jal zero, 8<br> [0x8000128a]:sw sp, 268(ra)<br>    |
