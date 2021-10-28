
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
| COV_LABELS                | fcvt.l.d_b1      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.l.d_b1-01.S/ref.S    |
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
      [0x80000700]:fcvt.l.d a1, fa0, dyn
      [0x80000704]:csrrs a7, fflags, zero
      [0x80000708]:sd a1, 80(a5)
 -- Signature Address: 0x80002510 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.d
      - rd : x11
      - rs1 : f10
      - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.l.d', 'rd : x23', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.l.d s7, fa4, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd s7, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.l.d a0, ft4, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:sd a0, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000001




Last Coverpoint : ['rd : x0', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.l.d zero, ft0, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:sd zero, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000001




Last Coverpoint : ['rd : x2', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.l.d sp, fa1, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:sd sp, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.l.d t6, ft6, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:sd t6, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.l.d t5, fs9, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd t5, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.l.d s2, fa0, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:sd s2, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.l.d t2, fs3, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:sd t2, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.l.d t4, ft9, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd t4, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f13', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.l.d s10, fa3, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd s10, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b4]:fcvt.l.d a5, ft5, dyn
	-[0x800004b8]:csrrs s5, fflags, zero
	-[0x800004bc]:sd a5, 0(s3)
Current Store : [0x800004c0] : sd s5, 8(s3) -- Store: [0x800023b8]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fcvt.l.d s11, ft7, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd s11, 0(a5)
Current Store : [0x800004e4] : sd a7, 8(a5) -- Store: [0x800023c8]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fcvt.l.d a4, ft10, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd a4, 16(a5)
Current Store : [0x800004fc] : sd a7, 24(a5) -- Store: [0x800023d8]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f12', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fcvt.l.d s6, fa2, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:sd s6, 32(a5)
Current Store : [0x80000514] : sd a7, 40(a5) -- Store: [0x800023e8]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000052c]:fcvt.l.d a6, fs2, dyn
	-[0x80000530]:csrrs s5, fflags, zero
	-[0x80000534]:sd a6, 0(s3)
Current Store : [0x80000538] : sd s5, 8(s3) -- Store: [0x800023f8]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f21', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fcvt.l.d s9, fs5, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd s9, 0(a5)
Current Store : [0x8000055c] : sd a7, 8(a5) -- Store: [0x80002408]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fcvt.l.d fp, fs10, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd fp, 16(a5)
Current Store : [0x80000574] : sd a7, 24(a5) -- Store: [0x80002418]:0x0000000000000011




Last Coverpoint : ['rd : x21', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fcvt.l.d s5, fs4, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:sd s5, 32(a5)
Current Store : [0x8000058c] : sd a7, 40(a5) -- Store: [0x80002428]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fcvt.l.d ra, fs0, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:sd ra, 48(a5)
Current Store : [0x800005a4] : sd a7, 56(a5) -- Store: [0x80002438]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fcvt.l.d t1, ft8, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:sd t1, 64(a5)
Current Store : [0x800005bc] : sd a7, 72(a5) -- Store: [0x80002448]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fcvt.l.d s3, ft1, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:sd s3, 80(a5)
Current Store : [0x800005d4] : sd a7, 88(a5) -- Store: [0x80002458]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fcvt.l.d s8, fs1, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:sd s8, 96(a5)
Current Store : [0x800005ec] : sd a7, 104(a5) -- Store: [0x80002468]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fcvt.l.d t0, fs11, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:sd t0, 112(a5)
Current Store : [0x80000604] : sd a7, 120(a5) -- Store: [0x80002478]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f15', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fcvt.l.d t3, fa5, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:sd t3, 128(a5)
Current Store : [0x8000061c] : sd a7, 136(a5) -- Store: [0x80002488]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f24']
Last Code Sequence : 
	-[0x80000628]:fcvt.l.d tp, fs8, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd tp, 144(a5)
Current Store : [0x80000634] : sd a7, 152(a5) -- Store: [0x80002498]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000640]:fcvt.l.d s4, ft11, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:sd s4, 160(a5)
Current Store : [0x8000064c] : sd a7, 168(a5) -- Store: [0x800024a8]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000664]:fcvt.l.d a7, fs6, dyn
	-[0x80000668]:csrrs s5, fflags, zero
	-[0x8000066c]:sd a7, 0(s3)
Current Store : [0x80000670] : sd s5, 8(s3) -- Store: [0x800024b8]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f2']
Last Code Sequence : 
	-[0x80000688]:fcvt.l.d a2, ft2, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:sd a2, 0(a5)
Current Store : [0x80000694] : sd a7, 8(a5) -- Store: [0x800024c8]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f3']
Last Code Sequence : 
	-[0x800006a0]:fcvt.l.d a1, ft3, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:sd a1, 16(a5)
Current Store : [0x800006ac] : sd a7, 24(a5) -- Store: [0x800024d8]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f23']
Last Code Sequence : 
	-[0x800006b8]:fcvt.l.d gp, fs7, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd gp, 32(a5)
Current Store : [0x800006c4] : sd a7, 40(a5) -- Store: [0x800024e8]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f17']
Last Code Sequence : 
	-[0x800006d0]:fcvt.l.d a3, fa7, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:sd a3, 48(a5)
Current Store : [0x800006dc] : sd a7, 56(a5) -- Store: [0x800024f8]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f16']
Last Code Sequence : 
	-[0x800006e8]:fcvt.l.d s1, fa6, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:sd s1, 64(a5)
Current Store : [0x800006f4] : sd a7, 72(a5) -- Store: [0x80002508]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.l.d', 'rd : x11', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fcvt.l.d a1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:sd a1, 80(a5)
Current Store : [0x8000070c] : sd a7, 88(a5) -- Store: [0x80002518]:0x0000000000000011





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

|s.no|            signature             |                                                               coverpoints                                                                |                                                       code                                                       |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000000|- opcode : fcvt.l.d<br> - rd : x23<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.l.d s7, fa4, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd s7, 0(a5)<br>      |
|   2|[0x80002320]<br>0x0000000000000000|- rd : x10<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x800003d0]:fcvt.l.d a0, ft4, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:sd a0, 16(a5)<br>     |
|   3|[0x80002330]<br>0x0000000000000000|- rd : x0<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x800003e8]:fcvt.l.d zero, ft0, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:sd zero, 32(a5)<br> |
|   4|[0x80002340]<br>0x7FFFFFFFFFFFFFFF|- rd : x2<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x80000400]:fcvt.l.d sp, fa1, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:sd sp, 48(a5)<br>     |
|   5|[0x80002350]<br>0x7FFFFFFFFFFFFFFF|- rd : x31<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x80000418]:fcvt.l.d t6, ft6, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:sd t6, 64(a5)<br>     |
|   6|[0x80002360]<br>0x7FFFFFFFFFFFFFFF|- rd : x30<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                         |[0x80000430]:fcvt.l.d t5, fs9, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd t5, 80(a5)<br>     |
|   7|[0x80002370]<br>0x7FFFFFFFFFFFFFFF|- rd : x18<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                         |[0x80000448]:fcvt.l.d s2, fa0, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:sd s2, 96(a5)<br>     |
|   8|[0x80002380]<br>0x7FFFFFFFFFFFFFFF|- rd : x7<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                          |[0x80000460]:fcvt.l.d t2, fs3, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sd t2, 112(a5)<br>    |
|   9|[0x80002390]<br>0x7FFFFFFFFFFFFFFF|- rd : x29<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                         |[0x80000478]:fcvt.l.d t4, ft9, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd t4, 128(a5)<br>    |
|  10|[0x800023a0]<br>0x8000000000000000|- rd : x26<br> - rs1 : f13<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000490]:fcvt.l.d s10, fa3, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd s10, 144(a5)<br>  |
|  11|[0x800023b0]<br>0x7FFFFFFFFFFFFFFF|- rd : x15<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x800004b4]:fcvt.l.d a5, ft5, dyn<br> [0x800004b8]:csrrs s5, fflags, zero<br> [0x800004bc]:sd a5, 0(s3)<br>      |
|  12|[0x800023c0]<br>0x8000000000000000|- rd : x27<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                          |[0x800004d8]:fcvt.l.d s11, ft7, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd s11, 0(a5)<br>    |
|  13|[0x800023d0]<br>0x7FFFFFFFFFFFFFFF|- rd : x14<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                         |[0x800004f0]:fcvt.l.d a4, ft10, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd a4, 16(a5)<br>    |
|  14|[0x800023e0]<br>0x0000000000000000|- rd : x22<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                         |[0x80000508]:fcvt.l.d s6, fa2, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:sd s6, 32(a5)<br>     |
|  15|[0x800023f0]<br>0x0000000000000000|- rd : x16<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                         |[0x8000052c]:fcvt.l.d a6, fs2, dyn<br> [0x80000530]:csrrs s5, fflags, zero<br> [0x80000534]:sd a6, 0(s3)<br>      |
|  16|[0x80002400]<br>0x0000000000000000|- rd : x25<br> - rs1 : f21<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000550]:fcvt.l.d s9, fs5, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd s9, 0(a5)<br>      |
|  17|[0x80002410]<br>0x0000000000000000|- rd : x8<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                          |[0x80000568]:fcvt.l.d fp, fs10, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd fp, 16(a5)<br>    |
|  18|[0x80002420]<br>0x0000000000000000|- rd : x21<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                         |[0x80000580]:fcvt.l.d s5, fs4, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:sd s5, 32(a5)<br>     |
|  19|[0x80002430]<br>0x0000000000000000|- rd : x1<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                           |[0x80000598]:fcvt.l.d ra, fs0, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:sd ra, 48(a5)<br>     |
|  20|[0x80002440]<br>0x0000000000000000|- rd : x6<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                          |[0x800005b0]:fcvt.l.d t1, ft8, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:sd t1, 64(a5)<br>     |
|  21|[0x80002450]<br>0x0000000000000000|- rd : x19<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                          |[0x800005c8]:fcvt.l.d s3, ft1, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:sd s3, 80(a5)<br>     |
|  22|[0x80002460]<br>0x0000000000000000|- rd : x24<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x800005e0]:fcvt.l.d s8, fs1, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:sd s8, 96(a5)<br>     |
|  23|[0x80002470]<br>0x0000000000000000|- rd : x5<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x800005f8]:fcvt.l.d t0, fs11, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:sd t0, 112(a5)<br>   |
|  24|[0x80002480]<br>0x0000000000000000|- rd : x28<br> - rs1 : f15<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000610]:fcvt.l.d t3, fa5, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:sd t3, 128(a5)<br>    |
|  25|[0x80002490]<br>0x0000000000000000|- rd : x4<br> - rs1 : f24<br>                                                                                                             |[0x80000628]:fcvt.l.d tp, fs8, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd tp, 144(a5)<br>    |
|  26|[0x800024a0]<br>0x0000000000000000|- rd : x20<br> - rs1 : f31<br>                                                                                                            |[0x80000640]:fcvt.l.d s4, ft11, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:sd s4, 160(a5)<br>   |
|  27|[0x800024b0]<br>0x0000000000000000|- rd : x17<br> - rs1 : f22<br>                                                                                                            |[0x80000664]:fcvt.l.d a7, fs6, dyn<br> [0x80000668]:csrrs s5, fflags, zero<br> [0x8000066c]:sd a7, 0(s3)<br>      |
|  28|[0x800024c0]<br>0x0000000000000000|- rd : x12<br> - rs1 : f2<br>                                                                                                             |[0x80000688]:fcvt.l.d a2, ft2, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sd a2, 0(a5)<br>      |
|  29|[0x800024d0]<br>0x0000000000000000|- rd : x11<br> - rs1 : f3<br>                                                                                                             |[0x800006a0]:fcvt.l.d a1, ft3, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:sd a1, 16(a5)<br>     |
|  30|[0x800024e0]<br>0x0000000000000000|- rd : x3<br> - rs1 : f23<br>                                                                                                             |[0x800006b8]:fcvt.l.d gp, fs7, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd gp, 32(a5)<br>     |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x13<br> - rs1 : f17<br>                                                                                                            |[0x800006d0]:fcvt.l.d a3, fa7, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:sd a3, 48(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000000|- rd : x9<br> - rs1 : f16<br>                                                                                                             |[0x800006e8]:fcvt.l.d s1, fa6, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:sd s1, 64(a5)<br>     |
