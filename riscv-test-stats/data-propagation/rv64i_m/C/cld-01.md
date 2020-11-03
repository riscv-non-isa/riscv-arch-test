
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800004a0')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '15 dwords')]      |
| COV_LABELS                | cld      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cld-01.S/cld-01.S    |
| Total Number of coverpoints| 33     |
| Total Signature Updates   | 14      |
| Total Coverpoints Covered | 33      |
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

|s.no|            signature             |                                     coverpoints                                     |                                                     code                                                      |
|---:|----------------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000BABECAFE|- opcode : c.ld<br> - rs1 : x11<br> - rd : x11<br> - rs1 == rd<br> - imm_val > 0<br> |[0x800003a0]:c.ld a1, a1, 56<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd a1, 0(ra)<br>   |
|   2|[0x80003218]<br>0x00000000BABECAFE|- rs1 : x13<br> - rd : x8<br> - rs1 != rd<br> - imm_val == 0<br>                     |[0x800003b2]:c.ld s0, a3, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd fp, 8(ra)<br>    |
|   3|[0x80003220]<br>0x00000000BABECAFE|- rs1 : x15<br> - rd : x13<br> - imm_val == 8<br>                                    |[0x800003c4]:c.ld a3, a5, 8<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd a3, 16(ra)<br>   |
|   4|[0x80003228]<br>0x00000000BABECAFE|- rs1 : x9<br> - rd : x15<br> - imm_val == 16<br>                                    |[0x800003d6]:c.ld a5, s1, 16<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd a5, 24(ra)<br>  |
|   5|[0x80003230]<br>0x00000000BABECAFE|- rs1 : x8<br> - rd : x10<br> - imm_val == 32<br>                                    |[0x800003e8]:c.ld a0, s0, 32<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd a0, 32(ra)<br>  |
|   6|[0x80003238]<br>0x00000000BABECAFE|- rs1 : x14<br> - rd : x9<br> - imm_val == 64<br>                                    |[0x800003fa]:c.ld s1, a4, 64<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd s1, 40(ra)<br>  |
|   7|[0x80003240]<br>0x00000000BABECAFE|- rs1 : x12<br> - rd : x14<br> - imm_val == 128<br>                                  |[0x8000040c]:c.ld a4, a2, 128<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd a4, 48(ra)<br> |
|   8|[0x80003248]<br>0x00000000BABECAFE|- rs1 : x10<br> - rd : x12<br> - imm_val == 240<br>                                  |[0x8000041e]:c.ld a2, a0, 240<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd a2, 56(ra)<br> |
|   9|[0x80003250]<br>0x00000000BABECAFE|- imm_val == 232<br>                                                                 |[0x80000430]:c.ld a0, a1, 232<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd a0, 64(ra)<br> |
|  10|[0x80003258]<br>0x00000000BABECAFE|- imm_val == 216<br>                                                                 |[0x80000442]:c.ld a0, a1, 216<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd a0, 72(ra)<br> |
|  11|[0x80003260]<br>0x00000000BABECAFE|- imm_val == 184<br>                                                                 |[0x80000454]:c.ld a0, a1, 184<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd a0, 80(ra)<br> |
|  12|[0x80003268]<br>0x00000000BABECAFE|- imm_val == 120<br>                                                                 |[0x80000466]:c.ld a0, a1, 120<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd a0, 88(ra)<br> |
|  13|[0x80003270]<br>0x00000000BABECAFE|- imm_val == 168<br>                                                                 |[0x80000478]:c.ld a0, a1, 168<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd a0, 96(ra)<br> |
|  14|[0x80003278]<br>0x00000000BABECAFE|- imm_val == 80<br>                                                                  |[0x8000048a]:c.ld a0, a1, 80<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd a0, 104(ra)<br> |
