
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800000e0')]      |
| SIG_REGION                | [('0x80002204', '0x8000223c', '14 words')]      |
| COV_LABELS                | cnop      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cnop-01.S/cnop-01.S    |
| Total Number of coverpoints| 17     |
| Total Coverpoints Hit     | 15      |
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

|s.no|        signature         |               coverpoints               |                              code                              |
|---:|--------------------------|-----------------------------------------|----------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : c.nop<br> - imm_val == 21<br> |[0x80000080]:c.nop.hint.21<br> [0x80000082]:sw zero, 0(ra)<br>  |
|   2|[0x80002208]<br>0x00000000|- imm_val == 31<br>                      |[0x80000086]:c.nop.hint.31<br> [0x80000088]:sw zero, 4(ra)<br>  |
|   3|[0x8000220c]<br>0x00000000|- imm_val == -17<br>                     |[0x8000008c]:c.nop.hint.47<br> [0x8000008e]:sw zero, 8(ra)<br>  |
|   4|[0x80002210]<br>0x00000000|- imm_val == -9<br>                      |[0x80000092]:c.nop.hint.55<br> [0x80000094]:sw zero, 12(ra)<br> |
|   5|[0x80002214]<br>0x00000000|- imm_val == -5<br>                      |[0x80000098]:c.nop.hint.59<br> [0x8000009a]:sw zero, 16(ra)<br> |
|   6|[0x80002218]<br>0x00000000|- imm_val == -3<br>                      |[0x8000009e]:c.nop.hint.61<br> [0x800000a0]:sw zero, 20(ra)<br> |
|   7|[0x8000221c]<br>0x00000000|- imm_val == -2<br>                      |[0x800000a4]:c.nop.hint.62<br> [0x800000a6]:sw zero, 24(ra)<br> |
|   8|[0x80002220]<br>0x00000000|- imm_val == -32<br>                     |[0x800000aa]:c.nop.hint.32<br> [0x800000ac]:sw zero, 28(ra)<br> |
|   9|[0x80002224]<br>0x00000000|- imm_val == 16<br>                      |[0x800000b0]:c.nop.hint.16<br> [0x800000b2]:sw zero, 32(ra)<br> |
|  10|[0x80002228]<br>0x00000000|- imm_val == 8<br>                       |[0x800000b6]:c.nop.hint.8<br> [0x800000b8]:sw zero, 36(ra)<br>  |
|  11|[0x8000222c]<br>0x00000000|- imm_val == 4<br>                       |[0x800000bc]:c.nop.hint.4<br> [0x800000be]:sw zero, 40(ra)<br>  |
|  12|[0x80002230]<br>0x00000000|- imm_val == 2<br>                       |[0x800000c2]:c.nop.hint.2<br> [0x800000c4]:sw zero, 44(ra)<br>  |
|  13|[0x80002234]<br>0x00000000|- imm_val == 1<br>                       |[0x800000c8]:c.nop.hint.1<br> [0x800000ca]:sw zero, 48(ra)<br>  |
|  14|[0x80002238]<br>0x00000000|- imm_val == -22<br>                     |[0x800000ce]:c.nop.hint.42<br> [0x800000d0]:sw zero, 52(ra)<br> |
