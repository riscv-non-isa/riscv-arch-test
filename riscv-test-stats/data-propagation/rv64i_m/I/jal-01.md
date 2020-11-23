
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80200d90')]      |
| SIG_REGION                | [('0x80202010', '0x80202110', '32 dwords')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 37     |
| Total Coverpoints Hit     | 37      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
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

|s.no|            signature             |                    coverpoints                    |                                                                                                                                                                                            code                                                                                                                                                                                             |
|---:|----------------------------------|---------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80202010]<br>0x000000000010001D|- opcode : jal<br> - rd : x4<br> - imm_val < 0<br> |[0x801003b0]:jal tp, 1048576<br> [0x800003b0]:xori tp, tp, 1<br> [0x800003b4]:beq zero, zero, 8176<br> [0x800003a4]:auipc a6, 256<br> [0x800003a8]:addi a6, a6, 40<br> [0x800003ac]:jalr zero, a6, 0<br> [0x801003cc]:auipc a6, 1048320<br> [0x801003d0]:addi a6, a6, 4044<br> [0x801003d4]:andi a6, a6, 4092<br> [0x801003d8]:sub tp, tp, a6<br> [0x801003dc]:sd tp, 0(gp)<br>              |
|   2|[0x80202018]<br>0x0000000000000027|- rd : x27<br> - imm_val > 0<br>                   |[0x80100400]:jal s11, 12<br> [0x8010040c]:xori s11, s11, 3<br> [0x80100410]:auipc a6, 0<br> [0x80100414]:addi a6, a6, 12<br> [0x80100418]:jalr zero, a6, 0<br> [0x8010041c]:auipc a6, 0<br> [0x80100420]:addi a6, a6, 4036<br> [0x80100424]:andi a6, a6, 4092<br> [0x80100428]:sub s11, s11, a6<br> [0x8010042c]:sd s11, 8(gp)<br>                                                           |
|   3|[0x80202020]<br>0x0000000000000000|- rd : x0<br> - imm_val == (-(2**(18)))<br>        |[0x80180448]:jal zero, 1572864<br> [0x80100448]:xori zero, zero, 1<br> [0x8010044c]:beq zero, zero, 8176<br> [0x8010043c]:auipc a6, 128<br> [0x80100440]:addi a6, a6, 40<br> [0x80100444]:jalr zero, a6, 0<br> [0x80180464]:auipc a6, 1048448<br> [0x80180468]:addi a6, a6, 4044<br> [0x8018046c]:andi a6, a6, 4092<br> [0x80180470]:sub zero, zero, a6<br> [0x80180474]:sd zero, 16(gp)<br> |
|   4|[0x80202028]<br>0x0000000000000027|- rd : x19<br> - imm_val == ((2**(18)))<br>        |[0x80180498]:jal s3, 524288<br> [0x80200498]:xori s3, s3, 3<br> [0x8020049c]:auipc a6, 0<br> [0x802004a0]:addi a6, a6, 12<br> [0x802004a4]:jalr zero, a6, 0<br> [0x802004a8]:auipc a6, 1048448<br> [0x802004ac]:addi a6, a6, 4048<br> [0x802004b0]:andi a6, a6, 4092<br> [0x802004b4]:sub s3, s3, a6<br> [0x802004b8]:sd s3, 24(gp)<br>                                                      |
|   5|[0x80202030]<br>0x0000000000000027|- rd : x12<br>                                     |[0x802004dc]:jal a2, 12<br> [0x802004e8]:xori a2, a2, 3<br> [0x802004ec]:auipc a6, 0<br> [0x802004f0]:addi a6, a6, 12<br> [0x802004f4]:jalr zero, a6, 0<br> [0x802004f8]:auipc a6, 0<br> [0x802004fc]:addi a6, a6, 4036<br> [0x80200500]:andi a6, a6, 4092<br> [0x80200504]:sub a2, a2, a6<br> [0x80200508]:sd a2, 32(gp)<br>                                                                |
|   6|[0x80202038]<br>0x0000000000000027|- rd : x22<br>                                     |[0x8020052c]:jal s6, 12<br> [0x80200538]:xori s6, s6, 3<br> [0x8020053c]:auipc a6, 0<br> [0x80200540]:addi a6, a6, 12<br> [0x80200544]:jalr zero, a6, 0<br> [0x80200548]:auipc a6, 0<br> [0x8020054c]:addi a6, a6, 4036<br> [0x80200550]:andi a6, a6, 4092<br> [0x80200554]:sub s6, s6, a6<br> [0x80200558]:sd s6, 40(gp)<br>                                                                |
|   7|[0x80202040]<br>0x0000000000000027|- rd : x13<br>                                     |[0x8020057c]:jal a3, 12<br> [0x80200588]:xori a3, a3, 3<br> [0x8020058c]:auipc a6, 0<br> [0x80200590]:addi a6, a6, 12<br> [0x80200594]:jalr zero, a6, 0<br> [0x80200598]:auipc a6, 0<br> [0x8020059c]:addi a6, a6, 4036<br> [0x802005a0]:andi a6, a6, 4092<br> [0x802005a4]:sub a3, a3, a6<br> [0x802005a8]:sd a3, 48(gp)<br>                                                                |
|   8|[0x80202048]<br>0x0000000000000027|- rd : x21<br>                                     |[0x802005cc]:jal s5, 12<br> [0x802005d8]:xori s5, s5, 3<br> [0x802005dc]:auipc a6, 0<br> [0x802005e0]:addi a6, a6, 12<br> [0x802005e4]:jalr zero, a6, 0<br> [0x802005e8]:auipc a6, 0<br> [0x802005ec]:addi a6, a6, 4036<br> [0x802005f0]:andi a6, a6, 4092<br> [0x802005f4]:sub s5, s5, a6<br> [0x802005f8]:sd s5, 56(gp)<br>                                                                |
|   9|[0x80202050]<br>0x0000000000000027|- rd : x9<br>                                      |[0x8020061c]:jal s1, 12<br> [0x80200628]:xori s1, s1, 3<br> [0x8020062c]:auipc a6, 0<br> [0x80200630]:addi a6, a6, 12<br> [0x80200634]:jalr zero, a6, 0<br> [0x80200638]:auipc a6, 0<br> [0x8020063c]:addi a6, a6, 4036<br> [0x80200640]:andi a6, a6, 4092<br> [0x80200644]:sub s1, s1, a6<br> [0x80200648]:sd s1, 64(gp)<br>                                                                |
|  10|[0x80202058]<br>0x0000000000000027|- rd : x7<br>                                      |[0x8020066c]:jal t2, 12<br> [0x80200678]:xori t2, t2, 3<br> [0x8020067c]:auipc a6, 0<br> [0x80200680]:addi a6, a6, 12<br> [0x80200684]:jalr zero, a6, 0<br> [0x80200688]:auipc a6, 0<br> [0x8020068c]:addi a6, a6, 4036<br> [0x80200690]:andi a6, a6, 4092<br> [0x80200694]:sub t2, t2, a6<br> [0x80200698]:sd t2, 72(gp)<br>                                                                |
|  11|[0x80202060]<br>0x0000000000000027|- rd : x6<br>                                      |[0x802006bc]:jal t1, 12<br> [0x802006c8]:xori t1, t1, 3<br> [0x802006cc]:auipc a6, 0<br> [0x802006d0]:addi a6, a6, 12<br> [0x802006d4]:jalr zero, a6, 0<br> [0x802006d8]:auipc a6, 0<br> [0x802006dc]:addi a6, a6, 4036<br> [0x802006e0]:andi a6, a6, 4092<br> [0x802006e4]:sub t1, t1, a6<br> [0x802006e8]:sd t1, 80(gp)<br>                                                                |
|  12|[0x80202068]<br>0x0000000000000027|- rd : x23<br>                                     |[0x8020070c]:jal s7, 12<br> [0x80200718]:xori s7, s7, 3<br> [0x8020071c]:auipc a6, 0<br> [0x80200720]:addi a6, a6, 12<br> [0x80200724]:jalr zero, a6, 0<br> [0x80200728]:auipc a6, 0<br> [0x8020072c]:addi a6, a6, 4036<br> [0x80200730]:andi a6, a6, 4092<br> [0x80200734]:sub s7, s7, a6<br> [0x80200738]:sd s7, 88(gp)<br>                                                                |
|  13|[0x80202070]<br>0x0000000000000027|- rd : x14<br>                                     |[0x8020075c]:jal a4, 12<br> [0x80200768]:xori a4, a4, 3<br> [0x8020076c]:auipc a6, 0<br> [0x80200770]:addi a6, a6, 12<br> [0x80200774]:jalr zero, a6, 0<br> [0x80200778]:auipc a6, 0<br> [0x8020077c]:addi a6, a6, 4036<br> [0x80200780]:andi a6, a6, 4092<br> [0x80200784]:sub a4, a4, a6<br> [0x80200788]:sd a4, 96(gp)<br>                                                                |
|  14|[0x80202078]<br>0x0000000000000027|- rd : x1<br>                                      |[0x802007ac]:jal ra, 12<br> [0x802007b8]:xori ra, ra, 3<br> [0x802007bc]:auipc a6, 0<br> [0x802007c0]:addi a6, a6, 12<br> [0x802007c4]:jalr zero, a6, 0<br> [0x802007c8]:auipc a6, 0<br> [0x802007cc]:addi a6, a6, 4036<br> [0x802007d0]:andi a6, a6, 4092<br> [0x802007d4]:sub ra, ra, a6<br> [0x802007d8]:sd ra, 104(gp)<br>                                                               |
|  15|[0x80202080]<br>0x0000000000000027|- rd : x11<br>                                     |[0x802007fc]:jal a1, 12<br> [0x80200808]:xori a1, a1, 3<br> [0x8020080c]:auipc a6, 0<br> [0x80200810]:addi a6, a6, 12<br> [0x80200814]:jalr zero, a6, 0<br> [0x80200818]:auipc a6, 0<br> [0x8020081c]:addi a6, a6, 4036<br> [0x80200820]:andi a6, a6, 4092<br> [0x80200824]:sub a1, a1, a6<br> [0x80200828]:sd a1, 112(gp)<br>                                                               |
|  16|[0x80202088]<br>0x0000000000000027|- rd : x17<br>                                     |[0x8020084c]:jal a7, 12<br> [0x80200858]:xori a7, a7, 3<br> [0x8020085c]:auipc a6, 0<br> [0x80200860]:addi a6, a6, 12<br> [0x80200864]:jalr zero, a6, 0<br> [0x80200868]:auipc a6, 0<br> [0x8020086c]:addi a6, a6, 4036<br> [0x80200870]:andi a6, a6, 4092<br> [0x80200874]:sub a7, a7, a6<br> [0x80200878]:sd a7, 120(gp)<br>                                                               |
|  17|[0x80202090]<br>0x0000000000000027|- rd : x24<br>                                     |[0x8020089c]:jal s8, 12<br> [0x802008a8]:xori s8, s8, 3<br> [0x802008ac]:auipc a6, 0<br> [0x802008b0]:addi a6, a6, 12<br> [0x802008b4]:jalr zero, a6, 0<br> [0x802008b8]:auipc a6, 0<br> [0x802008bc]:addi a6, a6, 4036<br> [0x802008c0]:andi a6, a6, 4092<br> [0x802008c4]:sub s8, s8, a6<br> [0x802008c8]:sd s8, 128(gp)<br>                                                               |
|  18|[0x80202098]<br>0x0000000000000027|- rd : x15<br>                                     |[0x802008ec]:jal a5, 12<br> [0x802008f8]:xori a5, a5, 3<br> [0x802008fc]:auipc a6, 0<br> [0x80200900]:addi a6, a6, 12<br> [0x80200904]:jalr zero, a6, 0<br> [0x80200908]:auipc a6, 0<br> [0x8020090c]:addi a6, a6, 4036<br> [0x80200910]:andi a6, a6, 4092<br> [0x80200914]:sub a5, a5, a6<br> [0x80200918]:sd a5, 136(gp)<br>                                                               |
|  19|[0x802020a0]<br>0x0000000000000027|- rd : x29<br>                                     |[0x8020093c]:jal t4, 12<br> [0x80200948]:xori t4, t4, 3<br> [0x8020094c]:auipc a6, 0<br> [0x80200950]:addi a6, a6, 12<br> [0x80200954]:jalr zero, a6, 0<br> [0x80200958]:auipc a6, 0<br> [0x8020095c]:addi a6, a6, 4036<br> [0x80200960]:andi a6, a6, 4092<br> [0x80200964]:sub t4, t4, a6<br> [0x80200968]:sd t4, 144(gp)<br>                                                               |
|  20|[0x802020a8]<br>0x0000000000000027|- rd : x26<br>                                     |[0x8020098c]:jal s10, 12<br> [0x80200998]:xori s10, s10, 3<br> [0x8020099c]:auipc a6, 0<br> [0x802009a0]:addi a6, a6, 12<br> [0x802009a4]:jalr zero, a6, 0<br> [0x802009a8]:auipc a6, 0<br> [0x802009ac]:addi a6, a6, 4036<br> [0x802009b0]:andi a6, a6, 4092<br> [0x802009b4]:sub s10, s10, a6<br> [0x802009b8]:sd s10, 152(gp)<br>                                                         |
|  21|[0x802020b0]<br>0x0000000000000027|- rd : x5<br>                                      |[0x802009dc]:jal t0, 12<br> [0x802009e8]:xori t0, t0, 3<br> [0x802009ec]:auipc a6, 0<br> [0x802009f0]:addi a6, a6, 12<br> [0x802009f4]:jalr zero, a6, 0<br> [0x802009f8]:auipc a6, 0<br> [0x802009fc]:addi a6, a6, 4036<br> [0x80200a00]:andi a6, a6, 4092<br> [0x80200a04]:sub t0, t0, a6<br> [0x80200a08]:sd t0, 160(gp)<br>                                                               |
|  22|[0x802020b8]<br>0x0000000000000027|- rd : x8<br>                                      |[0x80200a2c]:jal fp, 12<br> [0x80200a38]:xori fp, fp, 3<br> [0x80200a3c]:auipc a6, 0<br> [0x80200a40]:addi a6, a6, 12<br> [0x80200a44]:jalr zero, a6, 0<br> [0x80200a48]:auipc a6, 0<br> [0x80200a4c]:addi a6, a6, 4036<br> [0x80200a50]:andi a6, a6, 4092<br> [0x80200a54]:sub fp, fp, a6<br> [0x80200a58]:sd fp, 168(gp)<br>                                                               |
|  23|[0x802020c0]<br>0x0000000000000027|- rd : x18<br>                                     |[0x80200a7c]:jal s2, 12<br> [0x80200a88]:xori s2, s2, 3<br> [0x80200a8c]:auipc a6, 0<br> [0x80200a90]:addi a6, a6, 12<br> [0x80200a94]:jalr zero, a6, 0<br> [0x80200a98]:auipc a6, 0<br> [0x80200a9c]:addi a6, a6, 4036<br> [0x80200aa0]:andi a6, a6, 4092<br> [0x80200aa4]:sub s2, s2, a6<br> [0x80200aa8]:sd s2, 176(gp)<br>                                                               |
|  24|[0x802020c8]<br>0x0000000000000027|- rd : x2<br>                                      |[0x80200acc]:jal sp, 12<br> [0x80200ad8]:xori sp, sp, 3<br> [0x80200adc]:auipc a6, 0<br> [0x80200ae0]:addi a6, a6, 12<br> [0x80200ae4]:jalr zero, a6, 0<br> [0x80200ae8]:auipc a6, 0<br> [0x80200aec]:addi a6, a6, 4036<br> [0x80200af0]:andi a6, a6, 4092<br> [0x80200af4]:sub sp, sp, a6<br> [0x80200af8]:sd sp, 184(gp)<br>                                                               |
|  25|[0x802020d0]<br>0x0000000000000027|- rd : x25<br>                                     |[0x80200b1c]:jal s9, 12<br> [0x80200b28]:xori s9, s9, 3<br> [0x80200b2c]:auipc a6, 0<br> [0x80200b30]:addi a6, a6, 12<br> [0x80200b34]:jalr zero, a6, 0<br> [0x80200b38]:auipc a6, 0<br> [0x80200b3c]:addi a6, a6, 4036<br> [0x80200b40]:andi a6, a6, 4092<br> [0x80200b44]:sub s9, s9, a6<br> [0x80200b48]:sd s9, 192(gp)<br>                                                               |
|  26|[0x802020d8]<br>0x0000000000000027|- rd : x31<br>                                     |[0x80200b6c]:jal t6, 12<br> [0x80200b78]:xori t6, t6, 3<br> [0x80200b7c]:auipc a6, 0<br> [0x80200b80]:addi a6, a6, 12<br> [0x80200b84]:jalr zero, a6, 0<br> [0x80200b88]:auipc a6, 0<br> [0x80200b8c]:addi a6, a6, 4036<br> [0x80200b90]:andi a6, a6, 4092<br> [0x80200b94]:sub t6, t6, a6<br> [0x80200b98]:sd t6, 200(gp)<br>                                                               |
|  27|[0x802020e0]<br>0x0000000000000027|- rd : x10<br>                                     |[0x80200bbc]:jal a0, 12<br> [0x80200bc8]:xori a0, a0, 3<br> [0x80200bcc]:auipc a6, 0<br> [0x80200bd0]:addi a6, a6, 12<br> [0x80200bd4]:jalr zero, a6, 0<br> [0x80200bd8]:auipc a6, 0<br> [0x80200bdc]:addi a6, a6, 4036<br> [0x80200be0]:andi a6, a6, 4092<br> [0x80200be4]:sub a0, a0, a6<br> [0x80200be8]:sd a0, 208(gp)<br>                                                               |
|  28|[0x802020e8]<br>0x0000000000000027|- rd : x28<br>                                     |[0x80200c0c]:jal t3, 12<br> [0x80200c18]:xori t3, t3, 3<br> [0x80200c1c]:auipc a6, 0<br> [0x80200c20]:addi a6, a6, 12<br> [0x80200c24]:jalr zero, a6, 0<br> [0x80200c28]:auipc a6, 0<br> [0x80200c2c]:addi a6, a6, 4036<br> [0x80200c30]:andi a6, a6, 4092<br> [0x80200c34]:sub t3, t3, a6<br> [0x80200c38]:sd t3, 216(gp)<br>                                                               |
|  29|[0x802020f0]<br>0x0000000000000027|- rd : x16<br>                                     |[0x80200c5c]:jal a6, 12<br> [0x80200c68]:xori a6, a6, 3<br> [0x80200c6c]:auipc sp, 0<br> [0x80200c70]:addi sp, sp, 12<br> [0x80200c74]:jalr zero, sp, 0<br> [0x80200c78]:auipc sp, 0<br> [0x80200c7c]:addi sp, sp, 4036<br> [0x80200c80]:andi sp, sp, 4092<br> [0x80200c84]:sub a6, a6, sp<br> [0x80200c88]:sd a6, 224(gp)<br>                                                               |
|  30|[0x802020f8]<br>0x0000000000000027|- rd : x20<br>                                     |[0x80200cb4]:jal s4, 12<br> [0x80200cc0]:xori s4, s4, 3<br> [0x80200cc4]:auipc sp, 0<br> [0x80200cc8]:addi sp, sp, 12<br> [0x80200ccc]:jalr zero, sp, 0<br> [0x80200cd0]:auipc sp, 0<br> [0x80200cd4]:addi sp, sp, 4036<br> [0x80200cd8]:andi sp, sp, 4092<br> [0x80200cdc]:sub s4, s4, sp<br> [0x80200ce0]:sd s4, 0(ra)<br>                                                                 |
|  31|[0x80202100]<br>0x0000000000000027|- rd : x3<br>                                      |[0x80200d04]:jal gp, 12<br> [0x80200d10]:xori gp, gp, 3<br> [0x80200d14]:auipc sp, 0<br> [0x80200d18]:addi sp, sp, 12<br> [0x80200d1c]:jalr zero, sp, 0<br> [0x80200d20]:auipc sp, 0<br> [0x80200d24]:addi sp, sp, 4036<br> [0x80200d28]:andi sp, sp, 4092<br> [0x80200d2c]:sub gp, gp, sp<br> [0x80200d30]:sd gp, 8(ra)<br>                                                                 |
|  32|[0x80202108]<br>0x0000000000000027|- rd : x30<br>                                     |[0x80200d54]:jal t5, 12<br> [0x80200d60]:xori t5, t5, 3<br> [0x80200d64]:auipc sp, 0<br> [0x80200d68]:addi sp, sp, 12<br> [0x80200d6c]:jalr zero, sp, 0<br> [0x80200d70]:auipc sp, 0<br> [0x80200d74]:addi sp, sp, 4036<br> [0x80200d78]:andi sp, sp, 4092<br> [0x80200d7c]:sub t5, t5, sp<br> [0x80200d80]:sd t5, 16(ra)<br>                                                                |
