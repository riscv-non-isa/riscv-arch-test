
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000450')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | fmv.x.w_b23      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmv.x.w_b23-01.S/ref.S    |
| Total Number of coverpoints| 78     |
| Total Coverpoints Hit     | 74      |
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
Last Coverpoint : ['opcode : fmv.x.w', 'rd : x4', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.x.w tp, fa1
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw tp, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rd : x6', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fmv.x.w t1, ft4
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sw t1, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rd : x14', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fmv.x.w a4, ft5
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sw a4, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rd : x18', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fmv.x.w s2, fs6
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sw s2, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rd : x26', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fmv.x.w s10, fa4
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sw s10, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rd : x10', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fmv.x.w a0, ft0
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sw a0, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rd : x7', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmv.x.w t2, ft11
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sw t2, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rd : x28', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fmv.x.w t3, fs3
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw t3, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rd : x2', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fmv.x.w sp, fs5
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sw sp, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rd : x24', 'rs1 : f23']
Last Code Sequence : 
	-[0x800001f8]:fmv.x.w s8, fs7
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sw s8, 72(a5)
Current Store : [0x80000204] : sw a7, 76(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rd : x17', 'rs1 : f30']
Last Code Sequence : 
	-[0x8000021c]:fmv.x.w a7, ft10
	-[0x80000220]:csrrs s5, fflags, zero
	-[0x80000224]:sw a7, 0(s3)
Current Store : [0x80000228] : sw s5, 4(s3) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rd : x11', 'rs1 : f2']
Last Code Sequence : 
	-[0x80000240]:fmv.x.w a1, ft2
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sw a1, 0(a5)
Current Store : [0x8000024c] : sw a7, 4(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rd : x21', 'rs1 : f27']
Last Code Sequence : 
	-[0x80000258]:fmv.x.w s5, fs11
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sw s5, 8(a5)
Current Store : [0x80000264] : sw a7, 12(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rd : x23', 'rs1 : f3']
Last Code Sequence : 
	-[0x80000270]:fmv.x.w s7, ft3
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sw s7, 16(a5)
Current Store : [0x8000027c] : sw a7, 20(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rd : x9', 'rs1 : f18']
Last Code Sequence : 
	-[0x80000288]:fmv.x.w s1, fs2
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sw s1, 24(a5)
Current Store : [0x80000294] : sw a7, 28(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rd : x0', 'rs1 : f9']
Last Code Sequence : 
	-[0x800002a0]:fmv.x.w zero, fs1
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sw zero, 32(a5)
Current Store : [0x800002ac] : sw a7, 36(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rd : x1', 'rs1 : f17']
Last Code Sequence : 
	-[0x800002b8]:fmv.x.w ra, fa7
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw ra, 40(a5)
Current Store : [0x800002c4] : sw a7, 44(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rd : x3', 'rs1 : f16']
Last Code Sequence : 
	-[0x800002d0]:fmv.x.w gp, fa6
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sw gp, 48(a5)
Current Store : [0x800002dc] : sw a7, 52(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rd : x13', 'rs1 : f13']
Last Code Sequence : 
	-[0x800002e8]:fmv.x.w a3, fa3
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sw a3, 56(a5)
Current Store : [0x800002f4] : sw a7, 60(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rd : x22', 'rs1 : f8']
Last Code Sequence : 
	-[0x80000300]:fmv.x.w s6, fs0
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sw s6, 64(a5)
Current Store : [0x8000030c] : sw a7, 68(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rd : x12', 'rs1 : f24']
Last Code Sequence : 
	-[0x80000318]:fmv.x.w a2, fs8
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw a2, 72(a5)
Current Store : [0x80000324] : sw a7, 76(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rd : x30', 'rs1 : f12']
Last Code Sequence : 
	-[0x80000330]:fmv.x.w t5, fa2
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw t5, 80(a5)
Current Store : [0x8000033c] : sw a7, 84(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rd : x20', 'rs1 : f1']
Last Code Sequence : 
	-[0x80000348]:fmv.x.w s4, ft1
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sw s4, 88(a5)
Current Store : [0x80000354] : sw a7, 92(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rd : x8', 'rs1 : f25']
Last Code Sequence : 
	-[0x80000360]:fmv.x.w fp, fs9
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sw fp, 96(a5)
Current Store : [0x8000036c] : sw a7, 100(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rd : x27', 'rs1 : f28']
Last Code Sequence : 
	-[0x80000378]:fmv.x.w s11, ft8
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw s11, 104(a5)
Current Store : [0x80000384] : sw a7, 108(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rd : x31', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000390]:fmv.x.w t6, ft9
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw t6, 112(a5)
Current Store : [0x8000039c] : sw a7, 116(a5) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rd : x15', 'rs1 : f15']
Last Code Sequence : 
	-[0x800003b4]:fmv.x.w a5, fa5
	-[0x800003b8]:csrrs s5, fflags, zero
	-[0x800003bc]:sw a5, 0(s3)
Current Store : [0x800003c0] : sw s5, 4(s3) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rd : x16', 'rs1 : f26']
Last Code Sequence : 
	-[0x800003cc]:fmv.x.w a6, fs10
	-[0x800003d0]:csrrs s5, fflags, zero
	-[0x800003d4]:sw a6, 8(s3)
Current Store : [0x800003d8] : sw s5, 12(s3) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rd : x25', 'rs1 : f6']
Last Code Sequence : 
	-[0x800003f0]:fmv.x.w s9, ft6
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw s9, 0(a5)
Current Store : [0x800003fc] : sw a7, 4(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rd : x19', 'rs1 : f10']
Last Code Sequence : 
	-[0x80000408]:fmv.x.w s3, fa0
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sw s3, 8(a5)
Current Store : [0x80000414] : sw a7, 12(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rd : x29', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000420]:fmv.x.w t4, ft7
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sw t4, 16(a5)
Current Store : [0x8000042c] : sw a7, 20(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rd : x5', 'rs1 : f20']
Last Code Sequence : 
	-[0x80000438]:fmv.x.w t0, fs4
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sw t0, 24(a5)
Current Store : [0x80000444] : sw a7, 28(a5) -- Store: [0x80002300]:0x00000000





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

|s.no|        signature         |                                                          coverpoints                                                           |                                                    code                                                    |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x4EFFFFFC|- opcode : fmv.x.w<br> - rd : x4<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat<br> |[0x80000120]:fmv.x.w tp, fa1<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw tp, 0(a5)<br>      |
|   2|[0x8000220c]<br>0x4F000004|- rd : x6<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat<br>                         |[0x80000138]:fmv.x.w t1, ft4<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sw t1, 8(a5)<br>      |
|   3|[0x80002214]<br>0x4F000003|- rd : x14<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat<br>                        |[0x80000150]:fmv.x.w a4, ft5<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sw a4, 16(a5)<br>     |
|   4|[0x8000221c]<br>0x4F000002|- rd : x18<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat<br>                       |[0x80000168]:fmv.x.w s2, fs6<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sw s2, 24(a5)<br>     |
|   5|[0x80002224]<br>0x4F000001|- rd : x26<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat<br>                       |[0x80000180]:fmv.x.w s10, fa4<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sw s10, 32(a5)<br>   |
|   6|[0x8000222c]<br>0x4F000000|- rd : x10<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000198]:fmv.x.w a0, ft0<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sw a0, 40(a5)<br>     |
|   7|[0x80002234]<br>0x4EFFFFFF|- rd : x7<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                        |[0x800001b0]:fmv.x.w t2, ft11<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sw t2, 48(a5)<br>    |
|   8|[0x8000223c]<br>0x4EFFFFFE|- rd : x28<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                       |[0x800001c8]:fmv.x.w t3, fs3<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw t3, 56(a5)<br>     |
|   9|[0x80002244]<br>0x4EFFFFFD|- rd : x2<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat<br>                        |[0x800001e0]:fmv.x.w sp, fs5<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sw sp, 64(a5)<br>     |
|  10|[0x8000224c]<br>0x00000000|- rd : x24<br> - rs1 : f23<br>                                                                                                  |[0x800001f8]:fmv.x.w s8, fs7<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sw s8, 72(a5)<br>     |
|  11|[0x80002254]<br>0x00000000|- rd : x17<br> - rs1 : f30<br>                                                                                                  |[0x8000021c]:fmv.x.w a7, ft10<br> [0x80000220]:csrrs s5, fflags, zero<br> [0x80000224]:sw a7, 0(s3)<br>     |
|  12|[0x8000225c]<br>0x00000000|- rd : x11<br> - rs1 : f2<br>                                                                                                   |[0x80000240]:fmv.x.w a1, ft2<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sw a1, 0(a5)<br>      |
|  13|[0x80002264]<br>0x00000000|- rd : x21<br> - rs1 : f27<br>                                                                                                  |[0x80000258]:fmv.x.w s5, fs11<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw s5, 8(a5)<br>     |
|  14|[0x8000226c]<br>0x00000000|- rd : x23<br> - rs1 : f3<br>                                                                                                   |[0x80000270]:fmv.x.w s7, ft3<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sw s7, 16(a5)<br>     |
|  15|[0x80002274]<br>0x00000000|- rd : x9<br> - rs1 : f18<br>                                                                                                   |[0x80000288]:fmv.x.w s1, fs2<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sw s1, 24(a5)<br>     |
|  16|[0x8000227c]<br>0x00000000|- rd : x0<br> - rs1 : f9<br>                                                                                                    |[0x800002a0]:fmv.x.w zero, fs1<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sw zero, 32(a5)<br> |
|  17|[0x80002284]<br>0x00000000|- rd : x1<br> - rs1 : f17<br>                                                                                                   |[0x800002b8]:fmv.x.w ra, fa7<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw ra, 40(a5)<br>     |
|  18|[0x8000228c]<br>0x00000000|- rd : x3<br> - rs1 : f16<br>                                                                                                   |[0x800002d0]:fmv.x.w gp, fa6<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sw gp, 48(a5)<br>     |
|  19|[0x80002294]<br>0x00000000|- rd : x13<br> - rs1 : f13<br>                                                                                                  |[0x800002e8]:fmv.x.w a3, fa3<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sw a3, 56(a5)<br>     |
|  20|[0x8000229c]<br>0x00000000|- rd : x22<br> - rs1 : f8<br>                                                                                                   |[0x80000300]:fmv.x.w s6, fs0<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sw s6, 64(a5)<br>     |
|  21|[0x800022a4]<br>0x00000000|- rd : x12<br> - rs1 : f24<br>                                                                                                  |[0x80000318]:fmv.x.w a2, fs8<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw a2, 72(a5)<br>     |
|  22|[0x800022ac]<br>0x00000000|- rd : x30<br> - rs1 : f12<br>                                                                                                  |[0x80000330]:fmv.x.w t5, fa2<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw t5, 80(a5)<br>     |
|  23|[0x800022b4]<br>0x00000000|- rd : x20<br> - rs1 : f1<br>                                                                                                   |[0x80000348]:fmv.x.w s4, ft1<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sw s4, 88(a5)<br>     |
|  24|[0x800022bc]<br>0x00000000|- rd : x8<br> - rs1 : f25<br>                                                                                                   |[0x80000360]:fmv.x.w fp, fs9<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sw fp, 96(a5)<br>     |
|  25|[0x800022c4]<br>0x00000000|- rd : x27<br> - rs1 : f28<br>                                                                                                  |[0x80000378]:fmv.x.w s11, ft8<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw s11, 104(a5)<br>  |
|  26|[0x800022cc]<br>0x00000000|- rd : x31<br> - rs1 : f29<br>                                                                                                  |[0x80000390]:fmv.x.w t6, ft9<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw t6, 112(a5)<br>    |
|  27|[0x800022d4]<br>0x00000000|- rd : x15<br> - rs1 : f15<br>                                                                                                  |[0x800003b4]:fmv.x.w a5, fa5<br> [0x800003b8]:csrrs s5, fflags, zero<br> [0x800003bc]:sw a5, 0(s3)<br>      |
|  28|[0x800022dc]<br>0x00000000|- rd : x16<br> - rs1 : f26<br>                                                                                                  |[0x800003cc]:fmv.x.w a6, fs10<br> [0x800003d0]:csrrs s5, fflags, zero<br> [0x800003d4]:sw a6, 8(s3)<br>     |
|  29|[0x800022e4]<br>0x00000000|- rd : x25<br> - rs1 : f6<br>                                                                                                   |[0x800003f0]:fmv.x.w s9, ft6<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw s9, 0(a5)<br>      |
|  30|[0x800022ec]<br>0x00000000|- rd : x19<br> - rs1 : f10<br>                                                                                                  |[0x80000408]:fmv.x.w s3, fa0<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sw s3, 8(a5)<br>      |
|  31|[0x800022f4]<br>0x00000000|- rd : x29<br> - rs1 : f7<br>                                                                                                   |[0x80000420]:fmv.x.w t4, ft7<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sw t4, 16(a5)<br>     |
|  32|[0x800022fc]<br>0x00000000|- rd : x5<br> - rs1 : f20<br>                                                                                                   |[0x80000438]:fmv.x.w t0, fs4<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sw t0, 24(a5)<br>     |
