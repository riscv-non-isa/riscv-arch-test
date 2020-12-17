
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006c0')]      |
| SIG_REGION                | [('0x80002010', '0x80002120', '34 dwords')]      |
| COV_LABELS                | lbu-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lbu-align-01.S/lbu-align-01.S    |
| Total Number of coverpoints| 85     |
| Total Coverpoints Hit     | 85      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006a8]:lbu a1, 4095(a0)
      [0x800006ac]:addi zero, zero, 0
      [0x800006b0]:addi zero, zero, 0
      [0x800006b4]:sd a1, 72(ra)
 -- Signature Address: 0x80002110 Data: 0x00000000000000BA
 -- Redundant Coverpoints hit by the op
      - opcode : lbu
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - ea_align == 3 and (imm_val % 4) == 3
      - imm_val < 0






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

|s.no|            signature             |                                                          coverpoints                                                           |                                                                     code                                                                     |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000000000FE|- opcode : lbu<br> - rs1 : x10<br> - rd : x10<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val == 0<br> |[0x800003a0]:lbu a0, 0(a0)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:sd a0, 0(sp)<br>          |
|   2|[0x80002018]<br>0x00000000000000FE|- rs1 : x5<br> - rd : x27<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br>                      |[0x800003b8]:lbu s11, 1365(t0)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:sd s11, 8(sp)<br>     |
|   3|[0x80002020]<br>0x00000000000000FE|- rs1 : x17<br> - rd : x30<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                       |[0x800003d0]:lbu t5, 6(a7)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br> [0x800003dc]:sd t5, 16(sp)<br>         |
|   4|[0x80002028]<br>0x00000000000000FE|- rs1 : x20<br> - rd : x1<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                        |[0x800003e8]:lbu ra, 3(s4)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:sd ra, 24(sp)<br>         |
|   5|[0x80002030]<br>0x00000000000000BE|- rs1 : x28<br> - rd : x31<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                       |[0x80000400]:lbu t6, 0(t3)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:sd t6, 32(sp)<br>         |
|   6|[0x80002038]<br>0x00000000000000BE|- rs1 : x15<br> - rd : x25<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                       |[0x80000418]:lbu s9, 1(a5)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:sd s9, 40(sp)<br>         |
|   7|[0x80002040]<br>0x00000000000000BE|- rs1 : x18<br> - rd : x29<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                       |[0x80000430]:lbu t4, 2(s2)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:sd t4, 48(sp)<br>         |
|   8|[0x80002048]<br>0x00000000000000BE|- rs1 : x26<br> - rd : x16<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                       |[0x80000448]:lbu a6, 1023(s10)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:sd a6, 56(sp)<br>     |
|   9|[0x80002050]<br>0x00000000000000CA|- rs1 : x30<br> - rd : x12<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                       |[0x80000460]:lbu a2, 256(t5)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br> [0x8000046c]:sd a2, 64(sp)<br>       |
|  10|[0x80002058]<br>0x00000000000000CA|- rs1 : x4<br> - rd : x8<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                         |[0x80000478]:lbu fp, 5(tp)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:sd fp, 72(sp)<br>         |
|  11|[0x80002060]<br>0x00000000000000FE|- rs1 : x14<br> - rd : x22<br> - imm_val < 0<br>                                                                                |[0x80000490]:lbu s6, 2730(a4)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:sd s6, 80(sp)<br>      |
|  12|[0x80002068]<br>0x00000000000000CA|- rs1 : x12<br> - rd : x18<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                       |[0x800004a8]:lbu s2, 4086(a2)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:sd s2, 88(sp)<br>      |
|  13|[0x80002070]<br>0x00000000000000CA|- rs1 : x11<br> - rd : x15<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                       |[0x800004c0]:lbu a5, 4063(a1)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br> [0x800004cc]:sd a5, 96(sp)<br>      |
|  14|[0x80002078]<br>0x00000000000000BA|- rs1 : x24<br> - rd : x17<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                       |[0x800004d8]:lbu a7, 64(s8)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:sd a7, 104(sp)<br>       |
|  15|[0x80002080]<br>0x00000000000000BA|- rs1 : x16<br> - rd : x23<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                       |[0x800004f0]:lbu s7, 1(a6)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br> [0x800004fc]:sd s7, 112(sp)<br>        |
|  16|[0x80002088]<br>0x00000000000000BA|- rs1 : x1<br> - rd : x11<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                        |[0x80000508]:lbu a1, 4094(ra)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:sd a1, 120(sp)<br>     |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x23<br> - rd : x0<br> - ea_align == 3 and (imm_val % 4) == 3<br>                                                        |[0x80000520]:lbu zero, 4095(s7)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:sd zero, 128(sp)<br> |
|  18|[0x80002098]<br>0x00000000000000FE|- rs1 : x25<br> - rd : x21<br>                                                                                                  |[0x80000538]:lbu s5, 2048(s9)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:sd s5, 136(sp)<br>     |
|  19|[0x800020a0]<br>0x00000000000000FE|- rs1 : x13<br> - rd : x19<br>                                                                                                  |[0x80000550]:lbu s3, 2048(a3)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br> [0x8000055c]:sd s3, 144(sp)<br>     |
|  20|[0x800020a8]<br>0x00000000000000FE|- rs1 : x21<br> - rd : x4<br>                                                                                                   |[0x80000568]:lbu tp, 2048(s5)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br> [0x80000574]:sd tp, 152(sp)<br>     |
|  21|[0x800020b0]<br>0x00000000000000FE|- rs1 : x31<br> - rd : x14<br>                                                                                                  |[0x80000580]:lbu a4, 2048(t6)<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:addi zero, zero, 0<br> [0x8000058c]:sd a4, 160(sp)<br>     |
|  22|[0x800020b8]<br>0x00000000000000FE|- rs1 : x22<br> - rd : x6<br>                                                                                                   |[0x80000598]:lbu t1, 2048(s6)<br> [0x8000059c]:addi zero, zero, 0<br> [0x800005a0]:addi zero, zero, 0<br> [0x800005a4]:sd t1, 168(sp)<br>     |
|  23|[0x800020c0]<br>0x00000000000000FE|- rs1 : x9<br> - rd : x3<br>                                                                                                    |[0x800005b0]:lbu gp, 2048(s1)<br> [0x800005b4]:addi zero, zero, 0<br> [0x800005b8]:addi zero, zero, 0<br> [0x800005bc]:sd gp, 176(sp)<br>     |
|  24|[0x800020c8]<br>0x00000000000000FE|- rs1 : x27<br> - rd : x2<br>                                                                                                   |[0x800005d0]:lbu sp, 2048(s11)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br> [0x800005dc]:sd sp, 0(ra)<br>      |
|  25|[0x800020d0]<br>0x00000000000000FE|- rs1 : x2<br> - rd : x13<br>                                                                                                   |[0x800005e8]:lbu a3, 2048(sp)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:sd a3, 8(ra)<br>       |
|  26|[0x800020d8]<br>0x00000000000000FE|- rs1 : x6<br> - rd : x9<br>                                                                                                    |[0x80000600]:lbu s1, 2048(t1)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br> [0x8000060c]:sd s1, 16(ra)<br>      |
|  27|[0x800020e0]<br>0x00000000000000FE|- rs1 : x29<br> - rd : x28<br>                                                                                                  |[0x80000618]:lbu t3, 2048(t4)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br> [0x80000624]:sd t3, 24(ra)<br>      |
|  28|[0x800020e8]<br>0x00000000000000FE|- rs1 : x3<br> - rd : x20<br>                                                                                                   |[0x80000630]:lbu s4, 2048(gp)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:sd s4, 32(ra)<br>      |
|  29|[0x800020f0]<br>0x00000000000000FE|- rs1 : x7<br> - rd : x5<br>                                                                                                    |[0x80000648]:lbu t0, 2048(t2)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br> [0x80000654]:sd t0, 40(ra)<br>      |
|  30|[0x800020f8]<br>0x00000000000000FE|- rs1 : x19<br> - rd : x24<br>                                                                                                  |[0x80000660]:lbu s8, 2048(s3)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br> [0x8000066c]:sd s8, 48(ra)<br>      |
|  31|[0x80002100]<br>0x00000000000000FE|- rs1 : x8<br> - rd : x26<br>                                                                                                   |[0x80000678]:lbu s10, 2048(fp)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:sd s10, 56(ra)<br>    |
|  32|[0x80002108]<br>0x00000000000000FE|- rd : x7<br>                                                                                                                   |[0x80000690]:lbu t2, 2048(s6)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:sd t2, 64(ra)<br>      |
