
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | fsqrt_b7      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsqrt_b7-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 70      |
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
Last Coverpoint : ['opcode : fsqrt.s', 'rs1 : f1', 'rd : f1', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000120]:fsqrt.s ft1, ft1, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw ft1, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rs1 : f10', 'rd : f12', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x29 and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000138]:fsqrt.s fa2, fa0, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw fa2, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rs1 : f20', 'rd : f3', 'fs1 == 0 and fe1 == 0xd5 and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000150]:fsqrt.s ft3, fs4, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw ft3, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rs1 : f2', 'rd : f19']
Last Code Sequence : 
	-[0x80000168]:fsqrt.s fs3, ft2, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw fs3, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rs1 : f3', 'rd : f25']
Last Code Sequence : 
	-[0x80000180]:fsqrt.s fs9, ft3, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw fs9, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rs1 : f19', 'rd : f8']
Last Code Sequence : 
	-[0x80000198]:fsqrt.s fs0, fs3, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw fs0, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rs1 : f24', 'rd : f27']
Last Code Sequence : 
	-[0x800001b0]:fsqrt.s fs11, fs8, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw fs11, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rs1 : f13', 'rd : f4']
Last Code Sequence : 
	-[0x800001c8]:fsqrt.s ft4, fa3, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw ft4, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rs1 : f17', 'rd : f0']
Last Code Sequence : 
	-[0x800001e0]:fsqrt.s ft0, fa7, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw ft0, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rs1 : f12', 'rd : f7']
Last Code Sequence : 
	-[0x800001f8]:fsqrt.s ft7, fa2, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:fsw ft7, 72(a5)
Current Store : [0x80000204] : sw a7, 76(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rs1 : f29', 'rd : f11']
Last Code Sequence : 
	-[0x80000210]:fsqrt.s fa1, ft9, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw fa1, 80(a5)
Current Store : [0x8000021c] : sw a7, 84(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rs1 : f0', 'rd : f5']
Last Code Sequence : 
	-[0x80000228]:fsqrt.s ft5, ft0, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw ft5, 88(a5)
Current Store : [0x80000234] : sw a7, 92(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rs1 : f7', 'rd : f30']
Last Code Sequence : 
	-[0x80000240]:fsqrt.s ft10, ft7, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw ft10, 96(a5)
Current Store : [0x8000024c] : sw a7, 100(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rs1 : f23', 'rd : f14']
Last Code Sequence : 
	-[0x80000258]:fsqrt.s fa4, fs7, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw fa4, 104(a5)
Current Store : [0x80000264] : sw a7, 108(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rs1 : f22', 'rd : f15']
Last Code Sequence : 
	-[0x80000270]:fsqrt.s fa5, fs6, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fa5, 112(a5)
Current Store : [0x8000027c] : sw a7, 116(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rs1 : f8', 'rd : f18']
Last Code Sequence : 
	-[0x80000288]:fsqrt.s fs2, fs0, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fs2, 120(a5)
Current Store : [0x80000294] : sw a7, 124(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rs1 : f4', 'rd : f2']
Last Code Sequence : 
	-[0x800002a0]:fsqrt.s ft2, ft4, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw ft2, 128(a5)
Current Store : [0x800002ac] : sw a7, 132(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rs1 : f5', 'rd : f10']
Last Code Sequence : 
	-[0x800002b8]:fsqrt.s fa0, ft5, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw fa0, 136(a5)
Current Store : [0x800002c4] : sw a7, 140(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rs1 : f9', 'rd : f28']
Last Code Sequence : 
	-[0x800002d0]:fsqrt.s ft8, fs1, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw ft8, 144(a5)
Current Store : [0x800002dc] : sw a7, 148(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rs1 : f11', 'rd : f29']
Last Code Sequence : 
	-[0x800002e8]:fsqrt.s ft9, fa1, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw ft9, 152(a5)
Current Store : [0x800002f4] : sw a7, 156(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rs1 : f30', 'rd : f16']
Last Code Sequence : 
	-[0x80000300]:fsqrt.s fa6, ft10, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fa6, 160(a5)
Current Store : [0x8000030c] : sw a7, 164(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rs1 : f15', 'rd : f22']
Last Code Sequence : 
	-[0x80000318]:fsqrt.s fs6, fa5, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw fs6, 168(a5)
Current Store : [0x80000324] : sw a7, 172(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rs1 : f14', 'rd : f26']
Last Code Sequence : 
	-[0x80000330]:fsqrt.s fs10, fa4, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw fs10, 176(a5)
Current Store : [0x8000033c] : sw a7, 180(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rs1 : f16', 'rd : f21']
Last Code Sequence : 
	-[0x80000348]:fsqrt.s fs5, fa6, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw fs5, 184(a5)
Current Store : [0x80000354] : sw a7, 188(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rs1 : f6', 'rd : f24']
Last Code Sequence : 
	-[0x80000360]:fsqrt.s fs8, ft6, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw fs8, 192(a5)
Current Store : [0x8000036c] : sw a7, 196(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rs1 : f27', 'rd : f9']
Last Code Sequence : 
	-[0x80000378]:fsqrt.s fs1, fs11, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:fsw fs1, 200(a5)
Current Store : [0x80000384] : sw a7, 204(a5) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rs1 : f26', 'rd : f17']
Last Code Sequence : 
	-[0x80000390]:fsqrt.s fa7, fs10, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:fsw fa7, 208(a5)
Current Store : [0x8000039c] : sw a7, 212(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rs1 : f25', 'rd : f20']
Last Code Sequence : 
	-[0x800003a8]:fsqrt.s fs4, fs9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs4, 216(a5)
Current Store : [0x800003b4] : sw a7, 220(a5) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rs1 : f31', 'rd : f13']
Last Code Sequence : 
	-[0x800003c0]:fsqrt.s fa3, ft11, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsw fa3, 224(a5)
Current Store : [0x800003cc] : sw a7, 228(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rs1 : f21', 'rd : f31']
Last Code Sequence : 
	-[0x800003d8]:fsqrt.s ft11, fs5, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsw ft11, 232(a5)
Current Store : [0x800003e4] : sw a7, 236(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rs1 : f18', 'rd : f23']
Last Code Sequence : 
	-[0x800003f0]:fsqrt.s fs7, fs2, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw fs7, 240(a5)
Current Store : [0x800003fc] : sw a7, 244(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rs1 : f28', 'rd : f6']
Last Code Sequence : 
	-[0x80000408]:fsqrt.s ft6, ft8, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw ft6, 248(a5)
Current Store : [0x80000414] : sw a7, 252(a5) -- Store: [0x80002300]:0x00000000





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

|s.no|        signature         |                                                                  coverpoints                                                                  |                                                       code                                                        |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFEEDBEAD|- opcode : fsqrt.s<br> - rs1 : f1<br> - rd : f1<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 3  #nosat<br> |[0x80000120]:fsqrt.s ft1, ft1, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw ft1, 0(a5)<br>     |
|   2|[0x8000220c]<br>0xD5BFDDB7|- rs1 : f10<br> - rd : f12<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x29 and fm1 == 0x000000 and rm_val == 3  #nosat<br>                      |[0x80000138]:fsqrt.s fa2, fa0, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw fa2, 8(a5)<br>     |
|   3|[0x80002214]<br>0x00000000|- rs1 : f20<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xd5 and fm1 == 0x000000 and rm_val == 3  #nosat<br>                                       |[0x80000150]:fsqrt.s ft3, fs4, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw ft3, 16(a5)<br>    |
|   4|[0x8000221c]<br>0x6FAB7FBB|- rs1 : f2<br> - rd : f19<br>                                                                                                                  |[0x80000168]:fsqrt.s fs3, ft2, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw fs3, 24(a5)<br>    |
|   5|[0x80002224]<br>0xEDBEADFE|- rs1 : f3<br> - rd : f25<br>                                                                                                                  |[0x80000180]:fsqrt.s fs9, ft3, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw fs9, 32(a5)<br>    |
|   6|[0x8000222c]<br>0x5BFDDB7D|- rs1 : f19<br> - rd : f8<br>                                                                                                                  |[0x80000198]:fsqrt.s fs0, fs3, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw fs0, 40(a5)<br>    |
|   7|[0x80002234]<br>0xBB6FAB7F|- rs1 : f24<br> - rd : f27<br>                                                                                                                 |[0x800001b0]:fsqrt.s fs11, fs8, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw fs11, 48(a5)<br>  |
|   8|[0x8000223c]<br>0xBFDDB7D5|- rs1 : f13<br> - rd : f4<br>                                                                                                                  |[0x800001c8]:fsqrt.s ft4, fa3, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw ft4, 56(a5)<br>    |
|   9|[0x80002244]<br>0x00000000|- rs1 : f17<br> - rd : f0<br>                                                                                                                  |[0x800001e0]:fsqrt.s ft0, fa7, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw ft0, 64(a5)<br>    |
|  10|[0x8000224c]<br>0xB7FBB6FA|- rs1 : f12<br> - rd : f7<br>                                                                                                                  |[0x800001f8]:fsqrt.s ft7, fa2, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsw ft7, 72(a5)<br>    |
|  11|[0x80002254]<br>0xAB7FBB6F|- rs1 : f29<br> - rd : f11<br>                                                                                                                 |[0x80000210]:fsqrt.s fa1, ft9, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw fa1, 80(a5)<br>    |
|  12|[0x8000225c]<br>0x800000F8|- rs1 : f0<br> - rd : f5<br>                                                                                                                   |[0x80000228]:fsqrt.s ft5, ft0, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw ft5, 88(a5)<br>    |
|  13|[0x80002264]<br>0xF76DF56F|- rs1 : f7<br> - rd : f30<br>                                                                                                                  |[0x80000240]:fsqrt.s ft10, ft7, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw ft10, 96(a5)<br>  |
|  14|[0x8000226c]<br>0xF56FF76D|- rs1 : f23<br> - rd : f14<br>                                                                                                                 |[0x80000258]:fsqrt.s fa4, fs7, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw fa4, 104(a5)<br>   |
|  15|[0x80002274]<br>0x80002204|- rs1 : f22<br> - rd : f15<br>                                                                                                                 |[0x80000270]:fsqrt.s fa5, fs6, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fa5, 112(a5)<br>   |
|  16|[0x8000227c]<br>0xDF56FF76|- rs1 : f8<br> - rd : f18<br>                                                                                                                  |[0x80000288]:fsqrt.s fs2, fs0, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fs2, 120(a5)<br>   |
|  17|[0x80002284]<br>0x00006000|- rs1 : f4<br> - rd : f2<br>                                                                                                                   |[0x800002a0]:fsqrt.s ft2, ft4, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw ft2, 128(a5)<br>   |
|  18|[0x8000228c]<br>0x56FF76DF|- rs1 : f5<br> - rd : f10<br>                                                                                                                  |[0x800002b8]:fsqrt.s fa0, ft5, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw fa0, 136(a5)<br>   |
|  19|[0x80002294]<br>0xDDB7D5BF|- rs1 : f9<br> - rd : f28<br>                                                                                                                  |[0x800002d0]:fsqrt.s ft8, fs1, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw ft8, 144(a5)<br>   |
|  20|[0x8000229c]<br>0xEEDBEADF|- rs1 : f11<br> - rd : f29<br>                                                                                                                 |[0x800002e8]:fsqrt.s ft9, fa1, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw ft9, 152(a5)<br>   |
|  21|[0x800022a4]<br>0x80002004|- rs1 : f30<br> - rd : f16<br>                                                                                                                 |[0x80000300]:fsqrt.s fa6, ft10, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fa6, 160(a5)<br>  |
|  22|[0x800022ac]<br>0x6DF56FF7|- rs1 : f15<br> - rd : f22<br>                                                                                                                 |[0x80000318]:fsqrt.s fs6, fa5, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw fs6, 168(a5)<br>   |
|  23|[0x800022b4]<br>0x76DF56FF|- rs1 : f14<br> - rd : f26<br>                                                                                                                 |[0x80000330]:fsqrt.s fs10, fa4, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw fs10, 176(a5)<br> |
|  24|[0x800022bc]<br>0xDBEADFEE|- rs1 : f16<br> - rd : f21<br>                                                                                                                 |[0x80000348]:fsqrt.s fs5, fa6, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw fs5, 184(a5)<br>   |
|  25|[0x800022c4]<br>0xDB7D5BFD|- rs1 : f6<br> - rd : f24<br>                                                                                                                  |[0x80000360]:fsqrt.s fs8, ft6, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fs8, 192(a5)<br>   |
|  26|[0x800022cc]<br>0xADFEEDBE|- rs1 : f27<br> - rd : f9<br>                                                                                                                  |[0x80000378]:fsqrt.s fs1, fs11, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw fs1, 200(a5)<br>  |
|  27|[0x800022d4]<br>0x00000000|- rs1 : f26<br> - rd : f17<br>                                                                                                                 |[0x80000390]:fsqrt.s fa7, fs10, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsw fa7, 208(a5)<br>  |
|  28|[0x800022dc]<br>0xB7D5BFDD|- rs1 : f25<br> - rd : f20<br>                                                                                                                 |[0x800003a8]:fsqrt.s fs4, fs9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs4, 216(a5)<br>   |
|  29|[0x800022e4]<br>0xEADFEEDB|- rs1 : f31<br> - rd : f13<br>                                                                                                                 |[0x800003c0]:fsqrt.s fa3, ft11, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw fa3, 224(a5)<br>  |
|  30|[0x800022ec]<br>0xFBB6FAB7|- rs1 : f21<br> - rd : f31<br>                                                                                                                 |[0x800003d8]:fsqrt.s ft11, fs5, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsw ft11, 232(a5)<br> |
|  31|[0x800022f4]<br>0xB6FAB7FB|- rs1 : f18<br> - rd : f23<br>                                                                                                                 |[0x800003f0]:fsqrt.s fs7, fs2, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw fs7, 240(a5)<br>   |
|  32|[0x800022fc]<br>0x80002000|- rs1 : f28<br> - rd : f6<br>                                                                                                                  |[0x80000408]:fsqrt.s ft6, ft8, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw ft6, 248(a5)<br>   |
