
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000170')]      |
| SIG_REGION                | [('0x80002204', '0x80002238', '13 words')]      |
| COV_LABELS                | clw      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/clw-01.S/clw-01.S    |
| Total Number of coverpoints| 38     |
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

|s.no|        signature         |                                     coverpoints                                     |                                                     code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xBABECAFE|- opcode : c.lw<br> - rs1 : x8<br> - rd : x8<br> - rs1 == rd<br> - imm_val == 0<br>  |[0x80000088]:c.lw s0, s0, 0<br> [0x8000008a]:c.nop<br> [0x8000008c]:c.nop<br> [0x8000008e]:sw fp, 0(ra)<br>    |
|   2|[0x80002208]<br>0xBABECAFE|- rs1 : x12<br> - rd : x14<br> - rs1 != rd<br> - imm_val == 60<br> - imm_val > 0<br> |[0x8000009a]:c.lw a4, a2, 60<br> [0x8000009c]:c.nop<br> [0x8000009e]:c.nop<br> [0x800000a0]:sw a4, 4(ra)<br>   |
|   3|[0x8000220c]<br>0xBABECAFE|- rs1 : x11<br> - rd : x15<br> - imm_val == 92<br>                                   |[0x800000ac]:c.lw a5, a1, 92<br> [0x800000ae]:c.nop<br> [0x800000b0]:c.nop<br> [0x800000b2]:sw a5, 8(ra)<br>   |
|   4|[0x80002210]<br>0xBABECAFE|- rs1 : x15<br> - rd : x10<br> - imm_val == 108<br>                                  |[0x800000be]:c.lw a0, a5, 108<br> [0x800000c0]:c.nop<br> [0x800000c2]:c.nop<br> [0x800000c4]:sw a0, 12(ra)<br> |
|   5|[0x80002214]<br>0xBABECAFE|- rs1 : x14<br> - rd : x13<br> - imm_val == 116<br>                                  |[0x800000d0]:c.lw a3, a4, 116<br> [0x800000d2]:c.nop<br> [0x800000d4]:c.nop<br> [0x800000d6]:sw a3, 16(ra)<br> |
|   6|[0x80002218]<br>0xBABECAFE|- rs1 : x13<br> - rd : x11<br> - imm_val == 120<br>                                  |[0x800000e2]:c.lw a1, a3, 120<br> [0x800000e4]:c.nop<br> [0x800000e6]:c.nop<br> [0x800000e8]:sw a1, 20(ra)<br> |
|   7|[0x8000221c]<br>0xBABECAFE|- rs1 : x10<br> - rd : x12<br> - imm_val == 64<br>                                   |[0x800000f4]:c.lw a2, a0, 64<br> [0x800000f6]:c.nop<br> [0x800000f8]:c.nop<br> [0x800000fa]:sw a2, 24(ra)<br>  |
|   8|[0x80002220]<br>0xBABECAFE|- rd : x9<br> - imm_val == 32<br>                                                    |[0x80000106]:c.lw s1, a0, 32<br> [0x80000108]:c.nop<br> [0x8000010a]:c.nop<br> [0x8000010c]:sw s1, 28(ra)<br>  |
|   9|[0x80002224]<br>0xBABECAFE|- rs1 : x9<br> - imm_val == 16<br>                                                   |[0x80000118]:c.lw s0, s1, 16<br> [0x8000011a]:c.nop<br> [0x8000011c]:c.nop<br> [0x8000011e]:sw fp, 32(ra)<br>  |
|  10|[0x80002228]<br>0xBABECAFE|- imm_val == 8<br>                                                                   |[0x8000012a]:c.lw a0, a1, 8<br> [0x8000012c]:c.nop<br> [0x8000012e]:c.nop<br> [0x80000130]:sw a0, 36(ra)<br>   |
|  11|[0x8000222c]<br>0xBABECAFE|- imm_val == 4<br>                                                                   |[0x8000013c]:c.lw a0, a1, 4<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw a0, 40(ra)<br>   |
|  12|[0x80002230]<br>0xBABECAFE|- imm_val == 40<br>                                                                  |[0x8000014e]:c.lw a0, a1, 40<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:sw a0, 44(ra)<br>  |
|  13|[0x80002234]<br>0xBABECAFE|- imm_val == 84<br>                                                                  |[0x80000160]:c.lw a0, a1, 84<br> [0x80000162]:c.nop<br> [0x80000164]:c.nop<br> [0x80000166]:sw a0, 48(ra)<br>  |
