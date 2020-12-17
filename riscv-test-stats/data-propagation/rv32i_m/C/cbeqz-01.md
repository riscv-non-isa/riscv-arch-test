
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001590')]      |
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

|s.no|        signature         |                                                            coverpoints                                                             |                                                             code                                                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x9<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x8000011a]:c.beqz s1, 248<br> [0x8000011c]:addi sp, sp, 2<br> [0x80000120]:jal zero, 6<br> [0x80000126]:sw sp, 0(ra)<br>    |
|   2|[0x80003014]<br>0xFF76DF59|- rs1 : x10<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val < 0<br> - rs1_val==0<br>                                              |[0x8000013e]:c.beqz a0, 251<br> [0x80000134]:addi sp, sp, 1<br> [0x80000138]:jal zero, 18<br> [0x8000014a]:sw sp, 4(ra)<br>   |
|   3|[0x80003018]<br>0xFF76DF5B|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2147483647<br>                      |[0x80000164]:c.beqz a3, 16<br> [0x80000166]:addi sp, sp, 2<br> [0x8000016a]:jal zero, 28<br> [0x80000186]:sw sp, 8(ra)<br>    |
|   4|[0x8000301c]<br>0xFF76DF5D|- rs1 : x8<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br>                                                                 |[0x800001a6]:c.beqz s0, 247<br> [0x800001a8]:addi sp, sp, 2<br> [0x800001ac]:jal zero, 6<br> [0x800001b2]:sw sp, 12(ra)<br>   |
|   5|[0x80003020]<br>0xFF76DF5F|- rs1 : x11<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -131073<br>                                                          |[0x800001cc]:c.beqz a1, 63<br> [0x800001ce]:addi sp, sp, 2<br> [0x800001d2]:jal zero, 122<br> [0x8000024c]:sw sp, 16(ra)<br>  |
|   6|[0x80003024]<br>0xFF76DF62|- rs1 : x12<br> - rs1_val == 0 and imm_val > 0<br>                                                                                  |[0x80000262]:c.beqz a2, 16<br> [0x80000282]:c.addi sp, 3<br> [0x80000284]:sw sp, 20(ra)<br>                                   |
|   7|[0x80003028]<br>0xFF76DF64|- rs1 : x15<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                 |[0x8000029a]:c.beqz a5, 5<br> [0x8000029c]:addi sp, sp, 2<br> [0x800002a0]:jal zero, 6<br> [0x800002a6]:sw sp, 24(ra)<br>     |
|   8|[0x8000302c]<br>0xFF76DF66|- rs1 : x14<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                 |[0x800002bc]:c.beqz a4, 5<br> [0x800002be]:addi sp, sp, 2<br> [0x800002c2]:jal zero, 6<br> [0x800002c8]:sw sp, 28(ra)<br>     |
|   9|[0x80003030]<br>0xFF76DF68|- rs1_val == 8<br>                                                                                                                  |[0x800002e8]:c.beqz a0, 247<br> [0x800002ea]:addi sp, sp, 2<br> [0x800002ee]:jal zero, 6<br> [0x800002f4]:sw sp, 32(ra)<br>   |
|  10|[0x80003034]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                 |[0x80000310]:c.beqz a0, 249<br> [0x80000312]:addi sp, sp, 2<br> [0x80000316]:jal zero, 6<br> [0x8000031c]:sw sp, 36(ra)<br>   |
|  11|[0x80003038]<br>0xFF76DF6C|- rs1_val == 32<br>                                                                                                                 |[0x80000332]:c.beqz a0, 32<br> [0x80000334]:addi sp, sp, 2<br> [0x80000338]:jal zero, 60<br> [0x80000374]:sw sp, 40(ra)<br>   |
|  12|[0x8000303c]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                 |[0x8000038a]:c.beqz a0, 6<br> [0x8000038c]:addi sp, sp, 2<br> [0x80000390]:jal zero, 8<br> [0x80000398]:sw sp, 44(ra)<br>     |
|  13|[0x80003040]<br>0xFF76DF70|- rs1_val == 128<br>                                                                                                                |[0x800003ba]:c.beqz a0, 246<br> [0x800003bc]:addi sp, sp, 2<br> [0x800003c0]:jal zero, 6<br> [0x800003c6]:sw sp, 48(ra)<br>   |
|  14|[0x80003044]<br>0xFF76DF72|- rs1_val == 256<br>                                                                                                                |[0x800003de]:c.beqz a0, 251<br> [0x800003e0]:addi sp, sp, 2<br> [0x800003e4]:jal zero, 6<br> [0x800003ea]:sw sp, 52(ra)<br>   |
|  15|[0x80003048]<br>0xFF76DF74|- rs1_val == 512<br>                                                                                                                |[0x80000400]:c.beqz a0, 63<br> [0x80000402]:addi sp, sp, 2<br> [0x80000406]:jal zero, 122<br> [0x80000480]:sw sp, 56(ra)<br>  |
|  16|[0x8000304c]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                               |[0x8000049e]:c.beqz a0, 248<br> [0x800004a0]:addi sp, sp, 2<br> [0x800004a4]:jal zero, 6<br> [0x800004aa]:sw sp, 60(ra)<br>   |
|  17|[0x80003050]<br>0xFF76DF78|- rs1_val == 2048<br>                                                                                                               |[0x80000568]:c.beqz a0, 170<br> [0x8000056a]:addi sp, sp, 2<br> [0x8000056e]:jal zero, 6<br> [0x80000574]:sw sp, 64(ra)<br>   |
|  18|[0x80003054]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                               |[0x8000058a]:c.beqz a0, 5<br> [0x8000058c]:addi sp, sp, 2<br> [0x80000590]:jal zero, 6<br> [0x80000596]:sw sp, 68(ra)<br>     |
|  19|[0x80003058]<br>0xFF76DF7C|- rs1_val == 8192<br>                                                                                                               |[0x800005ac]:c.beqz a0, 7<br> [0x800005ae]:addi sp, sp, 2<br> [0x800005b2]:jal zero, 10<br> [0x800005bc]:sw sp, 72(ra)<br>    |
|  20|[0x8000305c]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                                                              |[0x800005d2]:c.beqz a0, 252<br> [0x800005d4]:addi sp, sp, 2<br> [0x800005d8]:jal zero, 6<br> [0x800005de]:sw sp, 76(ra)<br>   |
|  21|[0x80003060]<br>0xFF76DF80|- rs1_val == 32768<br>                                                                                                              |[0x800005f4]:c.beqz a0, 32<br> [0x800005f6]:addi sp, sp, 2<br> [0x800005fa]:jal zero, 60<br> [0x80000636]:sw sp, 80(ra)<br>   |
|  22|[0x80003064]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                                                              |[0x8000064c]:c.beqz a0, 5<br> [0x8000064e]:addi sp, sp, 2<br> [0x80000652]:jal zero, 6<br> [0x80000658]:sw sp, 84(ra)<br>     |
|  23|[0x80003068]<br>0xFF76DF84|- rs1_val == 131072<br>                                                                                                             |[0x8000066e]:c.beqz a0, 5<br> [0x80000670]:addi sp, sp, 2<br> [0x80000674]:jal zero, 6<br> [0x8000067a]:sw sp, 88(ra)<br>     |
|  24|[0x8000306c]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                                                             |[0x80000690]:c.beqz a0, 252<br> [0x80000692]:addi sp, sp, 2<br> [0x80000696]:jal zero, 6<br> [0x8000069c]:sw sp, 92(ra)<br>   |
|  25|[0x80003070]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                                             |[0x800006b2]:c.beqz a0, 7<br> [0x800006b4]:addi sp, sp, 2<br> [0x800006b8]:jal zero, 10<br> [0x800006c2]:sw sp, 96(ra)<br>    |
|  26|[0x80003074]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                                                            |[0x800006f2]:c.beqz a0, 239<br> [0x800006f4]:addi sp, sp, 2<br> [0x800006f8]:jal zero, 6<br> [0x800006fe]:sw sp, 100(ra)<br>  |
|  27|[0x80003078]<br>0xFF76DF8C|- rs1_val == 2097152<br>                                                                                                            |[0x80000714]:c.beqz a0, 5<br> [0x80000716]:addi sp, sp, 2<br> [0x8000071a]:jal zero, 6<br> [0x80000720]:sw sp, 104(ra)<br>    |
|  28|[0x8000307c]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                                                            |[0x80000736]:c.beqz a0, 32<br> [0x80000738]:addi sp, sp, 2<br> [0x8000073c]:jal zero, 60<br> [0x80000778]:sw sp, 108(ra)<br>  |
|  29|[0x80003080]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                                            |[0x8000078e]:c.beqz a0, 5<br> [0x80000790]:addi sp, sp, 2<br> [0x80000794]:jal zero, 6<br> [0x8000079a]:sw sp, 112(ra)<br>    |
|  30|[0x80003084]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                                           |[0x800007b0]:c.beqz a0, 5<br> [0x800007b2]:addi sp, sp, 2<br> [0x800007b6]:jal zero, 6<br> [0x800007bc]:sw sp, 116(ra)<br>    |
|  31|[0x80003088]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                                           |[0x800007d2]:c.beqz a0, 5<br> [0x800007d4]:addi sp, sp, 2<br> [0x800007d8]:jal zero, 6<br> [0x800007de]:sw sp, 120(ra)<br>    |
|  32|[0x8000308c]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                                           |[0x800007f6]:c.beqz a0, 251<br> [0x800007f8]:addi sp, sp, 2<br> [0x800007fc]:jal zero, 6<br> [0x80000802]:sw sp, 124(ra)<br>  |
|  33|[0x80003090]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                                          |[0x8000081a]:c.beqz a0, 251<br> [0x8000081c]:addi sp, sp, 2<br> [0x80000820]:jal zero, 6<br> [0x80000826]:sw sp, 128(ra)<br>  |
|  34|[0x80003094]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                                          |[0x8000083c]:c.beqz a0, 7<br> [0x8000083e]:addi sp, sp, 2<br> [0x80000842]:jal zero, 10<br> [0x8000084c]:sw sp, 132(ra)<br>   |
|  35|[0x80003098]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                                          |[0x80000862]:c.beqz a0, 64<br> [0x80000864]:addi sp, sp, 2<br> [0x80000868]:jal zero, 124<br> [0x800008e4]:sw sp, 136(ra)<br> |
|  36|[0x8000309c]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                                         |[0x800008fe]:c.beqz a0, 250<br> [0x80000900]:addi sp, sp, 2<br> [0x80000904]:jal zero, 6<br> [0x8000090a]:sw sp, 140(ra)<br>  |
|  37|[0x800030a0]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                                                 |[0x80000920]:c.beqz a0, 7<br> [0x80000922]:addi sp, sp, 2<br> [0x80000926]:jal zero, 10<br> [0x80000930]:sw sp, 144(ra)<br>   |
|  38|[0x800030a4]<br>0xFF76DFA2|- rs1_val == -3<br>                                                                                                                 |[0x8000094e]:c.beqz a0, 248<br> [0x80000950]:addi sp, sp, 2<br> [0x80000954]:jal zero, 6<br> [0x8000095a]:sw sp, 148(ra)<br>  |
|  39|[0x800030a8]<br>0xFF76DFA4|- rs1_val == -5<br>                                                                                                                 |[0x80000970]:c.beqz a0, 5<br> [0x80000972]:addi sp, sp, 2<br> [0x80000976]:jal zero, 6<br> [0x8000097c]:sw sp, 152(ra)<br>    |
|  40|[0x800030ac]<br>0xFF76DFA6|- rs1_val == -9<br>                                                                                                                 |[0x80000992]:c.beqz a0, 8<br> [0x80000994]:addi sp, sp, 2<br> [0x80000998]:jal zero, 12<br> [0x800009a4]:sw sp, 156(ra)<br>   |
|  41|[0x800030b0]<br>0xFF76DFA8|- rs1_val == -17<br>                                                                                                                |[0x800009ba]:c.beqz a0, 252<br> [0x800009bc]:addi sp, sp, 2<br> [0x800009c0]:jal zero, 6<br> [0x800009c6]:sw sp, 160(ra)<br>  |
|  42|[0x800030b4]<br>0xFF76DFAA|- rs1_val == -33<br>                                                                                                                |[0x800009dc]:c.beqz a0, 252<br> [0x800009de]:addi sp, sp, 2<br> [0x800009e2]:jal zero, 6<br> [0x800009e8]:sw sp, 164(ra)<br>  |
|  43|[0x800030b8]<br>0xFF76DFAC|- rs1_val == -65<br>                                                                                                                |[0x800009fe]:c.beqz a0, 5<br> [0x80000a00]:addi sp, sp, 2<br> [0x80000a04]:jal zero, 6<br> [0x80000a0a]:sw sp, 168(ra)<br>    |
|  44|[0x800030bc]<br>0xFF76DFAE|- rs1_val == -129<br>                                                                                                               |[0x80000a28]:c.beqz a0, 248<br> [0x80000a2a]:addi sp, sp, 2<br> [0x80000a2e]:jal zero, 6<br> [0x80000a34]:sw sp, 172(ra)<br>  |
|  45|[0x800030c0]<br>0xFF76DFB0|- rs1_val == -257<br>                                                                                                               |[0x80000a4c]:c.beqz a0, 251<br> [0x80000a4e]:addi sp, sp, 2<br> [0x80000a52]:jal zero, 6<br> [0x80000a58]:sw sp, 176(ra)<br>  |
|  46|[0x800030c4]<br>0xFF76DFB2|- rs1_val == -513<br>                                                                                                               |[0x80000a6e]:c.beqz a0, 5<br> [0x80000a70]:addi sp, sp, 2<br> [0x80000a74]:jal zero, 6<br> [0x80000a7a]:sw sp, 180(ra)<br>    |
|  47|[0x800030c8]<br>0xFF76DFB4|- rs1_val == -1025<br>                                                                                                              |[0x80000a90]:c.beqz a0, 16<br> [0x80000a92]:addi sp, sp, 2<br> [0x80000a96]:jal zero, 28<br> [0x80000ab2]:sw sp, 184(ra)<br>  |
|  48|[0x800030cc]<br>0xFF76DFB6|- rs1_val == -2049<br>                                                                                                              |[0x80000acc]:c.beqz a0, 7<br> [0x80000ace]:addi sp, sp, 2<br> [0x80000ad2]:jal zero, 10<br> [0x80000adc]:sw sp, 188(ra)<br>   |
|  49|[0x800030d0]<br>0xFF76DFB8|- rs1_val == -4097<br>                                                                                                              |[0x80000af6]:c.beqz a0, 8<br> [0x80000af8]:addi sp, sp, 2<br> [0x80000afc]:jal zero, 12<br> [0x80000b08]:sw sp, 192(ra)<br>   |
|  50|[0x800030d4]<br>0xFF76DFBA|- rs1_val == -8193<br>                                                                                                              |[0x80000b3c]:c.beqz a0, 239<br> [0x80000b3e]:addi sp, sp, 2<br> [0x80000b42]:jal zero, 6<br> [0x80000b48]:sw sp, 196(ra)<br>  |
|  51|[0x800030d8]<br>0xFF76DFBC|- rs1_val == -16385<br>                                                                                                             |[0x80000b62]:c.beqz a0, 63<br> [0x80000b64]:addi sp, sp, 2<br> [0x80000b68]:jal zero, 122<br> [0x80000be2]:sw sp, 200(ra)<br> |
|  52|[0x800030dc]<br>0xFF76DFBE|- rs1_val == -32769<br>                                                                                                             |[0x80000bfc]:c.beqz a0, 252<br> [0x80000bfe]:addi sp, sp, 2<br> [0x80000c02]:jal zero, 6<br> [0x80000c08]:sw sp, 204(ra)<br>  |
|  53|[0x800030e0]<br>0xFF76DFC0|- rs1_val == -65537<br>                                                                                                             |[0x80000c22]:c.beqz a0, 64<br> [0x80000c24]:addi sp, sp, 2<br> [0x80000c28]:jal zero, 124<br> [0x80000ca4]:sw sp, 208(ra)<br> |
|  54|[0x800030e4]<br>0xFF76DFC2|- rs1_val == -262145<br>                                                                                                            |[0x80000cbe]:c.beqz a0, 9<br> [0x80000cc0]:addi sp, sp, 2<br> [0x80000cc4]:jal zero, 14<br> [0x80000cd2]:sw sp, 212(ra)<br>   |
|  55|[0x800030e8]<br>0xFF76DFC4|- rs1_val == -524289<br>                                                                                                            |[0x80000cf4]:c.beqz a0, 248<br> [0x80000cf6]:addi sp, sp, 2<br> [0x80000cfa]:jal zero, 6<br> [0x80000d00]:sw sp, 216(ra)<br>  |
|  56|[0x800030ec]<br>0xFF76DFC6|- rs1_val == -1048577<br>                                                                                                           |[0x80000d1a]:c.beqz a0, 8<br> [0x80000d1c]:addi sp, sp, 2<br> [0x80000d20]:jal zero, 12<br> [0x80000d2c]:sw sp, 220(ra)<br>   |
|  57|[0x800030f0]<br>0xFF76DFC8|- rs1_val == -8388609<br>                                                                                                           |[0x80000d46]:c.beqz a0, 85<br> [0x80000d48]:addi sp, sp, 2<br> [0x80000d4c]:jal zero, 166<br> [0x80000df2]:sw sp, 224(ra)<br> |
|  58|[0x800030f4]<br>0xFF76DFCA|- rs1_val == -16777217<br>                                                                                                          |[0x80000e0c]:c.beqz a0, 8<br> [0x80000e0e]:addi sp, sp, 2<br> [0x80000e12]:jal zero, 12<br> [0x80000e1e]:sw sp, 228(ra)<br>   |
|  59|[0x800030f8]<br>0xFF76DFCC|- rs1_val == -33554433<br>                                                                                                          |[0x80000e38]:c.beqz a0, 8<br> [0x80000e3a]:addi sp, sp, 2<br> [0x80000e3e]:jal zero, 12<br> [0x80000e4a]:sw sp, 232(ra)<br>   |
|  60|[0x800030fc]<br>0xFF76DFCE|- rs1_val == -67108865<br>                                                                                                          |[0x80000e68]:c.beqz a0, 250<br> [0x80000e6a]:addi sp, sp, 2<br> [0x80000e6e]:jal zero, 6<br> [0x80000e74]:sw sp, 236(ra)<br>  |
|  61|[0x80003100]<br>0xFF76DFD0|- rs1_val == -134217729<br>                                                                                                         |[0x80000e8e]:c.beqz a0, 252<br> [0x80000e90]:addi sp, sp, 2<br> [0x80000e94]:jal zero, 6<br> [0x80000e9a]:sw sp, 240(ra)<br>  |
|  62|[0x80003104]<br>0xFF76DFD2|- rs1_val == -268435457<br>                                                                                                         |[0x80000eb4]:c.beqz a0, 252<br> [0x80000eb6]:addi sp, sp, 2<br> [0x80000eba]:jal zero, 6<br> [0x80000ec0]:sw sp, 244(ra)<br>  |
|  63|[0x80003108]<br>0xFF76DFD4|- rs1_val == -536870913<br>                                                                                                         |[0x80000f52]:c.beqz a0, 192<br> [0x80000f54]:addi sp, sp, 2<br> [0x80000f58]:jal zero, 6<br> [0x80000f5e]:sw sp, 248(ra)<br>  |
|  64|[0x8000310c]<br>0xFF76DFD6|- rs1_val == -1073741825<br>                                                                                                        |[0x80000f78]:c.beqz a0, 16<br> [0x80000f7a]:addi sp, sp, 2<br> [0x80000f7e]:jal zero, 28<br> [0x80000f9a]:sw sp, 252(ra)<br>  |
|  65|[0x80003110]<br>0xFF76DFD8|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                               |[0x80000fb4]:c.beqz a0, 252<br> [0x80000fb6]:addi sp, sp, 2<br> [0x80000fba]:jal zero, 6<br> [0x80000fc0]:sw sp, 256(ra)<br>  |
|  66|[0x80003114]<br>0xFF76DFDA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                             |[0x80000ff4]:c.beqz a0, 239<br> [0x80000ff6]:addi sp, sp, 2<br> [0x80000ffa]:jal zero, 6<br> [0x80001000]:sw sp, 260(ra)<br>  |
|  67|[0x80003118]<br>0xFF76DFDC|- rs1_val==3<br>                                                                                                                    |[0x80001016]:c.beqz a0, 5<br> [0x80001018]:addi sp, sp, 2<br> [0x8000101c]:jal zero, 6<br> [0x80001022]:sw sp, 264(ra)<br>    |
|  68|[0x8000311c]<br>0xFF76DFDE|- rs1_val==5<br>                                                                                                                    |[0x80001038]:c.beqz a0, 5<br> [0x8000103a]:addi sp, sp, 2<br> [0x8000103e]:jal zero, 6<br> [0x80001044]:sw sp, 268(ra)<br>    |
|  69|[0x80003120]<br>0xFF76DFE0|- rs1_val==858993459<br>                                                                                                            |[0x8000105e]:c.beqz a0, 7<br> [0x80001060]:addi sp, sp, 2<br> [0x80001064]:jal zero, 10<br> [0x8000106e]:sw sp, 272(ra)<br>   |
|  70|[0x80003124]<br>0xFF76DFE2|- rs1_val==1717986918<br>                                                                                                           |[0x8000108a]:c.beqz a0, 251<br> [0x8000108c]:addi sp, sp, 2<br> [0x80001090]:jal zero, 6<br> [0x80001096]:sw sp, 276(ra)<br>  |
|  71|[0x80003128]<br>0xFF76DFE4|- rs1_val==46341<br>                                                                                                                |[0x800010ba]:c.beqz a0, 247<br> [0x800010bc]:addi sp, sp, 2<br> [0x800010c0]:jal zero, 6<br> [0x800010c6]:sw sp, 280(ra)<br>  |
|  72|[0x8000312c]<br>0xFF76DFE6|- rs1_val==-46340<br>                                                                                                               |[0x800010fa]:c.beqz a0, 239<br> [0x800010fc]:addi sp, sp, 2<br> [0x80001100]:jal zero, 6<br> [0x80001106]:sw sp, 284(ra)<br>  |
|  73|[0x80003130]<br>0xFF76DFE8|- rs1_val==46340<br>                                                                                                                |[0x80001120]:c.beqz a0, 85<br> [0x80001122]:addi sp, sp, 2<br> [0x80001126]:jal zero, 166<br> [0x800011cc]:sw sp, 288(ra)<br> |
|  74|[0x80003134]<br>0xFF76DFEA|- rs1_val==1431655764<br>                                                                                                           |[0x800011ea]:c.beqz a0, 250<br> [0x800011ec]:addi sp, sp, 2<br> [0x800011f0]:jal zero, 6<br> [0x800011f6]:sw sp, 292(ra)<br>  |
|  75|[0x80003138]<br>0xFF76DFEC|- rs1_val == -4194305<br>                                                                                                           |[0x8000124a]:c.beqz a0, 223<br> [0x8000124c]:addi sp, sp, 2<br> [0x80001250]:jal zero, 6<br> [0x80001256]:sw sp, 296(ra)<br>  |
|  76|[0x8000313c]<br>0xFF76DFEE|- rs1_val==1717986919<br>                                                                                                           |[0x80001270]:c.beqz a0, 252<br> [0x80001272]:addi sp, sp, 2<br> [0x80001276]:jal zero, 6<br> [0x8000127c]:sw sp, 300(ra)<br>  |
|  77|[0x80003140]<br>0xFF76DFF0|- rs1_val==858993458<br>                                                                                                            |[0x80001296]:c.beqz a0, 252<br> [0x80001298]:addi sp, sp, 2<br> [0x8000129c]:jal zero, 6<br> [0x800012a2]:sw sp, 304(ra)<br>  |
|  78|[0x80003144]<br>0xFF76DFF2|- rs1_val==1717986917<br>                                                                                                           |[0x80001334]:c.beqz a0, 192<br> [0x80001336]:addi sp, sp, 2<br> [0x8000133a]:jal zero, 6<br> [0x80001340]:sw sp, 308(ra)<br>  |
|  79|[0x80003148]<br>0xFF76DFF4|- rs1_val==46339<br>                                                                                                                |[0x8000135a]:c.beqz a0, 63<br> [0x8000135c]:addi sp, sp, 2<br> [0x80001360]:jal zero, 122<br> [0x800013da]:sw sp, 312(ra)<br> |
|  80|[0x8000314c]<br>0xFF76DFF6|- rs1_val==1431655766<br>                                                                                                           |[0x800013f4]:c.beqz a0, 9<br> [0x800013f6]:addi sp, sp, 2<br> [0x800013fa]:jal zero, 14<br> [0x80001408]:sw sp, 316(ra)<br>   |
|  81|[0x80003150]<br>0xFF76DFF8|- rs1_val==-1431655765<br>                                                                                                          |[0x80001422]:c.beqz a0, 85<br> [0x80001424]:addi sp, sp, 2<br> [0x80001428]:jal zero, 166<br> [0x800014ce]:sw sp, 320(ra)<br> |
|  82|[0x80003154]<br>0xFF76DFFA|- rs1_val==6<br>                                                                                                                    |[0x800014e8]:c.beqz a0, 250<br> [0x800014ea]:addi sp, sp, 2<br> [0x800014ee]:jal zero, 6<br> [0x800014f4]:sw sp, 324(ra)<br>  |
|  83|[0x80003158]<br>0xFF76DFFC|- rs1_val==858993460<br>                                                                                                            |[0x8000150e]:c.beqz a0, 252<br> [0x80001510]:addi sp, sp, 2<br> [0x80001514]:jal zero, 6<br> [0x8000151a]:sw sp, 328(ra)<br>  |
|  84|[0x8000315c]<br>0xFF76DFFE|- rs1_val == -2097153<br>                                                                                                           |[0x80001534]:c.beqz a0, 16<br> [0x80001536]:addi sp, sp, 2<br> [0x8000153a]:jal zero, 28<br> [0x80001556]:sw sp, 332(ra)<br>  |
|  85|[0x80003160]<br>0xFF76E000|- rs1_val==-46339<br>                                                                                                               |[0x80001570]:c.beqz a0, 9<br> [0x80001572]:addi sp, sp, 2<br> [0x80001576]:jal zero, 14<br> [0x80001584]:sw sp, 336(ra)<br>   |
