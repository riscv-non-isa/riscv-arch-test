
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006a0')]      |
| SIG_REGION                | [('0x80003208', '0x80003308', '32 dwords')]      |
| COV_LABELS                | lh-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lh-align-01.S/lh-align-01.S    |
| Total Number of coverpoints| 77     |
| Total Coverpoints Hit     | 77      |
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

|s.no|            signature             |                                                         coverpoints                                                         |                                                                    code                                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFCAFE|- opcode : lh<br> - rs1 : x7<br> - rd : x29<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x800003a0]:lh t4, 3072(t2)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:sd t4, 0(sp)<br>       |
|   2|[0x80003210]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x27<br> - rd : x27<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                    |[0x800003b8]:lh s11, 4089(s11)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:sd s11, 8(sp)<br>    |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x12<br> - rd : x22<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                    |[0x800003d0]:lh s6, 4086(a2)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br> [0x800003dc]:sd s6, 16(sp)<br>      |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x11<br> - rd : x23<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                    |[0x800003e8]:lh s7, 4031(a1)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:sd s7, 24(sp)<br>      |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFBABE|- rs1 : x24<br> - rd : x28<br> - ea_align == 2 and (imm_val % 4) == 0<br> - imm_val > 0<br>                                  |[0x80000400]:lh t3, 4(s8)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:sd t3, 32(sp)<br>         |
|   6|[0x80003230]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x14<br> - rd : x18<br> - imm_val == 0<br>                                                                            |[0x80000418]:lh s2, 0(a4)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:sd s2, 40(sp)<br>         |
|   7|[0x80003238]<br>0xFFFFFFFFFFFFBABE|- rs1 : x13<br> - rd : x10<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                    |[0x80000430]:lh a0, 4089(a3)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:sd a0, 48(sp)<br>      |
|   8|[0x80003240]<br>0xFFFFFFFFFFFFBABE|- rs1 : x23<br> - rd : x19<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                    |[0x80000448]:lh s3, 4090(s7)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:sd s3, 56(sp)<br>      |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFBABE|- rs1 : x15<br> - rd : x4<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                     |[0x80000460]:lh tp, 3839(a5)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br> [0x8000046c]:sd tp, 64(sp)<br>      |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x17<br> - rd : x11<br>                                                                                               |[0x80000478]:lh a1, 2048(a7)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:sd a1, 72(sp)<br>      |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x30<br> - rd : x15<br>                                                                                               |[0x80000490]:lh a5, 2048(t5)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:sd a5, 80(sp)<br>      |
|  12|[0x80003260]<br>0x0000000000000000|- rs1 : x26<br> - rd : x0<br>                                                                                                |[0x800004a8]:lh zero, 2048(s10)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:sd zero, 88(sp)<br> |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x18<br> - rd : x14<br>                                                                                               |[0x800004c0]:lh a4, 2048(s2)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br> [0x800004cc]:sd a4, 96(sp)<br>      |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x22<br> - rd : x20<br>                                                                                               |[0x800004d8]:lh s4, 2048(s6)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:sd s4, 104(sp)<br>     |
|  15|[0x80003278]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x9<br> - rd : x1<br>                                                                                                 |[0x800004f0]:lh ra, 2048(s1)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br> [0x800004fc]:sd ra, 112(sp)<br>     |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x21<br> - rd : x25<br>                                                                                               |[0x80000508]:lh s9, 2048(s5)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:sd s9, 120(sp)<br>     |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x3<br> - rd : x26<br>                                                                                                |[0x80000520]:lh s10, 2048(gp)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:sd s10, 128(sp)<br>   |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x6<br> - rd : x17<br>                                                                                                |[0x80000538]:lh a7, 2048(t1)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:sd a7, 136(sp)<br>     |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x29<br> - rd : x16<br>                                                                                               |[0x80000550]:lh a6, 2048(t4)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br> [0x8000055c]:sd a6, 144(sp)<br>     |
|  20|[0x800032a0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x8<br> - rd : x24<br>                                                                                                |[0x80000568]:lh s8, 2048(fp)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br> [0x80000574]:sd s8, 152(sp)<br>     |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x5<br> - rd : x8<br>                                                                                                 |[0x80000588]:lh fp, 2048(t0)<br> [0x8000058c]:addi zero, zero, 0<br> [0x80000590]:addi zero, zero, 0<br> [0x80000594]:sd fp, 0(a1)<br>       |
|  22|[0x800032b0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x20<br> - rd : x31<br>                                                                                               |[0x800005a0]:lh t6, 2048(s4)<br> [0x800005a4]:addi zero, zero, 0<br> [0x800005a8]:addi zero, zero, 0<br> [0x800005ac]:sd t6, 8(a1)<br>       |
|  23|[0x800032b8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x2<br> - rd : x9<br>                                                                                                 |[0x800005b8]:lh s1, 2048(sp)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:sd s1, 16(a1)<br>      |
|  24|[0x800032c0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x4<br> - rd : x30<br>                                                                                                |[0x800005d0]:lh t5, 2048(tp)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br> [0x800005dc]:sd t5, 24(a1)<br>      |
|  25|[0x800032c8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x16<br> - rd : x2<br>                                                                                                |[0x800005e8]:lh sp, 2048(a6)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:sd sp, 32(a1)<br>      |
|  26|[0x800032d0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x1<br> - rd : x7<br>                                                                                                 |[0x80000600]:lh t2, 2048(ra)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br> [0x8000060c]:sd t2, 40(a1)<br>      |
|  27|[0x800032d8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x31<br> - rd : x3<br>                                                                                                |[0x80000618]:lh gp, 2048(t6)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br> [0x80000624]:sd gp, 48(a1)<br>      |
|  28|[0x800032e0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x28<br> - rd : x12<br>                                                                                               |[0x80000630]:lh a2, 2048(t3)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:sd a2, 56(a1)<br>      |
|  29|[0x800032e8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x10<br> - rd : x13<br>                                                                                               |[0x80000648]:lh a3, 2048(a0)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br> [0x80000654]:sd a3, 64(a1)<br>      |
|  30|[0x800032f0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x25<br> - rd : x21<br>                                                                                               |[0x80000660]:lh s5, 2048(s9)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br> [0x8000066c]:sd s5, 72(a1)<br>      |
|  31|[0x800032f8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x19<br> - rd : x6<br>                                                                                                |[0x80000678]:lh t1, 2048(s3)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:sd t1, 80(a1)<br>      |
|  32|[0x80003300]<br>0xFFFFFFFFFFFFCAFE|- rd : x5<br>                                                                                                                |[0x80000690]:lh t0, 2048(tp)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:sd t0, 88(a1)<br>      |
