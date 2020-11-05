
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001510')]      |
| SIG_REGION                | [('0x80004204', '0x80004320', '71 words')]      |
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

|s.no|        signature         |                                         coverpoints                                         |                                                             code                                                             |
|---:|--------------------------|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004210]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x15<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 256<br> |[0x80000112]:c.beqz a5, 6<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 8<br> [0x80000120]:sw sp, 0(ra)<br>      |
|   2|[0x80004214]<br>0xFF76DF5A|- rs1 : x9<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -8388609<br>                   |[0x8000013a]:c.beqz s1, 6<br> [0x8000013c]:addi sp, sp, 2<br> [0x80000140]:jal zero, 8<br> [0x80000148]:sw sp, 4(ra)<br>      |
|   3|[0x80004218]<br>0xFF76DF5D|- rs1 : x11<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                        |[0x8000015e]:c.beqz a1, 64<br> [0x800001de]:c.addi sp, 3<br> [0x800001e0]:sw sp, 8(ra)<br>                                    |
|   4|[0x8000421c]<br>0xFF76DF5F|- rs1 : x8<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2097152<br>                    |[0x800001f6]:c.beqz s0, 252<br> [0x800001f8]:addi sp, sp, 2<br> [0x800001fc]:jal zero, 6<br> [0x80000202]:sw sp, 12(ra)<br>   |
|   5|[0x80004220]<br>0xFF76DF61|- rs1 : x10<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -67108865<br>                 |[0x80000296]:c.beqz a0, 191<br> [0x80000298]:addi sp, sp, 2<br> [0x8000029c]:jal zero, 6<br> [0x800002a2]:sw sp, 16(ra)<br>   |
|   6|[0x80004224]<br>0xFF76DF62|- rs1 : x12<br> - rs1_val == 0 and imm_val < 0<br>                                           |[0x800002f2]:c.beqz a2, 223<br> [0x800002b0]:addi sp, sp, 1<br> [0x800002b4]:jal zero, 74<br> [0x800002fe]:sw sp, 20(ra)<br>  |
|   7|[0x80004228]<br>0xFF76DF64|- rs1 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                 |[0x8000031a]:c.beqz a3, 249<br> [0x8000031c]:addi sp, sp, 2<br> [0x80000320]:jal zero, 6<br> [0x80000326]:sw sp, 24(ra)<br>   |
|   8|[0x8000422c]<br>0xFF76DF66|- rs1 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                 |[0x80000346]:c.beqz a4, 249<br> [0x80000348]:addi sp, sp, 2<br> [0x8000034c]:jal zero, 6<br> [0x80000352]:sw sp, 28(ra)<br>   |
|   9|[0x80004230]<br>0xFF76DF68|- rs1_val == 1<br>                                                                           |[0x80000368]:c.beqz a0, 5<br> [0x8000036a]:addi sp, sp, 2<br> [0x8000036e]:jal zero, 6<br> [0x80000374]:sw sp, 32(ra)<br>     |
|  10|[0x80004234]<br>0xFF76DF6A|- rs1_val == 2<br>                                                                           |[0x8000038a]:c.beqz a0, 85<br> [0x8000038c]:addi sp, sp, 2<br> [0x80000390]:jal zero, 166<br> [0x80000436]:sw sp, 36(ra)<br>  |
|  11|[0x80004238]<br>0xFF76DF6C|- rs1_val == 4<br>                                                                           |[0x8000044c]:c.beqz a0, 9<br> [0x8000044e]:addi sp, sp, 2<br> [0x80000452]:jal zero, 14<br> [0x80000460]:sw sp, 40(ra)<br>    |
|  12|[0x8000423c]<br>0xFF76DF6E|- rs1_val == 8<br>                                                                           |[0x80000476]:c.beqz a0, 9<br> [0x80000478]:addi sp, sp, 2<br> [0x8000047c]:jal zero, 14<br> [0x8000048a]:sw sp, 44(ra)<br>    |
|  13|[0x80004240]<br>0xFF76DF70|- rs1_val == 16<br>                                                                          |[0x800004a8]:c.beqz a0, 248<br> [0x800004aa]:addi sp, sp, 2<br> [0x800004ae]:jal zero, 6<br> [0x800004b4]:sw sp, 48(ra)<br>   |
|  14|[0x80004244]<br>0xFF76DF72|- rs1_val == 32<br>                                                                          |[0x800004ca]:c.beqz a0, 252<br> [0x800004cc]:addi sp, sp, 2<br> [0x800004d0]:jal zero, 6<br> [0x800004d6]:sw sp, 52(ra)<br>   |
|  15|[0x80004248]<br>0xFF76DF74|- rs1_val == 64<br>                                                                          |[0x800004ec]:c.beqz a0, 32<br> [0x800004ee]:addi sp, sp, 2<br> [0x800004f2]:jal zero, 60<br> [0x8000052e]:sw sp, 56(ra)<br>   |
|  16|[0x8000424c]<br>0xFF76DF76|- rs1_val == 128<br>                                                                         |[0x80000544]:c.beqz a0, 9<br> [0x80000546]:addi sp, sp, 2<br> [0x8000054a]:jal zero, 14<br> [0x80000558]:sw sp, 60(ra)<br>    |
|  17|[0x80004250]<br>0xFF76DF78|- rs1_val == 512<br>                                                                         |[0x8000057a]:c.beqz a0, 246<br> [0x8000057c]:addi sp, sp, 2<br> [0x80000580]:jal zero, 6<br> [0x80000586]:sw sp, 64(ra)<br>   |
|  18|[0x80004254]<br>0xFF76DF7A|- rs1_val == 1024<br>                                                                        |[0x8000059c]:c.beqz a0, 9<br> [0x8000059e]:addi sp, sp, 2<br> [0x800005a2]:jal zero, 14<br> [0x800005b0]:sw sp, 68(ra)<br>    |
|  19|[0x80004258]<br>0xFF76DF7C|- rs1_val == 2048<br>                                                                        |[0x800005ca]:c.beqz a0, 6<br> [0x800005cc]:addi sp, sp, 2<br> [0x800005d0]:jal zero, 8<br> [0x800005d8]:sw sp, 72(ra)<br>     |
|  20|[0x8000425c]<br>0xFF76DF7E|- rs1_val == 4096<br>                                                                        |[0x800005ee]:c.beqz a0, 9<br> [0x800005f0]:addi sp, sp, 2<br> [0x800005f4]:jal zero, 14<br> [0x80000602]:sw sp, 76(ra)<br>    |
|  21|[0x80004260]<br>0xFF76DF80|- rs1_val == 8192<br>                                                                        |[0x80000618]:c.beqz a0, 64<br> [0x8000061a]:addi sp, sp, 2<br> [0x8000061e]:jal zero, 124<br> [0x8000069a]:sw sp, 80(ra)<br>  |
|  22|[0x80004264]<br>0xFF76DF82|- rs1_val == 16384<br>                                                                       |[0x800006b0]:c.beqz a0, 63<br> [0x800006b2]:addi sp, sp, 2<br> [0x800006b6]:jal zero, 122<br> [0x80000730]:sw sp, 84(ra)<br>  |
|  23|[0x80004268]<br>0xFF76DF84|- rs1_val == 32768<br>                                                                       |[0x80000746]:c.beqz a0, 16<br> [0x80000748]:addi sp, sp, 2<br> [0x8000074c]:jal zero, 28<br> [0x80000768]:sw sp, 88(ra)<br>   |
|  24|[0x8000426c]<br>0xFF76DF86|- rs1_val == 65536<br>                                                                       |[0x8000077e]:c.beqz a0, 16<br> [0x80000780]:addi sp, sp, 2<br> [0x80000784]:jal zero, 28<br> [0x800007a0]:sw sp, 92(ra)<br>   |
|  25|[0x80004270]<br>0xFF76DF88|- rs1_val == 131072<br>                                                                      |[0x800007c0]:c.beqz a0, 247<br> [0x800007c2]:addi sp, sp, 2<br> [0x800007c6]:jal zero, 6<br> [0x800007cc]:sw sp, 96(ra)<br>   |
|  26|[0x80004274]<br>0xFF76DF8A|- rs1_val == 262144<br>                                                                      |[0x800007fc]:c.beqz a0, 239<br> [0x800007fe]:addi sp, sp, 2<br> [0x80000802]:jal zero, 6<br> [0x80000808]:sw sp, 100(ra)<br>  |
|  27|[0x80004278]<br>0xFF76DF8C|- rs1_val == 524288<br>                                                                      |[0x80000826]:c.beqz a0, 248<br> [0x80000828]:addi sp, sp, 2<br> [0x8000082c]:jal zero, 6<br> [0x80000832]:sw sp, 104(ra)<br>  |
|  28|[0x8000427c]<br>0xFF76DF8E|- rs1_val == 1048576<br>                                                                     |[0x80000848]:c.beqz a0, 5<br> [0x8000084a]:addi sp, sp, 2<br> [0x8000084e]:jal zero, 6<br> [0x80000854]:sw sp, 108(ra)<br>    |
|  29|[0x80004280]<br>0xFF76DF90|- rs1_val == 4194304<br>                                                                     |[0x8000086a]:c.beqz a0, 64<br> [0x8000086c]:addi sp, sp, 2<br> [0x80000870]:jal zero, 124<br> [0x800008ec]:sw sp, 112(ra)<br> |
|  30|[0x80004284]<br>0xFF76DF92|- rs1_val == 8388608<br>                                                                     |[0x80000902]:c.beqz a0, 32<br> [0x80000904]:addi sp, sp, 2<br> [0x80000908]:jal zero, 60<br> [0x80000944]:sw sp, 116(ra)<br>  |
|  31|[0x80004288]<br>0xFF76DF94|- rs1_val == 16777216<br>                                                                    |[0x8000095a]:c.beqz a0, 252<br> [0x8000095c]:addi sp, sp, 2<br> [0x80000960]:jal zero, 6<br> [0x80000966]:sw sp, 120(ra)<br>  |
|  32|[0x8000428c]<br>0xFF76DF96|- rs1_val == 33554432<br>                                                                    |[0x8000097c]:c.beqz a0, 85<br> [0x8000097e]:addi sp, sp, 2<br> [0x80000982]:jal zero, 166<br> [0x80000a28]:sw sp, 124(ra)<br> |
|  33|[0x80004290]<br>0xFF76DF98|- rs1_val == 67108864<br>                                                                    |[0x80000a44]:c.beqz a0, 249<br> [0x80000a46]:addi sp, sp, 2<br> [0x80000a4a]:jal zero, 6<br> [0x80000a50]:sw sp, 128(ra)<br>  |
|  34|[0x80004294]<br>0xFF76DF9A|- rs1_val == 134217728<br>                                                                   |[0x80000a66]:c.beqz a0, 63<br> [0x80000a68]:addi sp, sp, 2<br> [0x80000a6c]:jal zero, 122<br> [0x80000ae6]:sw sp, 132(ra)<br> |
|  35|[0x80004298]<br>0xFF76DF9C|- rs1_val == 268435456<br>                                                                   |[0x80000afc]:c.beqz a0, 8<br> [0x80000afe]:addi sp, sp, 2<br> [0x80000b02]:jal zero, 12<br> [0x80000b0e]:sw sp, 136(ra)<br>   |
|  36|[0x8000429c]<br>0xFF76DF9E|- rs1_val == 536870912<br>                                                                   |[0x80000b9c]:c.beqz a0, 192<br> [0x80000b9e]:addi sp, sp, 2<br> [0x80000ba2]:jal zero, 6<br> [0x80000ba8]:sw sp, 140(ra)<br>  |
|  37|[0x800042a0]<br>0xFF76DFA0|- rs1_val == 1073741824<br>                                                                  |[0x80000bd8]:c.beqz a0, 239<br> [0x80000bda]:addi sp, sp, 2<br> [0x80000bde]:jal zero, 6<br> [0x80000be4]:sw sp, 144(ra)<br>  |
|  38|[0x800042a4]<br>0xFF76DFA2|- rs1_val == -16777217<br>                                                                   |[0x80000bfe]:c.beqz a0, 5<br> [0x80000c00]:addi sp, sp, 2<br> [0x80000c04]:jal zero, 6<br> [0x80000c0a]:sw sp, 148(ra)<br>    |
|  39|[0x800042a8]<br>0xFF76DFA4|- rs1_val == -33554433<br>                                                                   |[0x80000c3e]:c.beqz a0, 239<br> [0x80000c40]:addi sp, sp, 2<br> [0x80000c44]:jal zero, 6<br> [0x80000c4a]:sw sp, 152(ra)<br>  |
|  40|[0x800042ac]<br>0xFF76DFA6|- rs1_val == -134217729<br>                                                                  |[0x80000cde]:c.beqz a0, 191<br> [0x80000ce0]:addi sp, sp, 2<br> [0x80000ce4]:jal zero, 6<br> [0x80000cea]:sw sp, 156(ra)<br>  |
|  41|[0x800042b0]<br>0xFF76DFA8|- rs1_val == -268435457<br>                                                                  |[0x80000d0e]:c.beqz a0, 247<br> [0x80000d10]:addi sp, sp, 2<br> [0x80000d14]:jal zero, 6<br> [0x80000d1a]:sw sp, 160(ra)<br>  |
|  42|[0x800042b4]<br>0xFF76DFAA|- rs1_val == -536870913<br>                                                                  |[0x80000d34]:c.beqz a0, 7<br> [0x80000d36]:addi sp, sp, 2<br> [0x80000d3a]:jal zero, 10<br> [0x80000d44]:sw sp, 164(ra)<br>   |
|  43|[0x800042b8]<br>0xFF76DFAC|- rs1_val == -1073741825<br>                                                                 |[0x80000d5e]:c.beqz a0, 6<br> [0x80000d60]:addi sp, sp, 2<br> [0x80000d64]:jal zero, 8<br> [0x80000d6c]:sw sp, 168(ra)<br>    |
|  44|[0x800042bc]<br>0xFF76DFAE|- rs1_val == 1431655765<br>                                                                  |[0x80000d86]:c.beqz a0, 16<br> [0x80000d88]:addi sp, sp, 2<br> [0x80000d8c]:jal zero, 28<br> [0x80000da8]:sw sp, 172(ra)<br>  |
|  45|[0x800042c0]<br>0xFF76DFB0|- rs1_val == -1431655766<br>                                                                 |[0x80000dc2]:c.beqz a0, 252<br> [0x80000dc4]:addi sp, sp, 2<br> [0x80000dc8]:jal zero, 6<br> [0x80000dce]:sw sp, 176(ra)<br>  |
|  46|[0x800042c4]<br>0xFF76DFB2|- rs1_val == -2<br>                                                                          |[0x80000de4]:c.beqz a0, 64<br> [0x80000de6]:addi sp, sp, 2<br> [0x80000dea]:jal zero, 124<br> [0x80000e66]:sw sp, 180(ra)<br> |
|  47|[0x800042c8]<br>0xFF76DFB4|- rs1_val == -3<br>                                                                          |[0x80000e7c]:c.beqz a0, 63<br> [0x80000e7e]:addi sp, sp, 2<br> [0x80000e82]:jal zero, 122<br> [0x80000efc]:sw sp, 184(ra)<br> |
|  48|[0x800042cc]<br>0xFF76DFB6|- rs1_val == -5<br>                                                                          |[0x80000f12]:c.beqz a0, 6<br> [0x80000f14]:addi sp, sp, 2<br> [0x80000f18]:jal zero, 8<br> [0x80000f20]:sw sp, 188(ra)<br>    |
|  49|[0x800042d0]<br>0xFF76DFB8|- rs1_val == -9<br>                                                                          |[0x80000f3c]:c.beqz a0, 249<br> [0x80000f3e]:addi sp, sp, 2<br> [0x80000f42]:jal zero, 6<br> [0x80000f48]:sw sp, 192(ra)<br>  |
|  50|[0x800042d4]<br>0xFF76DFBA|- rs1_val == -17<br>                                                                         |[0x80000f5e]:c.beqz a0, 64<br> [0x80000f60]:addi sp, sp, 2<br> [0x80000f64]:jal zero, 124<br> [0x80000fe0]:sw sp, 196(ra)<br> |
|  51|[0x800042d8]<br>0xFF76DFBC|- rs1_val == -33<br>                                                                         |[0x80000ff6]:c.beqz a0, 16<br> [0x80000ff8]:addi sp, sp, 2<br> [0x80000ffc]:jal zero, 28<br> [0x80001018]:sw sp, 200(ra)<br>  |
|  52|[0x800042dc]<br>0xFF76DFBE|- rs1_val == -65<br>                                                                         |[0x8000102e]:c.beqz a0, 7<br> [0x80001030]:addi sp, sp, 2<br> [0x80001034]:jal zero, 10<br> [0x8000103e]:sw sp, 204(ra)<br>   |
|  53|[0x800042e0]<br>0xFF76DFC0|- rs1_val == -129<br>                                                                        |[0x80001054]:c.beqz a0, 6<br> [0x80001056]:addi sp, sp, 2<br> [0x8000105a]:jal zero, 8<br> [0x80001062]:sw sp, 208(ra)<br>    |
|  54|[0x800042e4]<br>0xFF76DFC2|- rs1_val == -257<br>                                                                        |[0x80001078]:c.beqz a0, 9<br> [0x8000107a]:addi sp, sp, 2<br> [0x8000107e]:jal zero, 14<br> [0x8000108c]:sw sp, 212(ra)<br>   |
|  55|[0x800042e8]<br>0xFF76DFC4|- rs1_val == -513<br>                                                                        |[0x800010ae]:c.beqz a0, 246<br> [0x800010b0]:addi sp, sp, 2<br> [0x800010b4]:jal zero, 6<br> [0x800010ba]:sw sp, 216(ra)<br>  |
|  56|[0x800042ec]<br>0xFF76DFC6|- rs1_val == -1025<br>                                                                       |[0x800010d0]:c.beqz a0, 63<br> [0x800010d2]:addi sp, sp, 2<br> [0x800010d6]:jal zero, 122<br> [0x80001150]:sw sp, 220(ra)<br> |
|  57|[0x800042f0]<br>0xFF76DFC8|- rs1_val == -2049<br>                                                                       |[0x80001176]:c.beqz a0, 246<br> [0x80001178]:addi sp, sp, 2<br> [0x8000117c]:jal zero, 6<br> [0x80001182]:sw sp, 224(ra)<br>  |
|  58|[0x800042f4]<br>0xFF76DFCA|- rs1_val == -4097<br>                                                                       |[0x8000119c]:c.beqz a0, 7<br> [0x8000119e]:addi sp, sp, 2<br> [0x800011a2]:jal zero, 10<br> [0x800011ac]:sw sp, 228(ra)<br>   |
|  59|[0x800042f8]<br>0xFF76DFCC|- rs1_val == -8193<br>                                                                       |[0x800011c6]:c.beqz a0, 5<br> [0x800011c8]:addi sp, sp, 2<br> [0x800011cc]:jal zero, 6<br> [0x800011d2]:sw sp, 232(ra)<br>    |
|  60|[0x800042fc]<br>0xFF76DFCE|- rs1_val == -16385<br>                                                                      |[0x800011ec]:c.beqz a0, 85<br> [0x800011ee]:addi sp, sp, 2<br> [0x800011f2]:jal zero, 166<br> [0x80001298]:sw sp, 236(ra)<br> |
|  61|[0x80004300]<br>0xFF76DFD0|- rs1_val == -32769<br>                                                                      |[0x800012b2]:c.beqz a0, 6<br> [0x800012b4]:addi sp, sp, 2<br> [0x800012b8]:jal zero, 8<br> [0x800012c0]:sw sp, 240(ra)<br>    |
|  62|[0x80004304]<br>0xFF76DFD2|- rs1_val == -65537<br>                                                                      |[0x800012de]:c.beqz a0, 250<br> [0x800012e0]:addi sp, sp, 2<br> [0x800012e4]:jal zero, 6<br> [0x800012ea]:sw sp, 244(ra)<br>  |
|  63|[0x80004308]<br>0xFF76DFD4|- rs1_val == -131073<br>                                                                     |[0x80001306]:c.beqz a0, 251<br> [0x80001308]:addi sp, sp, 2<br> [0x8000130c]:jal zero, 6<br> [0x80001312]:sw sp, 248(ra)<br>  |
|  64|[0x8000430c]<br>0xFF76DFD6|- rs1_val == -262145<br>                                                                     |[0x8000132c]:c.beqz a0, 85<br> [0x8000132e]:addi sp, sp, 2<br> [0x80001332]:jal zero, 166<br> [0x800013d8]:sw sp, 252(ra)<br> |
|  65|[0x80004310]<br>0xFF76DFD8|- rs1_val == -524289<br>                                                                     |[0x800013f2]:c.beqz a0, 64<br> [0x800013f4]:addi sp, sp, 2<br> [0x800013f8]:jal zero, 124<br> [0x80001474]:sw sp, 256(ra)<br> |
|  66|[0x80004314]<br>0xFF76DFDA|- rs1_val == -1048577<br>                                                                    |[0x8000148e]:c.beqz a0, 16<br> [0x80001490]:addi sp, sp, 2<br> [0x80001494]:jal zero, 28<br> [0x800014b0]:sw sp, 260(ra)<br>  |
|  67|[0x80004318]<br>0xFF76DFDC|- rs1_val == -2097153<br>                                                                    |[0x800014d2]:c.beqz a0, 248<br> [0x800014d4]:addi sp, sp, 2<br> [0x800014d8]:jal zero, 6<br> [0x800014de]:sw sp, 264(ra)<br>  |
|  68|[0x8000431c]<br>0xFF76DFDE|- rs1_val == -4194305<br>                                                                    |[0x800014fe]:c.beqz a0, 249<br> [0x80001500]:addi sp, sp, 2<br> [0x80001504]:jal zero, 6<br> [0x8000150a]:sw sp, 268(ra)<br>  |
