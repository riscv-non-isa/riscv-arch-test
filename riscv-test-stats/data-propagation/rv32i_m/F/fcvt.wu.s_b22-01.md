
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000540')]      |
| SIG_REGION                | [('0x80002204', '0x8000234c', '82 words')]      |
| COV_LABELS                | fcvt.wu.s_b22      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fcvt.wu.s_b22-01.S/ref.S    |
| Total Number of coverpoints| 109     |
| Total Coverpoints Hit     | 105      |
| Total Signature Updates   | 82      |
| STAT1                     | 40      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 41     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000528]:fcvt.wu.s a1, fa0, dyn
      [0x8000052c]:csrrs a7, fflags, zero
      [0x80000530]:sw a1, 144(a5)
 -- Signature Address: 0x80002344 Data: 0x000019A7
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.wu.s
      - rd : x11
      - rs1 : f10
      - fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x9', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.wu.s s1, fa6, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sw s1, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000001




Last Coverpoint : ['rd : x27', 'rs1 : f25', 'fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.wu.s s11, fs9, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sw s11, 8(a5)
Current Store : [0x80000144] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000011




Last Coverpoint : ['rd : x25', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.wu.s s9, ft5, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sw s9, 16(a5)
Current Store : [0x8000015c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000011




Last Coverpoint : ['rd : x30', 'rs1 : f3', 'fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.wu.s t5, ft3, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sw t5, 24(a5)
Current Store : [0x80000174] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000011




Last Coverpoint : ['rd : x29', 'rs1 : f18', 'fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.wu.s t4, fs2, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sw t4, 32(a5)
Current Store : [0x8000018c] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000011




Last Coverpoint : ['rd : x5', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.wu.s t0, fs11, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sw t0, 40(a5)
Current Store : [0x800001a4] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000011




Last Coverpoint : ['rd : x21', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fcvt.wu.s s5, fs10, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sw s5, 48(a5)
Current Store : [0x800001bc] : sw a7, 52(a5) -- Store: [0x80002238]:0x00000011




Last Coverpoint : ['rd : x7', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.wu.s t2, fs4, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sw t2, 56(a5)
Current Store : [0x800001d4] : sw a7, 60(a5) -- Store: [0x80002240]:0x00000011




Last Coverpoint : ['rd : x11', 'rs1 : f12', 'fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.wu.s a1, fa2, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sw a1, 64(a5)
Current Store : [0x800001ec] : sw a7, 68(a5) -- Store: [0x80002248]:0x00000011




Last Coverpoint : ['rd : x17', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fcvt.wu.s a7, fs1, dyn
	-[0x80000208]:csrrs s5, fflags, zero
	-[0x8000020c]:sw a7, 0(s3)
Current Store : [0x80000210] : sw s5, 4(s3) -- Store: [0x80002250]:0x00000011




Last Coverpoint : ['rd : x18', 'rs1 : f23', 'fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fcvt.wu.s s2, fs7, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sw s2, 0(a5)
Current Store : [0x80000234] : sw a7, 4(a5) -- Store: [0x80002258]:0x00000011




Last Coverpoint : ['rd : x10', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fcvt.wu.s a0, fa7, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sw a0, 8(a5)
Current Store : [0x8000024c] : sw a7, 12(a5) -- Store: [0x80002260]:0x00000011




Last Coverpoint : ['rd : x14', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fcvt.wu.s a4, fs5, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sw a4, 16(a5)
Current Store : [0x80000264] : sw a7, 20(a5) -- Store: [0x80002268]:0x00000011




Last Coverpoint : ['rd : x24', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fcvt.wu.s s8, ft10, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sw s8, 24(a5)
Current Store : [0x8000027c] : sw a7, 28(a5) -- Store: [0x80002270]:0x00000011




Last Coverpoint : ['rd : x31', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fcvt.wu.s t6, fa5, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sw t6, 32(a5)
Current Store : [0x80000294] : sw a7, 36(a5) -- Store: [0x80002278]:0x00000011




Last Coverpoint : ['rd : x12', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fcvt.wu.s a2, ft8, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sw a2, 40(a5)
Current Store : [0x800002ac] : sw a7, 44(a5) -- Store: [0x80002280]:0x00000011




Last Coverpoint : ['rd : x1', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fcvt.wu.s ra, ft1, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sw ra, 48(a5)
Current Store : [0x800002c4] : sw a7, 52(a5) -- Store: [0x80002288]:0x00000011




Last Coverpoint : ['rd : x16', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002dc]:fcvt.wu.s a6, fs3, dyn
	-[0x800002e0]:csrrs s5, fflags, zero
	-[0x800002e4]:sw a6, 0(s3)
Current Store : [0x800002e8] : sw s5, 4(s3) -- Store: [0x80002290]:0x00000011




Last Coverpoint : ['rd : x19', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fcvt.wu.s s3, ft2, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sw s3, 0(a5)
Current Store : [0x8000030c] : sw a7, 4(a5) -- Store: [0x80002298]:0x00000011




Last Coverpoint : ['rd : x8', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.wu.s fp, fs6, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sw fp, 8(a5)
Current Store : [0x80000324] : sw a7, 12(a5) -- Store: [0x800022a0]:0x00000011




Last Coverpoint : ['rd : x20', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.wu.s s4, ft7, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sw s4, 16(a5)
Current Store : [0x8000033c] : sw a7, 20(a5) -- Store: [0x800022a8]:0x00000011




Last Coverpoint : ['rd : x15', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fcvt.wu.s a5, fa1, dyn
	-[0x80000358]:csrrs s5, fflags, zero
	-[0x8000035c]:sw a5, 0(s3)
Current Store : [0x80000360] : sw s5, 4(s3) -- Store: [0x800022b0]:0x00000011




Last Coverpoint : ['rd : x3', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000378]:fcvt.wu.s gp, fa3, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sw gp, 0(a5)
Current Store : [0x80000384] : sw a7, 4(a5) -- Store: [0x800022b8]:0x00000011




Last Coverpoint : ['rd : x22', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000390]:fcvt.wu.s s6, ft11, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sw s6, 8(a5)
Current Store : [0x8000039c] : sw a7, 12(a5) -- Store: [0x800022c0]:0x00000011




Last Coverpoint : ['rd : x4', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fcvt.wu.s tp, ft9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sw tp, 16(a5)
Current Store : [0x800003b4] : sw a7, 20(a5) -- Store: [0x800022c8]:0x00000011




Last Coverpoint : ['rd : x0', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fcvt.wu.s zero, fa0, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sw zero, 24(a5)
Current Store : [0x800003cc] : sw a7, 28(a5) -- Store: [0x800022d0]:0x00000011




Last Coverpoint : ['rd : x28', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fcvt.wu.s t3, ft6, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sw t3, 32(a5)
Current Store : [0x800003e4] : sw a7, 36(a5) -- Store: [0x800022d8]:0x00000011




Last Coverpoint : ['rd : x23', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f0]:fcvt.wu.s s7, ft4, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sw s7, 40(a5)
Current Store : [0x800003fc] : sw a7, 44(a5) -- Store: [0x800022e0]:0x00000011




Last Coverpoint : ['rd : x26', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000408]:fcvt.wu.s s10, fa4, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sw s10, 48(a5)
Current Store : [0x80000414] : sw a7, 52(a5) -- Store: [0x800022e8]:0x00000011




Last Coverpoint : ['rd : x6', 'rs1 : f0', 'fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000420]:fcvt.wu.s t1, ft0, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sw t1, 56(a5)
Current Store : [0x8000042c] : sw a7, 60(a5) -- Store: [0x800022f0]:0x00000011




Last Coverpoint : ['rd : x13', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000438]:fcvt.wu.s a3, fs8, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sw a3, 64(a5)
Current Store : [0x80000444] : sw a7, 68(a5) -- Store: [0x800022f8]:0x00000011




Last Coverpoint : ['rd : x2', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fcvt.wu.s sp, fs0, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sw sp, 72(a5)
Current Store : [0x8000045c] : sw a7, 76(a5) -- Store: [0x80002300]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.wu.s a1, fa0, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sw a1, 80(a5)
Current Store : [0x80000474] : sw a7, 84(a5) -- Store: [0x80002308]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fcvt.wu.s a1, fa0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:sw a1, 88(a5)
Current Store : [0x8000048c] : sw a7, 92(a5) -- Store: [0x80002310]:0x00000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000498]:fcvt.wu.s a1, fa0, dyn
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:sw a1, 96(a5)
Current Store : [0x800004a4] : sw a7, 100(a5) -- Store: [0x80002318]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b0]:fcvt.wu.s a1, fa0, dyn
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:sw a1, 104(a5)
Current Store : [0x800004bc] : sw a7, 108(a5) -- Store: [0x80002320]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fcvt.wu.s a1, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:sw a1, 112(a5)
Current Store : [0x800004d4] : sw a7, 116(a5) -- Store: [0x80002328]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e0]:fcvt.wu.s a1, fa0, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:sw a1, 120(a5)
Current Store : [0x800004ec] : sw a7, 124(a5) -- Store: [0x80002330]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fcvt.wu.s a1, fa0, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:sw a1, 128(a5)
Current Store : [0x80000504] : sw a7, 132(a5) -- Store: [0x80002338]:0x00000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000510]:fcvt.wu.s a1, fa0, dyn
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:sw a1, 136(a5)
Current Store : [0x8000051c] : sw a7, 140(a5) -- Store: [0x80002340]:0x00000011




Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x11', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fcvt.wu.s a1, fa0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:sw a1, 144(a5)
Current Store : [0x80000534] : sw a7, 148(a5) -- Store: [0x80002348]:0x00000011





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

|s.no|        signature         |                                                           coverpoints                                                            |                                                       code                                                        |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : fcvt.wu.s<br> - rd : x9<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.wu.s s1, fa6, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sw s1, 0(a5)<br>      |
|   2|[0x8000220c]<br>0x00000000|- rd : x27<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat<br>                         |[0x80000138]:fcvt.wu.s s11, fs9, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sw s11, 8(a5)<br>    |
|   3|[0x80002214]<br>0x00000000|- rd : x25<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat<br>                          |[0x80000150]:fcvt.wu.s s9, ft5, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sw s9, 16(a5)<br>     |
|   4|[0x8000221c]<br>0x00000000|- rd : x30<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat<br>                          |[0x80000168]:fcvt.wu.s t5, ft3, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sw t5, 24(a5)<br>     |
|   5|[0x80002224]<br>0xFFFFFFFF|- rd : x29<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat<br>                         |[0x80000180]:fcvt.wu.s t4, fs2, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sw t4, 32(a5)<br>     |
|   6|[0x8000222c]<br>0xFFFFFFFF|- rd : x5<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat<br>                          |[0x80000198]:fcvt.wu.s t0, fs11, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sw t0, 40(a5)<br>    |
|   7|[0x80002234]<br>0x00000000|- rd : x21<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat<br>                         |[0x800001b0]:fcvt.wu.s s5, fs10, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sw s5, 48(a5)<br>    |
|   8|[0x8000223c]<br>0x797C0C00|- rd : x7<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat<br>                          |[0x800001c8]:fcvt.wu.s t2, fs4, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sw t2, 56(a5)<br>     |
|   9|[0x80002244]<br>0x00000000|- rd : x11<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat<br>                         |[0x800001e0]:fcvt.wu.s a1, fa2, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sw a1, 64(a5)<br>     |
|  10|[0x8000224c]<br>0x00000000|- rd : x17<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat<br>                          |[0x80000204]:fcvt.wu.s a7, fs1, dyn<br> [0x80000208]:csrrs s5, fflags, zero<br> [0x8000020c]:sw a7, 0(s3)<br>      |
|  11|[0x80002254]<br>0x00000000|- rd : x18<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat<br>                         |[0x80000228]:fcvt.wu.s s2, fs7, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sw s2, 0(a5)<br>      |
|  12|[0x8000225c]<br>0x04893018|- rd : x10<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat<br>                         |[0x80000240]:fcvt.wu.s a0, fa7, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sw a0, 8(a5)<br>      |
|  13|[0x80002264]<br>0x02021384|- rd : x14<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat<br>                         |[0x80000258]:fcvt.wu.s a4, fs5, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw a4, 16(a5)<br>     |
|  14|[0x8000226c]<br>0x00000000|- rd : x24<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat<br>                         |[0x80000270]:fcvt.wu.s s8, ft10, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sw s8, 24(a5)<br>    |
|  15|[0x80002274]<br>0x00CE817E|- rd : x31<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat<br>                         |[0x80000288]:fcvt.wu.s t6, fa5, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sw t6, 32(a5)<br>     |
|  16|[0x8000227c]<br>0x007E0A74|- rd : x12<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat<br>                         |[0x800002a0]:fcvt.wu.s a2, ft8, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sw a2, 40(a5)<br>     |
|  17|[0x80002284]<br>0x003F6FEE|- rd : x1<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat<br>                           |[0x800002b8]:fcvt.wu.s ra, ft1, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sw ra, 48(a5)<br>     |
|  18|[0x8000228c]<br>0x00000000|- rd : x16<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat<br>                         |[0x800002dc]:fcvt.wu.s a6, fs3, dyn<br> [0x800002e0]:csrrs s5, fflags, zero<br> [0x800002e4]:sw a6, 0(s3)<br>      |
|  19|[0x80002294]<br>0x00091057|- rd : x19<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat<br>                          |[0x80000300]:fcvt.wu.s s3, ft2, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sw s3, 0(a5)<br>      |
|  20|[0x8000229c]<br>0x0006A5BB|- rd : x8<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat<br>                          |[0x80000318]:fcvt.wu.s fp, fs6, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sw fp, 8(a5)<br>      |
|  21|[0x800022a4]<br>0x00035F29|- rd : x20<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat<br>                          |[0x80000330]:fcvt.wu.s s4, ft7, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sw s4, 16(a5)<br>     |
|  22|[0x800022ac]<br>0x000174F3|- rd : x15<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat<br>                         |[0x80000354]:fcvt.wu.s a5, fa1, dyn<br> [0x80000358]:csrrs s5, fflags, zero<br> [0x8000035c]:sw a5, 0(s3)<br>      |
|  23|[0x800022b4]<br>0x0000D665|- rd : x3<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat<br>                          |[0x80000378]:fcvt.wu.s gp, fa3, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sw gp, 0(a5)<br>      |
|  24|[0x800022bc]<br>0x00000000|- rd : x22<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat<br>                         |[0x80000390]:fcvt.wu.s s6, ft11, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sw s6, 8(a5)<br>     |
|  25|[0x800022c4]<br>0x00002C36|- rd : x4<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat<br>                          |[0x800003a8]:fcvt.wu.s tp, ft9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sw tp, 16(a5)<br>     |
|  26|[0x800022cc]<br>0x00000000|- rd : x0<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat<br>                          |[0x800003c0]:fcvt.wu.s zero, fa0, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sw zero, 24(a5)<br> |
|  27|[0x800022d4]<br>0x00000EE2|- rd : x28<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat<br>                          |[0x800003d8]:fcvt.wu.s t3, ft6, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sw t3, 32(a5)<br>     |
|  28|[0x800022dc]<br>0x0000042E|- rd : x23<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat<br>                          |[0x800003f0]:fcvt.wu.s s7, ft4, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sw s7, 40(a5)<br>     |
|  29|[0x800022e4]<br>0x000003FE|- rd : x26<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat<br>                         |[0x80000408]:fcvt.wu.s s10, fa4, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sw s10, 48(a5)<br>   |
|  30|[0x800022ec]<br>0x00000000|- rd : x6<br> - rs1 : f0<br> - fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat<br>                           |[0x80000420]:fcvt.wu.s t1, ft0, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sw t1, 56(a5)<br>     |
|  31|[0x800022f4]<br>0x00000000|- rd : x13<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat<br>                         |[0x80000438]:fcvt.wu.s a3, fs8, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sw a3, 64(a5)<br>     |
|  32|[0x800022fc]<br>0x00000055|- rd : x2<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat<br>                           |[0x80000450]:fcvt.wu.s sp, fs0, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sw sp, 72(a5)<br>     |
|  33|[0x80002304]<br>0x00000031|- fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat<br>                                                        |[0x80000468]:fcvt.wu.s a1, fa0, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:sw a1, 80(a5)<br>     |
|  34|[0x8000230c]<br>0x00000013|- fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat<br>                                                        |[0x80000480]:fcvt.wu.s a1, fa0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:sw a1, 88(a5)<br>     |
|  35|[0x80002314]<br>0x00000000|- fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat<br>                                                        |[0x80000498]:fcvt.wu.s a1, fa0, dyn<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:sw a1, 96(a5)<br>     |
|  36|[0x8000231c]<br>0x00000007|- fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat<br>                                                        |[0x800004b0]:fcvt.wu.s a1, fa0, dyn<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:sw a1, 104(a5)<br>    |
|  37|[0x80002324]<br>0x00000004|- fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat<br>                                                        |[0x800004c8]:fcvt.wu.s a1, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:sw a1, 112(a5)<br>    |
|  38|[0x8000232c]<br>0x00000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat<br>                                                        |[0x800004e0]:fcvt.wu.s a1, fa0, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:sw a1, 120(a5)<br>    |
|  39|[0x80002334]<br>0x00000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat<br>                                                        |[0x800004f8]:fcvt.wu.s a1, fa0, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:sw a1, 128(a5)<br>    |
|  40|[0x8000233c]<br>0x00000000|- fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat<br>                                                        |[0x80000510]:fcvt.wu.s a1, fa0, dyn<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sw a1, 136(a5)<br>    |
