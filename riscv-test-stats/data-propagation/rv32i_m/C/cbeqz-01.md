
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001ca0')]      |
| SIG_REGION                | [('0x80003010', '0x80003170', '88 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 106     |
| Total Coverpoints Hit     | 106      |
| Total Signature Updates   | 85      |
| STAT1                     | 85      |
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

|s.no|        signature         |                                                             coverpoints                                                             |                                                             code                                                             |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483648<br> |[0x80000112]:c.beqz a3, 5<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 6<br> [0x8000011e]:sw sp, 0(ra)<br>      |
|   2|[0x80003014]<br>0xFF76DF5B|- rs1 : x10<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br> - rs1_val==0<br>                                               |[0x80000134]:c.beqz a0, 5<br> [0x8000013e]:c.addi sp, 3<br> [0x80000140]:sw sp, 4(ra)<br>                                     |
|   3|[0x80003018]<br>0xFF76DF5D|- rs1 : x11<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2147483647<br>                       |[0x8000015a]:c.beqz a1, 6<br> [0x8000015c]:addi sp, sp, 2<br> [0x80000160]:jal zero, 8<br> [0x80000168]:sw sp, 8(ra)<br>      |
|   4|[0x8000301c]<br>0xFF76DF5F|- rs1 : x9<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br>                                                                  |[0x80000182]:c.beqz s1, 250<br> [0x80000184]:addi sp, sp, 2<br> [0x80000188]:jal zero, 6<br> [0x8000018e]:sw sp, 12(ra)<br>   |
|   5|[0x80003020]<br>0xFF76DF61|- rs1 : x8<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2097153<br>                                                           |[0x800001e2]:c.beqz s0, 223<br> [0x800001e4]:addi sp, sp, 2<br> [0x800001e8]:jal zero, 6<br> [0x800001ee]:sw sp, 16(ra)<br>   |
|   6|[0x80003024]<br>0xFF76DF62|- rs1 : x14<br> - rs1_val == 0 and imm_val < 0<br>                                                                                   |[0x80000206]:c.beqz a4, 251<br> [0x800001fc]:addi sp, sp, 1<br> [0x80000200]:jal zero, 18<br> [0x80000212]:sw sp, 20(ra)<br>  |
|   7|[0x80003028]<br>0xFF76DF64|- rs1 : x12<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                  |[0x8000022a]:c.beqz a2, 251<br> [0x8000022c]:addi sp, sp, 2<br> [0x80000230]:jal zero, 6<br> [0x80000236]:sw sp, 24(ra)<br>   |
|   8|[0x8000302c]<br>0xFF76DF66|- rs1 : x15<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x8000024c]:c.beqz a5, 85<br> [0x8000024e]:addi sp, sp, 2<br> [0x80000252]:jal zero, 166<br> [0x800002f8]:sw sp, 28(ra)<br>  |
|   9|[0x80003030]<br>0xFF76DF68|- rs1_val == 8<br>                                                                                                                   |[0x80000310]:c.beqz a0, 251<br> [0x80000312]:addi sp, sp, 2<br> [0x80000316]:jal zero, 6<br> [0x8000031c]:sw sp, 32(ra)<br>   |
|  10|[0x80003034]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                  |[0x80000332]:c.beqz a0, 16<br> [0x80000334]:addi sp, sp, 2<br> [0x80000338]:jal zero, 28<br> [0x80000354]:sw sp, 36(ra)<br>   |
|  11|[0x80003038]<br>0xFF76DF6C|- rs1_val == 32<br>                                                                                                                  |[0x80000372]:c.beqz a0, 248<br> [0x80000374]:addi sp, sp, 2<br> [0x80000378]:jal zero, 6<br> [0x8000037e]:sw sp, 40(ra)<br>   |
|  12|[0x8000303c]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                  |[0x800003ce]:c.beqz a0, 223<br> [0x800003d0]:addi sp, sp, 2<br> [0x800003d4]:jal zero, 6<br> [0x800003da]:sw sp, 44(ra)<br>   |
|  13|[0x80003040]<br>0xFF76DF70|- rs1_val == 128<br>                                                                                                                 |[0x800003f0]:c.beqz a0, 5<br> [0x800003f2]:addi sp, sp, 2<br> [0x800003f6]:jal zero, 6<br> [0x800003fc]:sw sp, 48(ra)<br>     |
|  14|[0x80003044]<br>0xFF76DF72|- rs1_val == 256<br>                                                                                                                 |[0x80000412]:c.beqz a0, 252<br> [0x80000414]:addi sp, sp, 2<br> [0x80000418]:jal zero, 6<br> [0x8000041e]:sw sp, 52(ra)<br>   |
|  15|[0x80003048]<br>0xFF76DF74|- rs1_val == 512<br>                                                                                                                 |[0x80000434]:c.beqz a0, 6<br> [0x80000436]:addi sp, sp, 2<br> [0x8000043a]:jal zero, 8<br> [0x80000442]:sw sp, 56(ra)<br>     |
|  16|[0x8000304c]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                                |[0x80000458]:c.beqz a0, 85<br> [0x8000045a]:addi sp, sp, 2<br> [0x8000045e]:jal zero, 166<br> [0x80000504]:sw sp, 60(ra)<br>  |
|  17|[0x80003050]<br>0xFF76DF78|- rs1_val == 2048<br>                                                                                                                |[0x80000524]:c.beqz a0, 249<br> [0x80000526]:addi sp, sp, 2<br> [0x8000052a]:jal zero, 6<br> [0x80000530]:sw sp, 64(ra)<br>   |
|  18|[0x80003054]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                                |[0x800005be]:c.beqz a0, 192<br> [0x800005c0]:addi sp, sp, 2<br> [0x800005c4]:jal zero, 6<br> [0x800005ca]:sw sp, 68(ra)<br>   |
|  19|[0x80003058]<br>0xFF76DF7C|- rs1_val == 8192<br>                                                                                                                |[0x800005e2]:c.beqz a0, 251<br> [0x800005e4]:addi sp, sp, 2<br> [0x800005e8]:jal zero, 6<br> [0x800005ee]:sw sp, 72(ra)<br>   |
|  20|[0x8000305c]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                                                               |[0x8000063e]:c.beqz a0, 223<br> [0x80000640]:addi sp, sp, 2<br> [0x80000644]:jal zero, 6<br> [0x8000064a]:sw sp, 76(ra)<br>   |
|  21|[0x80003060]<br>0xFF76DF80|- rs1_val == 32768<br>                                                                                                               |[0x80000660]:c.beqz a0, 5<br> [0x80000662]:addi sp, sp, 2<br> [0x80000666]:jal zero, 6<br> [0x8000066c]:sw sp, 80(ra)<br>     |
|  22|[0x80003064]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                                                               |[0x80000682]:c.beqz a0, 16<br> [0x80000684]:addi sp, sp, 2<br> [0x80000688]:jal zero, 28<br> [0x800006a4]:sw sp, 84(ra)<br>   |
|  23|[0x80003068]<br>0xFF76DF84|- rs1_val == 131072<br>                                                                                                              |[0x800006ba]:c.beqz a0, 32<br> [0x800006bc]:addi sp, sp, 2<br> [0x800006c0]:jal zero, 60<br> [0x800006fc]:sw sp, 88(ra)<br>   |
|  24|[0x8000306c]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                                                              |[0x80000712]:c.beqz a0, 252<br> [0x80000714]:addi sp, sp, 2<br> [0x80000718]:jal zero, 6<br> [0x8000071e]:sw sp, 92(ra)<br>   |
|  25|[0x80003070]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                                              |[0x8000073e]:c.beqz a0, 247<br> [0x80000740]:addi sp, sp, 2<br> [0x80000744]:jal zero, 6<br> [0x8000074a]:sw sp, 96(ra)<br>   |
|  26|[0x80003074]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                                                             |[0x80000760]:c.beqz a0, 16<br> [0x80000762]:addi sp, sp, 2<br> [0x80000766]:jal zero, 28<br> [0x80000782]:sw sp, 100(ra)<br>  |
|  27|[0x80003078]<br>0xFF76DF8C|- rs1_val == 2097152<br>                                                                                                             |[0x80000798]:c.beqz a0, 252<br> [0x8000079a]:addi sp, sp, 2<br> [0x8000079e]:jal zero, 6<br> [0x800007a4]:sw sp, 104(ra)<br>  |
|  28|[0x8000307c]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                                                             |[0x800007d4]:c.beqz a0, 239<br> [0x800007d6]:addi sp, sp, 2<br> [0x800007da]:jal zero, 6<br> [0x800007e0]:sw sp, 108(ra)<br>  |
|  29|[0x80003080]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                                             |[0x800007f6]:c.beqz a0, 252<br> [0x800007f8]:addi sp, sp, 2<br> [0x800007fc]:jal zero, 6<br> [0x80000802]:sw sp, 112(ra)<br>  |
|  30|[0x80003084]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                                            |[0x80000822]:c.beqz a0, 247<br> [0x80000824]:addi sp, sp, 2<br> [0x80000828]:jal zero, 6<br> [0x8000082e]:sw sp, 116(ra)<br>  |
|  31|[0x80003088]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                                            |[0x80000844]:c.beqz a0, 85<br> [0x80000846]:addi sp, sp, 2<br> [0x8000084a]:jal zero, 166<br> [0x800008f0]:sw sp, 120(ra)<br> |
|  32|[0x8000308c]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                                            |[0x800009aa]:c.beqz a0, 170<br> [0x800009ac]:addi sp, sp, 2<br> [0x800009b0]:jal zero, 6<br> [0x800009b6]:sw sp, 124(ra)<br>  |
|  33|[0x80003090]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                                           |[0x80000a70]:c.beqz a0, 170<br> [0x80000a72]:addi sp, sp, 2<br> [0x80000a76]:jal zero, 6<br> [0x80000a7c]:sw sp, 128(ra)<br>  |
|  34|[0x80003094]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                                           |[0x80000a98]:c.beqz a0, 249<br> [0x80000a9a]:addi sp, sp, 2<br> [0x80000a9e]:jal zero, 6<br> [0x80000aa4]:sw sp, 132(ra)<br>  |
|  35|[0x80003098]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                                           |[0x80000aba]:c.beqz a0, 64<br> [0x80000abc]:addi sp, sp, 2<br> [0x80000ac0]:jal zero, 124<br> [0x80000b3c]:sw sp, 136(ra)<br> |
|  36|[0x8000309c]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                                          |[0x80000b52]:c.beqz a0, 7<br> [0x80000b54]:addi sp, sp, 2<br> [0x80000b58]:jal zero, 10<br> [0x80000b62]:sw sp, 140(ra)<br>   |
|  37|[0x800030a0]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                                                  |[0x80000bf2]:c.beqz a0, 191<br> [0x80000bf4]:addi sp, sp, 2<br> [0x80000bf8]:jal zero, 6<br> [0x80000bfe]:sw sp, 144(ra)<br>  |
|  38|[0x800030a4]<br>0xFF76DFA2|- rs1_val == -3<br>                                                                                                                  |[0x80000c16]:c.beqz a0, 251<br> [0x80000c18]:addi sp, sp, 2<br> [0x80000c1c]:jal zero, 6<br> [0x80000c22]:sw sp, 148(ra)<br>  |
|  39|[0x800030a8]<br>0xFF76DFA4|- rs1_val == -5<br>                                                                                                                  |[0x80000c38]:c.beqz a0, 5<br> [0x80000c3a]:addi sp, sp, 2<br> [0x80000c3e]:jal zero, 6<br> [0x80000c44]:sw sp, 152(ra)<br>    |
|  40|[0x800030ac]<br>0xFF76DFA6|- rs1_val == -9<br>                                                                                                                  |[0x80000c5a]:c.beqz a0, 5<br> [0x80000c5c]:addi sp, sp, 2<br> [0x80000c60]:jal zero, 6<br> [0x80000c66]:sw sp, 156(ra)<br>    |
|  41|[0x800030b0]<br>0xFF76DFA8|- rs1_val == -17<br>                                                                                                                 |[0x80000c7c]:c.beqz a0, 8<br> [0x80000c7e]:addi sp, sp, 2<br> [0x80000c82]:jal zero, 12<br> [0x80000c8e]:sw sp, 160(ra)<br>   |
|  42|[0x800030b4]<br>0xFF76DFAA|- rs1_val == -33<br>                                                                                                                 |[0x80000cac]:c.beqz a0, 248<br> [0x80000cae]:addi sp, sp, 2<br> [0x80000cb2]:jal zero, 6<br> [0x80000cb8]:sw sp, 164(ra)<br>  |
|  43|[0x800030b8]<br>0xFF76DFAC|- rs1_val == -65<br>                                                                                                                 |[0x80000d46]:c.beqz a0, 192<br> [0x80000d48]:addi sp, sp, 2<br> [0x80000d4c]:jal zero, 6<br> [0x80000d52]:sw sp, 168(ra)<br>  |
|  44|[0x800030bc]<br>0xFF76DFAE|- rs1_val == -129<br>                                                                                                                |[0x80000d70]:c.beqz a0, 248<br> [0x80000d72]:addi sp, sp, 2<br> [0x80000d76]:jal zero, 6<br> [0x80000d7c]:sw sp, 172(ra)<br>  |
|  45|[0x800030c0]<br>0xFF76DFB0|- rs1_val == -257<br>                                                                                                                |[0x80000d92]:c.beqz a0, 252<br> [0x80000d94]:addi sp, sp, 2<br> [0x80000d98]:jal zero, 6<br> [0x80000d9e]:sw sp, 176(ra)<br>  |
|  46|[0x800030c4]<br>0xFF76DFB2|- rs1_val == -513<br>                                                                                                                |[0x80000dee]:c.beqz a0, 223<br> [0x80000df0]:addi sp, sp, 2<br> [0x80000df4]:jal zero, 6<br> [0x80000dfa]:sw sp, 180(ra)<br>  |
|  47|[0x800030c8]<br>0xFF76DFB4|- rs1_val == -1025<br>                                                                                                               |[0x80000e1a]:c.beqz a0, 247<br> [0x80000e1c]:addi sp, sp, 2<br> [0x80000e20]:jal zero, 6<br> [0x80000e26]:sw sp, 184(ra)<br>  |
|  48|[0x800030cc]<br>0xFF76DFB6|- rs1_val == -2049<br>                                                                                                               |[0x80000e40]:c.beqz a0, 64<br> [0x80000e42]:addi sp, sp, 2<br> [0x80000e46]:jal zero, 124<br> [0x80000ec2]:sw sp, 188(ra)<br> |
|  49|[0x800030d0]<br>0xFF76DFB8|- rs1_val == -4097<br>                                                                                                               |[0x80000ee8]:c.beqz a0, 246<br> [0x80000eea]:addi sp, sp, 2<br> [0x80000eee]:jal zero, 6<br> [0x80000ef4]:sw sp, 192(ra)<br>  |
|  50|[0x800030d4]<br>0xFF76DFBA|- rs1_val == -8193<br>                                                                                                               |[0x80000f0e]:c.beqz a0, 8<br> [0x80000f10]:addi sp, sp, 2<br> [0x80000f14]:jal zero, 12<br> [0x80000f20]:sw sp, 196(ra)<br>   |
|  51|[0x800030d8]<br>0xFF76DFBC|- rs1_val == -16385<br>                                                                                                              |[0x80000f3a]:c.beqz a0, 7<br> [0x80000f3c]:addi sp, sp, 2<br> [0x80000f40]:jal zero, 10<br> [0x80000f4a]:sw sp, 200(ra)<br>   |
|  52|[0x800030dc]<br>0xFF76DFBE|- rs1_val == -32769<br>                                                                                                              |[0x80000f7e]:c.beqz a0, 239<br> [0x80000f80]:addi sp, sp, 2<br> [0x80000f84]:jal zero, 6<br> [0x80000f8a]:sw sp, 204(ra)<br>  |
|  53|[0x800030e0]<br>0xFF76DFC0|- rs1_val == -65537<br>                                                                                                              |[0x80000fa4]:c.beqz a0, 7<br> [0x80000fa6]:addi sp, sp, 2<br> [0x80000faa]:jal zero, 10<br> [0x80000fb4]:sw sp, 208(ra)<br>   |
|  54|[0x800030e4]<br>0xFF76DFC2|- rs1_val == -131073<br>                                                                                                             |[0x80000fce]:c.beqz a0, 32<br> [0x80000fd0]:addi sp, sp, 2<br> [0x80000fd4]:jal zero, 60<br> [0x80001010]:sw sp, 212(ra)<br>  |
|  55|[0x800030e8]<br>0xFF76DFC4|- rs1_val == -262145<br>                                                                                                             |[0x8000102a]:c.beqz a0, 63<br> [0x8000102c]:addi sp, sp, 2<br> [0x80001030]:jal zero, 122<br> [0x800010aa]:sw sp, 216(ra)<br> |
|  56|[0x800030ec]<br>0xFF76DFC6|- rs1_val == -524289<br>                                                                                                             |[0x800010c4]:c.beqz a0, 9<br> [0x800010c6]:addi sp, sp, 2<br> [0x800010ca]:jal zero, 14<br> [0x800010d8]:sw sp, 220(ra)<br>   |
|  57|[0x800030f0]<br>0xFF76DFC8|- rs1_val == -8388609<br>                                                                                                            |[0x800010fa]:c.beqz a0, 248<br> [0x800010fc]:addi sp, sp, 2<br> [0x80001100]:jal zero, 6<br> [0x80001106]:sw sp, 224(ra)<br>  |
|  58|[0x800030f4]<br>0xFF76DFCA|- rs1_val == -16777217<br>                                                                                                           |[0x80001120]:c.beqz a0, 5<br> [0x80001122]:addi sp, sp, 2<br> [0x80001126]:jal zero, 6<br> [0x8000112c]:sw sp, 228(ra)<br>    |
|  59|[0x800030f8]<br>0xFF76DFCC|- rs1_val == -33554433<br>                                                                                                           |[0x80001146]:c.beqz a0, 32<br> [0x80001148]:addi sp, sp, 2<br> [0x8000114c]:jal zero, 60<br> [0x80001188]:sw sp, 232(ra)<br>  |
|  60|[0x800030fc]<br>0xFF76DFCE|- rs1_val == -67108865<br>                                                                                                           |[0x80001246]:c.beqz a0, 170<br> [0x80001248]:addi sp, sp, 2<br> [0x8000124c]:jal zero, 6<br> [0x80001252]:sw sp, 236(ra)<br>  |
|  61|[0x80003100]<br>0xFF76DFD0|- rs1_val == -134217729<br>                                                                                                          |[0x8000126c]:c.beqz a0, 5<br> [0x8000126e]:addi sp, sp, 2<br> [0x80001272]:jal zero, 6<br> [0x80001278]:sw sp, 240(ra)<br>    |
|  62|[0x80003104]<br>0xFF76DFD2|- rs1_val == -268435457<br>                                                                                                          |[0x80001336]:c.beqz a0, 170<br> [0x80001338]:addi sp, sp, 2<br> [0x8000133c]:jal zero, 6<br> [0x80001342]:sw sp, 244(ra)<br>  |
|  63|[0x80003108]<br>0xFF76DFD4|- rs1_val == -536870913<br>                                                                                                          |[0x8000135e]:c.beqz a0, 251<br> [0x80001360]:addi sp, sp, 2<br> [0x80001364]:jal zero, 6<br> [0x8000136a]:sw sp, 248(ra)<br>  |
|  64|[0x8000310c]<br>0xFF76DFD6|- rs1_val == -1073741825<br>                                                                                                         |[0x80001384]:c.beqz a0, 64<br> [0x80001386]:addi sp, sp, 2<br> [0x8000138a]:jal zero, 124<br> [0x80001406]:sw sp, 252(ra)<br> |
|  65|[0x80003110]<br>0xFF76DFD8|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                |[0x800014c4]:c.beqz a0, 170<br> [0x800014c6]:addi sp, sp, 2<br> [0x800014ca]:jal zero, 6<br> [0x800014d0]:sw sp, 256(ra)<br>  |
|  66|[0x80003114]<br>0xFF76DFDA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                              |[0x80001504]:c.beqz a0, 239<br> [0x80001506]:addi sp, sp, 2<br> [0x8000150a]:jal zero, 6<br> [0x80001510]:sw sp, 260(ra)<br>  |
|  67|[0x80003118]<br>0xFF76DFDC|- rs1_val==3<br>                                                                                                                     |[0x80001526]:c.beqz a0, 85<br> [0x80001528]:addi sp, sp, 2<br> [0x8000152c]:jal zero, 166<br> [0x800015d2]:sw sp, 264(ra)<br> |
|  68|[0x8000311c]<br>0xFF76DFDE|- rs1_val==5<br>                                                                                                                     |[0x80001662]:c.beqz a0, 191<br> [0x80001664]:addi sp, sp, 2<br> [0x80001668]:jal zero, 6<br> [0x8000166e]:sw sp, 268(ra)<br>  |
|  69|[0x80003120]<br>0xFF76DFE0|- rs1_val==858993459<br>                                                                                                             |[0x80001688]:c.beqz a0, 5<br> [0x8000168a]:addi sp, sp, 2<br> [0x8000168e]:jal zero, 6<br> [0x80001694]:sw sp, 272(ra)<br>    |
|  70|[0x80003124]<br>0xFF76DFE2|- rs1_val==1717986918<br>                                                                                                            |[0x800016ae]:c.beqz a0, 6<br> [0x800016b0]:addi sp, sp, 2<br> [0x800016b4]:jal zero, 8<br> [0x800016bc]:sw sp, 276(ra)<br>    |
|  71|[0x80003128]<br>0xFF76DFE4|- rs1_val==46341<br>                                                                                                                 |[0x800016d6]:c.beqz a0, 85<br> [0x800016d8]:addi sp, sp, 2<br> [0x800016dc]:jal zero, 166<br> [0x80001782]:sw sp, 280(ra)<br> |
|  72|[0x8000312c]<br>0xFF76DFE6|- rs1_val==-46340<br>                                                                                                                |[0x8000179e]:c.beqz a0, 251<br> [0x800017a0]:addi sp, sp, 2<br> [0x800017a4]:jal zero, 6<br> [0x800017aa]:sw sp, 284(ra)<br>  |
|  73|[0x80003130]<br>0xFF76DFE8|- rs1_val==46340<br>                                                                                                                 |[0x800017c4]:c.beqz a0, 5<br> [0x800017c6]:addi sp, sp, 2<br> [0x800017ca]:jal zero, 6<br> [0x800017d0]:sw sp, 288(ra)<br>    |
|  74|[0x80003134]<br>0xFF76DFEA|- rs1_val==1431655764<br>                                                                                                            |[0x800017ea]:c.beqz a0, 9<br> [0x800017ec]:addi sp, sp, 2<br> [0x800017f0]:jal zero, 14<br> [0x800017fe]:sw sp, 292(ra)<br>   |
|  75|[0x80003138]<br>0xFF76DFEC|- rs1_val == -4194305<br>                                                                                                            |[0x8000181e]:c.beqz a0, 249<br> [0x80001820]:addi sp, sp, 2<br> [0x80001824]:jal zero, 6<br> [0x8000182a]:sw sp, 296(ra)<br>  |
|  76|[0x8000313c]<br>0xFF76DFEE|- rs1_val==858993460<br>                                                                                                             |[0x80001846]:c.beqz a0, 251<br> [0x80001848]:addi sp, sp, 2<br> [0x8000184c]:jal zero, 6<br> [0x80001852]:sw sp, 300(ra)<br>  |
|  77|[0x80003140]<br>0xFF76DFF0|- rs1_val==858993458<br>                                                                                                             |[0x8000186c]:c.beqz a0, 85<br> [0x8000186e]:addi sp, sp, 2<br> [0x80001872]:jal zero, 166<br> [0x80001918]:sw sp, 304(ra)<br> |
|  78|[0x80003144]<br>0xFF76DFF2|- rs1_val==1717986917<br>                                                                                                            |[0x80001932]:c.beqz a0, 5<br> [0x80001934]:addi sp, sp, 2<br> [0x80001938]:jal zero, 6<br> [0x8000193e]:sw sp, 308(ra)<br>    |
|  79|[0x80003148]<br>0xFF76DFF4|- rs1_val==46339<br>                                                                                                                 |[0x80001958]:c.beqz a0, 252<br> [0x8000195a]:addi sp, sp, 2<br> [0x8000195e]:jal zero, 6<br> [0x80001964]:sw sp, 312(ra)<br>  |
|  80|[0x8000314c]<br>0xFF76DFF6|- rs1_val==1431655766<br>                                                                                                            |[0x800019f6]:c.beqz a0, 192<br> [0x800019f8]:addi sp, sp, 2<br> [0x800019fc]:jal zero, 6<br> [0x80001a02]:sw sp, 316(ra)<br>  |
|  81|[0x80003150]<br>0xFF76DFF8|- rs1_val==-1431655765<br>                                                                                                           |[0x80001a1c]:c.beqz a0, 16<br> [0x80001a1e]:addi sp, sp, 2<br> [0x80001a22]:jal zero, 28<br> [0x80001a3e]:sw sp, 320(ra)<br>  |
|  82|[0x80003154]<br>0xFF76DFFA|- rs1_val==6<br>                                                                                                                     |[0x80001a54]:c.beqz a0, 252<br> [0x80001a56]:addi sp, sp, 2<br> [0x80001a5a]:jal zero, 6<br> [0x80001a60]:sw sp, 324(ra)<br>  |
|  83|[0x80003158]<br>0xFF76DFFC|- rs1_val == -1048577<br>                                                                                                            |[0x80001b1e]:c.beqz a0, 170<br> [0x80001b20]:addi sp, sp, 2<br> [0x80001b24]:jal zero, 6<br> [0x80001b2a]:sw sp, 328(ra)<br>  |
|  84|[0x8000315c]<br>0xFF76DFFE|- rs1_val==1717986919<br>                                                                                                            |[0x80001b44]:c.beqz a0, 85<br> [0x80001b46]:addi sp, sp, 2<br> [0x80001b4a]:jal zero, 166<br> [0x80001bf0]:sw sp, 332(ra)<br> |
|  85|[0x80003160]<br>0xFF76E000|- rs1_val==-46339<br>                                                                                                                |[0x80001c82]:c.beqz a0, 192<br> [0x80001c84]:addi sp, sp, 2<br> [0x80001c88]:jal zero, 6<br> [0x80001c8e]:sw sp, 336(ra)<br>  |
