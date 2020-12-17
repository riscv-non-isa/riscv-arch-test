
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x800003c0')]      |
| SIG_REGION                | [('0x80002090', '0x800020b0', '4 dwords')]      |
| COV_LABELS                | ebreak      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ebreak.S/ebreak.S    |
| Total Number of coverpoints| 1     |
| Total Coverpoints Hit     | 1      |
| Total Signature Updates   | 6      |
| STAT1                     | 1      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 5     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ebreak']
Last Code Sequence : 
	-[0x800003ac]:ebreak
Current Store : [0x80000668] : sd t2, 8(t1) -- Store: [0x800020a0]:0x0000000000000003




Last Coverpoint : ['opcode : ebreak']
Last Code Sequence : 
	-[0x800003ac]:ebreak
Current Store : [0x80000680] : sd t4, 16(t1) -- Store: [0x800020a8]:0x00000000000003A0




Last Coverpoint : ['opcode : ebreak']
Last Code Sequence : 
	-[0x800003ac]:ebreak
Current Store : [0x80000724] : sd t2, 24(t1) -- Store: [0x800020b0]:0x00000000000003A0




Last Coverpoint : ['opcode : ebreak']
Last Code Sequence : 
	-[0x800003ac]:ebreak
Current Store : [0x800003b8] : sw zero, 0(ra) -- Store: [0x80002090]:0x0000000000000000




Last Coverpoint : ['opcode : ebreak']
Last Code Sequence : 
	-[0x800003ac]:ebreak
Current Store : [0x800003bc] : sw sp, 4(ra) -- Store: [0x80002094]:0x0000000011111111





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

|s.no|            signature             |     coverpoints      |          code          |
|---:|----------------------------------|----------------------|------------------------|
|   1|[0x80002098]<br>0x000000000000010F|- opcode : ebreak<br> |[0x800003ac]:ebreak<br> |
