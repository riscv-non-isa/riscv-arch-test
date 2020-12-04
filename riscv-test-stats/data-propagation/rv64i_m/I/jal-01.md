
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80120d80')]      |
| SIG_REGION                | [('0x80122010', '0x80122110', '32 dwords')]      |
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

|s.no|            signature             |                    coverpoints                     |                                                                                                                                                                                      code                                                                                                                                                                                       |
|---:|----------------------------------|----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80122010]<br>0x0000000000000025|- opcode : jal<br> - rd : x15<br> - imm_val < 0<br> |[0x800003b8]:jal a5, 2097144<br> [0x800003b0]:xori a5, a5, 1<br> [0x800003b4]:beq zero, zero, 8176<br> [0x800003a4]:auipc a2, 0<br> [0x800003a8]:addi a2, a2, 48<br> [0x800003ac]:jalr zero, a2, 0<br> [0x800003d4]:auipc a2, 0<br> [0x800003d8]:addi a2, a2, 4036<br> [0x800003dc]:andi a2, a2, 4092<br> [0x800003e0]:sub a5, a5, a2<br> [0x800003e4]:sd a5, 0(t2)<br>          |
|   2|[0x80122018]<br>0x0000000000000000|- rd : x0<br> - imm_val > 0<br>                     |[0x80000408]:jal zero, 131072<br> [0x80020408]:xori zero, zero, 3<br> [0x8002040c]:auipc a2, 0<br> [0x80020410]:addi a2, a2, 12<br> [0x80020414]:jalr zero, a2, 0<br> [0x80020418]:auipc a2, 1048544<br> [0x8002041c]:addi a2, a2, 4048<br> [0x80020420]:andi a2, a2, 4092<br> [0x80020424]:sub zero, zero, a2<br> [0x80020428]:sd zero, 8(t2)<br>                               |
|   3|[0x80122020]<br>0x000000000008001D|- rd : x10<br> - imm_val == (-(2**(18)))<br>        |[0x800a0444]:jal a0, 1572864<br> [0x80020444]:xori a0, a0, 1<br> [0x80020448]:beq zero, zero, 8176<br> [0x80020438]:auipc a2, 128<br> [0x8002043c]:addi a2, a2, 40<br> [0x80020440]:jalr zero, a2, 0<br> [0x800a0460]:auipc a2, 1048448<br> [0x800a0464]:addi a2, a2, 4044<br> [0x800a0468]:andi a2, a2, 4092<br> [0x800a046c]:sub a0, a0, a2<br> [0x800a0470]:sd a0, 16(t2)<br> |
|   4|[0x80122028]<br>0x0000000000000027|- rd : x31<br> - imm_val == ((2**(18)))<br>         |[0x800a0494]:jal t6, 524288<br> [0x80120494]:xori t6, t6, 3<br> [0x80120498]:auipc a2, 0<br> [0x8012049c]:addi a2, a2, 12<br> [0x801204a0]:jalr zero, a2, 0<br> [0x801204a4]:auipc a2, 1048448<br> [0x801204a8]:addi a2, a2, 4048<br> [0x801204ac]:andi a2, a2, 4092<br> [0x801204b0]:sub t6, t6, a2<br> [0x801204b4]:sd t6, 24(t2)<br>                                          |
|   5|[0x80122030]<br>0x0000000000000027|- rd : x14<br>                                      |[0x801204d8]:jal a4, 12<br> [0x801204e4]:xori a4, a4, 3<br> [0x801204e8]:auipc a2, 0<br> [0x801204ec]:addi a2, a2, 12<br> [0x801204f0]:jalr zero, a2, 0<br> [0x801204f4]:auipc a2, 0<br> [0x801204f8]:addi a2, a2, 4036<br> [0x801204fc]:andi a2, a2, 4092<br> [0x80120500]:sub a4, a4, a2<br> [0x80120504]:sd a4, 32(t2)<br>                                                    |
|   6|[0x80122038]<br>0x0000000000000027|- rd : x24<br>                                      |[0x80120528]:jal s8, 12<br> [0x80120534]:xori s8, s8, 3<br> [0x80120538]:auipc a2, 0<br> [0x8012053c]:addi a2, a2, 12<br> [0x80120540]:jalr zero, a2, 0<br> [0x80120544]:auipc a2, 0<br> [0x80120548]:addi a2, a2, 4036<br> [0x8012054c]:andi a2, a2, 4092<br> [0x80120550]:sub s8, s8, a2<br> [0x80120554]:sd s8, 40(t2)<br>                                                    |
|   7|[0x80122040]<br>0x0000000000000027|- rd : x18<br>                                      |[0x80120578]:jal s2, 12<br> [0x80120584]:xori s2, s2, 3<br> [0x80120588]:auipc a2, 0<br> [0x8012058c]:addi a2, a2, 12<br> [0x80120590]:jalr zero, a2, 0<br> [0x80120594]:auipc a2, 0<br> [0x80120598]:addi a2, a2, 4036<br> [0x8012059c]:andi a2, a2, 4092<br> [0x801205a0]:sub s2, s2, a2<br> [0x801205a4]:sd s2, 48(t2)<br>                                                    |
|   8|[0x80122048]<br>0x0000000000000027|- rd : x6<br>                                       |[0x801205c8]:jal t1, 12<br> [0x801205d4]:xori t1, t1, 3<br> [0x801205d8]:auipc a2, 0<br> [0x801205dc]:addi a2, a2, 12<br> [0x801205e0]:jalr zero, a2, 0<br> [0x801205e4]:auipc a2, 0<br> [0x801205e8]:addi a2, a2, 4036<br> [0x801205ec]:andi a2, a2, 4092<br> [0x801205f0]:sub t1, t1, a2<br> [0x801205f4]:sd t1, 56(t2)<br>                                                    |
|   9|[0x80122050]<br>0x0000000000000027|- rd : x22<br>                                      |[0x80120618]:jal s6, 12<br> [0x80120624]:xori s6, s6, 3<br> [0x80120628]:auipc a2, 0<br> [0x8012062c]:addi a2, a2, 12<br> [0x80120630]:jalr zero, a2, 0<br> [0x80120634]:auipc a2, 0<br> [0x80120638]:addi a2, a2, 4036<br> [0x8012063c]:andi a2, a2, 4092<br> [0x80120640]:sub s6, s6, a2<br> [0x80120644]:sd s6, 64(t2)<br>                                                    |
|  10|[0x80122058]<br>0x0000000000000027|- rd : x26<br>                                      |[0x80120668]:jal s10, 12<br> [0x80120674]:xori s10, s10, 3<br> [0x80120678]:auipc a2, 0<br> [0x8012067c]:addi a2, a2, 12<br> [0x80120680]:jalr zero, a2, 0<br> [0x80120684]:auipc a2, 0<br> [0x80120688]:addi a2, a2, 4036<br> [0x8012068c]:andi a2, a2, 4092<br> [0x80120690]:sub s10, s10, a2<br> [0x80120694]:sd s10, 72(t2)<br>                                              |
|  11|[0x80122060]<br>0x0000000000000027|- rd : x21<br>                                      |[0x801206b8]:jal s5, 12<br> [0x801206c4]:xori s5, s5, 3<br> [0x801206c8]:auipc a2, 0<br> [0x801206cc]:addi a2, a2, 12<br> [0x801206d0]:jalr zero, a2, 0<br> [0x801206d4]:auipc a2, 0<br> [0x801206d8]:addi a2, a2, 4036<br> [0x801206dc]:andi a2, a2, 4092<br> [0x801206e0]:sub s5, s5, a2<br> [0x801206e4]:sd s5, 80(t2)<br>                                                    |
|  12|[0x80122068]<br>0x0000000000000027|- rd : x30<br>                                      |[0x80120708]:jal t5, 12<br> [0x80120714]:xori t5, t5, 3<br> [0x80120718]:auipc a2, 0<br> [0x8012071c]:addi a2, a2, 12<br> [0x80120720]:jalr zero, a2, 0<br> [0x80120724]:auipc a2, 0<br> [0x80120728]:addi a2, a2, 4036<br> [0x8012072c]:andi a2, a2, 4092<br> [0x80120730]:sub t5, t5, a2<br> [0x80120734]:sd t5, 88(t2)<br>                                                    |
|  13|[0x80122070]<br>0x0000000000000027|- rd : x27<br>                                      |[0x80120758]:jal s11, 12<br> [0x80120764]:xori s11, s11, 3<br> [0x80120768]:auipc a2, 0<br> [0x8012076c]:addi a2, a2, 12<br> [0x80120770]:jalr zero, a2, 0<br> [0x80120774]:auipc a2, 0<br> [0x80120778]:addi a2, a2, 4036<br> [0x8012077c]:andi a2, a2, 4092<br> [0x80120780]:sub s11, s11, a2<br> [0x80120784]:sd s11, 96(t2)<br>                                              |
|  14|[0x80122078]<br>0x0000000000000027|- rd : x23<br>                                      |[0x801207a8]:jal s7, 12<br> [0x801207b4]:xori s7, s7, 3<br> [0x801207b8]:auipc a2, 0<br> [0x801207bc]:addi a2, a2, 12<br> [0x801207c0]:jalr zero, a2, 0<br> [0x801207c4]:auipc a2, 0<br> [0x801207c8]:addi a2, a2, 4036<br> [0x801207cc]:andi a2, a2, 4092<br> [0x801207d0]:sub s7, s7, a2<br> [0x801207d4]:sd s7, 104(t2)<br>                                                   |
|  15|[0x80122080]<br>0x0000000000000027|- rd : x5<br>                                       |[0x801207f8]:jal t0, 12<br> [0x80120804]:xori t0, t0, 3<br> [0x80120808]:auipc a2, 0<br> [0x8012080c]:addi a2, a2, 12<br> [0x80120810]:jalr zero, a2, 0<br> [0x80120814]:auipc a2, 0<br> [0x80120818]:addi a2, a2, 4036<br> [0x8012081c]:andi a2, a2, 4092<br> [0x80120820]:sub t0, t0, a2<br> [0x80120824]:sd t0, 112(t2)<br>                                                   |
|  16|[0x80122088]<br>0x0000000000000027|- rd : x9<br>                                       |[0x80120848]:jal s1, 12<br> [0x80120854]:xori s1, s1, 3<br> [0x80120858]:auipc a2, 0<br> [0x8012085c]:addi a2, a2, 12<br> [0x80120860]:jalr zero, a2, 0<br> [0x80120864]:auipc a2, 0<br> [0x80120868]:addi a2, a2, 4036<br> [0x8012086c]:andi a2, a2, 4092<br> [0x80120870]:sub s1, s1, a2<br> [0x80120874]:sd s1, 120(t2)<br>                                                   |
|  17|[0x80122090]<br>0x0000000000000027|- rd : x3<br>                                       |[0x80120898]:jal gp, 12<br> [0x801208a4]:xori gp, gp, 3<br> [0x801208a8]:auipc a2, 0<br> [0x801208ac]:addi a2, a2, 12<br> [0x801208b0]:jalr zero, a2, 0<br> [0x801208b4]:auipc a2, 0<br> [0x801208b8]:addi a2, a2, 4036<br> [0x801208bc]:andi a2, a2, 4092<br> [0x801208c0]:sub gp, gp, a2<br> [0x801208c4]:sd gp, 128(t2)<br>                                                   |
|  18|[0x80122098]<br>0x0000000000000027|- rd : x4<br>                                       |[0x801208e8]:jal tp, 12<br> [0x801208f4]:xori tp, tp, 3<br> [0x801208f8]:auipc a2, 0<br> [0x801208fc]:addi a2, a2, 12<br> [0x80120900]:jalr zero, a2, 0<br> [0x80120904]:auipc a2, 0<br> [0x80120908]:addi a2, a2, 4036<br> [0x8012090c]:andi a2, a2, 4092<br> [0x80120910]:sub tp, tp, a2<br> [0x80120914]:sd tp, 136(t2)<br>                                                   |
|  19|[0x801220a0]<br>0x0000000000000027|- rd : x2<br>                                       |[0x80120938]:jal sp, 12<br> [0x80120944]:xori sp, sp, 3<br> [0x80120948]:auipc a2, 0<br> [0x8012094c]:addi a2, a2, 12<br> [0x80120950]:jalr zero, a2, 0<br> [0x80120954]:auipc a2, 0<br> [0x80120958]:addi a2, a2, 4036<br> [0x8012095c]:andi a2, a2, 4092<br> [0x80120960]:sub sp, sp, a2<br> [0x80120964]:sd sp, 144(t2)<br>                                                   |
|  20|[0x801220a8]<br>0x0000000000000027|- rd : x13<br>                                      |[0x80120988]:jal a3, 12<br> [0x80120994]:xori a3, a3, 3<br> [0x80120998]:auipc a2, 0<br> [0x8012099c]:addi a2, a2, 12<br> [0x801209a0]:jalr zero, a2, 0<br> [0x801209a4]:auipc a2, 0<br> [0x801209a8]:addi a2, a2, 4036<br> [0x801209ac]:andi a2, a2, 4092<br> [0x801209b0]:sub a3, a3, a2<br> [0x801209b4]:sd a3, 152(t2)<br>                                                   |
|  21|[0x801220b0]<br>0x0000000000000027|- rd : x1<br>                                       |[0x801209d8]:jal ra, 12<br> [0x801209e4]:xori ra, ra, 3<br> [0x801209e8]:auipc a2, 0<br> [0x801209ec]:addi a2, a2, 12<br> [0x801209f0]:jalr zero, a2, 0<br> [0x801209f4]:auipc a2, 0<br> [0x801209f8]:addi a2, a2, 4036<br> [0x801209fc]:andi a2, a2, 4092<br> [0x80120a00]:sub ra, ra, a2<br> [0x80120a04]:sd ra, 160(t2)<br>                                                   |
|  22|[0x801220b8]<br>0x0000000000000027|- rd : x11<br>                                      |[0x80120a28]:jal a1, 12<br> [0x80120a34]:xori a1, a1, 3<br> [0x80120a38]:auipc a2, 0<br> [0x80120a3c]:addi a2, a2, 12<br> [0x80120a40]:jalr zero, a2, 0<br> [0x80120a44]:auipc a2, 0<br> [0x80120a48]:addi a2, a2, 4036<br> [0x80120a4c]:andi a2, a2, 4092<br> [0x80120a50]:sub a1, a1, a2<br> [0x80120a54]:sd a1, 168(t2)<br>                                                   |
|  23|[0x801220c0]<br>0x0000000000000027|- rd : x8<br>                                       |[0x80120a78]:jal fp, 12<br> [0x80120a84]:xori fp, fp, 3<br> [0x80120a88]:auipc a2, 0<br> [0x80120a8c]:addi a2, a2, 12<br> [0x80120a90]:jalr zero, a2, 0<br> [0x80120a94]:auipc a2, 0<br> [0x80120a98]:addi a2, a2, 4036<br> [0x80120a9c]:andi a2, a2, 4092<br> [0x80120aa0]:sub fp, fp, a2<br> [0x80120aa4]:sd fp, 176(t2)<br>                                                   |
|  24|[0x801220c8]<br>0x0000000000000027|- rd : x29<br>                                      |[0x80120ac8]:jal t4, 12<br> [0x80120ad4]:xori t4, t4, 3<br> [0x80120ad8]:auipc a2, 0<br> [0x80120adc]:addi a2, a2, 12<br> [0x80120ae0]:jalr zero, a2, 0<br> [0x80120ae4]:auipc a2, 0<br> [0x80120ae8]:addi a2, a2, 4036<br> [0x80120aec]:andi a2, a2, 4092<br> [0x80120af0]:sub t4, t4, a2<br> [0x80120af4]:sd t4, 184(t2)<br>                                                   |
|  25|[0x801220d0]<br>0x0000000000000027|- rd : x16<br>                                      |[0x80120b18]:jal a6, 12<br> [0x80120b24]:xori a6, a6, 3<br> [0x80120b28]:auipc a2, 0<br> [0x80120b2c]:addi a2, a2, 12<br> [0x80120b30]:jalr zero, a2, 0<br> [0x80120b34]:auipc a2, 0<br> [0x80120b38]:addi a2, a2, 4036<br> [0x80120b3c]:andi a2, a2, 4092<br> [0x80120b40]:sub a6, a6, a2<br> [0x80120b44]:sd a6, 192(t2)<br>                                                   |
|  26|[0x801220d8]<br>0x0000000000000027|- rd : x17<br>                                      |[0x80120b68]:jal a7, 12<br> [0x80120b74]:xori a7, a7, 3<br> [0x80120b78]:auipc a2, 0<br> [0x80120b7c]:addi a2, a2, 12<br> [0x80120b80]:jalr zero, a2, 0<br> [0x80120b84]:auipc a2, 0<br> [0x80120b88]:addi a2, a2, 4036<br> [0x80120b8c]:andi a2, a2, 4092<br> [0x80120b90]:sub a7, a7, a2<br> [0x80120b94]:sd a7, 200(t2)<br>                                                   |
|  27|[0x801220e0]<br>0x0000000000000027|- rd : x20<br>                                      |[0x80120bb8]:jal s4, 12<br> [0x80120bc4]:xori s4, s4, 3<br> [0x80120bc8]:auipc a2, 0<br> [0x80120bcc]:addi a2, a2, 12<br> [0x80120bd0]:jalr zero, a2, 0<br> [0x80120bd4]:auipc a2, 0<br> [0x80120bd8]:addi a2, a2, 4036<br> [0x80120bdc]:andi a2, a2, 4092<br> [0x80120be0]:sub s4, s4, a2<br> [0x80120be4]:sd s4, 208(t2)<br>                                                   |
|  28|[0x801220e8]<br>0x0000000000000027|- rd : x25<br>                                      |[0x80120c08]:jal s9, 12<br> [0x80120c14]:xori s9, s9, 3<br> [0x80120c18]:auipc a2, 0<br> [0x80120c1c]:addi a2, a2, 12<br> [0x80120c20]:jalr zero, a2, 0<br> [0x80120c24]:auipc a2, 0<br> [0x80120c28]:addi a2, a2, 4036<br> [0x80120c2c]:andi a2, a2, 4092<br> [0x80120c30]:sub s9, s9, a2<br> [0x80120c34]:sd s9, 216(t2)<br>                                                   |
|  29|[0x801220f0]<br>0x0000000000000027|- rd : x12<br>                                      |[0x80120c58]:jal a2, 12<br> [0x80120c64]:xori a2, a2, 3<br> [0x80120c68]:auipc sp, 0<br> [0x80120c6c]:addi sp, sp, 12<br> [0x80120c70]:jalr zero, sp, 0<br> [0x80120c74]:auipc sp, 0<br> [0x80120c78]:addi sp, sp, 4036<br> [0x80120c7c]:andi sp, sp, 4092<br> [0x80120c80]:sub a2, a2, sp<br> [0x80120c84]:sd a2, 224(t2)<br>                                                   |
|  30|[0x801220f8]<br>0x0000000000000027|- rd : x7<br>                                       |[0x80120cb0]:jal t2, 12<br> [0x80120cbc]:xori t2, t2, 3<br> [0x80120cc0]:auipc sp, 0<br> [0x80120cc4]:addi sp, sp, 12<br> [0x80120cc8]:jalr zero, sp, 0<br> [0x80120ccc]:auipc sp, 0<br> [0x80120cd0]:addi sp, sp, 4036<br> [0x80120cd4]:andi sp, sp, 4092<br> [0x80120cd8]:sub t2, t2, sp<br> [0x80120cdc]:sd t2, 0(ra)<br>                                                     |
|  31|[0x80122100]<br>0x0000000000000027|- rd : x28<br>                                      |[0x80120d00]:jal t3, 12<br> [0x80120d0c]:xori t3, t3, 3<br> [0x80120d10]:auipc sp, 0<br> [0x80120d14]:addi sp, sp, 12<br> [0x80120d18]:jalr zero, sp, 0<br> [0x80120d1c]:auipc sp, 0<br> [0x80120d20]:addi sp, sp, 4036<br> [0x80120d24]:andi sp, sp, 4092<br> [0x80120d28]:sub t3, t3, sp<br> [0x80120d2c]:sd t3, 8(ra)<br>                                                     |
|  32|[0x80122108]<br>0x0000000000000027|- rd : x19<br>                                      |[0x80120d50]:jal s3, 12<br> [0x80120d5c]:xori s3, s3, 3<br> [0x80120d60]:auipc sp, 0<br> [0x80120d64]:addi sp, sp, 12<br> [0x80120d68]:jalr zero, sp, 0<br> [0x80120d6c]:auipc sp, 0<br> [0x80120d70]:addi sp, sp, 4036<br> [0x80120d74]:andi sp, sp, 4092<br> [0x80120d78]:sub s3, s3, sp<br> [0x80120d7c]:sd s3, 16(ra)<br>                                                    |
