
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800017f0')]      |
| SIG_REGION                | [('0x80003010', '0x80003170', '88 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
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

|s.no|        signature         |                                                            coverpoints                                                             |                                                             code                                                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFF76DF57|- opcode : c.bnez<br> - rs1 : x9<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x8000012c]:c.bnez s1, 239<br> [0x8000010a]:addi sp, sp, 1<br> [0x8000010e]:jal zero, 42<br> [0x80000138]:sw sp, 0(ra)<br>    |
|   2|[0x80003014]<br>0xFF76DF59|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br> - rs1_val==0<br>                                              |[0x8000014e]:c.bnez a5, 63<br> [0x80000150]:addi sp, sp, 2<br> [0x80000154]:jal zero, 122<br> [0x800001ce]:sw sp, 4(ra)<br>    |
|   3|[0x80003018]<br>0xFF76DF5A|- rs1 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2147483647<br>                      |[0x80000262]:c.bnez a4, 191<br> [0x800001e0]:addi sp, sp, 1<br> [0x800001e4]:jal zero, 138<br> [0x8000026e]:sw sp, 8(ra)<br>   |
|   4|[0x8000301c]<br>0xFF76DF5D|- rs1 : x12<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                                |[0x80000284]:c.bnez a2, 6<br> [0x80000290]:c.addi sp, 3<br> [0x80000292]:sw sp, 12(ra)<br>                                     |
|   5|[0x80003020]<br>0xFF76DF60|- rs1 : x10<br> - rs1_val < 0 and imm_val > 0<br>                                                                                   |[0x800002a8]:c.bnez a0, 63<br> [0x80000326]:c.addi sp, 3<br> [0x80000328]:sw sp, 16(ra)<br>                                    |
|   6|[0x80003024]<br>0xFF76DF62|- rs1 : x13<br> - rs1_val == 0 and imm_val < 0<br>                                                                                  |[0x8000033e]:c.bnez a3, 252<br> [0x80000340]:addi sp, sp, 2<br> [0x80000344]:jal zero, 6<br> [0x8000034a]:sw sp, 20(ra)<br>    |
|   7|[0x80003028]<br>0xFF76DF65|- rs1 : x11<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                 |[0x80000360]:c.bnez a1, 32<br> [0x800003a0]:c.addi sp, 3<br> [0x800003a2]:sw sp, 24(ra)<br>                                    |
|   8|[0x8000302c]<br>0xFF76DF68|- rs1 : x8<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x800003b8]:c.bnez s0, 63<br> [0x80000436]:c.addi sp, 3<br> [0x80000438]:sw sp, 28(ra)<br>                                    |
|   9|[0x80003030]<br>0xFF76DF69|- rs1_val == 8<br>                                                                                                                  |[0x8000044e]:c.bnez a0, 252<br> [0x80000446]:addi sp, sp, 1<br> [0x8000044a]:jal zero, 16<br> [0x8000045a]:sw sp, 32(ra)<br>   |
|  10|[0x80003034]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                 |[0x80000472]:c.bnez a0, 251<br> [0x80000468]:addi sp, sp, 1<br> [0x8000046c]:jal zero, 18<br> [0x8000047e]:sw sp, 36(ra)<br>   |
|  11|[0x80003038]<br>0xFF76DF6D|- rs1_val == 32<br>                                                                                                                 |[0x80000494]:c.bnez a0, 6<br> [0x800004a0]:c.addi sp, 3<br> [0x800004a2]:sw sp, 40(ra)<br>                                     |
|  12|[0x8000303c]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                 |[0x800004b8]:c.bnez a0, 252<br> [0x800004b0]:addi sp, sp, 1<br> [0x800004b4]:jal zero, 16<br> [0x800004c4]:sw sp, 44(ra)<br>   |
|  13|[0x80003040]<br>0xFF76DF6F|- rs1_val == 128<br>                                                                                                                |[0x80000552]:c.bnez a0, 192<br> [0x800004d2]:addi sp, sp, 1<br> [0x800004d6]:jal zero, 136<br> [0x8000055e]:sw sp, 48(ra)<br>  |
|  14|[0x80003044]<br>0xFF76DF72|- rs1_val == 256<br>                                                                                                                |[0x80000574]:c.bnez a0, 5<br> [0x8000057e]:c.addi sp, 3<br> [0x80000580]:sw sp, 52(ra)<br>                                     |
|  15|[0x80003048]<br>0xFF76DF73|- rs1_val == 512<br>                                                                                                                |[0x80000596]:c.bnez a0, 252<br> [0x8000058e]:addi sp, sp, 1<br> [0x80000592]:jal zero, 16<br> [0x800005a2]:sw sp, 56(ra)<br>   |
|  16|[0x8000304c]<br>0xFF76DF74|- rs1_val == 1024<br>                                                                                                               |[0x80000632]:c.bnez a0, 191<br> [0x800005b0]:addi sp, sp, 1<br> [0x800005b4]:jal zero, 138<br> [0x8000063e]:sw sp, 60(ra)<br>  |
|  17|[0x80003050]<br>0xFF76DF75|- rs1_val == 2048<br>                                                                                                               |[0x80000662]:c.bnez a0, 247<br> [0x80000650]:addi sp, sp, 1<br> [0x80000654]:jal zero, 26<br> [0x8000066e]:sw sp, 64(ra)<br>   |
|  18|[0x80003054]<br>0xFF76DF76|- rs1_val == 4096<br>                                                                                                               |[0x8000068c]:c.bnez a0, 248<br> [0x8000067c]:addi sp, sp, 1<br> [0x80000680]:jal zero, 24<br> [0x80000698]:sw sp, 68(ra)<br>   |
|  19|[0x80003058]<br>0xFF76DF77|- rs1_val == 8192<br>                                                                                                               |[0x800006b6]:c.bnez a0, 248<br> [0x800006a6]:addi sp, sp, 1<br> [0x800006aa]:jal zero, 24<br> [0x800006c2]:sw sp, 72(ra)<br>   |
|  20|[0x8000305c]<br>0xFF76DF78|- rs1_val == 16384<br>                                                                                                              |[0x800006da]:c.bnez a0, 251<br> [0x800006d0]:addi sp, sp, 1<br> [0x800006d4]:jal zero, 18<br> [0x800006e6]:sw sp, 76(ra)<br>   |
|  21|[0x80003060]<br>0xFF76DF79|- rs1_val == 32768<br>                                                                                                              |[0x80000706]:c.bnez a0, 247<br> [0x800006f4]:addi sp, sp, 1<br> [0x800006f8]:jal zero, 26<br> [0x80000712]:sw sp, 80(ra)<br>   |
|  22|[0x80003064]<br>0xFF76DF7A|- rs1_val == 65536<br>                                                                                                              |[0x80000730]:c.bnez a0, 248<br> [0x80000720]:addi sp, sp, 1<br> [0x80000724]:jal zero, 24<br> [0x8000073c]:sw sp, 84(ra)<br>   |
|  23|[0x80003068]<br>0xFF76DF7D|- rs1_val == 131072<br>                                                                                                             |[0x80000752]:c.bnez a0, 5<br> [0x8000075c]:c.addi sp, 3<br> [0x8000075e]:sw sp, 88(ra)<br>                                     |
|  24|[0x8000306c]<br>0xFF76DF80|- rs1_val == 262144<br>                                                                                                             |[0x80000774]:c.bnez a0, 16<br> [0x80000794]:c.addi sp, 3<br> [0x80000796]:sw sp, 92(ra)<br>                                    |
|  25|[0x80003070]<br>0xFF76DF81|- rs1_val == 524288<br>                                                                                                             |[0x800007ac]:c.bnez a0, 252<br> [0x800007a4]:addi sp, sp, 1<br> [0x800007a8]:jal zero, 16<br> [0x800007b8]:sw sp, 96(ra)<br>   |
|  26|[0x80003074]<br>0xFF76DF84|- rs1_val == 1048576<br>                                                                                                            |[0x800007ce]:c.bnez a0, 63<br> [0x8000084c]:c.addi sp, 3<br> [0x8000084e]:sw sp, 100(ra)<br>                                   |
|  27|[0x80003078]<br>0xFF76DF85|- rs1_val == 2097152<br>                                                                                                            |[0x80000868]:c.bnez a0, 250<br> [0x8000085c]:addi sp, sp, 1<br> [0x80000860]:jal zero, 20<br> [0x80000874]:sw sp, 104(ra)<br>  |
|  28|[0x8000307c]<br>0xFF76DF86|- rs1_val == 4194304<br>                                                                                                            |[0x80000902]:c.bnez a0, 192<br> [0x80000882]:addi sp, sp, 1<br> [0x80000886]:jal zero, 136<br> [0x8000090e]:sw sp, 108(ra)<br> |
|  29|[0x80003080]<br>0xFF76DF87|- rs1_val == 8388608<br>                                                                                                            |[0x8000093e]:c.bnez a0, 239<br> [0x8000091c]:addi sp, sp, 1<br> [0x80000920]:jal zero, 42<br> [0x8000094a]:sw sp, 112(ra)<br>  |
|  30|[0x80003084]<br>0xFF76DF8A|- rs1_val == 16777216<br>                                                                                                           |[0x80000960]:c.bnez a0, 8<br> [0x80000970]:c.addi sp, 3<br> [0x80000972]:sw sp, 116(ra)<br>                                    |
|  31|[0x80003088]<br>0xFF76DF8B|- rs1_val == 33554432<br>                                                                                                           |[0x8000098a]:c.bnez a0, 251<br> [0x80000980]:addi sp, sp, 1<br> [0x80000984]:jal zero, 18<br> [0x80000996]:sw sp, 120(ra)<br>  |
|  32|[0x8000308c]<br>0xFF76DF8C|- rs1_val == 67108864<br>                                                                                                           |[0x800009ac]:c.bnez a0, 252<br> [0x800009a4]:addi sp, sp, 1<br> [0x800009a8]:jal zero, 16<br> [0x800009b8]:sw sp, 124(ra)<br>  |
|  33|[0x80003090]<br>0xFF76DF8F|- rs1_val == 134217728<br>                                                                                                          |[0x800009ce]:c.bnez a0, 9<br> [0x800009e0]:c.addi sp, 3<br> [0x800009e2]:sw sp, 128(ra)<br>                                    |
|  34|[0x80003094]<br>0xFF76DF92|- rs1_val == 268435456<br>                                                                                                          |[0x800009f8]:c.bnez a0, 16<br> [0x80000a18]:c.addi sp, 3<br> [0x80000a1a]:sw sp, 132(ra)<br>                                   |
|  35|[0x80003098]<br>0xFF76DF95|- rs1_val == 536870912<br>                                                                                                          |[0x80000a30]:c.bnez a0, 9<br> [0x80000a42]:c.addi sp, 3<br> [0x80000a44]:sw sp, 136(ra)<br>                                    |
|  36|[0x8000309c]<br>0xFF76DF96|- rs1_val == 1073741824<br>                                                                                                         |[0x80000a5a]:c.bnez a0, 252<br> [0x80000a52]:addi sp, sp, 1<br> [0x80000a56]:jal zero, 16<br> [0x80000a66]:sw sp, 140(ra)<br>  |
|  37|[0x800030a0]<br>0xFF76DF97|- rs1_val == -2<br>                                                                                                                 |[0x80000af6]:c.bnez a0, 191<br> [0x80000a74]:addi sp, sp, 1<br> [0x80000a78]:jal zero, 138<br> [0x80000b02]:sw sp, 144(ra)<br> |
|  38|[0x800030a4]<br>0xFF76DF9A|- rs1_val == -3<br>                                                                                                                 |[0x80000b18]:c.bnez a0, 16<br> [0x80000b38]:c.addi sp, 3<br> [0x80000b3a]:sw sp, 148(ra)<br>                                   |
|  39|[0x800030a8]<br>0xFF76DF9D|- rs1_val == -5<br>                                                                                                                 |[0x80000b50]:c.bnez a0, 9<br> [0x80000b62]:c.addi sp, 3<br> [0x80000b64]:sw sp, 152(ra)<br>                                    |
|  40|[0x800030ac]<br>0xFF76DFA0|- rs1_val == -9<br>                                                                                                                 |[0x80000b7a]:c.bnez a0, 64<br> [0x80000bfa]:c.addi sp, 3<br> [0x80000bfc]:sw sp, 156(ra)<br>                                   |
|  41|[0x800030b0]<br>0xFF76DFA3|- rs1_val == -17<br>                                                                                                                |[0x80000c12]:c.bnez a0, 8<br> [0x80000c22]:c.addi sp, 3<br> [0x80000c24]:sw sp, 160(ra)<br>                                    |
|  42|[0x800030b4]<br>0xFF76DFA4|- rs1_val == -33<br>                                                                                                                |[0x80000c3e]:c.bnez a0, 250<br> [0x80000c32]:addi sp, sp, 1<br> [0x80000c36]:jal zero, 20<br> [0x80000c4a]:sw sp, 164(ra)<br>  |
|  43|[0x800030b8]<br>0xFF76DFA7|- rs1_val == -65<br>                                                                                                                |[0x80000c60]:c.bnez a0, 16<br> [0x80000c80]:c.addi sp, 3<br> [0x80000c82]:sw sp, 168(ra)<br>                                   |
|  44|[0x800030bc]<br>0xFF76DFAA|- rs1_val == -129<br>                                                                                                               |[0x80000c98]:c.bnez a0, 5<br> [0x80000ca2]:c.addi sp, 3<br> [0x80000ca4]:sw sp, 172(ra)<br>                                    |
|  45|[0x800030c0]<br>0xFF76DFAD|- rs1_val == -257<br>                                                                                                               |[0x80000cba]:c.bnez a0, 6<br> [0x80000cc6]:c.addi sp, 3<br> [0x80000cc8]:sw sp, 176(ra)<br>                                    |
|  46|[0x800030c4]<br>0xFF76DFAE|- rs1_val == -513<br>                                                                                                               |[0x80000cea]:c.bnez a0, 246<br> [0x80000cd6]:addi sp, sp, 1<br> [0x80000cda]:jal zero, 28<br> [0x80000cf6]:sw sp, 180(ra)<br>  |
|  47|[0x800030c8]<br>0xFF76DFAF|- rs1_val == -1025<br>                                                                                                              |[0x80000d16]:c.bnez a0, 247<br> [0x80000d04]:addi sp, sp, 1<br> [0x80000d08]:jal zero, 26<br> [0x80000d22]:sw sp, 184(ra)<br>  |
|  48|[0x800030cc]<br>0xFF76DFB2|- rs1_val == -2049<br>                                                                                                              |[0x80000d3c]:c.bnez a0, 5<br> [0x80000d46]:c.addi sp, 3<br> [0x80000d48]:sw sp, 188(ra)<br>                                    |
|  49|[0x800030d0]<br>0xFF76DFB3|- rs1_val == -4097<br>                                                                                                              |[0x80000d62]:c.bnez a0, 252<br> [0x80000d5a]:addi sp, sp, 1<br> [0x80000d5e]:jal zero, 16<br> [0x80000d6e]:sw sp, 192(ra)<br>  |
|  50|[0x800030d4]<br>0xFF76DFB6|- rs1_val == -8193<br>                                                                                                              |[0x80000d88]:c.bnez a0, 5<br> [0x80000d92]:c.addi sp, 3<br> [0x80000d94]:sw sp, 196(ra)<br>                                    |
|  51|[0x800030d8]<br>0xFF76DFB9|- rs1_val == -16385<br>                                                                                                             |[0x80000dae]:c.bnez a0, 6<br> [0x80000dba]:c.addi sp, 3<br> [0x80000dbc]:sw sp, 200(ra)<br>                                    |
|  52|[0x800030dc]<br>0xFF76DFBA|- rs1_val == -32769<br>                                                                                                             |[0x80000dd6]:c.bnez a0, 252<br> [0x80000dce]:addi sp, sp, 1<br> [0x80000dd2]:jal zero, 16<br> [0x80000de2]:sw sp, 204(ra)<br>  |
|  53|[0x800030e0]<br>0xFF76DFBB|- rs1_val == -65537<br>                                                                                                             |[0x80000e02]:c.bnez a0, 249<br> [0x80000df4]:addi sp, sp, 1<br> [0x80000df8]:jal zero, 22<br> [0x80000e0e]:sw sp, 208(ra)<br>  |
|  54|[0x800030e4]<br>0xFF76DFBC|- rs1_val == -131073<br>                                                                                                            |[0x80000e28]:c.bnez a0, 252<br> [0x80000e20]:addi sp, sp, 1<br> [0x80000e24]:jal zero, 16<br> [0x80000e34]:sw sp, 212(ra)<br>  |
|  55|[0x800030e8]<br>0xFF76DFBD|- rs1_val == -262145<br>                                                                                                            |[0x80000e58]:c.bnez a0, 247<br> [0x80000e46]:addi sp, sp, 1<br> [0x80000e4a]:jal zero, 26<br> [0x80000e64]:sw sp, 216(ra)<br>  |
|  56|[0x800030ec]<br>0xFF76DFBE|- rs1_val == -524289<br>                                                                                                            |[0x80000e84]:c.bnez a0, 249<br> [0x80000e76]:addi sp, sp, 1<br> [0x80000e7a]:jal zero, 22<br> [0x80000e90]:sw sp, 220(ra)<br>  |
|  57|[0x800030f0]<br>0xFF76DFC1|- rs1_val == -1048577<br>                                                                                                           |[0x80000eaa]:c.bnez a0, 5<br> [0x80000eb4]:c.addi sp, 3<br> [0x80000eb6]:sw sp, 224(ra)<br>                                    |
|  58|[0x800030f4]<br>0xFF76DFC4|- rs1_val == -8388609<br>                                                                                                           |[0x80000ed0]:c.bnez a0, 85<br> [0x80000f7a]:c.addi sp, 3<br> [0x80000f7c]:sw sp, 228(ra)<br>                                   |
|  59|[0x800030f8]<br>0xFF76DFC7|- rs1_val == -16777217<br>                                                                                                          |[0x80000f96]:c.bnez a0, 32<br> [0x80000fd6]:c.addi sp, 3<br> [0x80000fd8]:sw sp, 232(ra)<br>                                   |
|  60|[0x800030fc]<br>0xFF76DFCA|- rs1_val == -33554433<br>                                                                                                          |[0x80000ff2]:c.bnez a0, 7<br> [0x80001000]:c.addi sp, 3<br> [0x80001002]:sw sp, 236(ra)<br>                                    |
|  61|[0x80003100]<br>0xFF76DFCD|- rs1_val == -67108865<br>                                                                                                          |[0x8000101c]:c.bnez a0, 85<br> [0x800010c6]:c.addi sp, 3<br> [0x800010c8]:sw sp, 240(ra)<br>                                   |
|  62|[0x80003104]<br>0xFF76DFD0|- rs1_val == -134217729<br>                                                                                                         |[0x800010e2]:c.bnez a0, 32<br> [0x80001122]:c.addi sp, 3<br> [0x80001124]:sw sp, 244(ra)<br>                                   |
|  63|[0x80003108]<br>0xFF76DFD1|- rs1_val == -268435457<br>                                                                                                         |[0x8000113e]:c.bnez a0, 252<br> [0x80001136]:addi sp, sp, 1<br> [0x8000113a]:jal zero, 16<br> [0x8000114a]:sw sp, 248(ra)<br>  |
|  64|[0x8000310c]<br>0xFF76DFD2|- rs1_val == -536870913<br>                                                                                                         |[0x80001164]:c.bnez a0, 252<br> [0x8000115c]:addi sp, sp, 1<br> [0x80001160]:jal zero, 16<br> [0x80001170]:sw sp, 252(ra)<br>  |
|  65|[0x80003110]<br>0xFF76DFD3|- rs1_val == -1073741825<br>                                                                                                        |[0x8000118a]:c.bnez a0, 252<br> [0x80001182]:addi sp, sp, 1<br> [0x80001186]:jal zero, 16<br> [0x80001196]:sw sp, 256(ra)<br>  |
|  66|[0x80003114]<br>0xFF76DFD4|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                               |[0x800011ea]:c.bnez a0, 223<br> [0x800011a8]:addi sp, sp, 1<br> [0x800011ac]:jal zero, 74<br> [0x800011f6]:sw sp, 260(ra)<br>  |
|  67|[0x80003118]<br>0xFF76DFD7|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                             |[0x80001210]:c.bnez a0, 5<br> [0x8000121a]:c.addi sp, 3<br> [0x8000121c]:sw sp, 264(ra)<br>                                    |
|  68|[0x8000311c]<br>0xFF76DFDA|- rs1_val==3<br>                                                                                                                    |[0x80001232]:c.bnez a0, 8<br> [0x80001242]:c.addi sp, 3<br> [0x80001244]:sw sp, 268(ra)<br>                                    |
|  69|[0x80003120]<br>0xFF76DFDB|- rs1_val==5<br>                                                                                                                    |[0x8000125a]:c.bnez a0, 252<br> [0x80001252]:addi sp, sp, 1<br> [0x80001256]:jal zero, 16<br> [0x80001266]:sw sp, 272(ra)<br>  |
|  70|[0x80003124]<br>0xFF76DFDC|- rs1_val==858993459<br>                                                                                                            |[0x80001280]:c.bnez a0, 252<br> [0x80001278]:addi sp, sp, 1<br> [0x8000127c]:jal zero, 16<br> [0x8000128c]:sw sp, 276(ra)<br>  |
|  71|[0x80003128]<br>0xFF76DFDD|- rs1_val==1717986918<br>                                                                                                           |[0x800012ac]:c.bnez a0, 249<br> [0x8000129e]:addi sp, sp, 1<br> [0x800012a2]:jal zero, 22<br> [0x800012b8]:sw sp, 280(ra)<br>  |
|  72|[0x8000312c]<br>0xFF76DFE0|- rs1_val==46341<br>                                                                                                                |[0x800012d2]:c.bnez a0, 16<br> [0x800012f2]:c.addi sp, 3<br> [0x800012f4]:sw sp, 284(ra)<br>                                   |
|  73|[0x80003130]<br>0xFF76DFE1|- rs1_val==-46340<br>                                                                                                               |[0x80001318]:c.bnez a0, 247<br> [0x80001306]:addi sp, sp, 1<br> [0x8000130a]:jal zero, 26<br> [0x80001324]:sw sp, 288(ra)<br>  |
|  74|[0x80003134]<br>0xFF76DFE4|- rs1_val==46340<br>                                                                                                                |[0x8000133e]:c.bnez a0, 85<br> [0x800013e8]:c.addi sp, 3<br> [0x800013ea]:sw sp, 292(ra)<br>                                   |
|  75|[0x80003138]<br>0xFF76DFE5|- rs1_val==1431655764<br>                                                                                                           |[0x8000143e]:c.bnez a0, 223<br> [0x800013fc]:addi sp, sp, 1<br> [0x80001400]:jal zero, 74<br> [0x8000144a]:sw sp, 296(ra)<br>  |
|  76|[0x8000313c]<br>0xFF76DFE8|- rs1_val == -4194305<br>                                                                                                           |[0x80001464]:c.bnez a0, 5<br> [0x8000146e]:c.addi sp, 3<br> [0x80001470]:sw sp, 300(ra)<br>                                    |
|  77|[0x80003140]<br>0xFF76DFE9|- rs1_val==1717986919<br>                                                                                                           |[0x80001494]:c.bnez a0, 247<br> [0x80001482]:addi sp, sp, 1<br> [0x80001486]:jal zero, 26<br> [0x800014a0]:sw sp, 304(ra)<br>  |
|  78|[0x80003144]<br>0xFF76DFEC|- rs1_val==858993458<br>                                                                                                            |[0x800014ba]:c.bnez a0, 6<br> [0x800014c6]:c.addi sp, 3<br> [0x800014c8]:sw sp, 308(ra)<br>                                    |
|  79|[0x80003148]<br>0xFF76DFED|- rs1_val==1717986917<br>                                                                                                           |[0x8000155c]:c.bnez a0, 191<br> [0x800014da]:addi sp, sp, 1<br> [0x800014de]:jal zero, 138<br> [0x80001568]:sw sp, 312(ra)<br> |
|  80|[0x8000314c]<br>0xFF76DFEE|- rs1_val==46339<br>                                                                                                                |[0x800015fc]:c.bnez a0, 191<br> [0x8000157a]:addi sp, sp, 1<br> [0x8000157e]:jal zero, 138<br> [0x80001608]:sw sp, 316(ra)<br> |
|  81|[0x80003150]<br>0xFF76DFEF|- rs1_val==1431655766<br>                                                                                                           |[0x80001626]:c.bnez a0, 250<br> [0x8000161a]:addi sp, sp, 1<br> [0x8000161e]:jal zero, 20<br> [0x80001632]:sw sp, 320(ra)<br>  |
|  82|[0x80003154]<br>0xFF76DFF0|- rs1_val==-1431655765<br>                                                                                                          |[0x8000164c]:c.bnez a0, 252<br> [0x80001644]:addi sp, sp, 1<br> [0x80001648]:jal zero, 16<br> [0x80001658]:sw sp, 324(ra)<br>  |
|  83|[0x80003158]<br>0xFF76DFF3|- rs1_val==6<br>                                                                                                                    |[0x8000166e]:c.bnez a0, 63<br> [0x800016ec]:c.addi sp, 3<br> [0x800016ee]:sw sp, 328(ra)<br>                                   |
|  84|[0x8000315c]<br>0xFF76DFF4|- rs1_val==858993460<br>                                                                                                            |[0x80001710]:c.bnez a0, 248<br> [0x80001700]:addi sp, sp, 1<br> [0x80001704]:jal zero, 24<br> [0x8000171c]:sw sp, 332(ra)<br>  |
|  85|[0x80003160]<br>0xFF76DFF7|- rs1_val == -2097153<br>                                                                                                           |[0x80001736]:c.bnez a0, 5<br> [0x80001740]:c.addi sp, 3<br> [0x80001742]:sw sp, 336(ra)<br>                                    |
|  86|[0x80003164]<br>0xFF76DFF8|- rs1_val==-46339<br>                                                                                                               |[0x800017d4]:c.bnez a0, 192<br> [0x80001754]:addi sp, sp, 1<br> [0x80001758]:jal zero, 136<br> [0x800017e0]:sw sp, 340(ra)<br> |
