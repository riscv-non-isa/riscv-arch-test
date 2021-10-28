
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000710')]      |
| SIG_REGION                | [('0x80002310', '0x80002520', '66 dwords')]      |
| COV_LABELS                | fcvt.wu.d_b1      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.wu.d_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
| Total Signature Updates   | 66      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000700]:fcvt.wu.d a1, fa0, dyn
      [0x80000704]:csrrs a7, fflags, zero
      [0x80000708]:sd a1, 208(a5)
 -- Signature Address: 0x80002510 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.wu.d
      - rd : x11
      - rs1 : f10
      - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.wu.d', 'rd : x21', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.wu.d s5, fs11, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd s5, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.wu.d t2, fs10, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:sd t2, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000001




Last Coverpoint : ['rd : x23', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.wu.d s7, fa2, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:sd s7, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000001




Last Coverpoint : ['rd : x15', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000040c]:fcvt.wu.d a5, ft10, dyn
	-[0x80000410]:csrrs s5, fflags, zero
	-[0x80000414]:sd a5, 0(s3)
Current Store : [0x80000418] : sd s5, 8(s3) -- Store: [0x80002348]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.wu.d s4, ft2, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd s4, 0(a5)
Current Store : [0x8000043c] : sd a7, 8(a5) -- Store: [0x80002358]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f13', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.wu.d s1, fa3, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:sd s1, 16(a5)
Current Store : [0x80000454] : sd a7, 24(a5) -- Store: [0x80002368]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.wu.d fp, fa4, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:sd fp, 32(a5)
Current Store : [0x8000046c] : sd a7, 40(a5) -- Store: [0x80002378]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.wu.d t4, fs2, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd t4, 48(a5)
Current Store : [0x80000484] : sd a7, 56(a5) -- Store: [0x80002388]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.wu.d t6, fs3, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd t6, 64(a5)
Current Store : [0x8000049c] : sd a7, 72(a5) -- Store: [0x80002398]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fcvt.wu.d a0, fs4, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:sd a0, 80(a5)
Current Store : [0x800004b4] : sd a7, 88(a5) -- Store: [0x800023a8]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fcvt.wu.d t5, fs8, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:sd t5, 96(a5)
Current Store : [0x800004cc] : sd a7, 104(a5) -- Store: [0x800023b8]:0x0000000000000011




Last Coverpoint : ['rd : x0', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fcvt.wu.d zero, fs6, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd zero, 112(a5)
Current Store : [0x800004e4] : sd a7, 120(a5) -- Store: [0x800023c8]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fcvt.wu.d s6, ft0, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd s6, 128(a5)
Current Store : [0x800004fc] : sd a7, 136(a5) -- Store: [0x800023d8]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000514]:fcvt.wu.d a7, ft7, dyn
	-[0x80000518]:csrrs s5, fflags, zero
	-[0x8000051c]:sd a7, 0(s3)
Current Store : [0x80000520] : sd s5, 8(s3) -- Store: [0x800023e8]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fcvt.wu.d tp, ft8, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:sd tp, 0(a5)
Current Store : [0x80000544] : sd a7, 8(a5) -- Store: [0x800023f8]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fcvt.wu.d gp, fa0, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd gp, 16(a5)
Current Store : [0x8000055c] : sd a7, 24(a5) -- Store: [0x80002408]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fcvt.wu.d t3, fs0, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd t3, 32(a5)
Current Store : [0x80000574] : sd a7, 40(a5) -- Store: [0x80002418]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fcvt.wu.d s11, fa1, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:sd s11, 48(a5)
Current Store : [0x8000058c] : sd a7, 56(a5) -- Store: [0x80002428]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a4]:fcvt.wu.d a6, ft11, dyn
	-[0x800005a8]:csrrs s5, fflags, zero
	-[0x800005ac]:sd a6, 0(s3)
Current Store : [0x800005b0] : sd s5, 8(s3) -- Store: [0x80002438]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fcvt.wu.d s2, ft1, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:sd s2, 0(a5)
Current Store : [0x800005d4] : sd a7, 8(a5) -- Store: [0x80002448]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fcvt.wu.d a3, ft6, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:sd a3, 16(a5)
Current Store : [0x800005ec] : sd a7, 24(a5) -- Store: [0x80002458]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f29', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fcvt.wu.d t0, ft9, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:sd t0, 32(a5)
Current Store : [0x80000604] : sd a7, 40(a5) -- Store: [0x80002468]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fcvt.wu.d s10, fa7, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:sd s10, 48(a5)
Current Store : [0x8000061c] : sd a7, 56(a5) -- Store: [0x80002478]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fcvt.wu.d a1, ft5, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd a1, 64(a5)
Current Store : [0x80000634] : sd a7, 72(a5) -- Store: [0x80002488]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f25']
Last Code Sequence : 
	-[0x80000640]:fcvt.wu.d s8, fs9, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:sd s8, 80(a5)
Current Store : [0x8000064c] : sd a7, 88(a5) -- Store: [0x80002498]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f3']
Last Code Sequence : 
	-[0x80000658]:fcvt.wu.d a2, ft3, dyn
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:sd a2, 96(a5)
Current Store : [0x80000664] : sd a7, 104(a5) -- Store: [0x800024a8]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f9']
Last Code Sequence : 
	-[0x80000670]:fcvt.wu.d s3, fs1, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:sd s3, 112(a5)
Current Store : [0x8000067c] : sd a7, 120(a5) -- Store: [0x800024b8]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000688]:fcvt.wu.d s9, fa6, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:sd s9, 128(a5)
Current Store : [0x80000694] : sd a7, 136(a5) -- Store: [0x800024c8]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f23']
Last Code Sequence : 
	-[0x800006a0]:fcvt.wu.d ra, fs7, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:sd ra, 144(a5)
Current Store : [0x800006ac] : sd a7, 152(a5) -- Store: [0x800024d8]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f15']
Last Code Sequence : 
	-[0x800006b8]:fcvt.wu.d sp, fa5, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd sp, 160(a5)
Current Store : [0x800006c4] : sd a7, 168(a5) -- Store: [0x800024e8]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f4']
Last Code Sequence : 
	-[0x800006d0]:fcvt.wu.d a4, ft4, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:sd a4, 176(a5)
Current Store : [0x800006dc] : sd a7, 184(a5) -- Store: [0x800024f8]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f21']
Last Code Sequence : 
	-[0x800006e8]:fcvt.wu.d t1, fs5, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:sd t1, 192(a5)
Current Store : [0x800006f4] : sd a7, 200(a5) -- Store: [0x80002508]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.wu.d', 'rd : x11', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fcvt.wu.d a1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:sd a1, 208(a5)
Current Store : [0x8000070c] : sd a7, 216(a5) -- Store: [0x80002518]:0x0000000000000011





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

|s.no|            signature             |                                                                coverpoints                                                                |                                                        code                                                        |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000000|- opcode : fcvt.wu.d<br> - rd : x21<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.wu.d s5, fs11, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd s5, 0(a5)<br>      |
|   2|[0x80002320]<br>0x0000000000000000|- rd : x7<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x800003d0]:fcvt.wu.d t2, fs10, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:sd t2, 16(a5)<br>     |
|   3|[0x80002330]<br>0x0000000000000001|- rd : x23<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x800003e8]:fcvt.wu.d s7, fa2, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:sd s7, 32(a5)<br>      |
|   4|[0x80002340]<br>0xFFFFFFFFFFFFFFFF|- rd : x15<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x8000040c]:fcvt.wu.d a5, ft10, dyn<br> [0x80000410]:csrrs s5, fflags, zero<br> [0x80000414]:sd a5, 0(s3)<br>      |
|   5|[0x80002350]<br>0xFFFFFFFFFFFFFFFF|- rd : x20<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                           |[0x80000430]:fcvt.wu.d s4, ft2, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd s4, 0(a5)<br>       |
|   6|[0x80002360]<br>0xFFFFFFFFFFFFFFFF|- rd : x9<br> - rs1 : f13<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                           |[0x80000448]:fcvt.wu.d s1, fa3, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:sd s1, 16(a5)<br>      |
|   7|[0x80002370]<br>0xFFFFFFFFFFFFFFFF|- rd : x8<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                           |[0x80000460]:fcvt.wu.d fp, fa4, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sd fp, 32(a5)<br>      |
|   8|[0x80002380]<br>0xFFFFFFFFFFFFFFFF|- rd : x29<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                          |[0x80000478]:fcvt.wu.d t4, fs2, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd t4, 48(a5)<br>      |
|   9|[0x80002390]<br>0xFFFFFFFFFFFFFFFF|- rd : x31<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                          |[0x80000490]:fcvt.wu.d t6, fs3, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd t6, 64(a5)<br>      |
|  10|[0x800023a0]<br>0x0000000000000000|- rd : x10<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x800004a8]:fcvt.wu.d a0, fs4, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:sd a0, 80(a5)<br>      |
|  11|[0x800023b0]<br>0xFFFFFFFFFFFFFFFF|- rd : x30<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x800004c0]:fcvt.wu.d t5, fs8, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:sd t5, 96(a5)<br>      |
|  12|[0x800023c0]<br>0x0000000000000000|- rd : x0<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                           |[0x800004d8]:fcvt.wu.d zero, fs6, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd zero, 112(a5)<br> |
|  13|[0x800023d0]<br>0xFFFFFFFFFFFFFFFF|- rd : x22<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                           |[0x800004f0]:fcvt.wu.d s6, ft0, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd s6, 128(a5)<br>     |
|  14|[0x800023e0]<br>0x0000000000000000|- rd : x17<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                           |[0x80000514]:fcvt.wu.d a7, ft7, dyn<br> [0x80000518]:csrrs s5, fflags, zero<br> [0x8000051c]:sd a7, 0(s3)<br>       |
|  15|[0x800023f0]<br>0x0000000000000000|- rd : x4<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                           |[0x80000538]:fcvt.wu.d tp, ft8, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:sd tp, 0(a5)<br>       |
|  16|[0x80002400]<br>0x0000000000000000|- rd : x3<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x80000550]:fcvt.wu.d gp, fa0, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd gp, 16(a5)<br>      |
|  17|[0x80002410]<br>0x0000000000000000|- rd : x28<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x80000568]:fcvt.wu.d t3, fs0, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd t3, 32(a5)<br>      |
|  18|[0x80002420]<br>0x0000000000000000|- rd : x27<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                          |[0x80000580]:fcvt.wu.d s11, fa1, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:sd s11, 48(a5)<br>    |
|  19|[0x80002430]<br>0x0000000000000000|- rd : x16<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                          |[0x800005a4]:fcvt.wu.d a6, ft11, dyn<br> [0x800005a8]:csrrs s5, fflags, zero<br> [0x800005ac]:sd a6, 0(s3)<br>      |
|  20|[0x80002440]<br>0x0000000000000000|- rd : x18<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                           |[0x800005c8]:fcvt.wu.d s2, ft1, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:sd s2, 0(a5)<br>       |
|  21|[0x80002450]<br>0x0000000000000000|- rd : x13<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                           |[0x800005e0]:fcvt.wu.d a3, ft6, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:sd a3, 16(a5)<br>      |
|  22|[0x80002460]<br>0x0000000000000000|- rd : x5<br> - rs1 : f29<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                           |[0x800005f8]:fcvt.wu.d t0, ft9, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:sd t0, 32(a5)<br>      |
|  23|[0x80002470]<br>0x0000000000000000|- rd : x26<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x80000610]:fcvt.wu.d s10, fa7, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:sd s10, 48(a5)<br>    |
|  24|[0x80002480]<br>0x0000000000000000|- rd : x11<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x80000628]:fcvt.wu.d a1, ft5, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd a1, 64(a5)<br>      |
|  25|[0x80002490]<br>0x0000000000000000|- rd : x24<br> - rs1 : f25<br>                                                                                                             |[0x80000640]:fcvt.wu.d s8, fs9, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:sd s8, 80(a5)<br>      |
|  26|[0x800024a0]<br>0x0000000000000000|- rd : x12<br> - rs1 : f3<br>                                                                                                              |[0x80000658]:fcvt.wu.d a2, ft3, dyn<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:sd a2, 96(a5)<br>      |
|  27|[0x800024b0]<br>0x0000000000000000|- rd : x19<br> - rs1 : f9<br>                                                                                                              |[0x80000670]:fcvt.wu.d s3, fs1, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:sd s3, 112(a5)<br>     |
|  28|[0x800024c0]<br>0x0000000000000000|- rd : x25<br> - rs1 : f16<br>                                                                                                             |[0x80000688]:fcvt.wu.d s9, fa6, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sd s9, 128(a5)<br>     |
|  29|[0x800024d0]<br>0x0000000000000000|- rd : x1<br> - rs1 : f23<br>                                                                                                              |[0x800006a0]:fcvt.wu.d ra, fs7, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:sd ra, 144(a5)<br>     |
|  30|[0x800024e0]<br>0x0000000000000000|- rd : x2<br> - rs1 : f15<br>                                                                                                              |[0x800006b8]:fcvt.wu.d sp, fa5, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd sp, 160(a5)<br>     |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x14<br> - rs1 : f4<br>                                                                                                              |[0x800006d0]:fcvt.wu.d a4, ft4, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:sd a4, 176(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000000|- rd : x6<br> - rs1 : f21<br>                                                                                                              |[0x800006e8]:fcvt.wu.d t1, fs5, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:sd t1, 192(a5)<br>     |
