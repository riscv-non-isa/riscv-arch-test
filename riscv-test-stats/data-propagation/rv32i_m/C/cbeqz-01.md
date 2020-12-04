
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001a20')]      |
| SIG_REGION                | [('0x80003010', '0x80003170', '88 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 106     |
| Total Coverpoints Hit     | 106      |
| Total Signature Updates   | 86      |
| STAT1                     | 86      |
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

|s.no|        signature         |                                                            coverpoints                                                             |                                                             code                                                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x8<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483648<br> |[0x80000112]:c.beqz s0, 63<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 122<br> [0x80000192]:sw sp, 0(ra)<br>   |
|   2|[0x80003014]<br>0xFF76DF5B|- rs1 : x12<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br> - rs1_val==0<br>                                              |[0x800001a8]:c.beqz a2, 5<br> [0x800001b2]:c.addi sp, 3<br> [0x800001b4]:sw sp, 4(ra)<br>                                     |
|   3|[0x80003018]<br>0xFF76DF5D|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2147483647<br>                      |[0x800001ce]:c.beqz a3, 85<br> [0x800001d0]:addi sp, sp, 2<br> [0x800001d4]:jal zero, 166<br> [0x8000027a]:sw sp, 8(ra)<br>   |
|   4|[0x8000301c]<br>0xFF76DF5F|- rs1 : x10<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br>                                                                |[0x80000308]:c.beqz a0, 192<br> [0x8000030a]:addi sp, sp, 2<br> [0x8000030e]:jal zero, 6<br> [0x80000314]:sw sp, 12(ra)<br>   |
|   5|[0x80003020]<br>0xFF76DF61|- rs1 : x14<br> - rs1_val < 0 and imm_val < 0<br>                                                                                   |[0x80000344]:c.beqz a4, 239<br> [0x80000346]:addi sp, sp, 2<br> [0x8000034a]:jal zero, 6<br> [0x80000350]:sw sp, 16(ra)<br>   |
|   6|[0x80003024]<br>0xFF76DF62|- rs1 : x15<br> - rs1_val == 0 and imm_val < 0<br>                                                                                  |[0x800003a0]:c.beqz a5, 223<br> [0x8000035e]:addi sp, sp, 1<br> [0x80000362]:jal zero, 74<br> [0x800003ac]:sw sp, 20(ra)<br>  |
|   7|[0x80003028]<br>0xFF76DF64|- rs1 : x11<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                 |[0x800003cc]:c.beqz a1, 247<br> [0x800003ce]:addi sp, sp, 2<br> [0x800003d2]:jal zero, 6<br> [0x800003d8]:sw sp, 24(ra)<br>   |
|   8|[0x8000302c]<br>0xFF76DF66|- rs1 : x9<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x80000466]:c.beqz s1, 192<br> [0x80000468]:addi sp, sp, 2<br> [0x8000046c]:jal zero, 6<br> [0x80000472]:sw sp, 28(ra)<br>   |
|   9|[0x80003030]<br>0xFF76DF68|- rs1_val == 8<br>                                                                                                                  |[0x80000488]:c.beqz a0, 64<br> [0x8000048a]:addi sp, sp, 2<br> [0x8000048e]:jal zero, 124<br> [0x8000050a]:sw sp, 32(ra)<br>  |
|  10|[0x80003034]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                 |[0x80000520]:c.beqz a0, 5<br> [0x80000522]:addi sp, sp, 2<br> [0x80000526]:jal zero, 6<br> [0x8000052c]:sw sp, 36(ra)<br>     |
|  11|[0x80003038]<br>0xFF76DF6C|- rs1_val == 32<br>                                                                                                                 |[0x8000054a]:c.beqz a0, 248<br> [0x8000054c]:addi sp, sp, 2<br> [0x80000550]:jal zero, 6<br> [0x80000556]:sw sp, 40(ra)<br>   |
|  12|[0x8000303c]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                 |[0x8000056e]:c.beqz a0, 251<br> [0x80000570]:addi sp, sp, 2<br> [0x80000574]:jal zero, 6<br> [0x8000057a]:sw sp, 44(ra)<br>   |
|  13|[0x80003040]<br>0xFF76DF70|- rs1_val == 128<br>                                                                                                                |[0x80000596]:c.beqz a0, 249<br> [0x80000598]:addi sp, sp, 2<br> [0x8000059c]:jal zero, 6<br> [0x800005a2]:sw sp, 48(ra)<br>   |
|  14|[0x80003044]<br>0xFF76DF72|- rs1_val == 256<br>                                                                                                                |[0x80000630]:c.beqz a0, 192<br> [0x80000632]:addi sp, sp, 2<br> [0x80000636]:jal zero, 6<br> [0x8000063c]:sw sp, 52(ra)<br>   |
|  15|[0x80003048]<br>0xFF76DF74|- rs1_val == 512<br>                                                                                                                |[0x80000654]:c.beqz a0, 251<br> [0x80000656]:addi sp, sp, 2<br> [0x8000065a]:jal zero, 6<br> [0x80000660]:sw sp, 56(ra)<br>   |
|  16|[0x8000304c]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                               |[0x80000676]:c.beqz a0, 85<br> [0x80000678]:addi sp, sp, 2<br> [0x8000067c]:jal zero, 166<br> [0x80000722]:sw sp, 60(ra)<br>  |
|  17|[0x80003050]<br>0xFF76DF78|- rs1_val == 2048<br>                                                                                                               |[0x8000073c]:c.beqz a0, 5<br> [0x8000073e]:addi sp, sp, 2<br> [0x80000742]:jal zero, 6<br> [0x80000748]:sw sp, 64(ra)<br>     |
|  18|[0x80003054]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                               |[0x8000075e]:c.beqz a0, 32<br> [0x80000760]:addi sp, sp, 2<br> [0x80000764]:jal zero, 60<br> [0x800007a0]:sw sp, 68(ra)<br>   |
|  19|[0x80003058]<br>0xFF76DF7C|- rs1_val == 8192<br>                                                                                                               |[0x800007b6]:c.beqz a0, 9<br> [0x800007b8]:addi sp, sp, 2<br> [0x800007bc]:jal zero, 14<br> [0x800007ca]:sw sp, 72(ra)<br>    |
|  20|[0x8000305c]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                                                              |[0x800007e0]:c.beqz a0, 252<br> [0x800007e2]:addi sp, sp, 2<br> [0x800007e6]:jal zero, 6<br> [0x800007ec]:sw sp, 76(ra)<br>   |
|  21|[0x80003060]<br>0xFF76DF80|- rs1_val == 32768<br>                                                                                                              |[0x8000080a]:c.beqz a0, 248<br> [0x8000080c]:addi sp, sp, 2<br> [0x80000810]:jal zero, 6<br> [0x80000816]:sw sp, 80(ra)<br>   |
|  22|[0x80003064]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                                                              |[0x80000846]:c.beqz a0, 239<br> [0x80000848]:addi sp, sp, 2<br> [0x8000084c]:jal zero, 6<br> [0x80000852]:sw sp, 84(ra)<br>   |
|  23|[0x80003068]<br>0xFF76DF84|- rs1_val == 131072<br>                                                                                                             |[0x800008a2]:c.beqz a0, 223<br> [0x800008a4]:addi sp, sp, 2<br> [0x800008a8]:jal zero, 6<br> [0x800008ae]:sw sp, 88(ra)<br>   |
|  24|[0x8000306c]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                                                             |[0x800008c4]:c.beqz a0, 252<br> [0x800008c6]:addi sp, sp, 2<br> [0x800008ca]:jal zero, 6<br> [0x800008d0]:sw sp, 92(ra)<br>   |
|  25|[0x80003070]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                                             |[0x800008e6]:c.beqz a0, 252<br> [0x800008e8]:addi sp, sp, 2<br> [0x800008ec]:jal zero, 6<br> [0x800008f2]:sw sp, 96(ra)<br>   |
|  26|[0x80003074]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                                                            |[0x800009ac]:c.beqz a0, 170<br> [0x800009ae]:addi sp, sp, 2<br> [0x800009b2]:jal zero, 6<br> [0x800009b8]:sw sp, 100(ra)<br>  |
|  27|[0x80003078]<br>0xFF76DF8C|- rs1_val == 2097152<br>                                                                                                            |[0x800009d2]:c.beqz a0, 250<br> [0x800009d4]:addi sp, sp, 2<br> [0x800009d8]:jal zero, 6<br> [0x800009de]:sw sp, 104(ra)<br>  |
|  28|[0x8000307c]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                                                            |[0x800009f4]:c.beqz a0, 252<br> [0x800009f6]:addi sp, sp, 2<br> [0x800009fa]:jal zero, 6<br> [0x80000a00]:sw sp, 108(ra)<br>  |
|  29|[0x80003080]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                                            |[0x80000a22]:c.beqz a0, 246<br> [0x80000a24]:addi sp, sp, 2<br> [0x80000a28]:jal zero, 6<br> [0x80000a2e]:sw sp, 112(ra)<br>  |
|  30|[0x80003084]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                                           |[0x80000a44]:c.beqz a0, 5<br> [0x80000a46]:addi sp, sp, 2<br> [0x80000a4a]:jal zero, 6<br> [0x80000a50]:sw sp, 116(ra)<br>    |
|  31|[0x80003088]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                                           |[0x80000ade]:c.beqz a0, 192<br> [0x80000ae0]:addi sp, sp, 2<br> [0x80000ae4]:jal zero, 6<br> [0x80000aea]:sw sp, 120(ra)<br>  |
|  32|[0x8000308c]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                                           |[0x80000b04]:c.beqz a0, 250<br> [0x80000b06]:addi sp, sp, 2<br> [0x80000b0a]:jal zero, 6<br> [0x80000b10]:sw sp, 124(ra)<br>  |
|  33|[0x80003090]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                                          |[0x80000b32]:c.beqz a0, 246<br> [0x80000b34]:addi sp, sp, 2<br> [0x80000b38]:jal zero, 6<br> [0x80000b3e]:sw sp, 128(ra)<br>  |
|  34|[0x80003094]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                                          |[0x80000b54]:c.beqz a0, 63<br> [0x80000b56]:addi sp, sp, 2<br> [0x80000b5a]:jal zero, 122<br> [0x80000bd4]:sw sp, 132(ra)<br> |
|  35|[0x80003098]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                                          |[0x80000bea]:c.beqz a0, 6<br> [0x80000bec]:addi sp, sp, 2<br> [0x80000bf0]:jal zero, 8<br> [0x80000bf8]:sw sp, 136(ra)<br>    |
|  36|[0x8000309c]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                                         |[0x80000c0e]:c.beqz a0, 8<br> [0x80000c10]:addi sp, sp, 2<br> [0x80000c14]:jal zero, 12<br> [0x80000c20]:sw sp, 140(ra)<br>   |
|  37|[0x800030a0]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                                                 |[0x80000cda]:c.beqz a0, 170<br> [0x80000cdc]:addi sp, sp, 2<br> [0x80000ce0]:jal zero, 6<br> [0x80000ce6]:sw sp, 144(ra)<br>  |
|  38|[0x800030a4]<br>0xFF76DFA2|- rs1_val == -3<br>                                                                                                                 |[0x80000cfc]:c.beqz a0, 5<br> [0x80000cfe]:addi sp, sp, 2<br> [0x80000d02]:jal zero, 6<br> [0x80000d08]:sw sp, 148(ra)<br>    |
|  39|[0x800030a8]<br>0xFF76DFA4|- rs1_val == -5<br>                                                                                                                 |[0x80000d1e]:c.beqz a0, 32<br> [0x80000d20]:addi sp, sp, 2<br> [0x80000d24]:jal zero, 60<br> [0x80000d60]:sw sp, 152(ra)<br>  |
|  40|[0x800030ac]<br>0xFF76DFA6|- rs1_val == -9<br>                                                                                                                 |[0x80000d76]:c.beqz a0, 252<br> [0x80000d78]:addi sp, sp, 2<br> [0x80000d7c]:jal zero, 6<br> [0x80000d82]:sw sp, 156(ra)<br>  |
|  41|[0x800030b0]<br>0xFF76DFA8|- rs1_val == -17<br>                                                                                                                |[0x80000d98]:c.beqz a0, 5<br> [0x80000d9a]:addi sp, sp, 2<br> [0x80000d9e]:jal zero, 6<br> [0x80000da4]:sw sp, 160(ra)<br>    |
|  42|[0x800030b4]<br>0xFF76DFAA|- rs1_val == -33<br>                                                                                                                |[0x80000dba]:c.beqz a0, 8<br> [0x80000dbc]:addi sp, sp, 2<br> [0x80000dc0]:jal zero, 12<br> [0x80000dcc]:sw sp, 164(ra)<br>   |
|  43|[0x800030b8]<br>0xFF76DFAC|- rs1_val == -65<br>                                                                                                                |[0x80000de2]:c.beqz a0, 64<br> [0x80000de4]:addi sp, sp, 2<br> [0x80000de8]:jal zero, 124<br> [0x80000e64]:sw sp, 168(ra)<br> |
|  44|[0x800030bc]<br>0xFF76DFAE|- rs1_val == -129<br>                                                                                                               |[0x80000e7a]:c.beqz a0, 6<br> [0x80000e7c]:addi sp, sp, 2<br> [0x80000e80]:jal zero, 8<br> [0x80000e88]:sw sp, 172(ra)<br>    |
|  45|[0x800030c0]<br>0xFF76DFB0|- rs1_val == -257<br>                                                                                                               |[0x80000e9e]:c.beqz a0, 16<br> [0x80000ea0]:addi sp, sp, 2<br> [0x80000ea4]:jal zero, 28<br> [0x80000ec0]:sw sp, 176(ra)<br>  |
|  46|[0x800030c4]<br>0xFF76DFB2|- rs1_val == -513<br>                                                                                                               |[0x80000ed6]:c.beqz a0, 252<br> [0x80000ed8]:addi sp, sp, 2<br> [0x80000edc]:jal zero, 6<br> [0x80000ee2]:sw sp, 180(ra)<br>  |
|  47|[0x800030c8]<br>0xFF76DFB4|- rs1_val == -1025<br>                                                                                                              |[0x80000f9c]:c.beqz a0, 170<br> [0x80000f9e]:addi sp, sp, 2<br> [0x80000fa2]:jal zero, 6<br> [0x80000fa8]:sw sp, 184(ra)<br>  |
|  48|[0x800030cc]<br>0xFF76DFB6|- rs1_val == -2049<br>                                                                                                              |[0x80000fcc]:c.beqz a0, 247<br> [0x80000fce]:addi sp, sp, 2<br> [0x80000fd2]:jal zero, 6<br> [0x80000fd8]:sw sp, 188(ra)<br>  |
|  49|[0x800030d0]<br>0xFF76DFB8|- rs1_val == -4097<br>                                                                                                              |[0x80000ff2]:c.beqz a0, 63<br> [0x80000ff4]:addi sp, sp, 2<br> [0x80000ff8]:jal zero, 122<br> [0x80001072]:sw sp, 192(ra)<br> |
|  50|[0x800030d4]<br>0xFF76DFBA|- rs1_val == -8193<br>                                                                                                              |[0x8000108c]:c.beqz a0, 5<br> [0x8000108e]:addi sp, sp, 2<br> [0x80001092]:jal zero, 6<br> [0x80001098]:sw sp, 196(ra)<br>    |
|  51|[0x800030d8]<br>0xFF76DFBC|- rs1_val == -16385<br>                                                                                                             |[0x800010b2]:c.beqz a0, 5<br> [0x800010b4]:addi sp, sp, 2<br> [0x800010b8]:jal zero, 6<br> [0x800010be]:sw sp, 200(ra)<br>    |
|  52|[0x800030dc]<br>0xFF76DFBE|- rs1_val == -32769<br>                                                                                                             |[0x800010d8]:c.beqz a0, 5<br> [0x800010da]:addi sp, sp, 2<br> [0x800010de]:jal zero, 6<br> [0x800010e4]:sw sp, 204(ra)<br>    |
|  53|[0x800030e0]<br>0xFF76DFC0|- rs1_val == -65537<br>                                                                                                             |[0x800010fe]:c.beqz a0, 64<br> [0x80001100]:addi sp, sp, 2<br> [0x80001104]:jal zero, 124<br> [0x80001180]:sw sp, 208(ra)<br> |
|  54|[0x800030e4]<br>0xFF76DFC2|- rs1_val == -131073<br>                                                                                                            |[0x8000119a]:c.beqz a0, 64<br> [0x8000119c]:addi sp, sp, 2<br> [0x800011a0]:jal zero, 124<br> [0x8000121c]:sw sp, 212(ra)<br> |
|  55|[0x800030e8]<br>0xFF76DFC4|- rs1_val == -262145<br>                                                                                                            |[0x80001236]:c.beqz a0, 9<br> [0x80001238]:addi sp, sp, 2<br> [0x8000123c]:jal zero, 14<br> [0x8000124a]:sw sp, 216(ra)<br>   |
|  56|[0x800030ec]<br>0xFF76DFC6|- rs1_val == -524289<br>                                                                                                            |[0x80001264]:c.beqz a0, 252<br> [0x80001266]:addi sp, sp, 2<br> [0x8000126a]:jal zero, 6<br> [0x80001270]:sw sp, 220(ra)<br>  |
|  57|[0x800030f0]<br>0xFF76DFC8|- rs1_val == -1048577<br>                                                                                                           |[0x80001290]:c.beqz a0, 249<br> [0x80001292]:addi sp, sp, 2<br> [0x80001296]:jal zero, 6<br> [0x8000129c]:sw sp, 224(ra)<br>  |
|  58|[0x800030f4]<br>0xFF76DFCA|- rs1_val == -8388609<br>                                                                                                           |[0x800012b6]:c.beqz a0, 252<br> [0x800012b8]:addi sp, sp, 2<br> [0x800012bc]:jal zero, 6<br> [0x800012c2]:sw sp, 228(ra)<br>  |
|  59|[0x800030f8]<br>0xFF76DFCC|- rs1_val == -16777217<br>                                                                                                          |[0x800012e6]:c.beqz a0, 247<br> [0x800012e8]:addi sp, sp, 2<br> [0x800012ec]:jal zero, 6<br> [0x800012f2]:sw sp, 232(ra)<br>  |
|  60|[0x800030fc]<br>0xFF76DFCE|- rs1_val == -33554433<br>                                                                                                          |[0x8000130c]:c.beqz a0, 5<br> [0x8000130e]:addi sp, sp, 2<br> [0x80001312]:jal zero, 6<br> [0x80001318]:sw sp, 236(ra)<br>    |
|  61|[0x80003100]<br>0xFF76DFD0|- rs1_val == -67108865<br>                                                                                                          |[0x800013aa]:c.beqz a0, 192<br> [0x800013ac]:addi sp, sp, 2<br> [0x800013b0]:jal zero, 6<br> [0x800013b6]:sw sp, 240(ra)<br>  |
|  62|[0x80003104]<br>0xFF76DFD2|- rs1_val == -134217729<br>                                                                                                         |[0x800013d4]:c.beqz a0, 250<br> [0x800013d6]:addi sp, sp, 2<br> [0x800013da]:jal zero, 6<br> [0x800013e0]:sw sp, 244(ra)<br>  |
|  63|[0x80003108]<br>0xFF76DFD4|- rs1_val == -268435457<br>                                                                                                         |[0x80001414]:c.beqz a0, 239<br> [0x80001416]:addi sp, sp, 2<br> [0x8000141a]:jal zero, 6<br> [0x80001420]:sw sp, 248(ra)<br>  |
|  64|[0x8000310c]<br>0xFF76DFD6|- rs1_val == -536870913<br>                                                                                                         |[0x8000143a]:c.beqz a0, 7<br> [0x8000143c]:addi sp, sp, 2<br> [0x80001440]:jal zero, 10<br> [0x8000144a]:sw sp, 252(ra)<br>   |
|  65|[0x80003110]<br>0xFF76DFD8|- rs1_val == -1073741825<br>                                                                                                        |[0x8000146c]:c.beqz a0, 248<br> [0x8000146e]:addi sp, sp, 2<br> [0x80001472]:jal zero, 6<br> [0x80001478]:sw sp, 256(ra)<br>  |
|  66|[0x80003114]<br>0xFF76DFDA|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                               |[0x80001492]:c.beqz a0, 252<br> [0x80001494]:addi sp, sp, 2<br> [0x80001498]:jal zero, 6<br> [0x8000149e]:sw sp, 260(ra)<br>  |
|  67|[0x80003118]<br>0xFF76DFDC|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                             |[0x800014b8]:c.beqz a0, 5<br> [0x800014ba]:addi sp, sp, 2<br> [0x800014be]:jal zero, 6<br> [0x800014c4]:sw sp, 264(ra)<br>    |
|  68|[0x8000311c]<br>0xFF76DFDE|- rs1_val==3<br>                                                                                                                    |[0x800014da]:c.beqz a0, 63<br> [0x800014dc]:addi sp, sp, 2<br> [0x800014e0]:jal zero, 122<br> [0x8000155a]:sw sp, 268(ra)<br> |
|  69|[0x80003120]<br>0xFF76DFE0|- rs1_val==5<br>                                                                                                                    |[0x80001578]:c.beqz a0, 248<br> [0x8000157a]:addi sp, sp, 2<br> [0x8000157e]:jal zero, 6<br> [0x80001584]:sw sp, 272(ra)<br>  |
|  70|[0x80003124]<br>0xFF76DFE2|- rs1_val==858993459<br>                                                                                                            |[0x800015a2]:c.beqz a0, 250<br> [0x800015a4]:addi sp, sp, 2<br> [0x800015a8]:jal zero, 6<br> [0x800015ae]:sw sp, 276(ra)<br>  |
|  71|[0x80003128]<br>0xFF76DFE4|- rs1_val==1717986918<br>                                                                                                           |[0x80001642]:c.beqz a0, 191<br> [0x80001644]:addi sp, sp, 2<br> [0x80001648]:jal zero, 6<br> [0x8000164e]:sw sp, 280(ra)<br>  |
|  72|[0x8000312c]<br>0xFF76DFE6|- rs1_val==46341<br>                                                                                                                |[0x80001668]:c.beqz a0, 9<br> [0x8000166a]:addi sp, sp, 2<br> [0x8000166e]:jal zero, 14<br> [0x8000167c]:sw sp, 284(ra)<br>   |
|  73|[0x80003130]<br>0xFF76DFE8|- rs1_val==-46340<br>                                                                                                               |[0x80001696]:c.beqz a0, 5<br> [0x80001698]:addi sp, sp, 2<br> [0x8000169c]:jal zero, 6<br> [0x800016a2]:sw sp, 288(ra)<br>    |
|  74|[0x80003134]<br>0xFF76DFEA|- rs1_val==46340<br>                                                                                                                |[0x800016bc]:c.beqz a0, 5<br> [0x800016be]:addi sp, sp, 2<br> [0x800016c2]:jal zero, 6<br> [0x800016c8]:sw sp, 292(ra)<br>    |
|  75|[0x80003138]<br>0xFF76DFEC|- rs1_val==1431655764<br>                                                                                                           |[0x800016e8]:c.beqz a0, 249<br> [0x800016ea]:addi sp, sp, 2<br> [0x800016ee]:jal zero, 6<br> [0x800016f4]:sw sp, 296(ra)<br>  |
|  76|[0x8000313c]<br>0xFF76DFEE|- rs1_val == -4194305<br>                                                                                                           |[0x8000170e]:c.beqz a0, 252<br> [0x80001710]:addi sp, sp, 2<br> [0x80001714]:jal zero, 6<br> [0x8000171a]:sw sp, 300(ra)<br>  |
|  77|[0x80003140]<br>0xFF76DFF0|- rs1_val==1717986919<br>                                                                                                           |[0x80001740]:c.beqz a0, 246<br> [0x80001742]:addi sp, sp, 2<br> [0x80001746]:jal zero, 6<br> [0x8000174c]:sw sp, 304(ra)<br>  |
|  78|[0x80003144]<br>0xFF76DFF2|- rs1_val==858993458<br>                                                                                                            |[0x80001772]:c.beqz a0, 246<br> [0x80001774]:addi sp, sp, 2<br> [0x80001778]:jal zero, 6<br> [0x8000177e]:sw sp, 308(ra)<br>  |
|  79|[0x80003148]<br>0xFF76DFF4|- rs1_val==1717986917<br>                                                                                                           |[0x80001798]:c.beqz a0, 5<br> [0x8000179a]:addi sp, sp, 2<br> [0x8000179e]:jal zero, 6<br> [0x800017a4]:sw sp, 312(ra)<br>    |
|  80|[0x8000314c]<br>0xFF76DFF6|- rs1_val==46339<br>                                                                                                                |[0x800017f8]:c.beqz a0, 223<br> [0x800017fa]:addi sp, sp, 2<br> [0x800017fe]:jal zero, 6<br> [0x80001804]:sw sp, 316(ra)<br>  |
|  81|[0x80003150]<br>0xFF76DFF8|- rs1_val==1431655766<br>                                                                                                           |[0x80001896]:c.beqz a0, 192<br> [0x80001898]:addi sp, sp, 2<br> [0x8000189c]:jal zero, 6<br> [0x800018a2]:sw sp, 320(ra)<br>  |
|  82|[0x80003154]<br>0xFF76DFFA|- rs1_val==-1431655765<br>                                                                                                          |[0x800018bc]:c.beqz a0, 7<br> [0x800018be]:addi sp, sp, 2<br> [0x800018c2]:jal zero, 10<br> [0x800018cc]:sw sp, 324(ra)<br>   |
|  83|[0x80003158]<br>0xFF76DFFC|- rs1_val==6<br>                                                                                                                    |[0x800018e2]:c.beqz a0, 63<br> [0x800018e4]:addi sp, sp, 2<br> [0x800018e8]:jal zero, 122<br> [0x80001962]:sw sp, 328(ra)<br> |
|  84|[0x8000315c]<br>0xFF76DFFE|- rs1_val==858993460<br>                                                                                                            |[0x800019b6]:c.beqz a0, 223<br> [0x800019b8]:addi sp, sp, 2<br> [0x800019bc]:jal zero, 6<br> [0x800019c2]:sw sp, 332(ra)<br>  |
|  85|[0x80003160]<br>0xFF76E000|- rs1_val == -2097153<br>                                                                                                           |[0x800019dc]:c.beqz a0, 5<br> [0x800019de]:addi sp, sp, 2<br> [0x800019e2]:jal zero, 6<br> [0x800019e8]:sw sp, 336(ra)<br>    |
|  86|[0x80003164]<br>0xFF76E002|- rs1_val==-46339<br>                                                                                                               |[0x80001a06]:c.beqz a0, 250<br> [0x80001a08]:addi sp, sp, 2<br> [0x80001a0c]:jal zero, 6<br> [0x80001a12]:sw sp, 340(ra)<br>  |
