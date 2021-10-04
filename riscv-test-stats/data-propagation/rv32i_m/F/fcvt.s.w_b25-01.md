
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004c0')]      |
| SIG_REGION                | [('0x80002204', '0x80002324', '72 words')]      |
| COV_LABELS                | fcvt.s.w_b25      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fcvt.s.w_b25-01.S/ref.S    |
| Total Number of coverpoints| 104     |
| Total Coverpoints Hit     | 100      |
| Total Signature Updates   | 72      |
| STAT1                     | 35      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 36     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000498]:fcvt.s.w fa1, a0, dyn
      [0x8000049c]:csrrs a7, fflags, zero
      [0x800004a0]:fsw fa1, 56(a5)
 -- Signature Address: 0x80002314 Data: 0xB6DC47A0
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.s.w
      - rs1 : x10
      - rd : f11
      - rs1_val == 0 and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.s.w', 'rs1 : x14', 'rd : f21', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.s.w fs5, a4, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw fs5, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rd : f25', 'rs1_val == -1227077728 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.s.w fs9, a1, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:fsw fs9, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rd : f30', 'rs1_val == -1227077728 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.s.w ft10, a3, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:fsw ft10, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rd : f0', 'rs1_val == -1227077728 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.s.w ft0, s3, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw ft0, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rd : f15', 'rs1_val == -1227077728 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.s.w fa5, sp, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw fa5, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rd : f6', 'rs1_val == -1227077728 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.s.w ft6, s4, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:fsw ft6, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rd : f8', 'rs1_val == 1227077728 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001bc]:fcvt.s.w fs0, a7, dyn
	-[0x800001c0]:csrrs s5, fflags, zero
	-[0x800001c4]:fsw fs0, 0(s3)
Current Store : [0x800001c8] : sw s5, 4(s3) -- Store: [0x80002238]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rd : f3', 'rs1_val == 1227077728 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.s.w ft3, s8, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw ft3, 0(a5)
Current Store : [0x800001ec] : sw a7, 4(a5) -- Store: [0x80002240]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rd : f22', 'rs1_val == 1227077728 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fcvt.s.w fs6, t6, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:fsw fs6, 8(a5)
Current Store : [0x80000204] : sw a7, 12(a5) -- Store: [0x80002248]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rd : f29', 'rs1_val == 1227077728 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000210]:fcvt.s.w ft9, s7, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:fsw ft9, 16(a5)
Current Store : [0x8000021c] : sw a7, 20(a5) -- Store: [0x80002250]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rd : f16', 'rs1_val == 1227077728 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fcvt.s.w fa6, t0, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fa6, 24(a5)
Current Store : [0x80000234] : sw a7, 28(a5) -- Store: [0x80002258]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rd : f11', 'rs1_val == -2147483647 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000240]:fcvt.s.w fa1, fp, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:fsw fa1, 32(a5)
Current Store : [0x8000024c] : sw a7, 36(a5) -- Store: [0x80002260]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rd : f13', 'rs1_val == -2147483647 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000258]:fcvt.s.w fa3, t1, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw fa3, 40(a5)
Current Store : [0x80000264] : sw a7, 44(a5) -- Store: [0x80002268]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rd : f20', 'rs1_val == -2147483647 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000270]:fcvt.s.w fs4, tp, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw fs4, 48(a5)
Current Store : [0x8000027c] : sw a7, 52(a5) -- Store: [0x80002270]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rd : f17', 'rs1_val == -2147483647 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000288]:fcvt.s.w fa7, a0, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fa7, 56(a5)
Current Store : [0x80000294] : sw a7, 60(a5) -- Store: [0x80002278]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rd : f9', 'rs1_val == -2147483647 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fcvt.s.w fs1, t4, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:fsw fs1, 64(a5)
Current Store : [0x800002ac] : sw a7, 68(a5) -- Store: [0x80002280]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rd : f2', 'rs1_val == 2147483647 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fcvt.s.w ft2, s5, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:fsw ft2, 72(a5)
Current Store : [0x800002c4] : sw a7, 76(a5) -- Store: [0x80002288]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rd : f12', 'rs1_val == 2147483647 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fcvt.s.w fa2, s10, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:fsw fa2, 80(a5)
Current Store : [0x800002dc] : sw a7, 84(a5) -- Store: [0x80002290]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rd : f24', 'rs1_val == 2147483647 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fcvt.s.w fs8, s11, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw fs8, 88(a5)
Current Store : [0x800002f4] : sw a7, 92(a5) -- Store: [0x80002298]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rd : f28', 'rs1_val == 2147483647 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000300]:fcvt.s.w ft8, t5, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft8, 96(a5)
Current Store : [0x8000030c] : sw a7, 100(a5) -- Store: [0x800022a0]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rd : f1', 'rs1_val == 2147483647 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.s.w ft1, t3, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:fsw ft1, 104(a5)
Current Store : [0x80000324] : sw a7, 108(a5) -- Store: [0x800022a8]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rd : f26', 'rs1_val == -1 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.s.w fs10, t2, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:fsw fs10, 112(a5)
Current Store : [0x8000033c] : sw a7, 116(a5) -- Store: [0x800022b0]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rd : f7', 'rs1_val == -1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000354]:fcvt.s.w ft7, a5, dyn
	-[0x80000358]:csrrs s5, fflags, zero
	-[0x8000035c]:fsw ft7, 0(s3)
Current Store : [0x80000360] : sw s5, 4(s3) -- Store: [0x800022b8]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rd : f23', 'rs1_val == -1 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000378]:fcvt.s.w fs7, s2, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:fsw fs7, 0(a5)
Current Store : [0x80000384] : sw a7, 4(a5) -- Store: [0x800022c0]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rd : f10', 'rs1_val == -1 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000390]:fcvt.s.w fa0, ra, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:fsw fa0, 8(a5)
Current Store : [0x8000039c] : sw a7, 12(a5) -- Store: [0x800022c8]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rd : f27', 'rs1_val == -1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fcvt.s.w fs11, s9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs11, 16(a5)
Current Store : [0x800003b4] : sw a7, 20(a5) -- Store: [0x800022d0]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rd : f19', 'rs1_val == 1 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003cc]:fcvt.s.w fs3, a6, dyn
	-[0x800003d0]:csrrs s5, fflags, zero
	-[0x800003d4]:fsw fs3, 0(s3)
Current Store : [0x800003d8] : sw s5, 4(s3) -- Store: [0x800022d8]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rd : f5', 'rs1_val == 1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fcvt.s.w ft5, gp, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:fsw ft5, 0(a5)
Current Store : [0x800003fc] : sw a7, 4(a5) -- Store: [0x800022e0]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rd : f18', 'rs1_val == 1 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000408]:fcvt.s.w fs2, s1, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fs2, 8(a5)
Current Store : [0x80000414] : sw a7, 12(a5) -- Store: [0x800022e8]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rd : f4', 'rs1_val == 0 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000420]:fcvt.s.w ft4, zero, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw ft4, 16(a5)
Current Store : [0x8000042c] : sw a7, 20(a5) -- Store: [0x800022f0]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rd : f14', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fcvt.s.w fa4, a2, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:fsw fa4, 24(a5)
Current Store : [0x80000444] : sw a7, 28(a5) -- Store: [0x800022f8]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rd : f31', 'rs1_val == 0 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000450]:fcvt.s.w ft11, s6, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw ft11, 32(a5)
Current Store : [0x8000045c] : sw a7, 36(a5) -- Store: [0x80002300]:0x00000001




Last Coverpoint : ['rs1_val == 0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.s.w fa1, a0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa1, 40(a5)
Current Store : [0x80000474] : sw a7, 44(a5) -- Store: [0x80002308]:0x00000001




Last Coverpoint : ['rs1_val == 0 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000480]:fcvt.s.w fa1, a0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsw fa1, 48(a5)
Current Store : [0x8000048c] : sw a7, 52(a5) -- Store: [0x80002310]:0x00000001




Last Coverpoint : ['opcode : fcvt.s.w', 'rs1 : x10', 'rd : f11', 'rs1_val == 0 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000498]:fcvt.s.w fa1, a0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:fsw fa1, 56(a5)
Current Store : [0x800004a4] : sw a7, 60(a5) -- Store: [0x80002318]:0x00000001




Last Coverpoint : ['rs1_val == 1 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fcvt.s.w fa1, a0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:fsw fa1, 64(a5)
Current Store : [0x800004bc] : sw a7, 68(a5) -- Store: [0x80002320]:0x00000001





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

|s.no|        signature         |                                           coverpoints                                            |                                                       code                                                        |
|---:|--------------------------|--------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xDBEADFEE|- opcode : fcvt.s.w<br> - rs1 : x14<br> - rd : f21<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.s.w fs5, a4, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw fs5, 0(a5)<br>     |
|   2|[0x8000220c]<br>0xEDBEADFE|- rs1 : x11<br> - rd : f25<br> - rs1_val == -1227077728 and rm_val == 4  #nosat<br>               |[0x80000138]:fcvt.s.w fs9, a1, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:fsw fs9, 8(a5)<br>     |
|   3|[0x80002214]<br>0xF76DF56F|- rs1 : x13<br> - rd : f30<br> - rs1_val == -1227077728 and rm_val == 3  #nosat<br>               |[0x80000150]:fcvt.s.w ft10, a3, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:fsw ft10, 16(a5)<br>  |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x19<br> - rd : f0<br> - rs1_val == -1227077728 and rm_val == 2  #nosat<br>                |[0x80000168]:fcvt.s.w ft0, s3, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw ft0, 24(a5)<br>    |
|   5|[0x80002224]<br>0x80002204|- rs1 : x2<br> - rd : f15<br> - rs1_val == -1227077728 and rm_val == 1  #nosat<br>                |[0x80000180]:fcvt.s.w fa5, sp, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw fa5, 32(a5)<br>    |
|   6|[0x8000222c]<br>0x80002000|- rs1 : x20<br> - rd : f6<br> - rs1_val == -1227077728 and rm_val == 0  #nosat<br>                |[0x80000198]:fcvt.s.w ft6, s4, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:fsw ft6, 40(a5)<br>    |
|   7|[0x80002234]<br>0x5BFDDB7D|- rs1 : x17<br> - rd : f8<br> - rs1_val == 1227077728 and rm_val == 4  #nosat<br>                 |[0x800001bc]:fcvt.s.w fs0, a7, dyn<br> [0x800001c0]:csrrs s5, fflags, zero<br> [0x800001c4]:fsw fs0, 0(s3)<br>     |
|   8|[0x8000223c]<br>0x00000000|- rs1 : x24<br> - rd : f3<br> - rs1_val == 1227077728 and rm_val == 3  #nosat<br>                 |[0x800001e0]:fcvt.s.w ft3, s8, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw ft3, 0(a5)<br>     |
|   9|[0x80002244]<br>0x6DF56FF7|- rs1 : x31<br> - rd : f22<br> - rs1_val == 1227077728 and rm_val == 2  #nosat<br>                |[0x800001f8]:fcvt.s.w fs6, t6, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:fsw fs6, 8(a5)<br>     |
|  10|[0x8000224c]<br>0xEEDBEADF|- rs1 : x23<br> - rd : f29<br> - rs1_val == 1227077728 and rm_val == 1  #nosat<br>                |[0x80000210]:fcvt.s.w ft9, s7, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:fsw ft9, 16(a5)<br>    |
|  11|[0x80002254]<br>0x80002004|- rs1 : x5<br> - rd : f16<br> - rs1_val == 1227077728 and rm_val == 0  #nosat<br>                 |[0x80000228]:fcvt.s.w fa6, t0, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fa6, 24(a5)<br>    |
|  12|[0x8000225c]<br>0xB6DC47A0|- rs1 : x8<br> - rd : f11<br> - rs1_val == -2147483647 and rm_val == 4  #nosat<br>                |[0x80000240]:fcvt.s.w fa1, fp, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw fa1, 32(a5)<br>    |
|  13|[0x80002264]<br>0xB6DC47A0|- rs1 : x6<br> - rd : f13<br> - rs1_val == -2147483647 and rm_val == 3  #nosat<br>                |[0x80000258]:fcvt.s.w fa3, t1, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw fa3, 40(a5)<br>    |
|  14|[0x8000226c]<br>0x80002004|- rs1 : x4<br> - rd : f20<br> - rs1_val == -2147483647 and rm_val == 2  #nosat<br>                |[0x80000270]:fcvt.s.w fs4, tp, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw fs4, 48(a5)<br>    |
|  15|[0x80002274]<br>0x00000001|- rs1 : x10<br> - rd : f17<br> - rs1_val == -2147483647 and rm_val == 1  #nosat<br>               |[0x80000288]:fcvt.s.w fa7, a0, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fa7, 56(a5)<br>    |
|  16|[0x8000227c]<br>0xADFEEDBE|- rs1 : x29<br> - rd : f9<br> - rs1_val == -2147483647 and rm_val == 0  #nosat<br>                |[0x800002a0]:fcvt.s.w fs1, t4, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw fs1, 64(a5)<br>    |
|  17|[0x80002284]<br>0xB6DC47A0|- rs1 : x21<br> - rd : f2<br> - rs1_val == 2147483647 and rm_val == 4  #nosat<br>                 |[0x800002b8]:fcvt.s.w ft2, s5, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:fsw ft2, 72(a5)<br>    |
|  18|[0x8000228c]<br>0xD5BFDDB7|- rs1 : x26<br> - rd : f12<br> - rs1_val == 2147483647 and rm_val == 3  #nosat<br>                |[0x800002d0]:fcvt.s.w fa2, s10, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw fa2, 80(a5)<br>   |
|  19|[0x80002294]<br>0x4923B860|- rs1 : x27<br> - rd : f24<br> - rs1_val == 2147483647 and rm_val == 2  #nosat<br>                |[0x800002e8]:fcvt.s.w fs8, s11, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw fs8, 88(a5)<br>   |
|  20|[0x8000229c]<br>0xDDB7D5BF|- rs1 : x30<br> - rd : f28<br> - rs1_val == 2147483647 and rm_val == 1  #nosat<br>                |[0x80000300]:fcvt.s.w ft8, t5, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft8, 96(a5)<br>    |
|  21|[0x800022a4]<br>0xFEEDBEAD|- rs1 : x28<br> - rd : f1<br> - rs1_val == 2147483647 and rm_val == 0  #nosat<br>                 |[0x80000318]:fcvt.s.w ft1, t3, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:fsw ft1, 104(a5)<br>   |
|  22|[0x800022ac]<br>0x7FFFFFFF|- rs1 : x7<br> - rd : f26<br> - rs1_val == -1 and rm_val == 4  #nosat<br>                         |[0x80000330]:fcvt.s.w fs10, t2, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:fsw fs10, 112(a5)<br> |
|  23|[0x800022b4]<br>0xFFFFFFFF|- rs1 : x15<br> - rd : f7<br> - rs1_val == -1 and rm_val == 3  #nosat<br>                         |[0x80000354]:fcvt.s.w ft7, a5, dyn<br> [0x80000358]:csrrs s5, fflags, zero<br> [0x8000035c]:fsw ft7, 0(s3)<br>     |
|  24|[0x800022bc]<br>0x4923B860|- rs1 : x18<br> - rd : f23<br> - rs1_val == -1 and rm_val == 2  #nosat<br>                        |[0x80000378]:fcvt.s.w fs7, s2, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw fs7, 0(a5)<br>     |
|  25|[0x800022c4]<br>0x80000001|- rs1 : x1<br> - rd : f10<br> - rs1_val == -1 and rm_val == 1  #nosat<br>                         |[0x80000390]:fcvt.s.w fa0, ra, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:fsw fa0, 8(a5)<br>     |
|  26|[0x800022cc]<br>0x7FFFFFFF|- rs1 : x25<br> - rd : f27<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                        |[0x800003a8]:fcvt.s.w fs11, s9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs11, 16(a5)<br>  |
|  27|[0x800022d4]<br>0x800022D4|- rs1 : x16<br> - rd : f19<br> - rs1_val == 1 and rm_val == 4  #nosat<br>                         |[0x800003cc]:fcvt.s.w fs3, a6, dyn<br> [0x800003d0]:csrrs s5, fflags, zero<br> [0x800003d4]:fsw fs3, 0(s3)<br>     |
|  28|[0x800022dc]<br>0x4923B860|- rs1 : x3<br> - rd : f5<br> - rs1_val == 1 and rm_val == 3  #nosat<br>                           |[0x800003f0]:fcvt.s.w ft5, gp, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:fsw ft5, 0(a5)<br>     |
|  29|[0x800022e4]<br>0xFFFFFFFF|- rs1 : x9<br> - rd : f18<br> - rs1_val == 1 and rm_val == 2  #nosat<br>                          |[0x80000408]:fcvt.s.w fs2, s1, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fs2, 8(a5)<br>     |
|  30|[0x800022ec]<br>0x80000001|- rs1 : x0<br> - rd : f4<br> - rs1_val == 0 and rm_val == 1  #nosat<br>                           |[0x80000420]:fcvt.s.w ft4, zero, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw ft4, 16(a5)<br>  |
|  31|[0x800022f4]<br>0x00000000|- rs1 : x12<br> - rd : f14<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                         |[0x80000438]:fcvt.s.w fa4, a2, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:fsw fa4, 24(a5)<br>    |
|  32|[0x800022fc]<br>0x4923B860|- rs1 : x22<br> - rd : f31<br> - rs1_val == 0 and rm_val == 4  #nosat<br>                         |[0x80000450]:fcvt.s.w ft11, s6, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw ft11, 32(a5)<br>  |
|  33|[0x80002304]<br>0xB6DC47A0|- rs1_val == 0 and rm_val == 3  #nosat<br>                                                        |[0x80000468]:fcvt.s.w fa1, a0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa1, 40(a5)<br>    |
|  34|[0x8000230c]<br>0xB6DC47A0|- rs1_val == 0 and rm_val == 2  #nosat<br>                                                        |[0x80000480]:fcvt.s.w fa1, a0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsw fa1, 48(a5)<br>    |
|  35|[0x8000231c]<br>0xB6DC47A0|- rs1_val == 1 and rm_val == 1  #nosat<br>                                                        |[0x800004b0]:fcvt.s.w fa1, a0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:fsw fa1, 64(a5)<br>    |
