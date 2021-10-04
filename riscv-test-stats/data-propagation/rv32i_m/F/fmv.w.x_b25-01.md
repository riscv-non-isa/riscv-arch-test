
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000480')]      |
| SIG_REGION                | [('0x80002204', '0x8000230c', '66 words')]      |
| COV_LABELS                | fmv.w.x_b25      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmv.w.x_b25-01.S/ref.S    |
| Total Number of coverpoints| 76     |
| Total Coverpoints Hit     | 72      |
| Total Signature Updates   | 66      |
| STAT1                     | 33      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmv.w.x', 'rs1 : x6', 'rd : f5', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.w.x ft5, t1
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw ft5, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rd : f0', 'rs1_val == -1227077728 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fmv.w.x ft0, s5
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw ft0, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rd : f17']
Last Code Sequence : 
	-[0x80000150]:fmv.w.x fa7, zero
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw fa7, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rd : f14', 'rs1_val == -2147483647 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fmv.w.x fa4, a0
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw fa4, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rd : f16', 'rs1_val == 2147483647 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fmv.w.x fa6, s10
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw fa6, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rd : f3', 'rs1_val == -1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fmv.w.x ft3, ra
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw ft3, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rd : f20', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmv.w.x fs4, s4
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw fs4, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rd : f15']
Last Code Sequence : 
	-[0x800001c8]:fmv.w.x fa5, s1
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw fa5, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rd : f12']
Last Code Sequence : 
	-[0x800001ec]:fmv.w.x fa2, a7
	-[0x800001f0]:csrrs s5, fflags, zero
	-[0x800001f4]:fsw fa2, 0(s3)
Current Store : [0x800001f8] : sw s5, 4(s3) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rd : f26']
Last Code Sequence : 
	-[0x80000210]:fmv.w.x fs10, t0
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw fs10, 0(a5)
Current Store : [0x8000021c] : sw a7, 4(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rd : f25']
Last Code Sequence : 
	-[0x80000228]:fmv.w.x fs9, sp
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fs9, 8(a5)
Current Store : [0x80000234] : sw a7, 12(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rd : f23']
Last Code Sequence : 
	-[0x80000240]:fmv.w.x fs7, a3
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw fs7, 16(a5)
Current Store : [0x8000024c] : sw a7, 20(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rd : f13']
Last Code Sequence : 
	-[0x80000258]:fmv.w.x fa3, fp
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw fa3, 24(a5)
Current Store : [0x80000264] : sw a7, 28(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rd : f8']
Last Code Sequence : 
	-[0x80000270]:fmv.w.x fs0, a1
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fs0, 32(a5)
Current Store : [0x8000027c] : sw a7, 36(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rd : f18']
Last Code Sequence : 
	-[0x80000288]:fmv.w.x fs2, s9
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fs2, 40(a5)
Current Store : [0x80000294] : sw a7, 44(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rd : f6']
Last Code Sequence : 
	-[0x800002a0]:fmv.w.x ft6, s3
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw ft6, 48(a5)
Current Store : [0x800002ac] : sw a7, 52(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rd : f27']
Last Code Sequence : 
	-[0x800002b8]:fmv.w.x fs11, t2
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw fs11, 56(a5)
Current Store : [0x800002c4] : sw a7, 60(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rd : f10']
Last Code Sequence : 
	-[0x800002d0]:fmv.w.x fa0, s8
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw fa0, 64(a5)
Current Store : [0x800002dc] : sw a7, 68(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rd : f2']
Last Code Sequence : 
	-[0x800002e8]:fmv.w.x ft2, t4
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw ft2, 72(a5)
Current Store : [0x800002f4] : sw a7, 76(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rd : f4']
Last Code Sequence : 
	-[0x80000300]:fmv.w.x ft4, t6
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft4, 80(a5)
Current Store : [0x8000030c] : sw a7, 84(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rd : f22']
Last Code Sequence : 
	-[0x80000318]:fmv.w.x fs6, gp
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw fs6, 88(a5)
Current Store : [0x80000324] : sw a7, 92(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rd : f11']
Last Code Sequence : 
	-[0x80000330]:fmv.w.x fa1, t3
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw fa1, 96(a5)
Current Store : [0x8000033c] : sw a7, 100(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rd : f31']
Last Code Sequence : 
	-[0x80000348]:fmv.w.x ft11, a4
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw ft11, 104(a5)
Current Store : [0x80000354] : sw a7, 108(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rd : f1']
Last Code Sequence : 
	-[0x80000360]:fmv.w.x ft1, a2
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw ft1, 112(a5)
Current Store : [0x8000036c] : sw a7, 116(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rd : f19']
Last Code Sequence : 
	-[0x80000378]:fmv.w.x fs3, t5
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:fsw fs3, 120(a5)
Current Store : [0x80000384] : sw a7, 124(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rd : f29']
Last Code Sequence : 
	-[0x80000390]:fmv.w.x ft9, s7
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:fsw ft9, 128(a5)
Current Store : [0x8000039c] : sw a7, 132(a5) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rd : f28']
Last Code Sequence : 
	-[0x800003a8]:fmv.w.x ft8, s2
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft8, 136(a5)
Current Store : [0x800003b4] : sw a7, 140(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rd : f24']
Last Code Sequence : 
	-[0x800003cc]:fmv.w.x fs8, a5
	-[0x800003d0]:csrrs s5, fflags, zero
	-[0x800003d4]:fsw fs8, 0(s3)
Current Store : [0x800003d8] : sw s5, 4(s3) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rd : f7']
Last Code Sequence : 
	-[0x800003f0]:fmv.w.x ft7, tp
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw ft7, 0(a5)
Current Store : [0x800003fc] : sw a7, 4(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rd : f21']
Last Code Sequence : 
	-[0x80000408]:fmv.w.x fs5, s6
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fs5, 8(a5)
Current Store : [0x80000414] : sw a7, 12(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rd : f30']
Last Code Sequence : 
	-[0x80000420]:fmv.w.x ft10, s11
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw ft10, 16(a5)
Current Store : [0x8000042c] : sw a7, 20(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rd : f9']
Last Code Sequence : 
	-[0x80000444]:fmv.w.x fs1, a6
	-[0x80000448]:csrrs s5, fflags, zero
	-[0x8000044c]:fsw fs1, 0(s3)
Current Store : [0x80000450] : sw s5, 4(s3) -- Store: [0x80002300]:0x00000000




Last Coverpoint : ['rs1_val == 1227077728 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fmv.w.x fa1, a0
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa1, 0(a5)
Current Store : [0x80000474] : sw a7, 4(a5) -- Store: [0x80002308]:0x00000000





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

|s.no|        signature         |                                          coverpoints                                          |                                                    code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x800000F8|- opcode : fmv.w.x<br> - rs1 : x6<br> - rd : f5<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.w.x ft5, t1<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw ft5, 0(a5)<br>     |
|   2|[0x8000220c]<br>0x00000000|- rs1 : x21<br> - rd : f0<br> - rs1_val == -1227077728 and rm_val == 0  #nosat<br>             |[0x80000138]:fmv.w.x ft0, s5<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw ft0, 8(a5)<br>     |
|   3|[0x80002214]<br>0x00000000|- rs1 : x0<br> - rd : f17<br>                                                                  |[0x80000150]:fmv.w.x fa7, zero<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw fa7, 16(a5)<br>  |
|   4|[0x8000221c]<br>0xF56FF76D|- rs1 : x10<br> - rd : f14<br> - rs1_val == -2147483647 and rm_val == 0  #nosat<br>            |[0x80000168]:fmv.w.x fa4, a0<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw fa4, 24(a5)<br>    |
|   5|[0x80002224]<br>0x80002004|- rs1 : x26<br> - rd : f16<br> - rs1_val == 2147483647 and rm_val == 0  #nosat<br>             |[0x80000180]:fmv.w.x fa6, s10<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw fa6, 32(a5)<br>   |
|   6|[0x8000222c]<br>0x00000000|- rs1 : x1<br> - rd : f3<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                       |[0x80000198]:fmv.w.x ft3, ra<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw ft3, 40(a5)<br>    |
|   7|[0x80002234]<br>0x00000001|- rs1 : x20<br> - rd : f20<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                      |[0x800001b0]:fmv.w.x fs4, s4<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw fs4, 48(a5)<br>    |
|   8|[0x8000223c]<br>0x80002204|- rs1 : x9<br> - rd : f15<br>                                                                  |[0x800001c8]:fmv.w.x fa5, s1<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw fa5, 56(a5)<br>    |
|   9|[0x80002244]<br>0xD5BFDDB7|- rs1 : x17<br> - rd : f12<br>                                                                 |[0x800001ec]:fmv.w.x fa2, a7<br> [0x800001f0]:csrrs s5, fflags, zero<br> [0x800001f4]:fsw fa2, 0(s3)<br>     |
|  10|[0x8000224c]<br>0x7FFFFFFF|- rs1 : x5<br> - rd : f26<br>                                                                  |[0x80000210]:fmv.w.x fs10, t0<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw fs10, 0(a5)<br>   |
|  11|[0x80002254]<br>0xEDBEADFE|- rs1 : x2<br> - rd : f25<br>                                                                  |[0x80000228]:fmv.w.x fs9, sp<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fs9, 8(a5)<br>     |
|  12|[0x8000225c]<br>0xB6FAB7FB|- rs1 : x13<br> - rd : f23<br>                                                                 |[0x80000240]:fmv.w.x fs7, a3<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw fs7, 16(a5)<br>    |
|  13|[0x80002264]<br>0x00000000|- rs1 : x8<br> - rd : f13<br>                                                                  |[0x80000258]:fmv.w.x fa3, fp<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw fa3, 24(a5)<br>    |
|  14|[0x8000226c]<br>0x00000000|- rs1 : x11<br> - rd : f8<br>                                                                  |[0x80000270]:fmv.w.x fs0, a1<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fs0, 32(a5)<br>    |
|  15|[0x80002274]<br>0xDF56FF76|- rs1 : x25<br> - rd : f18<br>                                                                 |[0x80000288]:fmv.w.x fs2, s9<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fs2, 40(a5)<br>    |
|  16|[0x8000227c]<br>0x00000000|- rs1 : x19<br> - rd : f6<br>                                                                  |[0x800002a0]:fmv.w.x ft6, s3<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw ft6, 48(a5)<br>    |
|  17|[0x80002284]<br>0xBB6FAB7F|- rs1 : x7<br> - rd : f27<br>                                                                  |[0x800002b8]:fmv.w.x fs11, t2<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw fs11, 56(a5)<br>  |
|  18|[0x8000228c]<br>0x80000001|- rs1 : x24<br> - rd : f10<br>                                                                 |[0x800002d0]:fmv.w.x fa0, s8<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw fa0, 64(a5)<br>    |
|  19|[0x80002294]<br>0x00000000|- rs1 : x29<br> - rd : f2<br>                                                                  |[0x800002e8]:fmv.w.x ft2, t4<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw ft2, 72(a5)<br>    |
|  20|[0x8000229c]<br>0xBFDDB7D5|- rs1 : x31<br> - rd : f4<br>                                                                  |[0x80000300]:fmv.w.x ft4, t6<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft4, 80(a5)<br>    |
|  21|[0x800022a4]<br>0x6DF56FF7|- rs1 : x3<br> - rd : f22<br>                                                                  |[0x80000318]:fmv.w.x fs6, gp<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw fs6, 88(a5)<br>    |
|  22|[0x800022ac]<br>0x00000000|- rs1 : x28<br> - rd : f11<br>                                                                 |[0x80000330]:fmv.w.x fa1, t3<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw fa1, 96(a5)<br>    |
|  23|[0x800022b4]<br>0x00000000|- rs1 : x14<br> - rd : f31<br>                                                                 |[0x80000348]:fmv.w.x ft11, a4<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw ft11, 104(a5)<br> |
|  24|[0x800022bc]<br>0xFFFFFFFF|- rs1 : x12<br> - rd : f1<br>                                                                  |[0x80000360]:fmv.w.x ft1, a2<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw ft1, 112(a5)<br>   |
|  25|[0x800022c4]<br>0x00000000|- rs1 : x30<br> - rd : f19<br>                                                                 |[0x80000378]:fmv.w.x fs3, t5<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw fs3, 120(a5)<br>   |
|  26|[0x800022cc]<br>0x00000000|- rs1 : x23<br> - rd : f29<br>                                                                 |[0x80000390]:fmv.w.x ft9, s7<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsw ft9, 128(a5)<br>   |
|  27|[0x800022d4]<br>0x00000000|- rs1 : x18<br> - rd : f28<br>                                                                 |[0x800003a8]:fmv.w.x ft8, s2<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft8, 136(a5)<br>   |
|  28|[0x800022dc]<br>0x00000000|- rs1 : x15<br> - rd : f24<br>                                                                 |[0x800003cc]:fmv.w.x fs8, a5<br> [0x800003d0]:csrrs s5, fflags, zero<br> [0x800003d4]:fsw fs8, 0(s3)<br>     |
|  29|[0x800022e4]<br>0x00000000|- rs1 : x4<br> - rd : f7<br>                                                                   |[0x800003f0]:fmv.w.x ft7, tp<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw ft7, 0(a5)<br>     |
|  30|[0x800022ec]<br>0x00000000|- rs1 : x22<br> - rd : f21<br>                                                                 |[0x80000408]:fmv.w.x fs5, s6<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fs5, 8(a5)<br>     |
|  31|[0x800022f4]<br>0x00000000|- rs1 : x27<br> - rd : f30<br>                                                                 |[0x80000420]:fmv.w.x ft10, s11<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw ft10, 16(a5)<br> |
|  32|[0x800022fc]<br>0x00000000|- rs1 : x16<br> - rd : f9<br>                                                                  |[0x80000444]:fmv.w.x fs1, a6<br> [0x80000448]:csrrs s5, fflags, zero<br> [0x8000044c]:fsw fs1, 0(s3)<br>     |
|  33|[0x80002304]<br>0x00000000|- rs1_val == 1227077728 and rm_val == 0  #nosat<br>                                            |[0x80000468]:fmv.w.x fa1, a0<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa1, 0(a5)<br>     |
