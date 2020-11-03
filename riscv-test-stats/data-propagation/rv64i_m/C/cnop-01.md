
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800003f0')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '15 dwords')]      |
| COV_LABELS                | cnop      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cnop-01.S/cnop-01.S    |
| Total Number of coverpoints| 15     |
| Total Signature Updates   | 14      |
| Total Coverpoints Covered | 15      |
| STAT1                     | 14      |
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

|s.no|            signature             |              coverpoints               |                              code                               |
|---:|----------------------------------|----------------------------------------|-----------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : c.nop<br> - imm_val == 1<br> |[0x80000398]:c.nop.hint.1<br> [0x8000039a]:sd zero, 0(ra)<br>    |
|   2|[0x80003218]<br>0x0000000000000000|- imm_val == 2<br>                      |[0x8000039e]:c.nop.hint.2<br> [0x800003a0]:sd zero, 8(ra)<br>    |
|   3|[0x80003220]<br>0x0000000000000000|- imm_val == 4<br>                      |[0x800003a4]:c.nop.hint.4<br> [0x800003a6]:sd zero, 16(ra)<br>   |
|   4|[0x80003228]<br>0x0000000000000000|- imm_val == 8<br>                      |[0x800003aa]:c.nop.hint.8<br> [0x800003ac]:sd zero, 24(ra)<br>   |
|   5|[0x80003230]<br>0x0000000000000000|- imm_val == 16<br>                     |[0x800003b0]:c.nop.hint.16<br> [0x800003b2]:sd zero, 32(ra)<br>  |
|   6|[0x80003238]<br>0x0000000000000000|- imm_val == -32<br>                    |[0x800003b6]:c.nop.hint.32<br> [0x800003b8]:sd zero, 40(ra)<br>  |
|   7|[0x80003240]<br>0x0000000000000000|- imm_val == -2<br>                     |[0x800003bc]:c.nop.hint.62<br> [0x800003be]:sd zero, 48(ra)<br>  |
|   8|[0x80003248]<br>0x0000000000000000|- imm_val == -3<br>                     |[0x800003c2]:c.nop.hint.61<br> [0x800003c4]:sd zero, 56(ra)<br>  |
|   9|[0x80003250]<br>0x0000000000000000|- imm_val == -5<br>                     |[0x800003c8]:c.nop.hint.59<br> [0x800003ca]:sd zero, 64(ra)<br>  |
|  10|[0x80003258]<br>0x0000000000000000|- imm_val == -9<br>                     |[0x800003ce]:c.nop.hint.55<br> [0x800003d0]:sd zero, 72(ra)<br>  |
|  11|[0x80003260]<br>0x0000000000000000|- imm_val == -17<br>                    |[0x800003d4]:c.nop.hint.47<br> [0x800003d6]:sd zero, 80(ra)<br>  |
|  12|[0x80003268]<br>0x0000000000000000|- imm_val == 31<br>                     |[0x800003da]:c.nop.hint.31<br> [0x800003dc]:sd zero, 88(ra)<br>  |
|  13|[0x80003270]<br>0x0000000000000000|- imm_val == 21<br>                     |[0x800003e0]:c.nop.hint.21<br> [0x800003e2]:sd zero, 96(ra)<br>  |
|  14|[0x80003278]<br>0x0000000000000000|- imm_val == -22<br>                    |[0x800003e6]:c.nop.hint.42<br> [0x800003e8]:sd zero, 104(ra)<br> |
