
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
| SIG_REGION                | [('0x80002204', '0x8000230c', '66 words')]      |
| COV_LABELS                | fmv.w.x_b26      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmv.w.x_b26-01.S/ref.S    |
| Total Number of coverpoints| 101     |
| Total Coverpoints Hit     | 97      |
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
      [0x80000450]:fmv.w.x fa1, a0
      [0x80000454]:csrrs a7, fflags, zero
      [0x80000458]:fsw fa1, 48(a5)
 -- Signature Address: 0x80002304 Data: 0x001C361D
 -- Redundant Coverpoints hit by the op
      - opcode : fmv.w.x
      - rs1 : x10
      - rd : f11
      - rs1_val == 0 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmv.w.x', 'rs1 : x0', 'rd : f18', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.w.x fs2, zero
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw fs2, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rd : f0', 'rs1_val == 1587807073 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fmv.w.x ft0, t5
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw ft0, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rd : f1', 'rs1_val == 1027494066 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fmv.w.x ft1, t2
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw ft1, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rd : f15', 'rs1_val == 339827553 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fmv.w.x fa5, a3
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw fa5, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rd : f5', 'rs1_val == 231549045 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fmv.w.x ft5, t4
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw ft5, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rd : f20', 'rs1_val == 107790943 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fmv.w.x fs4, tp
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw fs4, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rd : f28', 'rs1_val == 45276376 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001bc]:fmv.w.x ft8, a6
	-[0x800001c0]:csrrs s5, fflags, zero
	-[0x800001c4]:fsw ft8, 0(s3)
Current Store : [0x800001c8] : sw s5, 4(s3) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rd : f16', 'rs1_val == 32105925 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fmv.w.x fa6, s4
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw fa6, 0(a5)
Current Store : [0x800001ec] : sw a7, 4(a5) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rd : f11', 'rs1_val == 12789625 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fmv.w.x fa1, s9
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:fsw fa1, 8(a5)
Current Store : [0x80000204] : sw a7, 12(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rd : f9', 'rs1_val == 6573466 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000210]:fmv.w.x fs1, a2
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw fs1, 16(a5)
Current Store : [0x8000021c] : sw a7, 20(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rd : f12', 'rs1_val == 3864061 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fmv.w.x fa2, s7
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fa2, 24(a5)
Current Store : [0x80000234] : sw a7, 28(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rd : f17', 'rs1_val == 1848861 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fmv.w.x fa7, a1
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw fa7, 32(a5)
Current Store : [0x8000024c] : sw a7, 36(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rd : f30', 'rs1_val == 896618 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fmv.w.x ft10, a4
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft10, 40(a5)
Current Store : [0x80000264] : sw a7, 44(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rd : f21', 'rs1_val == 334857 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fmv.w.x fs5, s11
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fs5, 48(a5)
Current Store : [0x8000027c] : sw a7, 52(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rd : f31', 'rs1_val == 241276 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fmv.w.x ft11, s3
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw ft11, 56(a5)
Current Store : [0x80000294] : sw a7, 60(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rd : f7', 'rs1_val == 71376 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fmv.w.x ft7, sp
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw ft7, 64(a5)
Current Store : [0x800002ac] : sw a7, 68(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rd : f22', 'rs1_val == 56436 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fmv.w.x fs6, s10
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw fs6, 72(a5)
Current Store : [0x800002c4] : sw a7, 76(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rd : f2', 'rs1_val == 24575 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fmv.w.x ft2, t3
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw ft2, 80(a5)
Current Store : [0x800002dc] : sw a7, 84(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rd : f8', 'rs1_val == 9438 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fmv.w.x fs0, s5
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw fs0, 88(a5)
Current Store : [0x800002f4] : sw a7, 92(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rd : f26', 'rs1_val == 6781 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fmv.w.x fs10, s1
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fs10, 96(a5)
Current Store : [0x8000030c] : sw a7, 100(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rd : f27', 'rs1_val == 4055 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fmv.w.x fs11, s2
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw fs11, 104(a5)
Current Store : [0x80000324] : sw a7, 108(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rd : f4', 'rs1_val == 1094 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fmv.w.x ft4, gp
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw ft4, 112(a5)
Current Store : [0x8000033c] : sw a7, 116(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rd : f3', 'rs1_val == 676 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fmv.w.x ft3, t1
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw ft3, 120(a5)
Current Store : [0x80000354] : sw a7, 124(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rd : f23', 'rs1_val == 398 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fmv.w.x fs7, fp
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw fs7, 128(a5)
Current Store : [0x8000036c] : sw a7, 132(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rd : f29', 'rs1_val == 253 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000384]:fmv.w.x ft9, a5
	-[0x80000388]:csrrs s5, fflags, zero
	-[0x8000038c]:fsw ft9, 0(s3)
Current Store : [0x80000390] : sw s5, 4(s3) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rd : f6', 'rs1_val == 123 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000039c]:fmv.w.x ft6, a7
	-[0x800003a0]:csrrs s5, fflags, zero
	-[0x800003a4]:fsw ft6, 8(s3)
Current Store : [0x800003a8] : sw s5, 12(s3) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rd : f10', 'rs1_val == 45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fmv.w.x fa0, a0
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsw fa0, 0(a5)
Current Store : [0x800003cc] : sw a7, 4(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rd : f13', 'rs1_val == 16 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fmv.w.x fa3, s6
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsw fa3, 8(a5)
Current Store : [0x800003e4] : sw a7, 12(a5) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rd : f19', 'rs1_val == 15 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fmv.w.x fs3, t0
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw fs3, 16(a5)
Current Store : [0x800003fc] : sw a7, 20(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rd : f14', 'rs1_val == 7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000408]:fmv.w.x fa4, t6
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fa4, 24(a5)
Current Store : [0x80000414] : sw a7, 28(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rd : f24', 'rs1_val == 2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000420]:fmv.w.x fs8, ra
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw fs8, 32(a5)
Current Store : [0x8000042c] : sw a7, 36(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rd : f25', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fmv.w.x fs9, s8
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:fsw fs9, 40(a5)
Current Store : [0x80000444] : sw a7, 44(a5) -- Store: [0x80002300]:0x00000000




Last Coverpoint : ['opcode : fmv.w.x', 'rs1 : x10', 'rd : f11', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fmv.w.x fa1, a0
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw fa1, 48(a5)
Current Store : [0x8000045c] : sw a7, 52(a5) -- Store: [0x80002308]:0x00000000





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

|s.no|        signature         |                                          coverpoints                                           |                                                    code                                                     |
|---:|--------------------------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xDF56FF76|- opcode : fmv.w.x<br> - rs1 : x0<br> - rd : f18<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.w.x fs2, zero<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw fs2, 0(a5)<br>   |
|   2|[0x8000220c]<br>0x00000000|- rs1 : x30<br> - rd : f0<br> - rs1_val == 1587807073 and rm_val == 0  #nosat<br>               |[0x80000138]:fmv.w.x ft0, t5<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw ft0, 8(a5)<br>     |
|   3|[0x80002214]<br>0xFEEDBEAD|- rs1 : x7<br> - rd : f1<br> - rs1_val == 1027494066 and rm_val == 0  #nosat<br>                |[0x80000150]:fmv.w.x ft1, t2<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw ft1, 16(a5)<br>    |
|   4|[0x8000221c]<br>0x80002204|- rs1 : x13<br> - rd : f15<br> - rs1_val == 339827553 and rm_val == 0  #nosat<br>               |[0x80000168]:fmv.w.x fa5, a3<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw fa5, 24(a5)<br>    |
|   5|[0x80002224]<br>0x800000F8|- rs1 : x29<br> - rd : f5<br> - rs1_val == 231549045 and rm_val == 0  #nosat<br>                |[0x80000180]:fmv.w.x ft5, t4<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw ft5, 32(a5)<br>    |
|   6|[0x8000222c]<br>0xB7D5BFDD|- rs1 : x4<br> - rd : f20<br> - rs1_val == 107790943 and rm_val == 0  #nosat<br>                |[0x80000198]:fmv.w.x fs4, tp<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw fs4, 40(a5)<br>    |
|   7|[0x80002234]<br>0xDDB7D5BF|- rs1 : x16<br> - rd : f28<br> - rs1_val == 45276376 and rm_val == 0  #nosat<br>                |[0x800001bc]:fmv.w.x ft8, a6<br> [0x800001c0]:csrrs s5, fflags, zero<br> [0x800001c4]:fsw ft8, 0(s3)<br>     |
|   8|[0x8000223c]<br>0x80002004|- rs1 : x20<br> - rd : f16<br> - rs1_val == 32105925 and rm_val == 0  #nosat<br>                |[0x800001e0]:fmv.w.x fa6, s4<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw fa6, 0(a5)<br>     |
|   9|[0x80002244]<br>0xAB7FBB6F|- rs1 : x25<br> - rd : f11<br> - rs1_val == 12789625 and rm_val == 0  #nosat<br>                |[0x800001f8]:fmv.w.x fa1, s9<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsw fa1, 8(a5)<br>     |
|  10|[0x8000224c]<br>0xADFEEDBE|- rs1 : x12<br> - rd : f9<br> - rs1_val == 6573466 and rm_val == 0  #nosat<br>                  |[0x80000210]:fmv.w.x fs1, a2<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw fs1, 16(a5)<br>    |
|  11|[0x80002254]<br>0x00644D9A|- rs1 : x23<br> - rd : f12<br> - rs1_val == 3864061 and rm_val == 0  #nosat<br>                 |[0x80000228]:fmv.w.x fa2, s7<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fa2, 24(a5)<br>    |
|  12|[0x8000225c]<br>0x00000000|- rs1 : x11<br> - rd : f17<br> - rs1_val == 1848861 and rm_val == 0  #nosat<br>                 |[0x80000240]:fmv.w.x fa7, a1<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw fa7, 32(a5)<br>    |
|  13|[0x80002264]<br>0x5EA40361|- rs1 : x14<br> - rd : f30<br> - rs1_val == 896618 and rm_val == 0  #nosat<br>                  |[0x80000258]:fmv.w.x ft10, a4<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft10, 40(a5)<br>  |
|  14|[0x8000226c]<br>0x00000000|- rs1 : x27<br> - rd : f21<br> - rs1_val == 334857 and rm_val == 0  #nosat<br>                  |[0x80000270]:fmv.w.x fs5, s11<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fs5, 48(a5)<br>   |
|  15|[0x80002274]<br>0xFBB6FAB7|- rs1 : x19<br> - rd : f31<br> - rs1_val == 241276 and rm_val == 0  #nosat<br>                  |[0x80000288]:fmv.w.x ft11, s3<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw ft11, 56(a5)<br>  |
|  16|[0x8000227c]<br>0x3D3E50B2|- rs1 : x2<br> - rd : f7<br> - rs1_val == 71376 and rm_val == 0  #nosat<br>                     |[0x800002a0]:fmv.w.x ft7, sp<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw ft7, 64(a5)<br>    |
|  17|[0x80002284]<br>0x6DF56FF7|- rs1 : x26<br> - rd : f22<br> - rs1_val == 56436 and rm_val == 0  #nosat<br>                   |[0x800002b8]:fmv.w.x fs6, s10<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw fs6, 72(a5)<br>   |
|  18|[0x8000228c]<br>0x000116D0|- rs1 : x28<br> - rd : f2<br> - rs1_val == 24575 and rm_val == 0  #nosat<br>                    |[0x800002d0]:fmv.w.x ft2, t3<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw ft2, 80(a5)<br>    |
|  19|[0x80002294]<br>0x5BFDDB7D|- rs1 : x21<br> - rd : f8<br> - rs1_val == 9438 and rm_val == 0  #nosat<br>                     |[0x800002e8]:fmv.w.x fs0, s5<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw fs0, 88(a5)<br>    |
|  20|[0x8000229c]<br>0x0000DC74|- rs1 : x9<br> - rd : f26<br> - rs1_val == 6781 and rm_val == 0  #nosat<br>                     |[0x80000300]:fmv.w.x fs10, s1<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fs10, 96(a5)<br>  |
|  21|[0x800022a4]<br>0x00051C09|- rs1 : x18<br> - rd : f27<br> - rs1_val == 4055 and rm_val == 0  #nosat<br>                    |[0x80000318]:fmv.w.x fs11, s2<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw fs11, 104(a5)<br> |
|  22|[0x800022ac]<br>0x066CC25F|- rs1 : x3<br> - rd : f4<br> - rs1_val == 1094 and rm_val == 0  #nosat<br>                      |[0x80000330]:fmv.w.x ft4, gp<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw ft4, 112(a5)<br>   |
|  23|[0x800022b4]<br>0x00000446|- rs1 : x6<br> - rd : f3<br> - rs1_val == 676 and rm_val == 0  #nosat<br>                       |[0x80000348]:fmv.w.x ft3, t1<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw ft3, 120(a5)<br>   |
|  24|[0x800022bc]<br>0x003AF5FD|- rs1 : x8<br> - rd : f23<br> - rs1_val == 398 and rm_val == 0  #nosat<br>                      |[0x80000360]:fmv.w.x fs7, fp<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fs7, 128(a5)<br>   |
|  25|[0x800022c4]<br>0x0DCD2875|- rs1 : x15<br> - rd : f29<br> - rs1_val == 253 and rm_val == 0  #nosat<br>                     |[0x80000384]:fmv.w.x ft9, a5<br> [0x80000388]:csrrs s5, fflags, zero<br> [0x8000038c]:fsw ft9, 0(s3)<br>     |
|  26|[0x800022cc]<br>0x000002A4|- rs1 : x17<br> - rd : f6<br> - rs1_val == 123 and rm_val == 0  #nosat<br>                      |[0x8000039c]:fmv.w.x ft6, a7<br> [0x800003a0]:csrrs s5, fflags, zero<br> [0x800003a4]:fsw ft6, 8(s3)<br>     |
|  27|[0x800022d4]<br>0x0000002D|- rs1 : x10<br> - rd : f10<br> - rs1_val == 45 and rm_val == 0  #nosat<br>                      |[0x800003c0]:fmv.w.x fa0, a0<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw fa0, 0(a5)<br>     |
|  28|[0x800022dc]<br>0x14415B61|- rs1 : x22<br> - rd : f13<br> - rs1_val == 16 and rm_val == 0  #nosat<br>                      |[0x800003d8]:fmv.w.x fa3, s6<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsw fa3, 8(a5)<br>     |
|  29|[0x800022e4]<br>0x800022C4|- rs1 : x5<br> - rd : f19<br> - rs1_val == 15 and rm_val == 0  #nosat<br>                       |[0x800003f0]:fmv.w.x fs3, t0<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw fs3, 16(a5)<br>    |
|  30|[0x800022ec]<br>0x000DAE6A|- rs1 : x31<br> - rd : f14<br> - rs1_val == 7 and rm_val == 0  #nosat<br>                       |[0x80000408]:fmv.w.x fa4, t6<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fa4, 24(a5)<br>    |
|  31|[0x800022f4]<br>0xDB7D5BFD|- rs1 : x1<br> - rd : f24<br> - rs1_val == 2 and rm_val == 0  #nosat<br>                        |[0x80000420]:fmv.w.x fs8, ra<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fs8, 32(a5)<br>    |
|  32|[0x800022fc]<br>0x00C32779|- rs1 : x24<br> - rd : f25<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                       |[0x80000438]:fmv.w.x fs9, s8<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsw fs9, 40(a5)<br>    |
