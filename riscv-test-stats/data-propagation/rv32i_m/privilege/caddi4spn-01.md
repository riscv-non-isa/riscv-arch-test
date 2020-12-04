
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800001c2')]      |
| SIG_REGION                | [('0x80002204', '0x80002250', '19 words')]      |
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

|s.no|        signature         |                                  coverpoints                                  |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000100|- opcode : c.addi4spn<br> - rd : x8<br> - imm_val > 0<br> - imm_val == 256<br> |[0x80000104]:c.addi4spn s0, 256<br> [0x80000106]:sw fp, 0(ra)<br>   |
|   2|[0x80002208]<br>0x000003FC|- rd : x14<br> - imm_val == 1020<br>                                           |[0x8000010e]:c.addi4spn a4, 1020<br> [0x80000110]:sw a4, 4(ra)<br>  |
|   3|[0x8000220c]<br>0x00000004|- rd : x9<br> - imm_val == 4<br>                                               |[0x80000118]:c.addi4spn s1, 4<br> [0x8000011a]:sw s1, 8(ra)<br>     |
|   4|[0x80002210]<br>0x00000008|- rd : x15<br> - imm_val == 8<br>                                              |[0x80000122]:c.addi4spn a5, 8<br> [0x80000124]:sw a5, 12(ra)<br>    |
|   5|[0x80002214]<br>0x00000010|- rd : x11<br> - imm_val == 16<br>                                             |[0x8000012c]:c.addi4spn a1, 16<br> [0x8000012e]:sw a1, 16(ra)<br>   |
|   6|[0x80002218]<br>0x00000020|- rd : x10<br> - imm_val == 32<br>                                             |[0x80000136]:c.addi4spn a0, 32<br> [0x80000138]:sw a0, 20(ra)<br>   |
|   7|[0x8000221c]<br>0x00000040|- rd : x13<br> - imm_val == 64<br>                                             |[0x80000140]:c.addi4spn a3, 64<br> [0x80000142]:sw a3, 24(ra)<br>   |
|   8|[0x80002220]<br>0x00000080|- rd : x12<br> - imm_val == 128<br>                                            |[0x8000014a]:c.addi4spn a2, 128<br> [0x8000014c]:sw a2, 28(ra)<br>  |
|   9|[0x80002224]<br>0x00000200|- imm_val == 512<br>                                                           |[0x80000154]:c.addi4spn a0, 512<br> [0x80000156]:sw a0, 32(ra)<br>  |
|  10|[0x80002228]<br>0x000003F8|- imm_val == 1016<br>                                                          |[0x8000015e]:c.addi4spn a0, 1016<br> [0x80000160]:sw a0, 36(ra)<br> |
|  11|[0x8000222c]<br>0x000003F4|- imm_val == 1012<br>                                                          |[0x80000168]:c.addi4spn a0, 1012<br> [0x8000016a]:sw a0, 40(ra)<br> |
|  12|[0x80002230]<br>0x000003EC|- imm_val == 1004<br>                                                          |[0x80000172]:c.addi4spn a0, 1004<br> [0x80000174]:sw a0, 44(ra)<br> |
|  13|[0x80002234]<br>0x000002FC|- imm_val == 764<br>                                                           |[0x8000017c]:c.addi4spn a0, 764<br> [0x8000017e]:sw a0, 48(ra)<br>  |
|  14|[0x80002238]<br>0x000001FC|- imm_val == 508<br>                                                           |[0x80000186]:c.addi4spn a0, 508<br> [0x80000188]:sw a0, 52(ra)<br>  |
|  15|[0x8000223c]<br>0x00000154|- imm_val == 340<br>                                                           |[0x80000190]:c.addi4spn a0, 340<br> [0x80000192]:sw a0, 56(ra)<br>  |
|  16|[0x80002240]<br>0x000002A8|- imm_val == 680<br>                                                           |[0x8000019a]:c.addi4spn a0, 680<br> [0x8000019c]:sw a0, 60(ra)<br>  |
|  17|[0x80002244]<br>0x000003DC|- imm_val == 988<br>                                                           |[0x800001a4]:c.addi4spn a0, 988<br> [0x800001a6]:sw a0, 64(ra)<br>  |
|  18|[0x80002248]<br>0x000003BC|- imm_val == 956<br>                                                           |[0x800001ae]:c.addi4spn a0, 956<br> [0x800001b0]:sw a0, 68(ra)<br>  |
|  19|[0x8000224c]<br>0x0000037C|- imm_val == 892<br>                                                           |[0x800001b8]:c.addi4spn a0, 892<br> [0x800001ba]:sw a0, 72(ra)<br>  |
