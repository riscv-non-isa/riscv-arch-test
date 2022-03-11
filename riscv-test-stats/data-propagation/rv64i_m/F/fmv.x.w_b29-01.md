
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000510')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | fmv.x.w_b29      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fmv.x.w/riscof_work/fmv.x.w_b29-01.S/ref.S    |
| Total Number of coverpoints| 85     |
| Total Coverpoints Hit     | 81      |
| Total Signature Updates   | 70      |
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
Last Coverpoint : ['opcode : fmv.x.w', 'rd : x8', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fmv.x.w fp, fs1
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw fp, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002214]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f31']
Last Code Sequence : 
	-[0x800001e8]:fmv.x.w a4, ft11
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw a4, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002224]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f30']
Last Code Sequence : 
	-[0x80000200]:fmv.x.w t0, ft10
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw t0, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002234]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f15']
Last Code Sequence : 
	-[0x80000218]:fmv.x.w s10, fa5
	-[0x8000021c]:csrrs a7, fflags, zero
	-[0x80000220]:sw s10, 48(a5)
Current Store : [0x80000224] : sw a7, 52(a5) -- Store: [0x80002244]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f26']
Last Code Sequence : 
	-[0x80000230]:fmv.x.w s2, fs10
	-[0x80000234]:csrrs a7, fflags, zero
	-[0x80000238]:sw s2, 64(a5)
Current Store : [0x8000023c] : sw a7, 68(a5) -- Store: [0x80002254]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f13']
Last Code Sequence : 
	-[0x80000248]:fmv.x.w s11, fa3
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:sw s11, 80(a5)
Current Store : [0x80000254] : sw a7, 84(a5) -- Store: [0x80002264]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f25']
Last Code Sequence : 
	-[0x80000260]:fmv.x.w t1, fs9
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw t1, 96(a5)
Current Store : [0x8000026c] : sw a7, 100(a5) -- Store: [0x80002274]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000278]:fmv.x.w t6, ft7
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw t6, 112(a5)
Current Store : [0x80000284] : sw a7, 116(a5) -- Store: [0x80002284]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f21']
Last Code Sequence : 
	-[0x80000290]:fmv.x.w s1, fs5
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw s1, 128(a5)
Current Store : [0x8000029c] : sw a7, 132(a5) -- Store: [0x80002294]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f12']
Last Code Sequence : 
	-[0x800002a8]:fmv.x.w t4, fa2
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:sw t4, 144(a5)
Current Store : [0x800002b4] : sw a7, 148(a5) -- Store: [0x800022a4]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f14']
Last Code Sequence : 
	-[0x800002c0]:fmv.x.w t3, fa4
	-[0x800002c4]:csrrs a7, fflags, zero
	-[0x800002c8]:sw t3, 160(a5)
Current Store : [0x800002cc] : sw a7, 164(a5) -- Store: [0x800022b4]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f24']
Last Code Sequence : 
	-[0x800002d8]:fmv.x.w a2, fs8
	-[0x800002dc]:csrrs a7, fflags, zero
	-[0x800002e0]:sw a2, 176(a5)
Current Store : [0x800002e4] : sw a7, 180(a5) -- Store: [0x800022c4]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f4']
Last Code Sequence : 
	-[0x800002f0]:fmv.x.w s5, ft4
	-[0x800002f4]:csrrs a7, fflags, zero
	-[0x800002f8]:sw s5, 192(a5)
Current Store : [0x800002fc] : sw a7, 196(a5) -- Store: [0x800022d4]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000308]:fmv.x.w a3, ft9
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw a3, 208(a5)
Current Store : [0x80000314] : sw a7, 212(a5) -- Store: [0x800022e4]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f17']
Last Code Sequence : 
	-[0x80000320]:fmv.x.w t2, fa7
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw t2, 224(a5)
Current Store : [0x8000032c] : sw a7, 228(a5) -- Store: [0x800022f4]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000344]:fmv.x.w a6, fs6
	-[0x80000348]:csrrs s5, fflags, zero
	-[0x8000034c]:sw a6, 0(s3)
Current Store : [0x80000350] : sw s5, 4(s3) -- Store: [0x80002304]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000368]:fmv.x.w ra, fa6
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw ra, 0(a5)
Current Store : [0x80000374] : sw a7, 4(a5) -- Store: [0x80002314]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f27']
Last Code Sequence : 
	-[0x80000380]:fmv.x.w a0, fs11
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:sw a0, 16(a5)
Current Store : [0x8000038c] : sw a7, 20(a5) -- Store: [0x80002324]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f28']
Last Code Sequence : 
	-[0x800003a4]:fmv.x.w a7, ft8
	-[0x800003a8]:csrrs s5, fflags, zero
	-[0x800003ac]:sw a7, 0(s3)
Current Store : [0x800003b0] : sw s5, 4(s3) -- Store: [0x80002334]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f8']
Last Code Sequence : 
	-[0x800003c8]:fmv.x.w tp, fs0
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:sw tp, 0(a5)
Current Store : [0x800003d4] : sw a7, 4(a5) -- Store: [0x80002344]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f20']
Last Code Sequence : 
	-[0x800003e0]:fmv.x.w s9, fs4
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:sw s9, 16(a5)
Current Store : [0x800003ec] : sw a7, 20(a5) -- Store: [0x80002354]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f18']
Last Code Sequence : 
	-[0x800003f8]:fmv.x.w t5, fs2
	-[0x800003fc]:csrrs a7, fflags, zero
	-[0x80000400]:sw t5, 32(a5)
Current Store : [0x80000404] : sw a7, 36(a5) -- Store: [0x80002364]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f11']
Last Code Sequence : 
	-[0x80000410]:fmv.x.w zero, fa1
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:sw zero, 48(a5)
Current Store : [0x8000041c] : sw a7, 52(a5) -- Store: [0x80002374]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f23']
Last Code Sequence : 
	-[0x80000428]:fmv.x.w gp, fs7
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw gp, 64(a5)
Current Store : [0x80000434] : sw a7, 68(a5) -- Store: [0x80002384]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f1']
Last Code Sequence : 
	-[0x80000440]:fmv.x.w s8, ft1
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw s8, 80(a5)
Current Store : [0x8000044c] : sw a7, 84(a5) -- Store: [0x80002394]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f5']
Last Code Sequence : 
	-[0x80000458]:fmv.x.w sp, ft5
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw sp, 96(a5)
Current Store : [0x80000464] : sw a7, 100(a5) -- Store: [0x800023a4]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f10']
Last Code Sequence : 
	-[0x80000470]:fmv.x.w s7, fa0
	-[0x80000474]:csrrs a7, fflags, zero
	-[0x80000478]:sw s7, 112(a5)
Current Store : [0x8000047c] : sw a7, 116(a5) -- Store: [0x800023b4]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000488]:fmv.x.w a1, ft6
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:sw a1, 128(a5)
Current Store : [0x80000494] : sw a7, 132(a5) -- Store: [0x800023c4]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f3']
Last Code Sequence : 
	-[0x800004a0]:fmv.x.w s3, ft3
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw s3, 144(a5)
Current Store : [0x800004ac] : sw a7, 148(a5) -- Store: [0x800023d4]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f2']
Last Code Sequence : 
	-[0x800004b8]:fmv.x.w s6, ft2
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:sw s6, 160(a5)
Current Store : [0x800004c4] : sw a7, 164(a5) -- Store: [0x800023e4]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f19']
Last Code Sequence : 
	-[0x800004d0]:fmv.x.w s4, fs3
	-[0x800004d4]:csrrs a7, fflags, zero
	-[0x800004d8]:sw s4, 176(a5)
Current Store : [0x800004dc] : sw a7, 180(a5) -- Store: [0x800023f4]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f0']
Last Code Sequence : 
	-[0x800004f4]:fmv.x.w a5, ft0
	-[0x800004f8]:csrrs s5, fflags, zero
	-[0x800004fc]:sw a5, 0(s3)
Current Store : [0x80000500] : sw s5, 4(s3) -- Store: [0x80002404]:0x0000000000000000





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |                                                    code                                                    |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000003E4923B8|- opcode : fmv.x.w<br> - rd : x8<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat<br> |[0x800001d0]:fmv.x.w fp, fs1<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw fp, 0(a5)<br>      |
|   2|[0x80002220]<br>0xFFFFFFFFBE4923BF|- rd : x14<br> - rs1 : f31<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001e8]:fmv.x.w a4, ft11<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw a4, 16(a5)<br>    |
|   3|[0x80002230]<br>0xFFFFFFFFBE4923BE|- rd : x5<br> - rs1 : f30<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000200]:fmv.x.w t0, ft10<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw t0, 32(a5)<br>    |
|   4|[0x80002240]<br>0xFFFFFFFFBE4923BD|- rd : x26<br> - rs1 : f15<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000218]:fmv.x.w s10, fa5<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:sw s10, 48(a5)<br>   |
|   5|[0x80002250]<br>0xFFFFFFFFBE4923BC|- rd : x18<br> - rs1 : f26<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000230]:fmv.x.w s2, fs10<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:sw s2, 64(a5)<br>    |
|   6|[0x80002260]<br>0xFFFFFFFFBE4923BB|- rd : x27<br> - rs1 : f13<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000248]:fmv.x.w s11, fa3<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:sw s11, 80(a5)<br>   |
|   7|[0x80002270]<br>0xFFFFFFFFBE4923BA|- rd : x6<br> - rs1 : f25<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000260]:fmv.x.w t1, fs9<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw t1, 96(a5)<br>     |
|   8|[0x80002280]<br>0xFFFFFFFFBE4923B9|- rd : x31<br> - rs1 : f7<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000278]:fmv.x.w t6, ft7<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw t6, 112(a5)<br>    |
|   9|[0x80002290]<br>0xFFFFFFFFBE4923B8|- rd : x9<br> - rs1 : f21<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000290]:fmv.x.w s1, fs5<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw s1, 128(a5)<br>    |
|  10|[0x800022a0]<br>0x000000003E4923BF|- rd : x29<br> - rs1 : f12<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800002a8]:fmv.x.w t4, fa2<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:sw t4, 144(a5)<br>    |
|  11|[0x800022b0]<br>0x000000003E4923BE|- rd : x28<br> - rs1 : f14<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800002c0]:fmv.x.w t3, fa4<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:sw t3, 160(a5)<br>    |
|  12|[0x800022c0]<br>0x000000003E4923BD|- rd : x12<br> - rs1 : f24<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800002d8]:fmv.x.w a2, fs8<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:sw a2, 176(a5)<br>    |
|  13|[0x800022d0]<br>0x000000003E4923BC|- rd : x21<br> - rs1 : f4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002f0]:fmv.x.w s5, ft4<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:sw s5, 192(a5)<br>    |
|  14|[0x800022e0]<br>0x000000003E4923BB|- rd : x13<br> - rs1 : f29<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000308]:fmv.x.w a3, ft9<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw a3, 208(a5)<br>    |
|  15|[0x800022f0]<br>0x000000003E4923BA|- rd : x7<br> - rs1 : f17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000320]:fmv.x.w t2, fa7<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw t2, 224(a5)<br>    |
|  16|[0x80002300]<br>0x000000003E4923B9|- rd : x16<br> - rs1 : f22<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000344]:fmv.x.w a6, fs6<br> [0x80000348]:csrrs s5, fflags, zero<br> [0x8000034c]:sw a6, 0(s3)<br>      |
|  17|[0x80002310]<br>0x0000000000000000|- rd : x1<br> - rs1 : f16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000368]:fmv.x.w ra, fa6<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw ra, 0(a5)<br>      |
|  18|[0x80002320]<br>0x0000000000000000|- rd : x10<br> - rs1 : f27<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000380]:fmv.x.w a0, fs11<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:sw a0, 16(a5)<br>    |
|  19|[0x80002330]<br>0x0000000000000000|- rd : x17<br> - rs1 : f28<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003a4]:fmv.x.w a7, ft8<br> [0x800003a8]:csrrs s5, fflags, zero<br> [0x800003ac]:sw a7, 0(s3)<br>      |
|  20|[0x80002340]<br>0x0000000000000000|- rd : x4<br> - rs1 : f8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800003c8]:fmv.x.w tp, fs0<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:sw tp, 0(a5)<br>      |
|  21|[0x80002350]<br>0x0000000000000000|- rd : x25<br> - rs1 : f20<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003e0]:fmv.x.w s9, fs4<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:sw s9, 16(a5)<br>     |
|  22|[0x80002360]<br>0x0000000000000000|- rd : x30<br> - rs1 : f18<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003f8]:fmv.x.w t5, fs2<br> [0x800003fc]:csrrs a7, fflags, zero<br> [0x80000400]:sw t5, 32(a5)<br>     |
|  23|[0x80002370]<br>0x0000000000000000|- rd : x0<br> - rs1 : f11<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000410]:fmv.x.w zero, fa1<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:sw zero, 48(a5)<br> |
|  24|[0x80002380]<br>0x0000000000000000|- rd : x3<br> - rs1 : f23<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000428]:fmv.x.w gp, fs7<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw gp, 64(a5)<br>     |
|  25|[0x80002390]<br>0x0000000000000000|- rd : x24<br> - rs1 : f1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000440]:fmv.x.w s8, ft1<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw s8, 80(a5)<br>     |
|  26|[0x800023a0]<br>0x0000000000000000|- rd : x2<br> - rs1 : f5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000458]:fmv.x.w sp, ft5<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw sp, 96(a5)<br>     |
|  27|[0x800023b0]<br>0x0000000000000000|- rd : x23<br> - rs1 : f10<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000470]:fmv.x.w s7, fa0<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:sw s7, 112(a5)<br>    |
|  28|[0x800023c0]<br>0x0000000000000000|- rd : x11<br> - rs1 : f6<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000488]:fmv.x.w a1, ft6<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:sw a1, 128(a5)<br>    |
|  29|[0x800023d0]<br>0x0000000000000000|- rd : x19<br> - rs1 : f3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004a0]:fmv.x.w s3, ft3<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw s3, 144(a5)<br>    |
|  30|[0x800023e0]<br>0x0000000000000000|- rd : x22<br> - rs1 : f2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004b8]:fmv.x.w s6, ft2<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:sw s6, 160(a5)<br>    |
|  31|[0x800023f0]<br>0x0000000000000000|- rd : x20<br> - rs1 : f19<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004d0]:fmv.x.w s4, fs3<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:sw s4, 176(a5)<br>    |
|  32|[0x80002400]<br>0x0000000000000000|- rd : x15<br> - rs1 : f0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004f4]:fmv.x.w a5, ft0<br> [0x800004f8]:csrrs s5, fflags, zero<br> [0x800004fc]:sw a5, 0(s3)<br>      |
