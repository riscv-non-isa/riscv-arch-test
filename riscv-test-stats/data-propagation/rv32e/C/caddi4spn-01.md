
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000140')]      |
| SIG_REGION                | [('0x80002204', '0x80002250', '19 words')]      |
| COV_LABELS                | caddi4spn      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/caddi4spn-01.S/caddi4spn-01.S    |
| Total Number of coverpoints| 32     |
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

|s.no|        signature         |                                   coverpoints                                   |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002204]<br>0x000003FC|- opcode : c.addi4spn<br> - rd : x10<br> - imm_val == 1020<br> - imm_val > 0<br> |[0x80000084]:c.addi4spn a0, 1020<br> [0x80000086]:sw a0, 0(ra)<br>  |
|   2|[0x80002208]<br>0x000001FC|- rd : x13<br> - imm_val == 508<br>                                              |[0x8000008e]:c.addi4spn a3, 508<br> [0x80000090]:sw a3, 4(ra)<br>   |
|   3|[0x8000220c]<br>0x000002FC|- rd : x9<br> - imm_val == 764<br>                                               |[0x80000098]:c.addi4spn s1, 764<br> [0x8000009a]:sw s1, 8(ra)<br>   |
|   4|[0x80002210]<br>0x0000037C|- rd : x8<br> - imm_val == 892<br>                                               |[0x800000a2]:c.addi4spn s0, 892<br> [0x800000a4]:sw fp, 12(ra)<br>  |
|   5|[0x80002214]<br>0x000003BC|- rd : x14<br> - imm_val == 956<br>                                              |[0x800000ac]:c.addi4spn a4, 956<br> [0x800000ae]:sw a4, 16(ra)<br>  |
|   6|[0x80002218]<br>0x000003DC|- rd : x11<br> - imm_val == 988<br>                                              |[0x800000b6]:c.addi4spn a1, 988<br> [0x800000b8]:sw a1, 20(ra)<br>  |
|   7|[0x8000221c]<br>0x000003EC|- rd : x15<br> - imm_val == 1004<br>                                             |[0x800000c0]:c.addi4spn a5, 1004<br> [0x800000c2]:sw a5, 24(ra)<br> |
|   8|[0x80002220]<br>0x000003F4|- rd : x12<br> - imm_val == 1012<br>                                             |[0x800000ca]:c.addi4spn a2, 1012<br> [0x800000cc]:sw a2, 28(ra)<br> |
|   9|[0x80002224]<br>0x000003F8|- imm_val == 1016<br>                                                            |[0x800000d4]:c.addi4spn a0, 1016<br> [0x800000d6]:sw a0, 32(ra)<br> |
|  10|[0x80002228]<br>0x00000200|- imm_val == 512<br>                                                             |[0x800000de]:c.addi4spn a0, 512<br> [0x800000e0]:sw a0, 36(ra)<br>  |
|  11|[0x8000222c]<br>0x00000100|- imm_val == 256<br>                                                             |[0x800000e8]:c.addi4spn a0, 256<br> [0x800000ea]:sw a0, 40(ra)<br>  |
|  12|[0x80002230]<br>0x00000080|- imm_val == 128<br>                                                             |[0x800000f2]:c.addi4spn a0, 128<br> [0x800000f4]:sw a0, 44(ra)<br>  |
|  13|[0x80002234]<br>0x00000004|- imm_val == 4<br>                                                               |[0x800000fc]:c.addi4spn a0, 4<br> [0x800000fe]:sw a0, 48(ra)<br>    |
|  14|[0x80002238]<br>0x000002A8|- imm_val == 680<br>                                                             |[0x80000106]:c.addi4spn a0, 680<br> [0x80000108]:sw a0, 52(ra)<br>  |
|  15|[0x8000223c]<br>0x00000154|- imm_val == 340<br>                                                             |[0x80000110]:c.addi4spn a0, 340<br> [0x80000112]:sw a0, 56(ra)<br>  |
|  16|[0x80002240]<br>0x00000040|- imm_val == 64<br>                                                              |[0x8000011a]:c.addi4spn a0, 64<br> [0x8000011c]:sw a0, 60(ra)<br>   |
|  17|[0x80002244]<br>0x00000020|- imm_val == 32<br>                                                              |[0x80000124]:c.addi4spn a0, 32<br> [0x80000126]:sw a0, 64(ra)<br>   |
|  18|[0x80002248]<br>0x00000010|- imm_val == 16<br>                                                              |[0x8000012e]:c.addi4spn a0, 16<br> [0x80000130]:sw a0, 68(ra)<br>   |
|  19|[0x8000224c]<br>0x00000008|- imm_val == 8<br>                                                               |[0x80000138]:c.addi4spn a0, 8<br> [0x8000013a]:sw a0, 72(ra)<br>    |
