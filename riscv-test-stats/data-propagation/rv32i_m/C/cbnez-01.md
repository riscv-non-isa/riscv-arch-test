
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001a80')]      |
| SIG_REGION                | [('0x80003010', '0x80003170', '88 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
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

|s.no|        signature         |                                                             coverpoints                                                             |                                                             code                                                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483648<br> |[0x80000112]:c.bnez a0, 63<br> [0x80000190]:c.addi sp, 3<br> [0x80000192]:sw sp, 0(ra)<br>                                     |
|   2|[0x80003014]<br>0xFF76DF5B|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val < 0<br> - rs1_val==0<br>                                               |[0x8000024c]:c.bnez a5, 170<br> [0x8000024e]:addi sp, sp, 2<br> [0x80000252]:jal zero, 6<br> [0x80000258]:sw sp, 4(ra)<br>     |
|   3|[0x80003018]<br>0xFF76DF5E|- rs1 : x11<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2147483647<br>                       |[0x80000272]:c.bnez a1, 64<br> [0x800002f2]:c.addi sp, 3<br> [0x800002f4]:sw sp, 8(ra)<br>                                     |
|   4|[0x8000301c]<br>0xFF76DF61|- rs1 : x14<br> - rs1_val == 1<br>                                                                                                   |[0x8000030a]:c.bnez a4, 7<br> [0x80000318]:c.addi sp, 3<br> [0x8000031a]:sw sp, 12(ra)<br>                                     |
|   5|[0x80003020]<br>0xFF76DF63|- rs1 : x12<br> - rs1_val == 0 and imm_val > 0<br>                                                                                   |[0x80000330]:c.bnez a2, 85<br> [0x80000332]:addi sp, sp, 2<br> [0x80000336]:jal zero, 166<br> [0x800003dc]:sw sp, 16(ra)<br>   |
|   6|[0x80003024]<br>0xFF76DF64|- rs1 : x9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val==858993459<br>                                                            |[0x800003f6]:c.bnez s1, 252<br> [0x800003ee]:addi sp, sp, 1<br> [0x800003f2]:jal zero, 16<br> [0x80000402]:sw sp, 20(ra)<br>   |
|   7|[0x80003028]<br>0xFF76DF65|- rs1 : x8<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -5<br>                                                                 |[0x80000432]:c.bnez s0, 239<br> [0x80000410]:addi sp, sp, 1<br> [0x80000414]:jal zero, 42<br> [0x8000043e]:sw sp, 24(ra)<br>   |
|   8|[0x8000302c]<br>0xFF76DF68|- rs1 : x13<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                  |[0x80000454]:c.bnez a3, 8<br> [0x80000464]:c.addi sp, 3<br> [0x80000466]:sw sp, 28(ra)<br>                                     |
|   9|[0x80003030]<br>0xFF76DF6B|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                  |[0x8000047c]:c.bnez a0, 5<br> [0x80000486]:c.addi sp, 3<br> [0x80000488]:sw sp, 32(ra)<br>                                     |
|  10|[0x80003034]<br>0xFF76DF6C|- rs1_val == 8<br>                                                                                                                   |[0x800004a8]:c.bnez a0, 247<br> [0x80000496]:addi sp, sp, 1<br> [0x8000049a]:jal zero, 26<br> [0x800004b4]:sw sp, 36(ra)<br>   |
|  11|[0x80003038]<br>0xFF76DF6D|- rs1_val == 16<br>                                                                                                                  |[0x800004e4]:c.bnez a0, 239<br> [0x800004c2]:addi sp, sp, 1<br> [0x800004c6]:jal zero, 42<br> [0x800004f0]:sw sp, 40(ra)<br>   |
|  12|[0x8000303c]<br>0xFF76DF70|- rs1_val == 32<br>                                                                                                                  |[0x80000506]:c.bnez a0, 63<br> [0x80000584]:c.addi sp, 3<br> [0x80000586]:sw sp, 44(ra)<br>                                    |
|  13|[0x80003040]<br>0xFF76DF73|- rs1_val == 64<br>                                                                                                                  |[0x8000059c]:c.bnez a0, 16<br> [0x800005bc]:c.addi sp, 3<br> [0x800005be]:sw sp, 48(ra)<br>                                    |
|  14|[0x80003044]<br>0xFF76DF74|- rs1_val == 128<br>                                                                                                                 |[0x800005d4]:c.bnez a0, 252<br> [0x800005cc]:addi sp, sp, 1<br> [0x800005d0]:jal zero, 16<br> [0x800005e0]:sw sp, 52(ra)<br>   |
|  15|[0x80003048]<br>0xFF76DF75|- rs1_val == 256<br>                                                                                                                 |[0x800005f6]:c.bnez a0, 252<br> [0x800005ee]:addi sp, sp, 1<br> [0x800005f2]:jal zero, 16<br> [0x80000602]:sw sp, 56(ra)<br>   |
|  16|[0x8000304c]<br>0xFF76DF76|- rs1_val == 512<br>                                                                                                                 |[0x800006bc]:c.bnez a0, 170<br> [0x80000610]:addi sp, sp, 1<br> [0x80000614]:jal zero, 180<br> [0x800006c8]:sw sp, 60(ra)<br>  |
|  17|[0x80003050]<br>0xFF76DF79|- rs1_val == 1024<br>                                                                                                                |[0x800006de]:c.bnez a0, 9<br> [0x800006f0]:c.addi sp, 3<br> [0x800006f2]:sw sp, 64(ra)<br>                                     |
|  18|[0x80003054]<br>0xFF76DF7C|- rs1_val == 2048<br>                                                                                                                |[0x8000070c]:c.bnez a0, 64<br> [0x8000078c]:c.addi sp, 3<br> [0x8000078e]:sw sp, 68(ra)<br>                                    |
|  19|[0x80003058]<br>0xFF76DF7D|- rs1_val == 4096<br>                                                                                                                |[0x800007ae]:c.bnez a0, 247<br> [0x8000079c]:addi sp, sp, 1<br> [0x800007a0]:jal zero, 26<br> [0x800007ba]:sw sp, 72(ra)<br>   |
|  20|[0x8000305c]<br>0xFF76DF80|- rs1_val == 8192<br>                                                                                                                |[0x800007d0]:c.bnez a0, 5<br> [0x800007da]:c.addi sp, 3<br> [0x800007dc]:sw sp, 76(ra)<br>                                     |
|  21|[0x80003060]<br>0xFF76DF83|- rs1_val == 16384<br>                                                                                                               |[0x800007f2]:c.bnez a0, 5<br> [0x800007fc]:c.addi sp, 3<br> [0x800007fe]:sw sp, 80(ra)<br>                                     |
|  22|[0x80003064]<br>0xFF76DF84|- rs1_val == 32768<br>                                                                                                               |[0x8000081e]:c.bnez a0, 247<br> [0x8000080c]:addi sp, sp, 1<br> [0x80000810]:jal zero, 26<br> [0x8000082a]:sw sp, 84(ra)<br>   |
|  23|[0x80003068]<br>0xFF76DF85|- rs1_val == 65536<br>                                                                                                               |[0x80000840]:c.bnez a0, 252<br> [0x80000838]:addi sp, sp, 1<br> [0x8000083c]:jal zero, 16<br> [0x8000084c]:sw sp, 88(ra)<br>   |
|  24|[0x8000306c]<br>0xFF76DF86|- rs1_val == 131072<br>                                                                                                              |[0x8000089c]:c.bnez a0, 223<br> [0x8000085a]:addi sp, sp, 1<br> [0x8000085e]:jal zero, 74<br> [0x800008a8]:sw sp, 92(ra)<br>   |
|  25|[0x80003070]<br>0xFF76DF87|- rs1_val == 262144<br>                                                                                                              |[0x80000962]:c.bnez a0, 170<br> [0x800008b6]:addi sp, sp, 1<br> [0x800008ba]:jal zero, 180<br> [0x8000096e]:sw sp, 96(ra)<br>  |
|  26|[0x80003074]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                                              |[0x8000098e]:c.bnez a0, 247<br> [0x8000097c]:addi sp, sp, 1<br> [0x80000980]:jal zero, 26<br> [0x8000099a]:sw sp, 100(ra)<br>  |
|  27|[0x80003078]<br>0xFF76DF89|- rs1_val == 1048576<br>                                                                                                             |[0x800009bc]:c.bnez a0, 246<br> [0x800009a8]:addi sp, sp, 1<br> [0x800009ac]:jal zero, 28<br> [0x800009c8]:sw sp, 104(ra)<br>  |
|  28|[0x8000307c]<br>0xFF76DF8A|- rs1_val == 2097152<br>                                                                                                             |[0x800009de]:c.bnez a0, 252<br> [0x800009d6]:addi sp, sp, 1<br> [0x800009da]:jal zero, 16<br> [0x800009ea]:sw sp, 108(ra)<br>  |
|  29|[0x80003080]<br>0xFF76DF8D|- rs1_val == 4194304<br>                                                                                                             |[0x80000a00]:c.bnez a0, 7<br> [0x80000a0e]:c.addi sp, 3<br> [0x80000a10]:sw sp, 112(ra)<br>                                    |
|  30|[0x80003084]<br>0xFF76DF8E|- rs1_val == 8388608<br>                                                                                                             |[0x80000a2c]:c.bnez a0, 249<br> [0x80000a1e]:addi sp, sp, 1<br> [0x80000a22]:jal zero, 22<br> [0x80000a38]:sw sp, 116(ra)<br>  |
|  31|[0x80003088]<br>0xFF76DF91|- rs1_val == 16777216<br>                                                                                                            |[0x80000a4e]:c.bnez a0, 7<br> [0x80000a5c]:c.addi sp, 3<br> [0x80000a5e]:sw sp, 120(ra)<br>                                    |
|  32|[0x8000308c]<br>0xFF76DF92|- rs1_val == 33554432<br>                                                                                                            |[0x80000b18]:c.bnez a0, 170<br> [0x80000a6c]:addi sp, sp, 1<br> [0x80000a70]:jal zero, 180<br> [0x80000b24]:sw sp, 124(ra)<br> |
|  33|[0x80003090]<br>0xFF76DF93|- rs1_val == 67108864<br>                                                                                                            |[0x80000b3a]:c.bnez a0, 252<br> [0x80000b32]:addi sp, sp, 1<br> [0x80000b36]:jal zero, 16<br> [0x80000b46]:sw sp, 128(ra)<br>  |
|  34|[0x80003094]<br>0xFF76DF94|- rs1_val == 134217728<br>                                                                                                           |[0x80000b5e]:c.bnez a0, 251<br> [0x80000b54]:addi sp, sp, 1<br> [0x80000b58]:jal zero, 18<br> [0x80000b6a]:sw sp, 132(ra)<br>  |
|  35|[0x80003098]<br>0xFF76DF97|- rs1_val == 268435456<br>                                                                                                           |[0x80000b80]:c.bnez a0, 8<br> [0x80000b90]:c.addi sp, 3<br> [0x80000b92]:sw sp, 136(ra)<br>                                    |
|  36|[0x8000309c]<br>0xFF76DF98|- rs1_val == 536870912<br>                                                                                                           |[0x80000ba8]:c.bnez a0, 252<br> [0x80000ba0]:addi sp, sp, 1<br> [0x80000ba4]:jal zero, 16<br> [0x80000bb4]:sw sp, 140(ra)<br>  |
|  37|[0x800030a0]<br>0xFF76DF9B|- rs1_val == 1073741824<br>                                                                                                          |[0x80000bca]:c.bnez a0, 85<br> [0x80000c74]:c.addi sp, 3<br> [0x80000c76]:sw sp, 144(ra)<br>                                   |
|  38|[0x800030a4]<br>0xFF76DF9C|- rs1_val == -2<br>                                                                                                                  |[0x80000c8c]:c.bnez a0, 252<br> [0x80000c84]:addi sp, sp, 1<br> [0x80000c88]:jal zero, 16<br> [0x80000c98]:sw sp, 148(ra)<br>  |
|  39|[0x800030a8]<br>0xFF76DF9F|- rs1_val == -3<br>                                                                                                                  |[0x80000cae]:c.bnez a0, 9<br> [0x80000cc0]:c.addi sp, 3<br> [0x80000cc2]:sw sp, 152(ra)<br>                                    |
|  40|[0x800030ac]<br>0xFF76DFA0|- rs1_val == -9<br>                                                                                                                  |[0x80000cf2]:c.bnez a0, 239<br> [0x80000cd0]:addi sp, sp, 1<br> [0x80000cd4]:jal zero, 42<br> [0x80000cfe]:sw sp, 156(ra)<br>  |
|  41|[0x800030b0]<br>0xFF76DFA3|- rs1_val == -17<br>                                                                                                                 |[0x80000d14]:c.bnez a0, 5<br> [0x80000d1e]:c.addi sp, 3<br> [0x80000d20]:sw sp, 160(ra)<br>                                    |
|  42|[0x800030b4]<br>0xFF76DFA4|- rs1_val == -33<br>                                                                                                                 |[0x80000dae]:c.bnez a0, 192<br> [0x80000d2e]:addi sp, sp, 1<br> [0x80000d32]:jal zero, 136<br> [0x80000dba]:sw sp, 164(ra)<br> |
|  43|[0x800030b8]<br>0xFF76DFA5|- rs1_val == -65<br>                                                                                                                 |[0x80000dd0]:c.bnez a0, 252<br> [0x80000dc8]:addi sp, sp, 1<br> [0x80000dcc]:jal zero, 16<br> [0x80000ddc]:sw sp, 168(ra)<br>  |
|  44|[0x800030bc]<br>0xFF76DFA6|- rs1_val == -129<br>                                                                                                                |[0x80000df2]:c.bnez a0, 252<br> [0x80000dea]:addi sp, sp, 1<br> [0x80000dee]:jal zero, 16<br> [0x80000dfe]:sw sp, 172(ra)<br>  |
|  45|[0x800030c0]<br>0xFF76DFA7|- rs1_val == -257<br>                                                                                                                |[0x80000e20]:c.bnez a0, 246<br> [0x80000e0c]:addi sp, sp, 1<br> [0x80000e10]:jal zero, 28<br> [0x80000e2c]:sw sp, 176(ra)<br>  |
|  46|[0x800030c4]<br>0xFF76DFA8|- rs1_val == -513<br>                                                                                                                |[0x80000ebc]:c.bnez a0, 191<br> [0x80000e3a]:addi sp, sp, 1<br> [0x80000e3e]:jal zero, 138<br> [0x80000ec8]:sw sp, 180(ra)<br> |
|  47|[0x800030c8]<br>0xFF76DFAB|- rs1_val == -1025<br>                                                                                                               |[0x80000ede]:c.bnez a0, 9<br> [0x80000ef0]:c.addi sp, 3<br> [0x80000ef2]:sw sp, 184(ra)<br>                                    |
|  48|[0x800030cc]<br>0xFF76DFAE|- rs1_val == -2049<br>                                                                                                               |[0x80000f0c]:c.bnez a0, 5<br> [0x80000f16]:c.addi sp, 3<br> [0x80000f18]:sw sp, 188(ra)<br>                                    |
|  49|[0x800030d0]<br>0xFF76DFAF|- rs1_val == -4097<br>                                                                                                               |[0x80000f36]:c.bnez a0, 250<br> [0x80000f2a]:addi sp, sp, 1<br> [0x80000f2e]:jal zero, 20<br> [0x80000f42]:sw sp, 192(ra)<br>  |
|  50|[0x800030d4]<br>0xFF76DFB0|- rs1_val == -8193<br>                                                                                                               |[0x80000f62]:c.bnez a0, 249<br> [0x80000f54]:addi sp, sp, 1<br> [0x80000f58]:jal zero, 22<br> [0x80000f6e]:sw sp, 196(ra)<br>  |
|  51|[0x800030d8]<br>0xFF76DFB1|- rs1_val == -16385<br>                                                                                                              |[0x80000fa2]:c.bnez a0, 239<br> [0x80000f80]:addi sp, sp, 1<br> [0x80000f84]:jal zero, 42<br> [0x80000fae]:sw sp, 200(ra)<br>  |
|  52|[0x800030dc]<br>0xFF76DFB4|- rs1_val == -32769<br>                                                                                                              |[0x80000fc8]:c.bnez a0, 6<br> [0x80000fd4]:c.addi sp, 3<br> [0x80000fd6]:sw sp, 204(ra)<br>                                    |
|  53|[0x800030e0]<br>0xFF76DFB5|- rs1_val == -65537<br>                                                                                                              |[0x80000ffc]:c.bnez a0, 246<br> [0x80000fe8]:addi sp, sp, 1<br> [0x80000fec]:jal zero, 28<br> [0x80001008]:sw sp, 208(ra)<br>  |
|  54|[0x800030e4]<br>0xFF76DFB6|- rs1_val == -131073<br>                                                                                                             |[0x8000105c]:c.bnez a0, 223<br> [0x8000101a]:addi sp, sp, 1<br> [0x8000101e]:jal zero, 74<br> [0x80001068]:sw sp, 212(ra)<br>  |
|  55|[0x800030e8]<br>0xFF76DFB9|- rs1_val == -262145<br>                                                                                                             |[0x80001082]:c.bnez a0, 32<br> [0x800010c2]:c.addi sp, 3<br> [0x800010c4]:sw sp, 216(ra)<br>                                   |
|  56|[0x800030ec]<br>0xFF76DFBC|- rs1_val == -524289<br>                                                                                                             |[0x800010de]:c.bnez a0, 5<br> [0x800010e8]:c.addi sp, 3<br> [0x800010ea]:sw sp, 220(ra)<br>                                    |
|  57|[0x800030f0]<br>0xFF76DFBD|- rs1_val == -8388609<br>                                                                                                            |[0x8000117c]:c.bnez a0, 192<br> [0x800010fc]:addi sp, sp, 1<br> [0x80001100]:jal zero, 136<br> [0x80001188]:sw sp, 224(ra)<br> |
|  58|[0x800030f4]<br>0xFF76DFC0|- rs1_val == -16777217<br>                                                                                                           |[0x800011a2]:c.bnez a0, 5<br> [0x800011ac]:c.addi sp, 3<br> [0x800011ae]:sw sp, 228(ra)<br>                                    |
|  59|[0x800030f8]<br>0xFF76DFC1|- rs1_val == -33554433<br>                                                                                                           |[0x800011d4]:c.bnez a0, 246<br> [0x800011c0]:addi sp, sp, 1<br> [0x800011c4]:jal zero, 28<br> [0x800011e0]:sw sp, 232(ra)<br>  |
|  60|[0x800030fc]<br>0xFF76DFC4|- rs1_val == -67108865<br>                                                                                                           |[0x800011fa]:c.bnez a0, 63<br> [0x80001278]:c.addi sp, 3<br> [0x8000127a]:sw sp, 236(ra)<br>                                   |
|  61|[0x80003100]<br>0xFF76DFC7|- rs1_val == -134217729<br>                                                                                                          |[0x80001294]:c.bnez a0, 64<br> [0x80001314]:c.addi sp, 3<br> [0x80001316]:sw sp, 240(ra)<br>                                   |
|  62|[0x80003104]<br>0xFF76DFC8|- rs1_val == -268435457<br>                                                                                                          |[0x8000133a]:c.bnez a0, 247<br> [0x80001328]:addi sp, sp, 1<br> [0x8000132c]:jal zero, 26<br> [0x80001346]:sw sp, 244(ra)<br>  |
|  63|[0x80003108]<br>0xFF76DFC9|- rs1_val == -536870913<br>                                                                                                          |[0x80001366]:c.bnez a0, 249<br> [0x80001358]:addi sp, sp, 1<br> [0x8000135c]:jal zero, 22<br> [0x80001372]:sw sp, 248(ra)<br>  |
|  64|[0x8000310c]<br>0xFF76DFCA|- rs1_val == -1073741825<br>                                                                                                         |[0x80001392]:c.bnez a0, 249<br> [0x80001384]:addi sp, sp, 1<br> [0x80001388]:jal zero, 22<br> [0x8000139e]:sw sp, 252(ra)<br>  |
|  65|[0x80003110]<br>0xFF76DFCB|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                |[0x800013bc]:c.bnez a0, 250<br> [0x800013b0]:addi sp, sp, 1<br> [0x800013b4]:jal zero, 20<br> [0x800013c8]:sw sp, 256(ra)<br>  |
|  66|[0x80003114]<br>0xFF76DFCE|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                              |[0x800013e2]:c.bnez a0, 64<br> [0x80001462]:c.addi sp, 3<br> [0x80001464]:sw sp, 260(ra)<br>                                   |
|  67|[0x80003118]<br>0xFF76DFCF|- rs1_val==3<br>                                                                                                                     |[0x80001482]:c.bnez a0, 248<br> [0x80001472]:addi sp, sp, 1<br> [0x80001476]:jal zero, 24<br> [0x8000148e]:sw sp, 264(ra)<br>  |
|  68|[0x8000311c]<br>0xFF76DFD0|- rs1_val==5<br>                                                                                                                     |[0x8000151c]:c.bnez a0, 192<br> [0x8000149c]:addi sp, sp, 1<br> [0x800014a0]:jal zero, 136<br> [0x80001528]:sw sp, 268(ra)<br> |
|  69|[0x80003120]<br>0xFF76DFD3|- rs1_val==1717986918<br>                                                                                                            |[0x80001542]:c.bnez a0, 9<br> [0x80001554]:c.addi sp, 3<br> [0x80001556]:sw sp, 272(ra)<br>                                    |
|  70|[0x80003124]<br>0xFF76DFD6|- rs1_val==-46340<br>                                                                                                                |[0x80001570]:c.bnez a0, 63<br> [0x800015ee]:c.addi sp, 3<br> [0x800015f0]:sw sp, 276(ra)<br>                                   |
|  71|[0x80003128]<br>0xFF76DFD7|- rs1_val==46341<br>                                                                                                                 |[0x80001612]:c.bnez a0, 248<br> [0x80001602]:addi sp, sp, 1<br> [0x80001606]:jal zero, 24<br> [0x8000161e]:sw sp, 280(ra)<br>  |
|  72|[0x8000312c]<br>0xFF76DFD8|- rs1_val==-46339<br>                                                                                                                |[0x8000163e]:c.bnez a0, 249<br> [0x80001630]:addi sp, sp, 1<br> [0x80001634]:jal zero, 22<br> [0x8000164a]:sw sp, 284(ra)<br>  |
|  73|[0x80003130]<br>0xFF76DFDB|- rs1_val==46340<br>                                                                                                                 |[0x80001664]:c.bnez a0, 64<br> [0x800016e4]:c.addi sp, 3<br> [0x800016e6]:sw sp, 288(ra)<br>                                   |
|  74|[0x80003134]<br>0xFF76DFDE|- rs1_val==1431655764<br>                                                                                                            |[0x80001700]:c.bnez a0, 5<br> [0x8000170a]:c.addi sp, 3<br> [0x8000170c]:sw sp, 292(ra)<br>                                    |
|  75|[0x80003138]<br>0xFF76DFDF|- rs1_val == -1048577<br>                                                                                                            |[0x80001730]:c.bnez a0, 247<br> [0x8000171e]:addi sp, sp, 1<br> [0x80001722]:jal zero, 26<br> [0x8000173c]:sw sp, 296(ra)<br>  |
|  76|[0x8000313c]<br>0xFF76DFE2|- rs1_val==1717986919<br>                                                                                                            |[0x80001756]:c.bnez a0, 16<br> [0x80001776]:c.addi sp, 3<br> [0x80001778]:sw sp, 300(ra)<br>                                   |
|  77|[0x80003140]<br>0xFF76DFE3|- rs1_val==858993458<br>                                                                                                             |[0x8000179a]:c.bnez a0, 248<br> [0x8000178a]:addi sp, sp, 1<br> [0x8000178e]:jal zero, 24<br> [0x800017a6]:sw sp, 304(ra)<br>  |
|  78|[0x80003144]<br>0xFF76DFE6|- rs1_val==1717986917<br>                                                                                                            |[0x800017c0]:c.bnez a0, 32<br> [0x80001800]:c.addi sp, 3<br> [0x80001802]:sw sp, 308(ra)<br>                                   |
|  79|[0x80003148]<br>0xFF76DFE7|- rs1_val==46339<br>                                                                                                                 |[0x80001856]:c.bnez a0, 223<br> [0x80001814]:addi sp, sp, 1<br> [0x80001818]:jal zero, 74<br> [0x80001862]:sw sp, 312(ra)<br>  |
|  80|[0x8000314c]<br>0xFF76DFEA|- rs1_val==1431655766<br>                                                                                                            |[0x8000187c]:c.bnez a0, 5<br> [0x80001886]:c.addi sp, 3<br> [0x80001888]:sw sp, 316(ra)<br>                                    |
|  81|[0x80003150]<br>0xFF76DFEB|- rs1_val==-1431655765<br>                                                                                                           |[0x800018a8]:c.bnez a0, 249<br> [0x8000189a]:addi sp, sp, 1<br> [0x8000189e]:jal zero, 22<br> [0x800018b4]:sw sp, 320(ra)<br>  |
|  82|[0x80003154]<br>0xFF76DFEC|- rs1_val==6<br>                                                                                                                     |[0x80001942]:c.bnez a0, 192<br> [0x800018c2]:addi sp, sp, 1<br> [0x800018c6]:jal zero, 136<br> [0x8000194e]:sw sp, 324(ra)<br> |
|  83|[0x80003158]<br>0xFF76DFED|- rs1_val==858993460<br>                                                                                                             |[0x8000196e]:c.bnez a0, 249<br> [0x80001960]:addi sp, sp, 1<br> [0x80001964]:jal zero, 22<br> [0x8000197a]:sw sp, 328(ra)<br>  |
|  84|[0x8000315c]<br>0xFF76DFEE|- rs1_val == -2097153<br>                                                                                                            |[0x80001a38]:c.bnez a0, 170<br> [0x8000198c]:addi sp, sp, 1<br> [0x80001990]:jal zero, 180<br> [0x80001a44]:sw sp, 332(ra)<br> |
|  85|[0x80003160]<br>0xFF76DFEF|- rs1_val == -4194305<br>                                                                                                            |[0x80001a68]:c.bnez a0, 247<br> [0x80001a56]:addi sp, sp, 1<br> [0x80001a5a]:jal zero, 26<br> [0x80001a74]:sw sp, 336(ra)<br>  |
