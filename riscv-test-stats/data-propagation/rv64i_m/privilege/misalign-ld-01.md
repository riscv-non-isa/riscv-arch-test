
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x8000039c', '0x80000450')]      |
| SIG_REGION                | [('0x800020a0', '0x800022e0', '72 dwords')]      |
| COV_LABELS                | misalign-ld      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/misalign-ld-01.S/misalign-ld-01.S    |
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
Last Coverpoint : ['opcode : ld', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:ld a1, 128(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x800020e0]:0x0000000000000004




Last Coverpoint : ['opcode : ld', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:ld a1, 128(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x800020e8]:0x00000000000003A0




Last Coverpoint : ['opcode : ld', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:ld a1, 128(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x800020f0]:0xFFFFFFFFFFFFFFB9




Last Coverpoint : ['opcode : ld', 'ea_align == 1']
Last Code Sequence : 
	-[0x800003ac]:ld a1, 128(a0)
Current Store : [0x800003b8] : sd a1, 0(ra) -- Store: [0x800020a0]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:ld a1, 3072(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x80002100]:0x0000000000000004




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:ld a1, 3072(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x80002108]:0x00000000000003B8




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:ld a1, 3072(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x80002110]:0xFFFFFFFFFFFFFFBA




Last Coverpoint : ['ea_align == 2']
Last Code Sequence : 
	-[0x800003c4]:ld a1, 3072(a0)
Current Store : [0x800003d0] : sd a1, 8(ra) -- Store: [0x800020a8]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:ld a1, 1024(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x80002120]:0x0000000000000004




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:ld a1, 1024(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x80002128]:0x00000000000003D0




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:ld a1, 1024(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x80002130]:0xFFFFFFFFFFFFFFBB




Last Coverpoint : ['ea_align == 3']
Last Code Sequence : 
	-[0x800003dc]:ld a1, 1024(a0)
Current Store : [0x800003e8] : sd a1, 16(ra) -- Store: [0x800020b0]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x800003f4]:ld a1, 512(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x80002140]:0x0000000000000004




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x800003f4]:ld a1, 512(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x80002148]:0x00000000000003E8




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x800003f4]:ld a1, 512(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x80002150]:0xFFFFFFFFFFFFFFBC




Last Coverpoint : ['ea_align == 4']
Last Code Sequence : 
	-[0x800003f4]:ld a1, 512(a0)
Current Store : [0x80000400] : sd a1, 24(ra) -- Store: [0x800020b8]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x8000040c]:ld a1, 512(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x80002160]:0x0000000000000004




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x8000040c]:ld a1, 512(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x80002168]:0x0000000000000400




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x8000040c]:ld a1, 512(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x80002170]:0xFFFFFFFFFFFFFFBD




Last Coverpoint : ['ea_align == 5']
Last Code Sequence : 
	-[0x8000040c]:ld a1, 512(a0)
Current Store : [0x80000418] : sd a1, 32(ra) -- Store: [0x800020c0]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000424]:ld a1, 9(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x80002180]:0x0000000000000004




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000424]:ld a1, 9(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x80002188]:0x0000000000000418




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000424]:ld a1, 9(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x80002190]:0xFFFFFFFFFFFFFFBE




Last Coverpoint : ['ea_align == 6']
Last Code Sequence : 
	-[0x80000424]:ld a1, 9(a0)
Current Store : [0x80000430] : sd a1, 40(ra) -- Store: [0x800020c8]:0xAB7FBB6FAB7FBB6F




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000043c]:ld a1, 64(a0)
Current Store : [0x800006f8] : sd t2, 8(t1) -- Store: [0x800021a0]:0x0000000000000004




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000043c]:ld a1, 64(a0)
Current Store : [0x80000710] : sd t4, 16(t1) -- Store: [0x800021a8]:0x0000000000000430




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000043c]:ld a1, 64(a0)
Current Store : [0x800007b4] : sd t2, 24(t1) -- Store: [0x800021b0]:0xFFFFFFFFFFFFFFBF




Last Coverpoint : ['ea_align == 7']
Last Code Sequence : 
	-[0x8000043c]:ld a1, 64(a0)
Current Store : [0x80000448] : sd a1, 48(ra) -- Store: [0x800020d0]:0xAB7FBB6FAB7FBB6F





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
|   1|[0x800020d8]<br>0x000000000000010F|- opcode : ld<br> - ea_align == 1<br> |[0x800003ac]:ld a1, 128(a0)<br>  |
|   2|[0x800020f8]<br>0x000000000000010F|- ea_align == 2<br>                   |[0x800003c4]:ld a1, 3072(a0)<br> |
|   3|[0x80002118]<br>0x000000000000010F|- ea_align == 3<br>                   |[0x800003dc]:ld a1, 1024(a0)<br> |
|   4|[0x80002138]<br>0x000000000000010F|- ea_align == 4<br>                   |[0x800003f4]:ld a1, 512(a0)<br>  |
|   5|[0x80002158]<br>0x000000000000010F|- ea_align == 5<br>                   |[0x8000040c]:ld a1, 512(a0)<br>  |
|   6|[0x80002178]<br>0x000000000000010F|- ea_align == 6<br>                   |[0x80000424]:ld a1, 9(a0)<br>    |
|   7|[0x80002198]<br>0x000000000000010F|- ea_align == 7<br>                   |[0x8000043c]:ld a1, 64(a0)<br>   |
