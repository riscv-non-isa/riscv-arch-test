
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x800004a0')]      |
| SIG_REGION                | [('0x800020a0', '0x800022e0', '72 dwords')]      |
| COV_LABELS                | misalign-sd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-sd-01.S/misalign-sd-01.S    |
| Total Number of coverpoints| 8     |
| Total Coverpoints Hit     | 8      |
| Total Signature Updates   | 35      |
| STAT1                     | 7      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 28     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003bc]:sd a1, 2(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x800020d8]:0x000000000000010F




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003bc]:sd a1, 2(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x800020e0]:0x0000000000000006




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003bc]:sd a1, 2(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x800020e8]:0x00000000000003B0




Last Coverpoint : ['opcode : sd', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003bc]:sd a1, 2(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x800020f0]:0xFFFFFFFFFFFFFFC9




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003dc]:sd a1, 128(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x800020f8]:0x000000000000010F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003dc]:sd a1, 128(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x80002100]:0x0000000000000006




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003dc]:sd a1, 128(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x80002108]:0x00000000000003D0




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003dc]:sd a1, 128(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x80002110]:0xFFFFFFFFFFFFFFD2




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003fc]:sd a1, 3071(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x80002118]:0x000000000000010F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003fc]:sd a1, 3071(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x80002120]:0x0000000000000006




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003fc]:sd a1, 3071(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x80002128]:0x00000000000003F0




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003fc]:sd a1, 3071(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x80002130]:0xFFFFFFFFFFFFFFDB




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000434]:sd a1, 64(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x80002138]:0x000000000000010F




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000434]:sd a1, 64(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x80002140]:0x0000000000000006




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000434]:sd a1, 64(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x80002148]:0x0000000000000428




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x80000434]:sd a1, 64(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x80002150]:0xFFFFFFFFFFFFFFE4




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000450]:sd a1, 2048(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x80002158]:0x000000000000010F




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000450]:sd a1, 2048(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x80002160]:0x0000000000000006




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000450]:sd a1, 2048(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x80002168]:0x0000000000000444




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x80000450]:sd a1, 2048(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x80002170]:0xFFFFFFFFFFFFFFED




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x8000046c]:sd a1, 4094(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x80002178]:0x000000000000010F




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x8000046c]:sd a1, 4094(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x80002180]:0x0000000000000006




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x8000046c]:sd a1, 4094(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x80002188]:0x0000000000000460




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x8000046c]:sd a1, 4094(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x80002190]:0xFFFFFFFFFFFFFFF6




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000488]:sd a1, 16(a0)
Current Store : [0x80000740] : sd t2, 0(t1) -- Store: [0x80002198]:0x000000000000010F




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000488]:sd a1, 16(a0)
Current Store : [0x80000748] : sd t2, 8(t1) -- Store: [0x800021a0]:0x0000000000000006




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000488]:sd a1, 16(a0)
Current Store : [0x80000760] : sd t4, 16(t1) -- Store: [0x800021a8]:0x000000000000047C




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x80000488]:sd a1, 16(a0)
Current Store : [0x80000804] : sd t2, 24(t1) -- Store: [0x800021b0]:0xFFFFFFFFFFFFFFFF





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

|s.no|            signature             |             coverpoints              |              code               |
|---:|----------------------------------|--------------------------------------|---------------------------------|
|   1|[0x800020a1]<br>0xFFFFFFFBFFFFFFFF|- opcode : sd<br> - ea_align == 1<br> |[0x800003bc]:sd a1, 2(a0)<br>    |
|   2|[0x800020aa]<br>0x0000100000000000|- ea_align == 2<br>                   |[0x800003dc]:sd a1, 128(a0)<br>  |
|   3|[0x800020b3]<br>0x0000000080000000|- ea_align == 3<br>                   |[0x800003fc]:sd a1, 3071(a0)<br> |
|   4|[0x800020bc]<br>0x5555555555555555|- ea_align == 4<br>                   |[0x80000434]:sd a1, 64(a0)<br>   |
|   5|[0x800020c5]<br>0xFFFFFFFFFFFFFEFF|- ea_align == 5<br>                   |[0x80000450]:sd a1, 2048(a0)<br> |
|   6|[0x800020ce]<br>0xFFFFFFFFFFFFFFFD|- ea_align == 6<br>                   |[0x8000046c]:sd a1, 4094(a0)<br> |
|   7|[0x800020d7]<br>0x0000000000000004|- ea_align == 7<br>                   |[0x80000488]:sd a1, 16(a0)<br>   |
