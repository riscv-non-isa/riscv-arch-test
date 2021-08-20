
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80e00510')]      |
| SIG_REGION                | [('0x80e02204', '0x80e02244', '16 words')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 24     |
| Total Coverpoints Hit     | 21      |
| Total Signature Updates   | 16      |
| STAT1                     | 16      |
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

|s.no|        signature         |                         coverpoints                          |                                                                                                                                                                                            code                                                                                                                                                                                             |
|---:|--------------------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80e02204]<br>0x00000025|- opcode : jal<br> - rd : x8<br> - imm_val < 0<br>            |[0x800000a0]:jal fp, 2097144<br> [0x80000098]:xori fp, fp, 1<br> [0x8000009c]:beq zero, zero, 8176<br> [0x8000008c]:auipc sp, 0<br> [0x80000090]:addi sp, sp, 48<br> [0x80000094]:jalr zero, sp, 0<br> [0x800000bc]:auipc sp, 0<br> [0x800000c0]:addi sp, sp, 4036<br> [0x800000c4]:andi sp, sp, 4092<br> [0x800000c8]:sub fp, fp, sp<br> [0x800000cc]:sw fp, 0(t2)<br>                      |
|   2|[0x80e02208]<br>0x00000027|- rd : x14<br> - imm_val == ((2**(18)))<br> - imm_val > 0<br> |[0x800000f0]:jal a4, 524288<br> [0x800800f0]:xori a4, a4, 3<br> [0x800800f4]:auipc sp, 0<br> [0x800800f8]:addi sp, sp, 12<br> [0x800800fc]:jalr zero, sp, 0<br> [0x80080100]:auipc sp, 1048448<br> [0x80080104]:addi sp, sp, 4048<br> [0x80080108]:andi sp, sp, 4092<br> [0x8008010c]:sub a4, a4, sp<br> [0x80080110]:sw a4, 4(t2)<br>                                                       |
|   3|[0x80e0220c]<br>0x0008001D|- rd : x9<br> - imm_val == (-(2**(18)))<br>                   |[0x8010012c]:jal s1, 1572864<br> [0x8008012c]:xori s1, s1, 1<br> [0x80080130]:beq zero, zero, 8176<br> [0x80080120]:auipc sp, 128<br> [0x80080124]:addi sp, sp, 40<br> [0x80080128]:jalr zero, sp, 0<br> [0x80100148]:auipc sp, 1048448<br> [0x8010014c]:addi sp, sp, 4044<br> [0x80100150]:andi sp, sp, 4092<br> [0x80100154]:sub s1, s1, sp<br> [0x80100158]:sw s1, 8(t2)<br>              |
|   4|[0x80e02210]<br>0x0010001D|- rd : x12<br>                                                |[0x80200174]:jal a2, 1048576<br> [0x80100174]:xori a2, a2, 1<br> [0x80100178]:beq zero, zero, 8176<br> [0x80100168]:auipc sp, 256<br> [0x8010016c]:addi sp, sp, 40<br> [0x80100170]:jalr zero, sp, 0<br> [0x80200190]:auipc sp, 1048320<br> [0x80200194]:addi sp, sp, 4044<br> [0x80200198]:andi sp, sp, 4092<br> [0x8020019c]:sub a2, a2, sp<br> [0x802001a0]:sw a2, 12(t2)<br>             |
|   5|[0x80e02214]<br>0x00000000|- rd : x0<br>                                                 |[0x803001bc]:jal zero, 1048576<br> [0x802001bc]:xori zero, zero, 1<br> [0x802001c0]:beq zero, zero, 8176<br> [0x802001b0]:auipc sp, 256<br> [0x802001b4]:addi sp, sp, 40<br> [0x802001b8]:jalr zero, sp, 0<br> [0x803001d8]:auipc sp, 1048320<br> [0x803001dc]:addi sp, sp, 4044<br> [0x803001e0]:andi sp, sp, 4092<br> [0x803001e4]:sub zero, zero, sp<br> [0x803001e8]:sw zero, 16(t2)<br> |
|   6|[0x80e02218]<br>0x0010001D|- rd : x3<br>                                                 |[0x80400204]:jal gp, 1048576<br> [0x80300204]:xori gp, gp, 1<br> [0x80300208]:beq zero, zero, 8176<br> [0x803001f8]:auipc sp, 256<br> [0x803001fc]:addi sp, sp, 40<br> [0x80300200]:jalr zero, sp, 0<br> [0x80400220]:auipc sp, 1048320<br> [0x80400224]:addi sp, sp, 4044<br> [0x80400228]:andi sp, sp, 4092<br> [0x8040022c]:sub gp, gp, sp<br> [0x80400230]:sw gp, 20(t2)<br>             |
|   7|[0x80e0221c]<br>0x0010001D|- rd : x4<br>                                                 |[0x8050024c]:jal tp, 1048576<br> [0x8040024c]:xori tp, tp, 1<br> [0x80400250]:beq zero, zero, 8176<br> [0x80400240]:auipc sp, 256<br> [0x80400244]:addi sp, sp, 40<br> [0x80400248]:jalr zero, sp, 0<br> [0x80500268]:auipc sp, 1048320<br> [0x8050026c]:addi sp, sp, 4044<br> [0x80500270]:andi sp, sp, 4092<br> [0x80500274]:sub tp, tp, sp<br> [0x80500278]:sw tp, 24(t2)<br>             |
|   8|[0x80e02220]<br>0x0010001D|- rd : x5<br>                                                 |[0x80600294]:jal t0, 1048576<br> [0x80500294]:xori t0, t0, 1<br> [0x80500298]:beq zero, zero, 8176<br> [0x80500288]:auipc sp, 256<br> [0x8050028c]:addi sp, sp, 40<br> [0x80500290]:jalr zero, sp, 0<br> [0x806002b0]:auipc sp, 1048320<br> [0x806002b4]:addi sp, sp, 4044<br> [0x806002b8]:andi sp, sp, 4092<br> [0x806002bc]:sub t0, t0, sp<br> [0x806002c0]:sw t0, 28(t2)<br>             |
|   9|[0x80e02224]<br>0x0010001D|- rd : x13<br>                                                |[0x807002dc]:jal a3, 1048576<br> [0x806002dc]:xori a3, a3, 1<br> [0x806002e0]:beq zero, zero, 8176<br> [0x806002d0]:auipc sp, 256<br> [0x806002d4]:addi sp, sp, 40<br> [0x806002d8]:jalr zero, sp, 0<br> [0x807002f8]:auipc sp, 1048320<br> [0x807002fc]:addi sp, sp, 4044<br> [0x80700300]:andi sp, sp, 4092<br> [0x80700304]:sub a3, a3, sp<br> [0x80700308]:sw a3, 32(t2)<br>             |
|  10|[0x80e02228]<br>0x0010001D|- rd : x6<br>                                                 |[0x80800324]:jal t1, 1048576<br> [0x80700324]:xori t1, t1, 1<br> [0x80700328]:beq zero, zero, 8176<br> [0x80700318]:auipc sp, 256<br> [0x8070031c]:addi sp, sp, 40<br> [0x80700320]:jalr zero, sp, 0<br> [0x80800340]:auipc sp, 1048320<br> [0x80800344]:addi sp, sp, 4044<br> [0x80800348]:andi sp, sp, 4092<br> [0x8080034c]:sub t1, t1, sp<br> [0x80800350]:sw t1, 36(t2)<br>             |
|  11|[0x80e0222c]<br>0x0010001D|- rd : x15<br>                                                |[0x8090036c]:jal a5, 1048576<br> [0x8080036c]:xori a5, a5, 1<br> [0x80800370]:beq zero, zero, 8176<br> [0x80800360]:auipc sp, 256<br> [0x80800364]:addi sp, sp, 40<br> [0x80800368]:jalr zero, sp, 0<br> [0x80900388]:auipc sp, 1048320<br> [0x8090038c]:addi sp, sp, 4044<br> [0x80900390]:andi sp, sp, 4092<br> [0x80900394]:sub a5, a5, sp<br> [0x80900398]:sw a5, 40(t2)<br>             |
|  12|[0x80e02230]<br>0x0010001D|- rd : x1<br>                                                 |[0x80a003b4]:jal ra, 1048576<br> [0x809003b4]:xori ra, ra, 1<br> [0x809003b8]:beq zero, zero, 8176<br> [0x809003a8]:auipc sp, 256<br> [0x809003ac]:addi sp, sp, 40<br> [0x809003b0]:jalr zero, sp, 0<br> [0x80a003d0]:auipc sp, 1048320<br> [0x80a003d4]:addi sp, sp, 4044<br> [0x80a003d8]:andi sp, sp, 4092<br> [0x80a003dc]:sub ra, ra, sp<br> [0x80a003e0]:sw ra, 44(t2)<br>             |
|  13|[0x80e02234]<br>0x0010001D|- rd : x2<br>                                                 |[0x80b003fc]:jal sp, 1048576<br> [0x80a003fc]:xori sp, sp, 1<br> [0x80a00400]:beq zero, zero, 8176<br> [0x80a003f0]:auipc gp, 256<br> [0x80a003f4]:addi gp, gp, 40<br> [0x80a003f8]:jalr zero, gp, 0<br> [0x80b00418]:auipc gp, 1048320<br> [0x80b0041c]:addi gp, gp, 4044<br> [0x80b00420]:andi gp, gp, 4092<br> [0x80b00424]:sub sp, sp, gp<br> [0x80b00428]:sw sp, 48(t2)<br>             |
|  14|[0x80e02238]<br>0x0010001D|- rd : x7<br>                                                 |[0x80c0044c]:jal t2, 1048576<br> [0x80b0044c]:xori t2, t2, 1<br> [0x80b00450]:beq zero, zero, 8176<br> [0x80b00440]:auipc gp, 256<br> [0x80b00444]:addi gp, gp, 40<br> [0x80b00448]:jalr zero, gp, 0<br> [0x80c00468]:auipc gp, 1048320<br> [0x80c0046c]:addi gp, gp, 4044<br> [0x80c00470]:andi gp, gp, 4092<br> [0x80c00474]:sub t2, t2, gp<br> [0x80c00478]:sw t2, 0(ra)<br>              |
|  15|[0x80e0223c]<br>0x0010001D|- rd : x10<br>                                                |[0x80d00494]:jal a0, 1048576<br> [0x80c00494]:xori a0, a0, 1<br> [0x80c00498]:beq zero, zero, 8176<br> [0x80c00488]:auipc gp, 256<br> [0x80c0048c]:addi gp, gp, 40<br> [0x80c00490]:jalr zero, gp, 0<br> [0x80d004b0]:auipc gp, 1048320<br> [0x80d004b4]:addi gp, gp, 4044<br> [0x80d004b8]:andi gp, gp, 4092<br> [0x80d004bc]:sub a0, a0, gp<br> [0x80d004c0]:sw a0, 4(ra)<br>              |
|  16|[0x80e02240]<br>0x0010001D|- rd : x11<br>                                                |[0x80e004dc]:jal a1, 1048576<br> [0x80d004dc]:xori a1, a1, 1<br> [0x80d004e0]:beq zero, zero, 8176<br> [0x80d004d0]:auipc gp, 256<br> [0x80d004d4]:addi gp, gp, 40<br> [0x80d004d8]:jalr zero, gp, 0<br> [0x80e004f8]:auipc gp, 1048320<br> [0x80e004fc]:addi gp, gp, 4044<br> [0x80e00500]:andi gp, gp, 4092<br> [0x80e00504]:sub a1, a1, gp<br> [0x80e00508]:sw a1, 8(ra)<br>              |
