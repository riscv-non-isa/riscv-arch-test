
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
| COV_LABELS                | fcvt.wu.s_b27      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fcvt.wu.s_b27-01.S/ref.S    |
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
Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x14', 'rs1 : f31', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.wu.s a4, ft11, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw a4, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000010




Last Coverpoint : ['rd : x24', 'rs1 : f5', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.wu.s s8, ft5, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sw s8, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000010




Last Coverpoint : ['rd : x25', 'rs1 : f13', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.wu.s s9, fa3, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sw s9, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000010




Last Coverpoint : ['rd : x30', 'rs1 : f12', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.wu.s t5, fa2, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sw t5, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000010




Last Coverpoint : ['rd : x1', 'rs1 : f18', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.wu.s ra, fs2, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sw ra, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000010




Last Coverpoint : ['rd : x17', 'rs1 : f14', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001a4]:fcvt.wu.s a7, fa4, dyn
	-[0x800001a8]:csrrs s5, fflags, zero
	-[0x800001ac]:sw a7, 0(s3)
Current Store : [0x800001b0] : sw s5, 4(s3) -- Store: [0x80002230]:0x00000010




Last Coverpoint : ['rd : x5', 'rs1 : f25', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.wu.s t0, fs9, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw t0, 0(a5)
Current Store : [0x800001d4] : sw a7, 4(a5) -- Store: [0x80002238]:0x00000010




Last Coverpoint : ['rd : x13', 'rs1 : f23', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.wu.s a3, fs7, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sw a3, 8(a5)
Current Store : [0x800001ec] : sw a7, 12(a5) -- Store: [0x80002240]:0x00000010




Last Coverpoint : ['rd : x23', 'rs1 : f4']
Last Code Sequence : 
	-[0x800001f8]:fcvt.wu.s s7, ft4, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sw s7, 16(a5)
Current Store : [0x80000204] : sw a7, 20(a5) -- Store: [0x80002248]:0x00000010




Last Coverpoint : ['rd : x18', 'rs1 : f17']
Last Code Sequence : 
	-[0x80000210]:fcvt.wu.s s2, fa7, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sw s2, 24(a5)
Current Store : [0x8000021c] : sw a7, 28(a5) -- Store: [0x80002250]:0x00000010




Last Coverpoint : ['rd : x2', 'rs1 : f2']
Last Code Sequence : 
	-[0x80000228]:fcvt.wu.s sp, ft2, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sw sp, 32(a5)
Current Store : [0x80000234] : sw a7, 36(a5) -- Store: [0x80002258]:0x00000010




Last Coverpoint : ['rd : x12', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000240]:fcvt.wu.s a2, fa6, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sw a2, 40(a5)
Current Store : [0x8000024c] : sw a7, 44(a5) -- Store: [0x80002260]:0x00000010




Last Coverpoint : ['rd : x27', 'rs1 : f24']
Last Code Sequence : 
	-[0x80000258]:fcvt.wu.s s11, fs8, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sw s11, 48(a5)
Current Store : [0x80000264] : sw a7, 52(a5) -- Store: [0x80002268]:0x00000010




Last Coverpoint : ['rd : x11', 'rs1 : f27']
Last Code Sequence : 
	-[0x80000270]:fcvt.wu.s a1, fs11, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sw a1, 56(a5)
Current Store : [0x8000027c] : sw a7, 60(a5) -- Store: [0x80002270]:0x00000010




Last Coverpoint : ['rd : x31', 'rs1 : f20']
Last Code Sequence : 
	-[0x80000288]:fcvt.wu.s t6, fs4, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sw t6, 64(a5)
Current Store : [0x80000294] : sw a7, 68(a5) -- Store: [0x80002278]:0x00000010




Last Coverpoint : ['rd : x9', 'rs1 : f11']
Last Code Sequence : 
	-[0x800002a0]:fcvt.wu.s s1, fa1, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sw s1, 72(a5)
Current Store : [0x800002ac] : sw a7, 76(a5) -- Store: [0x80002280]:0x00000010




Last Coverpoint : ['rd : x29', 'rs1 : f10']
Last Code Sequence : 
	-[0x800002b8]:fcvt.wu.s t4, fa0, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw t4, 80(a5)
Current Store : [0x800002c4] : sw a7, 84(a5) -- Store: [0x80002288]:0x00000010




Last Coverpoint : ['rd : x16', 'rs1 : f26']
Last Code Sequence : 
	-[0x800002dc]:fcvt.wu.s a6, fs10, dyn
	-[0x800002e0]:csrrs s5, fflags, zero
	-[0x800002e4]:sw a6, 0(s3)
Current Store : [0x800002e8] : sw s5, 4(s3) -- Store: [0x80002290]:0x00000010




Last Coverpoint : ['rd : x7', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000300]:fcvt.wu.s t2, ft9, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sw t2, 0(a5)
Current Store : [0x8000030c] : sw a7, 4(a5) -- Store: [0x80002298]:0x00000010




Last Coverpoint : ['rd : x8', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000318]:fcvt.wu.s fp, fs6, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw fp, 8(a5)
Current Store : [0x80000324] : sw a7, 12(a5) -- Store: [0x800022a0]:0x00000010




Last Coverpoint : ['rd : x21', 'rs1 : f19']
Last Code Sequence : 
	-[0x80000330]:fcvt.wu.s s5, fs3, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw s5, 16(a5)
Current Store : [0x8000033c] : sw a7, 20(a5) -- Store: [0x800022a8]:0x00000010




Last Coverpoint : ['rd : x6', 'rs1 : f1']
Last Code Sequence : 
	-[0x80000348]:fcvt.wu.s t1, ft1, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sw t1, 24(a5)
Current Store : [0x80000354] : sw a7, 28(a5) -- Store: [0x800022b0]:0x00000010




Last Coverpoint : ['rd : x19', 'rs1 : f28']
Last Code Sequence : 
	-[0x80000360]:fcvt.wu.s s3, ft8, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sw s3, 32(a5)
Current Store : [0x8000036c] : sw a7, 36(a5) -- Store: [0x800022b8]:0x00000010




Last Coverpoint : ['rd : x10', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000378]:fcvt.wu.s a0, ft6, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw a0, 40(a5)
Current Store : [0x80000384] : sw a7, 44(a5) -- Store: [0x800022c0]:0x00000010




Last Coverpoint : ['rd : x3', 'rs1 : f9']
Last Code Sequence : 
	-[0x80000390]:fcvt.wu.s gp, fs1, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw gp, 48(a5)
Current Store : [0x8000039c] : sw a7, 52(a5) -- Store: [0x800022c8]:0x00000010




Last Coverpoint : ['rd : x20', 'rs1 : f15']
Last Code Sequence : 
	-[0x800003a8]:fcvt.wu.s s4, fa5, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sw s4, 56(a5)
Current Store : [0x800003b4] : sw a7, 60(a5) -- Store: [0x800022d0]:0x00000010




Last Coverpoint : ['rd : x26', 'rs1 : f3']
Last Code Sequence : 
	-[0x800003c0]:fcvt.wu.s s10, ft3, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sw s10, 64(a5)
Current Store : [0x800003cc] : sw a7, 68(a5) -- Store: [0x800022d8]:0x00000010




Last Coverpoint : ['rd : x22', 'rs1 : f30']
Last Code Sequence : 
	-[0x800003d8]:fcvt.wu.s s6, ft10, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sw s6, 72(a5)
Current Store : [0x800003e4] : sw a7, 76(a5) -- Store: [0x800022e0]:0x00000010




Last Coverpoint : ['rd : x28', 'rs1 : f7']
Last Code Sequence : 
	-[0x800003f0]:fcvt.wu.s t3, ft7, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw t3, 80(a5)
Current Store : [0x800003fc] : sw a7, 84(a5) -- Store: [0x800022e8]:0x00000010




Last Coverpoint : ['rd : x15', 'rs1 : f0']
Last Code Sequence : 
	-[0x80000414]:fcvt.wu.s a5, ft0, dyn
	-[0x80000418]:csrrs s5, fflags, zero
	-[0x8000041c]:sw a5, 0(s3)
Current Store : [0x80000420] : sw s5, 4(s3) -- Store: [0x800022f0]:0x00000010




Last Coverpoint : ['rd : x0', 'rs1 : f21']
Last Code Sequence : 
	-[0x80000438]:fcvt.wu.s zero, fs5, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sw zero, 0(a5)
Current Store : [0x80000444] : sw a7, 4(a5) -- Store: [0x800022f8]:0x00000010




Last Coverpoint : ['rd : x4', 'rs1 : f8']
Last Code Sequence : 
	-[0x80000450]:fcvt.wu.s tp, fs0, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sw tp, 8(a5)
Current Store : [0x8000045c] : sw a7, 12(a5) -- Store: [0x80002300]:0x00000010





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

|s.no|        signature         |                                                            coverpoints                                                            |                                                       code                                                       |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFFF|- opcode : fcvt.wu.s<br> - rd : x14<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.wu.s a4, ft11, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw a4, 0(a5)<br>    |
|   2|[0x8000220c]<br>0xFFFFFFFF|- rd : x24<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat<br>                           |[0x80000138]:fcvt.wu.s s8, ft5, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sw s8, 8(a5)<br>     |
|   3|[0x80002214]<br>0xFFFFFFFF|- rd : x25<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat<br>                          |[0x80000150]:fcvt.wu.s s9, fa3, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sw s9, 16(a5)<br>    |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rd : x30<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br>                          |[0x80000168]:fcvt.wu.s t5, fa2, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sw t5, 24(a5)<br>    |
|   5|[0x80002224]<br>0xFFFFFFFF|- rd : x1<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br>                           |[0x80000180]:fcvt.wu.s ra, fs2, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sw ra, 32(a5)<br>    |
|   6|[0x8000222c]<br>0xFFFFFFFF|- rd : x17<br> - rs1 : f14<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat<br>                          |[0x800001a4]:fcvt.wu.s a7, fa4, dyn<br> [0x800001a8]:csrrs s5, fflags, zero<br> [0x800001ac]:sw a7, 0(s3)<br>     |
|   7|[0x80002234]<br>0xFFFFFFFF|- rd : x5<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat<br>                           |[0x800001c8]:fcvt.wu.s t0, fs9, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw t0, 0(a5)<br>     |
|   8|[0x8000223c]<br>0xFFFFFFFF|- rd : x13<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br>                          |[0x800001e0]:fcvt.wu.s a3, fs7, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sw a3, 8(a5)<br>     |
|   9|[0x80002244]<br>0x00000000|- rd : x23<br> - rs1 : f4<br>                                                                                                      |[0x800001f8]:fcvt.wu.s s7, ft4, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sw s7, 16(a5)<br>    |
|  10|[0x8000224c]<br>0x00000000|- rd : x18<br> - rs1 : f17<br>                                                                                                     |[0x80000210]:fcvt.wu.s s2, fa7, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sw s2, 24(a5)<br>    |
|  11|[0x80002254]<br>0x00000000|- rd : x2<br> - rs1 : f2<br>                                                                                                       |[0x80000228]:fcvt.wu.s sp, ft2, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sw sp, 32(a5)<br>    |
|  12|[0x8000225c]<br>0x00000000|- rd : x12<br> - rs1 : f16<br>                                                                                                     |[0x80000240]:fcvt.wu.s a2, fa6, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sw a2, 40(a5)<br>    |
|  13|[0x80002264]<br>0x00000000|- rd : x27<br> - rs1 : f24<br>                                                                                                     |[0x80000258]:fcvt.wu.s s11, fs8, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw s11, 48(a5)<br>  |
|  14|[0x8000226c]<br>0x00000000|- rd : x11<br> - rs1 : f27<br>                                                                                                     |[0x80000270]:fcvt.wu.s a1, fs11, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sw a1, 56(a5)<br>   |
|  15|[0x80002274]<br>0x00000000|- rd : x31<br> - rs1 : f20<br>                                                                                                     |[0x80000288]:fcvt.wu.s t6, fs4, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sw t6, 64(a5)<br>    |
|  16|[0x8000227c]<br>0x00000000|- rd : x9<br> - rs1 : f11<br>                                                                                                      |[0x800002a0]:fcvt.wu.s s1, fa1, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sw s1, 72(a5)<br>    |
|  17|[0x80002284]<br>0x00000000|- rd : x29<br> - rs1 : f10<br>                                                                                                     |[0x800002b8]:fcvt.wu.s t4, fa0, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw t4, 80(a5)<br>    |
|  18|[0x8000228c]<br>0x00000000|- rd : x16<br> - rs1 : f26<br>                                                                                                     |[0x800002dc]:fcvt.wu.s a6, fs10, dyn<br> [0x800002e0]:csrrs s5, fflags, zero<br> [0x800002e4]:sw a6, 0(s3)<br>    |
|  19|[0x80002294]<br>0x00000000|- rd : x7<br> - rs1 : f29<br>                                                                                                      |[0x80000300]:fcvt.wu.s t2, ft9, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sw t2, 0(a5)<br>     |
|  20|[0x8000229c]<br>0x00000000|- rd : x8<br> - rs1 : f22<br>                                                                                                      |[0x80000318]:fcvt.wu.s fp, fs6, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw fp, 8(a5)<br>     |
|  21|[0x800022a4]<br>0x00000000|- rd : x21<br> - rs1 : f19<br>                                                                                                     |[0x80000330]:fcvt.wu.s s5, fs3, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw s5, 16(a5)<br>    |
|  22|[0x800022ac]<br>0x00000000|- rd : x6<br> - rs1 : f1<br>                                                                                                       |[0x80000348]:fcvt.wu.s t1, ft1, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sw t1, 24(a5)<br>    |
|  23|[0x800022b4]<br>0x00000000|- rd : x19<br> - rs1 : f28<br>                                                                                                     |[0x80000360]:fcvt.wu.s s3, ft8, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sw s3, 32(a5)<br>    |
|  24|[0x800022bc]<br>0x00000000|- rd : x10<br> - rs1 : f6<br>                                                                                                      |[0x80000378]:fcvt.wu.s a0, ft6, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw a0, 40(a5)<br>    |
|  25|[0x800022c4]<br>0x00000000|- rd : x3<br> - rs1 : f9<br>                                                                                                       |[0x80000390]:fcvt.wu.s gp, fs1, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw gp, 48(a5)<br>    |
|  26|[0x800022cc]<br>0x00000000|- rd : x20<br> - rs1 : f15<br>                                                                                                     |[0x800003a8]:fcvt.wu.s s4, fa5, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sw s4, 56(a5)<br>    |
|  27|[0x800022d4]<br>0x00000000|- rd : x26<br> - rs1 : f3<br>                                                                                                      |[0x800003c0]:fcvt.wu.s s10, ft3, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sw s10, 64(a5)<br>  |
|  28|[0x800022dc]<br>0x00000000|- rd : x22<br> - rs1 : f30<br>                                                                                                     |[0x800003d8]:fcvt.wu.s s6, ft10, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sw s6, 72(a5)<br>   |
|  29|[0x800022e4]<br>0x00000000|- rd : x28<br> - rs1 : f7<br>                                                                                                      |[0x800003f0]:fcvt.wu.s t3, ft7, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw t3, 80(a5)<br>    |
|  30|[0x800022ec]<br>0x00000000|- rd : x15<br> - rs1 : f0<br>                                                                                                      |[0x80000414]:fcvt.wu.s a5, ft0, dyn<br> [0x80000418]:csrrs s5, fflags, zero<br> [0x8000041c]:sw a5, 0(s3)<br>     |
|  31|[0x800022f4]<br>0x00000000|- rd : x0<br> - rs1 : f21<br>                                                                                                      |[0x80000438]:fcvt.wu.s zero, fs5, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sw zero, 0(a5)<br> |
|  32|[0x800022fc]<br>0x00000000|- rd : x4<br> - rs1 : f8<br>                                                                                                       |[0x80000450]:fcvt.wu.s tp, fs0, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sw tp, 8(a5)<br>     |
