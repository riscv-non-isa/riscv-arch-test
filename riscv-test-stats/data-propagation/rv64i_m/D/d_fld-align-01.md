
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000870')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | fld-align      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fld-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 64      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 32     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fld', 'rs1 : x16', 'rd : f31', 'ea_align == 0 and (imm_val % 4) == 0', 'imm_val > 0']
Last Code Sequence : 
	-[0x800003b8]:fld ft11, 32(a6)
	-[0x800003bc]:addi zero, zero, 0
	-[0x800003c0]:addi zero, zero, 0
	-[0x800003c4]:csrrs s5, fflags, zero
	-[0x800003c8]:fsd ft11, 0(s3)
Current Store : [0x800003cc] : sd s5, 8(s3) -- Store: [0x80002218]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rd : f19', 'ea_align == 0 and (imm_val % 4) == 1']
Last Code Sequence : 
	-[0x800003e8]:fld fs3, 1365(s3)
	-[0x800003ec]:addi zero, zero, 0
	-[0x800003f0]:addi zero, zero, 0
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsd fs3, 0(a5)
Current Store : [0x800003fc] : sd a7, 8(a5) -- Store: [0x80002228]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rd : f15', 'ea_align == 0 and (imm_val % 4) == 2']
Last Code Sequence : 
	-[0x8000040c]:fld fa5, 6(fp)
	-[0x80000410]:addi zero, zero, 0
	-[0x80000414]:addi zero, zero, 0
	-[0x80000418]:csrrs a7, fflags, zero
	-[0x8000041c]:fsd fa5, 16(a5)
Current Store : [0x80000420] : sd a7, 24(a5) -- Store: [0x80002238]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rd : f17', 'ea_align == 0 and (imm_val % 4) == 3']
Last Code Sequence : 
	-[0x80000430]:fld fa7, 2047(s6)
	-[0x80000434]:addi zero, zero, 0
	-[0x80000438]:addi zero, zero, 0
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:fsd fa7, 32(a5)
Current Store : [0x80000444] : sd a7, 40(a5) -- Store: [0x80002248]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rd : f16', 'imm_val < 0']
Last Code Sequence : 
	-[0x80000454]:fld fa6, 3583(t1)
	-[0x80000458]:addi zero, zero, 0
	-[0x8000045c]:addi zero, zero, 0
	-[0x80000460]:csrrs a7, fflags, zero
	-[0x80000464]:fsd fa6, 48(a5)
Current Store : [0x80000468] : sd a7, 56(a5) -- Store: [0x80002258]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rd : f0', 'imm_val == 0']
Last Code Sequence : 
	-[0x80000478]:fld ft0, 0(s9)
	-[0x8000047c]:addi zero, zero, 0
	-[0x80000480]:addi zero, zero, 0
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd ft0, 64(a5)
Current Store : [0x8000048c] : sd a7, 72(a5) -- Store: [0x80002268]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rd : f27']
Last Code Sequence : 
	-[0x8000049c]:fld fs11, 2048(gp)
	-[0x800004a0]:addi zero, zero, 0
	-[0x800004a4]:addi zero, zero, 0
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsd fs11, 80(a5)
Current Store : [0x800004b0] : sd a7, 88(a5) -- Store: [0x80002278]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rd : f10']
Last Code Sequence : 
	-[0x800004cc]:fld fa0, 2048(a7)
	-[0x800004d0]:addi zero, zero, 0
	-[0x800004d4]:addi zero, zero, 0
	-[0x800004d8]:csrrs s5, fflags, zero
	-[0x800004dc]:fsd fa0, 0(s3)
Current Store : [0x800004e0] : sd s5, 8(s3) -- Store: [0x80002288]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rd : f21']
Last Code Sequence : 
	-[0x800004fc]:fld fs5, 2048(t2)
	-[0x80000500]:addi zero, zero, 0
	-[0x80000504]:addi zero, zero, 0
	-[0x80000508]:csrrs a7, fflags, zero
	-[0x8000050c]:fsd fs5, 0(a5)
Current Store : [0x80000510] : sd a7, 8(a5) -- Store: [0x80002298]:0x0000000000000000




Last Coverpoint : ['rs1 : x26', 'rd : f13']
Last Code Sequence : 
	-[0x80000520]:fld fa3, 2048(s10)
	-[0x80000524]:addi zero, zero, 0
	-[0x80000528]:addi zero, zero, 0
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fa3, 16(a5)
Current Store : [0x80000534] : sd a7, 24(a5) -- Store: [0x800022a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rd : f20']
Last Code Sequence : 
	-[0x80000544]:fld fs4, 2048(s5)
	-[0x80000548]:addi zero, zero, 0
	-[0x8000054c]:addi zero, zero, 0
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsd fs4, 32(a5)
Current Store : [0x80000558] : sd a7, 40(a5) -- Store: [0x800022b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x4', 'rd : f1']
Last Code Sequence : 
	-[0x80000568]:fld ft1, 2048(tp)
	-[0x8000056c]:addi zero, zero, 0
	-[0x80000570]:addi zero, zero, 0
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:fsd ft1, 48(a5)
Current Store : [0x8000057c] : sd a7, 56(a5) -- Store: [0x800022c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rd : f11']
Last Code Sequence : 
	-[0x80000598]:fld fa1, 2048(a5)
	-[0x8000059c]:addi zero, zero, 0
	-[0x800005a0]:addi zero, zero, 0
	-[0x800005a4]:csrrs s5, fflags, zero
	-[0x800005a8]:fsd fa1, 0(s3)
Current Store : [0x800005ac] : sd s5, 8(s3) -- Store: [0x800022d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rd : f5']
Last Code Sequence : 
	-[0x800005c8]:fld ft5, 2048(ra)
	-[0x800005cc]:addi zero, zero, 0
	-[0x800005d0]:addi zero, zero, 0
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd ft5, 0(a5)
Current Store : [0x800005dc] : sd a7, 8(a5) -- Store: [0x800022e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rd : f6']
Last Code Sequence : 
	-[0x800005ec]:fld ft6, 2048(s8)
	-[0x800005f0]:addi zero, zero, 0
	-[0x800005f4]:addi zero, zero, 0
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsd ft6, 16(a5)
Current Store : [0x80000600] : sd a7, 24(a5) -- Store: [0x800022f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rd : f25']
Last Code Sequence : 
	-[0x80000610]:fld fs9, 2048(t0)
	-[0x80000614]:addi zero, zero, 0
	-[0x80000618]:addi zero, zero, 0
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:fsd fs9, 32(a5)
Current Store : [0x80000624] : sd a7, 40(a5) -- Store: [0x80002308]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rd : f23']
Last Code Sequence : 
	-[0x80000634]:fld fs7, 2048(s2)
	-[0x80000638]:addi zero, zero, 0
	-[0x8000063c]:addi zero, zero, 0
	-[0x80000640]:csrrs a7, fflags, zero
	-[0x80000644]:fsd fs7, 48(a5)
Current Store : [0x80000648] : sd a7, 56(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rd : f28']
Last Code Sequence : 
	-[0x80000658]:fld ft8, 2048(t3)
	-[0x8000065c]:addi zero, zero, 0
	-[0x80000660]:addi zero, zero, 0
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd ft8, 64(a5)
Current Store : [0x8000066c] : sd a7, 72(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rd : f14']
Last Code Sequence : 
	-[0x8000067c]:fld fa4, 2048(s4)
	-[0x80000680]:addi zero, zero, 0
	-[0x80000684]:addi zero, zero, 0
	-[0x80000688]:csrrs a7, fflags, zero
	-[0x8000068c]:fsd fa4, 80(a5)
Current Store : [0x80000690] : sd a7, 88(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rd : f24']
Last Code Sequence : 
	-[0x800006a0]:fld fs8, 2048(a1)
	-[0x800006a4]:addi zero, zero, 0
	-[0x800006a8]:addi zero, zero, 0
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsd fs8, 96(a5)
Current Store : [0x800006b4] : sd a7, 104(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rd : f30']
Last Code Sequence : 
	-[0x800006c4]:fld ft10, 2048(s1)
	-[0x800006c8]:addi zero, zero, 0
	-[0x800006cc]:addi zero, zero, 0
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd ft10, 112(a5)
Current Store : [0x800006d8] : sd a7, 120(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rd : f3']
Last Code Sequence : 
	-[0x800006e8]:fld ft3, 2048(a4)
	-[0x800006ec]:addi zero, zero, 0
	-[0x800006f0]:addi zero, zero, 0
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsd ft3, 128(a5)
Current Store : [0x800006fc] : sd a7, 136(a5) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rd : f26']
Last Code Sequence : 
	-[0x8000070c]:fld fs10, 2048(t4)
	-[0x80000710]:addi zero, zero, 0
	-[0x80000714]:addi zero, zero, 0
	-[0x80000718]:csrrs a7, fflags, zero
	-[0x8000071c]:fsd fs10, 144(a5)
Current Store : [0x80000720] : sd a7, 152(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rd : f4']
Last Code Sequence : 
	-[0x80000730]:fld ft4, 2048(s11)
	-[0x80000734]:addi zero, zero, 0
	-[0x80000738]:addi zero, zero, 0
	-[0x8000073c]:csrrs a7, fflags, zero
	-[0x80000740]:fsd ft4, 160(a5)
Current Store : [0x80000744] : sd a7, 168(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rd : f8']
Last Code Sequence : 
	-[0x80000754]:fld fs0, 2048(s7)
	-[0x80000758]:addi zero, zero, 0
	-[0x8000075c]:addi zero, zero, 0
	-[0x80000760]:csrrs a7, fflags, zero
	-[0x80000764]:fsd fs0, 176(a5)
Current Store : [0x80000768] : sd a7, 184(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rd : f22']
Last Code Sequence : 
	-[0x80000778]:fld fs6, 2048(t5)
	-[0x8000077c]:addi zero, zero, 0
	-[0x80000780]:addi zero, zero, 0
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd fs6, 192(a5)
Current Store : [0x8000078c] : sd a7, 200(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rd : f18']
Last Code Sequence : 
	-[0x8000079c]:fld fs2, 2048(sp)
	-[0x800007a0]:addi zero, zero, 0
	-[0x800007a4]:addi zero, zero, 0
	-[0x800007a8]:csrrs a7, fflags, zero
	-[0x800007ac]:fsd fs2, 208(a5)
Current Store : [0x800007b0] : sd a7, 216(a5) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x13', 'rd : f9']
Last Code Sequence : 
	-[0x800007c0]:fld fs1, 2048(a3)
	-[0x800007c4]:addi zero, zero, 0
	-[0x800007c8]:addi zero, zero, 0
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fs1, 224(a5)
Current Store : [0x800007d4] : sd a7, 232(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rd : f7']
Last Code Sequence : 
	-[0x800007e4]:fld ft7, 2048(a2)
	-[0x800007e8]:addi zero, zero, 0
	-[0x800007ec]:addi zero, zero, 0
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsd ft7, 240(a5)
Current Store : [0x800007f8] : sd a7, 248(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rd : f29']
Last Code Sequence : 
	-[0x80000808]:fld ft9, 2048(t6)
	-[0x8000080c]:addi zero, zero, 0
	-[0x80000810]:addi zero, zero, 0
	-[0x80000814]:csrrs a7, fflags, zero
	-[0x80000818]:fsd ft9, 256(a5)
Current Store : [0x8000081c] : sd a7, 264(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rd : f12']
Last Code Sequence : 
	-[0x8000082c]:fld fa2, 2048(a0)
	-[0x80000830]:addi zero, zero, 0
	-[0x80000834]:addi zero, zero, 0
	-[0x80000838]:csrrs a7, fflags, zero
	-[0x8000083c]:fsd fa2, 272(a5)
Current Store : [0x80000840] : sd a7, 280(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rd : f2']
Last Code Sequence : 
	-[0x80000850]:fld ft2, 2048(s7)
	-[0x80000854]:addi zero, zero, 0
	-[0x80000858]:addi zero, zero, 0
	-[0x8000085c]:csrrs a7, fflags, zero
	-[0x80000860]:fsd ft2, 288(a5)
Current Store : [0x80000864] : sd a7, 296(a5) -- Store: [0x80002408]:0x0000000000000000





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

|s.no|            signature             |                                                  coverpoints                                                  |                                                                                         code                                                                                          |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFBB6FAB7FBB6FAB7|- opcode : fld<br> - rs1 : x16<br> - rd : f31<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x800003b8]:fld ft11, 32(a6)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:csrrs s5, fflags, zero<br> [0x800003c8]:fsd ft11, 0(s3)<br>     |
|   2|[0x80002220]<br>0x0000000080001AAB|- rs1 : x19<br> - rd : f19<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                      |[0x800003e8]:fld fs3, 1365(s3)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsd fs3, 0(a5)<br>     |
|   3|[0x80002230]<br>0x0000000080002220|- rs1 : x8<br> - rd : f15<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                       |[0x8000040c]:fld fa5, 6(fp)<br> [0x80000410]:addi zero, zero, 0<br> [0x80000414]:addi zero, zero, 0<br> [0x80000418]:csrrs a7, fflags, zero<br> [0x8000041c]:fsd fa5, 16(a5)<br>       |
|   4|[0x80002240]<br>0x0000000000000000|- rs1 : x22<br> - rd : f17<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x80000430]:fld fa7, 2047(s6)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsd fa7, 32(a5)<br>    |
|   5|[0x80002250]<br>0x0000000080003FF0|- rs1 : x6<br> - rd : f16<br> - imm_val < 0<br>                                                                |[0x80000454]:fld fa6, 3583(t1)<br> [0x80000458]:addi zero, zero, 0<br> [0x8000045c]:addi zero, zero, 0<br> [0x80000460]:csrrs a7, fflags, zero<br> [0x80000464]:fsd fa6, 48(a5)<br>    |
|   6|[0x80002260]<br>0x0000000000000000|- rs1 : x25<br> - rd : f0<br> - imm_val == 0<br>                                                               |[0x80000478]:fld ft0, 0(s9)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd ft0, 64(a5)<br>       |
|   7|[0x80002270]<br>0xBB6FAB7FBB6FAB7F|- rs1 : x3<br> - rd : f27<br>                                                                                  |[0x8000049c]:fld fs11, 2048(gp)<br> [0x800004a0]:addi zero, zero, 0<br> [0x800004a4]:addi zero, zero, 0<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsd fs11, 80(a5)<br>  |
|   8|[0x80002280]<br>0x56FF76DF56FF76DF|- rs1 : x17<br> - rd : f10<br>                                                                                 |[0x800004cc]:fld fa0, 2048(a7)<br> [0x800004d0]:addi zero, zero, 0<br> [0x800004d4]:addi zero, zero, 0<br> [0x800004d8]:csrrs s5, fflags, zero<br> [0x800004dc]:fsd fa0, 0(s3)<br>     |
|   9|[0x80002290]<br>0x0000000000000000|- rs1 : x7<br> - rd : f21<br>                                                                                  |[0x800004fc]:fld fs5, 2048(t2)<br> [0x80000500]:addi zero, zero, 0<br> [0x80000504]:addi zero, zero, 0<br> [0x80000508]:csrrs a7, fflags, zero<br> [0x8000050c]:fsd fs5, 0(a5)<br>     |
|  10|[0x800022a0]<br>0xEADFEEDBEADFEEDB|- rs1 : x26<br> - rd : f13<br>                                                                                 |[0x80000520]:fld fa3, 2048(s10)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fa3, 16(a5)<br>   |
|  11|[0x800022b0]<br>0x0000000080005FD0|- rs1 : x21<br> - rd : f20<br>                                                                                 |[0x80000544]:fld fs4, 2048(s5)<br> [0x80000548]:addi zero, zero, 0<br> [0x8000054c]:addi zero, zero, 0<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsd fs4, 32(a5)<br>    |
|  12|[0x800022c0]<br>0xFEEDBEADFEEDBEAD|- rs1 : x4<br> - rd : f1<br>                                                                                   |[0x80000568]:fld ft1, 2048(tp)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:fsd ft1, 48(a5)<br>    |
|  13|[0x800022d0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : x15<br> - rd : f11<br>                                                                                 |[0x80000598]:fld fa1, 2048(a5)<br> [0x8000059c]:addi zero, zero, 0<br> [0x800005a0]:addi zero, zero, 0<br> [0x800005a4]:csrrs s5, fflags, zero<br> [0x800005a8]:fsd fa1, 0(s3)<br>     |
|  14|[0x800022e0]<br>0x0000000080000390|- rs1 : x1<br> - rd : f5<br>                                                                                   |[0x800005c8]:fld ft5, 2048(ra)<br> [0x800005cc]:addi zero, zero, 0<br> [0x800005d0]:addi zero, zero, 0<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd ft5, 0(a5)<br>     |
|  15|[0x800022f0]<br>0x0000000080002201|- rs1 : x24<br> - rd : f6<br>                                                                                  |[0x800005ec]:fld ft6, 2048(s8)<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:addi zero, zero, 0<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsd ft6, 16(a5)<br>    |
|  16|[0x80002300]<br>0x0000000080002000|- rs1 : x5<br> - rd : f25<br>                                                                                  |[0x80000610]:fld fs9, 2048(t0)<br> [0x80000614]:addi zero, zero, 0<br> [0x80000618]:addi zero, zero, 0<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:fsd fs9, 32(a5)<br>    |
|  17|[0x80002310]<br>0xB6FAB7FBB6FAB7FB|- rs1 : x18<br> - rd : f23<br>                                                                                 |[0x80000634]:fld fs7, 2048(s2)<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:addi zero, zero, 0<br> [0x80000640]:csrrs a7, fflags, zero<br> [0x80000644]:fsd fs7, 48(a5)<br>    |
|  18|[0x80002320]<br>0x0000000080002800|- rs1 : x28<br> - rd : f28<br>                                                                                 |[0x80000658]:fld ft8, 2048(t3)<br> [0x8000065c]:addi zero, zero, 0<br> [0x80000660]:addi zero, zero, 0<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd ft8, 64(a5)<br>    |
|  19|[0x80002330]<br>0xF56FF76DF56FF76D|- rs1 : x20<br> - rd : f14<br>                                                                                 |[0x8000067c]:fld fa4, 2048(s4)<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:addi zero, zero, 0<br> [0x80000688]:csrrs a7, fflags, zero<br> [0x8000068c]:fsd fa4, 80(a5)<br>    |
|  20|[0x80002340]<br>0x0000000080002800|- rs1 : x11<br> - rd : f24<br>                                                                                 |[0x800006a0]:fld fs8, 2048(a1)<br> [0x800006a4]:addi zero, zero, 0<br> [0x800006a8]:addi zero, zero, 0<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsd fs8, 96(a5)<br>    |
|  21|[0x80002350]<br>0xF76DF56FF76DF56F|- rs1 : x9<br> - rd : f30<br>                                                                                  |[0x800006c4]:fld ft10, 2048(s1)<br> [0x800006c8]:addi zero, zero, 0<br> [0x800006cc]:addi zero, zero, 0<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd ft10, 112(a5)<br> |
|  22|[0x80002360]<br>0x0000000080002800|- rs1 : x14<br> - rd : f3<br>                                                                                  |[0x800006e8]:fld ft3, 2048(a4)<br> [0x800006ec]:addi zero, zero, 0<br> [0x800006f0]:addi zero, zero, 0<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsd ft3, 128(a5)<br>   |
|  23|[0x80002370]<br>0x0000000080002800|- rs1 : x29<br> - rd : f26<br>                                                                                 |[0x8000070c]:fld fs10, 2048(t4)<br> [0x80000710]:addi zero, zero, 0<br> [0x80000714]:addi zero, zero, 0<br> [0x80000718]:csrrs a7, fflags, zero<br> [0x8000071c]:fsd fs10, 144(a5)<br> |
|  24|[0x80002380]<br>0x0000000080002800|- rs1 : x27<br> - rd : f4<br>                                                                                  |[0x80000730]:fld ft4, 2048(s11)<br> [0x80000734]:addi zero, zero, 0<br> [0x80000738]:addi zero, zero, 0<br> [0x8000073c]:csrrs a7, fflags, zero<br> [0x80000740]:fsd ft4, 160(a5)<br>  |
|  25|[0x80002390]<br>0x0000000080001FFA|- rs1 : x23<br> - rd : f8<br>                                                                                  |[0x80000754]:fld fs0, 2048(s7)<br> [0x80000758]:addi zero, zero, 0<br> [0x8000075c]:addi zero, zero, 0<br> [0x80000760]:csrrs a7, fflags, zero<br> [0x80000764]:fsd fs0, 176(a5)<br>   |
|  26|[0x800023a0]<br>0x0000000080001801|- rs1 : x30<br> - rd : f22<br>                                                                                 |[0x80000778]:fld fs6, 2048(t5)<br> [0x8000077c]:addi zero, zero, 0<br> [0x80000780]:addi zero, zero, 0<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd fs6, 192(a5)<br>   |
|  27|[0x800023b0]<br>0x0000000080002800|- rs1 : x2<br> - rd : f18<br>                                                                                  |[0x8000079c]:fld fs2, 2048(sp)<br> [0x800007a0]:addi zero, zero, 0<br> [0x800007a4]:addi zero, zero, 0<br> [0x800007a8]:csrrs a7, fflags, zero<br> [0x800007ac]:fsd fs2, 208(a5)<br>   |
|  28|[0x800023c0]<br>0x0000000080002800|- rs1 : x13<br> - rd : f9<br>                                                                                  |[0x800007c0]:fld fs1, 2048(a3)<br> [0x800007c4]:addi zero, zero, 0<br> [0x800007c8]:addi zero, zero, 0<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fs1, 224(a5)<br>   |
|  29|[0x800023d0]<br>0x0000000080002800|- rs1 : x12<br> - rd : f7<br>                                                                                  |[0x800007e4]:fld ft7, 2048(a2)<br> [0x800007e8]:addi zero, zero, 0<br> [0x800007ec]:addi zero, zero, 0<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsd ft7, 240(a5)<br>   |
|  30|[0x800023e0]<br>0x0000000080002800|- rs1 : x31<br> - rd : f29<br>                                                                                 |[0x80000808]:fld ft9, 2048(t6)<br> [0x8000080c]:addi zero, zero, 0<br> [0x80000810]:addi zero, zero, 0<br> [0x80000814]:csrrs a7, fflags, zero<br> [0x80000818]:fsd ft9, 256(a5)<br>   |
|  31|[0x800023f0]<br>0x0000000080002800|- rs1 : x10<br> - rd : f12<br>                                                                                 |[0x8000082c]:fld fa2, 2048(a0)<br> [0x80000830]:addi zero, zero, 0<br> [0x80000834]:addi zero, zero, 0<br> [0x80000838]:csrrs a7, fflags, zero<br> [0x8000083c]:fsd fa2, 272(a5)<br>   |
|  32|[0x80002400]<br>0x0000000080002800|- rd : f2<br>                                                                                                  |[0x80000850]:fld ft2, 2048(s7)<br> [0x80000854]:addi zero, zero, 0<br> [0x80000858]:addi zero, zero, 0<br> [0x8000085c]:csrrs a7, fflags, zero<br> [0x80000860]:fsd ft2, 288(a5)<br>   |
