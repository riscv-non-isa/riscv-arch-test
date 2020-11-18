
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80100b00')]      |
| SIG_REGION                | [('0x80102204', '0x80102284', '32 words')]      |
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

|s.no|        signature         |                         coverpoints                          |                                                                                                                                                                                      code                                                                                                                                                                                      |
|---:|--------------------------|--------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80102204]<br>0x00000031|- opcode : jal<br> - rd : x10<br> - imm_val < 0<br>           |[0x8000012c]:jal a0, 2097132<br> [0x80000118]:xori a0, a0, 1<br> [0x8000011c]:beq zero, zero, 8176<br> [0x8000010c]:auipc gp, 0<br> [0x80000110]:addi gp, gp, 60<br> [0x80000114]:jalr zero, gp, 0<br> [0x80000148]:auipc gp, 0<br> [0x8000014c]:addi gp, gp, 4024<br> [0x80000150]:andi gp, gp, 4092<br> [0x80000154]:sub a0, a0, gp<br> [0x80000158]:sw a0, 0(sp)<br>         |
|   2|[0x80102208]<br>0x00000027|- rd : x30<br> - imm_val > 0<br> - imm_val == ((2**(18)))<br> |[0x8000017c]:jal t5, 524288<br> [0x8008017c]:xori t5, t5, 3<br> [0x80080180]:auipc gp, 0<br> [0x80080184]:addi gp, gp, 12<br> [0x80080188]:jalr zero, gp, 0<br> [0x8008018c]:auipc gp, 1048448<br> [0x80080190]:addi gp, gp, 4048<br> [0x80080194]:andi gp, gp, 4092<br> [0x80080198]:sub t5, t5, gp<br> [0x8008019c]:sw t5, 4(sp)<br>                                          |
|   3|[0x8010220c]<br>0x0008001D|- rd : x12<br> - imm_val == (-(2**(18)))<br>                  |[0x801001b8]:jal a2, 1572864<br> [0x800801b8]:xori a2, a2, 1<br> [0x800801bc]:beq zero, zero, 8176<br> [0x800801ac]:auipc gp, 128<br> [0x800801b0]:addi gp, gp, 40<br> [0x800801b4]:jalr zero, gp, 0<br> [0x801001d4]:auipc gp, 1048448<br> [0x801001d8]:addi gp, gp, 4044<br> [0x801001dc]:andi gp, gp, 4092<br> [0x801001e0]:sub a2, a2, gp<br> [0x801001e4]:sw a2, 8(sp)<br> |
|   4|[0x80102210]<br>0x00000027|- rd : x8<br>                                                 |[0x80100208]:jal fp, 12<br> [0x80100214]:xori fp, fp, 3<br> [0x80100218]:auipc gp, 0<br> [0x8010021c]:addi gp, gp, 12<br> [0x80100220]:jalr zero, gp, 0<br> [0x80100224]:auipc gp, 0<br> [0x80100228]:addi gp, gp, 4036<br> [0x8010022c]:andi gp, gp, 4092<br> [0x80100230]:sub fp, fp, gp<br> [0x80100234]:sw fp, 12(sp)<br>                                                   |
|   5|[0x80102214]<br>0x00000027|- rd : x21<br>                                                |[0x80100258]:jal s5, 12<br> [0x80100264]:xori s5, s5, 3<br> [0x80100268]:auipc gp, 0<br> [0x8010026c]:addi gp, gp, 12<br> [0x80100270]:jalr zero, gp, 0<br> [0x80100274]:auipc gp, 0<br> [0x80100278]:addi gp, gp, 4036<br> [0x8010027c]:andi gp, gp, 4092<br> [0x80100280]:sub s5, s5, gp<br> [0x80100284]:sw s5, 16(sp)<br>                                                   |
|   6|[0x80102218]<br>0x00000027|- rd : x22<br>                                                |[0x801002a8]:jal s6, 12<br> [0x801002b4]:xori s6, s6, 3<br> [0x801002b8]:auipc gp, 0<br> [0x801002bc]:addi gp, gp, 12<br> [0x801002c0]:jalr zero, gp, 0<br> [0x801002c4]:auipc gp, 0<br> [0x801002c8]:addi gp, gp, 4036<br> [0x801002cc]:andi gp, gp, 4092<br> [0x801002d0]:sub s6, s6, gp<br> [0x801002d4]:sw s6, 20(sp)<br>                                                   |
|   7|[0x8010221c]<br>0x00000027|- rd : x1<br>                                                 |[0x801002f8]:jal ra, 12<br> [0x80100304]:xori ra, ra, 3<br> [0x80100308]:auipc gp, 0<br> [0x8010030c]:addi gp, gp, 12<br> [0x80100310]:jalr zero, gp, 0<br> [0x80100314]:auipc gp, 0<br> [0x80100318]:addi gp, gp, 4036<br> [0x8010031c]:andi gp, gp, 4092<br> [0x80100320]:sub ra, ra, gp<br> [0x80100324]:sw ra, 24(sp)<br>                                                   |
|   8|[0x80102220]<br>0x00000027|- rd : x23<br>                                                |[0x80100348]:jal s7, 12<br> [0x80100354]:xori s7, s7, 3<br> [0x80100358]:auipc gp, 0<br> [0x8010035c]:addi gp, gp, 12<br> [0x80100360]:jalr zero, gp, 0<br> [0x80100364]:auipc gp, 0<br> [0x80100368]:addi gp, gp, 4036<br> [0x8010036c]:andi gp, gp, 4092<br> [0x80100370]:sub s7, s7, gp<br> [0x80100374]:sw s7, 28(sp)<br>                                                   |
|   9|[0x80102224]<br>0x00000027|- rd : x9<br>                                                 |[0x80100398]:jal s1, 12<br> [0x801003a4]:xori s1, s1, 3<br> [0x801003a8]:auipc gp, 0<br> [0x801003ac]:addi gp, gp, 12<br> [0x801003b0]:jalr zero, gp, 0<br> [0x801003b4]:auipc gp, 0<br> [0x801003b8]:addi gp, gp, 4036<br> [0x801003bc]:andi gp, gp, 4092<br> [0x801003c0]:sub s1, s1, gp<br> [0x801003c4]:sw s1, 32(sp)<br>                                                   |
|  10|[0x80102228]<br>0x00000027|- rd : x28<br>                                                |[0x801003e8]:jal t3, 12<br> [0x801003f4]:xori t3, t3, 3<br> [0x801003f8]:auipc gp, 0<br> [0x801003fc]:addi gp, gp, 12<br> [0x80100400]:jalr zero, gp, 0<br> [0x80100404]:auipc gp, 0<br> [0x80100408]:addi gp, gp, 4036<br> [0x8010040c]:andi gp, gp, 4092<br> [0x80100410]:sub t3, t3, gp<br> [0x80100414]:sw t3, 36(sp)<br>                                                   |
|  11|[0x8010222c]<br>0x00000027|- rd : x26<br>                                                |[0x80100438]:jal s10, 12<br> [0x80100444]:xori s10, s10, 3<br> [0x80100448]:auipc gp, 0<br> [0x8010044c]:addi gp, gp, 12<br> [0x80100450]:jalr zero, gp, 0<br> [0x80100454]:auipc gp, 0<br> [0x80100458]:addi gp, gp, 4036<br> [0x8010045c]:andi gp, gp, 4092<br> [0x80100460]:sub s10, s10, gp<br> [0x80100464]:sw s10, 40(sp)<br>                                             |
|  12|[0x80102230]<br>0x00000027|- rd : x27<br>                                                |[0x80100488]:jal s11, 12<br> [0x80100494]:xori s11, s11, 3<br> [0x80100498]:auipc gp, 0<br> [0x8010049c]:addi gp, gp, 12<br> [0x801004a0]:jalr zero, gp, 0<br> [0x801004a4]:auipc gp, 0<br> [0x801004a8]:addi gp, gp, 4036<br> [0x801004ac]:andi gp, gp, 4092<br> [0x801004b0]:sub s11, s11, gp<br> [0x801004b4]:sw s11, 44(sp)<br>                                             |
|  13|[0x80102234]<br>0x00000027|- rd : x20<br>                                                |[0x801004d8]:jal s4, 12<br> [0x801004e4]:xori s4, s4, 3<br> [0x801004e8]:auipc gp, 0<br> [0x801004ec]:addi gp, gp, 12<br> [0x801004f0]:jalr zero, gp, 0<br> [0x801004f4]:auipc gp, 0<br> [0x801004f8]:addi gp, gp, 4036<br> [0x801004fc]:andi gp, gp, 4092<br> [0x80100500]:sub s4, s4, gp<br> [0x80100504]:sw s4, 48(sp)<br>                                                   |
|  14|[0x80102238]<br>0x00000027|- rd : x15<br>                                                |[0x80100528]:jal a5, 12<br> [0x80100534]:xori a5, a5, 3<br> [0x80100538]:auipc gp, 0<br> [0x8010053c]:addi gp, gp, 12<br> [0x80100540]:jalr zero, gp, 0<br> [0x80100544]:auipc gp, 0<br> [0x80100548]:addi gp, gp, 4036<br> [0x8010054c]:andi gp, gp, 4092<br> [0x80100550]:sub a5, a5, gp<br> [0x80100554]:sw a5, 52(sp)<br>                                                   |
|  15|[0x8010223c]<br>0x00000027|- rd : x18<br>                                                |[0x80100578]:jal s2, 12<br> [0x80100584]:xori s2, s2, 3<br> [0x80100588]:auipc gp, 0<br> [0x8010058c]:addi gp, gp, 12<br> [0x80100590]:jalr zero, gp, 0<br> [0x80100594]:auipc gp, 0<br> [0x80100598]:addi gp, gp, 4036<br> [0x8010059c]:andi gp, gp, 4092<br> [0x801005a0]:sub s2, s2, gp<br> [0x801005a4]:sw s2, 56(sp)<br>                                                   |
|  16|[0x80102240]<br>0x00000027|- rd : x29<br>                                                |[0x801005c8]:jal t4, 12<br> [0x801005d4]:xori t4, t4, 3<br> [0x801005d8]:auipc gp, 0<br> [0x801005dc]:addi gp, gp, 12<br> [0x801005e0]:jalr zero, gp, 0<br> [0x801005e4]:auipc gp, 0<br> [0x801005e8]:addi gp, gp, 4036<br> [0x801005ec]:andi gp, gp, 4092<br> [0x801005f0]:sub t4, t4, gp<br> [0x801005f4]:sw t4, 60(sp)<br>                                                   |
|  17|[0x80102244]<br>0x00000027|- rd : x6<br>                                                 |[0x80100618]:jal t1, 12<br> [0x80100624]:xori t1, t1, 3<br> [0x80100628]:auipc gp, 0<br> [0x8010062c]:addi gp, gp, 12<br> [0x80100630]:jalr zero, gp, 0<br> [0x80100634]:auipc gp, 0<br> [0x80100638]:addi gp, gp, 4036<br> [0x8010063c]:andi gp, gp, 4092<br> [0x80100640]:sub t1, t1, gp<br> [0x80100644]:sw t1, 64(sp)<br>                                                   |
|  18|[0x80102248]<br>0x00000027|- rd : x24<br>                                                |[0x80100668]:jal s8, 12<br> [0x80100674]:xori s8, s8, 3<br> [0x80100678]:auipc gp, 0<br> [0x8010067c]:addi gp, gp, 12<br> [0x80100680]:jalr zero, gp, 0<br> [0x80100684]:auipc gp, 0<br> [0x80100688]:addi gp, gp, 4036<br> [0x8010068c]:andi gp, gp, 4092<br> [0x80100690]:sub s8, s8, gp<br> [0x80100694]:sw s8, 68(sp)<br>                                                   |
|  19|[0x8010224c]<br>0x00000027|- rd : x25<br>                                                |[0x801006b8]:jal s9, 12<br> [0x801006c4]:xori s9, s9, 3<br> [0x801006c8]:auipc gp, 0<br> [0x801006cc]:addi gp, gp, 12<br> [0x801006d0]:jalr zero, gp, 0<br> [0x801006d4]:auipc gp, 0<br> [0x801006d8]:addi gp, gp, 4036<br> [0x801006dc]:andi gp, gp, 4092<br> [0x801006e0]:sub s9, s9, gp<br> [0x801006e4]:sw s9, 72(sp)<br>                                                   |
|  20|[0x80102250]<br>0x00000027|- rd : x11<br>                                                |[0x80100708]:jal a1, 12<br> [0x80100714]:xori a1, a1, 3<br> [0x80100718]:auipc gp, 0<br> [0x8010071c]:addi gp, gp, 12<br> [0x80100720]:jalr zero, gp, 0<br> [0x80100724]:auipc gp, 0<br> [0x80100728]:addi gp, gp, 4036<br> [0x8010072c]:andi gp, gp, 4092<br> [0x80100730]:sub a1, a1, gp<br> [0x80100734]:sw a1, 76(sp)<br>                                                   |
|  21|[0x80102254]<br>0x00000027|- rd : x5<br>                                                 |[0x80100758]:jal t0, 12<br> [0x80100764]:xori t0, t0, 3<br> [0x80100768]:auipc gp, 0<br> [0x8010076c]:addi gp, gp, 12<br> [0x80100770]:jalr zero, gp, 0<br> [0x80100774]:auipc gp, 0<br> [0x80100778]:addi gp, gp, 4036<br> [0x8010077c]:andi gp, gp, 4092<br> [0x80100780]:sub t0, t0, gp<br> [0x80100784]:sw t0, 80(sp)<br>                                                   |
|  22|[0x80102258]<br>0x00000000|- rd : x0<br>                                                 |[0x801007a8]:jal zero, 12<br> [0x801007b4]:xori zero, zero, 3<br> [0x801007b8]:auipc gp, 0<br> [0x801007bc]:addi gp, gp, 12<br> [0x801007c0]:jalr zero, gp, 0<br> [0x801007c4]:auipc gp, 0<br> [0x801007c8]:addi gp, gp, 4036<br> [0x801007cc]:andi gp, gp, 4092<br> [0x801007d0]:sub zero, zero, gp<br> [0x801007d4]:sw zero, 84(sp)<br>                                       |
|  23|[0x8010225c]<br>0x00000027|- rd : x17<br>                                                |[0x801007f8]:jal a7, 12<br> [0x80100804]:xori a7, a7, 3<br> [0x80100808]:auipc gp, 0<br> [0x8010080c]:addi gp, gp, 12<br> [0x80100810]:jalr zero, gp, 0<br> [0x80100814]:auipc gp, 0<br> [0x80100818]:addi gp, gp, 4036<br> [0x8010081c]:andi gp, gp, 4092<br> [0x80100820]:sub a7, a7, gp<br> [0x80100824]:sw a7, 88(sp)<br>                                                   |
|  24|[0x80102260]<br>0x00000027|- rd : x4<br>                                                 |[0x80100848]:jal tp, 12<br> [0x80100854]:xori tp, tp, 3<br> [0x80100858]:auipc gp, 0<br> [0x8010085c]:addi gp, gp, 12<br> [0x80100860]:jalr zero, gp, 0<br> [0x80100864]:auipc gp, 0<br> [0x80100868]:addi gp, gp, 4036<br> [0x8010086c]:andi gp, gp, 4092<br> [0x80100870]:sub tp, tp, gp<br> [0x80100874]:sw tp, 92(sp)<br>                                                   |
|  25|[0x80102264]<br>0x00000027|- rd : x13<br>                                                |[0x80100898]:jal a3, 12<br> [0x801008a4]:xori a3, a3, 3<br> [0x801008a8]:auipc gp, 0<br> [0x801008ac]:addi gp, gp, 12<br> [0x801008b0]:jalr zero, gp, 0<br> [0x801008b4]:auipc gp, 0<br> [0x801008b8]:addi gp, gp, 4036<br> [0x801008bc]:andi gp, gp, 4092<br> [0x801008c0]:sub a3, a3, gp<br> [0x801008c4]:sw a3, 96(sp)<br>                                                   |
|  26|[0x80102268]<br>0x00000027|- rd : x19<br>                                                |[0x801008e8]:jal s3, 12<br> [0x801008f4]:xori s3, s3, 3<br> [0x801008f8]:auipc gp, 0<br> [0x801008fc]:addi gp, gp, 12<br> [0x80100900]:jalr zero, gp, 0<br> [0x80100904]:auipc gp, 0<br> [0x80100908]:addi gp, gp, 4036<br> [0x8010090c]:andi gp, gp, 4092<br> [0x80100910]:sub s3, s3, gp<br> [0x80100914]:sw s3, 100(sp)<br>                                                  |
|  27|[0x8010226c]<br>0x00000027|- rd : x16<br>                                                |[0x80100938]:jal a6, 12<br> [0x80100944]:xori a6, a6, 3<br> [0x80100948]:auipc gp, 0<br> [0x8010094c]:addi gp, gp, 12<br> [0x80100950]:jalr zero, gp, 0<br> [0x80100954]:auipc gp, 0<br> [0x80100958]:addi gp, gp, 4036<br> [0x8010095c]:andi gp, gp, 4092<br> [0x80100960]:sub a6, a6, gp<br> [0x80100964]:sw a6, 104(sp)<br>                                                  |
|  28|[0x80102270]<br>0x00000027|- rd : x14<br>                                                |[0x80100988]:jal a4, 12<br> [0x80100994]:xori a4, a4, 3<br> [0x80100998]:auipc gp, 0<br> [0x8010099c]:addi gp, gp, 12<br> [0x801009a0]:jalr zero, gp, 0<br> [0x801009a4]:auipc gp, 0<br> [0x801009a8]:addi gp, gp, 4036<br> [0x801009ac]:andi gp, gp, 4092<br> [0x801009b0]:sub a4, a4, gp<br> [0x801009b4]:sw a4, 108(sp)<br>                                                  |
|  29|[0x80102274]<br>0x00000027|- rd : x3<br>                                                 |[0x801009d8]:jal gp, 12<br> [0x801009e4]:xori gp, gp, 3<br> [0x801009e8]:auipc tp, 0<br> [0x801009ec]:addi tp, tp, 12<br> [0x801009f0]:jalr zero, tp, 0<br> [0x801009f4]:auipc tp, 0<br> [0x801009f8]:addi tp, tp, 4036<br> [0x801009fc]:andi tp, tp, 4092<br> [0x80100a00]:sub gp, gp, tp<br> [0x80100a04]:sw gp, 112(sp)<br>                                                  |
|  30|[0x80102278]<br>0x00000027|- rd : x2<br>                                                 |[0x80100a30]:jal sp, 12<br> [0x80100a3c]:xori sp, sp, 3<br> [0x80100a40]:auipc tp, 0<br> [0x80100a44]:addi tp, tp, 12<br> [0x80100a48]:jalr zero, tp, 0<br> [0x80100a4c]:auipc tp, 0<br> [0x80100a50]:addi tp, tp, 4036<br> [0x80100a54]:andi tp, tp, 4092<br> [0x80100a58]:sub sp, sp, tp<br> [0x80100a5c]:sw sp, 0(ra)<br>                                                    |
|  31|[0x8010227c]<br>0x00000027|- rd : x31<br>                                                |[0x80100a80]:jal t6, 12<br> [0x80100a8c]:xori t6, t6, 3<br> [0x80100a90]:auipc tp, 0<br> [0x80100a94]:addi tp, tp, 12<br> [0x80100a98]:jalr zero, tp, 0<br> [0x80100a9c]:auipc tp, 0<br> [0x80100aa0]:addi tp, tp, 4036<br> [0x80100aa4]:andi tp, tp, 4092<br> [0x80100aa8]:sub t6, t6, tp<br> [0x80100aac]:sw t6, 4(ra)<br>                                                    |
|  32|[0x80102280]<br>0x00000027|- rd : x7<br>                                                 |[0x80100ad0]:jal t2, 12<br> [0x80100adc]:xori t2, t2, 3<br> [0x80100ae0]:auipc tp, 0<br> [0x80100ae4]:addi tp, tp, 12<br> [0x80100ae8]:jalr zero, tp, 0<br> [0x80100aec]:auipc tp, 0<br> [0x80100af0]:addi tp, tp, 4036<br> [0x80100af4]:andi tp, tp, 4092<br> [0x80100af8]:sub t2, t2, tp<br> [0x80100afc]:sw t2, 8(ra)<br>                                                    |
