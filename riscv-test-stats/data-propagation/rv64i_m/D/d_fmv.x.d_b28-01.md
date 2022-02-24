
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000700')]      |
| SIG_REGION                | [('0x80002310', '0x80002510', '64 dwords')]      |
| COV_LABELS                | fmv.x.d_b28      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmv.x.d_b28-01.S/ref.S    |
| Total Number of coverpoints| 97     |
| Total Coverpoints Hit     | 93      |
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
Last Coverpoint : ['opcode : fmv.x.d', 'rd : x24', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fmv.x.d s8, fa2
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd s8, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003dc]:fmv.x.d a7, ft11
	-[0x800003e0]:csrrs s5, fflags, zero
	-[0x800003e4]:sd a7, 0(s3)
Current Store : [0x800003e8] : sd s5, 8(s3) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f13', 'fs1 == 1 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmv.x.d a1, fa3
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:sd a1, 0(a5)
Current Store : [0x8000040c] : sd a7, 8(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x43d and fm1 == 0x967a4ae26514c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fmv.x.d tp, fs9
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:sd tp, 16(a5)
Current Store : [0x80000424] : sd a7, 24(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x4000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fmv.x.d s3, ft4
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd s3, 32(a5)
Current Store : [0x8000043c] : sd a7, 40(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000454]:fmv.x.d a6, fs6
	-[0x80000458]:csrrs s5, fflags, zero
	-[0x8000045c]:sd a6, 0(s3)
Current Store : [0x80000460] : sd s5, 8(s3) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0xc000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fmv.x.d t6, ft5
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd t6, 0(a5)
Current Store : [0x80000484] : sd a7, 8(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fmv.x.d a4, fa1
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd a4, 16(a5)
Current Store : [0x8000049c] : sd a7, 24(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x400 and fm1 == 0x2000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fmv.x.d s2, ft3
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:sd s2, 32(a5)
Current Store : [0x800004b4] : sd a7, 40(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x400 and fm1 == 0x4000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmv.x.d s6, fs11
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:sd s6, 48(a5)
Current Store : [0x800004cc] : sd a7, 56(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x400 and fm1 == 0x6000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fmv.x.d s10, ft8
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd s10, 64(a5)
Current Store : [0x800004e4] : sd a7, 72(a5) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fmv.x.d a3, fa7
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd a3, 80(a5)
Current Store : [0x800004fc] : sd a7, 88(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f23', 'fs1 == 1 and fe1 == 0x3fd and fm1 == 0xb008d57e19f88 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fmv.x.d a2, fs7
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:sd a2, 96(a5)
Current Store : [0x80000514] : sd a7, 104(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fmv.x.d t1, ft10
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:sd t1, 112(a5)
Current Store : [0x8000052c] : sd a7, 120(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fmv.x.d ra, ft0
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:sd ra, 128(a5)
Current Store : [0x80000544] : sd a7, 136(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fmv.x.d a0, ft7
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd a0, 144(a5)
Current Store : [0x8000055c] : sd a7, 152(a5) -- Store: [0x80002408]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmv.x.d t0, fs3
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd t0, 160(a5)
Current Store : [0x80000574] : sd a7, 168(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fmv.x.d s1, fa6
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:sd s1, 176(a5)
Current Store : [0x8000058c] : sd a7, 184(a5) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x43c and fm1 == 0xb72eb13dc494a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fmv.x.d t3, fs8
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:sd t3, 192(a5)
Current Store : [0x800005a4] : sd a7, 200(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x400 and fm1 == 0x6000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fmv.x.d s7, ft1
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:sd s7, 208(a5)
Current Store : [0x800005bc] : sd a7, 216(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x400 and fm1 == 0x4000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fmv.x.d fp, fa5
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:sd fp, 224(a5)
Current Store : [0x800005d4] : sd a7, 232(a5) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x400 and fm1 == 0x2000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fmv.x.d s9, fs5
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:sd s9, 240(a5)
Current Store : [0x800005ec] : sd a7, 248(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000604]:fmv.x.d a5, fa0
	-[0x80000608]:csrrs s5, fflags, zero
	-[0x8000060c]:sd a5, 0(s3)
Current Store : [0x80000610] : sd s5, 8(s3) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0xc000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fmv.x.d s5, fs0
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd s5, 0(a5)
Current Store : [0x80000634] : sd a7, 8(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fmv.x.d s4, fs10
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:sd s4, 16(a5)
Current Store : [0x8000064c] : sd a7, 24(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x4000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000658]:fmv.x.d t4, fs4
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:sd t4, 32(a5)
Current Store : [0x80000664] : sd a7, 40(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000670]:fmv.x.d t5, fs2
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:sd t5, 48(a5)
Current Store : [0x8000067c] : sd a7, 56(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x3fe and fm1 == 0x248ee18215dfa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fmv.x.d t2, fs1
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:sd t2, 64(a5)
Current Store : [0x80000694] : sd a7, 72(a5) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f2']
Last Code Sequence : 
	-[0x800006a0]:fmv.x.d gp, ft2
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:sd gp, 80(a5)
Current Store : [0x800006ac] : sd a7, 88(a5) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f29']
Last Code Sequence : 
	-[0x800006b8]:fmv.x.d zero, ft9
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd zero, 96(a5)
Current Store : [0x800006c4] : sd a7, 104(a5) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f6']
Last Code Sequence : 
	-[0x800006d0]:fmv.x.d sp, ft6
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:sd sp, 112(a5)
Current Store : [0x800006dc] : sd a7, 120(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f14']
Last Code Sequence : 
	-[0x800006e8]:fmv.x.d s11, fa4
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:sd s11, 128(a5)
Current Store : [0x800006f4] : sd a7, 136(a5) -- Store: [0x80002508]:0x0000000000000000





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

|s.no|            signature             |                                                               coverpoints                                                               |                                                    code                                                    |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000000|- opcode : fmv.x.d<br> - rd : x24<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x800003b8]:fmv.x.d s8, fa2<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd s8, 0(a5)<br>      |
|   2|[0x80002320]<br>0xFFF0000000000000|- rd : x17<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x800003dc]:fmv.x.d a7, ft11<br> [0x800003e0]:csrrs s5, fflags, zero<br> [0x800003e4]:sd a7, 0(s3)<br>     |
|   3|[0x80002330]<br>0xC3E0000000000000|- rd : x11<br> - rs1 : f13<br> - fs1 == 1 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x80000400]:fmv.x.d a1, fa3<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:sd a1, 0(a5)<br>      |
|   4|[0x80002340]<br>0xC3D967A4AE26514C|- rd : x4<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x43d and fm1 == 0x967a4ae26514c and rm_val == 0  #nosat<br>                         |[0x80000418]:fmv.x.d tp, fs9<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:sd tp, 16(a5)<br>     |
|   5|[0x80002350]<br>0xBFF4000000000000|- rd : x19<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x4000000000000 and rm_val == 0  #nosat<br>                         |[0x80000430]:fmv.x.d s3, ft4<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd s3, 32(a5)<br>     |
|   6|[0x80002360]<br>0xBFF8000000000000|- rd : x16<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                        |[0x80000454]:fmv.x.d a6, fs6<br> [0x80000458]:csrrs s5, fflags, zero<br> [0x8000045c]:sd a6, 0(s3)<br>      |
|   7|[0x80002370]<br>0xBFFC000000000000|- rd : x31<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0xc000000000000 and rm_val == 0  #nosat<br>                         |[0x80000478]:fmv.x.d t6, ft5<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd t6, 0(a5)<br>      |
|   8|[0x80002380]<br>0xC000000000000000|- rd : x14<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x80000490]:fmv.x.d a4, fa1<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd a4, 16(a5)<br>     |
|   9|[0x80002390]<br>0xC002000000000000|- rd : x18<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x400 and fm1 == 0x2000000000000 and rm_val == 0  #nosat<br>                         |[0x800004a8]:fmv.x.d s2, ft3<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:sd s2, 32(a5)<br>     |
|  10|[0x800023a0]<br>0xC004000000000000|- rd : x22<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x400 and fm1 == 0x4000000000000 and rm_val == 0  #nosat<br>                        |[0x800004c0]:fmv.x.d s6, fs11<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:sd s6, 48(a5)<br>    |
|  11|[0x800023b0]<br>0xC006000000000000|- rd : x26<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x400 and fm1 == 0x6000000000000 and rm_val == 0  #nosat<br>                        |[0x800004d8]:fmv.x.d s10, ft8<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd s10, 64(a5)<br>   |
|  12|[0x800023c0]<br>0xBF80000000000000|- rd : x13<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x800004f0]:fmv.x.d a3, fa7<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd a3, 80(a5)<br>     |
|  13|[0x800023d0]<br>0xBFDB008D57E19F88|- rd : x12<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0x3fd and fm1 == 0xb008d57e19f88 and rm_val == 0  #nosat<br>                        |[0x80000508]:fmv.x.d a2, fs7<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:sd a2, 96(a5)<br>     |
|  14|[0x800023e0]<br>0x8000000000000000|- rd : x6<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000520]:fmv.x.d t1, ft10<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:sd t1, 112(a5)<br>   |
|  15|[0x800023f0]<br>0x7FF8000000000001|- rd : x1<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                          |[0x80000538]:fmv.x.d ra, ft0<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:sd ra, 128(a5)<br>    |
|  16|[0x80002400]<br>0x7FF0000000000001|- rd : x10<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                         |[0x80000550]:fmv.x.d a0, ft7<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd a0, 144(a5)<br>    |
|  17|[0x80002410]<br>0x7FF0000000000000|- rd : x5<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000568]:fmv.x.d t0, fs3<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd t0, 160(a5)<br>    |
|  18|[0x80002420]<br>0x43E0000000000000|- rd : x9<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000580]:fmv.x.d s1, fa6<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:sd s1, 176(a5)<br>    |
|  19|[0x80002430]<br>0x43CB72EB13DC494A|- rd : x28<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x43c and fm1 == 0xb72eb13dc494a and rm_val == 0  #nosat<br>                        |[0x80000598]:fmv.x.d t3, fs8<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:sd t3, 192(a5)<br>    |
|  20|[0x80002440]<br>0x4006000000000000|- rd : x23<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x400 and fm1 == 0x6000000000000 and rm_val == 0  #nosat<br>                         |[0x800005b0]:fmv.x.d s7, ft1<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:sd s7, 208(a5)<br>    |
|  21|[0x80002450]<br>0x4004000000000000|- rd : x8<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x400 and fm1 == 0x4000000000000 and rm_val == 0  #nosat<br>                         |[0x800005c8]:fmv.x.d fp, fa5<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:sd fp, 224(a5)<br>    |
|  22|[0x80002460]<br>0x4002000000000000|- rd : x25<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x400 and fm1 == 0x2000000000000 and rm_val == 0  #nosat<br>                        |[0x800005e0]:fmv.x.d s9, fs5<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:sd s9, 240(a5)<br>    |
|  23|[0x80002470]<br>0x4000000000000000|- rd : x15<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x80000604]:fmv.x.d a5, fa0<br> [0x80000608]:csrrs s5, fflags, zero<br> [0x8000060c]:sd a5, 0(s3)<br>      |
|  24|[0x80002480]<br>0x3FFC000000000000|- rd : x21<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0xc000000000000 and rm_val == 0  #nosat<br>                         |[0x80000628]:fmv.x.d s5, fs0<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd s5, 0(a5)<br>      |
|  25|[0x80002490]<br>0x3FF8000000000000|- rd : x20<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                        |[0x80000640]:fmv.x.d s4, fs10<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:sd s4, 16(a5)<br>    |
|  26|[0x800024a0]<br>0x3FF4000000000000|- rd : x29<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x4000000000000 and rm_val == 0  #nosat<br>                        |[0x80000658]:fmv.x.d t4, fs4<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:sd t4, 32(a5)<br>     |
|  27|[0x800024b0]<br>0x3FF0000000000000|- rd : x30<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                        |[0x80000670]:fmv.x.d t5, fs2<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:sd t5, 48(a5)<br>     |
|  28|[0x800024c0]<br>0x3FE248EE18215DFA|- rd : x7<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x3fe and fm1 == 0x248ee18215dfa and rm_val == 0  #nosat<br>                          |[0x80000688]:fmv.x.d t2, fs1<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sd t2, 64(a5)<br>     |
|  29|[0x800024d0]<br>0x0000000000000000|- rd : x3<br> - rs1 : f2<br>                                                                                                             |[0x800006a0]:fmv.x.d gp, ft2<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:sd gp, 80(a5)<br>     |
|  30|[0x800024e0]<br>0x0000000000000000|- rd : x0<br> - rs1 : f29<br>                                                                                                            |[0x800006b8]:fmv.x.d zero, ft9<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd zero, 96(a5)<br> |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x2<br> - rs1 : f6<br>                                                                                                             |[0x800006d0]:fmv.x.d sp, ft6<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:sd sp, 112(a5)<br>    |
|  32|[0x80002500]<br>0x0000000000000000|- rd : x27<br> - rs1 : f14<br>                                                                                                           |[0x800006e8]:fmv.x.d s11, fa4<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:sd s11, 128(a5)<br>  |
