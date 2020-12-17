
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000460')]      |
| SIG_REGION                | [('0x80002010', '0x800020b0', '20 dwords')]      |
| COV_LABELS                | caddi4spn      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi4spn-01.S/caddi4spn-01.S    |
| Total Number of coverpoints| 29     |
| Total Coverpoints Hit     | 29      |
| Total Signature Updates   | 19      |
| STAT1                     | 19      |
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

|s.no|            signature             |                                  coverpoints                                   |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000200|- opcode : c.addi4spn<br> - rd : x13<br> - imm_val > 0<br> - imm_val == 512<br> |[0x8000039c]:c.addi4spn a3, 512<br> [0x8000039e]:sd a3, 0(ra)<br>   |
|   2|[0x80002018]<br>0x00000000000003FC|- rd : x14<br> - imm_val == 1020<br>                                            |[0x800003a6]:c.addi4spn a4, 1020<br> [0x800003a8]:sd a4, 8(ra)<br>  |
|   3|[0x80002020]<br>0x0000000000000004|- rd : x11<br> - imm_val == 4<br>                                               |[0x800003b0]:c.addi4spn a1, 4<br> [0x800003b2]:sd a1, 16(ra)<br>    |
|   4|[0x80002028]<br>0x0000000000000008|- rd : x10<br> - imm_val == 8<br>                                               |[0x800003ba]:c.addi4spn a0, 8<br> [0x800003bc]:sd a0, 24(ra)<br>    |
|   5|[0x80002030]<br>0x0000000000000010|- rd : x12<br> - imm_val == 16<br>                                              |[0x800003c4]:c.addi4spn a2, 16<br> [0x800003c6]:sd a2, 32(ra)<br>   |
|   6|[0x80002038]<br>0x0000000000000020|- rd : x8<br> - imm_val == 32<br>                                               |[0x800003ce]:c.addi4spn s0, 32<br> [0x800003d0]:sd fp, 40(ra)<br>   |
|   7|[0x80002040]<br>0x0000000000000040|- rd : x9<br> - imm_val == 64<br>                                               |[0x800003d8]:c.addi4spn s1, 64<br> [0x800003da]:sd s1, 48(ra)<br>   |
|   8|[0x80002048]<br>0x0000000000000080|- rd : x15<br> - imm_val == 128<br>                                             |[0x800003e2]:c.addi4spn a5, 128<br> [0x800003e4]:sd a5, 56(ra)<br>  |
|   9|[0x80002050]<br>0x0000000000000100|- imm_val == 256<br>                                                            |[0x800003ec]:c.addi4spn a0, 256<br> [0x800003ee]:sd a0, 64(ra)<br>  |
|  10|[0x80002058]<br>0x00000000000003F8|- imm_val == 1016<br>                                                           |[0x800003f6]:c.addi4spn a0, 1016<br> [0x800003f8]:sd a0, 72(ra)<br> |
|  11|[0x80002060]<br>0x00000000000003F4|- imm_val == 1012<br>                                                           |[0x80000400]:c.addi4spn a0, 1012<br> [0x80000402]:sd a0, 80(ra)<br> |
|  12|[0x80002068]<br>0x00000000000003EC|- imm_val == 1004<br>                                                           |[0x8000040a]:c.addi4spn a0, 1004<br> [0x8000040c]:sd a0, 88(ra)<br> |
|  13|[0x80002070]<br>0x00000000000002FC|- imm_val == 764<br>                                                            |[0x80000414]:c.addi4spn a0, 764<br> [0x80000416]:sd a0, 96(ra)<br>  |
|  14|[0x80002078]<br>0x00000000000001FC|- imm_val == 508<br>                                                            |[0x8000041e]:c.addi4spn a0, 508<br> [0x80000420]:sd a0, 104(ra)<br> |
|  15|[0x80002080]<br>0x0000000000000154|- imm_val == 340<br>                                                            |[0x80000428]:c.addi4spn a0, 340<br> [0x8000042a]:sd a0, 112(ra)<br> |
|  16|[0x80002088]<br>0x00000000000002A8|- imm_val == 680<br>                                                            |[0x80000432]:c.addi4spn a0, 680<br> [0x80000434]:sd a0, 120(ra)<br> |
|  17|[0x80002090]<br>0x00000000000003DC|- imm_val == 988<br>                                                            |[0x8000043c]:c.addi4spn a0, 988<br> [0x8000043e]:sd a0, 128(ra)<br> |
|  18|[0x80002098]<br>0x00000000000003BC|- imm_val == 956<br>                                                            |[0x80000446]:c.addi4spn a0, 956<br> [0x80000448]:sd a0, 136(ra)<br> |
|  19|[0x800020a0]<br>0x000000000000037C|- imm_val == 892<br>                                                            |[0x80000450]:c.addi4spn a0, 892<br> [0x80000452]:sd a0, 144(ra)<br> |
