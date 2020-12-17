
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000490')]      |
| SIG_REGION                | [('0x80002010', '0x80002080', '14 dwords')]      |
| COV_LABELS                | clw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clw-01.S/clw-01.S    |
| Total Number of coverpoints| 33     |
| Total Coverpoints Hit     | 33      |
| Total Signature Updates   | 13      |
| STAT1                     | 13      |
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

|s.no|            signature             |                                               coverpoints                                                |                                                     code                                                      |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFBABECAFE|- opcode : c.lw<br> - rs1 : x14<br> - rd : x12<br> - rs1 != rd<br> - imm_val > 0<br> - imm_val == 108<br> |[0x800003a0]:c.lw a2, a4, 108<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd a2, 0(ra)<br>  |
|   2|[0x80002018]<br>0xFFFFFFFFBABECAFE|- rs1 : x10<br> - rd : x10<br> - rs1 == rd<br> - imm_val == 0<br>                                         |[0x800003b2]:c.lw a0, a0, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd a0, 8(ra)<br>    |
|   3|[0x80002020]<br>0xFFFFFFFFBABECAFE|- rs1 : x9<br> - rd : x13<br> - imm_val == 4<br>                                                          |[0x800003c4]:c.lw a3, s1, 4<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd a3, 16(ra)<br>   |
|   4|[0x80002028]<br>0xFFFFFFFFBABECAFE|- rs1 : x11<br> - rd : x8<br> - imm_val == 8<br>                                                          |[0x800003d6]:c.lw s0, a1, 8<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd fp, 24(ra)<br>   |
|   5|[0x80002030]<br>0xFFFFFFFFBABECAFE|- rs1 : x8<br> - rd : x9<br> - imm_val == 16<br>                                                          |[0x800003e8]:c.lw s1, s0, 16<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd s1, 32(ra)<br>  |
|   6|[0x80002038]<br>0xFFFFFFFFBABECAFE|- rs1 : x13<br> - rd : x14<br> - imm_val == 32<br>                                                        |[0x800003fa]:c.lw a4, a3, 32<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd a4, 40(ra)<br>  |
|   7|[0x80002040]<br>0xFFFFFFFFBABECAFE|- rs1 : x15<br> - rd : x11<br> - imm_val == 64<br>                                                        |[0x8000040c]:c.lw a1, a5, 64<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd a1, 48(ra)<br>  |
|   8|[0x80002048]<br>0xFFFFFFFFBABECAFE|- rs1 : x12<br> - rd : x15<br> - imm_val == 120<br>                                                       |[0x8000041e]:c.lw a5, a2, 120<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd a5, 56(ra)<br> |
|   9|[0x80002050]<br>0xFFFFFFFFBABECAFE|- imm_val == 116<br>                                                                                      |[0x80000430]:c.lw a0, a1, 116<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd a0, 64(ra)<br> |
|  10|[0x80002058]<br>0xFFFFFFFFBABECAFE|- imm_val == 92<br>                                                                                       |[0x80000442]:c.lw a0, a1, 92<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd a0, 72(ra)<br>  |
|  11|[0x80002060]<br>0xFFFFFFFFBABECAFE|- imm_val == 60<br>                                                                                       |[0x80000454]:c.lw a0, a1, 60<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd a0, 80(ra)<br>  |
|  12|[0x80002068]<br>0xFFFFFFFFBABECAFE|- imm_val == 84<br>                                                                                       |[0x80000466]:c.lw a0, a1, 84<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd a0, 88(ra)<br>  |
|  13|[0x80002070]<br>0xFFFFFFFFBABECAFE|- imm_val == 40<br>                                                                                       |[0x80000478]:c.lw a0, a1, 40<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd a0, 96(ra)<br>  |
