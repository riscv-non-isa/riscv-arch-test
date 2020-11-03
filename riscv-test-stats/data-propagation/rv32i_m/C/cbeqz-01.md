
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800015d0')]      |
| SIG_REGION                | [('0x80004204', '0x80004320', '71 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 84     |
| Total Signature Updates   | 68      |
| Total Coverpoints Covered | 84      |
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
|   1|[0x80004210]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x12<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 2097152<br>               |[0x80000112]:c.beqz a2, 5<br> [0x80000114]:addi sp, sp, 2<br> [0x80000118]:jal zero, 6<br> [0x8000011e]:sw sp, 0(ra)<br>      |
|   2|[0x80004214]<br>0xFF76DF5A|- rs1 : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483648<br> |[0x80000134]:c.beqz a4, 6<br> [0x80000136]:addi sp, sp, 2<br> [0x8000013a]:jal zero, 8<br> [0x80000142]:sw sp, 4(ra)<br>      |
|   3|[0x80004218]<br>0xFF76DF5D|- rs1 : x15<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                          |[0x80000158]:c.beqz a5, 63<br> [0x800001d6]:c.addi sp, 3<br> [0x800001d8]:sw sp, 8(ra)<br>                                    |
|   4|[0x8000421c]<br>0xFF76DF5F|- rs1 : x9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 4194304<br>                                      |[0x80000228]:c.beqz s1, 223<br> [0x8000022a]:addi sp, sp, 2<br> [0x8000022e]:jal zero, 6<br> [0x80000234]:sw sp, 12(ra)<br>   |
|   5|[0x80004220]<br>0xFF76DF61|- rs1 : x13<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1025<br>                                       |[0x80000256]:c.beqz a3, 246<br> [0x80000258]:addi sp, sp, 2<br> [0x8000025c]:jal zero, 6<br> [0x80000262]:sw sp, 16(ra)<br>   |
|   6|[0x80004224]<br>0xFF76DF62|- rs1 : x11<br> - rs1_val == 0 and imm_val < 0<br>                                                             |[0x800002f0]:c.beqz a1, 192<br> [0x80000270]:addi sp, sp, 1<br> [0x80000274]:jal zero, 136<br> [0x800002fc]:sw sp, 20(ra)<br> |
|   7|[0x80004228]<br>0xFF76DF64|- rs1 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                   |[0x80000316]:c.beqz a0, 5<br> [0x80000318]:addi sp, sp, 2<br> [0x8000031c]:jal zero, 6<br> [0x80000322]:sw sp, 24(ra)<br>     |
|   8|[0x8000422c]<br>0xFF76DF66|- rs1 : x8<br> - rs1_val == 1<br>                                                                              |[0x8000033c]:c.beqz s0, 250<br> [0x8000033e]:addi sp, sp, 2<br> [0x80000342]:jal zero, 6<br> [0x80000348]:sw sp, 28(ra)<br>   |
|   9|[0x80004230]<br>0xFF76DF68|- rs1_val == 2<br>                                                                                             |[0x80000402]:c.beqz a0, 170<br> [0x80000404]:addi sp, sp, 2<br> [0x80000408]:jal zero, 6<br> [0x8000040e]:sw sp, 32(ra)<br>   |
|  10|[0x80004234]<br>0xFF76DF6A|- rs1_val == 4<br>                                                                                             |[0x8000042a]:c.beqz a0, 249<br> [0x8000042c]:addi sp, sp, 2<br> [0x80000430]:jal zero, 6<br> [0x80000436]:sw sp, 36(ra)<br>   |
|  11|[0x80004238]<br>0xFF76DF6C|- rs1_val == 8<br>                                                                                             |[0x8000044c]:c.beqz a0, 16<br> [0x8000044e]:addi sp, sp, 2<br> [0x80000452]:jal zero, 28<br> [0x8000046e]:sw sp, 40(ra)<br>   |
|  12|[0x8000423c]<br>0xFF76DF6E|- rs1_val == 16<br>                                                                                            |[0x80000490]:c.beqz a0, 246<br> [0x80000492]:addi sp, sp, 2<br> [0x80000496]:jal zero, 6<br> [0x8000049c]:sw sp, 44(ra)<br>   |
|  13|[0x80004240]<br>0xFF76DF70|- rs1_val == 32<br>                                                                                            |[0x800004b2]:c.beqz a0, 8<br> [0x800004b4]:addi sp, sp, 2<br> [0x800004b8]:jal zero, 12<br> [0x800004c4]:sw sp, 48(ra)<br>    |
|  14|[0x80004244]<br>0xFF76DF72|- rs1_val == 64<br>                                                                                            |[0x800004e2]:c.beqz a0, 248<br> [0x800004e4]:addi sp, sp, 2<br> [0x800004e8]:jal zero, 6<br> [0x800004ee]:sw sp, 52(ra)<br>   |
|  15|[0x80004248]<br>0xFF76DF74|- rs1_val == 128<br>                                                                                           |[0x80000508]:c.beqz a0, 250<br> [0x8000050a]:addi sp, sp, 2<br> [0x8000050e]:jal zero, 6<br> [0x80000514]:sw sp, 56(ra)<br>   |
|  16|[0x8000424c]<br>0xFF76DF76|- rs1_val == 256<br>                                                                                           |[0x800005a2]:c.beqz a0, 192<br> [0x800005a4]:addi sp, sp, 2<br> [0x800005a8]:jal zero, 6<br> [0x800005ae]:sw sp, 60(ra)<br>   |
|  17|[0x80004250]<br>0xFF76DF78|- rs1_val == 512<br>                                                                                           |[0x800005c4]:c.beqz a0, 8<br> [0x800005c6]:addi sp, sp, 2<br> [0x800005ca]:jal zero, 12<br> [0x800005d6]:sw sp, 64(ra)<br>    |
|  18|[0x80004254]<br>0xFF76DF7A|- rs1_val == 1024<br>                                                                                          |[0x800005ec]:c.beqz a0, 85<br> [0x800005ee]:addi sp, sp, 2<br> [0x800005f2]:jal zero, 166<br> [0x80000698]:sw sp, 68(ra)<br>  |
|  19|[0x80004258]<br>0xFF76DF7C|- rs1_val == 2048<br>                                                                                          |[0x800006b2]:c.beqz a0, 5<br> [0x800006b4]:addi sp, sp, 2<br> [0x800006b8]:jal zero, 6<br> [0x800006be]:sw sp, 72(ra)<br>     |
|  20|[0x8000425c]<br>0xFF76DF7E|- rs1_val == 4096<br>                                                                                          |[0x800006d4]:c.beqz a0, 9<br> [0x800006d6]:addi sp, sp, 2<br> [0x800006da]:jal zero, 14<br> [0x800006e8]:sw sp, 76(ra)<br>    |
|  21|[0x80004260]<br>0xFF76DF80|- rs1_val == 8192<br>                                                                                          |[0x800006fe]:c.beqz a0, 5<br> [0x80000700]:addi sp, sp, 2<br> [0x80000704]:jal zero, 6<br> [0x8000070a]:sw sp, 80(ra)<br>     |
|  22|[0x80004264]<br>0xFF76DF82|- rs1_val == 16384<br>                                                                                         |[0x8000079a]:c.beqz a0, 191<br> [0x8000079c]:addi sp, sp, 2<br> [0x800007a0]:jal zero, 6<br> [0x800007a6]:sw sp, 84(ra)<br>   |
|  23|[0x80004268]<br>0xFF76DF84|- rs1_val == 32768<br>                                                                                         |[0x800007bc]:c.beqz a0, 252<br> [0x800007be]:addi sp, sp, 2<br> [0x800007c2]:jal zero, 6<br> [0x800007c8]:sw sp, 88(ra)<br>   |
|  24|[0x8000426c]<br>0xFF76DF86|- rs1_val == 65536<br>                                                                                         |[0x800007de]:c.beqz a0, 16<br> [0x800007e0]:addi sp, sp, 2<br> [0x800007e4]:jal zero, 28<br> [0x80000800]:sw sp, 92(ra)<br>   |
|  25|[0x80004270]<br>0xFF76DF88|- rs1_val == 131072<br>                                                                                        |[0x80000830]:c.beqz a0, 239<br> [0x80000832]:addi sp, sp, 2<br> [0x80000836]:jal zero, 6<br> [0x8000083c]:sw sp, 96(ra)<br>   |
|  26|[0x80004274]<br>0xFF76DF8A|- rs1_val == 262144<br>                                                                                        |[0x80000852]:c.beqz a0, 5<br> [0x80000854]:addi sp, sp, 2<br> [0x80000858]:jal zero, 6<br> [0x8000085e]:sw sp, 100(ra)<br>    |
|  27|[0x80004278]<br>0xFF76DF8C|- rs1_val == 524288<br>                                                                                        |[0x80000874]:c.beqz a0, 8<br> [0x80000876]:addi sp, sp, 2<br> [0x8000087a]:jal zero, 12<br> [0x80000886]:sw sp, 104(ra)<br>   |
|  28|[0x8000427c]<br>0xFF76DF8E|- rs1_val == 1048576<br>                                                                                       |[0x8000089c]:c.beqz a0, 252<br> [0x8000089e]:addi sp, sp, 2<br> [0x800008a2]:jal zero, 6<br> [0x800008a8]:sw sp, 108(ra)<br>  |
|  29|[0x80004280]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                       |[0x800008be]:c.beqz a0, 5<br> [0x800008c0]:addi sp, sp, 2<br> [0x800008c4]:jal zero, 6<br> [0x800008ca]:sw sp, 112(ra)<br>    |
|  30|[0x80004284]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                      |[0x800008e0]:c.beqz a0, 63<br> [0x800008e2]:addi sp, sp, 2<br> [0x800008e6]:jal zero, 122<br> [0x80000960]:sw sp, 116(ra)<br> |
|  31|[0x80004288]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                      |[0x80000976]:c.beqz a0, 5<br> [0x80000978]:addi sp, sp, 2<br> [0x8000097c]:jal zero, 6<br> [0x80000982]:sw sp, 120(ra)<br>    |
|  32|[0x8000428c]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                      |[0x80000998]:c.beqz a0, 252<br> [0x8000099a]:addi sp, sp, 2<br> [0x8000099e]:jal zero, 6<br> [0x800009a4]:sw sp, 124(ra)<br>  |
|  33|[0x80004290]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                     |[0x800009ba]:c.beqz a0, 85<br> [0x800009bc]:addi sp, sp, 2<br> [0x800009c0]:jal zero, 166<br> [0x80000a66]:sw sp, 128(ra)<br> |
|  34|[0x80004294]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                     |[0x80000ab6]:c.beqz a0, 223<br> [0x80000ab8]:addi sp, sp, 2<br> [0x80000abc]:jal zero, 6<br> [0x80000ac2]:sw sp, 132(ra)<br>  |
|  35|[0x80004298]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                     |[0x80000ad8]:c.beqz a0, 7<br> [0x80000ada]:addi sp, sp, 2<br> [0x80000ade]:jal zero, 10<br> [0x80000ae8]:sw sp, 136(ra)<br>   |
|  36|[0x8000429c]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                    |[0x80000afe]:c.beqz a0, 5<br> [0x80000b00]:addi sp, sp, 2<br> [0x80000b04]:jal zero, 6<br> [0x80000b0a]:sw sp, 140(ra)<br>    |
|  37|[0x800042a0]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                            |[0x80000b20]:c.beqz a0, 5<br> [0x80000b22]:addi sp, sp, 2<br> [0x80000b26]:jal zero, 6<br> [0x80000b2c]:sw sp, 144(ra)<br>    |
|  38|[0x800042a4]<br>0xFF76DFA2|- rs1_val == -8388609<br>                                                                                      |[0x80000b46]:c.beqz a0, 85<br> [0x80000b48]:addi sp, sp, 2<br> [0x80000b4c]:jal zero, 166<br> [0x80000bf2]:sw sp, 148(ra)<br> |
|  39|[0x800042a8]<br>0xFF76DFA4|- rs1_val == -16777217<br>                                                                                     |[0x80000c0c]:c.beqz a0, 5<br> [0x80000c0e]:addi sp, sp, 2<br> [0x80000c12]:jal zero, 6<br> [0x80000c18]:sw sp, 152(ra)<br>    |
|  40|[0x800042ac]<br>0xFF76DFA6|- rs1_val == -33554433<br>                                                                                     |[0x80000c4c]:c.beqz a0, 239<br> [0x80000c4e]:addi sp, sp, 2<br> [0x80000c52]:jal zero, 6<br> [0x80000c58]:sw sp, 156(ra)<br>  |
|  41|[0x800042b0]<br>0xFF76DFA8|- rs1_val == -67108865<br>                                                                                     |[0x80000c72]:c.beqz a0, 64<br> [0x80000c74]:addi sp, sp, 2<br> [0x80000c78]:jal zero, 124<br> [0x80000cf4]:sw sp, 160(ra)<br> |
|  42|[0x800042b4]<br>0xFF76DFAA|- rs1_val == -134217729<br>                                                                                    |[0x80000d0e]:c.beqz a0, 5<br> [0x80000d10]:addi sp, sp, 2<br> [0x80000d14]:jal zero, 6<br> [0x80000d1a]:sw sp, 164(ra)<br>    |
|  43|[0x800042b8]<br>0xFF76DFAC|- rs1_val == -268435457<br>                                                                                    |[0x80000d34]:c.beqz a0, 6<br> [0x80000d36]:addi sp, sp, 2<br> [0x80000d3a]:jal zero, 8<br> [0x80000d42]:sw sp, 168(ra)<br>    |
|  44|[0x800042bc]<br>0xFF76DFAE|- rs1_val == -536870913<br>                                                                                    |[0x80000d5c]:c.beqz a0, 5<br> [0x80000d5e]:addi sp, sp, 2<br> [0x80000d62]:jal zero, 6<br> [0x80000d68]:sw sp, 172(ra)<br>    |
|  45|[0x800042c0]<br>0xFF76DFB0|- rs1_val == -1073741825<br>                                                                                   |[0x80000d84]:c.beqz a0, 251<br> [0x80000d86]:addi sp, sp, 2<br> [0x80000d8a]:jal zero, 6<br> [0x80000d90]:sw sp, 176(ra)<br>  |
|  46|[0x800042c4]<br>0xFF76DFB2|- rs1_val == 1431655765<br>                                                                                    |[0x80000e4e]:c.beqz a0, 170<br> [0x80000e50]:addi sp, sp, 2<br> [0x80000e54]:jal zero, 6<br> [0x80000e5a]:sw sp, 180(ra)<br>  |
|  47|[0x800042c8]<br>0xFF76DFB4|- rs1_val == -1431655766<br>                                                                                   |[0x80000e74]:c.beqz a0, 252<br> [0x80000e76]:addi sp, sp, 2<br> [0x80000e7a]:jal zero, 6<br> [0x80000e80]:sw sp, 184(ra)<br>  |
|  48|[0x800042cc]<br>0xFF76DFB6|- rs1_val == -3<br>                                                                                            |[0x80000e96]:c.beqz a0, 6<br> [0x80000e98]:addi sp, sp, 2<br> [0x80000e9c]:jal zero, 8<br> [0x80000ea4]:sw sp, 188(ra)<br>    |
|  49|[0x800042d0]<br>0xFF76DFB8|- rs1_val == -5<br>                                                                                            |[0x80000f5e]:c.beqz a0, 170<br> [0x80000f60]:addi sp, sp, 2<br> [0x80000f64]:jal zero, 6<br> [0x80000f6a]:sw sp, 192(ra)<br>  |
|  50|[0x800042d4]<br>0xFF76DFBA|- rs1_val == -9<br>                                                                                            |[0x80000f86]:c.beqz a0, 249<br> [0x80000f88]:addi sp, sp, 2<br> [0x80000f8c]:jal zero, 6<br> [0x80000f92]:sw sp, 196(ra)<br>  |
|  51|[0x800042d8]<br>0xFF76DFBC|- rs1_val == -17<br>                                                                                           |[0x80000fa8]:c.beqz a0, 85<br> [0x80000faa]:addi sp, sp, 2<br> [0x80000fae]:jal zero, 166<br> [0x80001054]:sw sp, 200(ra)<br> |
|  52|[0x800042dc]<br>0xFF76DFBE|- rs1_val == -33<br>                                                                                           |[0x8000106a]:c.beqz a0, 9<br> [0x8000106c]:addi sp, sp, 2<br> [0x80001070]:jal zero, 14<br> [0x8000107e]:sw sp, 204(ra)<br>   |
|  53|[0x800042e0]<br>0xFF76DFC0|- rs1_val == -65<br>                                                                                           |[0x80001094]:c.beqz a0, 64<br> [0x80001096]:addi sp, sp, 2<br> [0x8000109a]:jal zero, 124<br> [0x80001116]:sw sp, 208(ra)<br> |
|  54|[0x800042e4]<br>0xFF76DFC2|- rs1_val == -129<br>                                                                                          |[0x8000112c]:c.beqz a0, 32<br> [0x8000112e]:addi sp, sp, 2<br> [0x80001132]:jal zero, 60<br> [0x8000116e]:sw sp, 212(ra)<br>  |
|  55|[0x800042e8]<br>0xFF76DFC4|- rs1_val == -257<br>                                                                                          |[0x80001184]:c.beqz a0, 16<br> [0x80001186]:addi sp, sp, 2<br> [0x8000118a]:jal zero, 28<br> [0x800011a6]:sw sp, 216(ra)<br>  |
|  56|[0x800042ec]<br>0xFF76DFC6|- rs1_val == -513<br>                                                                                          |[0x800011c6]:c.beqz a0, 247<br> [0x800011c8]:addi sp, sp, 2<br> [0x800011cc]:jal zero, 6<br> [0x800011d2]:sw sp, 220(ra)<br>  |
|  57|[0x800042f0]<br>0xFF76DFC8|- rs1_val == -2049<br>                                                                                         |[0x800011ec]:c.beqz a0, 63<br> [0x800011ee]:addi sp, sp, 2<br> [0x800011f2]:jal zero, 122<br> [0x8000126c]:sw sp, 224(ra)<br> |
|  58|[0x800042f4]<br>0xFF76DFCA|- rs1_val == -4097<br>                                                                                         |[0x80001286]:c.beqz a0, 5<br> [0x80001288]:addi sp, sp, 2<br> [0x8000128c]:jal zero, 6<br> [0x80001292]:sw sp, 228(ra)<br>    |
|  59|[0x800042f8]<br>0xFF76DFCC|- rs1_val == -8193<br>                                                                                         |[0x800012ac]:c.beqz a0, 63<br> [0x800012ae]:addi sp, sp, 2<br> [0x800012b2]:jal zero, 122<br> [0x8000132c]:sw sp, 232(ra)<br> |
|  60|[0x800042fc]<br>0xFF76DFCE|- rs1_val == -16385<br>                                                                                        |[0x80001346]:c.beqz a0, 252<br> [0x80001348]:addi sp, sp, 2<br> [0x8000134c]:jal zero, 6<br> [0x80001352]:sw sp, 236(ra)<br>  |
|  61|[0x80004300]<br>0xFF76DFD0|- rs1_val == -32769<br>                                                                                        |[0x8000136c]:c.beqz a0, 5<br> [0x8000136e]:addi sp, sp, 2<br> [0x80001372]:jal zero, 6<br> [0x80001378]:sw sp, 240(ra)<br>    |
|  62|[0x80004304]<br>0xFF76DFD2|- rs1_val == -65537<br>                                                                                        |[0x80001392]:c.beqz a0, 32<br> [0x80001394]:addi sp, sp, 2<br> [0x80001398]:jal zero, 60<br> [0x800013d4]:sw sp, 244(ra)<br>  |
|  63|[0x80004308]<br>0xFF76DFD4|- rs1_val == -131073<br>                                                                                       |[0x80001468]:c.beqz a0, 191<br> [0x8000146a]:addi sp, sp, 2<br> [0x8000146e]:jal zero, 6<br> [0x80001474]:sw sp, 248(ra)<br>  |
|  64|[0x8000430c]<br>0xFF76DFD6|- rs1_val == -262145<br>                                                                                       |[0x800014a8]:c.beqz a0, 239<br> [0x800014aa]:addi sp, sp, 2<br> [0x800014ae]:jal zero, 6<br> [0x800014b4]:sw sp, 252(ra)<br>  |
|  65|[0x80004310]<br>0xFF76DFD8|- rs1_val == -524289<br>                                                                                       |[0x800014d0]:c.beqz a0, 251<br> [0x800014d2]:addi sp, sp, 2<br> [0x800014d6]:jal zero, 6<br> [0x800014dc]:sw sp, 256(ra)<br>  |
|  66|[0x80004314]<br>0xFF76DFDA|- rs1_val == -1048577<br>                                                                                      |[0x800014f6]:c.beqz a0, 5<br> [0x800014f8]:addi sp, sp, 2<br> [0x800014fc]:jal zero, 6<br> [0x80001502]:sw sp, 260(ra)<br>    |
|  67|[0x80004318]<br>0xFF76DFDC|- rs1_val == -2097153<br>                                                                                      |[0x80001596]:c.beqz a0, 191<br> [0x80001598]:addi sp, sp, 2<br> [0x8000159c]:jal zero, 6<br> [0x800015a2]:sw sp, 264(ra)<br>  |
|  68|[0x8000431c]<br>0xFF76DFDE|- rs1_val == -4194305<br>                                                                                      |[0x800015bc]:c.beqz a0, 252<br> [0x800015be]:addi sp, sp, 2<br> [0x800015c2]:jal zero, 6<br> [0x800015c8]:sw sp, 268(ra)<br>  |
