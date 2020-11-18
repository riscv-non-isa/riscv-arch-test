
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000200')]      |
| SIG_REGION                | [('0x80003204', '0x8000323c', '14 words')]      |
| COV_LABELS                | clw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clw-01.S/clw-01.S    |
| Total Number of coverpoints| 33     |
| Total Coverpoints Hit     | 33      |
| Total Signature Updates   | 14      |
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

|s.no|        signature         |                                     coverpoints                                     |                                                     code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xBABECAFE|- opcode : c.lw<br> - rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - imm_val > 0<br> |[0x80000108]:c.lw a5, a5, 12<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw a5, 0(ra)<br>   |
|   2|[0x80003208]<br>0xBABECAFE|- rs1 : x9<br> - rd : x12<br> - rs1 != rd<br> - imm_val == 0<br>                     |[0x8000011a]:c.lw a2, s1, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:sw a2, 4(ra)<br>    |
|   3|[0x8000320c]<br>0xBABECAFE|- rs1 : x8<br> - rd : x9<br> - imm_val == 4<br>                                      |[0x8000012c]:c.lw s1, s0, 4<br> [0x8000012e]:c.nop<br> [0x80000130]:c.nop<br> [0x80000132]:sw s1, 8(ra)<br>    |
|   4|[0x80003210]<br>0xBABECAFE|- rs1 : x11<br> - rd : x13<br> - imm_val == 8<br>                                    |[0x8000013e]:c.lw a3, a1, 8<br> [0x80000140]:c.nop<br> [0x80000142]:c.nop<br> [0x80000144]:sw a3, 12(ra)<br>   |
|   5|[0x80003214]<br>0xBABECAFE|- rs1 : x10<br> - rd : x8<br> - imm_val == 16<br>                                    |[0x80000150]:c.lw s0, a0, 16<br> [0x80000152]:c.nop<br> [0x80000154]:c.nop<br> [0x80000156]:sw fp, 16(ra)<br>  |
|   6|[0x80003218]<br>0xBABECAFE|- rs1 : x14<br> - rd : x11<br> - imm_val == 32<br>                                   |[0x80000162]:c.lw a1, a4, 32<br> [0x80000164]:c.nop<br> [0x80000166]:c.nop<br> [0x80000168]:sw a1, 20(ra)<br>  |
|   7|[0x8000321c]<br>0xBABECAFE|- rs1 : x13<br> - rd : x10<br> - imm_val == 64<br>                                   |[0x80000174]:c.lw a0, a3, 64<br> [0x80000176]:c.nop<br> [0x80000178]:c.nop<br> [0x8000017a]:sw a0, 24(ra)<br>  |
|   8|[0x80003220]<br>0xBABECAFE|- rs1 : x12<br> - rd : x14<br> - imm_val == 120<br>                                  |[0x80000186]:c.lw a4, a2, 120<br> [0x80000188]:c.nop<br> [0x8000018a]:c.nop<br> [0x8000018c]:sw a4, 28(ra)<br> |
|   9|[0x80003224]<br>0xBABECAFE|- imm_val == 116<br>                                                                 |[0x80000198]:c.lw a0, a1, 116<br> [0x8000019a]:c.nop<br> [0x8000019c]:c.nop<br> [0x8000019e]:sw a0, 32(ra)<br> |
|  10|[0x80003228]<br>0xBABECAFE|- imm_val == 108<br>                                                                 |[0x800001aa]:c.lw a0, a1, 108<br> [0x800001ac]:c.nop<br> [0x800001ae]:c.nop<br> [0x800001b0]:sw a0, 36(ra)<br> |
|  11|[0x8000322c]<br>0xBABECAFE|- imm_val == 92<br>                                                                  |[0x800001bc]:c.lw a0, a1, 92<br> [0x800001be]:c.nop<br> [0x800001c0]:c.nop<br> [0x800001c2]:sw a0, 40(ra)<br>  |
|  12|[0x80003230]<br>0xBABECAFE|- imm_val == 60<br>                                                                  |[0x800001ce]:c.lw a0, a1, 60<br> [0x800001d0]:c.nop<br> [0x800001d2]:c.nop<br> [0x800001d4]:sw a0, 44(ra)<br>  |
|  13|[0x80003234]<br>0xBABECAFE|- imm_val == 84<br>                                                                  |[0x800001e0]:c.lw a0, a1, 84<br> [0x800001e2]:c.nop<br> [0x800001e4]:c.nop<br> [0x800001e6]:sw a0, 48(ra)<br>  |
|  14|[0x80003238]<br>0xBABECAFE|- imm_val == 40<br>                                                                  |[0x800001f2]:c.lw a0, a1, 40<br> [0x800001f4]:c.nop<br> [0x800001f6]:c.nop<br> [0x800001f8]:sw a0, 52(ra)<br>  |