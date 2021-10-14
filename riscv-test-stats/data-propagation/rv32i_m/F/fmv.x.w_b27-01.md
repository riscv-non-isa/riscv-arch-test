
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000460')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | fmv.x.w_b27      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmv.x.w_b27-01.S/ref.S    |
| Total Number of coverpoints| 77     |
| Total Coverpoints Hit     | 73      |
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
Last Coverpoint : ['opcode : fmv.x.w', 'rd : x20', 'rs1 : f18', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.x.w s4, fs2
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw s4, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rd : x17', 'rs1 : f27', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000144]:fmv.x.w a7, fs11
	-[0x80000148]:csrrs s5, fflags, zero
	-[0x8000014c]:sw a7, 0(s3)
Current Store : [0x80000150] : sw s5, 4(s3) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rd : x29', 'rs1 : f20', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fmv.x.w t4, fs4
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sw t4, 0(a5)
Current Store : [0x80000174] : sw a7, 4(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rd : x10', 'rs1 : f19', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fmv.x.w a0, fs3
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sw a0, 8(a5)
Current Store : [0x8000018c] : sw a7, 12(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rd : x19', 'rs1 : f26', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fmv.x.w s3, fs10
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sw s3, 16(a5)
Current Store : [0x800001a4] : sw a7, 20(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rd : x1', 'rs1 : f3', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmv.x.w ra, ft3
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sw ra, 24(a5)
Current Store : [0x800001bc] : sw a7, 28(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rd : x9', 'rs1 : f25', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fmv.x.w s1, fs9
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw s1, 32(a5)
Current Store : [0x800001d4] : sw a7, 36(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rd : x16', 'rs1 : f12', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001ec]:fmv.x.w a6, fa2
	-[0x800001f0]:csrrs s5, fflags, zero
	-[0x800001f4]:sw a6, 0(s3)
Current Store : [0x800001f8] : sw s5, 4(s3) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rd : x28', 'rs1 : f8']
Last Code Sequence : 
	-[0x80000210]:fmv.x.w t3, fs0
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sw t3, 0(a5)
Current Store : [0x8000021c] : sw a7, 4(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rd : x21', 'rs1 : f5']
Last Code Sequence : 
	-[0x80000228]:fmv.x.w s5, ft5
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sw s5, 8(a5)
Current Store : [0x80000234] : sw a7, 12(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rd : x2', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000240]:fmv.x.w sp, fs6
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sw sp, 16(a5)
Current Store : [0x8000024c] : sw a7, 20(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rd : x13', 'rs1 : f13']
Last Code Sequence : 
	-[0x80000258]:fmv.x.w a3, fa3
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sw a3, 24(a5)
Current Store : [0x80000264] : sw a7, 28(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rd : x3', 'rs1 : f2']
Last Code Sequence : 
	-[0x80000270]:fmv.x.w gp, ft2
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sw gp, 32(a5)
Current Store : [0x8000027c] : sw a7, 36(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rd : x31', 'rs1 : f14']
Last Code Sequence : 
	-[0x80000288]:fmv.x.w t6, fa4
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sw t6, 40(a5)
Current Store : [0x80000294] : sw a7, 44(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rd : x22', 'rs1 : f23']
Last Code Sequence : 
	-[0x800002a0]:fmv.x.w s6, fs7
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sw s6, 48(a5)
Current Store : [0x800002ac] : sw a7, 52(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rd : x8', 'rs1 : f17']
Last Code Sequence : 
	-[0x800002b8]:fmv.x.w fp, fa7
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw fp, 56(a5)
Current Store : [0x800002c4] : sw a7, 60(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rd : x23', 'rs1 : f0']
Last Code Sequence : 
	-[0x800002d0]:fmv.x.w s7, ft0
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sw s7, 64(a5)
Current Store : [0x800002dc] : sw a7, 68(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rd : x24', 'rs1 : f15']
Last Code Sequence : 
	-[0x800002e8]:fmv.x.w s8, fa5
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sw s8, 72(a5)
Current Store : [0x800002f4] : sw a7, 76(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rd : x26', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000300]:fmv.x.w s10, ft9
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sw s10, 80(a5)
Current Store : [0x8000030c] : sw a7, 84(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rd : x18', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000318]:fmv.x.w s2, ft11
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw s2, 88(a5)
Current Store : [0x80000324] : sw a7, 92(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rd : x4', 'rs1 : f11']
Last Code Sequence : 
	-[0x80000330]:fmv.x.w tp, fa1
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw tp, 96(a5)
Current Store : [0x8000033c] : sw a7, 100(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rd : x15', 'rs1 : f9']
Last Code Sequence : 
	-[0x80000354]:fmv.x.w a5, fs1
	-[0x80000358]:csrrs s5, fflags, zero
	-[0x8000035c]:sw a5, 0(s3)
Current Store : [0x80000360] : sw s5, 4(s3) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rd : x11', 'rs1 : f28']
Last Code Sequence : 
	-[0x80000378]:fmv.x.w a1, ft8
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw a1, 0(a5)
Current Store : [0x80000384] : sw a7, 4(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rd : x12', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000390]:fmv.x.w a2, fa6
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw a2, 8(a5)
Current Store : [0x8000039c] : sw a7, 12(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rd : x14', 'rs1 : f6']
Last Code Sequence : 
	-[0x800003a8]:fmv.x.w a4, ft6
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sw a4, 16(a5)
Current Store : [0x800003b4] : sw a7, 20(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rd : x6', 'rs1 : f4']
Last Code Sequence : 
	-[0x800003c0]:fmv.x.w t1, ft4
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sw t1, 24(a5)
Current Store : [0x800003cc] : sw a7, 28(a5) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rd : x5', 'rs1 : f24']
Last Code Sequence : 
	-[0x800003d8]:fmv.x.w t0, fs8
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sw t0, 32(a5)
Current Store : [0x800003e4] : sw a7, 36(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rd : x25', 'rs1 : f21']
Last Code Sequence : 
	-[0x800003f0]:fmv.x.w s9, fs5
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw s9, 40(a5)
Current Store : [0x800003fc] : sw a7, 44(a5) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rd : x27', 'rs1 : f1']
Last Code Sequence : 
	-[0x80000408]:fmv.x.w s11, ft1
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sw s11, 48(a5)
Current Store : [0x80000414] : sw a7, 52(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rd : x0', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000420]:fmv.x.w zero, ft7
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sw zero, 56(a5)
Current Store : [0x8000042c] : sw a7, 60(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rd : x7', 'rs1 : f30']
Last Code Sequence : 
	-[0x80000438]:fmv.x.w t2, ft10
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sw t2, 64(a5)
Current Store : [0x80000444] : sw a7, 68(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rd : x30', 'rs1 : f10']
Last Code Sequence : 
	-[0x80000450]:fmv.x.w t5, fa0
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sw t5, 72(a5)
Current Store : [0x8000045c] : sw a7, 76(a5) -- Store: [0x80002300]:0x00000000





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

|s.no|        signature         |                                                           coverpoints                                                           |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x7F800001|- opcode : fmv.x.w<br> - rd : x20<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.x.w s4, fs2<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw s4, 0(a5)<br>      |
|   2|[0x8000220c]<br>0xFFC55555|- rd : x17<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat<br>                        |[0x80000144]:fmv.x.w a7, fs11<br> [0x80000148]:csrrs s5, fflags, zero<br> [0x8000014c]:sw a7, 0(s3)<br>     |
|   3|[0x80002214]<br>0x7FC55555|- rd : x29<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat<br>                        |[0x80000168]:fmv.x.w t4, fs4<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sw t4, 0(a5)<br>      |
|   4|[0x8000221c]<br>0xFFC00001|- rd : x10<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br>                        |[0x80000180]:fmv.x.w a0, fs3<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sw a0, 8(a5)<br>      |
|   5|[0x80002224]<br>0x7FC00001|- rd : x19<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br>                        |[0x80000198]:fmv.x.w s3, fs10<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sw s3, 16(a5)<br>    |
|   6|[0x8000222c]<br>0xFFAAAAAA|- rd : x1<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat<br>                          |[0x800001b0]:fmv.x.w ra, ft3<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sw ra, 24(a5)<br>     |
|   7|[0x80002234]<br>0x7FAAAAAA|- rd : x9<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat<br>                         |[0x800001c8]:fmv.x.w s1, fs9<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw s1, 32(a5)<br>     |
|   8|[0x8000223c]<br>0xFF800001|- rd : x16<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br>                        |[0x800001ec]:fmv.x.w a6, fa2<br> [0x800001f0]:csrrs s5, fflags, zero<br> [0x800001f4]:sw a6, 0(s3)<br>      |
|   9|[0x80002244]<br>0x00000000|- rd : x28<br> - rs1 : f8<br>                                                                                                    |[0x80000210]:fmv.x.w t3, fs0<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sw t3, 0(a5)<br>      |
|  10|[0x8000224c]<br>0x00000000|- rd : x21<br> - rs1 : f5<br>                                                                                                    |[0x80000228]:fmv.x.w s5, ft5<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sw s5, 8(a5)<br>      |
|  11|[0x80002254]<br>0x00000000|- rd : x2<br> - rs1 : f22<br>                                                                                                    |[0x80000240]:fmv.x.w sp, fs6<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sw sp, 16(a5)<br>     |
|  12|[0x8000225c]<br>0x00000000|- rd : x13<br> - rs1 : f13<br>                                                                                                   |[0x80000258]:fmv.x.w a3, fa3<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw a3, 24(a5)<br>     |
|  13|[0x80002264]<br>0x00000000|- rd : x3<br> - rs1 : f2<br>                                                                                                     |[0x80000270]:fmv.x.w gp, ft2<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sw gp, 32(a5)<br>     |
|  14|[0x8000226c]<br>0x00000000|- rd : x31<br> - rs1 : f14<br>                                                                                                   |[0x80000288]:fmv.x.w t6, fa4<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sw t6, 40(a5)<br>     |
|  15|[0x80002274]<br>0x00000000|- rd : x22<br> - rs1 : f23<br>                                                                                                   |[0x800002a0]:fmv.x.w s6, fs7<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sw s6, 48(a5)<br>     |
|  16|[0x8000227c]<br>0x00000000|- rd : x8<br> - rs1 : f17<br>                                                                                                    |[0x800002b8]:fmv.x.w fp, fa7<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw fp, 56(a5)<br>     |
|  17|[0x80002284]<br>0x00000000|- rd : x23<br> - rs1 : f0<br>                                                                                                    |[0x800002d0]:fmv.x.w s7, ft0<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sw s7, 64(a5)<br>     |
|  18|[0x8000228c]<br>0x00000000|- rd : x24<br> - rs1 : f15<br>                                                                                                   |[0x800002e8]:fmv.x.w s8, fa5<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sw s8, 72(a5)<br>     |
|  19|[0x80002294]<br>0x00000000|- rd : x26<br> - rs1 : f29<br>                                                                                                   |[0x80000300]:fmv.x.w s10, ft9<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sw s10, 80(a5)<br>   |
|  20|[0x8000229c]<br>0x00000000|- rd : x18<br> - rs1 : f31<br>                                                                                                   |[0x80000318]:fmv.x.w s2, ft11<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw s2, 88(a5)<br>    |
|  21|[0x800022a4]<br>0x00000000|- rd : x4<br> - rs1 : f11<br>                                                                                                    |[0x80000330]:fmv.x.w tp, fa1<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw tp, 96(a5)<br>     |
|  22|[0x800022ac]<br>0x00000000|- rd : x15<br> - rs1 : f9<br>                                                                                                    |[0x80000354]:fmv.x.w a5, fs1<br> [0x80000358]:csrrs s5, fflags, zero<br> [0x8000035c]:sw a5, 0(s3)<br>      |
|  23|[0x800022b4]<br>0x00000000|- rd : x11<br> - rs1 : f28<br>                                                                                                   |[0x80000378]:fmv.x.w a1, ft8<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw a1, 0(a5)<br>      |
|  24|[0x800022bc]<br>0x00000000|- rd : x12<br> - rs1 : f16<br>                                                                                                   |[0x80000390]:fmv.x.w a2, fa6<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw a2, 8(a5)<br>      |
|  25|[0x800022c4]<br>0x00000000|- rd : x14<br> - rs1 : f6<br>                                                                                                    |[0x800003a8]:fmv.x.w a4, ft6<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sw a4, 16(a5)<br>     |
|  26|[0x800022cc]<br>0x00000000|- rd : x6<br> - rs1 : f4<br>                                                                                                     |[0x800003c0]:fmv.x.w t1, ft4<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sw t1, 24(a5)<br>     |
|  27|[0x800022d4]<br>0x00000000|- rd : x5<br> - rs1 : f24<br>                                                                                                    |[0x800003d8]:fmv.x.w t0, fs8<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sw t0, 32(a5)<br>     |
|  28|[0x800022dc]<br>0x00000000|- rd : x25<br> - rs1 : f21<br>                                                                                                   |[0x800003f0]:fmv.x.w s9, fs5<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw s9, 40(a5)<br>     |
|  29|[0x800022e4]<br>0x00000000|- rd : x27<br> - rs1 : f1<br>                                                                                                    |[0x80000408]:fmv.x.w s11, ft1<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sw s11, 48(a5)<br>   |
|  30|[0x800022ec]<br>0x00000000|- rd : x0<br> - rs1 : f7<br>                                                                                                     |[0x80000420]:fmv.x.w zero, ft7<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sw zero, 56(a5)<br> |
|  31|[0x800022f4]<br>0x00000000|- rd : x7<br> - rs1 : f30<br>                                                                                                    |[0x80000438]:fmv.x.w t2, ft10<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sw t2, 64(a5)<br>    |
|  32|[0x800022fc]<br>0x00000000|- rd : x30<br> - rs1 : f10<br>                                                                                                   |[0x80000450]:fmv.x.w t5, fa0<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sw t5, 72(a5)<br>     |
