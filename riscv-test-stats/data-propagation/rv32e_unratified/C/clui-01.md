
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000120')]      |
| SIG_REGION                | [('0x80002204', '0x80002240', '15 words')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 53     |
| Total Coverpoints Hit     | 34      |
| Total Signature Updates   | 15      |
| STAT1                     | 15      |
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

|s.no|        signature         |                                               coverpoints                                                |                             code                              |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0x00004000|- opcode : c.lui<br> - rd : x8<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 4<br> |[0x80000088]:c.lui fp, 4<br> [0x8000008a]:c.swsp fp, 0<br>     |
|   2|[0x80002208]<br>0x0001F000|- rd : x10<br> - imm_val == 31<br>                                                                        |[0x80000090]:c.lui a0, 31<br> [0x80000092]:c.swsp a0, 1<br>    |
|   3|[0x8000220c]<br>0xFFFEF000|- rd : x6<br> - imm_val == 47<br> - rs1_val > 0 and imm_val > 32<br>                                      |[0x80000098]:c.lui t1, 47<br> [0x8000009a]:c.swsp t1, 2<br>    |
|   4|[0x80002210]<br>0xFFFF7000|- rd : x9<br> - imm_val == 55<br> - rs1_val < 0 and imm_val > 32<br>                                      |[0x800000a0]:c.lui s1, 55<br> [0x800000a2]:c.swsp s1, 3<br>    |
|   5|[0x80002214]<br>0xFFFFB000|- rd : x15<br> - imm_val == 59<br>                                                                        |[0x800000a8]:c.lui a5, 59<br> [0x800000aa]:c.swsp a5, 4<br>    |
|   6|[0x80002218]<br>0xFFFFD000|- rd : x1<br> - imm_val == 61<br>                                                                         |[0x800000b4]:c.lui ra, 61<br> [0x800000b6]:c.swsp ra, 5<br>    |
|   7|[0x8000221c]<br>0x00000000|- rd : x0<br> - imm_val == 62<br>                                                                         |[0x800000c0]:c.lui.hint.62<br> [0x800000c2]:c.swsp zero, 6<br> |
|   8|[0x80002220]<br>0xFFFE0000|- rd : x7<br> - imm_val == 32<br>                                                                         |[0x800000c8]:c.lui t2, 32<br> [0x800000ca]:c.swsp t2, 7<br>    |
|   9|[0x80002224]<br>0x0000C000|- rd : x3<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                                         |[0x800000d0]:c.lui gp, 12<br> [0x800000d2]:c.swsp gp, 8<br>    |
|  10|[0x80002228]<br>0x00010000|- rd : x4<br> - imm_val == 16<br>                                                                         |[0x800000dc]:c.lui tp, 16<br> [0x800000de]:c.swsp tp, 9<br>    |
|  11|[0x8000222c]<br>0x00008000|- rd : x11<br> - imm_val == 8<br>                                                                         |[0x800000e8]:c.lui a1, 8<br> [0x800000ea]:c.swsp a1, 10<br>    |
|  12|[0x80002230]<br>0x00002000|- rd : x12<br> - imm_val == 2<br>                                                                         |[0x800000f0]:c.lui a2, 2<br> [0x800000f2]:c.swsp a2, 11<br>    |
|  13|[0x80002234]<br>0x00001000|- rd : x13<br> - imm_val == 1<br>                                                                         |[0x800000fc]:c.lui a3, 1<br> [0x800000fe]:c.swsp a3, 12<br>    |
|  14|[0x80002238]<br>0xFFFEA000|- rd : x14<br> - imm_val == 42<br>                                                                        |[0x8000010c]:c.lui a4, 42<br> [0x8000010e]:sw a4, 0(ra)<br>    |
|  15|[0x8000223c]<br>0x00015000|- rd : x5<br> - imm_val == 21<br>                                                                         |[0x8000011a]:c.lui t0, 21<br> [0x8000011c]:sw t0, 4(ra)<br>    |
