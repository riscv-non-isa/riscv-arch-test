
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006e0')]      |
| SIG_REGION                | [('0x80002310', '0x80002510', '64 dwords')]      |
| COV_LABELS                | fclass_b1      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fclass_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
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
Last Coverpoint : ['opcode : fclass.d', 'rd : x11', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fclass.d a1, fs3
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd a1, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fclass.d s1, fs2
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:sd s1, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fclass.d tp, fa5
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:sd tp, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000400]:fclass.d sp, fs1
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:sd sp, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000418]:fclass.d fp, ft9
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:sd fp, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000430]:fclass.d gp, fa0
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd gp, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000448]:fclass.d s6, fs4
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:sd s6, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000460]:fclass.d a0, fa7
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:sd a0, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000478]:fclass.d s2, ft0
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd s2, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000490]:fclass.d t4, fa6
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd t4, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b4]:fclass.d a5, ft3
	-[0x800004b8]:csrrs s5, fflags, zero
	-[0x800004bc]:sd a5, 0(s3)
Current Store : [0x800004c0] : sd s5, 8(s3) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fclass.d s8, fa1
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd s8, 0(a5)
Current Store : [0x800004e4] : sd a7, 8(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fclass.d ra, fa4
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd ra, 16(a5)
Current Store : [0x800004fc] : sd a7, 24(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000508]:fclass.d t0, fs9
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:sd t0, 32(a5)
Current Store : [0x80000514] : sd a7, 40(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000520]:fclass.d s5, ft4
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:sd s5, 48(a5)
Current Store : [0x8000052c] : sd a7, 56(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000538]:fclass.d s11, fs6
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:sd s11, 64(a5)
Current Store : [0x80000544] : sd a7, 72(a5) -- Store: [0x80002408]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000550]:fclass.d t5, fa2
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd t5, 80(a5)
Current Store : [0x8000055c] : sd a7, 88(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000568]:fclass.d s3, ft10
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd s3, 96(a5)
Current Store : [0x80000574] : sd a7, 104(a5) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000580]:fclass.d a4, ft8
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:sd a4, 112(a5)
Current Store : [0x8000058c] : sd a7, 120(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000598]:fclass.d s7, ft5
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:sd s7, 128(a5)
Current Store : [0x800005a4] : sd a7, 136(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fclass.d t2, ft1
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:sd t2, 144(a5)
Current Store : [0x800005bc] : sd a7, 152(a5) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f23', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fclass.d s10, fs7
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:sd s10, 160(a5)
Current Store : [0x800005d4] : sd a7, 168(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fclass.d a2, fs10
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:sd a2, 176(a5)
Current Store : [0x800005ec] : sd a7, 184(a5) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f8', 'fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fclass.d t6, fs0
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:sd t6, 192(a5)
Current Store : [0x80000604] : sd a7, 200(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f27']
Last Code Sequence : 
	-[0x80000610]:fclass.d s4, fs11
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:sd s4, 208(a5)
Current Store : [0x8000061c] : sd a7, 216(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f13']
Last Code Sequence : 
	-[0x80000628]:fclass.d a3, fa3
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd a3, 224(a5)
Current Store : [0x80000634] : sd a7, 232(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000640]:fclass.d t1, ft11
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:sd t1, 240(a5)
Current Store : [0x8000064c] : sd a7, 248(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000658]:fclass.d t3, ft7
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:sd t3, 256(a5)
Current Store : [0x80000664] : sd a7, 264(a5) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f2']
Last Code Sequence : 
	-[0x8000067c]:fclass.d a6, ft2
	-[0x80000680]:csrrs s5, fflags, zero
	-[0x80000684]:sd a6, 0(s3)
Current Store : [0x80000688] : sd s5, 8(s3) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000694]:fclass.d a7, ft6
	-[0x80000698]:csrrs s5, fflags, zero
	-[0x8000069c]:sd a7, 16(s3)
Current Store : [0x800006a0] : sd s5, 24(s3) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f24']
Last Code Sequence : 
	-[0x800006b8]:fclass.d zero, fs8
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd zero, 0(a5)
Current Store : [0x800006c4] : sd a7, 8(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f21']
Last Code Sequence : 
	-[0x800006d0]:fclass.d s9, fs5
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:sd s9, 16(a5)
Current Store : [0x800006dc] : sd a7, 24(a5) -- Store: [0x80002508]:0x0000000000000000





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

|s.no|            signature             |                                                               coverpoints                                                                |                                                    code                                                    |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000010|- opcode : fclass.d<br> - rd : x11<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br> |[0x800003b8]:fclass.d a1, fs3<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd a1, 0(a5)<br>     |
|   2|[0x80002320]<br>0x0000000000000002|- rd : x9<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                          |[0x800003d0]:fclass.d s1, fs2<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:sd s1, 16(a5)<br>    |
|   3|[0x80002330]<br>0x0000000000000040|- rd : x4<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                          |[0x800003e8]:fclass.d tp, fa5<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:sd tp, 32(a5)<br>    |
|   4|[0x80002340]<br>0x0000000000000100|- rd : x2<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 1  #nosat<br>                           |[0x80000400]:fclass.d sp, fs1<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:sd sp, 48(a5)<br>    |
|   5|[0x80002350]<br>0x0000000000000100|- rd : x8<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 1  #nosat<br>                          |[0x80000418]:fclass.d fp, ft9<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:sd fp, 64(a5)<br>    |
|   6|[0x80002360]<br>0x0000000000000200|- rd : x3<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 1  #nosat<br>                          |[0x80000430]:fclass.d gp, fa0<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd gp, 80(a5)<br>    |
|   7|[0x80002370]<br>0x0000000000000200|- rd : x22<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 1  #nosat<br>                         |[0x80000448]:fclass.d s6, fs4<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:sd s6, 96(a5)<br>    |
|   8|[0x80002380]<br>0x0000000000000200|- rd : x10<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 1  #nosat<br>                         |[0x80000460]:fclass.d a0, fa7<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sd a0, 112(a5)<br>   |
|   9|[0x80002390]<br>0x0000000000000200|- rd : x18<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and rm_val == 1  #nosat<br>                          |[0x80000478]:fclass.d s2, ft0<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd s2, 128(a5)<br>   |
|  10|[0x800023a0]<br>0x0000000000000001|- rd : x29<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                         |[0x80000490]:fclass.d t4, fa6<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd t4, 144(a5)<br>   |
|  11|[0x800023b0]<br>0x0000000000000080|- rd : x15<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                          |[0x800004b4]:fclass.d a5, ft3<br> [0x800004b8]:csrrs s5, fflags, zero<br> [0x800004bc]:sd a5, 0(s3)<br>     |
|  12|[0x800023c0]<br>0x0000000000000002|- rd : x24<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 1  #nosat<br>                         |[0x800004d8]:fclass.d s8, fa1<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd s8, 0(a5)<br>     |
|  13|[0x800023d0]<br>0x0000000000000040|- rd : x1<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and rm_val == 1  #nosat<br>                          |[0x800004f0]:fclass.d ra, fa4<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd ra, 16(a5)<br>    |
|  14|[0x800023e0]<br>0x0000000000000002|- rd : x5<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 1  #nosat<br>                          |[0x80000508]:fclass.d t0, fs9<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:sd t0, 32(a5)<br>    |
|  15|[0x800023f0]<br>0x0000000000000040|- rd : x21<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and rm_val == 1  #nosat<br>                          |[0x80000520]:fclass.d s5, ft4<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:sd s5, 48(a5)<br>    |
|  16|[0x80002400]<br>0x0000000000000002|- rd : x27<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                         |[0x80000538]:fclass.d s11, fs6<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:sd s11, 64(a5)<br>  |
|  17|[0x80002410]<br>0x0000000000000040|- rd : x30<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                         |[0x80000550]:fclass.d t5, fa2<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd t5, 80(a5)<br>    |
|  18|[0x80002420]<br>0x0000000000000004|- rd : x19<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 1  #nosat<br>                         |[0x80000568]:fclass.d s3, ft10<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd s3, 96(a5)<br>   |
|  19|[0x80002430]<br>0x0000000000000020|- rd : x14<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and rm_val == 1  #nosat<br>                         |[0x80000580]:fclass.d a4, ft8<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:sd a4, 112(a5)<br>   |
|  20|[0x80002440]<br>0x0000000000000004|- rd : x23<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 1  #nosat<br>                          |[0x80000598]:fclass.d s7, ft5<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:sd s7, 128(a5)<br>   |
|  21|[0x80002450]<br>0x0000000000000020|- rd : x7<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and rm_val == 1  #nosat<br>                           |[0x800005b0]:fclass.d t2, ft1<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:sd t2, 144(a5)<br>   |
|  22|[0x80002460]<br>0x0000000000000004|- rd : x26<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 1  #nosat<br>                         |[0x800005c8]:fclass.d s10, fs7<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:sd s10, 160(a5)<br> |
|  23|[0x80002470]<br>0x0000000000000020|- rd : x12<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and rm_val == 1  #nosat<br>                         |[0x800005e0]:fclass.d a2, fs10<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:sd a2, 176(a5)<br>  |
|  24|[0x80002480]<br>0x0000000000000008|- rd : x31<br> - rs1 : f8<br> - fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                          |[0x800005f8]:fclass.d t6, fs0<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:sd t6, 192(a5)<br>   |
|  25|[0x80002490]<br>0x0000000000000010|- rd : x20<br> - rs1 : f27<br>                                                                                                            |[0x80000610]:fclass.d s4, fs11<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:sd s4, 208(a5)<br>  |
|  26|[0x800024a0]<br>0x0000000000000010|- rd : x13<br> - rs1 : f13<br>                                                                                                            |[0x80000628]:fclass.d a3, fa3<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd a3, 224(a5)<br>   |
|  27|[0x800024b0]<br>0x0000000000000010|- rd : x6<br> - rs1 : f31<br>                                                                                                             |[0x80000640]:fclass.d t1, ft11<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:sd t1, 240(a5)<br>  |
|  28|[0x800024c0]<br>0x0000000000000010|- rd : x28<br> - rs1 : f7<br>                                                                                                             |[0x80000658]:fclass.d t3, ft7<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:sd t3, 256(a5)<br>   |
|  29|[0x800024d0]<br>0x0000000000000010|- rd : x16<br> - rs1 : f2<br>                                                                                                             |[0x8000067c]:fclass.d a6, ft2<br> [0x80000680]:csrrs s5, fflags, zero<br> [0x80000684]:sd a6, 0(s3)<br>     |
|  30|[0x800024e0]<br>0x0000000000000010|- rd : x17<br> - rs1 : f6<br>                                                                                                             |[0x80000694]:fclass.d a7, ft6<br> [0x80000698]:csrrs s5, fflags, zero<br> [0x8000069c]:sd a7, 16(s3)<br>    |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x0<br> - rs1 : f24<br>                                                                                                             |[0x800006b8]:fclass.d zero, fs8<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd zero, 0(a5)<br> |
|  32|[0x80002500]<br>0x0000000000000010|- rd : x25<br> - rs1 : f21<br>                                                                                                            |[0x800006d0]:fclass.d s9, fs5<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:sd s9, 16(a5)<br>    |
