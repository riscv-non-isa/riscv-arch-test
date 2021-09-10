
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800091f0')]      |
| SIG_REGION                | [('0x8000db04', '0x80010454', '2644 words')]      |
| COV_LABELS                | fmul_b9      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmul_b9-01.S/ref.S    |
| Total Number of coverpoints| 1428     |
| Total Coverpoints Hit     | 1422      |
| Total Signature Updates   | 2644      |
| STAT1                     | 1320      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 1322     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d10]:fmul.s fa2, fa0, fa1, dyn
      [0x80000d14]:csrrs a7, fflags, zero
      [0x80000d18]:fsw fa2, 872(a5)
 -- Signature Address: 0x8000de6c Data: 0xD5BFDDB7
 -- Redundant Coverpoints hit by the op
      - opcode : fmul.s
      - rs1 : f10
      - rs2 : f11
      - rd : f12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800091c0]:fmul.s fa2, fa0, fa1, dyn
      [0x800091c4]:csrrs a7, fflags, zero
      [0x800091c8]:fsw fa2, 400(a5)
 -- Signature Address: 0x80010444 Data: 0xD5BFDDB7
 -- Redundant Coverpoints hit by the op
      - opcode : fmul.s
      - rs1 : f10
      - rs2 : f11
      - rd : f12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmul.s', 'rs1 : f10', 'rs2 : f10', 'rd : f10', 'rs1 == rs2 == rd', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000124]:fmul.s fa0, fa0, fa0, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw fa0, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x8000db08]:0x00000000




Last Coverpoint : ['rs1 : f20', 'rs2 : f25', 'rd : f11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000140]:fmul.s fa1, fs4, fs9, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw fa1, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x8000db10]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f29', 'rd : f5', 'rs1 == rs2 != rd', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000015c]:fmul.s ft5, ft9, ft9, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw ft5, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x8000db18]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f7', 'rd : f8', 'rs1 == rd != rs2', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x333333 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000178]:fmul.s fs0, fs0, ft7, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw fs0, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x8000db20]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f31', 'rd : f31', 'rs2 == rd != rs1', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000194]:fmul.s ft11, fa6, ft11, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw ft11, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x8000db28]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f26', 'rd : f7', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmul.s ft7, ft8, fs10, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft7, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x8000db30]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f9', 'rd : f18', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fmul.s fs2, fa1, fs1, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw fs2, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x8000db38]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f21', 'rd : f2', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x249249 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fmul.s ft2, ft11, fs5, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw ft2, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x8000db40]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f16', 'rd : f24', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fmul.s fs8, ft10, fa6, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw fs8, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x8000db48]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f24', 'rd : f4', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x444444 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000220]:fmul.s ft4, fs11, fs8, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw ft4, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x8000db50]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f19', 'rd : f6', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fmul.s ft6, ft5, fs3, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw ft6, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x8000db58]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f2', 'rd : f29', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fmul.s ft9, ft7, ft2, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft9, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x8000db60]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f27', 'rd : f17', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000274]:fmul.s fa7, fs2, fs11, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw fa7, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x8000db68]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f13', 'rd : f0', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x666666 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000290]:fmul.s ft0, fs10, fa3, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw ft0, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x8000db70]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f28', 'rd : f20', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fmul.s fs4, fs5, ft8, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw fs4, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x8000db78]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f18', 'rd : f16', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x199999 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fmul.s fa6, ft0, fs2, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fa6, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x8000db80]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f11', 'rd : f19', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fmul.s fs3, fa7, fa1, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw fs3, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x8000db88]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f0', 'rd : f15', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fmul.s fa5, fa2, ft0, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw fa5, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x8000db90]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f20', 'rd : f14', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fmul.s fa4, ft6, fs4, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw fa4, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x8000db98]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f17', 'rd : f9', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fmul.s fs1, ft2, fa7, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw fs1, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x8000dba0]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f5', 'rd : f27', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000354]:fmul.s fs11, fa5, ft5, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw fs11, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x8000dba8]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f4', 'rd : f28', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x000001 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000370]:fmul.s ft8, fs6, ft4, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw ft8, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x8000dbb0]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f6', 'rd : f13', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fmul.s fa3, ft3, ft6, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw fa3, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x8000dbb8]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f12', 'rd : f26', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmul.s fs10, ft1, fa2, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs10, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x8000dbc0]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f8', 'rd : f30', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fmul.s ft10, ft4, fs0, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw ft10, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x8000dbc8]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f22', 'rd : f21', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x000003 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fmul.s fs5, fa3, fs6, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw fs5, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x8000dbd0]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f15', 'rd : f25', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fmul.s fs9, fs7, fa5, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fs9, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x8000dbd8]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f3', 'rd : f23', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fmul.s fs7, fs1, ft3, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fs7, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x8000dbe0]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f30', 'rd : f3', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000434]:fmul.s ft3, fs3, ft10, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw ft3, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x8000dbe8]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f14', 'rd : f1', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x000007 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000450]:fmul.s ft1, fs8, fa4, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw ft1, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x8000dbf0]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f1', 'rd : f12', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fmul.s fa2, fa4, ft1, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw fa2, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x8000dbf8]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f23', 'rd : f22', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fmul.s fs6, fs9, fs7, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fs6, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x8000dc00]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x8000dc08]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x00000f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x8000dc10]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x8000dc18]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x8000dc20]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000514]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x8000dc28]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x00001f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000530]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x8000dc30]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x8000dc38]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x8000dc40]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x8000dc48]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x00003f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x8000dc50]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x8000dc58]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x8000dc60]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x8000dc68]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x00007f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x8000dc70]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x8000dc78]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x8000dc80]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000664]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x8000dc88]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x8000dc90]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x8000dc98]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x8000dca0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006d8]:csrrs a7, fflags, zero
	-[0x800006dc]:fsw fa2, 416(a5)
Current Store : [0x800006e0] : sw a7, 420(a5) -- Store: [0x8000dca8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa2, 424(a5)
Current Store : [0x800006fc] : sw a7, 428(a5) -- Store: [0x8000dcb0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000070c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000710]:csrrs a7, fflags, zero
	-[0x80000714]:fsw fa2, 432(a5)
Current Store : [0x80000718] : sw a7, 436(a5) -- Store: [0x8000dcb8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000728]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa2, 440(a5)
Current Store : [0x80000734] : sw a7, 444(a5) -- Store: [0x8000dcc0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000744]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000748]:csrrs a7, fflags, zero
	-[0x8000074c]:fsw fa2, 448(a5)
Current Store : [0x80000750] : sw a7, 452(a5) -- Store: [0x8000dcc8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsw fa2, 456(a5)
Current Store : [0x8000076c] : sw a7, 460(a5) -- Store: [0x8000dcd0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000077c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000780]:csrrs a7, fflags, zero
	-[0x80000784]:fsw fa2, 464(a5)
Current Store : [0x80000788] : sw a7, 468(a5) -- Store: [0x8000dcd8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000798]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa2, 472(a5)
Current Store : [0x800007a4] : sw a7, 476(a5) -- Store: [0x8000dce0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007b8]:csrrs a7, fflags, zero
	-[0x800007bc]:fsw fa2, 480(a5)
Current Store : [0x800007c0] : sw a7, 484(a5) -- Store: [0x8000dce8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:fsw fa2, 488(a5)
Current Store : [0x800007dc] : sw a7, 492(a5) -- Store: [0x8000dcf0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsw fa2, 496(a5)
Current Store : [0x800007f8] : sw a7, 500(a5) -- Store: [0x8000dcf8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa2, 504(a5)
Current Store : [0x80000814] : sw a7, 508(a5) -- Store: [0x8000dd00]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000824]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000828]:csrrs a7, fflags, zero
	-[0x8000082c]:fsw fa2, 512(a5)
Current Store : [0x80000830] : sw a7, 516(a5) -- Store: [0x8000dd08]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x000fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa2, 520(a5)
Current Store : [0x8000084c] : sw a7, 524(a5) -- Store: [0x8000dd10]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000085c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000860]:csrrs a7, fflags, zero
	-[0x80000864]:fsw fa2, 528(a5)
Current Store : [0x80000868] : sw a7, 532(a5) -- Store: [0x8000dd18]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000878]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:fsw fa2, 536(a5)
Current Store : [0x80000884] : sw a7, 540(a5) -- Store: [0x8000dd20]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000894]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000898]:csrrs a7, fflags, zero
	-[0x8000089c]:fsw fa2, 544(a5)
Current Store : [0x800008a0] : sw a7, 548(a5) -- Store: [0x8000dd28]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x001fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsw fa2, 552(a5)
Current Store : [0x800008bc] : sw a7, 556(a5) -- Store: [0x8000dd30]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008d0]:csrrs a7, fflags, zero
	-[0x800008d4]:fsw fa2, 560(a5)
Current Store : [0x800008d8] : sw a7, 564(a5) -- Store: [0x8000dd38]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa2, 568(a5)
Current Store : [0x800008f4] : sw a7, 572(a5) -- Store: [0x8000dd40]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000904]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000908]:csrrs a7, fflags, zero
	-[0x8000090c]:fsw fa2, 576(a5)
Current Store : [0x80000910] : sw a7, 580(a5) -- Store: [0x8000dd48]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x003fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsw fa2, 584(a5)
Current Store : [0x8000092c] : sw a7, 588(a5) -- Store: [0x8000dd50]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000093c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000940]:csrrs a7, fflags, zero
	-[0x80000944]:fsw fa2, 592(a5)
Current Store : [0x80000948] : sw a7, 596(a5) -- Store: [0x8000dd58]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsw fa2, 600(a5)
Current Store : [0x80000964] : sw a7, 604(a5) -- Store: [0x8000dd60]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000974]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000978]:csrrs a7, fflags, zero
	-[0x8000097c]:fsw fa2, 608(a5)
Current Store : [0x80000980] : sw a7, 612(a5) -- Store: [0x8000dd68]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x007fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000990]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:fsw fa2, 616(a5)
Current Store : [0x8000099c] : sw a7, 620(a5) -- Store: [0x8000dd70]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009b0]:csrrs a7, fflags, zero
	-[0x800009b4]:fsw fa2, 624(a5)
Current Store : [0x800009b8] : sw a7, 628(a5) -- Store: [0x8000dd78]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa2, 632(a5)
Current Store : [0x800009d4] : sw a7, 636(a5) -- Store: [0x8000dd80]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009e8]:csrrs a7, fflags, zero
	-[0x800009ec]:fsw fa2, 640(a5)
Current Store : [0x800009f0] : sw a7, 644(a5) -- Store: [0x8000dd88]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsw fa2, 648(a5)
Current Store : [0x80000a0c] : sw a7, 652(a5) -- Store: [0x8000dd90]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a20]:csrrs a7, fflags, zero
	-[0x80000a24]:fsw fa2, 656(a5)
Current Store : [0x80000a28] : sw a7, 660(a5) -- Store: [0x8000dd98]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:fsw fa2, 664(a5)
Current Store : [0x80000a44] : sw a7, 668(a5) -- Store: [0x8000dda0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a58]:csrrs a7, fflags, zero
	-[0x80000a5c]:fsw fa2, 672(a5)
Current Store : [0x80000a60] : sw a7, 676(a5) -- Store: [0x8000dda8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a74]:csrrs a7, fflags, zero
	-[0x80000a78]:fsw fa2, 680(a5)
Current Store : [0x80000a7c] : sw a7, 684(a5) -- Store: [0x8000ddb0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a90]:csrrs a7, fflags, zero
	-[0x80000a94]:fsw fa2, 688(a5)
Current Store : [0x80000a98] : sw a7, 692(a5) -- Store: [0x8000ddb8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa2, 696(a5)
Current Store : [0x80000ab4] : sw a7, 700(a5) -- Store: [0x8000ddc0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ac8]:csrrs a7, fflags, zero
	-[0x80000acc]:fsw fa2, 704(a5)
Current Store : [0x80000ad0] : sw a7, 708(a5) -- Store: [0x8000ddc8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsw fa2, 712(a5)
Current Store : [0x80000aec] : sw a7, 716(a5) -- Store: [0x8000ddd0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000afc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b00]:csrrs a7, fflags, zero
	-[0x80000b04]:fsw fa2, 720(a5)
Current Store : [0x80000b08] : sw a7, 724(a5) -- Store: [0x8000ddd8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b1c]:csrrs a7, fflags, zero
	-[0x80000b20]:fsw fa2, 728(a5)
Current Store : [0x80000b24] : sw a7, 732(a5) -- Store: [0x8000dde0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b38]:csrrs a7, fflags, zero
	-[0x80000b3c]:fsw fa2, 736(a5)
Current Store : [0x80000b40] : sw a7, 740(a5) -- Store: [0x8000dde8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:fsw fa2, 744(a5)
Current Store : [0x80000b5c] : sw a7, 748(a5) -- Store: [0x8000ddf0]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b70]:csrrs a7, fflags, zero
	-[0x80000b74]:fsw fa2, 752(a5)
Current Store : [0x80000b78] : sw a7, 756(a5) -- Store: [0x8000ddf8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x780000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa2, 760(a5)
Current Store : [0x80000b94] : sw a7, 764(a5) -- Store: [0x8000de00]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ba8]:csrrs a7, fflags, zero
	-[0x80000bac]:fsw fa2, 768(a5)
Current Store : [0x80000bb0] : sw a7, 772(a5) -- Store: [0x8000de08]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsw fa2, 776(a5)
Current Store : [0x80000bcc] : sw a7, 780(a5) -- Store: [0x8000de10]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000be0]:csrrs a7, fflags, zero
	-[0x80000be4]:fsw fa2, 784(a5)
Current Store : [0x80000be8] : sw a7, 788(a5) -- Store: [0x8000de18]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x700000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:fsw fa2, 792(a5)
Current Store : [0x80000c04] : sw a7, 796(a5) -- Store: [0x8000de20]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c18]:csrrs a7, fflags, zero
	-[0x80000c1c]:fsw fa2, 800(a5)
Current Store : [0x80000c20] : sw a7, 804(a5) -- Store: [0x8000de28]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:fsw fa2, 808(a5)
Current Store : [0x80000c3c] : sw a7, 812(a5) -- Store: [0x8000de30]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c50]:csrrs a7, fflags, zero
	-[0x80000c54]:fsw fa2, 816(a5)
Current Store : [0x80000c58] : sw a7, 820(a5) -- Store: [0x8000de38]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x600000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c6c]:csrrs a7, fflags, zero
	-[0x80000c70]:fsw fa2, 824(a5)
Current Store : [0x80000c74] : sw a7, 828(a5) -- Store: [0x8000de40]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c88]:csrrs a7, fflags, zero
	-[0x80000c8c]:fsw fa2, 832(a5)
Current Store : [0x80000c90] : sw a7, 836(a5) -- Store: [0x8000de48]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsw fa2, 840(a5)
Current Store : [0x80000cac] : sw a7, 844(a5) -- Store: [0x8000de50]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cc0]:csrrs a7, fflags, zero
	-[0x80000cc4]:fsw fa2, 848(a5)
Current Store : [0x80000cc8] : sw a7, 852(a5) -- Store: [0x8000de58]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x400000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:fsw fa2, 856(a5)
Current Store : [0x80000ce4] : sw a7, 860(a5) -- Store: [0x8000de60]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cf8]:csrrs a7, fflags, zero
	-[0x80000cfc]:fsw fa2, 864(a5)
Current Store : [0x80000d00] : sw a7, 868(a5) -- Store: [0x8000de68]:0x00000005




Last Coverpoint : ['opcode : fmul.s', 'rs1 : f10', 'rs2 : f11', 'rd : f12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d14]:csrrs a7, fflags, zero
	-[0x80000d18]:fsw fa2, 872(a5)
Current Store : [0x80000d1c] : sw a7, 876(a5) -- Store: [0x8000de70]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x000000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d30]:csrrs a7, fflags, zero
	-[0x80000d34]:fsw fa2, 880(a5)
Current Store : [0x80000d38] : sw a7, 884(a5) -- Store: [0x8000de78]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsw fa2, 888(a5)
Current Store : [0x80000d54] : sw a7, 892(a5) -- Store: [0x8000de80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d68]:csrrs a7, fflags, zero
	-[0x80000d6c]:fsw fa2, 896(a5)
Current Store : [0x80000d70] : sw a7, 900(a5) -- Store: [0x8000de88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsw fa2, 904(a5)
Current Store : [0x80000d8c] : sw a7, 908(a5) -- Store: [0x8000de90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x333333 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000da0]:csrrs a7, fflags, zero
	-[0x80000da4]:fsw fa2, 912(a5)
Current Store : [0x80000da8] : sw a7, 916(a5) -- Store: [0x8000de98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000db8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dbc]:csrrs a7, fflags, zero
	-[0x80000dc0]:fsw fa2, 920(a5)
Current Store : [0x80000dc4] : sw a7, 924(a5) -- Store: [0x8000dea0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dd8]:csrrs a7, fflags, zero
	-[0x80000ddc]:fsw fa2, 928(a5)
Current Store : [0x80000de0] : sw a7, 932(a5) -- Store: [0x8000dea8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000df0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:fsw fa2, 936(a5)
Current Store : [0x80000dfc] : sw a7, 940(a5) -- Store: [0x8000deb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x249249 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e10]:csrrs a7, fflags, zero
	-[0x80000e14]:fsw fa2, 944(a5)
Current Store : [0x80000e18] : sw a7, 948(a5) -- Store: [0x8000deb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa2, 952(a5)
Current Store : [0x80000e34] : sw a7, 956(a5) -- Store: [0x8000dec0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x444444 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e48]:csrrs a7, fflags, zero
	-[0x80000e4c]:fsw fa2, 960(a5)
Current Store : [0x80000e50] : sw a7, 964(a5) -- Store: [0x8000dec8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e64]:csrrs a7, fflags, zero
	-[0x80000e68]:fsw fa2, 968(a5)
Current Store : [0x80000e6c] : sw a7, 972(a5) -- Store: [0x8000ded0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e80]:csrrs a7, fflags, zero
	-[0x80000e84]:fsw fa2, 976(a5)
Current Store : [0x80000e88] : sw a7, 980(a5) -- Store: [0x8000ded8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:fsw fa2, 984(a5)
Current Store : [0x80000ea4] : sw a7, 988(a5) -- Store: [0x8000dee0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x666666 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000eb8]:csrrs a7, fflags, zero
	-[0x80000ebc]:fsw fa2, 992(a5)
Current Store : [0x80000ec0] : sw a7, 996(a5) -- Store: [0x8000dee8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:fsw fa2, 1000(a5)
Current Store : [0x80000edc] : sw a7, 1004(a5) -- Store: [0x8000def0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x199999 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ef0]:csrrs a7, fflags, zero
	-[0x80000ef4]:fsw fa2, 1008(a5)
Current Store : [0x80000ef8] : sw a7, 1012(a5) -- Store: [0x8000def8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f0c]:csrrs a7, fflags, zero
	-[0x80000f10]:fsw fa2, 1016(a5)
Current Store : [0x80000f14] : sw a7, 1020(a5) -- Store: [0x8000df00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsw fa2, 1024(a5)
Current Store : [0x80000f30] : sw a7, 1028(a5) -- Store: [0x8000df08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:fsw fa2, 1032(a5)
Current Store : [0x80000f4c] : sw a7, 1036(a5) -- Store: [0x8000df10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f60]:csrrs a7, fflags, zero
	-[0x80000f64]:fsw fa2, 1040(a5)
Current Store : [0x80000f68] : sw a7, 1044(a5) -- Store: [0x8000df18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:fsw fa2, 1048(a5)
Current Store : [0x80000f84] : sw a7, 1052(a5) -- Store: [0x8000df20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000001 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f98]:csrrs a7, fflags, zero
	-[0x80000f9c]:fsw fa2, 1056(a5)
Current Store : [0x80000fa0] : sw a7, 1060(a5) -- Store: [0x8000df28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fb4]:csrrs a7, fflags, zero
	-[0x80000fb8]:fsw fa2, 1064(a5)
Current Store : [0x80000fbc] : sw a7, 1068(a5) -- Store: [0x8000df30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fd0]:csrrs a7, fflags, zero
	-[0x80000fd4]:fsw fa2, 1072(a5)
Current Store : [0x80000fd8] : sw a7, 1076(a5) -- Store: [0x8000df38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fec]:csrrs a7, fflags, zero
	-[0x80000ff0]:fsw fa2, 1080(a5)
Current Store : [0x80000ff4] : sw a7, 1084(a5) -- Store: [0x8000df40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000003 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsw fa2, 1088(a5)
Current Store : [0x80001010] : sw a7, 1092(a5) -- Store: [0x8000df48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001020]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsw fa2, 1096(a5)
Current Store : [0x8000102c] : sw a7, 1100(a5) -- Store: [0x8000df50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000103c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001040]:csrrs a7, fflags, zero
	-[0x80001044]:fsw fa2, 1104(a5)
Current Store : [0x80001048] : sw a7, 1108(a5) -- Store: [0x8000df58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001058]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000105c]:csrrs a7, fflags, zero
	-[0x80001060]:fsw fa2, 1112(a5)
Current Store : [0x80001064] : sw a7, 1116(a5) -- Store: [0x8000df60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000007 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001074]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001078]:csrrs a7, fflags, zero
	-[0x8000107c]:fsw fa2, 1120(a5)
Current Store : [0x80001080] : sw a7, 1124(a5) -- Store: [0x8000df68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001090]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001094]:csrrs a7, fflags, zero
	-[0x80001098]:fsw fa2, 1128(a5)
Current Store : [0x8000109c] : sw a7, 1132(a5) -- Store: [0x8000df70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010b0]:csrrs a7, fflags, zero
	-[0x800010b4]:fsw fa2, 1136(a5)
Current Store : [0x800010b8] : sw a7, 1140(a5) -- Store: [0x8000df78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa2, 1144(a5)
Current Store : [0x800010d4] : sw a7, 1148(a5) -- Store: [0x8000df80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00000f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsw fa2, 1152(a5)
Current Store : [0x800010f0] : sw a7, 1156(a5) -- Store: [0x8000df88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001100]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001104]:csrrs a7, fflags, zero
	-[0x80001108]:fsw fa2, 1160(a5)
Current Store : [0x8000110c] : sw a7, 1164(a5) -- Store: [0x8000df90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000111c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001120]:csrrs a7, fflags, zero
	-[0x80001124]:fsw fa2, 1168(a5)
Current Store : [0x80001128] : sw a7, 1172(a5) -- Store: [0x8000df98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001138]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000113c]:csrrs a7, fflags, zero
	-[0x80001140]:fsw fa2, 1176(a5)
Current Store : [0x80001144] : sw a7, 1180(a5) -- Store: [0x8000dfa0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00001f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001154]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001158]:csrrs a7, fflags, zero
	-[0x8000115c]:fsw fa2, 1184(a5)
Current Store : [0x80001160] : sw a7, 1188(a5) -- Store: [0x8000dfa8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001170]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:fsw fa2, 1192(a5)
Current Store : [0x8000117c] : sw a7, 1196(a5) -- Store: [0x8000dfb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000118c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001190]:csrrs a7, fflags, zero
	-[0x80001194]:fsw fa2, 1200(a5)
Current Store : [0x80001198] : sw a7, 1204(a5) -- Store: [0x8000dfb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011ac]:csrrs a7, fflags, zero
	-[0x800011b0]:fsw fa2, 1208(a5)
Current Store : [0x800011b4] : sw a7, 1212(a5) -- Store: [0x8000dfc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00003f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsw fa2, 1216(a5)
Current Store : [0x800011d0] : sw a7, 1220(a5) -- Store: [0x8000dfc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011e4]:csrrs a7, fflags, zero
	-[0x800011e8]:fsw fa2, 1224(a5)
Current Store : [0x800011ec] : sw a7, 1228(a5) -- Store: [0x8000dfd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001200]:csrrs a7, fflags, zero
	-[0x80001204]:fsw fa2, 1232(a5)
Current Store : [0x80001208] : sw a7, 1236(a5) -- Store: [0x8000dfd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001218]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:fsw fa2, 1240(a5)
Current Store : [0x80001224] : sw a7, 1244(a5) -- Store: [0x8000dfe0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00007f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001234]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001238]:csrrs a7, fflags, zero
	-[0x8000123c]:fsw fa2, 1248(a5)
Current Store : [0x80001240] : sw a7, 1252(a5) -- Store: [0x8000dfe8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001250]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001254]:csrrs a7, fflags, zero
	-[0x80001258]:fsw fa2, 1256(a5)
Current Store : [0x8000125c] : sw a7, 1260(a5) -- Store: [0x8000dff0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000126c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001270]:csrrs a7, fflags, zero
	-[0x80001274]:fsw fa2, 1264(a5)
Current Store : [0x80001278] : sw a7, 1268(a5) -- Store: [0x8000dff8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001288]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000128c]:csrrs a7, fflags, zero
	-[0x80001290]:fsw fa2, 1272(a5)
Current Store : [0x80001294] : sw a7, 1276(a5) -- Store: [0x8000e000]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsw fa2, 1280(a5)
Current Store : [0x800012b0] : sw a7, 1284(a5) -- Store: [0x8000e008]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:fsw fa2, 1288(a5)
Current Store : [0x800012cc] : sw a7, 1292(a5) -- Store: [0x8000e010]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012e0]:csrrs a7, fflags, zero
	-[0x800012e4]:fsw fa2, 1296(a5)
Current Store : [0x800012e8] : sw a7, 1300(a5) -- Store: [0x8000e018]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012fc]:csrrs a7, fflags, zero
	-[0x80001300]:fsw fa2, 1304(a5)
Current Store : [0x80001304] : sw a7, 1308(a5) -- Store: [0x8000e020]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001314]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001318]:csrrs a7, fflags, zero
	-[0x8000131c]:fsw fa2, 1312(a5)
Current Store : [0x80001320] : sw a7, 1316(a5) -- Store: [0x8000e028]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001330]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001334]:csrrs a7, fflags, zero
	-[0x80001338]:fsw fa2, 1320(a5)
Current Store : [0x8000133c] : sw a7, 1324(a5) -- Store: [0x8000e030]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000134c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001350]:csrrs a7, fflags, zero
	-[0x80001354]:fsw fa2, 1328(a5)
Current Store : [0x80001358] : sw a7, 1332(a5) -- Store: [0x8000e038]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001368]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:fsw fa2, 1336(a5)
Current Store : [0x80001374] : sw a7, 1340(a5) -- Store: [0x8000e040]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsw fa2, 1344(a5)
Current Store : [0x80001390] : sw a7, 1348(a5) -- Store: [0x8000e048]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013a4]:csrrs a7, fflags, zero
	-[0x800013a8]:fsw fa2, 1352(a5)
Current Store : [0x800013ac] : sw a7, 1356(a5) -- Store: [0x8000e050]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013c0]:csrrs a7, fflags, zero
	-[0x800013c4]:fsw fa2, 1360(a5)
Current Store : [0x800013c8] : sw a7, 1364(a5) -- Store: [0x8000e058]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013dc]:csrrs a7, fflags, zero
	-[0x800013e0]:fsw fa2, 1368(a5)
Current Store : [0x800013e4] : sw a7, 1372(a5) -- Store: [0x8000e060]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800013f8]:csrrs a7, fflags, zero
	-[0x800013fc]:fsw fa2, 1376(a5)
Current Store : [0x80001400] : sw a7, 1380(a5) -- Store: [0x8000e068]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001410]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001414]:csrrs a7, fflags, zero
	-[0x80001418]:fsw fa2, 1384(a5)
Current Store : [0x8000141c] : sw a7, 1388(a5) -- Store: [0x8000e070]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsw fa2, 1392(a5)
Current Store : [0x80001438] : sw a7, 1396(a5) -- Store: [0x8000e078]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001448]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000144c]:csrrs a7, fflags, zero
	-[0x80001450]:fsw fa2, 1400(a5)
Current Store : [0x80001454] : sw a7, 1404(a5) -- Store: [0x8000e080]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001464]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001468]:csrrs a7, fflags, zero
	-[0x8000146c]:fsw fa2, 1408(a5)
Current Store : [0x80001470] : sw a7, 1412(a5) -- Store: [0x8000e088]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001480]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001484]:csrrs a7, fflags, zero
	-[0x80001488]:fsw fa2, 1416(a5)
Current Store : [0x8000148c] : sw a7, 1420(a5) -- Store: [0x8000e090]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000149c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014a0]:csrrs a7, fflags, zero
	-[0x800014a4]:fsw fa2, 1424(a5)
Current Store : [0x800014a8] : sw a7, 1428(a5) -- Store: [0x8000e098]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014bc]:csrrs a7, fflags, zero
	-[0x800014c0]:fsw fa2, 1432(a5)
Current Store : [0x800014c4] : sw a7, 1436(a5) -- Store: [0x8000e0a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x001fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014d8]:csrrs a7, fflags, zero
	-[0x800014dc]:fsw fa2, 1440(a5)
Current Store : [0x800014e0] : sw a7, 1444(a5) -- Store: [0x8000e0a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800014f4]:csrrs a7, fflags, zero
	-[0x800014f8]:fsw fa2, 1448(a5)
Current Store : [0x800014fc] : sw a7, 1452(a5) -- Store: [0x8000e0b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsw fa2, 1456(a5)
Current Store : [0x80001518] : sw a7, 1460(a5) -- Store: [0x8000e0b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001528]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000152c]:csrrs a7, fflags, zero
	-[0x80001530]:fsw fa2, 1464(a5)
Current Store : [0x80001534] : sw a7, 1468(a5) -- Store: [0x8000e0c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x003fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001544]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001548]:csrrs a7, fflags, zero
	-[0x8000154c]:fsw fa2, 1472(a5)
Current Store : [0x80001550] : sw a7, 1476(a5) -- Store: [0x8000e0c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001560]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001564]:csrrs a7, fflags, zero
	-[0x80001568]:fsw fa2, 1480(a5)
Current Store : [0x8000156c] : sw a7, 1484(a5) -- Store: [0x8000e0d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000157c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001580]:csrrs a7, fflags, zero
	-[0x80001584]:fsw fa2, 1488(a5)
Current Store : [0x80001588] : sw a7, 1492(a5) -- Store: [0x8000e0d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001598]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000159c]:csrrs a7, fflags, zero
	-[0x800015a0]:fsw fa2, 1496(a5)
Current Store : [0x800015a4] : sw a7, 1500(a5) -- Store: [0x8000e0e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x007fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015b8]:csrrs a7, fflags, zero
	-[0x800015bc]:fsw fa2, 1504(a5)
Current Store : [0x800015c0] : sw a7, 1508(a5) -- Store: [0x8000e0e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015d4]:csrrs a7, fflags, zero
	-[0x800015d8]:fsw fa2, 1512(a5)
Current Store : [0x800015dc] : sw a7, 1516(a5) -- Store: [0x8000e0f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsw fa2, 1520(a5)
Current Store : [0x800015f8] : sw a7, 1524(a5) -- Store: [0x8000e0f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001608]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:fsw fa2, 1528(a5)
Current Store : [0x80001614] : sw a7, 1532(a5) -- Store: [0x8000e100]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001624]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001628]:csrrs a7, fflags, zero
	-[0x8000162c]:fsw fa2, 1536(a5)
Current Store : [0x80001630] : sw a7, 1540(a5) -- Store: [0x8000e108]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001640]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001644]:csrrs a7, fflags, zero
	-[0x80001648]:fsw fa2, 1544(a5)
Current Store : [0x8000164c] : sw a7, 1548(a5) -- Store: [0x8000e110]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000165c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001660]:csrrs a7, fflags, zero
	-[0x80001664]:fsw fa2, 1552(a5)
Current Store : [0x80001668] : sw a7, 1556(a5) -- Store: [0x8000e118]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001678]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000167c]:csrrs a7, fflags, zero
	-[0x80001680]:fsw fa2, 1560(a5)
Current Store : [0x80001684] : sw a7, 1564(a5) -- Store: [0x8000e120]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001694]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001698]:csrrs a7, fflags, zero
	-[0x8000169c]:fsw fa2, 1568(a5)
Current Store : [0x800016a0] : sw a7, 1572(a5) -- Store: [0x8000e128]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016b4]:csrrs a7, fflags, zero
	-[0x800016b8]:fsw fa2, 1576(a5)
Current Store : [0x800016bc] : sw a7, 1580(a5) -- Store: [0x8000e130]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsw fa2, 1584(a5)
Current Store : [0x800016d8] : sw a7, 1588(a5) -- Store: [0x8000e138]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800016ec]:csrrs a7, fflags, zero
	-[0x800016f0]:fsw fa2, 1592(a5)
Current Store : [0x800016f4] : sw a7, 1596(a5) -- Store: [0x8000e140]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001704]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001708]:csrrs a7, fflags, zero
	-[0x8000170c]:fsw fa2, 1600(a5)
Current Store : [0x80001710] : sw a7, 1604(a5) -- Store: [0x8000e148]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001720]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001724]:csrrs a7, fflags, zero
	-[0x80001728]:fsw fa2, 1608(a5)
Current Store : [0x8000172c] : sw a7, 1612(a5) -- Store: [0x8000e150]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000173c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001740]:csrrs a7, fflags, zero
	-[0x80001744]:fsw fa2, 1616(a5)
Current Store : [0x80001748] : sw a7, 1620(a5) -- Store: [0x8000e158]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001758]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000175c]:csrrs a7, fflags, zero
	-[0x80001760]:fsw fa2, 1624(a5)
Current Store : [0x80001764] : sw a7, 1628(a5) -- Store: [0x8000e160]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001774]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001778]:csrrs a7, fflags, zero
	-[0x8000177c]:fsw fa2, 1632(a5)
Current Store : [0x80001780] : sw a7, 1636(a5) -- Store: [0x8000e168]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001790]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001794]:csrrs a7, fflags, zero
	-[0x80001798]:fsw fa2, 1640(a5)
Current Store : [0x8000179c] : sw a7, 1644(a5) -- Store: [0x8000e170]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x780000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsw fa2, 1648(a5)
Current Store : [0x800017b8] : sw a7, 1652(a5) -- Store: [0x8000e178]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017cc]:csrrs a7, fflags, zero
	-[0x800017d0]:fsw fa2, 1656(a5)
Current Store : [0x800017d4] : sw a7, 1660(a5) -- Store: [0x8000e180]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800017e8]:csrrs a7, fflags, zero
	-[0x800017ec]:fsw fa2, 1664(a5)
Current Store : [0x800017f0] : sw a7, 1668(a5) -- Store: [0x8000e188]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001800]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001804]:csrrs a7, fflags, zero
	-[0x80001808]:fsw fa2, 1672(a5)
Current Store : [0x8000180c] : sw a7, 1676(a5) -- Store: [0x8000e190]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x700000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000181c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001820]:csrrs a7, fflags, zero
	-[0x80001824]:fsw fa2, 1680(a5)
Current Store : [0x80001828] : sw a7, 1684(a5) -- Store: [0x8000e198]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001838]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000183c]:csrrs a7, fflags, zero
	-[0x80001840]:fsw fa2, 1688(a5)
Current Store : [0x80001844] : sw a7, 1692(a5) -- Store: [0x8000e1a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001854]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001858]:csrrs a7, fflags, zero
	-[0x8000185c]:fsw fa2, 1696(a5)
Current Store : [0x80001860] : sw a7, 1700(a5) -- Store: [0x8000e1a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001870]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001874]:csrrs a7, fflags, zero
	-[0x80001878]:fsw fa2, 1704(a5)
Current Store : [0x8000187c] : sw a7, 1708(a5) -- Store: [0x8000e1b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x600000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsw fa2, 1712(a5)
Current Store : [0x80001898] : sw a7, 1716(a5) -- Store: [0x8000e1b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018ac]:csrrs a7, fflags, zero
	-[0x800018b0]:fsw fa2, 1720(a5)
Current Store : [0x800018b4] : sw a7, 1724(a5) -- Store: [0x8000e1c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018c8]:csrrs a7, fflags, zero
	-[0x800018cc]:fsw fa2, 1728(a5)
Current Store : [0x800018d0] : sw a7, 1732(a5) -- Store: [0x8000e1c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800018e4]:csrrs a7, fflags, zero
	-[0x800018e8]:fsw fa2, 1736(a5)
Current Store : [0x800018ec] : sw a7, 1740(a5) -- Store: [0x8000e1d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x400000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001900]:csrrs a7, fflags, zero
	-[0x80001904]:fsw fa2, 1744(a5)
Current Store : [0x80001908] : sw a7, 1748(a5) -- Store: [0x8000e1d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001918]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000191c]:csrrs a7, fflags, zero
	-[0x80001920]:fsw fa2, 1752(a5)
Current Store : [0x80001924] : sw a7, 1756(a5) -- Store: [0x8000e1e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001934]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001938]:csrrs a7, fflags, zero
	-[0x8000193c]:fsw fa2, 1760(a5)
Current Store : [0x80001940] : sw a7, 1764(a5) -- Store: [0x8000e1e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x000000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001950]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsw fa2, 1768(a5)
Current Store : [0x8000195c] : sw a7, 1772(a5) -- Store: [0x8000e1f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000196c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001970]:csrrs a7, fflags, zero
	-[0x80001974]:fsw fa2, 1776(a5)
Current Store : [0x80001978] : sw a7, 1780(a5) -- Store: [0x8000e1f8]:0x00000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001988]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000198c]:csrrs a7, fflags, zero
	-[0x80001990]:fsw fa2, 1784(a5)
Current Store : [0x80001994] : sw a7, 1788(a5) -- Store: [0x8000e200]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800019a8]:csrrs a7, fflags, zero
	-[0x800019ac]:fsw fa2, 1792(a5)
Current Store : [0x800019b0] : sw a7, 1796(a5) -- Store: [0x8000e208]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800019c4]:csrrs a7, fflags, zero
	-[0x800019c8]:fsw fa2, 1800(a5)
Current Store : [0x800019cc] : sw a7, 1804(a5) -- Store: [0x8000e210]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800019e0]:csrrs a7, fflags, zero
	-[0x800019e4]:fsw fa2, 1808(a5)
Current Store : [0x800019e8] : sw a7, 1812(a5) -- Store: [0x8000e218]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800019fc]:csrrs a7, fflags, zero
	-[0x80001a00]:fsw fa2, 1816(a5)
Current Store : [0x80001a04] : sw a7, 1820(a5) -- Store: [0x8000e220]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001a18]:csrrs a7, fflags, zero
	-[0x80001a1c]:fsw fa2, 1824(a5)
Current Store : [0x80001a20] : sw a7, 1828(a5) -- Store: [0x8000e228]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsw fa2, 1832(a5)
Current Store : [0x80001a3c] : sw a7, 1836(a5) -- Store: [0x8000e230]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001a50]:csrrs a7, fflags, zero
	-[0x80001a54]:fsw fa2, 1840(a5)
Current Store : [0x80001a58] : sw a7, 1844(a5) -- Store: [0x8000e238]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001a6c]:csrrs a7, fflags, zero
	-[0x80001a70]:fsw fa2, 1848(a5)
Current Store : [0x80001a74] : sw a7, 1852(a5) -- Store: [0x8000e240]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001a88]:csrrs a7, fflags, zero
	-[0x80001a8c]:fsw fa2, 1856(a5)
Current Store : [0x80001a90] : sw a7, 1860(a5) -- Store: [0x8000e248]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001aa0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001aa4]:csrrs a7, fflags, zero
	-[0x80001aa8]:fsw fa2, 1864(a5)
Current Store : [0x80001aac] : sw a7, 1868(a5) -- Store: [0x8000e250]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001abc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ac0]:csrrs a7, fflags, zero
	-[0x80001ac4]:fsw fa2, 1872(a5)
Current Store : [0x80001ac8] : sw a7, 1876(a5) -- Store: [0x8000e258]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ad8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001adc]:csrrs a7, fflags, zero
	-[0x80001ae0]:fsw fa2, 1880(a5)
Current Store : [0x80001ae4] : sw a7, 1884(a5) -- Store: [0x8000e260]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001af8]:csrrs a7, fflags, zero
	-[0x80001afc]:fsw fa2, 1888(a5)
Current Store : [0x80001b00] : sw a7, 1892(a5) -- Store: [0x8000e268]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsw fa2, 1896(a5)
Current Store : [0x80001b1c] : sw a7, 1900(a5) -- Store: [0x8000e270]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001b30]:csrrs a7, fflags, zero
	-[0x80001b34]:fsw fa2, 1904(a5)
Current Store : [0x80001b38] : sw a7, 1908(a5) -- Store: [0x8000e278]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001b4c]:csrrs a7, fflags, zero
	-[0x80001b50]:fsw fa2, 1912(a5)
Current Store : [0x80001b54] : sw a7, 1916(a5) -- Store: [0x8000e280]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001b68]:csrrs a7, fflags, zero
	-[0x80001b6c]:fsw fa2, 1920(a5)
Current Store : [0x80001b70] : sw a7, 1924(a5) -- Store: [0x8000e288]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001b84]:csrrs a7, fflags, zero
	-[0x80001b88]:fsw fa2, 1928(a5)
Current Store : [0x80001b8c] : sw a7, 1932(a5) -- Store: [0x8000e290]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ba0]:csrrs a7, fflags, zero
	-[0x80001ba4]:fsw fa2, 1936(a5)
Current Store : [0x80001ba8] : sw a7, 1940(a5) -- Store: [0x8000e298]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001bbc]:csrrs a7, fflags, zero
	-[0x80001bc0]:fsw fa2, 1944(a5)
Current Store : [0x80001bc4] : sw a7, 1948(a5) -- Store: [0x8000e2a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001bd8]:csrrs a7, fflags, zero
	-[0x80001bdc]:fsw fa2, 1952(a5)
Current Store : [0x80001be0] : sw a7, 1956(a5) -- Store: [0x8000e2a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsw fa2, 1960(a5)
Current Store : [0x80001bfc] : sw a7, 1964(a5) -- Store: [0x8000e2b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c10]:csrrs a7, fflags, zero
	-[0x80001c14]:fsw fa2, 1968(a5)
Current Store : [0x80001c18] : sw a7, 1972(a5) -- Store: [0x8000e2b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c2c]:csrrs a7, fflags, zero
	-[0x80001c30]:fsw fa2, 1976(a5)
Current Store : [0x80001c34] : sw a7, 1980(a5) -- Store: [0x8000e2c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c48]:csrrs a7, fflags, zero
	-[0x80001c4c]:fsw fa2, 1984(a5)
Current Store : [0x80001c50] : sw a7, 1988(a5) -- Store: [0x8000e2c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c64]:csrrs a7, fflags, zero
	-[0x80001c68]:fsw fa2, 1992(a5)
Current Store : [0x80001c6c] : sw a7, 1996(a5) -- Store: [0x8000e2d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c80]:csrrs a7, fflags, zero
	-[0x80001c84]:fsw fa2, 2000(a5)
Current Store : [0x80001c88] : sw a7, 2004(a5) -- Store: [0x8000e2d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001c9c]:csrrs a7, fflags, zero
	-[0x80001ca0]:fsw fa2, 2008(a5)
Current Store : [0x80001ca4] : sw a7, 2012(a5) -- Store: [0x8000e2e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001cb8]:csrrs a7, fflags, zero
	-[0x80001cbc]:fsw fa2, 2016(a5)
Current Store : [0x80001cc0] : sw a7, 2020(a5) -- Store: [0x8000e2e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsw fa2, 2024(a5)
Current Store : [0x80001cdc] : sw a7, 2028(a5) -- Store: [0x8000e2f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cf8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001cfc]:csrrs a7, fflags, zero
	-[0x80001d00]:fsw fa2, 0(a5)
Current Store : [0x80001d04] : sw a7, 4(a5) -- Store: [0x8000e2f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001d18]:csrrs a7, fflags, zero
	-[0x80001d1c]:fsw fa2, 8(a5)
Current Store : [0x80001d20] : sw a7, 12(a5) -- Store: [0x8000e300]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsw fa2, 16(a5)
Current Store : [0x80001d3c] : sw a7, 20(a5) -- Store: [0x8000e308]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001d50]:csrrs a7, fflags, zero
	-[0x80001d54]:fsw fa2, 24(a5)
Current Store : [0x80001d58] : sw a7, 28(a5) -- Store: [0x8000e310]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001d6c]:csrrs a7, fflags, zero
	-[0x80001d70]:fsw fa2, 32(a5)
Current Store : [0x80001d74] : sw a7, 36(a5) -- Store: [0x8000e318]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001d88]:csrrs a7, fflags, zero
	-[0x80001d8c]:fsw fa2, 40(a5)
Current Store : [0x80001d90] : sw a7, 44(a5) -- Store: [0x8000e320]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001da0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001da4]:csrrs a7, fflags, zero
	-[0x80001da8]:fsw fa2, 48(a5)
Current Store : [0x80001dac] : sw a7, 52(a5) -- Store: [0x8000e328]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001dc0]:csrrs a7, fflags, zero
	-[0x80001dc4]:fsw fa2, 56(a5)
Current Store : [0x80001dc8] : sw a7, 60(a5) -- Store: [0x8000e330]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ddc]:csrrs a7, fflags, zero
	-[0x80001de0]:fsw fa2, 64(a5)
Current Store : [0x80001de4] : sw a7, 68(a5) -- Store: [0x8000e338]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001df4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001df8]:csrrs a7, fflags, zero
	-[0x80001dfc]:fsw fa2, 72(a5)
Current Store : [0x80001e00] : sw a7, 76(a5) -- Store: [0x8000e340]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001e14]:csrrs a7, fflags, zero
	-[0x80001e18]:fsw fa2, 80(a5)
Current Store : [0x80001e1c] : sw a7, 84(a5) -- Store: [0x8000e348]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001e30]:csrrs a7, fflags, zero
	-[0x80001e34]:fsw fa2, 88(a5)
Current Store : [0x80001e38] : sw a7, 92(a5) -- Store: [0x8000e350]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001e4c]:csrrs a7, fflags, zero
	-[0x80001e50]:fsw fa2, 96(a5)
Current Store : [0x80001e54] : sw a7, 100(a5) -- Store: [0x8000e358]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001e68]:csrrs a7, fflags, zero
	-[0x80001e6c]:fsw fa2, 104(a5)
Current Store : [0x80001e70] : sw a7, 108(a5) -- Store: [0x8000e360]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001e84]:csrrs a7, fflags, zero
	-[0x80001e88]:fsw fa2, 112(a5)
Current Store : [0x80001e8c] : sw a7, 116(a5) -- Store: [0x8000e368]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ea0]:csrrs a7, fflags, zero
	-[0x80001ea4]:fsw fa2, 120(a5)
Current Store : [0x80001ea8] : sw a7, 124(a5) -- Store: [0x8000e370]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001eb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ebc]:csrrs a7, fflags, zero
	-[0x80001ec0]:fsw fa2, 128(a5)
Current Store : [0x80001ec4] : sw a7, 132(a5) -- Store: [0x8000e378]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ed4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ed8]:csrrs a7, fflags, zero
	-[0x80001edc]:fsw fa2, 136(a5)
Current Store : [0x80001ee0] : sw a7, 140(a5) -- Store: [0x8000e380]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ef0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ef4]:csrrs a7, fflags, zero
	-[0x80001ef8]:fsw fa2, 144(a5)
Current Store : [0x80001efc] : sw a7, 148(a5) -- Store: [0x8000e388]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f10]:csrrs a7, fflags, zero
	-[0x80001f14]:fsw fa2, 152(a5)
Current Store : [0x80001f18] : sw a7, 156(a5) -- Store: [0x8000e390]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f2c]:csrrs a7, fflags, zero
	-[0x80001f30]:fsw fa2, 160(a5)
Current Store : [0x80001f34] : sw a7, 164(a5) -- Store: [0x8000e398]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f48]:csrrs a7, fflags, zero
	-[0x80001f4c]:fsw fa2, 168(a5)
Current Store : [0x80001f50] : sw a7, 172(a5) -- Store: [0x8000e3a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f64]:csrrs a7, fflags, zero
	-[0x80001f68]:fsw fa2, 176(a5)
Current Store : [0x80001f6c] : sw a7, 180(a5) -- Store: [0x8000e3a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f80]:csrrs a7, fflags, zero
	-[0x80001f84]:fsw fa2, 184(a5)
Current Store : [0x80001f88] : sw a7, 188(a5) -- Store: [0x8000e3b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001f9c]:csrrs a7, fflags, zero
	-[0x80001fa0]:fsw fa2, 192(a5)
Current Store : [0x80001fa4] : sw a7, 196(a5) -- Store: [0x8000e3b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001fb8]:csrrs a7, fflags, zero
	-[0x80001fbc]:fsw fa2, 200(a5)
Current Store : [0x80001fc0] : sw a7, 204(a5) -- Store: [0x8000e3c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001fd4]:csrrs a7, fflags, zero
	-[0x80001fd8]:fsw fa2, 208(a5)
Current Store : [0x80001fdc] : sw a7, 212(a5) -- Store: [0x8000e3c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001ff0]:csrrs a7, fflags, zero
	-[0x80001ff4]:fsw fa2, 216(a5)
Current Store : [0x80001ff8] : sw a7, 220(a5) -- Store: [0x8000e3d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002008]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000200c]:csrrs a7, fflags, zero
	-[0x80002010]:fsw fa2, 224(a5)
Current Store : [0x80002014] : sw a7, 228(a5) -- Store: [0x8000e3d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002024]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002028]:csrrs a7, fflags, zero
	-[0x8000202c]:fsw fa2, 232(a5)
Current Store : [0x80002030] : sw a7, 236(a5) -- Store: [0x8000e3e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002040]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002044]:csrrs a7, fflags, zero
	-[0x80002048]:fsw fa2, 240(a5)
Current Store : [0x8000204c] : sw a7, 244(a5) -- Store: [0x8000e3e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000205c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002060]:csrrs a7, fflags, zero
	-[0x80002064]:fsw fa2, 248(a5)
Current Store : [0x80002068] : sw a7, 252(a5) -- Store: [0x8000e3f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002078]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000207c]:csrrs a7, fflags, zero
	-[0x80002080]:fsw fa2, 256(a5)
Current Store : [0x80002084] : sw a7, 260(a5) -- Store: [0x8000e3f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002094]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002098]:csrrs a7, fflags, zero
	-[0x8000209c]:fsw fa2, 264(a5)
Current Store : [0x800020a0] : sw a7, 268(a5) -- Store: [0x8000e400]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800020b4]:csrrs a7, fflags, zero
	-[0x800020b8]:fsw fa2, 272(a5)
Current Store : [0x800020bc] : sw a7, 276(a5) -- Store: [0x8000e408]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800020d0]:csrrs a7, fflags, zero
	-[0x800020d4]:fsw fa2, 280(a5)
Current Store : [0x800020d8] : sw a7, 284(a5) -- Store: [0x8000e410]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800020ec]:csrrs a7, fflags, zero
	-[0x800020f0]:fsw fa2, 288(a5)
Current Store : [0x800020f4] : sw a7, 292(a5) -- Store: [0x8000e418]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002104]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002108]:csrrs a7, fflags, zero
	-[0x8000210c]:fsw fa2, 296(a5)
Current Store : [0x80002110] : sw a7, 300(a5) -- Store: [0x8000e420]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002120]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002124]:csrrs a7, fflags, zero
	-[0x80002128]:fsw fa2, 304(a5)
Current Store : [0x8000212c] : sw a7, 308(a5) -- Store: [0x8000e428]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000213c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002140]:csrrs a7, fflags, zero
	-[0x80002144]:fsw fa2, 312(a5)
Current Store : [0x80002148] : sw a7, 316(a5) -- Store: [0x8000e430]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002158]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000215c]:csrrs a7, fflags, zero
	-[0x80002160]:fsw fa2, 320(a5)
Current Store : [0x80002164] : sw a7, 324(a5) -- Store: [0x8000e438]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002174]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002178]:csrrs a7, fflags, zero
	-[0x8000217c]:fsw fa2, 328(a5)
Current Store : [0x80002180] : sw a7, 332(a5) -- Store: [0x8000e440]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002190]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002194]:csrrs a7, fflags, zero
	-[0x80002198]:fsw fa2, 336(a5)
Current Store : [0x8000219c] : sw a7, 340(a5) -- Store: [0x8000e448]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800021b0]:csrrs a7, fflags, zero
	-[0x800021b4]:fsw fa2, 344(a5)
Current Store : [0x800021b8] : sw a7, 348(a5) -- Store: [0x8000e450]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800021cc]:csrrs a7, fflags, zero
	-[0x800021d0]:fsw fa2, 352(a5)
Current Store : [0x800021d4] : sw a7, 356(a5) -- Store: [0x8000e458]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800021e8]:csrrs a7, fflags, zero
	-[0x800021ec]:fsw fa2, 360(a5)
Current Store : [0x800021f0] : sw a7, 364(a5) -- Store: [0x8000e460]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002200]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002204]:csrrs a7, fflags, zero
	-[0x80002208]:fsw fa2, 368(a5)
Current Store : [0x8000220c] : sw a7, 372(a5) -- Store: [0x8000e468]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000221c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002220]:csrrs a7, fflags, zero
	-[0x80002224]:fsw fa2, 376(a5)
Current Store : [0x80002228] : sw a7, 380(a5) -- Store: [0x8000e470]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002238]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000223c]:csrrs a7, fflags, zero
	-[0x80002240]:fsw fa2, 384(a5)
Current Store : [0x80002244] : sw a7, 388(a5) -- Store: [0x8000e478]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002254]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002258]:csrrs a7, fflags, zero
	-[0x8000225c]:fsw fa2, 392(a5)
Current Store : [0x80002260] : sw a7, 396(a5) -- Store: [0x8000e480]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002270]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002274]:csrrs a7, fflags, zero
	-[0x80002278]:fsw fa2, 400(a5)
Current Store : [0x8000227c] : sw a7, 404(a5) -- Store: [0x8000e488]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000228c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002290]:csrrs a7, fflags, zero
	-[0x80002294]:fsw fa2, 408(a5)
Current Store : [0x80002298] : sw a7, 412(a5) -- Store: [0x8000e490]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800022ac]:csrrs a7, fflags, zero
	-[0x800022b0]:fsw fa2, 416(a5)
Current Store : [0x800022b4] : sw a7, 420(a5) -- Store: [0x8000e498]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800022c8]:csrrs a7, fflags, zero
	-[0x800022cc]:fsw fa2, 424(a5)
Current Store : [0x800022d0] : sw a7, 428(a5) -- Store: [0x8000e4a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800022e4]:csrrs a7, fflags, zero
	-[0x800022e8]:fsw fa2, 432(a5)
Current Store : [0x800022ec] : sw a7, 436(a5) -- Store: [0x8000e4a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002300]:csrrs a7, fflags, zero
	-[0x80002304]:fsw fa2, 440(a5)
Current Store : [0x80002308] : sw a7, 444(a5) -- Store: [0x8000e4b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002318]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000231c]:csrrs a7, fflags, zero
	-[0x80002320]:fsw fa2, 448(a5)
Current Store : [0x80002324] : sw a7, 452(a5) -- Store: [0x8000e4b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002334]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002338]:csrrs a7, fflags, zero
	-[0x8000233c]:fsw fa2, 456(a5)
Current Store : [0x80002340] : sw a7, 460(a5) -- Store: [0x8000e4c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002350]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002354]:csrrs a7, fflags, zero
	-[0x80002358]:fsw fa2, 464(a5)
Current Store : [0x8000235c] : sw a7, 468(a5) -- Store: [0x8000e4c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000236c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002370]:csrrs a7, fflags, zero
	-[0x80002374]:fsw fa2, 472(a5)
Current Store : [0x80002378] : sw a7, 476(a5) -- Store: [0x8000e4d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002388]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000238c]:csrrs a7, fflags, zero
	-[0x80002390]:fsw fa2, 480(a5)
Current Store : [0x80002394] : sw a7, 484(a5) -- Store: [0x8000e4d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800023a8]:csrrs a7, fflags, zero
	-[0x800023ac]:fsw fa2, 488(a5)
Current Store : [0x800023b0] : sw a7, 492(a5) -- Store: [0x8000e4e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800023c4]:csrrs a7, fflags, zero
	-[0x800023c8]:fsw fa2, 496(a5)
Current Store : [0x800023cc] : sw a7, 500(a5) -- Store: [0x8000e4e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800023e0]:csrrs a7, fflags, zero
	-[0x800023e4]:fsw fa2, 504(a5)
Current Store : [0x800023e8] : sw a7, 508(a5) -- Store: [0x8000e4f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800023fc]:csrrs a7, fflags, zero
	-[0x80002400]:fsw fa2, 512(a5)
Current Store : [0x80002404] : sw a7, 516(a5) -- Store: [0x8000e4f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002414]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002418]:csrrs a7, fflags, zero
	-[0x8000241c]:fsw fa2, 520(a5)
Current Store : [0x80002420] : sw a7, 524(a5) -- Store: [0x8000e500]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002430]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002434]:csrrs a7, fflags, zero
	-[0x80002438]:fsw fa2, 528(a5)
Current Store : [0x8000243c] : sw a7, 532(a5) -- Store: [0x8000e508]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000244c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002450]:csrrs a7, fflags, zero
	-[0x80002454]:fsw fa2, 536(a5)
Current Store : [0x80002458] : sw a7, 540(a5) -- Store: [0x8000e510]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002468]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000246c]:csrrs a7, fflags, zero
	-[0x80002470]:fsw fa2, 544(a5)
Current Store : [0x80002474] : sw a7, 548(a5) -- Store: [0x8000e518]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002484]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002488]:csrrs a7, fflags, zero
	-[0x8000248c]:fsw fa2, 552(a5)
Current Store : [0x80002490] : sw a7, 556(a5) -- Store: [0x8000e520]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800024a4]:csrrs a7, fflags, zero
	-[0x800024a8]:fsw fa2, 560(a5)
Current Store : [0x800024ac] : sw a7, 564(a5) -- Store: [0x8000e528]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800024c0]:csrrs a7, fflags, zero
	-[0x800024c4]:fsw fa2, 568(a5)
Current Store : [0x800024c8] : sw a7, 572(a5) -- Store: [0x8000e530]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800024dc]:csrrs a7, fflags, zero
	-[0x800024e0]:fsw fa2, 576(a5)
Current Store : [0x800024e4] : sw a7, 580(a5) -- Store: [0x8000e538]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800024f8]:csrrs a7, fflags, zero
	-[0x800024fc]:fsw fa2, 584(a5)
Current Store : [0x80002500] : sw a7, 588(a5) -- Store: [0x8000e540]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002510]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002514]:csrrs a7, fflags, zero
	-[0x80002518]:fsw fa2, 592(a5)
Current Store : [0x8000251c] : sw a7, 596(a5) -- Store: [0x8000e548]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000252c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002530]:csrrs a7, fflags, zero
	-[0x80002534]:fsw fa2, 600(a5)
Current Store : [0x80002538] : sw a7, 604(a5) -- Store: [0x8000e550]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002548]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000254c]:csrrs a7, fflags, zero
	-[0x80002550]:fsw fa2, 608(a5)
Current Store : [0x80002554] : sw a7, 612(a5) -- Store: [0x8000e558]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002564]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002568]:csrrs a7, fflags, zero
	-[0x8000256c]:fsw fa2, 616(a5)
Current Store : [0x80002570] : sw a7, 620(a5) -- Store: [0x8000e560]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002580]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002584]:csrrs a7, fflags, zero
	-[0x80002588]:fsw fa2, 624(a5)
Current Store : [0x8000258c] : sw a7, 628(a5) -- Store: [0x8000e568]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000259c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800025a0]:csrrs a7, fflags, zero
	-[0x800025a4]:fsw fa2, 632(a5)
Current Store : [0x800025a8] : sw a7, 636(a5) -- Store: [0x8000e570]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800025bc]:csrrs a7, fflags, zero
	-[0x800025c0]:fsw fa2, 640(a5)
Current Store : [0x800025c4] : sw a7, 644(a5) -- Store: [0x8000e578]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800025d8]:csrrs a7, fflags, zero
	-[0x800025dc]:fsw fa2, 648(a5)
Current Store : [0x800025e0] : sw a7, 652(a5) -- Store: [0x8000e580]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800025f4]:csrrs a7, fflags, zero
	-[0x800025f8]:fsw fa2, 656(a5)
Current Store : [0x800025fc] : sw a7, 660(a5) -- Store: [0x8000e588]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000260c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002610]:csrrs a7, fflags, zero
	-[0x80002614]:fsw fa2, 664(a5)
Current Store : [0x80002618] : sw a7, 668(a5) -- Store: [0x8000e590]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002628]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000262c]:csrrs a7, fflags, zero
	-[0x80002630]:fsw fa2, 672(a5)
Current Store : [0x80002634] : sw a7, 676(a5) -- Store: [0x8000e598]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002644]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002648]:csrrs a7, fflags, zero
	-[0x8000264c]:fsw fa2, 680(a5)
Current Store : [0x80002650] : sw a7, 684(a5) -- Store: [0x8000e5a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002660]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002664]:csrrs a7, fflags, zero
	-[0x80002668]:fsw fa2, 688(a5)
Current Store : [0x8000266c] : sw a7, 692(a5) -- Store: [0x8000e5a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000267c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002680]:csrrs a7, fflags, zero
	-[0x80002684]:fsw fa2, 696(a5)
Current Store : [0x80002688] : sw a7, 700(a5) -- Store: [0x8000e5b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002698]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000269c]:csrrs a7, fflags, zero
	-[0x800026a0]:fsw fa2, 704(a5)
Current Store : [0x800026a4] : sw a7, 708(a5) -- Store: [0x8000e5b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800026b8]:csrrs a7, fflags, zero
	-[0x800026bc]:fsw fa2, 712(a5)
Current Store : [0x800026c0] : sw a7, 716(a5) -- Store: [0x8000e5c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800026d4]:csrrs a7, fflags, zero
	-[0x800026d8]:fsw fa2, 720(a5)
Current Store : [0x800026dc] : sw a7, 724(a5) -- Store: [0x8000e5c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800026f0]:csrrs a7, fflags, zero
	-[0x800026f4]:fsw fa2, 728(a5)
Current Store : [0x800026f8] : sw a7, 732(a5) -- Store: [0x8000e5d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002708]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000270c]:csrrs a7, fflags, zero
	-[0x80002710]:fsw fa2, 736(a5)
Current Store : [0x80002714] : sw a7, 740(a5) -- Store: [0x8000e5d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002724]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002728]:csrrs a7, fflags, zero
	-[0x8000272c]:fsw fa2, 744(a5)
Current Store : [0x80002730] : sw a7, 748(a5) -- Store: [0x8000e5e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002740]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002744]:csrrs a7, fflags, zero
	-[0x80002748]:fsw fa2, 752(a5)
Current Store : [0x8000274c] : sw a7, 756(a5) -- Store: [0x8000e5e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000275c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002760]:csrrs a7, fflags, zero
	-[0x80002764]:fsw fa2, 760(a5)
Current Store : [0x80002768] : sw a7, 764(a5) -- Store: [0x8000e5f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002778]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000277c]:csrrs a7, fflags, zero
	-[0x80002780]:fsw fa2, 768(a5)
Current Store : [0x80002784] : sw a7, 772(a5) -- Store: [0x8000e5f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002794]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002798]:csrrs a7, fflags, zero
	-[0x8000279c]:fsw fa2, 776(a5)
Current Store : [0x800027a0] : sw a7, 780(a5) -- Store: [0x8000e600]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800027b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800027b4]:csrrs a7, fflags, zero
	-[0x800027b8]:fsw fa2, 784(a5)
Current Store : [0x800027bc] : sw a7, 788(a5) -- Store: [0x8000e608]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800027cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800027d0]:csrrs a7, fflags, zero
	-[0x800027d4]:fsw fa2, 792(a5)
Current Store : [0x800027d8] : sw a7, 796(a5) -- Store: [0x8000e610]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800027e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800027ec]:csrrs a7, fflags, zero
	-[0x800027f0]:fsw fa2, 800(a5)
Current Store : [0x800027f4] : sw a7, 804(a5) -- Store: [0x8000e618]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002804]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002808]:csrrs a7, fflags, zero
	-[0x8000280c]:fsw fa2, 808(a5)
Current Store : [0x80002810] : sw a7, 812(a5) -- Store: [0x8000e620]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002820]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002824]:csrrs a7, fflags, zero
	-[0x80002828]:fsw fa2, 816(a5)
Current Store : [0x8000282c] : sw a7, 820(a5) -- Store: [0x8000e628]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000283c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002840]:csrrs a7, fflags, zero
	-[0x80002844]:fsw fa2, 824(a5)
Current Store : [0x80002848] : sw a7, 828(a5) -- Store: [0x8000e630]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002858]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000285c]:csrrs a7, fflags, zero
	-[0x80002860]:fsw fa2, 832(a5)
Current Store : [0x80002864] : sw a7, 836(a5) -- Store: [0x8000e638]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002874]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002878]:csrrs a7, fflags, zero
	-[0x8000287c]:fsw fa2, 840(a5)
Current Store : [0x80002880] : sw a7, 844(a5) -- Store: [0x8000e640]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002890]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002894]:csrrs a7, fflags, zero
	-[0x80002898]:fsw fa2, 848(a5)
Current Store : [0x8000289c] : sw a7, 852(a5) -- Store: [0x8000e648]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800028ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800028b0]:csrrs a7, fflags, zero
	-[0x800028b4]:fsw fa2, 856(a5)
Current Store : [0x800028b8] : sw a7, 860(a5) -- Store: [0x8000e650]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800028c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800028cc]:csrrs a7, fflags, zero
	-[0x800028d0]:fsw fa2, 864(a5)
Current Store : [0x800028d4] : sw a7, 868(a5) -- Store: [0x8000e658]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800028e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800028e8]:csrrs a7, fflags, zero
	-[0x800028ec]:fsw fa2, 872(a5)
Current Store : [0x800028f0] : sw a7, 876(a5) -- Store: [0x8000e660]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002900]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002904]:csrrs a7, fflags, zero
	-[0x80002908]:fsw fa2, 880(a5)
Current Store : [0x8000290c] : sw a7, 884(a5) -- Store: [0x8000e668]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000291c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002920]:csrrs a7, fflags, zero
	-[0x80002924]:fsw fa2, 888(a5)
Current Store : [0x80002928] : sw a7, 892(a5) -- Store: [0x8000e670]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002938]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000293c]:csrrs a7, fflags, zero
	-[0x80002940]:fsw fa2, 896(a5)
Current Store : [0x80002944] : sw a7, 900(a5) -- Store: [0x8000e678]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002954]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002958]:csrrs a7, fflags, zero
	-[0x8000295c]:fsw fa2, 904(a5)
Current Store : [0x80002960] : sw a7, 908(a5) -- Store: [0x8000e680]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002970]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002974]:csrrs a7, fflags, zero
	-[0x80002978]:fsw fa2, 912(a5)
Current Store : [0x8000297c] : sw a7, 916(a5) -- Store: [0x8000e688]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000298c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002990]:csrrs a7, fflags, zero
	-[0x80002994]:fsw fa2, 920(a5)
Current Store : [0x80002998] : sw a7, 924(a5) -- Store: [0x8000e690]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800029a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800029ac]:csrrs a7, fflags, zero
	-[0x800029b0]:fsw fa2, 928(a5)
Current Store : [0x800029b4] : sw a7, 932(a5) -- Store: [0x8000e698]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800029c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800029c8]:csrrs a7, fflags, zero
	-[0x800029cc]:fsw fa2, 936(a5)
Current Store : [0x800029d0] : sw a7, 940(a5) -- Store: [0x8000e6a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800029e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800029e4]:csrrs a7, fflags, zero
	-[0x800029e8]:fsw fa2, 944(a5)
Current Store : [0x800029ec] : sw a7, 948(a5) -- Store: [0x8000e6a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800029fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a00]:csrrs a7, fflags, zero
	-[0x80002a04]:fsw fa2, 952(a5)
Current Store : [0x80002a08] : sw a7, 956(a5) -- Store: [0x8000e6b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002a18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a1c]:csrrs a7, fflags, zero
	-[0x80002a20]:fsw fa2, 960(a5)
Current Store : [0x80002a24] : sw a7, 964(a5) -- Store: [0x8000e6b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002a34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a38]:csrrs a7, fflags, zero
	-[0x80002a3c]:fsw fa2, 968(a5)
Current Store : [0x80002a40] : sw a7, 972(a5) -- Store: [0x8000e6c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002a50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a54]:csrrs a7, fflags, zero
	-[0x80002a58]:fsw fa2, 976(a5)
Current Store : [0x80002a5c] : sw a7, 980(a5) -- Store: [0x8000e6c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002a6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a70]:csrrs a7, fflags, zero
	-[0x80002a74]:fsw fa2, 984(a5)
Current Store : [0x80002a78] : sw a7, 988(a5) -- Store: [0x8000e6d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002a88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002a8c]:csrrs a7, fflags, zero
	-[0x80002a90]:fsw fa2, 992(a5)
Current Store : [0x80002a94] : sw a7, 996(a5) -- Store: [0x8000e6d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002aa4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002aa8]:csrrs a7, fflags, zero
	-[0x80002aac]:fsw fa2, 1000(a5)
Current Store : [0x80002ab0] : sw a7, 1004(a5) -- Store: [0x8000e6e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002ac0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002ac4]:csrrs a7, fflags, zero
	-[0x80002ac8]:fsw fa2, 1008(a5)
Current Store : [0x80002acc] : sw a7, 1012(a5) -- Store: [0x8000e6e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002adc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002ae0]:csrrs a7, fflags, zero
	-[0x80002ae4]:fsw fa2, 1016(a5)
Current Store : [0x80002ae8] : sw a7, 1020(a5) -- Store: [0x8000e6f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002af8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002afc]:csrrs a7, fflags, zero
	-[0x80002b00]:fsw fa2, 1024(a5)
Current Store : [0x80002b04] : sw a7, 1028(a5) -- Store: [0x8000e6f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002b14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002b18]:csrrs a7, fflags, zero
	-[0x80002b1c]:fsw fa2, 1032(a5)
Current Store : [0x80002b20] : sw a7, 1036(a5) -- Store: [0x8000e700]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002b30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002b34]:csrrs a7, fflags, zero
	-[0x80002b38]:fsw fa2, 1040(a5)
Current Store : [0x80002b3c] : sw a7, 1044(a5) -- Store: [0x8000e708]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002b4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002b50]:csrrs a7, fflags, zero
	-[0x80002b54]:fsw fa2, 1048(a5)
Current Store : [0x80002b58] : sw a7, 1052(a5) -- Store: [0x8000e710]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002b68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002b6c]:csrrs a7, fflags, zero
	-[0x80002b70]:fsw fa2, 1056(a5)
Current Store : [0x80002b74] : sw a7, 1060(a5) -- Store: [0x8000e718]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002b84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002b88]:csrrs a7, fflags, zero
	-[0x80002b8c]:fsw fa2, 1064(a5)
Current Store : [0x80002b90] : sw a7, 1068(a5) -- Store: [0x8000e720]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002ba0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002ba4]:csrrs a7, fflags, zero
	-[0x80002ba8]:fsw fa2, 1072(a5)
Current Store : [0x80002bac] : sw a7, 1076(a5) -- Store: [0x8000e728]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002bbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002bc0]:csrrs a7, fflags, zero
	-[0x80002bc4]:fsw fa2, 1080(a5)
Current Store : [0x80002bc8] : sw a7, 1084(a5) -- Store: [0x8000e730]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002bd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002bdc]:csrrs a7, fflags, zero
	-[0x80002be0]:fsw fa2, 1088(a5)
Current Store : [0x80002be4] : sw a7, 1092(a5) -- Store: [0x8000e738]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002bf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002bf8]:csrrs a7, fflags, zero
	-[0x80002bfc]:fsw fa2, 1096(a5)
Current Store : [0x80002c00] : sw a7, 1100(a5) -- Store: [0x8000e740]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002c14]:csrrs a7, fflags, zero
	-[0x80002c18]:fsw fa2, 1104(a5)
Current Store : [0x80002c1c] : sw a7, 1108(a5) -- Store: [0x8000e748]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002c30]:csrrs a7, fflags, zero
	-[0x80002c34]:fsw fa2, 1112(a5)
Current Store : [0x80002c38] : sw a7, 1116(a5) -- Store: [0x8000e750]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002c4c]:csrrs a7, fflags, zero
	-[0x80002c50]:fsw fa2, 1120(a5)
Current Store : [0x80002c54] : sw a7, 1124(a5) -- Store: [0x8000e758]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002c68]:csrrs a7, fflags, zero
	-[0x80002c6c]:fsw fa2, 1128(a5)
Current Store : [0x80002c70] : sw a7, 1132(a5) -- Store: [0x8000e760]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002c84]:csrrs a7, fflags, zero
	-[0x80002c88]:fsw fa2, 1136(a5)
Current Store : [0x80002c8c] : sw a7, 1140(a5) -- Store: [0x8000e768]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002c9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002ca0]:csrrs a7, fflags, zero
	-[0x80002ca4]:fsw fa2, 1144(a5)
Current Store : [0x80002ca8] : sw a7, 1148(a5) -- Store: [0x8000e770]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002cb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002cbc]:csrrs a7, fflags, zero
	-[0x80002cc0]:fsw fa2, 1152(a5)
Current Store : [0x80002cc4] : sw a7, 1156(a5) -- Store: [0x8000e778]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002cd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002cd8]:csrrs a7, fflags, zero
	-[0x80002cdc]:fsw fa2, 1160(a5)
Current Store : [0x80002ce0] : sw a7, 1164(a5) -- Store: [0x8000e780]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002cf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002cf4]:csrrs a7, fflags, zero
	-[0x80002cf8]:fsw fa2, 1168(a5)
Current Store : [0x80002cfc] : sw a7, 1172(a5) -- Store: [0x8000e788]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d10]:csrrs a7, fflags, zero
	-[0x80002d14]:fsw fa2, 1176(a5)
Current Store : [0x80002d18] : sw a7, 1180(a5) -- Store: [0x8000e790]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d2c]:csrrs a7, fflags, zero
	-[0x80002d30]:fsw fa2, 1184(a5)
Current Store : [0x80002d34] : sw a7, 1188(a5) -- Store: [0x8000e798]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d48]:csrrs a7, fflags, zero
	-[0x80002d4c]:fsw fa2, 1192(a5)
Current Store : [0x80002d50] : sw a7, 1196(a5) -- Store: [0x8000e7a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d64]:csrrs a7, fflags, zero
	-[0x80002d68]:fsw fa2, 1200(a5)
Current Store : [0x80002d6c] : sw a7, 1204(a5) -- Store: [0x8000e7a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d80]:csrrs a7, fflags, zero
	-[0x80002d84]:fsw fa2, 1208(a5)
Current Store : [0x80002d88] : sw a7, 1212(a5) -- Store: [0x8000e7b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002d98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002d9c]:csrrs a7, fflags, zero
	-[0x80002da0]:fsw fa2, 1216(a5)
Current Store : [0x80002da4] : sw a7, 1220(a5) -- Store: [0x8000e7b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002db4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002db8]:csrrs a7, fflags, zero
	-[0x80002dbc]:fsw fa2, 1224(a5)
Current Store : [0x80002dc0] : sw a7, 1228(a5) -- Store: [0x8000e7c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002dd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002dd4]:csrrs a7, fflags, zero
	-[0x80002dd8]:fsw fa2, 1232(a5)
Current Store : [0x80002ddc] : sw a7, 1236(a5) -- Store: [0x8000e7c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002dec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002df0]:csrrs a7, fflags, zero
	-[0x80002df4]:fsw fa2, 1240(a5)
Current Store : [0x80002df8] : sw a7, 1244(a5) -- Store: [0x8000e7d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e0c]:csrrs a7, fflags, zero
	-[0x80002e10]:fsw fa2, 1248(a5)
Current Store : [0x80002e14] : sw a7, 1252(a5) -- Store: [0x8000e7d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e28]:csrrs a7, fflags, zero
	-[0x80002e2c]:fsw fa2, 1256(a5)
Current Store : [0x80002e30] : sw a7, 1260(a5) -- Store: [0x8000e7e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e44]:csrrs a7, fflags, zero
	-[0x80002e48]:fsw fa2, 1264(a5)
Current Store : [0x80002e4c] : sw a7, 1268(a5) -- Store: [0x8000e7e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e60]:csrrs a7, fflags, zero
	-[0x80002e64]:fsw fa2, 1272(a5)
Current Store : [0x80002e68] : sw a7, 1276(a5) -- Store: [0x8000e7f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e7c]:csrrs a7, fflags, zero
	-[0x80002e80]:fsw fa2, 1280(a5)
Current Store : [0x80002e84] : sw a7, 1284(a5) -- Store: [0x8000e7f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002e94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002e98]:csrrs a7, fflags, zero
	-[0x80002e9c]:fsw fa2, 1288(a5)
Current Store : [0x80002ea0] : sw a7, 1292(a5) -- Store: [0x8000e800]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002eb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002eb4]:csrrs a7, fflags, zero
	-[0x80002eb8]:fsw fa2, 1296(a5)
Current Store : [0x80002ebc] : sw a7, 1300(a5) -- Store: [0x8000e808]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002ecc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002ed0]:csrrs a7, fflags, zero
	-[0x80002ed4]:fsw fa2, 1304(a5)
Current Store : [0x80002ed8] : sw a7, 1308(a5) -- Store: [0x8000e810]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002ee8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002eec]:csrrs a7, fflags, zero
	-[0x80002ef0]:fsw fa2, 1312(a5)
Current Store : [0x80002ef4] : sw a7, 1316(a5) -- Store: [0x8000e818]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f08]:csrrs a7, fflags, zero
	-[0x80002f0c]:fsw fa2, 1320(a5)
Current Store : [0x80002f10] : sw a7, 1324(a5) -- Store: [0x8000e820]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f24]:csrrs a7, fflags, zero
	-[0x80002f28]:fsw fa2, 1328(a5)
Current Store : [0x80002f2c] : sw a7, 1332(a5) -- Store: [0x8000e828]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f40]:csrrs a7, fflags, zero
	-[0x80002f44]:fsw fa2, 1336(a5)
Current Store : [0x80002f48] : sw a7, 1340(a5) -- Store: [0x8000e830]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f5c]:csrrs a7, fflags, zero
	-[0x80002f60]:fsw fa2, 1344(a5)
Current Store : [0x80002f64] : sw a7, 1348(a5) -- Store: [0x8000e838]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f78]:csrrs a7, fflags, zero
	-[0x80002f7c]:fsw fa2, 1352(a5)
Current Store : [0x80002f80] : sw a7, 1356(a5) -- Store: [0x8000e840]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002f90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002f94]:csrrs a7, fflags, zero
	-[0x80002f98]:fsw fa2, 1360(a5)
Current Store : [0x80002f9c] : sw a7, 1364(a5) -- Store: [0x8000e848]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002fac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002fb0]:csrrs a7, fflags, zero
	-[0x80002fb4]:fsw fa2, 1368(a5)
Current Store : [0x80002fb8] : sw a7, 1372(a5) -- Store: [0x8000e850]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002fc8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002fcc]:csrrs a7, fflags, zero
	-[0x80002fd0]:fsw fa2, 1376(a5)
Current Store : [0x80002fd4] : sw a7, 1380(a5) -- Store: [0x8000e858]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002fe4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80002fe8]:csrrs a7, fflags, zero
	-[0x80002fec]:fsw fa2, 1384(a5)
Current Store : [0x80002ff0] : sw a7, 1388(a5) -- Store: [0x8000e860]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003000]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003004]:csrrs a7, fflags, zero
	-[0x80003008]:fsw fa2, 1392(a5)
Current Store : [0x8000300c] : sw a7, 1396(a5) -- Store: [0x8000e868]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000301c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003020]:csrrs a7, fflags, zero
	-[0x80003024]:fsw fa2, 1400(a5)
Current Store : [0x80003028] : sw a7, 1404(a5) -- Store: [0x8000e870]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003038]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000303c]:csrrs a7, fflags, zero
	-[0x80003040]:fsw fa2, 1408(a5)
Current Store : [0x80003044] : sw a7, 1412(a5) -- Store: [0x8000e878]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003054]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003058]:csrrs a7, fflags, zero
	-[0x8000305c]:fsw fa2, 1416(a5)
Current Store : [0x80003060] : sw a7, 1420(a5) -- Store: [0x8000e880]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003070]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003074]:csrrs a7, fflags, zero
	-[0x80003078]:fsw fa2, 1424(a5)
Current Store : [0x8000307c] : sw a7, 1428(a5) -- Store: [0x8000e888]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000308c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003090]:csrrs a7, fflags, zero
	-[0x80003094]:fsw fa2, 1432(a5)
Current Store : [0x80003098] : sw a7, 1436(a5) -- Store: [0x8000e890]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800030a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800030ac]:csrrs a7, fflags, zero
	-[0x800030b0]:fsw fa2, 1440(a5)
Current Store : [0x800030b4] : sw a7, 1444(a5) -- Store: [0x8000e898]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800030c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800030c8]:csrrs a7, fflags, zero
	-[0x800030cc]:fsw fa2, 1448(a5)
Current Store : [0x800030d0] : sw a7, 1452(a5) -- Store: [0x8000e8a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800030e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800030e4]:csrrs a7, fflags, zero
	-[0x800030e8]:fsw fa2, 1456(a5)
Current Store : [0x800030ec] : sw a7, 1460(a5) -- Store: [0x8000e8a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800030fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003100]:csrrs a7, fflags, zero
	-[0x80003104]:fsw fa2, 1464(a5)
Current Store : [0x80003108] : sw a7, 1468(a5) -- Store: [0x8000e8b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003118]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000311c]:csrrs a7, fflags, zero
	-[0x80003120]:fsw fa2, 1472(a5)
Current Store : [0x80003124] : sw a7, 1476(a5) -- Store: [0x8000e8b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003134]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003138]:csrrs a7, fflags, zero
	-[0x8000313c]:fsw fa2, 1480(a5)
Current Store : [0x80003140] : sw a7, 1484(a5) -- Store: [0x8000e8c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003150]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003154]:csrrs a7, fflags, zero
	-[0x80003158]:fsw fa2, 1488(a5)
Current Store : [0x8000315c] : sw a7, 1492(a5) -- Store: [0x8000e8c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000316c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003170]:csrrs a7, fflags, zero
	-[0x80003174]:fsw fa2, 1496(a5)
Current Store : [0x80003178] : sw a7, 1500(a5) -- Store: [0x8000e8d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003188]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000318c]:csrrs a7, fflags, zero
	-[0x80003190]:fsw fa2, 1504(a5)
Current Store : [0x80003194] : sw a7, 1508(a5) -- Store: [0x8000e8d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800031a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800031a8]:csrrs a7, fflags, zero
	-[0x800031ac]:fsw fa2, 1512(a5)
Current Store : [0x800031b0] : sw a7, 1516(a5) -- Store: [0x8000e8e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800031c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800031c4]:csrrs a7, fflags, zero
	-[0x800031c8]:fsw fa2, 1520(a5)
Current Store : [0x800031cc] : sw a7, 1524(a5) -- Store: [0x8000e8e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800031dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800031e0]:csrrs a7, fflags, zero
	-[0x800031e4]:fsw fa2, 1528(a5)
Current Store : [0x800031e8] : sw a7, 1532(a5) -- Store: [0x8000e8f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800031f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800031fc]:csrrs a7, fflags, zero
	-[0x80003200]:fsw fa2, 1536(a5)
Current Store : [0x80003204] : sw a7, 1540(a5) -- Store: [0x8000e8f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003214]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003218]:csrrs a7, fflags, zero
	-[0x8000321c]:fsw fa2, 1544(a5)
Current Store : [0x80003220] : sw a7, 1548(a5) -- Store: [0x8000e900]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003230]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003234]:csrrs a7, fflags, zero
	-[0x80003238]:fsw fa2, 1552(a5)
Current Store : [0x8000323c] : sw a7, 1556(a5) -- Store: [0x8000e908]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000324c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003250]:csrrs a7, fflags, zero
	-[0x80003254]:fsw fa2, 1560(a5)
Current Store : [0x80003258] : sw a7, 1564(a5) -- Store: [0x8000e910]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003268]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000326c]:csrrs a7, fflags, zero
	-[0x80003270]:fsw fa2, 1568(a5)
Current Store : [0x80003274] : sw a7, 1572(a5) -- Store: [0x8000e918]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003284]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003288]:csrrs a7, fflags, zero
	-[0x8000328c]:fsw fa2, 1576(a5)
Current Store : [0x80003290] : sw a7, 1580(a5) -- Store: [0x8000e920]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800032a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800032a4]:csrrs a7, fflags, zero
	-[0x800032a8]:fsw fa2, 1584(a5)
Current Store : [0x800032ac] : sw a7, 1588(a5) -- Store: [0x8000e928]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800032bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800032c0]:csrrs a7, fflags, zero
	-[0x800032c4]:fsw fa2, 1592(a5)
Current Store : [0x800032c8] : sw a7, 1596(a5) -- Store: [0x8000e930]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800032d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800032dc]:csrrs a7, fflags, zero
	-[0x800032e0]:fsw fa2, 1600(a5)
Current Store : [0x800032e4] : sw a7, 1604(a5) -- Store: [0x8000e938]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800032f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800032f8]:csrrs a7, fflags, zero
	-[0x800032fc]:fsw fa2, 1608(a5)
Current Store : [0x80003300] : sw a7, 1612(a5) -- Store: [0x8000e940]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003310]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003314]:csrrs a7, fflags, zero
	-[0x80003318]:fsw fa2, 1616(a5)
Current Store : [0x8000331c] : sw a7, 1620(a5) -- Store: [0x8000e948]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000332c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003330]:csrrs a7, fflags, zero
	-[0x80003334]:fsw fa2, 1624(a5)
Current Store : [0x80003338] : sw a7, 1628(a5) -- Store: [0x8000e950]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003348]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000334c]:csrrs a7, fflags, zero
	-[0x80003350]:fsw fa2, 1632(a5)
Current Store : [0x80003354] : sw a7, 1636(a5) -- Store: [0x8000e958]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003364]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003368]:csrrs a7, fflags, zero
	-[0x8000336c]:fsw fa2, 1640(a5)
Current Store : [0x80003370] : sw a7, 1644(a5) -- Store: [0x8000e960]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003380]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003384]:csrrs a7, fflags, zero
	-[0x80003388]:fsw fa2, 1648(a5)
Current Store : [0x8000338c] : sw a7, 1652(a5) -- Store: [0x8000e968]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000339c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800033a0]:csrrs a7, fflags, zero
	-[0x800033a4]:fsw fa2, 1656(a5)
Current Store : [0x800033a8] : sw a7, 1660(a5) -- Store: [0x8000e970]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800033b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800033bc]:csrrs a7, fflags, zero
	-[0x800033c0]:fsw fa2, 1664(a5)
Current Store : [0x800033c4] : sw a7, 1668(a5) -- Store: [0x8000e978]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800033d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800033d8]:csrrs a7, fflags, zero
	-[0x800033dc]:fsw fa2, 1672(a5)
Current Store : [0x800033e0] : sw a7, 1676(a5) -- Store: [0x8000e980]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800033f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800033f4]:csrrs a7, fflags, zero
	-[0x800033f8]:fsw fa2, 1680(a5)
Current Store : [0x800033fc] : sw a7, 1684(a5) -- Store: [0x8000e988]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000340c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003410]:csrrs a7, fflags, zero
	-[0x80003414]:fsw fa2, 1688(a5)
Current Store : [0x80003418] : sw a7, 1692(a5) -- Store: [0x8000e990]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003428]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000342c]:csrrs a7, fflags, zero
	-[0x80003430]:fsw fa2, 1696(a5)
Current Store : [0x80003434] : sw a7, 1700(a5) -- Store: [0x8000e998]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003444]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003448]:csrrs a7, fflags, zero
	-[0x8000344c]:fsw fa2, 1704(a5)
Current Store : [0x80003450] : sw a7, 1708(a5) -- Store: [0x8000e9a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003460]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003464]:csrrs a7, fflags, zero
	-[0x80003468]:fsw fa2, 1712(a5)
Current Store : [0x8000346c] : sw a7, 1716(a5) -- Store: [0x8000e9a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000347c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003480]:csrrs a7, fflags, zero
	-[0x80003484]:fsw fa2, 1720(a5)
Current Store : [0x80003488] : sw a7, 1724(a5) -- Store: [0x8000e9b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003498]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000349c]:csrrs a7, fflags, zero
	-[0x800034a0]:fsw fa2, 1728(a5)
Current Store : [0x800034a4] : sw a7, 1732(a5) -- Store: [0x8000e9b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800034b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800034b8]:csrrs a7, fflags, zero
	-[0x800034bc]:fsw fa2, 1736(a5)
Current Store : [0x800034c0] : sw a7, 1740(a5) -- Store: [0x8000e9c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800034d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800034d4]:csrrs a7, fflags, zero
	-[0x800034d8]:fsw fa2, 1744(a5)
Current Store : [0x800034dc] : sw a7, 1748(a5) -- Store: [0x8000e9c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800034ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800034f0]:csrrs a7, fflags, zero
	-[0x800034f4]:fsw fa2, 1752(a5)
Current Store : [0x800034f8] : sw a7, 1756(a5) -- Store: [0x8000e9d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003508]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000350c]:csrrs a7, fflags, zero
	-[0x80003510]:fsw fa2, 1760(a5)
Current Store : [0x80003514] : sw a7, 1764(a5) -- Store: [0x8000e9d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003524]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003528]:csrrs a7, fflags, zero
	-[0x8000352c]:fsw fa2, 1768(a5)
Current Store : [0x80003530] : sw a7, 1772(a5) -- Store: [0x8000e9e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003540]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003544]:csrrs a7, fflags, zero
	-[0x80003548]:fsw fa2, 1776(a5)
Current Store : [0x8000354c] : sw a7, 1780(a5) -- Store: [0x8000e9e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000355c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003560]:csrrs a7, fflags, zero
	-[0x80003564]:fsw fa2, 1784(a5)
Current Store : [0x80003568] : sw a7, 1788(a5) -- Store: [0x8000e9f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003578]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000357c]:csrrs a7, fflags, zero
	-[0x80003580]:fsw fa2, 1792(a5)
Current Store : [0x80003584] : sw a7, 1796(a5) -- Store: [0x8000e9f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003594]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003598]:csrrs a7, fflags, zero
	-[0x8000359c]:fsw fa2, 1800(a5)
Current Store : [0x800035a0] : sw a7, 1804(a5) -- Store: [0x8000ea00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800035b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800035b4]:csrrs a7, fflags, zero
	-[0x800035b8]:fsw fa2, 1808(a5)
Current Store : [0x800035bc] : sw a7, 1812(a5) -- Store: [0x8000ea08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800035cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800035d0]:csrrs a7, fflags, zero
	-[0x800035d4]:fsw fa2, 1816(a5)
Current Store : [0x800035d8] : sw a7, 1820(a5) -- Store: [0x8000ea10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800035e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800035ec]:csrrs a7, fflags, zero
	-[0x800035f0]:fsw fa2, 1824(a5)
Current Store : [0x800035f4] : sw a7, 1828(a5) -- Store: [0x8000ea18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003604]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003608]:csrrs a7, fflags, zero
	-[0x8000360c]:fsw fa2, 1832(a5)
Current Store : [0x80003610] : sw a7, 1836(a5) -- Store: [0x8000ea20]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003620]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003624]:csrrs a7, fflags, zero
	-[0x80003628]:fsw fa2, 1840(a5)
Current Store : [0x8000362c] : sw a7, 1844(a5) -- Store: [0x8000ea28]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000363c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003640]:csrrs a7, fflags, zero
	-[0x80003644]:fsw fa2, 1848(a5)
Current Store : [0x80003648] : sw a7, 1852(a5) -- Store: [0x8000ea30]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003658]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000365c]:csrrs a7, fflags, zero
	-[0x80003660]:fsw fa2, 1856(a5)
Current Store : [0x80003664] : sw a7, 1860(a5) -- Store: [0x8000ea38]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003674]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003678]:csrrs a7, fflags, zero
	-[0x8000367c]:fsw fa2, 1864(a5)
Current Store : [0x80003680] : sw a7, 1868(a5) -- Store: [0x8000ea40]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003690]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003694]:csrrs a7, fflags, zero
	-[0x80003698]:fsw fa2, 1872(a5)
Current Store : [0x8000369c] : sw a7, 1876(a5) -- Store: [0x8000ea48]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800036ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800036b0]:csrrs a7, fflags, zero
	-[0x800036b4]:fsw fa2, 1880(a5)
Current Store : [0x800036b8] : sw a7, 1884(a5) -- Store: [0x8000ea50]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800036c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800036cc]:csrrs a7, fflags, zero
	-[0x800036d0]:fsw fa2, 1888(a5)
Current Store : [0x800036d4] : sw a7, 1892(a5) -- Store: [0x8000ea58]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800036e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800036e8]:csrrs a7, fflags, zero
	-[0x800036ec]:fsw fa2, 1896(a5)
Current Store : [0x800036f0] : sw a7, 1900(a5) -- Store: [0x8000ea60]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003700]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003704]:csrrs a7, fflags, zero
	-[0x80003708]:fsw fa2, 1904(a5)
Current Store : [0x8000370c] : sw a7, 1908(a5) -- Store: [0x8000ea68]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000371c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003720]:csrrs a7, fflags, zero
	-[0x80003724]:fsw fa2, 1912(a5)
Current Store : [0x80003728] : sw a7, 1916(a5) -- Store: [0x8000ea70]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003738]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000373c]:csrrs a7, fflags, zero
	-[0x80003740]:fsw fa2, 1920(a5)
Current Store : [0x80003744] : sw a7, 1924(a5) -- Store: [0x8000ea78]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003754]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003758]:csrrs a7, fflags, zero
	-[0x8000375c]:fsw fa2, 1928(a5)
Current Store : [0x80003760] : sw a7, 1932(a5) -- Store: [0x8000ea80]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003770]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003774]:csrrs a7, fflags, zero
	-[0x80003778]:fsw fa2, 1936(a5)
Current Store : [0x8000377c] : sw a7, 1940(a5) -- Store: [0x8000ea88]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000378c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003790]:csrrs a7, fflags, zero
	-[0x80003794]:fsw fa2, 1944(a5)
Current Store : [0x80003798] : sw a7, 1948(a5) -- Store: [0x8000ea90]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800037a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800037ac]:csrrs a7, fflags, zero
	-[0x800037b0]:fsw fa2, 1952(a5)
Current Store : [0x800037b4] : sw a7, 1956(a5) -- Store: [0x8000ea98]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800037c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800037c8]:csrrs a7, fflags, zero
	-[0x800037cc]:fsw fa2, 1960(a5)
Current Store : [0x800037d0] : sw a7, 1964(a5) -- Store: [0x8000eaa0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800037e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800037e4]:csrrs a7, fflags, zero
	-[0x800037e8]:fsw fa2, 1968(a5)
Current Store : [0x800037ec] : sw a7, 1972(a5) -- Store: [0x8000eaa8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800037fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003800]:csrrs a7, fflags, zero
	-[0x80003804]:fsw fa2, 1976(a5)
Current Store : [0x80003808] : sw a7, 1980(a5) -- Store: [0x8000eab0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003818]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000381c]:csrrs a7, fflags, zero
	-[0x80003820]:fsw fa2, 1984(a5)
Current Store : [0x80003824] : sw a7, 1988(a5) -- Store: [0x8000eab8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003834]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003838]:csrrs a7, fflags, zero
	-[0x8000383c]:fsw fa2, 1992(a5)
Current Store : [0x80003840] : sw a7, 1996(a5) -- Store: [0x8000eac0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003850]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003854]:csrrs a7, fflags, zero
	-[0x80003858]:fsw fa2, 2000(a5)
Current Store : [0x8000385c] : sw a7, 2004(a5) -- Store: [0x8000eac8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000386c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003870]:csrrs a7, fflags, zero
	-[0x80003874]:fsw fa2, 2008(a5)
Current Store : [0x80003878] : sw a7, 2012(a5) -- Store: [0x8000ead0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003888]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000388c]:csrrs a7, fflags, zero
	-[0x80003890]:fsw fa2, 2016(a5)
Current Store : [0x80003894] : sw a7, 2020(a5) -- Store: [0x8000ead8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800038a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800038a8]:csrrs a7, fflags, zero
	-[0x800038ac]:fsw fa2, 2024(a5)
Current Store : [0x800038b0] : sw a7, 2028(a5) -- Store: [0x8000eae0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800038cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800038d0]:csrrs a7, fflags, zero
	-[0x800038d4]:fsw fa2, 0(a5)
Current Store : [0x800038d8] : sw a7, 4(a5) -- Store: [0x8000eae8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800038e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800038ec]:csrrs a7, fflags, zero
	-[0x800038f0]:fsw fa2, 8(a5)
Current Store : [0x800038f4] : sw a7, 12(a5) -- Store: [0x8000eaf0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003904]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003908]:csrrs a7, fflags, zero
	-[0x8000390c]:fsw fa2, 16(a5)
Current Store : [0x80003910] : sw a7, 20(a5) -- Store: [0x8000eaf8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003920]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003924]:csrrs a7, fflags, zero
	-[0x80003928]:fsw fa2, 24(a5)
Current Store : [0x8000392c] : sw a7, 28(a5) -- Store: [0x8000eb00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000393c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003940]:csrrs a7, fflags, zero
	-[0x80003944]:fsw fa2, 32(a5)
Current Store : [0x80003948] : sw a7, 36(a5) -- Store: [0x8000eb08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003958]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000395c]:csrrs a7, fflags, zero
	-[0x80003960]:fsw fa2, 40(a5)
Current Store : [0x80003964] : sw a7, 44(a5) -- Store: [0x8000eb10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003974]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003978]:csrrs a7, fflags, zero
	-[0x8000397c]:fsw fa2, 48(a5)
Current Store : [0x80003980] : sw a7, 52(a5) -- Store: [0x8000eb18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003990]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003994]:csrrs a7, fflags, zero
	-[0x80003998]:fsw fa2, 56(a5)
Current Store : [0x8000399c] : sw a7, 60(a5) -- Store: [0x8000eb20]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800039ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800039b0]:csrrs a7, fflags, zero
	-[0x800039b4]:fsw fa2, 64(a5)
Current Store : [0x800039b8] : sw a7, 68(a5) -- Store: [0x8000eb28]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800039c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800039cc]:csrrs a7, fflags, zero
	-[0x800039d0]:fsw fa2, 72(a5)
Current Store : [0x800039d4] : sw a7, 76(a5) -- Store: [0x8000eb30]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800039e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800039e8]:csrrs a7, fflags, zero
	-[0x800039ec]:fsw fa2, 80(a5)
Current Store : [0x800039f0] : sw a7, 84(a5) -- Store: [0x8000eb38]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a04]:csrrs a7, fflags, zero
	-[0x80003a08]:fsw fa2, 88(a5)
Current Store : [0x80003a0c] : sw a7, 92(a5) -- Store: [0x8000eb40]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a20]:csrrs a7, fflags, zero
	-[0x80003a24]:fsw fa2, 96(a5)
Current Store : [0x80003a28] : sw a7, 100(a5) -- Store: [0x8000eb48]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a3c]:csrrs a7, fflags, zero
	-[0x80003a40]:fsw fa2, 104(a5)
Current Store : [0x80003a44] : sw a7, 108(a5) -- Store: [0x8000eb50]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a58]:csrrs a7, fflags, zero
	-[0x80003a5c]:fsw fa2, 112(a5)
Current Store : [0x80003a60] : sw a7, 116(a5) -- Store: [0x8000eb58]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a74]:csrrs a7, fflags, zero
	-[0x80003a78]:fsw fa2, 120(a5)
Current Store : [0x80003a7c] : sw a7, 124(a5) -- Store: [0x8000eb60]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003a8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003a90]:csrrs a7, fflags, zero
	-[0x80003a94]:fsw fa2, 128(a5)
Current Store : [0x80003a98] : sw a7, 132(a5) -- Store: [0x8000eb68]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003aa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003aac]:csrrs a7, fflags, zero
	-[0x80003ab0]:fsw fa2, 136(a5)
Current Store : [0x80003ab4] : sw a7, 140(a5) -- Store: [0x8000eb70]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003ac4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ac8]:csrrs a7, fflags, zero
	-[0x80003acc]:fsw fa2, 144(a5)
Current Store : [0x80003ad0] : sw a7, 148(a5) -- Store: [0x8000eb78]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003ae0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ae4]:csrrs a7, fflags, zero
	-[0x80003ae8]:fsw fa2, 152(a5)
Current Store : [0x80003aec] : sw a7, 156(a5) -- Store: [0x8000eb80]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003afc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b00]:csrrs a7, fflags, zero
	-[0x80003b04]:fsw fa2, 160(a5)
Current Store : [0x80003b08] : sw a7, 164(a5) -- Store: [0x8000eb88]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003b18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b1c]:csrrs a7, fflags, zero
	-[0x80003b20]:fsw fa2, 168(a5)
Current Store : [0x80003b24] : sw a7, 172(a5) -- Store: [0x8000eb90]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003b34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b38]:csrrs a7, fflags, zero
	-[0x80003b3c]:fsw fa2, 176(a5)
Current Store : [0x80003b40] : sw a7, 180(a5) -- Store: [0x8000eb98]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003b50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b54]:csrrs a7, fflags, zero
	-[0x80003b58]:fsw fa2, 184(a5)
Current Store : [0x80003b5c] : sw a7, 188(a5) -- Store: [0x8000eba0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003b6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b70]:csrrs a7, fflags, zero
	-[0x80003b74]:fsw fa2, 192(a5)
Current Store : [0x80003b78] : sw a7, 196(a5) -- Store: [0x8000eba8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003b88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003b8c]:csrrs a7, fflags, zero
	-[0x80003b90]:fsw fa2, 200(a5)
Current Store : [0x80003b94] : sw a7, 204(a5) -- Store: [0x8000ebb0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003ba4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ba8]:csrrs a7, fflags, zero
	-[0x80003bac]:fsw fa2, 208(a5)
Current Store : [0x80003bb0] : sw a7, 212(a5) -- Store: [0x8000ebb8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003bc0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003bc4]:csrrs a7, fflags, zero
	-[0x80003bc8]:fsw fa2, 216(a5)
Current Store : [0x80003bcc] : sw a7, 220(a5) -- Store: [0x8000ebc0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003bdc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003be0]:csrrs a7, fflags, zero
	-[0x80003be4]:fsw fa2, 224(a5)
Current Store : [0x80003be8] : sw a7, 228(a5) -- Store: [0x8000ebc8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003bf8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003bfc]:csrrs a7, fflags, zero
	-[0x80003c00]:fsw fa2, 232(a5)
Current Store : [0x80003c04] : sw a7, 236(a5) -- Store: [0x8000ebd0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003c14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003c18]:csrrs a7, fflags, zero
	-[0x80003c1c]:fsw fa2, 240(a5)
Current Store : [0x80003c20] : sw a7, 244(a5) -- Store: [0x8000ebd8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003c30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003c34]:csrrs a7, fflags, zero
	-[0x80003c38]:fsw fa2, 248(a5)
Current Store : [0x80003c3c] : sw a7, 252(a5) -- Store: [0x8000ebe0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003c4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003c50]:csrrs a7, fflags, zero
	-[0x80003c54]:fsw fa2, 256(a5)
Current Store : [0x80003c58] : sw a7, 260(a5) -- Store: [0x8000ebe8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003c68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003c6c]:csrrs a7, fflags, zero
	-[0x80003c70]:fsw fa2, 264(a5)
Current Store : [0x80003c74] : sw a7, 268(a5) -- Store: [0x8000ebf0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003c84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003c88]:csrrs a7, fflags, zero
	-[0x80003c8c]:fsw fa2, 272(a5)
Current Store : [0x80003c90] : sw a7, 276(a5) -- Store: [0x8000ebf8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003ca0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ca4]:csrrs a7, fflags, zero
	-[0x80003ca8]:fsw fa2, 280(a5)
Current Store : [0x80003cac] : sw a7, 284(a5) -- Store: [0x8000ec00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003cbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003cc0]:csrrs a7, fflags, zero
	-[0x80003cc4]:fsw fa2, 288(a5)
Current Store : [0x80003cc8] : sw a7, 292(a5) -- Store: [0x8000ec08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003cd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003cdc]:csrrs a7, fflags, zero
	-[0x80003ce0]:fsw fa2, 296(a5)
Current Store : [0x80003ce4] : sw a7, 300(a5) -- Store: [0x8000ec10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003cf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003cf8]:csrrs a7, fflags, zero
	-[0x80003cfc]:fsw fa2, 304(a5)
Current Store : [0x80003d00] : sw a7, 308(a5) -- Store: [0x8000ec18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003d14]:csrrs a7, fflags, zero
	-[0x80003d18]:fsw fa2, 312(a5)
Current Store : [0x80003d1c] : sw a7, 316(a5) -- Store: [0x8000ec20]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003d30]:csrrs a7, fflags, zero
	-[0x80003d34]:fsw fa2, 320(a5)
Current Store : [0x80003d38] : sw a7, 324(a5) -- Store: [0x8000ec28]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003d4c]:csrrs a7, fflags, zero
	-[0x80003d50]:fsw fa2, 328(a5)
Current Store : [0x80003d54] : sw a7, 332(a5) -- Store: [0x8000ec30]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003d68]:csrrs a7, fflags, zero
	-[0x80003d6c]:fsw fa2, 336(a5)
Current Store : [0x80003d70] : sw a7, 340(a5) -- Store: [0x8000ec38]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003d84]:csrrs a7, fflags, zero
	-[0x80003d88]:fsw fa2, 344(a5)
Current Store : [0x80003d8c] : sw a7, 348(a5) -- Store: [0x8000ec40]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003d9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003da0]:csrrs a7, fflags, zero
	-[0x80003da4]:fsw fa2, 352(a5)
Current Store : [0x80003da8] : sw a7, 356(a5) -- Store: [0x8000ec48]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003db8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003dbc]:csrrs a7, fflags, zero
	-[0x80003dc0]:fsw fa2, 360(a5)
Current Store : [0x80003dc4] : sw a7, 364(a5) -- Store: [0x8000ec50]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003dd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003dd8]:csrrs a7, fflags, zero
	-[0x80003ddc]:fsw fa2, 368(a5)
Current Store : [0x80003de0] : sw a7, 372(a5) -- Store: [0x8000ec58]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003df0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003df4]:csrrs a7, fflags, zero
	-[0x80003df8]:fsw fa2, 376(a5)
Current Store : [0x80003dfc] : sw a7, 380(a5) -- Store: [0x8000ec60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e10]:csrrs a7, fflags, zero
	-[0x80003e14]:fsw fa2, 384(a5)
Current Store : [0x80003e18] : sw a7, 388(a5) -- Store: [0x8000ec68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e2c]:csrrs a7, fflags, zero
	-[0x80003e30]:fsw fa2, 392(a5)
Current Store : [0x80003e34] : sw a7, 396(a5) -- Store: [0x8000ec70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e48]:csrrs a7, fflags, zero
	-[0x80003e4c]:fsw fa2, 400(a5)
Current Store : [0x80003e50] : sw a7, 404(a5) -- Store: [0x8000ec78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e64]:csrrs a7, fflags, zero
	-[0x80003e68]:fsw fa2, 408(a5)
Current Store : [0x80003e6c] : sw a7, 412(a5) -- Store: [0x8000ec80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e80]:csrrs a7, fflags, zero
	-[0x80003e84]:fsw fa2, 416(a5)
Current Store : [0x80003e88] : sw a7, 420(a5) -- Store: [0x8000ec88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003e98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003e9c]:csrrs a7, fflags, zero
	-[0x80003ea0]:fsw fa2, 424(a5)
Current Store : [0x80003ea4] : sw a7, 428(a5) -- Store: [0x8000ec90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003eb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003eb8]:csrrs a7, fflags, zero
	-[0x80003ebc]:fsw fa2, 432(a5)
Current Store : [0x80003ec0] : sw a7, 436(a5) -- Store: [0x8000ec98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003ed0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ed4]:csrrs a7, fflags, zero
	-[0x80003ed8]:fsw fa2, 440(a5)
Current Store : [0x80003edc] : sw a7, 444(a5) -- Store: [0x8000eca0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003eec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003ef0]:csrrs a7, fflags, zero
	-[0x80003ef4]:fsw fa2, 448(a5)
Current Store : [0x80003ef8] : sw a7, 452(a5) -- Store: [0x8000eca8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f0c]:csrrs a7, fflags, zero
	-[0x80003f10]:fsw fa2, 456(a5)
Current Store : [0x80003f14] : sw a7, 460(a5) -- Store: [0x8000ecb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f28]:csrrs a7, fflags, zero
	-[0x80003f2c]:fsw fa2, 464(a5)
Current Store : [0x80003f30] : sw a7, 468(a5) -- Store: [0x8000ecb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f44]:csrrs a7, fflags, zero
	-[0x80003f48]:fsw fa2, 472(a5)
Current Store : [0x80003f4c] : sw a7, 476(a5) -- Store: [0x8000ecc0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f60]:csrrs a7, fflags, zero
	-[0x80003f64]:fsw fa2, 480(a5)
Current Store : [0x80003f68] : sw a7, 484(a5) -- Store: [0x8000ecc8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f7c]:csrrs a7, fflags, zero
	-[0x80003f80]:fsw fa2, 488(a5)
Current Store : [0x80003f84] : sw a7, 492(a5) -- Store: [0x8000ecd0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003f94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003f98]:csrrs a7, fflags, zero
	-[0x80003f9c]:fsw fa2, 496(a5)
Current Store : [0x80003fa0] : sw a7, 500(a5) -- Store: [0x8000ecd8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003fb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003fb4]:csrrs a7, fflags, zero
	-[0x80003fb8]:fsw fa2, 504(a5)
Current Store : [0x80003fbc] : sw a7, 508(a5) -- Store: [0x8000ece0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003fcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003fd0]:csrrs a7, fflags, zero
	-[0x80003fd4]:fsw fa2, 512(a5)
Current Store : [0x80003fd8] : sw a7, 516(a5) -- Store: [0x8000ece8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80003fe8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80003fec]:csrrs a7, fflags, zero
	-[0x80003ff0]:fsw fa2, 520(a5)
Current Store : [0x80003ff4] : sw a7, 524(a5) -- Store: [0x8000ecf0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004004]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004008]:csrrs a7, fflags, zero
	-[0x8000400c]:fsw fa2, 528(a5)
Current Store : [0x80004010] : sw a7, 532(a5) -- Store: [0x8000ecf8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004020]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004024]:csrrs a7, fflags, zero
	-[0x80004028]:fsw fa2, 536(a5)
Current Store : [0x8000402c] : sw a7, 540(a5) -- Store: [0x8000ed00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000403c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004040]:csrrs a7, fflags, zero
	-[0x80004044]:fsw fa2, 544(a5)
Current Store : [0x80004048] : sw a7, 548(a5) -- Store: [0x8000ed08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004058]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000405c]:csrrs a7, fflags, zero
	-[0x80004060]:fsw fa2, 552(a5)
Current Store : [0x80004064] : sw a7, 556(a5) -- Store: [0x8000ed10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004074]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004078]:csrrs a7, fflags, zero
	-[0x8000407c]:fsw fa2, 560(a5)
Current Store : [0x80004080] : sw a7, 564(a5) -- Store: [0x8000ed18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004090]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004094]:csrrs a7, fflags, zero
	-[0x80004098]:fsw fa2, 568(a5)
Current Store : [0x8000409c] : sw a7, 572(a5) -- Store: [0x8000ed20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800040ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800040b0]:csrrs a7, fflags, zero
	-[0x800040b4]:fsw fa2, 576(a5)
Current Store : [0x800040b8] : sw a7, 580(a5) -- Store: [0x8000ed28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800040c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800040cc]:csrrs a7, fflags, zero
	-[0x800040d0]:fsw fa2, 584(a5)
Current Store : [0x800040d4] : sw a7, 588(a5) -- Store: [0x8000ed30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800040e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800040e8]:csrrs a7, fflags, zero
	-[0x800040ec]:fsw fa2, 592(a5)
Current Store : [0x800040f0] : sw a7, 596(a5) -- Store: [0x8000ed38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004100]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004104]:csrrs a7, fflags, zero
	-[0x80004108]:fsw fa2, 600(a5)
Current Store : [0x8000410c] : sw a7, 604(a5) -- Store: [0x8000ed40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000411c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004120]:csrrs a7, fflags, zero
	-[0x80004124]:fsw fa2, 608(a5)
Current Store : [0x80004128] : sw a7, 612(a5) -- Store: [0x8000ed48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004138]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000413c]:csrrs a7, fflags, zero
	-[0x80004140]:fsw fa2, 616(a5)
Current Store : [0x80004144] : sw a7, 620(a5) -- Store: [0x8000ed50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004154]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004158]:csrrs a7, fflags, zero
	-[0x8000415c]:fsw fa2, 624(a5)
Current Store : [0x80004160] : sw a7, 628(a5) -- Store: [0x8000ed58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004170]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004174]:csrrs a7, fflags, zero
	-[0x80004178]:fsw fa2, 632(a5)
Current Store : [0x8000417c] : sw a7, 636(a5) -- Store: [0x8000ed60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000418c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004190]:csrrs a7, fflags, zero
	-[0x80004194]:fsw fa2, 640(a5)
Current Store : [0x80004198] : sw a7, 644(a5) -- Store: [0x8000ed68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800041a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800041ac]:csrrs a7, fflags, zero
	-[0x800041b0]:fsw fa2, 648(a5)
Current Store : [0x800041b4] : sw a7, 652(a5) -- Store: [0x8000ed70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800041c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800041c8]:csrrs a7, fflags, zero
	-[0x800041cc]:fsw fa2, 656(a5)
Current Store : [0x800041d0] : sw a7, 660(a5) -- Store: [0x8000ed78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800041e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800041e4]:csrrs a7, fflags, zero
	-[0x800041e8]:fsw fa2, 664(a5)
Current Store : [0x800041ec] : sw a7, 668(a5) -- Store: [0x8000ed80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800041fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004200]:csrrs a7, fflags, zero
	-[0x80004204]:fsw fa2, 672(a5)
Current Store : [0x80004208] : sw a7, 676(a5) -- Store: [0x8000ed88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004218]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000421c]:csrrs a7, fflags, zero
	-[0x80004220]:fsw fa2, 680(a5)
Current Store : [0x80004224] : sw a7, 684(a5) -- Store: [0x8000ed90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004234]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004238]:csrrs a7, fflags, zero
	-[0x8000423c]:fsw fa2, 688(a5)
Current Store : [0x80004240] : sw a7, 692(a5) -- Store: [0x8000ed98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004250]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004254]:csrrs a7, fflags, zero
	-[0x80004258]:fsw fa2, 696(a5)
Current Store : [0x8000425c] : sw a7, 700(a5) -- Store: [0x8000eda0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000426c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004270]:csrrs a7, fflags, zero
	-[0x80004274]:fsw fa2, 704(a5)
Current Store : [0x80004278] : sw a7, 708(a5) -- Store: [0x8000eda8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004288]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000428c]:csrrs a7, fflags, zero
	-[0x80004290]:fsw fa2, 712(a5)
Current Store : [0x80004294] : sw a7, 716(a5) -- Store: [0x8000edb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800042a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800042a8]:csrrs a7, fflags, zero
	-[0x800042ac]:fsw fa2, 720(a5)
Current Store : [0x800042b0] : sw a7, 724(a5) -- Store: [0x8000edb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800042c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800042c4]:csrrs a7, fflags, zero
	-[0x800042c8]:fsw fa2, 728(a5)
Current Store : [0x800042cc] : sw a7, 732(a5) -- Store: [0x8000edc0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800042dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800042e0]:csrrs a7, fflags, zero
	-[0x800042e4]:fsw fa2, 736(a5)
Current Store : [0x800042e8] : sw a7, 740(a5) -- Store: [0x8000edc8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800042f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800042fc]:csrrs a7, fflags, zero
	-[0x80004300]:fsw fa2, 744(a5)
Current Store : [0x80004304] : sw a7, 748(a5) -- Store: [0x8000edd0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004314]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004318]:csrrs a7, fflags, zero
	-[0x8000431c]:fsw fa2, 752(a5)
Current Store : [0x80004320] : sw a7, 756(a5) -- Store: [0x8000edd8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004330]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004334]:csrrs a7, fflags, zero
	-[0x80004338]:fsw fa2, 760(a5)
Current Store : [0x8000433c] : sw a7, 764(a5) -- Store: [0x8000ede0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000434c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004350]:csrrs a7, fflags, zero
	-[0x80004354]:fsw fa2, 768(a5)
Current Store : [0x80004358] : sw a7, 772(a5) -- Store: [0x8000ede8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004368]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000436c]:csrrs a7, fflags, zero
	-[0x80004370]:fsw fa2, 776(a5)
Current Store : [0x80004374] : sw a7, 780(a5) -- Store: [0x8000edf0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004384]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004388]:csrrs a7, fflags, zero
	-[0x8000438c]:fsw fa2, 784(a5)
Current Store : [0x80004390] : sw a7, 788(a5) -- Store: [0x8000edf8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800043a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800043a4]:csrrs a7, fflags, zero
	-[0x800043a8]:fsw fa2, 792(a5)
Current Store : [0x800043ac] : sw a7, 796(a5) -- Store: [0x8000ee00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800043bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800043c0]:csrrs a7, fflags, zero
	-[0x800043c4]:fsw fa2, 800(a5)
Current Store : [0x800043c8] : sw a7, 804(a5) -- Store: [0x8000ee08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800043d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800043dc]:csrrs a7, fflags, zero
	-[0x800043e0]:fsw fa2, 808(a5)
Current Store : [0x800043e4] : sw a7, 812(a5) -- Store: [0x8000ee10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800043f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800043f8]:csrrs a7, fflags, zero
	-[0x800043fc]:fsw fa2, 816(a5)
Current Store : [0x80004400] : sw a7, 820(a5) -- Store: [0x8000ee18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004410]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004414]:csrrs a7, fflags, zero
	-[0x80004418]:fsw fa2, 824(a5)
Current Store : [0x8000441c] : sw a7, 828(a5) -- Store: [0x8000ee20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000442c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004430]:csrrs a7, fflags, zero
	-[0x80004434]:fsw fa2, 832(a5)
Current Store : [0x80004438] : sw a7, 836(a5) -- Store: [0x8000ee28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004448]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000444c]:csrrs a7, fflags, zero
	-[0x80004450]:fsw fa2, 840(a5)
Current Store : [0x80004454] : sw a7, 844(a5) -- Store: [0x8000ee30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004464]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004468]:csrrs a7, fflags, zero
	-[0x8000446c]:fsw fa2, 848(a5)
Current Store : [0x80004470] : sw a7, 852(a5) -- Store: [0x8000ee38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004480]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004484]:csrrs a7, fflags, zero
	-[0x80004488]:fsw fa2, 856(a5)
Current Store : [0x8000448c] : sw a7, 860(a5) -- Store: [0x8000ee40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000449c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800044a0]:csrrs a7, fflags, zero
	-[0x800044a4]:fsw fa2, 864(a5)
Current Store : [0x800044a8] : sw a7, 868(a5) -- Store: [0x8000ee48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800044b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800044bc]:csrrs a7, fflags, zero
	-[0x800044c0]:fsw fa2, 872(a5)
Current Store : [0x800044c4] : sw a7, 876(a5) -- Store: [0x8000ee50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800044d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800044d8]:csrrs a7, fflags, zero
	-[0x800044dc]:fsw fa2, 880(a5)
Current Store : [0x800044e0] : sw a7, 884(a5) -- Store: [0x8000ee58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800044f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800044f4]:csrrs a7, fflags, zero
	-[0x800044f8]:fsw fa2, 888(a5)
Current Store : [0x800044fc] : sw a7, 892(a5) -- Store: [0x8000ee60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000450c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004510]:csrrs a7, fflags, zero
	-[0x80004514]:fsw fa2, 896(a5)
Current Store : [0x80004518] : sw a7, 900(a5) -- Store: [0x8000ee68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004528]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000452c]:csrrs a7, fflags, zero
	-[0x80004530]:fsw fa2, 904(a5)
Current Store : [0x80004534] : sw a7, 908(a5) -- Store: [0x8000ee70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004544]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004548]:csrrs a7, fflags, zero
	-[0x8000454c]:fsw fa2, 912(a5)
Current Store : [0x80004550] : sw a7, 916(a5) -- Store: [0x8000ee78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004560]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004564]:csrrs a7, fflags, zero
	-[0x80004568]:fsw fa2, 920(a5)
Current Store : [0x8000456c] : sw a7, 924(a5) -- Store: [0x8000ee80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000457c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004580]:csrrs a7, fflags, zero
	-[0x80004584]:fsw fa2, 928(a5)
Current Store : [0x80004588] : sw a7, 932(a5) -- Store: [0x8000ee88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004598]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000459c]:csrrs a7, fflags, zero
	-[0x800045a0]:fsw fa2, 936(a5)
Current Store : [0x800045a4] : sw a7, 940(a5) -- Store: [0x8000ee90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800045b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800045b8]:csrrs a7, fflags, zero
	-[0x800045bc]:fsw fa2, 944(a5)
Current Store : [0x800045c0] : sw a7, 948(a5) -- Store: [0x8000ee98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800045d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800045d4]:csrrs a7, fflags, zero
	-[0x800045d8]:fsw fa2, 952(a5)
Current Store : [0x800045dc] : sw a7, 956(a5) -- Store: [0x8000eea0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800045ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800045f0]:csrrs a7, fflags, zero
	-[0x800045f4]:fsw fa2, 960(a5)
Current Store : [0x800045f8] : sw a7, 964(a5) -- Store: [0x8000eea8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004608]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000460c]:csrrs a7, fflags, zero
	-[0x80004610]:fsw fa2, 968(a5)
Current Store : [0x80004614] : sw a7, 972(a5) -- Store: [0x8000eeb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004624]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004628]:csrrs a7, fflags, zero
	-[0x8000462c]:fsw fa2, 976(a5)
Current Store : [0x80004630] : sw a7, 980(a5) -- Store: [0x8000eeb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004640]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004644]:csrrs a7, fflags, zero
	-[0x80004648]:fsw fa2, 984(a5)
Current Store : [0x8000464c] : sw a7, 988(a5) -- Store: [0x8000eec0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000465c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004660]:csrrs a7, fflags, zero
	-[0x80004664]:fsw fa2, 992(a5)
Current Store : [0x80004668] : sw a7, 996(a5) -- Store: [0x8000eec8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004678]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000467c]:csrrs a7, fflags, zero
	-[0x80004680]:fsw fa2, 1000(a5)
Current Store : [0x80004684] : sw a7, 1004(a5) -- Store: [0x8000eed0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004694]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004698]:csrrs a7, fflags, zero
	-[0x8000469c]:fsw fa2, 1008(a5)
Current Store : [0x800046a0] : sw a7, 1012(a5) -- Store: [0x8000eed8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800046b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800046b4]:csrrs a7, fflags, zero
	-[0x800046b8]:fsw fa2, 1016(a5)
Current Store : [0x800046bc] : sw a7, 1020(a5) -- Store: [0x8000eee0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800046cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800046d0]:csrrs a7, fflags, zero
	-[0x800046d4]:fsw fa2, 1024(a5)
Current Store : [0x800046d8] : sw a7, 1028(a5) -- Store: [0x8000eee8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800046e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800046ec]:csrrs a7, fflags, zero
	-[0x800046f0]:fsw fa2, 1032(a5)
Current Store : [0x800046f4] : sw a7, 1036(a5) -- Store: [0x8000eef0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004704]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004708]:csrrs a7, fflags, zero
	-[0x8000470c]:fsw fa2, 1040(a5)
Current Store : [0x80004710] : sw a7, 1044(a5) -- Store: [0x8000eef8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004720]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004724]:csrrs a7, fflags, zero
	-[0x80004728]:fsw fa2, 1048(a5)
Current Store : [0x8000472c] : sw a7, 1052(a5) -- Store: [0x8000ef00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000473c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004740]:csrrs a7, fflags, zero
	-[0x80004744]:fsw fa2, 1056(a5)
Current Store : [0x80004748] : sw a7, 1060(a5) -- Store: [0x8000ef08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004758]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000475c]:csrrs a7, fflags, zero
	-[0x80004760]:fsw fa2, 1064(a5)
Current Store : [0x80004764] : sw a7, 1068(a5) -- Store: [0x8000ef10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004774]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004778]:csrrs a7, fflags, zero
	-[0x8000477c]:fsw fa2, 1072(a5)
Current Store : [0x80004780] : sw a7, 1076(a5) -- Store: [0x8000ef18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004790]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004794]:csrrs a7, fflags, zero
	-[0x80004798]:fsw fa2, 1080(a5)
Current Store : [0x8000479c] : sw a7, 1084(a5) -- Store: [0x8000ef20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800047ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800047b0]:csrrs a7, fflags, zero
	-[0x800047b4]:fsw fa2, 1088(a5)
Current Store : [0x800047b8] : sw a7, 1092(a5) -- Store: [0x8000ef28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800047c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800047cc]:csrrs a7, fflags, zero
	-[0x800047d0]:fsw fa2, 1096(a5)
Current Store : [0x800047d4] : sw a7, 1100(a5) -- Store: [0x8000ef30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800047e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800047e8]:csrrs a7, fflags, zero
	-[0x800047ec]:fsw fa2, 1104(a5)
Current Store : [0x800047f0] : sw a7, 1108(a5) -- Store: [0x8000ef38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004800]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004804]:csrrs a7, fflags, zero
	-[0x80004808]:fsw fa2, 1112(a5)
Current Store : [0x8000480c] : sw a7, 1116(a5) -- Store: [0x8000ef40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000481c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004820]:csrrs a7, fflags, zero
	-[0x80004824]:fsw fa2, 1120(a5)
Current Store : [0x80004828] : sw a7, 1124(a5) -- Store: [0x8000ef48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004838]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000483c]:csrrs a7, fflags, zero
	-[0x80004840]:fsw fa2, 1128(a5)
Current Store : [0x80004844] : sw a7, 1132(a5) -- Store: [0x8000ef50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004854]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004858]:csrrs a7, fflags, zero
	-[0x8000485c]:fsw fa2, 1136(a5)
Current Store : [0x80004860] : sw a7, 1140(a5) -- Store: [0x8000ef58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004870]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004874]:csrrs a7, fflags, zero
	-[0x80004878]:fsw fa2, 1144(a5)
Current Store : [0x8000487c] : sw a7, 1148(a5) -- Store: [0x8000ef60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000488c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004890]:csrrs a7, fflags, zero
	-[0x80004894]:fsw fa2, 1152(a5)
Current Store : [0x80004898] : sw a7, 1156(a5) -- Store: [0x8000ef68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800048a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800048ac]:csrrs a7, fflags, zero
	-[0x800048b0]:fsw fa2, 1160(a5)
Current Store : [0x800048b4] : sw a7, 1164(a5) -- Store: [0x8000ef70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800048c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800048c8]:csrrs a7, fflags, zero
	-[0x800048cc]:fsw fa2, 1168(a5)
Current Store : [0x800048d0] : sw a7, 1172(a5) -- Store: [0x8000ef78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800048e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800048e4]:csrrs a7, fflags, zero
	-[0x800048e8]:fsw fa2, 1176(a5)
Current Store : [0x800048ec] : sw a7, 1180(a5) -- Store: [0x8000ef80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800048fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004900]:csrrs a7, fflags, zero
	-[0x80004904]:fsw fa2, 1184(a5)
Current Store : [0x80004908] : sw a7, 1188(a5) -- Store: [0x8000ef88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004918]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000491c]:csrrs a7, fflags, zero
	-[0x80004920]:fsw fa2, 1192(a5)
Current Store : [0x80004924] : sw a7, 1196(a5) -- Store: [0x8000ef90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004934]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004938]:csrrs a7, fflags, zero
	-[0x8000493c]:fsw fa2, 1200(a5)
Current Store : [0x80004940] : sw a7, 1204(a5) -- Store: [0x8000ef98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004950]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004954]:csrrs a7, fflags, zero
	-[0x80004958]:fsw fa2, 1208(a5)
Current Store : [0x8000495c] : sw a7, 1212(a5) -- Store: [0x8000efa0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000496c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004970]:csrrs a7, fflags, zero
	-[0x80004974]:fsw fa2, 1216(a5)
Current Store : [0x80004978] : sw a7, 1220(a5) -- Store: [0x8000efa8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004988]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000498c]:csrrs a7, fflags, zero
	-[0x80004990]:fsw fa2, 1224(a5)
Current Store : [0x80004994] : sw a7, 1228(a5) -- Store: [0x8000efb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800049a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800049a8]:csrrs a7, fflags, zero
	-[0x800049ac]:fsw fa2, 1232(a5)
Current Store : [0x800049b0] : sw a7, 1236(a5) -- Store: [0x8000efb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800049c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800049c4]:csrrs a7, fflags, zero
	-[0x800049c8]:fsw fa2, 1240(a5)
Current Store : [0x800049cc] : sw a7, 1244(a5) -- Store: [0x8000efc0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800049dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800049e0]:csrrs a7, fflags, zero
	-[0x800049e4]:fsw fa2, 1248(a5)
Current Store : [0x800049e8] : sw a7, 1252(a5) -- Store: [0x8000efc8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800049f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800049fc]:csrrs a7, fflags, zero
	-[0x80004a00]:fsw fa2, 1256(a5)
Current Store : [0x80004a04] : sw a7, 1260(a5) -- Store: [0x8000efd0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004a14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004a18]:csrrs a7, fflags, zero
	-[0x80004a1c]:fsw fa2, 1264(a5)
Current Store : [0x80004a20] : sw a7, 1268(a5) -- Store: [0x8000efd8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004a30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004a34]:csrrs a7, fflags, zero
	-[0x80004a38]:fsw fa2, 1272(a5)
Current Store : [0x80004a3c] : sw a7, 1276(a5) -- Store: [0x8000efe0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004a4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004a50]:csrrs a7, fflags, zero
	-[0x80004a54]:fsw fa2, 1280(a5)
Current Store : [0x80004a58] : sw a7, 1284(a5) -- Store: [0x8000efe8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004a68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004a6c]:csrrs a7, fflags, zero
	-[0x80004a70]:fsw fa2, 1288(a5)
Current Store : [0x80004a74] : sw a7, 1292(a5) -- Store: [0x8000eff0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004a84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004a88]:csrrs a7, fflags, zero
	-[0x80004a8c]:fsw fa2, 1296(a5)
Current Store : [0x80004a90] : sw a7, 1300(a5) -- Store: [0x8000eff8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004aa0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004aa4]:csrrs a7, fflags, zero
	-[0x80004aa8]:fsw fa2, 1304(a5)
Current Store : [0x80004aac] : sw a7, 1308(a5) -- Store: [0x8000f000]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004abc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004ac0]:csrrs a7, fflags, zero
	-[0x80004ac4]:fsw fa2, 1312(a5)
Current Store : [0x80004ac8] : sw a7, 1316(a5) -- Store: [0x8000f008]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004ad8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004adc]:csrrs a7, fflags, zero
	-[0x80004ae0]:fsw fa2, 1320(a5)
Current Store : [0x80004ae4] : sw a7, 1324(a5) -- Store: [0x8000f010]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004af4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004af8]:csrrs a7, fflags, zero
	-[0x80004afc]:fsw fa2, 1328(a5)
Current Store : [0x80004b00] : sw a7, 1332(a5) -- Store: [0x8000f018]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004b14]:csrrs a7, fflags, zero
	-[0x80004b18]:fsw fa2, 1336(a5)
Current Store : [0x80004b1c] : sw a7, 1340(a5) -- Store: [0x8000f020]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004b30]:csrrs a7, fflags, zero
	-[0x80004b34]:fsw fa2, 1344(a5)
Current Store : [0x80004b38] : sw a7, 1348(a5) -- Store: [0x8000f028]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004b4c]:csrrs a7, fflags, zero
	-[0x80004b50]:fsw fa2, 1352(a5)
Current Store : [0x80004b54] : sw a7, 1356(a5) -- Store: [0x8000f030]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004b68]:csrrs a7, fflags, zero
	-[0x80004b6c]:fsw fa2, 1360(a5)
Current Store : [0x80004b70] : sw a7, 1364(a5) -- Store: [0x8000f038]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004b84]:csrrs a7, fflags, zero
	-[0x80004b88]:fsw fa2, 1368(a5)
Current Store : [0x80004b8c] : sw a7, 1372(a5) -- Store: [0x8000f040]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004b9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004ba0]:csrrs a7, fflags, zero
	-[0x80004ba4]:fsw fa2, 1376(a5)
Current Store : [0x80004ba8] : sw a7, 1380(a5) -- Store: [0x8000f048]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004bb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004bbc]:csrrs a7, fflags, zero
	-[0x80004bc0]:fsw fa2, 1384(a5)
Current Store : [0x80004bc4] : sw a7, 1388(a5) -- Store: [0x8000f050]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004bd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004bd8]:csrrs a7, fflags, zero
	-[0x80004bdc]:fsw fa2, 1392(a5)
Current Store : [0x80004be0] : sw a7, 1396(a5) -- Store: [0x8000f058]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004bf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004bf4]:csrrs a7, fflags, zero
	-[0x80004bf8]:fsw fa2, 1400(a5)
Current Store : [0x80004bfc] : sw a7, 1404(a5) -- Store: [0x8000f060]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c10]:csrrs a7, fflags, zero
	-[0x80004c14]:fsw fa2, 1408(a5)
Current Store : [0x80004c18] : sw a7, 1412(a5) -- Store: [0x8000f068]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c2c]:csrrs a7, fflags, zero
	-[0x80004c30]:fsw fa2, 1416(a5)
Current Store : [0x80004c34] : sw a7, 1420(a5) -- Store: [0x8000f070]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c48]:csrrs a7, fflags, zero
	-[0x80004c4c]:fsw fa2, 1424(a5)
Current Store : [0x80004c50] : sw a7, 1428(a5) -- Store: [0x8000f078]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c64]:csrrs a7, fflags, zero
	-[0x80004c68]:fsw fa2, 1432(a5)
Current Store : [0x80004c6c] : sw a7, 1436(a5) -- Store: [0x8000f080]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c80]:csrrs a7, fflags, zero
	-[0x80004c84]:fsw fa2, 1440(a5)
Current Store : [0x80004c88] : sw a7, 1444(a5) -- Store: [0x8000f088]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004c98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004c9c]:csrrs a7, fflags, zero
	-[0x80004ca0]:fsw fa2, 1448(a5)
Current Store : [0x80004ca4] : sw a7, 1452(a5) -- Store: [0x8000f090]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004cb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004cb8]:csrrs a7, fflags, zero
	-[0x80004cbc]:fsw fa2, 1456(a5)
Current Store : [0x80004cc0] : sw a7, 1460(a5) -- Store: [0x8000f098]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004cd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004cd4]:csrrs a7, fflags, zero
	-[0x80004cd8]:fsw fa2, 1464(a5)
Current Store : [0x80004cdc] : sw a7, 1468(a5) -- Store: [0x8000f0a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004cec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004cf0]:csrrs a7, fflags, zero
	-[0x80004cf4]:fsw fa2, 1472(a5)
Current Store : [0x80004cf8] : sw a7, 1476(a5) -- Store: [0x8000f0a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d0c]:csrrs a7, fflags, zero
	-[0x80004d10]:fsw fa2, 1480(a5)
Current Store : [0x80004d14] : sw a7, 1484(a5) -- Store: [0x8000f0b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d28]:csrrs a7, fflags, zero
	-[0x80004d2c]:fsw fa2, 1488(a5)
Current Store : [0x80004d30] : sw a7, 1492(a5) -- Store: [0x8000f0b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d44]:csrrs a7, fflags, zero
	-[0x80004d48]:fsw fa2, 1496(a5)
Current Store : [0x80004d4c] : sw a7, 1500(a5) -- Store: [0x8000f0c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d60]:csrrs a7, fflags, zero
	-[0x80004d64]:fsw fa2, 1504(a5)
Current Store : [0x80004d68] : sw a7, 1508(a5) -- Store: [0x8000f0c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d7c]:csrrs a7, fflags, zero
	-[0x80004d80]:fsw fa2, 1512(a5)
Current Store : [0x80004d84] : sw a7, 1516(a5) -- Store: [0x8000f0d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004d94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004d98]:csrrs a7, fflags, zero
	-[0x80004d9c]:fsw fa2, 1520(a5)
Current Store : [0x80004da0] : sw a7, 1524(a5) -- Store: [0x8000f0d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004db0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004db4]:csrrs a7, fflags, zero
	-[0x80004db8]:fsw fa2, 1528(a5)
Current Store : [0x80004dbc] : sw a7, 1532(a5) -- Store: [0x8000f0e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004dcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004dd0]:csrrs a7, fflags, zero
	-[0x80004dd4]:fsw fa2, 1536(a5)
Current Store : [0x80004dd8] : sw a7, 1540(a5) -- Store: [0x8000f0e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004de8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004dec]:csrrs a7, fflags, zero
	-[0x80004df0]:fsw fa2, 1544(a5)
Current Store : [0x80004df4] : sw a7, 1548(a5) -- Store: [0x8000f0f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e08]:csrrs a7, fflags, zero
	-[0x80004e0c]:fsw fa2, 1552(a5)
Current Store : [0x80004e10] : sw a7, 1556(a5) -- Store: [0x8000f0f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e24]:csrrs a7, fflags, zero
	-[0x80004e28]:fsw fa2, 1560(a5)
Current Store : [0x80004e2c] : sw a7, 1564(a5) -- Store: [0x8000f100]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e40]:csrrs a7, fflags, zero
	-[0x80004e44]:fsw fa2, 1568(a5)
Current Store : [0x80004e48] : sw a7, 1572(a5) -- Store: [0x8000f108]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e5c]:csrrs a7, fflags, zero
	-[0x80004e60]:fsw fa2, 1576(a5)
Current Store : [0x80004e64] : sw a7, 1580(a5) -- Store: [0x8000f110]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e78]:csrrs a7, fflags, zero
	-[0x80004e7c]:fsw fa2, 1584(a5)
Current Store : [0x80004e80] : sw a7, 1588(a5) -- Store: [0x8000f118]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004e90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004e94]:csrrs a7, fflags, zero
	-[0x80004e98]:fsw fa2, 1592(a5)
Current Store : [0x80004e9c] : sw a7, 1596(a5) -- Store: [0x8000f120]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004eac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004eb0]:csrrs a7, fflags, zero
	-[0x80004eb4]:fsw fa2, 1600(a5)
Current Store : [0x80004eb8] : sw a7, 1604(a5) -- Store: [0x8000f128]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004ec8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004ecc]:csrrs a7, fflags, zero
	-[0x80004ed0]:fsw fa2, 1608(a5)
Current Store : [0x80004ed4] : sw a7, 1612(a5) -- Store: [0x8000f130]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004ee4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004ee8]:csrrs a7, fflags, zero
	-[0x80004eec]:fsw fa2, 1616(a5)
Current Store : [0x80004ef0] : sw a7, 1620(a5) -- Store: [0x8000f138]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f04]:csrrs a7, fflags, zero
	-[0x80004f08]:fsw fa2, 1624(a5)
Current Store : [0x80004f0c] : sw a7, 1628(a5) -- Store: [0x8000f140]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f20]:csrrs a7, fflags, zero
	-[0x80004f24]:fsw fa2, 1632(a5)
Current Store : [0x80004f28] : sw a7, 1636(a5) -- Store: [0x8000f148]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f3c]:csrrs a7, fflags, zero
	-[0x80004f40]:fsw fa2, 1640(a5)
Current Store : [0x80004f44] : sw a7, 1644(a5) -- Store: [0x8000f150]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f58]:csrrs a7, fflags, zero
	-[0x80004f5c]:fsw fa2, 1648(a5)
Current Store : [0x80004f60] : sw a7, 1652(a5) -- Store: [0x8000f158]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f74]:csrrs a7, fflags, zero
	-[0x80004f78]:fsw fa2, 1656(a5)
Current Store : [0x80004f7c] : sw a7, 1660(a5) -- Store: [0x8000f160]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004f8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004f90]:csrrs a7, fflags, zero
	-[0x80004f94]:fsw fa2, 1664(a5)
Current Store : [0x80004f98] : sw a7, 1668(a5) -- Store: [0x8000f168]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004fa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004fac]:csrrs a7, fflags, zero
	-[0x80004fb0]:fsw fa2, 1672(a5)
Current Store : [0x80004fb4] : sw a7, 1676(a5) -- Store: [0x8000f170]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004fc4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004fc8]:csrrs a7, fflags, zero
	-[0x80004fcc]:fsw fa2, 1680(a5)
Current Store : [0x80004fd0] : sw a7, 1684(a5) -- Store: [0x8000f178]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004fe0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80004fe4]:csrrs a7, fflags, zero
	-[0x80004fe8]:fsw fa2, 1688(a5)
Current Store : [0x80004fec] : sw a7, 1692(a5) -- Store: [0x8000f180]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80004ffc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005000]:csrrs a7, fflags, zero
	-[0x80005004]:fsw fa2, 1696(a5)
Current Store : [0x80005008] : sw a7, 1700(a5) -- Store: [0x8000f188]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005018]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000501c]:csrrs a7, fflags, zero
	-[0x80005020]:fsw fa2, 1704(a5)
Current Store : [0x80005024] : sw a7, 1708(a5) -- Store: [0x8000f190]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005034]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005038]:csrrs a7, fflags, zero
	-[0x8000503c]:fsw fa2, 1712(a5)
Current Store : [0x80005040] : sw a7, 1716(a5) -- Store: [0x8000f198]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005050]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005054]:csrrs a7, fflags, zero
	-[0x80005058]:fsw fa2, 1720(a5)
Current Store : [0x8000505c] : sw a7, 1724(a5) -- Store: [0x8000f1a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000506c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005070]:csrrs a7, fflags, zero
	-[0x80005074]:fsw fa2, 1728(a5)
Current Store : [0x80005078] : sw a7, 1732(a5) -- Store: [0x8000f1a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005088]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000508c]:csrrs a7, fflags, zero
	-[0x80005090]:fsw fa2, 1736(a5)
Current Store : [0x80005094] : sw a7, 1740(a5) -- Store: [0x8000f1b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800050a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800050a8]:csrrs a7, fflags, zero
	-[0x800050ac]:fsw fa2, 1744(a5)
Current Store : [0x800050b0] : sw a7, 1748(a5) -- Store: [0x8000f1b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800050c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800050c4]:csrrs a7, fflags, zero
	-[0x800050c8]:fsw fa2, 1752(a5)
Current Store : [0x800050cc] : sw a7, 1756(a5) -- Store: [0x8000f1c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800050dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800050e0]:csrrs a7, fflags, zero
	-[0x800050e4]:fsw fa2, 1760(a5)
Current Store : [0x800050e8] : sw a7, 1764(a5) -- Store: [0x8000f1c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800050f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800050fc]:csrrs a7, fflags, zero
	-[0x80005100]:fsw fa2, 1768(a5)
Current Store : [0x80005104] : sw a7, 1772(a5) -- Store: [0x8000f1d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005114]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005118]:csrrs a7, fflags, zero
	-[0x8000511c]:fsw fa2, 1776(a5)
Current Store : [0x80005120] : sw a7, 1780(a5) -- Store: [0x8000f1d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005130]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005134]:csrrs a7, fflags, zero
	-[0x80005138]:fsw fa2, 1784(a5)
Current Store : [0x8000513c] : sw a7, 1788(a5) -- Store: [0x8000f1e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000514c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005150]:csrrs a7, fflags, zero
	-[0x80005154]:fsw fa2, 1792(a5)
Current Store : [0x80005158] : sw a7, 1796(a5) -- Store: [0x8000f1e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005168]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000516c]:csrrs a7, fflags, zero
	-[0x80005170]:fsw fa2, 1800(a5)
Current Store : [0x80005174] : sw a7, 1804(a5) -- Store: [0x8000f1f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005184]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005188]:csrrs a7, fflags, zero
	-[0x8000518c]:fsw fa2, 1808(a5)
Current Store : [0x80005190] : sw a7, 1812(a5) -- Store: [0x8000f1f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800051a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800051a4]:csrrs a7, fflags, zero
	-[0x800051a8]:fsw fa2, 1816(a5)
Current Store : [0x800051ac] : sw a7, 1820(a5) -- Store: [0x8000f200]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800051bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800051c0]:csrrs a7, fflags, zero
	-[0x800051c4]:fsw fa2, 1824(a5)
Current Store : [0x800051c8] : sw a7, 1828(a5) -- Store: [0x8000f208]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800051d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800051dc]:csrrs a7, fflags, zero
	-[0x800051e0]:fsw fa2, 1832(a5)
Current Store : [0x800051e4] : sw a7, 1836(a5) -- Store: [0x8000f210]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800051f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800051f8]:csrrs a7, fflags, zero
	-[0x800051fc]:fsw fa2, 1840(a5)
Current Store : [0x80005200] : sw a7, 1844(a5) -- Store: [0x8000f218]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005210]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005214]:csrrs a7, fflags, zero
	-[0x80005218]:fsw fa2, 1848(a5)
Current Store : [0x8000521c] : sw a7, 1852(a5) -- Store: [0x8000f220]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000522c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005230]:csrrs a7, fflags, zero
	-[0x80005234]:fsw fa2, 1856(a5)
Current Store : [0x80005238] : sw a7, 1860(a5) -- Store: [0x8000f228]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005248]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000524c]:csrrs a7, fflags, zero
	-[0x80005250]:fsw fa2, 1864(a5)
Current Store : [0x80005254] : sw a7, 1868(a5) -- Store: [0x8000f230]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005264]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005268]:csrrs a7, fflags, zero
	-[0x8000526c]:fsw fa2, 1872(a5)
Current Store : [0x80005270] : sw a7, 1876(a5) -- Store: [0x8000f238]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005280]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005284]:csrrs a7, fflags, zero
	-[0x80005288]:fsw fa2, 1880(a5)
Current Store : [0x8000528c] : sw a7, 1884(a5) -- Store: [0x8000f240]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000529c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800052a0]:csrrs a7, fflags, zero
	-[0x800052a4]:fsw fa2, 1888(a5)
Current Store : [0x800052a8] : sw a7, 1892(a5) -- Store: [0x8000f248]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800052b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800052bc]:csrrs a7, fflags, zero
	-[0x800052c0]:fsw fa2, 1896(a5)
Current Store : [0x800052c4] : sw a7, 1900(a5) -- Store: [0x8000f250]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800052d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800052d8]:csrrs a7, fflags, zero
	-[0x800052dc]:fsw fa2, 1904(a5)
Current Store : [0x800052e0] : sw a7, 1908(a5) -- Store: [0x8000f258]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800052f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800052f4]:csrrs a7, fflags, zero
	-[0x800052f8]:fsw fa2, 1912(a5)
Current Store : [0x800052fc] : sw a7, 1916(a5) -- Store: [0x8000f260]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000530c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005310]:csrrs a7, fflags, zero
	-[0x80005314]:fsw fa2, 1920(a5)
Current Store : [0x80005318] : sw a7, 1924(a5) -- Store: [0x8000f268]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005328]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000532c]:csrrs a7, fflags, zero
	-[0x80005330]:fsw fa2, 1928(a5)
Current Store : [0x80005334] : sw a7, 1932(a5) -- Store: [0x8000f270]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005344]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005348]:csrrs a7, fflags, zero
	-[0x8000534c]:fsw fa2, 1936(a5)
Current Store : [0x80005350] : sw a7, 1940(a5) -- Store: [0x8000f278]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005360]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005364]:csrrs a7, fflags, zero
	-[0x80005368]:fsw fa2, 1944(a5)
Current Store : [0x8000536c] : sw a7, 1948(a5) -- Store: [0x8000f280]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000537c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005380]:csrrs a7, fflags, zero
	-[0x80005384]:fsw fa2, 1952(a5)
Current Store : [0x80005388] : sw a7, 1956(a5) -- Store: [0x8000f288]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005398]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000539c]:csrrs a7, fflags, zero
	-[0x800053a0]:fsw fa2, 1960(a5)
Current Store : [0x800053a4] : sw a7, 1964(a5) -- Store: [0x8000f290]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800053b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800053b8]:csrrs a7, fflags, zero
	-[0x800053bc]:fsw fa2, 1968(a5)
Current Store : [0x800053c0] : sw a7, 1972(a5) -- Store: [0x8000f298]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800053d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800053d4]:csrrs a7, fflags, zero
	-[0x800053d8]:fsw fa2, 1976(a5)
Current Store : [0x800053dc] : sw a7, 1980(a5) -- Store: [0x8000f2a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800053ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800053f0]:csrrs a7, fflags, zero
	-[0x800053f4]:fsw fa2, 1984(a5)
Current Store : [0x800053f8] : sw a7, 1988(a5) -- Store: [0x8000f2a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005408]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000540c]:csrrs a7, fflags, zero
	-[0x80005410]:fsw fa2, 1992(a5)
Current Store : [0x80005414] : sw a7, 1996(a5) -- Store: [0x8000f2b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005424]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005428]:csrrs a7, fflags, zero
	-[0x8000542c]:fsw fa2, 2000(a5)
Current Store : [0x80005430] : sw a7, 2004(a5) -- Store: [0x8000f2b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005440]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005444]:csrrs a7, fflags, zero
	-[0x80005448]:fsw fa2, 2008(a5)
Current Store : [0x8000544c] : sw a7, 2012(a5) -- Store: [0x8000f2c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000545c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005460]:csrrs a7, fflags, zero
	-[0x80005464]:fsw fa2, 2016(a5)
Current Store : [0x80005468] : sw a7, 2020(a5) -- Store: [0x8000f2c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005478]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000547c]:csrrs a7, fflags, zero
	-[0x80005480]:fsw fa2, 2024(a5)
Current Store : [0x80005484] : sw a7, 2028(a5) -- Store: [0x8000f2d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800054a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800054a4]:csrrs a7, fflags, zero
	-[0x800054a8]:fsw fa2, 0(a5)
Current Store : [0x800054ac] : sw a7, 4(a5) -- Store: [0x8000f2d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800054bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800054c0]:csrrs a7, fflags, zero
	-[0x800054c4]:fsw fa2, 8(a5)
Current Store : [0x800054c8] : sw a7, 12(a5) -- Store: [0x8000f2e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800054d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800054dc]:csrrs a7, fflags, zero
	-[0x800054e0]:fsw fa2, 16(a5)
Current Store : [0x800054e4] : sw a7, 20(a5) -- Store: [0x8000f2e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800054f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800054f8]:csrrs a7, fflags, zero
	-[0x800054fc]:fsw fa2, 24(a5)
Current Store : [0x80005500] : sw a7, 28(a5) -- Store: [0x8000f2f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005510]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005514]:csrrs a7, fflags, zero
	-[0x80005518]:fsw fa2, 32(a5)
Current Store : [0x8000551c] : sw a7, 36(a5) -- Store: [0x8000f2f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000552c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005530]:csrrs a7, fflags, zero
	-[0x80005534]:fsw fa2, 40(a5)
Current Store : [0x80005538] : sw a7, 44(a5) -- Store: [0x8000f300]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005548]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000554c]:csrrs a7, fflags, zero
	-[0x80005550]:fsw fa2, 48(a5)
Current Store : [0x80005554] : sw a7, 52(a5) -- Store: [0x8000f308]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005564]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005568]:csrrs a7, fflags, zero
	-[0x8000556c]:fsw fa2, 56(a5)
Current Store : [0x80005570] : sw a7, 60(a5) -- Store: [0x8000f310]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005580]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005584]:csrrs a7, fflags, zero
	-[0x80005588]:fsw fa2, 64(a5)
Current Store : [0x8000558c] : sw a7, 68(a5) -- Store: [0x8000f318]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000559c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800055a0]:csrrs a7, fflags, zero
	-[0x800055a4]:fsw fa2, 72(a5)
Current Store : [0x800055a8] : sw a7, 76(a5) -- Store: [0x8000f320]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800055b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800055bc]:csrrs a7, fflags, zero
	-[0x800055c0]:fsw fa2, 80(a5)
Current Store : [0x800055c4] : sw a7, 84(a5) -- Store: [0x8000f328]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800055d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800055d8]:csrrs a7, fflags, zero
	-[0x800055dc]:fsw fa2, 88(a5)
Current Store : [0x800055e0] : sw a7, 92(a5) -- Store: [0x8000f330]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800055f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800055f4]:csrrs a7, fflags, zero
	-[0x800055f8]:fsw fa2, 96(a5)
Current Store : [0x800055fc] : sw a7, 100(a5) -- Store: [0x8000f338]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000560c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005610]:csrrs a7, fflags, zero
	-[0x80005614]:fsw fa2, 104(a5)
Current Store : [0x80005618] : sw a7, 108(a5) -- Store: [0x8000f340]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005628]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000562c]:csrrs a7, fflags, zero
	-[0x80005630]:fsw fa2, 112(a5)
Current Store : [0x80005634] : sw a7, 116(a5) -- Store: [0x8000f348]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005644]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005648]:csrrs a7, fflags, zero
	-[0x8000564c]:fsw fa2, 120(a5)
Current Store : [0x80005650] : sw a7, 124(a5) -- Store: [0x8000f350]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005660]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005664]:csrrs a7, fflags, zero
	-[0x80005668]:fsw fa2, 128(a5)
Current Store : [0x8000566c] : sw a7, 132(a5) -- Store: [0x8000f358]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000567c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005680]:csrrs a7, fflags, zero
	-[0x80005684]:fsw fa2, 136(a5)
Current Store : [0x80005688] : sw a7, 140(a5) -- Store: [0x8000f360]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005698]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000569c]:csrrs a7, fflags, zero
	-[0x800056a0]:fsw fa2, 144(a5)
Current Store : [0x800056a4] : sw a7, 148(a5) -- Store: [0x8000f368]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800056b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800056b8]:csrrs a7, fflags, zero
	-[0x800056bc]:fsw fa2, 152(a5)
Current Store : [0x800056c0] : sw a7, 156(a5) -- Store: [0x8000f370]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800056d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800056d4]:csrrs a7, fflags, zero
	-[0x800056d8]:fsw fa2, 160(a5)
Current Store : [0x800056dc] : sw a7, 164(a5) -- Store: [0x8000f378]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800056ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800056f0]:csrrs a7, fflags, zero
	-[0x800056f4]:fsw fa2, 168(a5)
Current Store : [0x800056f8] : sw a7, 172(a5) -- Store: [0x8000f380]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005708]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000570c]:csrrs a7, fflags, zero
	-[0x80005710]:fsw fa2, 176(a5)
Current Store : [0x80005714] : sw a7, 180(a5) -- Store: [0x8000f388]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005724]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005728]:csrrs a7, fflags, zero
	-[0x8000572c]:fsw fa2, 184(a5)
Current Store : [0x80005730] : sw a7, 188(a5) -- Store: [0x8000f390]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005740]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005744]:csrrs a7, fflags, zero
	-[0x80005748]:fsw fa2, 192(a5)
Current Store : [0x8000574c] : sw a7, 196(a5) -- Store: [0x8000f398]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000575c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005760]:csrrs a7, fflags, zero
	-[0x80005764]:fsw fa2, 200(a5)
Current Store : [0x80005768] : sw a7, 204(a5) -- Store: [0x8000f3a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005778]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000577c]:csrrs a7, fflags, zero
	-[0x80005780]:fsw fa2, 208(a5)
Current Store : [0x80005784] : sw a7, 212(a5) -- Store: [0x8000f3a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005794]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005798]:csrrs a7, fflags, zero
	-[0x8000579c]:fsw fa2, 216(a5)
Current Store : [0x800057a0] : sw a7, 220(a5) -- Store: [0x8000f3b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800057b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800057b4]:csrrs a7, fflags, zero
	-[0x800057b8]:fsw fa2, 224(a5)
Current Store : [0x800057bc] : sw a7, 228(a5) -- Store: [0x8000f3b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800057cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800057d0]:csrrs a7, fflags, zero
	-[0x800057d4]:fsw fa2, 232(a5)
Current Store : [0x800057d8] : sw a7, 236(a5) -- Store: [0x8000f3c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800057e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800057ec]:csrrs a7, fflags, zero
	-[0x800057f0]:fsw fa2, 240(a5)
Current Store : [0x800057f4] : sw a7, 244(a5) -- Store: [0x8000f3c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005804]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005808]:csrrs a7, fflags, zero
	-[0x8000580c]:fsw fa2, 248(a5)
Current Store : [0x80005810] : sw a7, 252(a5) -- Store: [0x8000f3d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005820]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005824]:csrrs a7, fflags, zero
	-[0x80005828]:fsw fa2, 256(a5)
Current Store : [0x8000582c] : sw a7, 260(a5) -- Store: [0x8000f3d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000583c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005840]:csrrs a7, fflags, zero
	-[0x80005844]:fsw fa2, 264(a5)
Current Store : [0x80005848] : sw a7, 268(a5) -- Store: [0x8000f3e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005858]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000585c]:csrrs a7, fflags, zero
	-[0x80005860]:fsw fa2, 272(a5)
Current Store : [0x80005864] : sw a7, 276(a5) -- Store: [0x8000f3e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005874]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005878]:csrrs a7, fflags, zero
	-[0x8000587c]:fsw fa2, 280(a5)
Current Store : [0x80005880] : sw a7, 284(a5) -- Store: [0x8000f3f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005890]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005894]:csrrs a7, fflags, zero
	-[0x80005898]:fsw fa2, 288(a5)
Current Store : [0x8000589c] : sw a7, 292(a5) -- Store: [0x8000f3f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800058ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800058b0]:csrrs a7, fflags, zero
	-[0x800058b4]:fsw fa2, 296(a5)
Current Store : [0x800058b8] : sw a7, 300(a5) -- Store: [0x8000f400]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800058c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800058cc]:csrrs a7, fflags, zero
	-[0x800058d0]:fsw fa2, 304(a5)
Current Store : [0x800058d4] : sw a7, 308(a5) -- Store: [0x8000f408]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800058e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800058e8]:csrrs a7, fflags, zero
	-[0x800058ec]:fsw fa2, 312(a5)
Current Store : [0x800058f0] : sw a7, 316(a5) -- Store: [0x8000f410]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005900]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005904]:csrrs a7, fflags, zero
	-[0x80005908]:fsw fa2, 320(a5)
Current Store : [0x8000590c] : sw a7, 324(a5) -- Store: [0x8000f418]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000591c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005920]:csrrs a7, fflags, zero
	-[0x80005924]:fsw fa2, 328(a5)
Current Store : [0x80005928] : sw a7, 332(a5) -- Store: [0x8000f420]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005938]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000593c]:csrrs a7, fflags, zero
	-[0x80005940]:fsw fa2, 336(a5)
Current Store : [0x80005944] : sw a7, 340(a5) -- Store: [0x8000f428]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005954]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005958]:csrrs a7, fflags, zero
	-[0x8000595c]:fsw fa2, 344(a5)
Current Store : [0x80005960] : sw a7, 348(a5) -- Store: [0x8000f430]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005970]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005974]:csrrs a7, fflags, zero
	-[0x80005978]:fsw fa2, 352(a5)
Current Store : [0x8000597c] : sw a7, 356(a5) -- Store: [0x8000f438]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000598c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005990]:csrrs a7, fflags, zero
	-[0x80005994]:fsw fa2, 360(a5)
Current Store : [0x80005998] : sw a7, 364(a5) -- Store: [0x8000f440]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800059a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800059ac]:csrrs a7, fflags, zero
	-[0x800059b0]:fsw fa2, 368(a5)
Current Store : [0x800059b4] : sw a7, 372(a5) -- Store: [0x8000f448]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800059c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800059c8]:csrrs a7, fflags, zero
	-[0x800059cc]:fsw fa2, 376(a5)
Current Store : [0x800059d0] : sw a7, 380(a5) -- Store: [0x8000f450]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800059e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800059e4]:csrrs a7, fflags, zero
	-[0x800059e8]:fsw fa2, 384(a5)
Current Store : [0x800059ec] : sw a7, 388(a5) -- Store: [0x8000f458]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800059fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a00]:csrrs a7, fflags, zero
	-[0x80005a04]:fsw fa2, 392(a5)
Current Store : [0x80005a08] : sw a7, 396(a5) -- Store: [0x8000f460]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005a18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a1c]:csrrs a7, fflags, zero
	-[0x80005a20]:fsw fa2, 400(a5)
Current Store : [0x80005a24] : sw a7, 404(a5) -- Store: [0x8000f468]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005a34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a38]:csrrs a7, fflags, zero
	-[0x80005a3c]:fsw fa2, 408(a5)
Current Store : [0x80005a40] : sw a7, 412(a5) -- Store: [0x8000f470]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005a50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a54]:csrrs a7, fflags, zero
	-[0x80005a58]:fsw fa2, 416(a5)
Current Store : [0x80005a5c] : sw a7, 420(a5) -- Store: [0x8000f478]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005a6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a70]:csrrs a7, fflags, zero
	-[0x80005a74]:fsw fa2, 424(a5)
Current Store : [0x80005a78] : sw a7, 428(a5) -- Store: [0x8000f480]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005a88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005a8c]:csrrs a7, fflags, zero
	-[0x80005a90]:fsw fa2, 432(a5)
Current Store : [0x80005a94] : sw a7, 436(a5) -- Store: [0x8000f488]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005aa4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005aa8]:csrrs a7, fflags, zero
	-[0x80005aac]:fsw fa2, 440(a5)
Current Store : [0x80005ab0] : sw a7, 444(a5) -- Store: [0x8000f490]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005ac0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005ac4]:csrrs a7, fflags, zero
	-[0x80005ac8]:fsw fa2, 448(a5)
Current Store : [0x80005acc] : sw a7, 452(a5) -- Store: [0x8000f498]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005adc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005ae0]:csrrs a7, fflags, zero
	-[0x80005ae4]:fsw fa2, 456(a5)
Current Store : [0x80005ae8] : sw a7, 460(a5) -- Store: [0x8000f4a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005af8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005afc]:csrrs a7, fflags, zero
	-[0x80005b00]:fsw fa2, 464(a5)
Current Store : [0x80005b04] : sw a7, 468(a5) -- Store: [0x8000f4a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005b14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005b18]:csrrs a7, fflags, zero
	-[0x80005b1c]:fsw fa2, 472(a5)
Current Store : [0x80005b20] : sw a7, 476(a5) -- Store: [0x8000f4b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005b30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005b34]:csrrs a7, fflags, zero
	-[0x80005b38]:fsw fa2, 480(a5)
Current Store : [0x80005b3c] : sw a7, 484(a5) -- Store: [0x8000f4b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005b4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005b50]:csrrs a7, fflags, zero
	-[0x80005b54]:fsw fa2, 488(a5)
Current Store : [0x80005b58] : sw a7, 492(a5) -- Store: [0x8000f4c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005b68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005b6c]:csrrs a7, fflags, zero
	-[0x80005b70]:fsw fa2, 496(a5)
Current Store : [0x80005b74] : sw a7, 500(a5) -- Store: [0x8000f4c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005b84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005b88]:csrrs a7, fflags, zero
	-[0x80005b8c]:fsw fa2, 504(a5)
Current Store : [0x80005b90] : sw a7, 508(a5) -- Store: [0x8000f4d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005ba0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005ba4]:csrrs a7, fflags, zero
	-[0x80005ba8]:fsw fa2, 512(a5)
Current Store : [0x80005bac] : sw a7, 516(a5) -- Store: [0x8000f4d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005bbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005bc0]:csrrs a7, fflags, zero
	-[0x80005bc4]:fsw fa2, 520(a5)
Current Store : [0x80005bc8] : sw a7, 524(a5) -- Store: [0x8000f4e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005bd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005bdc]:csrrs a7, fflags, zero
	-[0x80005be0]:fsw fa2, 528(a5)
Current Store : [0x80005be4] : sw a7, 532(a5) -- Store: [0x8000f4e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005bf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005bf8]:csrrs a7, fflags, zero
	-[0x80005bfc]:fsw fa2, 536(a5)
Current Store : [0x80005c00] : sw a7, 540(a5) -- Store: [0x8000f4f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005c14]:csrrs a7, fflags, zero
	-[0x80005c18]:fsw fa2, 544(a5)
Current Store : [0x80005c1c] : sw a7, 548(a5) -- Store: [0x8000f4f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005c30]:csrrs a7, fflags, zero
	-[0x80005c34]:fsw fa2, 552(a5)
Current Store : [0x80005c38] : sw a7, 556(a5) -- Store: [0x8000f500]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005c4c]:csrrs a7, fflags, zero
	-[0x80005c50]:fsw fa2, 560(a5)
Current Store : [0x80005c54] : sw a7, 564(a5) -- Store: [0x8000f508]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005c68]:csrrs a7, fflags, zero
	-[0x80005c6c]:fsw fa2, 568(a5)
Current Store : [0x80005c70] : sw a7, 572(a5) -- Store: [0x8000f510]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005c84]:csrrs a7, fflags, zero
	-[0x80005c88]:fsw fa2, 576(a5)
Current Store : [0x80005c8c] : sw a7, 580(a5) -- Store: [0x8000f518]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005c9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005ca0]:csrrs a7, fflags, zero
	-[0x80005ca4]:fsw fa2, 584(a5)
Current Store : [0x80005ca8] : sw a7, 588(a5) -- Store: [0x8000f520]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005cb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005cbc]:csrrs a7, fflags, zero
	-[0x80005cc0]:fsw fa2, 592(a5)
Current Store : [0x80005cc4] : sw a7, 596(a5) -- Store: [0x8000f528]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005cd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005cd8]:csrrs a7, fflags, zero
	-[0x80005cdc]:fsw fa2, 600(a5)
Current Store : [0x80005ce0] : sw a7, 604(a5) -- Store: [0x8000f530]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005cf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005cf4]:csrrs a7, fflags, zero
	-[0x80005cf8]:fsw fa2, 608(a5)
Current Store : [0x80005cfc] : sw a7, 612(a5) -- Store: [0x8000f538]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d10]:csrrs a7, fflags, zero
	-[0x80005d14]:fsw fa2, 616(a5)
Current Store : [0x80005d18] : sw a7, 620(a5) -- Store: [0x8000f540]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d2c]:csrrs a7, fflags, zero
	-[0x80005d30]:fsw fa2, 624(a5)
Current Store : [0x80005d34] : sw a7, 628(a5) -- Store: [0x8000f548]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d48]:csrrs a7, fflags, zero
	-[0x80005d4c]:fsw fa2, 632(a5)
Current Store : [0x80005d50] : sw a7, 636(a5) -- Store: [0x8000f550]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d64]:csrrs a7, fflags, zero
	-[0x80005d68]:fsw fa2, 640(a5)
Current Store : [0x80005d6c] : sw a7, 644(a5) -- Store: [0x8000f558]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d80]:csrrs a7, fflags, zero
	-[0x80005d84]:fsw fa2, 648(a5)
Current Store : [0x80005d88] : sw a7, 652(a5) -- Store: [0x8000f560]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005d98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005d9c]:csrrs a7, fflags, zero
	-[0x80005da0]:fsw fa2, 656(a5)
Current Store : [0x80005da4] : sw a7, 660(a5) -- Store: [0x8000f568]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005db4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005db8]:csrrs a7, fflags, zero
	-[0x80005dbc]:fsw fa2, 664(a5)
Current Store : [0x80005dc0] : sw a7, 668(a5) -- Store: [0x8000f570]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005dd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005dd4]:csrrs a7, fflags, zero
	-[0x80005dd8]:fsw fa2, 672(a5)
Current Store : [0x80005ddc] : sw a7, 676(a5) -- Store: [0x8000f578]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005dec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005df0]:csrrs a7, fflags, zero
	-[0x80005df4]:fsw fa2, 680(a5)
Current Store : [0x80005df8] : sw a7, 684(a5) -- Store: [0x8000f580]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e0c]:csrrs a7, fflags, zero
	-[0x80005e10]:fsw fa2, 688(a5)
Current Store : [0x80005e14] : sw a7, 692(a5) -- Store: [0x8000f588]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e28]:csrrs a7, fflags, zero
	-[0x80005e2c]:fsw fa2, 696(a5)
Current Store : [0x80005e30] : sw a7, 700(a5) -- Store: [0x8000f590]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e44]:csrrs a7, fflags, zero
	-[0x80005e48]:fsw fa2, 704(a5)
Current Store : [0x80005e4c] : sw a7, 708(a5) -- Store: [0x8000f598]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e60]:csrrs a7, fflags, zero
	-[0x80005e64]:fsw fa2, 712(a5)
Current Store : [0x80005e68] : sw a7, 716(a5) -- Store: [0x8000f5a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e7c]:csrrs a7, fflags, zero
	-[0x80005e80]:fsw fa2, 720(a5)
Current Store : [0x80005e84] : sw a7, 724(a5) -- Store: [0x8000f5a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005e94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005e98]:csrrs a7, fflags, zero
	-[0x80005e9c]:fsw fa2, 728(a5)
Current Store : [0x80005ea0] : sw a7, 732(a5) -- Store: [0x8000f5b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005eb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005eb4]:csrrs a7, fflags, zero
	-[0x80005eb8]:fsw fa2, 736(a5)
Current Store : [0x80005ebc] : sw a7, 740(a5) -- Store: [0x8000f5b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005ecc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005ed0]:csrrs a7, fflags, zero
	-[0x80005ed4]:fsw fa2, 744(a5)
Current Store : [0x80005ed8] : sw a7, 748(a5) -- Store: [0x8000f5c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005ee8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005eec]:csrrs a7, fflags, zero
	-[0x80005ef0]:fsw fa2, 752(a5)
Current Store : [0x80005ef4] : sw a7, 756(a5) -- Store: [0x8000f5c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f08]:csrrs a7, fflags, zero
	-[0x80005f0c]:fsw fa2, 760(a5)
Current Store : [0x80005f10] : sw a7, 764(a5) -- Store: [0x8000f5d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f24]:csrrs a7, fflags, zero
	-[0x80005f28]:fsw fa2, 768(a5)
Current Store : [0x80005f2c] : sw a7, 772(a5) -- Store: [0x8000f5d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f40]:csrrs a7, fflags, zero
	-[0x80005f44]:fsw fa2, 776(a5)
Current Store : [0x80005f48] : sw a7, 780(a5) -- Store: [0x8000f5e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f5c]:csrrs a7, fflags, zero
	-[0x80005f60]:fsw fa2, 784(a5)
Current Store : [0x80005f64] : sw a7, 788(a5) -- Store: [0x8000f5e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f78]:csrrs a7, fflags, zero
	-[0x80005f7c]:fsw fa2, 792(a5)
Current Store : [0x80005f80] : sw a7, 796(a5) -- Store: [0x8000f5f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005f90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005f94]:csrrs a7, fflags, zero
	-[0x80005f98]:fsw fa2, 800(a5)
Current Store : [0x80005f9c] : sw a7, 804(a5) -- Store: [0x8000f5f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005fac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005fb0]:csrrs a7, fflags, zero
	-[0x80005fb4]:fsw fa2, 808(a5)
Current Store : [0x80005fb8] : sw a7, 812(a5) -- Store: [0x8000f600]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005fc8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005fcc]:csrrs a7, fflags, zero
	-[0x80005fd0]:fsw fa2, 816(a5)
Current Store : [0x80005fd4] : sw a7, 820(a5) -- Store: [0x8000f608]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80005fe4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80005fe8]:csrrs a7, fflags, zero
	-[0x80005fec]:fsw fa2, 824(a5)
Current Store : [0x80005ff0] : sw a7, 828(a5) -- Store: [0x8000f610]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006000]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006004]:csrrs a7, fflags, zero
	-[0x80006008]:fsw fa2, 832(a5)
Current Store : [0x8000600c] : sw a7, 836(a5) -- Store: [0x8000f618]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000601c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006020]:csrrs a7, fflags, zero
	-[0x80006024]:fsw fa2, 840(a5)
Current Store : [0x80006028] : sw a7, 844(a5) -- Store: [0x8000f620]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006038]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000603c]:csrrs a7, fflags, zero
	-[0x80006040]:fsw fa2, 848(a5)
Current Store : [0x80006044] : sw a7, 852(a5) -- Store: [0x8000f628]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006054]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006058]:csrrs a7, fflags, zero
	-[0x8000605c]:fsw fa2, 856(a5)
Current Store : [0x80006060] : sw a7, 860(a5) -- Store: [0x8000f630]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006070]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006074]:csrrs a7, fflags, zero
	-[0x80006078]:fsw fa2, 864(a5)
Current Store : [0x8000607c] : sw a7, 868(a5) -- Store: [0x8000f638]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000608c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006090]:csrrs a7, fflags, zero
	-[0x80006094]:fsw fa2, 872(a5)
Current Store : [0x80006098] : sw a7, 876(a5) -- Store: [0x8000f640]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800060a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800060ac]:csrrs a7, fflags, zero
	-[0x800060b0]:fsw fa2, 880(a5)
Current Store : [0x800060b4] : sw a7, 884(a5) -- Store: [0x8000f648]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800060c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800060c8]:csrrs a7, fflags, zero
	-[0x800060cc]:fsw fa2, 888(a5)
Current Store : [0x800060d0] : sw a7, 892(a5) -- Store: [0x8000f650]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800060e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800060e4]:csrrs a7, fflags, zero
	-[0x800060e8]:fsw fa2, 896(a5)
Current Store : [0x800060ec] : sw a7, 900(a5) -- Store: [0x8000f658]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800060fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006100]:csrrs a7, fflags, zero
	-[0x80006104]:fsw fa2, 904(a5)
Current Store : [0x80006108] : sw a7, 908(a5) -- Store: [0x8000f660]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006118]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000611c]:csrrs a7, fflags, zero
	-[0x80006120]:fsw fa2, 912(a5)
Current Store : [0x80006124] : sw a7, 916(a5) -- Store: [0x8000f668]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006134]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006138]:csrrs a7, fflags, zero
	-[0x8000613c]:fsw fa2, 920(a5)
Current Store : [0x80006140] : sw a7, 924(a5) -- Store: [0x8000f670]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006150]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006154]:csrrs a7, fflags, zero
	-[0x80006158]:fsw fa2, 928(a5)
Current Store : [0x8000615c] : sw a7, 932(a5) -- Store: [0x8000f678]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000616c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006170]:csrrs a7, fflags, zero
	-[0x80006174]:fsw fa2, 936(a5)
Current Store : [0x80006178] : sw a7, 940(a5) -- Store: [0x8000f680]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006188]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000618c]:csrrs a7, fflags, zero
	-[0x80006190]:fsw fa2, 944(a5)
Current Store : [0x80006194] : sw a7, 948(a5) -- Store: [0x8000f688]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800061a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800061a8]:csrrs a7, fflags, zero
	-[0x800061ac]:fsw fa2, 952(a5)
Current Store : [0x800061b0] : sw a7, 956(a5) -- Store: [0x8000f690]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800061c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800061c4]:csrrs a7, fflags, zero
	-[0x800061c8]:fsw fa2, 960(a5)
Current Store : [0x800061cc] : sw a7, 964(a5) -- Store: [0x8000f698]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800061dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800061e0]:csrrs a7, fflags, zero
	-[0x800061e4]:fsw fa2, 968(a5)
Current Store : [0x800061e8] : sw a7, 972(a5) -- Store: [0x8000f6a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800061f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800061fc]:csrrs a7, fflags, zero
	-[0x80006200]:fsw fa2, 976(a5)
Current Store : [0x80006204] : sw a7, 980(a5) -- Store: [0x8000f6a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006214]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006218]:csrrs a7, fflags, zero
	-[0x8000621c]:fsw fa2, 984(a5)
Current Store : [0x80006220] : sw a7, 988(a5) -- Store: [0x8000f6b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006230]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006234]:csrrs a7, fflags, zero
	-[0x80006238]:fsw fa2, 992(a5)
Current Store : [0x8000623c] : sw a7, 996(a5) -- Store: [0x8000f6b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000624c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006250]:csrrs a7, fflags, zero
	-[0x80006254]:fsw fa2, 1000(a5)
Current Store : [0x80006258] : sw a7, 1004(a5) -- Store: [0x8000f6c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006268]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000626c]:csrrs a7, fflags, zero
	-[0x80006270]:fsw fa2, 1008(a5)
Current Store : [0x80006274] : sw a7, 1012(a5) -- Store: [0x8000f6c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006284]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006288]:csrrs a7, fflags, zero
	-[0x8000628c]:fsw fa2, 1016(a5)
Current Store : [0x80006290] : sw a7, 1020(a5) -- Store: [0x8000f6d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800062a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800062a4]:csrrs a7, fflags, zero
	-[0x800062a8]:fsw fa2, 1024(a5)
Current Store : [0x800062ac] : sw a7, 1028(a5) -- Store: [0x8000f6d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800062bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800062c0]:csrrs a7, fflags, zero
	-[0x800062c4]:fsw fa2, 1032(a5)
Current Store : [0x800062c8] : sw a7, 1036(a5) -- Store: [0x8000f6e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800062d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800062dc]:csrrs a7, fflags, zero
	-[0x800062e0]:fsw fa2, 1040(a5)
Current Store : [0x800062e4] : sw a7, 1044(a5) -- Store: [0x8000f6e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800062f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800062f8]:csrrs a7, fflags, zero
	-[0x800062fc]:fsw fa2, 1048(a5)
Current Store : [0x80006300] : sw a7, 1052(a5) -- Store: [0x8000f6f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006310]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006314]:csrrs a7, fflags, zero
	-[0x80006318]:fsw fa2, 1056(a5)
Current Store : [0x8000631c] : sw a7, 1060(a5) -- Store: [0x8000f6f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000632c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006330]:csrrs a7, fflags, zero
	-[0x80006334]:fsw fa2, 1064(a5)
Current Store : [0x80006338] : sw a7, 1068(a5) -- Store: [0x8000f700]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006348]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000634c]:csrrs a7, fflags, zero
	-[0x80006350]:fsw fa2, 1072(a5)
Current Store : [0x80006354] : sw a7, 1076(a5) -- Store: [0x8000f708]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006364]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006368]:csrrs a7, fflags, zero
	-[0x8000636c]:fsw fa2, 1080(a5)
Current Store : [0x80006370] : sw a7, 1084(a5) -- Store: [0x8000f710]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006380]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006384]:csrrs a7, fflags, zero
	-[0x80006388]:fsw fa2, 1088(a5)
Current Store : [0x8000638c] : sw a7, 1092(a5) -- Store: [0x8000f718]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000639c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800063a0]:csrrs a7, fflags, zero
	-[0x800063a4]:fsw fa2, 1096(a5)
Current Store : [0x800063a8] : sw a7, 1100(a5) -- Store: [0x8000f720]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800063b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800063bc]:csrrs a7, fflags, zero
	-[0x800063c0]:fsw fa2, 1104(a5)
Current Store : [0x800063c4] : sw a7, 1108(a5) -- Store: [0x8000f728]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800063d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800063d8]:csrrs a7, fflags, zero
	-[0x800063dc]:fsw fa2, 1112(a5)
Current Store : [0x800063e0] : sw a7, 1116(a5) -- Store: [0x8000f730]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800063f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800063f4]:csrrs a7, fflags, zero
	-[0x800063f8]:fsw fa2, 1120(a5)
Current Store : [0x800063fc] : sw a7, 1124(a5) -- Store: [0x8000f738]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000640c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006410]:csrrs a7, fflags, zero
	-[0x80006414]:fsw fa2, 1128(a5)
Current Store : [0x80006418] : sw a7, 1132(a5) -- Store: [0x8000f740]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006428]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000642c]:csrrs a7, fflags, zero
	-[0x80006430]:fsw fa2, 1136(a5)
Current Store : [0x80006434] : sw a7, 1140(a5) -- Store: [0x8000f748]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006444]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006448]:csrrs a7, fflags, zero
	-[0x8000644c]:fsw fa2, 1144(a5)
Current Store : [0x80006450] : sw a7, 1148(a5) -- Store: [0x8000f750]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006460]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006464]:csrrs a7, fflags, zero
	-[0x80006468]:fsw fa2, 1152(a5)
Current Store : [0x8000646c] : sw a7, 1156(a5) -- Store: [0x8000f758]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000647c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006480]:csrrs a7, fflags, zero
	-[0x80006484]:fsw fa2, 1160(a5)
Current Store : [0x80006488] : sw a7, 1164(a5) -- Store: [0x8000f760]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006498]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000649c]:csrrs a7, fflags, zero
	-[0x800064a0]:fsw fa2, 1168(a5)
Current Store : [0x800064a4] : sw a7, 1172(a5) -- Store: [0x8000f768]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800064b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800064b8]:csrrs a7, fflags, zero
	-[0x800064bc]:fsw fa2, 1176(a5)
Current Store : [0x800064c0] : sw a7, 1180(a5) -- Store: [0x8000f770]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800064d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800064d4]:csrrs a7, fflags, zero
	-[0x800064d8]:fsw fa2, 1184(a5)
Current Store : [0x800064dc] : sw a7, 1188(a5) -- Store: [0x8000f778]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800064ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800064f0]:csrrs a7, fflags, zero
	-[0x800064f4]:fsw fa2, 1192(a5)
Current Store : [0x800064f8] : sw a7, 1196(a5) -- Store: [0x8000f780]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006508]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000650c]:csrrs a7, fflags, zero
	-[0x80006510]:fsw fa2, 1200(a5)
Current Store : [0x80006514] : sw a7, 1204(a5) -- Store: [0x8000f788]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006524]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006528]:csrrs a7, fflags, zero
	-[0x8000652c]:fsw fa2, 1208(a5)
Current Store : [0x80006530] : sw a7, 1212(a5) -- Store: [0x8000f790]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006540]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006544]:csrrs a7, fflags, zero
	-[0x80006548]:fsw fa2, 1216(a5)
Current Store : [0x8000654c] : sw a7, 1220(a5) -- Store: [0x8000f798]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000655c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006560]:csrrs a7, fflags, zero
	-[0x80006564]:fsw fa2, 1224(a5)
Current Store : [0x80006568] : sw a7, 1228(a5) -- Store: [0x8000f7a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006578]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000657c]:csrrs a7, fflags, zero
	-[0x80006580]:fsw fa2, 1232(a5)
Current Store : [0x80006584] : sw a7, 1236(a5) -- Store: [0x8000f7a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006594]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006598]:csrrs a7, fflags, zero
	-[0x8000659c]:fsw fa2, 1240(a5)
Current Store : [0x800065a0] : sw a7, 1244(a5) -- Store: [0x8000f7b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800065b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800065b4]:csrrs a7, fflags, zero
	-[0x800065b8]:fsw fa2, 1248(a5)
Current Store : [0x800065bc] : sw a7, 1252(a5) -- Store: [0x8000f7b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800065cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800065d0]:csrrs a7, fflags, zero
	-[0x800065d4]:fsw fa2, 1256(a5)
Current Store : [0x800065d8] : sw a7, 1260(a5) -- Store: [0x8000f7c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800065e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800065ec]:csrrs a7, fflags, zero
	-[0x800065f0]:fsw fa2, 1264(a5)
Current Store : [0x800065f4] : sw a7, 1268(a5) -- Store: [0x8000f7c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006604]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006608]:csrrs a7, fflags, zero
	-[0x8000660c]:fsw fa2, 1272(a5)
Current Store : [0x80006610] : sw a7, 1276(a5) -- Store: [0x8000f7d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006620]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006624]:csrrs a7, fflags, zero
	-[0x80006628]:fsw fa2, 1280(a5)
Current Store : [0x8000662c] : sw a7, 1284(a5) -- Store: [0x8000f7d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000663c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006640]:csrrs a7, fflags, zero
	-[0x80006644]:fsw fa2, 1288(a5)
Current Store : [0x80006648] : sw a7, 1292(a5) -- Store: [0x8000f7e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006658]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000665c]:csrrs a7, fflags, zero
	-[0x80006660]:fsw fa2, 1296(a5)
Current Store : [0x80006664] : sw a7, 1300(a5) -- Store: [0x8000f7e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006674]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006678]:csrrs a7, fflags, zero
	-[0x8000667c]:fsw fa2, 1304(a5)
Current Store : [0x80006680] : sw a7, 1308(a5) -- Store: [0x8000f7f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006690]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006694]:csrrs a7, fflags, zero
	-[0x80006698]:fsw fa2, 1312(a5)
Current Store : [0x8000669c] : sw a7, 1316(a5) -- Store: [0x8000f7f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800066ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800066b0]:csrrs a7, fflags, zero
	-[0x800066b4]:fsw fa2, 1320(a5)
Current Store : [0x800066b8] : sw a7, 1324(a5) -- Store: [0x8000f800]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800066c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800066cc]:csrrs a7, fflags, zero
	-[0x800066d0]:fsw fa2, 1328(a5)
Current Store : [0x800066d4] : sw a7, 1332(a5) -- Store: [0x8000f808]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800066e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800066e8]:csrrs a7, fflags, zero
	-[0x800066ec]:fsw fa2, 1336(a5)
Current Store : [0x800066f0] : sw a7, 1340(a5) -- Store: [0x8000f810]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006700]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006704]:csrrs a7, fflags, zero
	-[0x80006708]:fsw fa2, 1344(a5)
Current Store : [0x8000670c] : sw a7, 1348(a5) -- Store: [0x8000f818]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000671c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006720]:csrrs a7, fflags, zero
	-[0x80006724]:fsw fa2, 1352(a5)
Current Store : [0x80006728] : sw a7, 1356(a5) -- Store: [0x8000f820]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006738]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000673c]:csrrs a7, fflags, zero
	-[0x80006740]:fsw fa2, 1360(a5)
Current Store : [0x80006744] : sw a7, 1364(a5) -- Store: [0x8000f828]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006754]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006758]:csrrs a7, fflags, zero
	-[0x8000675c]:fsw fa2, 1368(a5)
Current Store : [0x80006760] : sw a7, 1372(a5) -- Store: [0x8000f830]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006770]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006774]:csrrs a7, fflags, zero
	-[0x80006778]:fsw fa2, 1376(a5)
Current Store : [0x8000677c] : sw a7, 1380(a5) -- Store: [0x8000f838]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000678c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006790]:csrrs a7, fflags, zero
	-[0x80006794]:fsw fa2, 1384(a5)
Current Store : [0x80006798] : sw a7, 1388(a5) -- Store: [0x8000f840]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800067a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800067ac]:csrrs a7, fflags, zero
	-[0x800067b0]:fsw fa2, 1392(a5)
Current Store : [0x800067b4] : sw a7, 1396(a5) -- Store: [0x8000f848]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800067c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800067c8]:csrrs a7, fflags, zero
	-[0x800067cc]:fsw fa2, 1400(a5)
Current Store : [0x800067d0] : sw a7, 1404(a5) -- Store: [0x8000f850]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800067e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800067e4]:csrrs a7, fflags, zero
	-[0x800067e8]:fsw fa2, 1408(a5)
Current Store : [0x800067ec] : sw a7, 1412(a5) -- Store: [0x8000f858]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800067fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006800]:csrrs a7, fflags, zero
	-[0x80006804]:fsw fa2, 1416(a5)
Current Store : [0x80006808] : sw a7, 1420(a5) -- Store: [0x8000f860]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006818]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000681c]:csrrs a7, fflags, zero
	-[0x80006820]:fsw fa2, 1424(a5)
Current Store : [0x80006824] : sw a7, 1428(a5) -- Store: [0x8000f868]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006834]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006838]:csrrs a7, fflags, zero
	-[0x8000683c]:fsw fa2, 1432(a5)
Current Store : [0x80006840] : sw a7, 1436(a5) -- Store: [0x8000f870]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006850]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006854]:csrrs a7, fflags, zero
	-[0x80006858]:fsw fa2, 1440(a5)
Current Store : [0x8000685c] : sw a7, 1444(a5) -- Store: [0x8000f878]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000686c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006870]:csrrs a7, fflags, zero
	-[0x80006874]:fsw fa2, 1448(a5)
Current Store : [0x80006878] : sw a7, 1452(a5) -- Store: [0x8000f880]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006888]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000688c]:csrrs a7, fflags, zero
	-[0x80006890]:fsw fa2, 1456(a5)
Current Store : [0x80006894] : sw a7, 1460(a5) -- Store: [0x8000f888]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800068a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800068a8]:csrrs a7, fflags, zero
	-[0x800068ac]:fsw fa2, 1464(a5)
Current Store : [0x800068b0] : sw a7, 1468(a5) -- Store: [0x8000f890]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800068c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800068c4]:csrrs a7, fflags, zero
	-[0x800068c8]:fsw fa2, 1472(a5)
Current Store : [0x800068cc] : sw a7, 1476(a5) -- Store: [0x8000f898]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800068dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800068e0]:csrrs a7, fflags, zero
	-[0x800068e4]:fsw fa2, 1480(a5)
Current Store : [0x800068e8] : sw a7, 1484(a5) -- Store: [0x8000f8a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800068f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800068fc]:csrrs a7, fflags, zero
	-[0x80006900]:fsw fa2, 1488(a5)
Current Store : [0x80006904] : sw a7, 1492(a5) -- Store: [0x8000f8a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006914]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006918]:csrrs a7, fflags, zero
	-[0x8000691c]:fsw fa2, 1496(a5)
Current Store : [0x80006920] : sw a7, 1500(a5) -- Store: [0x8000f8b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006930]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006934]:csrrs a7, fflags, zero
	-[0x80006938]:fsw fa2, 1504(a5)
Current Store : [0x8000693c] : sw a7, 1508(a5) -- Store: [0x8000f8b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000694c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006950]:csrrs a7, fflags, zero
	-[0x80006954]:fsw fa2, 1512(a5)
Current Store : [0x80006958] : sw a7, 1516(a5) -- Store: [0x8000f8c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006968]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000696c]:csrrs a7, fflags, zero
	-[0x80006970]:fsw fa2, 1520(a5)
Current Store : [0x80006974] : sw a7, 1524(a5) -- Store: [0x8000f8c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006984]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006988]:csrrs a7, fflags, zero
	-[0x8000698c]:fsw fa2, 1528(a5)
Current Store : [0x80006990] : sw a7, 1532(a5) -- Store: [0x8000f8d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800069a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800069a4]:csrrs a7, fflags, zero
	-[0x800069a8]:fsw fa2, 1536(a5)
Current Store : [0x800069ac] : sw a7, 1540(a5) -- Store: [0x8000f8d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800069bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800069c0]:csrrs a7, fflags, zero
	-[0x800069c4]:fsw fa2, 1544(a5)
Current Store : [0x800069c8] : sw a7, 1548(a5) -- Store: [0x8000f8e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800069d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800069dc]:csrrs a7, fflags, zero
	-[0x800069e0]:fsw fa2, 1552(a5)
Current Store : [0x800069e4] : sw a7, 1556(a5) -- Store: [0x8000f8e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800069f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800069f8]:csrrs a7, fflags, zero
	-[0x800069fc]:fsw fa2, 1560(a5)
Current Store : [0x80006a00] : sw a7, 1564(a5) -- Store: [0x8000f8f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006a14]:csrrs a7, fflags, zero
	-[0x80006a18]:fsw fa2, 1568(a5)
Current Store : [0x80006a1c] : sw a7, 1572(a5) -- Store: [0x8000f8f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006a30]:csrrs a7, fflags, zero
	-[0x80006a34]:fsw fa2, 1576(a5)
Current Store : [0x80006a38] : sw a7, 1580(a5) -- Store: [0x8000f900]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006a4c]:csrrs a7, fflags, zero
	-[0x80006a50]:fsw fa2, 1584(a5)
Current Store : [0x80006a54] : sw a7, 1588(a5) -- Store: [0x8000f908]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006a68]:csrrs a7, fflags, zero
	-[0x80006a6c]:fsw fa2, 1592(a5)
Current Store : [0x80006a70] : sw a7, 1596(a5) -- Store: [0x8000f910]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006a84]:csrrs a7, fflags, zero
	-[0x80006a88]:fsw fa2, 1600(a5)
Current Store : [0x80006a8c] : sw a7, 1604(a5) -- Store: [0x8000f918]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006a9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006aa0]:csrrs a7, fflags, zero
	-[0x80006aa4]:fsw fa2, 1608(a5)
Current Store : [0x80006aa8] : sw a7, 1612(a5) -- Store: [0x8000f920]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ab8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006abc]:csrrs a7, fflags, zero
	-[0x80006ac0]:fsw fa2, 1616(a5)
Current Store : [0x80006ac4] : sw a7, 1620(a5) -- Store: [0x8000f928]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ad4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006ad8]:csrrs a7, fflags, zero
	-[0x80006adc]:fsw fa2, 1624(a5)
Current Store : [0x80006ae0] : sw a7, 1628(a5) -- Store: [0x8000f930]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006af0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006af4]:csrrs a7, fflags, zero
	-[0x80006af8]:fsw fa2, 1632(a5)
Current Store : [0x80006afc] : sw a7, 1636(a5) -- Store: [0x8000f938]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b10]:csrrs a7, fflags, zero
	-[0x80006b14]:fsw fa2, 1640(a5)
Current Store : [0x80006b18] : sw a7, 1644(a5) -- Store: [0x8000f940]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b2c]:csrrs a7, fflags, zero
	-[0x80006b30]:fsw fa2, 1648(a5)
Current Store : [0x80006b34] : sw a7, 1652(a5) -- Store: [0x8000f948]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b48]:csrrs a7, fflags, zero
	-[0x80006b4c]:fsw fa2, 1656(a5)
Current Store : [0x80006b50] : sw a7, 1660(a5) -- Store: [0x8000f950]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b64]:csrrs a7, fflags, zero
	-[0x80006b68]:fsw fa2, 1664(a5)
Current Store : [0x80006b6c] : sw a7, 1668(a5) -- Store: [0x8000f958]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b80]:csrrs a7, fflags, zero
	-[0x80006b84]:fsw fa2, 1672(a5)
Current Store : [0x80006b88] : sw a7, 1676(a5) -- Store: [0x8000f960]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006b98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006b9c]:csrrs a7, fflags, zero
	-[0x80006ba0]:fsw fa2, 1680(a5)
Current Store : [0x80006ba4] : sw a7, 1684(a5) -- Store: [0x8000f968]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006bb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006bb8]:csrrs a7, fflags, zero
	-[0x80006bbc]:fsw fa2, 1688(a5)
Current Store : [0x80006bc0] : sw a7, 1692(a5) -- Store: [0x8000f970]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006bd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006bd4]:csrrs a7, fflags, zero
	-[0x80006bd8]:fsw fa2, 1696(a5)
Current Store : [0x80006bdc] : sw a7, 1700(a5) -- Store: [0x8000f978]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006bec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006bf0]:csrrs a7, fflags, zero
	-[0x80006bf4]:fsw fa2, 1704(a5)
Current Store : [0x80006bf8] : sw a7, 1708(a5) -- Store: [0x8000f980]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c0c]:csrrs a7, fflags, zero
	-[0x80006c10]:fsw fa2, 1712(a5)
Current Store : [0x80006c14] : sw a7, 1716(a5) -- Store: [0x8000f988]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c28]:csrrs a7, fflags, zero
	-[0x80006c2c]:fsw fa2, 1720(a5)
Current Store : [0x80006c30] : sw a7, 1724(a5) -- Store: [0x8000f990]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c44]:csrrs a7, fflags, zero
	-[0x80006c48]:fsw fa2, 1728(a5)
Current Store : [0x80006c4c] : sw a7, 1732(a5) -- Store: [0x8000f998]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c60]:csrrs a7, fflags, zero
	-[0x80006c64]:fsw fa2, 1736(a5)
Current Store : [0x80006c68] : sw a7, 1740(a5) -- Store: [0x8000f9a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c7c]:csrrs a7, fflags, zero
	-[0x80006c80]:fsw fa2, 1744(a5)
Current Store : [0x80006c84] : sw a7, 1748(a5) -- Store: [0x8000f9a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006c94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006c98]:csrrs a7, fflags, zero
	-[0x80006c9c]:fsw fa2, 1752(a5)
Current Store : [0x80006ca0] : sw a7, 1756(a5) -- Store: [0x8000f9b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006cb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006cb4]:csrrs a7, fflags, zero
	-[0x80006cb8]:fsw fa2, 1760(a5)
Current Store : [0x80006cbc] : sw a7, 1764(a5) -- Store: [0x8000f9b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ccc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006cd0]:csrrs a7, fflags, zero
	-[0x80006cd4]:fsw fa2, 1768(a5)
Current Store : [0x80006cd8] : sw a7, 1772(a5) -- Store: [0x8000f9c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ce8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006cec]:csrrs a7, fflags, zero
	-[0x80006cf0]:fsw fa2, 1776(a5)
Current Store : [0x80006cf4] : sw a7, 1780(a5) -- Store: [0x8000f9c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d08]:csrrs a7, fflags, zero
	-[0x80006d0c]:fsw fa2, 1784(a5)
Current Store : [0x80006d10] : sw a7, 1788(a5) -- Store: [0x8000f9d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d24]:csrrs a7, fflags, zero
	-[0x80006d28]:fsw fa2, 1792(a5)
Current Store : [0x80006d2c] : sw a7, 1796(a5) -- Store: [0x8000f9d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d40]:csrrs a7, fflags, zero
	-[0x80006d44]:fsw fa2, 1800(a5)
Current Store : [0x80006d48] : sw a7, 1804(a5) -- Store: [0x8000f9e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d5c]:csrrs a7, fflags, zero
	-[0x80006d60]:fsw fa2, 1808(a5)
Current Store : [0x80006d64] : sw a7, 1812(a5) -- Store: [0x8000f9e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d78]:csrrs a7, fflags, zero
	-[0x80006d7c]:fsw fa2, 1816(a5)
Current Store : [0x80006d80] : sw a7, 1820(a5) -- Store: [0x8000f9f0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006d90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006d94]:csrrs a7, fflags, zero
	-[0x80006d98]:fsw fa2, 1824(a5)
Current Store : [0x80006d9c] : sw a7, 1828(a5) -- Store: [0x8000f9f8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006dac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006db0]:csrrs a7, fflags, zero
	-[0x80006db4]:fsw fa2, 1832(a5)
Current Store : [0x80006db8] : sw a7, 1836(a5) -- Store: [0x8000fa00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006dc8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006dcc]:csrrs a7, fflags, zero
	-[0x80006dd0]:fsw fa2, 1840(a5)
Current Store : [0x80006dd4] : sw a7, 1844(a5) -- Store: [0x8000fa08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006de4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006de8]:csrrs a7, fflags, zero
	-[0x80006dec]:fsw fa2, 1848(a5)
Current Store : [0x80006df0] : sw a7, 1852(a5) -- Store: [0x8000fa10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e04]:csrrs a7, fflags, zero
	-[0x80006e08]:fsw fa2, 1856(a5)
Current Store : [0x80006e0c] : sw a7, 1860(a5) -- Store: [0x8000fa18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e20]:csrrs a7, fflags, zero
	-[0x80006e24]:fsw fa2, 1864(a5)
Current Store : [0x80006e28] : sw a7, 1868(a5) -- Store: [0x8000fa20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e3c]:csrrs a7, fflags, zero
	-[0x80006e40]:fsw fa2, 1872(a5)
Current Store : [0x80006e44] : sw a7, 1876(a5) -- Store: [0x8000fa28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e58]:csrrs a7, fflags, zero
	-[0x80006e5c]:fsw fa2, 1880(a5)
Current Store : [0x80006e60] : sw a7, 1884(a5) -- Store: [0x8000fa30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e74]:csrrs a7, fflags, zero
	-[0x80006e78]:fsw fa2, 1888(a5)
Current Store : [0x80006e7c] : sw a7, 1892(a5) -- Store: [0x8000fa38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006e8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006e90]:csrrs a7, fflags, zero
	-[0x80006e94]:fsw fa2, 1896(a5)
Current Store : [0x80006e98] : sw a7, 1900(a5) -- Store: [0x8000fa40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ea8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006eac]:csrrs a7, fflags, zero
	-[0x80006eb0]:fsw fa2, 1904(a5)
Current Store : [0x80006eb4] : sw a7, 1908(a5) -- Store: [0x8000fa48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ec4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006ec8]:csrrs a7, fflags, zero
	-[0x80006ecc]:fsw fa2, 1912(a5)
Current Store : [0x80006ed0] : sw a7, 1916(a5) -- Store: [0x8000fa50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ee0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006ee4]:csrrs a7, fflags, zero
	-[0x80006ee8]:fsw fa2, 1920(a5)
Current Store : [0x80006eec] : sw a7, 1924(a5) -- Store: [0x8000fa58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006efc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f00]:csrrs a7, fflags, zero
	-[0x80006f04]:fsw fa2, 1928(a5)
Current Store : [0x80006f08] : sw a7, 1932(a5) -- Store: [0x8000fa60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006f18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f1c]:csrrs a7, fflags, zero
	-[0x80006f20]:fsw fa2, 1936(a5)
Current Store : [0x80006f24] : sw a7, 1940(a5) -- Store: [0x8000fa68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006f34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f38]:csrrs a7, fflags, zero
	-[0x80006f3c]:fsw fa2, 1944(a5)
Current Store : [0x80006f40] : sw a7, 1948(a5) -- Store: [0x8000fa70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006f50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f54]:csrrs a7, fflags, zero
	-[0x80006f58]:fsw fa2, 1952(a5)
Current Store : [0x80006f5c] : sw a7, 1956(a5) -- Store: [0x8000fa78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006f6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f70]:csrrs a7, fflags, zero
	-[0x80006f74]:fsw fa2, 1960(a5)
Current Store : [0x80006f78] : sw a7, 1964(a5) -- Store: [0x8000fa80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006f88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006f8c]:csrrs a7, fflags, zero
	-[0x80006f90]:fsw fa2, 1968(a5)
Current Store : [0x80006f94] : sw a7, 1972(a5) -- Store: [0x8000fa88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006fa4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006fa8]:csrrs a7, fflags, zero
	-[0x80006fac]:fsw fa2, 1976(a5)
Current Store : [0x80006fb0] : sw a7, 1980(a5) -- Store: [0x8000fa90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006fc0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006fc4]:csrrs a7, fflags, zero
	-[0x80006fc8]:fsw fa2, 1984(a5)
Current Store : [0x80006fcc] : sw a7, 1988(a5) -- Store: [0x8000fa98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006fdc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006fe0]:csrrs a7, fflags, zero
	-[0x80006fe4]:fsw fa2, 1992(a5)
Current Store : [0x80006fe8] : sw a7, 1996(a5) -- Store: [0x8000faa0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80006ff8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80006ffc]:csrrs a7, fflags, zero
	-[0x80007000]:fsw fa2, 2000(a5)
Current Store : [0x80007004] : sw a7, 2004(a5) -- Store: [0x8000faa8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007014]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007018]:csrrs a7, fflags, zero
	-[0x8000701c]:fsw fa2, 2008(a5)
Current Store : [0x80007020] : sw a7, 2012(a5) -- Store: [0x8000fab0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007030]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007034]:csrrs a7, fflags, zero
	-[0x80007038]:fsw fa2, 2016(a5)
Current Store : [0x8000703c] : sw a7, 2020(a5) -- Store: [0x8000fab8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000704c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007050]:csrrs a7, fflags, zero
	-[0x80007054]:fsw fa2, 2024(a5)
Current Store : [0x80007058] : sw a7, 2028(a5) -- Store: [0x8000fac0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007074]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007078]:csrrs a7, fflags, zero
	-[0x8000707c]:fsw fa2, 0(a5)
Current Store : [0x80007080] : sw a7, 4(a5) -- Store: [0x8000fac8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007090]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007094]:csrrs a7, fflags, zero
	-[0x80007098]:fsw fa2, 8(a5)
Current Store : [0x8000709c] : sw a7, 12(a5) -- Store: [0x8000fad0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800070ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800070b0]:csrrs a7, fflags, zero
	-[0x800070b4]:fsw fa2, 16(a5)
Current Store : [0x800070b8] : sw a7, 20(a5) -- Store: [0x8000fad8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800070c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800070cc]:csrrs a7, fflags, zero
	-[0x800070d0]:fsw fa2, 24(a5)
Current Store : [0x800070d4] : sw a7, 28(a5) -- Store: [0x8000fae0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800070e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800070e8]:csrrs a7, fflags, zero
	-[0x800070ec]:fsw fa2, 32(a5)
Current Store : [0x800070f0] : sw a7, 36(a5) -- Store: [0x8000fae8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007100]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007104]:csrrs a7, fflags, zero
	-[0x80007108]:fsw fa2, 40(a5)
Current Store : [0x8000710c] : sw a7, 44(a5) -- Store: [0x8000faf0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000711c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007120]:csrrs a7, fflags, zero
	-[0x80007124]:fsw fa2, 48(a5)
Current Store : [0x80007128] : sw a7, 52(a5) -- Store: [0x8000faf8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007138]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000713c]:csrrs a7, fflags, zero
	-[0x80007140]:fsw fa2, 56(a5)
Current Store : [0x80007144] : sw a7, 60(a5) -- Store: [0x8000fb00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007154]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007158]:csrrs a7, fflags, zero
	-[0x8000715c]:fsw fa2, 64(a5)
Current Store : [0x80007160] : sw a7, 68(a5) -- Store: [0x8000fb08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007170]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007174]:csrrs a7, fflags, zero
	-[0x80007178]:fsw fa2, 72(a5)
Current Store : [0x8000717c] : sw a7, 76(a5) -- Store: [0x8000fb10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000718c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007190]:csrrs a7, fflags, zero
	-[0x80007194]:fsw fa2, 80(a5)
Current Store : [0x80007198] : sw a7, 84(a5) -- Store: [0x8000fb18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800071a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800071ac]:csrrs a7, fflags, zero
	-[0x800071b0]:fsw fa2, 88(a5)
Current Store : [0x800071b4] : sw a7, 92(a5) -- Store: [0x8000fb20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800071c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800071c8]:csrrs a7, fflags, zero
	-[0x800071cc]:fsw fa2, 96(a5)
Current Store : [0x800071d0] : sw a7, 100(a5) -- Store: [0x8000fb28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800071e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800071e4]:csrrs a7, fflags, zero
	-[0x800071e8]:fsw fa2, 104(a5)
Current Store : [0x800071ec] : sw a7, 108(a5) -- Store: [0x8000fb30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800071fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007200]:csrrs a7, fflags, zero
	-[0x80007204]:fsw fa2, 112(a5)
Current Store : [0x80007208] : sw a7, 116(a5) -- Store: [0x8000fb38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007218]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000721c]:csrrs a7, fflags, zero
	-[0x80007220]:fsw fa2, 120(a5)
Current Store : [0x80007224] : sw a7, 124(a5) -- Store: [0x8000fb40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007234]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007238]:csrrs a7, fflags, zero
	-[0x8000723c]:fsw fa2, 128(a5)
Current Store : [0x80007240] : sw a7, 132(a5) -- Store: [0x8000fb48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007250]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007254]:csrrs a7, fflags, zero
	-[0x80007258]:fsw fa2, 136(a5)
Current Store : [0x8000725c] : sw a7, 140(a5) -- Store: [0x8000fb50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000726c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007270]:csrrs a7, fflags, zero
	-[0x80007274]:fsw fa2, 144(a5)
Current Store : [0x80007278] : sw a7, 148(a5) -- Store: [0x8000fb58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007288]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000728c]:csrrs a7, fflags, zero
	-[0x80007290]:fsw fa2, 152(a5)
Current Store : [0x80007294] : sw a7, 156(a5) -- Store: [0x8000fb60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800072a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800072a8]:csrrs a7, fflags, zero
	-[0x800072ac]:fsw fa2, 160(a5)
Current Store : [0x800072b0] : sw a7, 164(a5) -- Store: [0x8000fb68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800072c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800072c4]:csrrs a7, fflags, zero
	-[0x800072c8]:fsw fa2, 168(a5)
Current Store : [0x800072cc] : sw a7, 172(a5) -- Store: [0x8000fb70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800072dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800072e0]:csrrs a7, fflags, zero
	-[0x800072e4]:fsw fa2, 176(a5)
Current Store : [0x800072e8] : sw a7, 180(a5) -- Store: [0x8000fb78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800072f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800072fc]:csrrs a7, fflags, zero
	-[0x80007300]:fsw fa2, 184(a5)
Current Store : [0x80007304] : sw a7, 188(a5) -- Store: [0x8000fb80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007314]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007318]:csrrs a7, fflags, zero
	-[0x8000731c]:fsw fa2, 192(a5)
Current Store : [0x80007320] : sw a7, 196(a5) -- Store: [0x8000fb88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007330]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007334]:csrrs a7, fflags, zero
	-[0x80007338]:fsw fa2, 200(a5)
Current Store : [0x8000733c] : sw a7, 204(a5) -- Store: [0x8000fb90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000734c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007350]:csrrs a7, fflags, zero
	-[0x80007354]:fsw fa2, 208(a5)
Current Store : [0x80007358] : sw a7, 212(a5) -- Store: [0x8000fb98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007368]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000736c]:csrrs a7, fflags, zero
	-[0x80007370]:fsw fa2, 216(a5)
Current Store : [0x80007374] : sw a7, 220(a5) -- Store: [0x8000fba0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007384]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007388]:csrrs a7, fflags, zero
	-[0x8000738c]:fsw fa2, 224(a5)
Current Store : [0x80007390] : sw a7, 228(a5) -- Store: [0x8000fba8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800073a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800073a4]:csrrs a7, fflags, zero
	-[0x800073a8]:fsw fa2, 232(a5)
Current Store : [0x800073ac] : sw a7, 236(a5) -- Store: [0x8000fbb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800073bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800073c0]:csrrs a7, fflags, zero
	-[0x800073c4]:fsw fa2, 240(a5)
Current Store : [0x800073c8] : sw a7, 244(a5) -- Store: [0x8000fbb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800073d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800073dc]:csrrs a7, fflags, zero
	-[0x800073e0]:fsw fa2, 248(a5)
Current Store : [0x800073e4] : sw a7, 252(a5) -- Store: [0x8000fbc0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800073f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800073f8]:csrrs a7, fflags, zero
	-[0x800073fc]:fsw fa2, 256(a5)
Current Store : [0x80007400] : sw a7, 260(a5) -- Store: [0x8000fbc8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007410]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007414]:csrrs a7, fflags, zero
	-[0x80007418]:fsw fa2, 264(a5)
Current Store : [0x8000741c] : sw a7, 268(a5) -- Store: [0x8000fbd0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000742c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007430]:csrrs a7, fflags, zero
	-[0x80007434]:fsw fa2, 272(a5)
Current Store : [0x80007438] : sw a7, 276(a5) -- Store: [0x8000fbd8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007448]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000744c]:csrrs a7, fflags, zero
	-[0x80007450]:fsw fa2, 280(a5)
Current Store : [0x80007454] : sw a7, 284(a5) -- Store: [0x8000fbe0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007464]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007468]:csrrs a7, fflags, zero
	-[0x8000746c]:fsw fa2, 288(a5)
Current Store : [0x80007470] : sw a7, 292(a5) -- Store: [0x8000fbe8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007480]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007484]:csrrs a7, fflags, zero
	-[0x80007488]:fsw fa2, 296(a5)
Current Store : [0x8000748c] : sw a7, 300(a5) -- Store: [0x8000fbf0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000749c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800074a0]:csrrs a7, fflags, zero
	-[0x800074a4]:fsw fa2, 304(a5)
Current Store : [0x800074a8] : sw a7, 308(a5) -- Store: [0x8000fbf8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800074b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800074bc]:csrrs a7, fflags, zero
	-[0x800074c0]:fsw fa2, 312(a5)
Current Store : [0x800074c4] : sw a7, 316(a5) -- Store: [0x8000fc00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800074d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800074d8]:csrrs a7, fflags, zero
	-[0x800074dc]:fsw fa2, 320(a5)
Current Store : [0x800074e0] : sw a7, 324(a5) -- Store: [0x8000fc08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800074f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800074f4]:csrrs a7, fflags, zero
	-[0x800074f8]:fsw fa2, 328(a5)
Current Store : [0x800074fc] : sw a7, 332(a5) -- Store: [0x8000fc10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000750c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007510]:csrrs a7, fflags, zero
	-[0x80007514]:fsw fa2, 336(a5)
Current Store : [0x80007518] : sw a7, 340(a5) -- Store: [0x8000fc18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007528]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000752c]:csrrs a7, fflags, zero
	-[0x80007530]:fsw fa2, 344(a5)
Current Store : [0x80007534] : sw a7, 348(a5) -- Store: [0x8000fc20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007544]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007548]:csrrs a7, fflags, zero
	-[0x8000754c]:fsw fa2, 352(a5)
Current Store : [0x80007550] : sw a7, 356(a5) -- Store: [0x8000fc28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007560]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007564]:csrrs a7, fflags, zero
	-[0x80007568]:fsw fa2, 360(a5)
Current Store : [0x8000756c] : sw a7, 364(a5) -- Store: [0x8000fc30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000757c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007580]:csrrs a7, fflags, zero
	-[0x80007584]:fsw fa2, 368(a5)
Current Store : [0x80007588] : sw a7, 372(a5) -- Store: [0x8000fc38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007598]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000759c]:csrrs a7, fflags, zero
	-[0x800075a0]:fsw fa2, 376(a5)
Current Store : [0x800075a4] : sw a7, 380(a5) -- Store: [0x8000fc40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800075b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800075b8]:csrrs a7, fflags, zero
	-[0x800075bc]:fsw fa2, 384(a5)
Current Store : [0x800075c0] : sw a7, 388(a5) -- Store: [0x8000fc48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800075d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800075d4]:csrrs a7, fflags, zero
	-[0x800075d8]:fsw fa2, 392(a5)
Current Store : [0x800075dc] : sw a7, 396(a5) -- Store: [0x8000fc50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800075ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800075f0]:csrrs a7, fflags, zero
	-[0x800075f4]:fsw fa2, 400(a5)
Current Store : [0x800075f8] : sw a7, 404(a5) -- Store: [0x8000fc58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007608]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000760c]:csrrs a7, fflags, zero
	-[0x80007610]:fsw fa2, 408(a5)
Current Store : [0x80007614] : sw a7, 412(a5) -- Store: [0x8000fc60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007624]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007628]:csrrs a7, fflags, zero
	-[0x8000762c]:fsw fa2, 416(a5)
Current Store : [0x80007630] : sw a7, 420(a5) -- Store: [0x8000fc68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007640]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007644]:csrrs a7, fflags, zero
	-[0x80007648]:fsw fa2, 424(a5)
Current Store : [0x8000764c] : sw a7, 428(a5) -- Store: [0x8000fc70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000765c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007660]:csrrs a7, fflags, zero
	-[0x80007664]:fsw fa2, 432(a5)
Current Store : [0x80007668] : sw a7, 436(a5) -- Store: [0x8000fc78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007678]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000767c]:csrrs a7, fflags, zero
	-[0x80007680]:fsw fa2, 440(a5)
Current Store : [0x80007684] : sw a7, 444(a5) -- Store: [0x8000fc80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007694]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007698]:csrrs a7, fflags, zero
	-[0x8000769c]:fsw fa2, 448(a5)
Current Store : [0x800076a0] : sw a7, 452(a5) -- Store: [0x8000fc88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800076b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800076b4]:csrrs a7, fflags, zero
	-[0x800076b8]:fsw fa2, 456(a5)
Current Store : [0x800076bc] : sw a7, 460(a5) -- Store: [0x8000fc90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800076cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800076d0]:csrrs a7, fflags, zero
	-[0x800076d4]:fsw fa2, 464(a5)
Current Store : [0x800076d8] : sw a7, 468(a5) -- Store: [0x8000fc98]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800076e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800076ec]:csrrs a7, fflags, zero
	-[0x800076f0]:fsw fa2, 472(a5)
Current Store : [0x800076f4] : sw a7, 476(a5) -- Store: [0x8000fca0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007704]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007708]:csrrs a7, fflags, zero
	-[0x8000770c]:fsw fa2, 480(a5)
Current Store : [0x80007710] : sw a7, 484(a5) -- Store: [0x8000fca8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007720]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007724]:csrrs a7, fflags, zero
	-[0x80007728]:fsw fa2, 488(a5)
Current Store : [0x8000772c] : sw a7, 492(a5) -- Store: [0x8000fcb0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000773c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007740]:csrrs a7, fflags, zero
	-[0x80007744]:fsw fa2, 496(a5)
Current Store : [0x80007748] : sw a7, 500(a5) -- Store: [0x8000fcb8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007758]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000775c]:csrrs a7, fflags, zero
	-[0x80007760]:fsw fa2, 504(a5)
Current Store : [0x80007764] : sw a7, 508(a5) -- Store: [0x8000fcc0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007774]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007778]:csrrs a7, fflags, zero
	-[0x8000777c]:fsw fa2, 512(a5)
Current Store : [0x80007780] : sw a7, 516(a5) -- Store: [0x8000fcc8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007790]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007794]:csrrs a7, fflags, zero
	-[0x80007798]:fsw fa2, 520(a5)
Current Store : [0x8000779c] : sw a7, 524(a5) -- Store: [0x8000fcd0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800077ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800077b0]:csrrs a7, fflags, zero
	-[0x800077b4]:fsw fa2, 528(a5)
Current Store : [0x800077b8] : sw a7, 532(a5) -- Store: [0x8000fcd8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800077c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800077cc]:csrrs a7, fflags, zero
	-[0x800077d0]:fsw fa2, 536(a5)
Current Store : [0x800077d4] : sw a7, 540(a5) -- Store: [0x8000fce0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800077e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800077e8]:csrrs a7, fflags, zero
	-[0x800077ec]:fsw fa2, 544(a5)
Current Store : [0x800077f0] : sw a7, 548(a5) -- Store: [0x8000fce8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007800]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007804]:csrrs a7, fflags, zero
	-[0x80007808]:fsw fa2, 552(a5)
Current Store : [0x8000780c] : sw a7, 556(a5) -- Store: [0x8000fcf0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000781c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007820]:csrrs a7, fflags, zero
	-[0x80007824]:fsw fa2, 560(a5)
Current Store : [0x80007828] : sw a7, 564(a5) -- Store: [0x8000fcf8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007838]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000783c]:csrrs a7, fflags, zero
	-[0x80007840]:fsw fa2, 568(a5)
Current Store : [0x80007844] : sw a7, 572(a5) -- Store: [0x8000fd00]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007854]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007858]:csrrs a7, fflags, zero
	-[0x8000785c]:fsw fa2, 576(a5)
Current Store : [0x80007860] : sw a7, 580(a5) -- Store: [0x8000fd08]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007870]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007874]:csrrs a7, fflags, zero
	-[0x80007878]:fsw fa2, 584(a5)
Current Store : [0x8000787c] : sw a7, 588(a5) -- Store: [0x8000fd10]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000788c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007890]:csrrs a7, fflags, zero
	-[0x80007894]:fsw fa2, 592(a5)
Current Store : [0x80007898] : sw a7, 596(a5) -- Store: [0x8000fd18]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800078a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800078ac]:csrrs a7, fflags, zero
	-[0x800078b0]:fsw fa2, 600(a5)
Current Store : [0x800078b4] : sw a7, 604(a5) -- Store: [0x8000fd20]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800078c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800078c8]:csrrs a7, fflags, zero
	-[0x800078cc]:fsw fa2, 608(a5)
Current Store : [0x800078d0] : sw a7, 612(a5) -- Store: [0x8000fd28]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800078e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800078e4]:csrrs a7, fflags, zero
	-[0x800078e8]:fsw fa2, 616(a5)
Current Store : [0x800078ec] : sw a7, 620(a5) -- Store: [0x8000fd30]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800078fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007900]:csrrs a7, fflags, zero
	-[0x80007904]:fsw fa2, 624(a5)
Current Store : [0x80007908] : sw a7, 628(a5) -- Store: [0x8000fd38]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007918]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000791c]:csrrs a7, fflags, zero
	-[0x80007920]:fsw fa2, 632(a5)
Current Store : [0x80007924] : sw a7, 636(a5) -- Store: [0x8000fd40]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007934]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007938]:csrrs a7, fflags, zero
	-[0x8000793c]:fsw fa2, 640(a5)
Current Store : [0x80007940] : sw a7, 644(a5) -- Store: [0x8000fd48]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007950]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007954]:csrrs a7, fflags, zero
	-[0x80007958]:fsw fa2, 648(a5)
Current Store : [0x8000795c] : sw a7, 652(a5) -- Store: [0x8000fd50]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000796c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007970]:csrrs a7, fflags, zero
	-[0x80007974]:fsw fa2, 656(a5)
Current Store : [0x80007978] : sw a7, 660(a5) -- Store: [0x8000fd58]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007988]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000798c]:csrrs a7, fflags, zero
	-[0x80007990]:fsw fa2, 664(a5)
Current Store : [0x80007994] : sw a7, 668(a5) -- Store: [0x8000fd60]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800079a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800079a8]:csrrs a7, fflags, zero
	-[0x800079ac]:fsw fa2, 672(a5)
Current Store : [0x800079b0] : sw a7, 676(a5) -- Store: [0x8000fd68]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800079c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800079c4]:csrrs a7, fflags, zero
	-[0x800079c8]:fsw fa2, 680(a5)
Current Store : [0x800079cc] : sw a7, 684(a5) -- Store: [0x8000fd70]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800079dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800079e0]:csrrs a7, fflags, zero
	-[0x800079e4]:fsw fa2, 688(a5)
Current Store : [0x800079e8] : sw a7, 692(a5) -- Store: [0x8000fd78]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800079f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800079fc]:csrrs a7, fflags, zero
	-[0x80007a00]:fsw fa2, 696(a5)
Current Store : [0x80007a04] : sw a7, 700(a5) -- Store: [0x8000fd80]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007a14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007a18]:csrrs a7, fflags, zero
	-[0x80007a1c]:fsw fa2, 704(a5)
Current Store : [0x80007a20] : sw a7, 708(a5) -- Store: [0x8000fd88]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007a30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007a34]:csrrs a7, fflags, zero
	-[0x80007a38]:fsw fa2, 712(a5)
Current Store : [0x80007a3c] : sw a7, 716(a5) -- Store: [0x8000fd90]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007a4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007a50]:csrrs a7, fflags, zero
	-[0x80007a54]:fsw fa2, 720(a5)
Current Store : [0x80007a58] : sw a7, 724(a5) -- Store: [0x8000fd98]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007a68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007a6c]:csrrs a7, fflags, zero
	-[0x80007a70]:fsw fa2, 728(a5)
Current Store : [0x80007a74] : sw a7, 732(a5) -- Store: [0x8000fda0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007a84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007a88]:csrrs a7, fflags, zero
	-[0x80007a8c]:fsw fa2, 736(a5)
Current Store : [0x80007a90] : sw a7, 740(a5) -- Store: [0x8000fda8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007aa0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007aa4]:csrrs a7, fflags, zero
	-[0x80007aa8]:fsw fa2, 744(a5)
Current Store : [0x80007aac] : sw a7, 748(a5) -- Store: [0x8000fdb0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007abc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007ac0]:csrrs a7, fflags, zero
	-[0x80007ac4]:fsw fa2, 752(a5)
Current Store : [0x80007ac8] : sw a7, 756(a5) -- Store: [0x8000fdb8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007ad8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007adc]:csrrs a7, fflags, zero
	-[0x80007ae0]:fsw fa2, 760(a5)
Current Store : [0x80007ae4] : sw a7, 764(a5) -- Store: [0x8000fdc0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007af4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007af8]:csrrs a7, fflags, zero
	-[0x80007afc]:fsw fa2, 768(a5)
Current Store : [0x80007b00] : sw a7, 772(a5) -- Store: [0x8000fdc8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007b14]:csrrs a7, fflags, zero
	-[0x80007b18]:fsw fa2, 776(a5)
Current Store : [0x80007b1c] : sw a7, 780(a5) -- Store: [0x8000fdd0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007b30]:csrrs a7, fflags, zero
	-[0x80007b34]:fsw fa2, 784(a5)
Current Store : [0x80007b38] : sw a7, 788(a5) -- Store: [0x8000fdd8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007b4c]:csrrs a7, fflags, zero
	-[0x80007b50]:fsw fa2, 792(a5)
Current Store : [0x80007b54] : sw a7, 796(a5) -- Store: [0x8000fde0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007b68]:csrrs a7, fflags, zero
	-[0x80007b6c]:fsw fa2, 800(a5)
Current Store : [0x80007b70] : sw a7, 804(a5) -- Store: [0x8000fde8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007b84]:csrrs a7, fflags, zero
	-[0x80007b88]:fsw fa2, 808(a5)
Current Store : [0x80007b8c] : sw a7, 812(a5) -- Store: [0x8000fdf0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007b9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007ba0]:csrrs a7, fflags, zero
	-[0x80007ba4]:fsw fa2, 816(a5)
Current Store : [0x80007ba8] : sw a7, 820(a5) -- Store: [0x8000fdf8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007bb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007bbc]:csrrs a7, fflags, zero
	-[0x80007bc0]:fsw fa2, 824(a5)
Current Store : [0x80007bc4] : sw a7, 828(a5) -- Store: [0x8000fe00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007bd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007bd8]:csrrs a7, fflags, zero
	-[0x80007bdc]:fsw fa2, 832(a5)
Current Store : [0x80007be0] : sw a7, 836(a5) -- Store: [0x8000fe08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007bf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007bf4]:csrrs a7, fflags, zero
	-[0x80007bf8]:fsw fa2, 840(a5)
Current Store : [0x80007bfc] : sw a7, 844(a5) -- Store: [0x8000fe10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c10]:csrrs a7, fflags, zero
	-[0x80007c14]:fsw fa2, 848(a5)
Current Store : [0x80007c18] : sw a7, 852(a5) -- Store: [0x8000fe18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c2c]:csrrs a7, fflags, zero
	-[0x80007c30]:fsw fa2, 856(a5)
Current Store : [0x80007c34] : sw a7, 860(a5) -- Store: [0x8000fe20]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c48]:csrrs a7, fflags, zero
	-[0x80007c4c]:fsw fa2, 864(a5)
Current Store : [0x80007c50] : sw a7, 868(a5) -- Store: [0x8000fe28]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c64]:csrrs a7, fflags, zero
	-[0x80007c68]:fsw fa2, 872(a5)
Current Store : [0x80007c6c] : sw a7, 876(a5) -- Store: [0x8000fe30]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c80]:csrrs a7, fflags, zero
	-[0x80007c84]:fsw fa2, 880(a5)
Current Store : [0x80007c88] : sw a7, 884(a5) -- Store: [0x8000fe38]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007c98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007c9c]:csrrs a7, fflags, zero
	-[0x80007ca0]:fsw fa2, 888(a5)
Current Store : [0x80007ca4] : sw a7, 892(a5) -- Store: [0x8000fe40]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007cb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007cb8]:csrrs a7, fflags, zero
	-[0x80007cbc]:fsw fa2, 896(a5)
Current Store : [0x80007cc0] : sw a7, 900(a5) -- Store: [0x8000fe48]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007cd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007cd4]:csrrs a7, fflags, zero
	-[0x80007cd8]:fsw fa2, 904(a5)
Current Store : [0x80007cdc] : sw a7, 908(a5) -- Store: [0x8000fe50]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007cec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007cf0]:csrrs a7, fflags, zero
	-[0x80007cf4]:fsw fa2, 912(a5)
Current Store : [0x80007cf8] : sw a7, 916(a5) -- Store: [0x8000fe58]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d0c]:csrrs a7, fflags, zero
	-[0x80007d10]:fsw fa2, 920(a5)
Current Store : [0x80007d14] : sw a7, 924(a5) -- Store: [0x8000fe60]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d28]:csrrs a7, fflags, zero
	-[0x80007d2c]:fsw fa2, 928(a5)
Current Store : [0x80007d30] : sw a7, 932(a5) -- Store: [0x8000fe68]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d44]:csrrs a7, fflags, zero
	-[0x80007d48]:fsw fa2, 936(a5)
Current Store : [0x80007d4c] : sw a7, 940(a5) -- Store: [0x8000fe70]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d60]:csrrs a7, fflags, zero
	-[0x80007d64]:fsw fa2, 944(a5)
Current Store : [0x80007d68] : sw a7, 948(a5) -- Store: [0x8000fe78]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d7c]:csrrs a7, fflags, zero
	-[0x80007d80]:fsw fa2, 952(a5)
Current Store : [0x80007d84] : sw a7, 956(a5) -- Store: [0x8000fe80]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007d94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007d98]:csrrs a7, fflags, zero
	-[0x80007d9c]:fsw fa2, 960(a5)
Current Store : [0x80007da0] : sw a7, 964(a5) -- Store: [0x8000fe88]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007db0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007db4]:csrrs a7, fflags, zero
	-[0x80007db8]:fsw fa2, 968(a5)
Current Store : [0x80007dbc] : sw a7, 972(a5) -- Store: [0x8000fe90]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007dcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007dd0]:csrrs a7, fflags, zero
	-[0x80007dd4]:fsw fa2, 976(a5)
Current Store : [0x80007dd8] : sw a7, 980(a5) -- Store: [0x8000fe98]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007de8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007dec]:csrrs a7, fflags, zero
	-[0x80007df0]:fsw fa2, 984(a5)
Current Store : [0x80007df4] : sw a7, 988(a5) -- Store: [0x8000fea0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e08]:csrrs a7, fflags, zero
	-[0x80007e0c]:fsw fa2, 992(a5)
Current Store : [0x80007e10] : sw a7, 996(a5) -- Store: [0x8000fea8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e24]:csrrs a7, fflags, zero
	-[0x80007e28]:fsw fa2, 1000(a5)
Current Store : [0x80007e2c] : sw a7, 1004(a5) -- Store: [0x8000feb0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e40]:csrrs a7, fflags, zero
	-[0x80007e44]:fsw fa2, 1008(a5)
Current Store : [0x80007e48] : sw a7, 1012(a5) -- Store: [0x8000feb8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e5c]:csrrs a7, fflags, zero
	-[0x80007e60]:fsw fa2, 1016(a5)
Current Store : [0x80007e64] : sw a7, 1020(a5) -- Store: [0x8000fec0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e78]:csrrs a7, fflags, zero
	-[0x80007e7c]:fsw fa2, 1024(a5)
Current Store : [0x80007e80] : sw a7, 1028(a5) -- Store: [0x8000fec8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007e90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007e94]:csrrs a7, fflags, zero
	-[0x80007e98]:fsw fa2, 1032(a5)
Current Store : [0x80007e9c] : sw a7, 1036(a5) -- Store: [0x8000fed0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007eac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007eb0]:csrrs a7, fflags, zero
	-[0x80007eb4]:fsw fa2, 1040(a5)
Current Store : [0x80007eb8] : sw a7, 1044(a5) -- Store: [0x8000fed8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007ec8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007ecc]:csrrs a7, fflags, zero
	-[0x80007ed0]:fsw fa2, 1048(a5)
Current Store : [0x80007ed4] : sw a7, 1052(a5) -- Store: [0x8000fee0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007ee4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007ee8]:csrrs a7, fflags, zero
	-[0x80007eec]:fsw fa2, 1056(a5)
Current Store : [0x80007ef0] : sw a7, 1060(a5) -- Store: [0x8000fee8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f04]:csrrs a7, fflags, zero
	-[0x80007f08]:fsw fa2, 1064(a5)
Current Store : [0x80007f0c] : sw a7, 1068(a5) -- Store: [0x8000fef0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f20]:csrrs a7, fflags, zero
	-[0x80007f24]:fsw fa2, 1072(a5)
Current Store : [0x80007f28] : sw a7, 1076(a5) -- Store: [0x8000fef8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f3c]:csrrs a7, fflags, zero
	-[0x80007f40]:fsw fa2, 1080(a5)
Current Store : [0x80007f44] : sw a7, 1084(a5) -- Store: [0x8000ff00]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f58]:csrrs a7, fflags, zero
	-[0x80007f5c]:fsw fa2, 1088(a5)
Current Store : [0x80007f60] : sw a7, 1092(a5) -- Store: [0x8000ff08]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f74]:csrrs a7, fflags, zero
	-[0x80007f78]:fsw fa2, 1096(a5)
Current Store : [0x80007f7c] : sw a7, 1100(a5) -- Store: [0x8000ff10]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007f8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007f90]:csrrs a7, fflags, zero
	-[0x80007f94]:fsw fa2, 1104(a5)
Current Store : [0x80007f98] : sw a7, 1108(a5) -- Store: [0x8000ff18]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007fa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007fac]:csrrs a7, fflags, zero
	-[0x80007fb0]:fsw fa2, 1112(a5)
Current Store : [0x80007fb4] : sw a7, 1116(a5) -- Store: [0x8000ff20]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007fc4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007fc8]:csrrs a7, fflags, zero
	-[0x80007fcc]:fsw fa2, 1120(a5)
Current Store : [0x80007fd0] : sw a7, 1124(a5) -- Store: [0x8000ff28]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007fe0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80007fe4]:csrrs a7, fflags, zero
	-[0x80007fe8]:fsw fa2, 1128(a5)
Current Store : [0x80007fec] : sw a7, 1132(a5) -- Store: [0x8000ff30]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80007ffc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008000]:csrrs a7, fflags, zero
	-[0x80008004]:fsw fa2, 1136(a5)
Current Store : [0x80008008] : sw a7, 1140(a5) -- Store: [0x8000ff38]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008018]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000801c]:csrrs a7, fflags, zero
	-[0x80008020]:fsw fa2, 1144(a5)
Current Store : [0x80008024] : sw a7, 1148(a5) -- Store: [0x8000ff40]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008034]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008038]:csrrs a7, fflags, zero
	-[0x8000803c]:fsw fa2, 1152(a5)
Current Store : [0x80008040] : sw a7, 1156(a5) -- Store: [0x8000ff48]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008050]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008054]:csrrs a7, fflags, zero
	-[0x80008058]:fsw fa2, 1160(a5)
Current Store : [0x8000805c] : sw a7, 1164(a5) -- Store: [0x8000ff50]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000806c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008070]:csrrs a7, fflags, zero
	-[0x80008074]:fsw fa2, 1168(a5)
Current Store : [0x80008078] : sw a7, 1172(a5) -- Store: [0x8000ff58]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008088]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000808c]:csrrs a7, fflags, zero
	-[0x80008090]:fsw fa2, 1176(a5)
Current Store : [0x80008094] : sw a7, 1180(a5) -- Store: [0x8000ff60]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800080a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800080a8]:csrrs a7, fflags, zero
	-[0x800080ac]:fsw fa2, 1184(a5)
Current Store : [0x800080b0] : sw a7, 1188(a5) -- Store: [0x8000ff68]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800080c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800080c4]:csrrs a7, fflags, zero
	-[0x800080c8]:fsw fa2, 1192(a5)
Current Store : [0x800080cc] : sw a7, 1196(a5) -- Store: [0x8000ff70]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800080dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800080e0]:csrrs a7, fflags, zero
	-[0x800080e4]:fsw fa2, 1200(a5)
Current Store : [0x800080e8] : sw a7, 1204(a5) -- Store: [0x8000ff78]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800080f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800080fc]:csrrs a7, fflags, zero
	-[0x80008100]:fsw fa2, 1208(a5)
Current Store : [0x80008104] : sw a7, 1212(a5) -- Store: [0x8000ff80]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008114]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008118]:csrrs a7, fflags, zero
	-[0x8000811c]:fsw fa2, 1216(a5)
Current Store : [0x80008120] : sw a7, 1220(a5) -- Store: [0x8000ff88]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008130]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008134]:csrrs a7, fflags, zero
	-[0x80008138]:fsw fa2, 1224(a5)
Current Store : [0x8000813c] : sw a7, 1228(a5) -- Store: [0x8000ff90]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000814c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008150]:csrrs a7, fflags, zero
	-[0x80008154]:fsw fa2, 1232(a5)
Current Store : [0x80008158] : sw a7, 1236(a5) -- Store: [0x8000ff98]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008168]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000816c]:csrrs a7, fflags, zero
	-[0x80008170]:fsw fa2, 1240(a5)
Current Store : [0x80008174] : sw a7, 1244(a5) -- Store: [0x8000ffa0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008184]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008188]:csrrs a7, fflags, zero
	-[0x8000818c]:fsw fa2, 1248(a5)
Current Store : [0x80008190] : sw a7, 1252(a5) -- Store: [0x8000ffa8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800081a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800081a4]:csrrs a7, fflags, zero
	-[0x800081a8]:fsw fa2, 1256(a5)
Current Store : [0x800081ac] : sw a7, 1260(a5) -- Store: [0x8000ffb0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800081bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800081c0]:csrrs a7, fflags, zero
	-[0x800081c4]:fsw fa2, 1264(a5)
Current Store : [0x800081c8] : sw a7, 1268(a5) -- Store: [0x8000ffb8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800081d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800081dc]:csrrs a7, fflags, zero
	-[0x800081e0]:fsw fa2, 1272(a5)
Current Store : [0x800081e4] : sw a7, 1276(a5) -- Store: [0x8000ffc0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800081f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800081f8]:csrrs a7, fflags, zero
	-[0x800081fc]:fsw fa2, 1280(a5)
Current Store : [0x80008200] : sw a7, 1284(a5) -- Store: [0x8000ffc8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008210]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008214]:csrrs a7, fflags, zero
	-[0x80008218]:fsw fa2, 1288(a5)
Current Store : [0x8000821c] : sw a7, 1292(a5) -- Store: [0x8000ffd0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000822c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008230]:csrrs a7, fflags, zero
	-[0x80008234]:fsw fa2, 1296(a5)
Current Store : [0x80008238] : sw a7, 1300(a5) -- Store: [0x8000ffd8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008248]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000824c]:csrrs a7, fflags, zero
	-[0x80008250]:fsw fa2, 1304(a5)
Current Store : [0x80008254] : sw a7, 1308(a5) -- Store: [0x8000ffe0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008264]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008268]:csrrs a7, fflags, zero
	-[0x8000826c]:fsw fa2, 1312(a5)
Current Store : [0x80008270] : sw a7, 1316(a5) -- Store: [0x8000ffe8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008280]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008284]:csrrs a7, fflags, zero
	-[0x80008288]:fsw fa2, 1320(a5)
Current Store : [0x8000828c] : sw a7, 1324(a5) -- Store: [0x8000fff0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000829c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800082a0]:csrrs a7, fflags, zero
	-[0x800082a4]:fsw fa2, 1328(a5)
Current Store : [0x800082a8] : sw a7, 1332(a5) -- Store: [0x8000fff8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800082b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800082bc]:csrrs a7, fflags, zero
	-[0x800082c0]:fsw fa2, 1336(a5)
Current Store : [0x800082c4] : sw a7, 1340(a5) -- Store: [0x80010000]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800082d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800082d8]:csrrs a7, fflags, zero
	-[0x800082dc]:fsw fa2, 1344(a5)
Current Store : [0x800082e0] : sw a7, 1348(a5) -- Store: [0x80010008]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800082f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800082f4]:csrrs a7, fflags, zero
	-[0x800082f8]:fsw fa2, 1352(a5)
Current Store : [0x800082fc] : sw a7, 1356(a5) -- Store: [0x80010010]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000830c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008310]:csrrs a7, fflags, zero
	-[0x80008314]:fsw fa2, 1360(a5)
Current Store : [0x80008318] : sw a7, 1364(a5) -- Store: [0x80010018]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008328]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000832c]:csrrs a7, fflags, zero
	-[0x80008330]:fsw fa2, 1368(a5)
Current Store : [0x80008334] : sw a7, 1372(a5) -- Store: [0x80010020]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008344]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008348]:csrrs a7, fflags, zero
	-[0x8000834c]:fsw fa2, 1376(a5)
Current Store : [0x80008350] : sw a7, 1380(a5) -- Store: [0x80010028]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008360]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008364]:csrrs a7, fflags, zero
	-[0x80008368]:fsw fa2, 1384(a5)
Current Store : [0x8000836c] : sw a7, 1388(a5) -- Store: [0x80010030]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000837c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008380]:csrrs a7, fflags, zero
	-[0x80008384]:fsw fa2, 1392(a5)
Current Store : [0x80008388] : sw a7, 1396(a5) -- Store: [0x80010038]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008398]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000839c]:csrrs a7, fflags, zero
	-[0x800083a0]:fsw fa2, 1400(a5)
Current Store : [0x800083a4] : sw a7, 1404(a5) -- Store: [0x80010040]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800083b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800083b8]:csrrs a7, fflags, zero
	-[0x800083bc]:fsw fa2, 1408(a5)
Current Store : [0x800083c0] : sw a7, 1412(a5) -- Store: [0x80010048]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800083d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800083d4]:csrrs a7, fflags, zero
	-[0x800083d8]:fsw fa2, 1416(a5)
Current Store : [0x800083dc] : sw a7, 1420(a5) -- Store: [0x80010050]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800083ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800083f0]:csrrs a7, fflags, zero
	-[0x800083f4]:fsw fa2, 1424(a5)
Current Store : [0x800083f8] : sw a7, 1428(a5) -- Store: [0x80010058]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008408]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000840c]:csrrs a7, fflags, zero
	-[0x80008410]:fsw fa2, 1432(a5)
Current Store : [0x80008414] : sw a7, 1436(a5) -- Store: [0x80010060]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008424]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008428]:csrrs a7, fflags, zero
	-[0x8000842c]:fsw fa2, 1440(a5)
Current Store : [0x80008430] : sw a7, 1444(a5) -- Store: [0x80010068]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008440]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008444]:csrrs a7, fflags, zero
	-[0x80008448]:fsw fa2, 1448(a5)
Current Store : [0x8000844c] : sw a7, 1452(a5) -- Store: [0x80010070]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000845c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008460]:csrrs a7, fflags, zero
	-[0x80008464]:fsw fa2, 1456(a5)
Current Store : [0x80008468] : sw a7, 1460(a5) -- Store: [0x80010078]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008478]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000847c]:csrrs a7, fflags, zero
	-[0x80008480]:fsw fa2, 1464(a5)
Current Store : [0x80008484] : sw a7, 1468(a5) -- Store: [0x80010080]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008494]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008498]:csrrs a7, fflags, zero
	-[0x8000849c]:fsw fa2, 1472(a5)
Current Store : [0x800084a0] : sw a7, 1476(a5) -- Store: [0x80010088]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800084b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800084b4]:csrrs a7, fflags, zero
	-[0x800084b8]:fsw fa2, 1480(a5)
Current Store : [0x800084bc] : sw a7, 1484(a5) -- Store: [0x80010090]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800084cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800084d0]:csrrs a7, fflags, zero
	-[0x800084d4]:fsw fa2, 1488(a5)
Current Store : [0x800084d8] : sw a7, 1492(a5) -- Store: [0x80010098]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800084e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800084ec]:csrrs a7, fflags, zero
	-[0x800084f0]:fsw fa2, 1496(a5)
Current Store : [0x800084f4] : sw a7, 1500(a5) -- Store: [0x800100a0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008504]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008508]:csrrs a7, fflags, zero
	-[0x8000850c]:fsw fa2, 1504(a5)
Current Store : [0x80008510] : sw a7, 1508(a5) -- Store: [0x800100a8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008520]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008524]:csrrs a7, fflags, zero
	-[0x80008528]:fsw fa2, 1512(a5)
Current Store : [0x8000852c] : sw a7, 1516(a5) -- Store: [0x800100b0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000853c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008540]:csrrs a7, fflags, zero
	-[0x80008544]:fsw fa2, 1520(a5)
Current Store : [0x80008548] : sw a7, 1524(a5) -- Store: [0x800100b8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008558]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000855c]:csrrs a7, fflags, zero
	-[0x80008560]:fsw fa2, 1528(a5)
Current Store : [0x80008564] : sw a7, 1532(a5) -- Store: [0x800100c0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008574]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008578]:csrrs a7, fflags, zero
	-[0x8000857c]:fsw fa2, 1536(a5)
Current Store : [0x80008580] : sw a7, 1540(a5) -- Store: [0x800100c8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008590]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008594]:csrrs a7, fflags, zero
	-[0x80008598]:fsw fa2, 1544(a5)
Current Store : [0x8000859c] : sw a7, 1548(a5) -- Store: [0x800100d0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800085ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800085b0]:csrrs a7, fflags, zero
	-[0x800085b4]:fsw fa2, 1552(a5)
Current Store : [0x800085b8] : sw a7, 1556(a5) -- Store: [0x800100d8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800085c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800085cc]:csrrs a7, fflags, zero
	-[0x800085d0]:fsw fa2, 1560(a5)
Current Store : [0x800085d4] : sw a7, 1564(a5) -- Store: [0x800100e0]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800085e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800085e8]:csrrs a7, fflags, zero
	-[0x800085ec]:fsw fa2, 1568(a5)
Current Store : [0x800085f0] : sw a7, 1572(a5) -- Store: [0x800100e8]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008600]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008604]:csrrs a7, fflags, zero
	-[0x80008608]:fsw fa2, 1576(a5)
Current Store : [0x8000860c] : sw a7, 1580(a5) -- Store: [0x800100f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000861c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008620]:csrrs a7, fflags, zero
	-[0x80008624]:fsw fa2, 1584(a5)
Current Store : [0x80008628] : sw a7, 1588(a5) -- Store: [0x800100f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008638]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000863c]:csrrs a7, fflags, zero
	-[0x80008640]:fsw fa2, 1592(a5)
Current Store : [0x80008644] : sw a7, 1596(a5) -- Store: [0x80010100]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008654]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008658]:csrrs a7, fflags, zero
	-[0x8000865c]:fsw fa2, 1600(a5)
Current Store : [0x80008660] : sw a7, 1604(a5) -- Store: [0x80010108]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008670]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008674]:csrrs a7, fflags, zero
	-[0x80008678]:fsw fa2, 1608(a5)
Current Store : [0x8000867c] : sw a7, 1612(a5) -- Store: [0x80010110]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000868c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008690]:csrrs a7, fflags, zero
	-[0x80008694]:fsw fa2, 1616(a5)
Current Store : [0x80008698] : sw a7, 1620(a5) -- Store: [0x80010118]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800086a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800086ac]:csrrs a7, fflags, zero
	-[0x800086b0]:fsw fa2, 1624(a5)
Current Store : [0x800086b4] : sw a7, 1628(a5) -- Store: [0x80010120]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800086c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800086c8]:csrrs a7, fflags, zero
	-[0x800086cc]:fsw fa2, 1632(a5)
Current Store : [0x800086d0] : sw a7, 1636(a5) -- Store: [0x80010128]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800086e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800086e4]:csrrs a7, fflags, zero
	-[0x800086e8]:fsw fa2, 1640(a5)
Current Store : [0x800086ec] : sw a7, 1644(a5) -- Store: [0x80010130]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800086fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008700]:csrrs a7, fflags, zero
	-[0x80008704]:fsw fa2, 1648(a5)
Current Store : [0x80008708] : sw a7, 1652(a5) -- Store: [0x80010138]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008718]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000871c]:csrrs a7, fflags, zero
	-[0x80008720]:fsw fa2, 1656(a5)
Current Store : [0x80008724] : sw a7, 1660(a5) -- Store: [0x80010140]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008734]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008738]:csrrs a7, fflags, zero
	-[0x8000873c]:fsw fa2, 1664(a5)
Current Store : [0x80008740] : sw a7, 1668(a5) -- Store: [0x80010148]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008750]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008754]:csrrs a7, fflags, zero
	-[0x80008758]:fsw fa2, 1672(a5)
Current Store : [0x8000875c] : sw a7, 1676(a5) -- Store: [0x80010150]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000876c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008770]:csrrs a7, fflags, zero
	-[0x80008774]:fsw fa2, 1680(a5)
Current Store : [0x80008778] : sw a7, 1684(a5) -- Store: [0x80010158]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008788]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000878c]:csrrs a7, fflags, zero
	-[0x80008790]:fsw fa2, 1688(a5)
Current Store : [0x80008794] : sw a7, 1692(a5) -- Store: [0x80010160]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800087a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800087a8]:csrrs a7, fflags, zero
	-[0x800087ac]:fsw fa2, 1696(a5)
Current Store : [0x800087b0] : sw a7, 1700(a5) -- Store: [0x80010168]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800087c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800087c4]:csrrs a7, fflags, zero
	-[0x800087c8]:fsw fa2, 1704(a5)
Current Store : [0x800087cc] : sw a7, 1708(a5) -- Store: [0x80010170]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800087dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800087e0]:csrrs a7, fflags, zero
	-[0x800087e4]:fsw fa2, 1712(a5)
Current Store : [0x800087e8] : sw a7, 1716(a5) -- Store: [0x80010178]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800087f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800087fc]:csrrs a7, fflags, zero
	-[0x80008800]:fsw fa2, 1720(a5)
Current Store : [0x80008804] : sw a7, 1724(a5) -- Store: [0x80010180]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008814]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008818]:csrrs a7, fflags, zero
	-[0x8000881c]:fsw fa2, 1728(a5)
Current Store : [0x80008820] : sw a7, 1732(a5) -- Store: [0x80010188]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008830]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008834]:csrrs a7, fflags, zero
	-[0x80008838]:fsw fa2, 1736(a5)
Current Store : [0x8000883c] : sw a7, 1740(a5) -- Store: [0x80010190]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000884c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008850]:csrrs a7, fflags, zero
	-[0x80008854]:fsw fa2, 1744(a5)
Current Store : [0x80008858] : sw a7, 1748(a5) -- Store: [0x80010198]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008868]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000886c]:csrrs a7, fflags, zero
	-[0x80008870]:fsw fa2, 1752(a5)
Current Store : [0x80008874] : sw a7, 1756(a5) -- Store: [0x800101a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008884]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008888]:csrrs a7, fflags, zero
	-[0x8000888c]:fsw fa2, 1760(a5)
Current Store : [0x80008890] : sw a7, 1764(a5) -- Store: [0x800101a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800088a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800088a4]:csrrs a7, fflags, zero
	-[0x800088a8]:fsw fa2, 1768(a5)
Current Store : [0x800088ac] : sw a7, 1772(a5) -- Store: [0x800101b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800088bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800088c0]:csrrs a7, fflags, zero
	-[0x800088c4]:fsw fa2, 1776(a5)
Current Store : [0x800088c8] : sw a7, 1780(a5) -- Store: [0x800101b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800088d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800088dc]:csrrs a7, fflags, zero
	-[0x800088e0]:fsw fa2, 1784(a5)
Current Store : [0x800088e4] : sw a7, 1788(a5) -- Store: [0x800101c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800088f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800088f8]:csrrs a7, fflags, zero
	-[0x800088fc]:fsw fa2, 1792(a5)
Current Store : [0x80008900] : sw a7, 1796(a5) -- Store: [0x800101c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008910]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008914]:csrrs a7, fflags, zero
	-[0x80008918]:fsw fa2, 1800(a5)
Current Store : [0x8000891c] : sw a7, 1804(a5) -- Store: [0x800101d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000892c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008930]:csrrs a7, fflags, zero
	-[0x80008934]:fsw fa2, 1808(a5)
Current Store : [0x80008938] : sw a7, 1812(a5) -- Store: [0x800101d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008948]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000894c]:csrrs a7, fflags, zero
	-[0x80008950]:fsw fa2, 1816(a5)
Current Store : [0x80008954] : sw a7, 1820(a5) -- Store: [0x800101e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008964]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008968]:csrrs a7, fflags, zero
	-[0x8000896c]:fsw fa2, 1824(a5)
Current Store : [0x80008970] : sw a7, 1828(a5) -- Store: [0x800101e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008980]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008984]:csrrs a7, fflags, zero
	-[0x80008988]:fsw fa2, 1832(a5)
Current Store : [0x8000898c] : sw a7, 1836(a5) -- Store: [0x800101f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000899c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800089a0]:csrrs a7, fflags, zero
	-[0x800089a4]:fsw fa2, 1840(a5)
Current Store : [0x800089a8] : sw a7, 1844(a5) -- Store: [0x800101f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800089b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800089bc]:csrrs a7, fflags, zero
	-[0x800089c0]:fsw fa2, 1848(a5)
Current Store : [0x800089c4] : sw a7, 1852(a5) -- Store: [0x80010200]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800089d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800089d8]:csrrs a7, fflags, zero
	-[0x800089dc]:fsw fa2, 1856(a5)
Current Store : [0x800089e0] : sw a7, 1860(a5) -- Store: [0x80010208]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800089f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800089f4]:csrrs a7, fflags, zero
	-[0x800089f8]:fsw fa2, 1864(a5)
Current Store : [0x800089fc] : sw a7, 1868(a5) -- Store: [0x80010210]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a10]:csrrs a7, fflags, zero
	-[0x80008a14]:fsw fa2, 1872(a5)
Current Store : [0x80008a18] : sw a7, 1876(a5) -- Store: [0x80010218]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a2c]:csrrs a7, fflags, zero
	-[0x80008a30]:fsw fa2, 1880(a5)
Current Store : [0x80008a34] : sw a7, 1884(a5) -- Store: [0x80010220]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a48]:csrrs a7, fflags, zero
	-[0x80008a4c]:fsw fa2, 1888(a5)
Current Store : [0x80008a50] : sw a7, 1892(a5) -- Store: [0x80010228]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a64]:csrrs a7, fflags, zero
	-[0x80008a68]:fsw fa2, 1896(a5)
Current Store : [0x80008a6c] : sw a7, 1900(a5) -- Store: [0x80010230]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a80]:csrrs a7, fflags, zero
	-[0x80008a84]:fsw fa2, 1904(a5)
Current Store : [0x80008a88] : sw a7, 1908(a5) -- Store: [0x80010238]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008a98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008a9c]:csrrs a7, fflags, zero
	-[0x80008aa0]:fsw fa2, 1912(a5)
Current Store : [0x80008aa4] : sw a7, 1916(a5) -- Store: [0x80010240]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008ab4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008ab8]:csrrs a7, fflags, zero
	-[0x80008abc]:fsw fa2, 1920(a5)
Current Store : [0x80008ac0] : sw a7, 1924(a5) -- Store: [0x80010248]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008ad0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008ad4]:csrrs a7, fflags, zero
	-[0x80008ad8]:fsw fa2, 1928(a5)
Current Store : [0x80008adc] : sw a7, 1932(a5) -- Store: [0x80010250]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008aec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008af0]:csrrs a7, fflags, zero
	-[0x80008af4]:fsw fa2, 1936(a5)
Current Store : [0x80008af8] : sw a7, 1940(a5) -- Store: [0x80010258]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b0c]:csrrs a7, fflags, zero
	-[0x80008b10]:fsw fa2, 1944(a5)
Current Store : [0x80008b14] : sw a7, 1948(a5) -- Store: [0x80010260]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b28]:csrrs a7, fflags, zero
	-[0x80008b2c]:fsw fa2, 1952(a5)
Current Store : [0x80008b30] : sw a7, 1956(a5) -- Store: [0x80010268]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b44]:csrrs a7, fflags, zero
	-[0x80008b48]:fsw fa2, 1960(a5)
Current Store : [0x80008b4c] : sw a7, 1964(a5) -- Store: [0x80010270]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b60]:csrrs a7, fflags, zero
	-[0x80008b64]:fsw fa2, 1968(a5)
Current Store : [0x80008b68] : sw a7, 1972(a5) -- Store: [0x80010278]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b7c]:csrrs a7, fflags, zero
	-[0x80008b80]:fsw fa2, 1976(a5)
Current Store : [0x80008b84] : sw a7, 1980(a5) -- Store: [0x80010280]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008b94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008b98]:csrrs a7, fflags, zero
	-[0x80008b9c]:fsw fa2, 1984(a5)
Current Store : [0x80008ba0] : sw a7, 1988(a5) -- Store: [0x80010288]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008bb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008bb4]:csrrs a7, fflags, zero
	-[0x80008bb8]:fsw fa2, 1992(a5)
Current Store : [0x80008bbc] : sw a7, 1996(a5) -- Store: [0x80010290]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008bcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008bd0]:csrrs a7, fflags, zero
	-[0x80008bd4]:fsw fa2, 2000(a5)
Current Store : [0x80008bd8] : sw a7, 2004(a5) -- Store: [0x80010298]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008be8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008bec]:csrrs a7, fflags, zero
	-[0x80008bf0]:fsw fa2, 2008(a5)
Current Store : [0x80008bf4] : sw a7, 2012(a5) -- Store: [0x800102a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008c08]:csrrs a7, fflags, zero
	-[0x80008c0c]:fsw fa2, 2016(a5)
Current Store : [0x80008c10] : sw a7, 2020(a5) -- Store: [0x800102a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008c24]:csrrs a7, fflags, zero
	-[0x80008c28]:fsw fa2, 2024(a5)
Current Store : [0x80008c2c] : sw a7, 2028(a5) -- Store: [0x800102b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008c4c]:csrrs a7, fflags, zero
	-[0x80008c50]:fsw fa2, 0(a5)
Current Store : [0x80008c54] : sw a7, 4(a5) -- Store: [0x800102b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008c68]:csrrs a7, fflags, zero
	-[0x80008c6c]:fsw fa2, 8(a5)
Current Store : [0x80008c70] : sw a7, 12(a5) -- Store: [0x800102c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008c84]:csrrs a7, fflags, zero
	-[0x80008c88]:fsw fa2, 16(a5)
Current Store : [0x80008c8c] : sw a7, 20(a5) -- Store: [0x800102c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008c9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008ca0]:csrrs a7, fflags, zero
	-[0x80008ca4]:fsw fa2, 24(a5)
Current Store : [0x80008ca8] : sw a7, 28(a5) -- Store: [0x800102d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008cb8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008cbc]:csrrs a7, fflags, zero
	-[0x80008cc0]:fsw fa2, 32(a5)
Current Store : [0x80008cc4] : sw a7, 36(a5) -- Store: [0x800102d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008cd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008cd8]:csrrs a7, fflags, zero
	-[0x80008cdc]:fsw fa2, 40(a5)
Current Store : [0x80008ce0] : sw a7, 44(a5) -- Store: [0x800102e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008cf0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008cf4]:csrrs a7, fflags, zero
	-[0x80008cf8]:fsw fa2, 48(a5)
Current Store : [0x80008cfc] : sw a7, 52(a5) -- Store: [0x800102e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d10]:csrrs a7, fflags, zero
	-[0x80008d14]:fsw fa2, 56(a5)
Current Store : [0x80008d18] : sw a7, 60(a5) -- Store: [0x800102f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d2c]:csrrs a7, fflags, zero
	-[0x80008d30]:fsw fa2, 64(a5)
Current Store : [0x80008d34] : sw a7, 68(a5) -- Store: [0x800102f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d48]:csrrs a7, fflags, zero
	-[0x80008d4c]:fsw fa2, 72(a5)
Current Store : [0x80008d50] : sw a7, 76(a5) -- Store: [0x80010300]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d64]:csrrs a7, fflags, zero
	-[0x80008d68]:fsw fa2, 80(a5)
Current Store : [0x80008d6c] : sw a7, 84(a5) -- Store: [0x80010308]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d80]:csrrs a7, fflags, zero
	-[0x80008d84]:fsw fa2, 88(a5)
Current Store : [0x80008d88] : sw a7, 92(a5) -- Store: [0x80010310]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008d98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008d9c]:csrrs a7, fflags, zero
	-[0x80008da0]:fsw fa2, 96(a5)
Current Store : [0x80008da4] : sw a7, 100(a5) -- Store: [0x80010318]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008db4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008db8]:csrrs a7, fflags, zero
	-[0x80008dbc]:fsw fa2, 104(a5)
Current Store : [0x80008dc0] : sw a7, 108(a5) -- Store: [0x80010320]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008dd0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008dd4]:csrrs a7, fflags, zero
	-[0x80008dd8]:fsw fa2, 112(a5)
Current Store : [0x80008ddc] : sw a7, 116(a5) -- Store: [0x80010328]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008dec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008df0]:csrrs a7, fflags, zero
	-[0x80008df4]:fsw fa2, 120(a5)
Current Store : [0x80008df8] : sw a7, 124(a5) -- Store: [0x80010330]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e0c]:csrrs a7, fflags, zero
	-[0x80008e10]:fsw fa2, 128(a5)
Current Store : [0x80008e14] : sw a7, 132(a5) -- Store: [0x80010338]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e28]:csrrs a7, fflags, zero
	-[0x80008e2c]:fsw fa2, 136(a5)
Current Store : [0x80008e30] : sw a7, 140(a5) -- Store: [0x80010340]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e44]:csrrs a7, fflags, zero
	-[0x80008e48]:fsw fa2, 144(a5)
Current Store : [0x80008e4c] : sw a7, 148(a5) -- Store: [0x80010348]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e60]:csrrs a7, fflags, zero
	-[0x80008e64]:fsw fa2, 152(a5)
Current Store : [0x80008e68] : sw a7, 156(a5) -- Store: [0x80010350]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e7c]:csrrs a7, fflags, zero
	-[0x80008e80]:fsw fa2, 160(a5)
Current Store : [0x80008e84] : sw a7, 164(a5) -- Store: [0x80010358]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008e94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008e98]:csrrs a7, fflags, zero
	-[0x80008e9c]:fsw fa2, 168(a5)
Current Store : [0x80008ea0] : sw a7, 172(a5) -- Store: [0x80010360]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008eb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008eb4]:csrrs a7, fflags, zero
	-[0x80008eb8]:fsw fa2, 176(a5)
Current Store : [0x80008ebc] : sw a7, 180(a5) -- Store: [0x80010368]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008ecc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008ed0]:csrrs a7, fflags, zero
	-[0x80008ed4]:fsw fa2, 184(a5)
Current Store : [0x80008ed8] : sw a7, 188(a5) -- Store: [0x80010370]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008ee8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008eec]:csrrs a7, fflags, zero
	-[0x80008ef0]:fsw fa2, 192(a5)
Current Store : [0x80008ef4] : sw a7, 196(a5) -- Store: [0x80010378]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f04]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f08]:csrrs a7, fflags, zero
	-[0x80008f0c]:fsw fa2, 200(a5)
Current Store : [0x80008f10] : sw a7, 204(a5) -- Store: [0x80010380]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f20]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f24]:csrrs a7, fflags, zero
	-[0x80008f28]:fsw fa2, 208(a5)
Current Store : [0x80008f2c] : sw a7, 212(a5) -- Store: [0x80010388]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f3c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f40]:csrrs a7, fflags, zero
	-[0x80008f44]:fsw fa2, 216(a5)
Current Store : [0x80008f48] : sw a7, 220(a5) -- Store: [0x80010390]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f58]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f5c]:csrrs a7, fflags, zero
	-[0x80008f60]:fsw fa2, 224(a5)
Current Store : [0x80008f64] : sw a7, 228(a5) -- Store: [0x80010398]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f74]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f78]:csrrs a7, fflags, zero
	-[0x80008f7c]:fsw fa2, 232(a5)
Current Store : [0x80008f80] : sw a7, 236(a5) -- Store: [0x800103a0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008f90]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008f94]:csrrs a7, fflags, zero
	-[0x80008f98]:fsw fa2, 240(a5)
Current Store : [0x80008f9c] : sw a7, 244(a5) -- Store: [0x800103a8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008fac]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008fb0]:csrrs a7, fflags, zero
	-[0x80008fb4]:fsw fa2, 248(a5)
Current Store : [0x80008fb8] : sw a7, 252(a5) -- Store: [0x800103b0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008fc8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008fcc]:csrrs a7, fflags, zero
	-[0x80008fd0]:fsw fa2, 256(a5)
Current Store : [0x80008fd4] : sw a7, 260(a5) -- Store: [0x800103b8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80008fe4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80008fe8]:csrrs a7, fflags, zero
	-[0x80008fec]:fsw fa2, 264(a5)
Current Store : [0x80008ff0] : sw a7, 268(a5) -- Store: [0x800103c0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009000]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009004]:csrrs a7, fflags, zero
	-[0x80009008]:fsw fa2, 272(a5)
Current Store : [0x8000900c] : sw a7, 276(a5) -- Store: [0x800103c8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000901c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009020]:csrrs a7, fflags, zero
	-[0x80009024]:fsw fa2, 280(a5)
Current Store : [0x80009028] : sw a7, 284(a5) -- Store: [0x800103d0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009038]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000903c]:csrrs a7, fflags, zero
	-[0x80009040]:fsw fa2, 288(a5)
Current Store : [0x80009044] : sw a7, 292(a5) -- Store: [0x800103d8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009054]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009058]:csrrs a7, fflags, zero
	-[0x8000905c]:fsw fa2, 296(a5)
Current Store : [0x80009060] : sw a7, 300(a5) -- Store: [0x800103e0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009070]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009074]:csrrs a7, fflags, zero
	-[0x80009078]:fsw fa2, 304(a5)
Current Store : [0x8000907c] : sw a7, 308(a5) -- Store: [0x800103e8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000908c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009090]:csrrs a7, fflags, zero
	-[0x80009094]:fsw fa2, 312(a5)
Current Store : [0x80009098] : sw a7, 316(a5) -- Store: [0x800103f0]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800090a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800090ac]:csrrs a7, fflags, zero
	-[0x800090b0]:fsw fa2, 320(a5)
Current Store : [0x800090b4] : sw a7, 324(a5) -- Store: [0x800103f8]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800090c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800090c8]:csrrs a7, fflags, zero
	-[0x800090cc]:fsw fa2, 328(a5)
Current Store : [0x800090d0] : sw a7, 332(a5) -- Store: [0x80010400]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800090e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800090e4]:csrrs a7, fflags, zero
	-[0x800090e8]:fsw fa2, 336(a5)
Current Store : [0x800090ec] : sw a7, 340(a5) -- Store: [0x80010408]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800090fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009100]:csrrs a7, fflags, zero
	-[0x80009104]:fsw fa2, 344(a5)
Current Store : [0x80009108] : sw a7, 348(a5) -- Store: [0x80010410]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009118]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000911c]:csrrs a7, fflags, zero
	-[0x80009120]:fsw fa2, 352(a5)
Current Store : [0x80009124] : sw a7, 356(a5) -- Store: [0x80010418]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009134]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009138]:csrrs a7, fflags, zero
	-[0x8000913c]:fsw fa2, 360(a5)
Current Store : [0x80009140] : sw a7, 364(a5) -- Store: [0x80010420]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009150]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009154]:csrrs a7, fflags, zero
	-[0x80009158]:fsw fa2, 368(a5)
Current Store : [0x8000915c] : sw a7, 372(a5) -- Store: [0x80010428]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000916c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80009170]:csrrs a7, fflags, zero
	-[0x80009174]:fsw fa2, 376(a5)
Current Store : [0x80009178] : sw a7, 380(a5) -- Store: [0x80010430]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80009188]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000918c]:csrrs a7, fflags, zero
	-[0x80009190]:fsw fa2, 384(a5)
Current Store : [0x80009194] : sw a7, 388(a5) -- Store: [0x80010438]:0x00000007




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800091a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800091a8]:csrrs a7, fflags, zero
	-[0x800091ac]:fsw fa2, 392(a5)
Current Store : [0x800091b0] : sw a7, 396(a5) -- Store: [0x80010440]:0x00000007




Last Coverpoint : ['opcode : fmul.s', 'rs1 : f10', 'rs2 : f11', 'rd : f12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800091c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800091c4]:csrrs a7, fflags, zero
	-[0x800091c8]:fsw fa2, 400(a5)
Current Store : [0x800091cc] : sw a7, 404(a5) -- Store: [0x80010448]:0x00000007




Last Coverpoint : ['fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x4ccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800091dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800091e0]:csrrs a7, fflags, zero
	-[0x800091e4]:fsw fa2, 408(a5)
Current Store : [0x800091e8] : sw a7, 412(a5) -- Store: [0x80010450]:0x00000007





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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                                         code                                                          |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|   1|[0x8000db04]<br>0x56FF76DF|- opcode : fmul.s<br> - rs1 : f10<br> - rs2 : f10<br> - rd : f10<br> - rs1 == rs2 == rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>  |[0x80000124]:fmul.s fa0, fa0, fa0, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw fa0, 0(a5)<br>     |
|   2|[0x8000db0c]<br>0xAB7FBB6F|- rs1 : f20<br> - rs2 : f25<br> - rd : f11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br> |[0x80000140]:fmul.s fa1, fs4, fs9, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw fa1, 8(a5)<br>     |
|   3|[0x8000db14]<br>0x800000F8|- rs1 : f29<br> - rs2 : f29<br> - rd : f5<br> - rs1 == rs2 != rd<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                         |[0x8000015c]:fmul.s ft5, ft9, ft9, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw ft5, 16(a5)<br>    |
|   4|[0x8000db1c]<br>0x5BFDDB7D|- rs1 : f8<br> - rs2 : f7<br> - rd : f8<br> - rs1 == rd != rs2<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x333333 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                           |[0x80000178]:fmul.s fs0, fs0, ft7, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw fs0, 24(a5)<br>    |
|   5|[0x8000db24]<br>0xFBB6FAB7|- rs1 : f16<br> - rs2 : f31<br> - rd : f31<br> - rs2 == rd != rs1<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x333333 and rm_val == 0  #nosat<br>                        |[0x80000194]:fmul.s ft11, fa6, ft11, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw ft11, 32(a5)<br> |
|   6|[0x8000db2c]<br>0xB7FBB6FA|- rs1 : f28<br> - rs2 : f26<br> - rd : f7<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x800001b0]:fmul.s ft7, ft8, fs10, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft7, 40(a5)<br>   |
|   7|[0x8000db34]<br>0xDF56FF76|- rs1 : f11<br> - rs2 : f9<br> - rd : f18<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                |[0x800001cc]:fmul.s fs2, fa1, fs1, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw fs2, 48(a5)<br>    |
|   8|[0x8000db3c]<br>0x00006000|- rs1 : f31<br> - rs2 : f21<br> - rd : f2<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x249249 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x800001e8]:fmul.s ft2, ft11, fs5, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw ft2, 56(a5)<br>   |
|   9|[0x8000db44]<br>0xDB7D5BFD|- rs1 : f30<br> - rs2 : f16<br> - rd : f24<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                               |[0x80000204]:fmul.s fs8, ft10, fa6, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw fs8, 64(a5)<br>   |
|  10|[0x8000db4c]<br>0xBFDDB7D5|- rs1 : f27<br> - rs2 : f24<br> - rd : f4<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x444444 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x80000220]:fmul.s ft4, fs11, fs8, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw ft4, 72(a5)<br>   |
|  11|[0x8000db54]<br>0x8000B000|- rs1 : f5<br> - rs2 : f19<br> - rd : f6<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                 |[0x8000023c]:fmul.s ft6, ft5, fs3, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw ft6, 80(a5)<br>    |
|  12|[0x8000db5c]<br>0xEEDBEADF|- rs1 : f7<br> - rs2 : f2<br> - rd : f29<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                 |[0x80000258]:fmul.s ft9, ft7, ft2, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft9, 88(a5)<br>    |
|  13|[0x8000db64]<br>0x00000005|- rs1 : f18<br> - rs2 : f27<br> - rd : f17<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                               |[0x80000274]:fmul.s fa7, fs2, fs11, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw fa7, 96(a5)<br>   |
|  14|[0x8000db6c]<br>0x00000000|- rs1 : f26<br> - rs2 : f13<br> - rd : f0<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x666666 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x80000290]:fmul.s ft0, fs10, fa3, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw ft0, 104(a5)<br>  |
|  15|[0x8000db74]<br>0xB7D5BFDD|- rs1 : f21<br> - rs2 : f28<br> - rd : f20<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                               |[0x800002ac]:fmul.s fs4, fs5, ft8, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw fs4, 112(a5)<br>   |
|  16|[0x8000db7c]<br>0x8000B004|- rs1 : f0<br> - rs2 : f18<br> - rd : f16<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x199999 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x800002c8]:fmul.s fa6, ft0, fs2, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fa6, 120(a5)<br>   |
|  17|[0x8000db84]<br>0x6FAB7FBB|- rs1 : f17<br> - rs2 : f11<br> - rd : f19<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                               |[0x800002e4]:fmul.s fs3, fa7, fa1, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw fs3, 128(a5)<br>   |
|  18|[0x8000db8c]<br>0x8000DB04|- rs1 : f12<br> - rs2 : f0<br> - rd : f15<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x80000300]:fmul.s fa5, fa2, ft0, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw fa5, 136(a5)<br>   |
|  19|[0x8000db94]<br>0xF56FF76D|- rs1 : f6<br> - rs2 : f20<br> - rd : f14<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                |[0x8000031c]:fmul.s fa4, ft6, fs4, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw fa4, 144(a5)<br>   |
|  20|[0x8000db9c]<br>0xADFEEDBE|- rs1 : f2<br> - rs2 : f17<br> - rd : f9<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                 |[0x80000338]:fmul.s fs1, ft2, fa7, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw fs1, 152(a5)<br>   |
|  21|[0x8000dba4]<br>0xBB6FAB7F|- rs1 : f15<br> - rs2 : f5<br> - rd : f27<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                |[0x80000354]:fmul.s fs11, fa5, ft5, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw fs11, 160(a5)<br> |
|  22|[0x8000dbac]<br>0xDDB7D5BF|- rs1 : f22<br> - rs2 : f4<br> - rd : f28<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x000001 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x80000370]:fmul.s ft8, fs6, ft4, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw ft8, 168(a5)<br>   |
|  23|[0x8000dbb4]<br>0xEADFEEDB|- rs1 : f3<br> - rs2 : f6<br> - rd : f13<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                 |[0x8000038c]:fmul.s fa3, ft3, ft6, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw fa3, 176(a5)<br>   |
|  24|[0x8000dbbc]<br>0x76DF56FF|- rs1 : f1<br> - rs2 : f12<br> - rd : f26<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x800003a8]:fmul.s fs10, ft1, fa2, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs10, 184(a5)<br> |
|  25|[0x8000dbc4]<br>0xF76DF56F|- rs1 : f4<br> - rs2 : f8<br> - rd : f30<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                 |[0x800003c4]:fmul.s ft10, ft4, fs0, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw ft10, 192(a5)<br> |
|  26|[0x8000dbcc]<br>0xDBEADFEE|- rs1 : f13<br> - rs2 : f22<br> - rd : f21<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x000003 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                               |[0x800003e0]:fmul.s fs5, fa3, fs6, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fs5, 200(a5)<br>   |
|  27|[0x8000dbd4]<br>0xEDBEADFE|- rs1 : f23<br> - rs2 : f15<br> - rd : f25<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                               |[0x800003fc]:fmul.s fs9, fs7, fa5, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fs9, 208(a5)<br>   |
|  28|[0x8000dbdc]<br>0xB6FAB7FB|- rs1 : f9<br> - rs2 : f3<br> - rd : f23<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                 |[0x80000418]:fmul.s fs7, fs1, ft3, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fs7, 216(a5)<br>   |
|  29|[0x8000dbe4]<br>0x00000000|- rs1 : f19<br> - rs2 : f30<br> - rd : f3<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                |[0x80000434]:fmul.s ft3, fs3, ft10, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw ft3, 224(a5)<br>  |
|  30|[0x8000dbec]<br>0xFEEDBEAD|- rs1 : f24<br> - rs2 : f14<br> - rd : f1<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x000007 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                |[0x80000450]:fmul.s ft1, fs8, fa4, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw ft1, 232(a5)<br>   |
|  31|[0x8000dbf4]<br>0xD5BFDDB7|- rs1 : f14<br> - rs2 : f1<br> - rd : f12<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                |[0x8000046c]:fmul.s fa2, fa4, ft1, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw fa2, 240(a5)<br>   |
|  32|[0x8000dbfc]<br>0x6DF56FF7|- rs1 : f25<br> - rs2 : f23<br> - rd : f22<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                               |[0x80000488]:fmul.s fs6, fs9, fs7, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fs6, 248(a5)<br>   |
|  33|[0x8000dc04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x800004a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>   |
|  34|[0x8000dc0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x00000f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800004c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>   |
|  35|[0x8000dc14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x800004dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>   |
|  36|[0x8000dc1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800004f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>   |
|  37|[0x8000dc24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80000514]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>   |
|  38|[0x8000dc2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x00001f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000530]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>   |
|  39|[0x8000dc34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x8000054c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>   |
|  40|[0x8000dc3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000568]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>   |
|  41|[0x8000dc44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80000584]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>   |
|  42|[0x8000dc4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x00003f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800005a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>   |
|  43|[0x8000dc54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x800005bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>   |
|  44|[0x8000dc5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800005d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>   |
|  45|[0x8000dc64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x800005f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>   |
|  46|[0x8000dc6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x00007f and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000610]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>   |
|  47|[0x8000dc74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x8000062c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>   |
|  48|[0x8000dc7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000648]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>   |
|  49|[0x8000dc84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80000664]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>   |
|  50|[0x8000dc8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000680]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>   |
|  51|[0x8000dc94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000069c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>   |
|  52|[0x8000dc9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800006b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>   |
|  53|[0x8000dca4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x800006d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006d8]:csrrs a7, fflags, zero<br> [0x800006dc]:fsw fa2, 416(a5)<br>   |
|  54|[0x8000dcac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800006f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa2, 424(a5)<br>   |
|  55|[0x8000dcb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000070c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000710]:csrrs a7, fflags, zero<br> [0x80000714]:fsw fa2, 432(a5)<br>   |
|  56|[0x8000dcbc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000728]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa2, 440(a5)<br>   |
|  57|[0x8000dcc4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80000744]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000748]:csrrs a7, fflags, zero<br> [0x8000074c]:fsw fa2, 448(a5)<br>   |
|  58|[0x8000dccc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000760]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsw fa2, 456(a5)<br>   |
|  59|[0x8000dcd4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000077c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000780]:csrrs a7, fflags, zero<br> [0x80000784]:fsw fa2, 464(a5)<br>   |
|  60|[0x8000dcdc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000798]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa2, 472(a5)<br>   |
|  61|[0x8000dce4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800007b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007b8]:csrrs a7, fflags, zero<br> [0x800007bc]:fsw fa2, 480(a5)<br>   |
|  62|[0x8000dcec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800007d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw fa2, 488(a5)<br>   |
|  63|[0x8000dcf4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x800007ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsw fa2, 496(a5)<br>   |
|  64|[0x8000dcfc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000808]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa2, 504(a5)<br>   |
|  65|[0x8000dd04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80000824]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000828]:csrrs a7, fflags, zero<br> [0x8000082c]:fsw fa2, 512(a5)<br>   |
|  66|[0x8000dd0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x000fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000840]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa2, 520(a5)<br>   |
|  67|[0x8000dd14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000085c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000860]:csrrs a7, fflags, zero<br> [0x80000864]:fsw fa2, 528(a5)<br>   |
|  68|[0x8000dd1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000878]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:fsw fa2, 536(a5)<br>   |
|  69|[0x8000dd24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000894]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000898]:csrrs a7, fflags, zero<br> [0x8000089c]:fsw fa2, 544(a5)<br>   |
|  70|[0x8000dd2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x001fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800008b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsw fa2, 552(a5)<br>   |
|  71|[0x8000dd34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800008cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008d0]:csrrs a7, fflags, zero<br> [0x800008d4]:fsw fa2, 560(a5)<br>   |
|  72|[0x8000dd3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800008e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa2, 568(a5)<br>   |
|  73|[0x8000dd44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000904]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000908]:csrrs a7, fflags, zero<br> [0x8000090c]:fsw fa2, 576(a5)<br>   |
|  74|[0x8000dd4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x003fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000920]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsw fa2, 584(a5)<br>   |
|  75|[0x8000dd54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000093c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000940]:csrrs a7, fflags, zero<br> [0x80000944]:fsw fa2, 592(a5)<br>   |
|  76|[0x8000dd5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000958]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsw fa2, 600(a5)<br>   |
|  77|[0x8000dd64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000974]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000978]:csrrs a7, fflags, zero<br> [0x8000097c]:fsw fa2, 608(a5)<br>   |
|  78|[0x8000dd6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x007fff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000990]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:fsw fa2, 616(a5)<br>   |
|  79|[0x8000dd74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x800009ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009b0]:csrrs a7, fflags, zero<br> [0x800009b4]:fsw fa2, 624(a5)<br>   |
|  80|[0x8000dd7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800009c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa2, 632(a5)<br>   |
|  81|[0x8000dd84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x800009e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009e8]:csrrs a7, fflags, zero<br> [0x800009ec]:fsw fa2, 640(a5)<br>   |
|  82|[0x8000dd8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000a00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsw fa2, 648(a5)<br>   |
|  83|[0x8000dd94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a20]:csrrs a7, fflags, zero<br> [0x80000a24]:fsw fa2, 656(a5)<br>   |
|  84|[0x8000dd9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000a38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:fsw fa2, 664(a5)<br>   |
|  85|[0x8000dda4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a58]:csrrs a7, fflags, zero<br> [0x80000a5c]:fsw fa2, 672(a5)<br>   |
|  86|[0x8000ddac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000a70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a74]:csrrs a7, fflags, zero<br> [0x80000a78]:fsw fa2, 680(a5)<br>   |
|  87|[0x8000ddb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a90]:csrrs a7, fflags, zero<br> [0x80000a94]:fsw fa2, 688(a5)<br>   |
|  88|[0x8000ddbc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa2, 696(a5)<br>   |
|  89|[0x8000ddc4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ac8]:csrrs a7, fflags, zero<br> [0x80000acc]:fsw fa2, 704(a5)<br>   |
|  90|[0x8000ddcc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsw fa2, 712(a5)<br>   |
|  91|[0x8000ddd4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000afc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b00]:csrrs a7, fflags, zero<br> [0x80000b04]:fsw fa2, 720(a5)<br>   |
|  92|[0x8000dddc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000b18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b1c]:csrrs a7, fflags, zero<br> [0x80000b20]:fsw fa2, 728(a5)<br>   |
|  93|[0x8000dde4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b38]:csrrs a7, fflags, zero<br> [0x80000b3c]:fsw fa2, 736(a5)<br>   |
|  94|[0x8000ddec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000b50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:fsw fa2, 744(a5)<br>   |
|  95|[0x8000ddf4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b70]:csrrs a7, fflags, zero<br> [0x80000b74]:fsw fa2, 752(a5)<br>   |
|  96|[0x8000ddfc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x780000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000b88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa2, 760(a5)<br>   |
|  97|[0x8000de04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ba8]:csrrs a7, fflags, zero<br> [0x80000bac]:fsw fa2, 768(a5)<br>   |
|  98|[0x8000de0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsw fa2, 776(a5)<br>   |
|  99|[0x8000de14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000be0]:csrrs a7, fflags, zero<br> [0x80000be4]:fsw fa2, 784(a5)<br>   |
| 100|[0x8000de1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x700000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:fsw fa2, 792(a5)<br>   |
| 101|[0x8000de24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000c14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c18]:csrrs a7, fflags, zero<br> [0x80000c1c]:fsw fa2, 800(a5)<br>   |
| 102|[0x8000de2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000c30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:fsw fa2, 808(a5)<br>   |
| 103|[0x8000de34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c50]:csrrs a7, fflags, zero<br> [0x80000c54]:fsw fa2, 816(a5)<br>   |
| 104|[0x8000de3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x600000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000c68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c6c]:csrrs a7, fflags, zero<br> [0x80000c70]:fsw fa2, 824(a5)<br>   |
| 105|[0x8000de44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000c84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c88]:csrrs a7, fflags, zero<br> [0x80000c8c]:fsw fa2, 832(a5)<br>   |
| 106|[0x8000de4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsw fa2, 840(a5)<br>   |
| 107|[0x8000de54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cc0]:csrrs a7, fflags, zero<br> [0x80000cc4]:fsw fa2, 848(a5)<br>   |
| 108|[0x8000de5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x400000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:fsw fa2, 856(a5)<br>   |
| 109|[0x8000de64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cf8]:csrrs a7, fflags, zero<br> [0x80000cfc]:fsw fa2, 864(a5)<br>   |
| 110|[0x8000de74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x000000 and fs2 == 1 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d30]:csrrs a7, fflags, zero<br> [0x80000d34]:fsw fa2, 880(a5)<br>   |
| 111|[0x8000de7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsw fa2, 888(a5)<br>   |
| 112|[0x8000de84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000d64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d68]:csrrs a7, fflags, zero<br> [0x80000d6c]:fsw fa2, 896(a5)<br>   |
| 113|[0x8000de8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80000d80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsw fa2, 904(a5)<br>   |
| 114|[0x8000de94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x333333 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000da0]:csrrs a7, fflags, zero<br> [0x80000da4]:fsw fa2, 912(a5)<br>   |
| 115|[0x8000de9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80000db8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dbc]:csrrs a7, fflags, zero<br> [0x80000dc0]:fsw fa2, 920(a5)<br>   |
| 116|[0x8000dea4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dd8]:csrrs a7, fflags, zero<br> [0x80000ddc]:fsw fa2, 928(a5)<br>   |
| 117|[0x8000deac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80000df0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:fsw fa2, 936(a5)<br>   |
| 118|[0x8000deb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x249249 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e10]:csrrs a7, fflags, zero<br> [0x80000e14]:fsw fa2, 944(a5)<br>   |
| 119|[0x8000debc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa2, 952(a5)<br>   |
| 120|[0x8000dec4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x444444 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000e44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e48]:csrrs a7, fflags, zero<br> [0x80000e4c]:fsw fa2, 960(a5)<br>   |
| 121|[0x8000decc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e64]:csrrs a7, fflags, zero<br> [0x80000e68]:fsw fa2, 968(a5)<br>   |
| 122|[0x8000ded4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e80]:csrrs a7, fflags, zero<br> [0x80000e84]:fsw fa2, 976(a5)<br>   |
| 123|[0x8000dedc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80000e98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:fsw fa2, 984(a5)<br>   |
| 124|[0x8000dee4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x666666 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000eb8]:csrrs a7, fflags, zero<br> [0x80000ebc]:fsw fa2, 992(a5)<br>   |
| 125|[0x8000deec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:fsw fa2, 1000(a5)<br>  |
| 126|[0x8000def4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x199999 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000eec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ef0]:csrrs a7, fflags, zero<br> [0x80000ef4]:fsw fa2, 1008(a5)<br>  |
| 127|[0x8000defc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f0c]:csrrs a7, fflags, zero<br> [0x80000f10]:fsw fa2, 1016(a5)<br>  |
| 128|[0x8000df04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000f24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsw fa2, 1024(a5)<br>  |
| 129|[0x8000df0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80000f40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:fsw fa2, 1032(a5)<br>  |
| 130|[0x8000df14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f60]:csrrs a7, fflags, zero<br> [0x80000f64]:fsw fa2, 1040(a5)<br>  |
| 131|[0x8000df1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80000f78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:fsw fa2, 1048(a5)<br>  |
| 132|[0x8000df24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000001 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000f94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f98]:csrrs a7, fflags, zero<br> [0x80000f9c]:fsw fa2, 1056(a5)<br>  |
| 133|[0x8000df2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fb4]:csrrs a7, fflags, zero<br> [0x80000fb8]:fsw fa2, 1064(a5)<br>  |
| 134|[0x8000df34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fd0]:csrrs a7, fflags, zero<br> [0x80000fd4]:fsw fa2, 1072(a5)<br>  |
| 135|[0x8000df3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fec]:csrrs a7, fflags, zero<br> [0x80000ff0]:fsw fa2, 1080(a5)<br>  |
| 136|[0x8000df44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000003 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001004]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsw fa2, 1088(a5)<br>  |
| 137|[0x8000df4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80001020]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsw fa2, 1096(a5)<br>  |
| 138|[0x8000df54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000103c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001040]:csrrs a7, fflags, zero<br> [0x80001044]:fsw fa2, 1104(a5)<br>  |
| 139|[0x8000df5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80001058]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000105c]:csrrs a7, fflags, zero<br> [0x80001060]:fsw fa2, 1112(a5)<br>  |
| 140|[0x8000df64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000007 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001074]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001078]:csrrs a7, fflags, zero<br> [0x8000107c]:fsw fa2, 1120(a5)<br>  |
| 141|[0x8000df6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80001090]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001094]:csrrs a7, fflags, zero<br> [0x80001098]:fsw fa2, 1128(a5)<br>  |
| 142|[0x8000df74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800010ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010b0]:csrrs a7, fflags, zero<br> [0x800010b4]:fsw fa2, 1136(a5)<br>  |
| 143|[0x8000df7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x800010c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa2, 1144(a5)<br>  |
| 144|[0x8000df84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00000f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800010e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsw fa2, 1152(a5)<br>  |
| 145|[0x8000df8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80001100]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001104]:csrrs a7, fflags, zero<br> [0x80001108]:fsw fa2, 1160(a5)<br>  |
| 146|[0x8000df94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000111c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001120]:csrrs a7, fflags, zero<br> [0x80001124]:fsw fa2, 1168(a5)<br>  |
| 147|[0x8000df9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001138]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000113c]:csrrs a7, fflags, zero<br> [0x80001140]:fsw fa2, 1176(a5)<br>  |
| 148|[0x8000dfa4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00001f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001154]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001158]:csrrs a7, fflags, zero<br> [0x8000115c]:fsw fa2, 1184(a5)<br>  |
| 149|[0x8000dfac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80001170]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:fsw fa2, 1192(a5)<br>  |
| 150|[0x8000dfb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000118c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001190]:csrrs a7, fflags, zero<br> [0x80001194]:fsw fa2, 1200(a5)<br>  |
| 151|[0x8000dfbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x800011a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011ac]:csrrs a7, fflags, zero<br> [0x800011b0]:fsw fa2, 1208(a5)<br>  |
| 152|[0x8000dfc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00003f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800011c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsw fa2, 1216(a5)<br>  |
| 153|[0x8000dfcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x800011e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011e4]:csrrs a7, fflags, zero<br> [0x800011e8]:fsw fa2, 1224(a5)<br>  |
| 154|[0x8000dfd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800011fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001200]:csrrs a7, fflags, zero<br> [0x80001204]:fsw fa2, 1232(a5)<br>  |
| 155|[0x8000dfdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001218]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:fsw fa2, 1240(a5)<br>  |
| 156|[0x8000dfe4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00007f and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001234]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001238]:csrrs a7, fflags, zero<br> [0x8000123c]:fsw fa2, 1248(a5)<br>  |
| 157|[0x8000dfec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80001250]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001254]:csrrs a7, fflags, zero<br> [0x80001258]:fsw fa2, 1256(a5)<br>  |
| 158|[0x8000dff4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000126c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001270]:csrrs a7, fflags, zero<br> [0x80001274]:fsw fa2, 1264(a5)<br>  |
| 159|[0x8000dffc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80001288]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000128c]:csrrs a7, fflags, zero<br> [0x80001290]:fsw fa2, 1272(a5)<br>  |
| 160|[0x8000e004]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800012a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsw fa2, 1280(a5)<br>  |
| 161|[0x8000e00c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x800012c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:fsw fa2, 1288(a5)<br>  |
| 162|[0x8000e014]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800012dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012e0]:csrrs a7, fflags, zero<br> [0x800012e4]:fsw fa2, 1296(a5)<br>  |
| 163|[0x8000e01c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x800012f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012fc]:csrrs a7, fflags, zero<br> [0x80001300]:fsw fa2, 1304(a5)<br>  |
| 164|[0x8000e024]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001314]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001318]:csrrs a7, fflags, zero<br> [0x8000131c]:fsw fa2, 1312(a5)<br>  |
| 165|[0x8000e02c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80001330]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001334]:csrrs a7, fflags, zero<br> [0x80001338]:fsw fa2, 1320(a5)<br>  |
| 166|[0x8000e034]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000134c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001350]:csrrs a7, fflags, zero<br> [0x80001354]:fsw fa2, 1328(a5)<br>  |
| 167|[0x8000e03c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80001368]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:fsw fa2, 1336(a5)<br>  |
| 168|[0x8000e044]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001384]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsw fa2, 1344(a5)<br>  |
| 169|[0x8000e04c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x800013a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013a4]:csrrs a7, fflags, zero<br> [0x800013a8]:fsw fa2, 1352(a5)<br>  |
| 170|[0x8000e054]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800013bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013c0]:csrrs a7, fflags, zero<br> [0x800013c4]:fsw fa2, 1360(a5)<br>  |
| 171|[0x8000e05c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800013d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013dc]:csrrs a7, fflags, zero<br> [0x800013e0]:fsw fa2, 1368(a5)<br>  |
| 172|[0x8000e064]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800013f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800013f8]:csrrs a7, fflags, zero<br> [0x800013fc]:fsw fa2, 1376(a5)<br>  |
| 173|[0x8000e06c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x80001410]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001414]:csrrs a7, fflags, zero<br> [0x80001418]:fsw fa2, 1384(a5)<br>  |
| 174|[0x8000e074]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000142c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsw fa2, 1392(a5)<br>  |
| 175|[0x8000e07c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80001448]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000144c]:csrrs a7, fflags, zero<br> [0x80001450]:fsw fa2, 1400(a5)<br>  |
| 176|[0x8000e084]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001464]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001468]:csrrs a7, fflags, zero<br> [0x8000146c]:fsw fa2, 1408(a5)<br>  |
| 177|[0x8000e08c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80001480]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001484]:csrrs a7, fflags, zero<br> [0x80001488]:fsw fa2, 1416(a5)<br>  |
| 178|[0x8000e094]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000149c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014a0]:csrrs a7, fflags, zero<br> [0x800014a4]:fsw fa2, 1424(a5)<br>  |
| 179|[0x8000e09c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x800014b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014bc]:csrrs a7, fflags, zero<br> [0x800014c0]:fsw fa2, 1432(a5)<br>  |
| 180|[0x8000e0a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x001fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800014d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014d8]:csrrs a7, fflags, zero<br> [0x800014dc]:fsw fa2, 1440(a5)<br>  |
| 181|[0x8000e0ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800014f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800014f4]:csrrs a7, fflags, zero<br> [0x800014f8]:fsw fa2, 1448(a5)<br>  |
| 182|[0x8000e0b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000150c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsw fa2, 1456(a5)<br>  |
| 183|[0x8000e0bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001528]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000152c]:csrrs a7, fflags, zero<br> [0x80001530]:fsw fa2, 1464(a5)<br>  |
| 184|[0x8000e0c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x003fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001544]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001548]:csrrs a7, fflags, zero<br> [0x8000154c]:fsw fa2, 1472(a5)<br>  |
| 185|[0x8000e0cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80001560]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001564]:csrrs a7, fflags, zero<br> [0x80001568]:fsw fa2, 1480(a5)<br>  |
| 186|[0x8000e0d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000157c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001580]:csrrs a7, fflags, zero<br> [0x80001584]:fsw fa2, 1488(a5)<br>  |
| 187|[0x8000e0dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001598]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000159c]:csrrs a7, fflags, zero<br> [0x800015a0]:fsw fa2, 1496(a5)<br>  |
| 188|[0x8000e0e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x007fff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800015b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015b8]:csrrs a7, fflags, zero<br> [0x800015bc]:fsw fa2, 1504(a5)<br>  |
| 189|[0x8000e0ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x800015d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015d4]:csrrs a7, fflags, zero<br> [0x800015d8]:fsw fa2, 1512(a5)<br>  |
| 190|[0x8000e0f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800015ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsw fa2, 1520(a5)<br>  |
| 191|[0x8000e0fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001608]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:fsw fa2, 1528(a5)<br>  |
| 192|[0x8000e104]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001624]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001628]:csrrs a7, fflags, zero<br> [0x8000162c]:fsw fa2, 1536(a5)<br>  |
| 193|[0x8000e10c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001640]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001644]:csrrs a7, fflags, zero<br> [0x80001648]:fsw fa2, 1544(a5)<br>  |
| 194|[0x8000e114]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000165c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001660]:csrrs a7, fflags, zero<br> [0x80001664]:fsw fa2, 1552(a5)<br>  |
| 195|[0x8000e11c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001678]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000167c]:csrrs a7, fflags, zero<br> [0x80001680]:fsw fa2, 1560(a5)<br>  |
| 196|[0x8000e124]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001694]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001698]:csrrs a7, fflags, zero<br> [0x8000169c]:fsw fa2, 1568(a5)<br>  |
| 197|[0x8000e12c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800016b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016b4]:csrrs a7, fflags, zero<br> [0x800016b8]:fsw fa2, 1576(a5)<br>  |
| 198|[0x8000e134]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800016cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsw fa2, 1584(a5)<br>  |
| 199|[0x8000e13c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800016e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800016ec]:csrrs a7, fflags, zero<br> [0x800016f0]:fsw fa2, 1592(a5)<br>  |
| 200|[0x8000e144]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001704]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001708]:csrrs a7, fflags, zero<br> [0x8000170c]:fsw fa2, 1600(a5)<br>  |
| 201|[0x8000e14c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001720]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001724]:csrrs a7, fflags, zero<br> [0x80001728]:fsw fa2, 1608(a5)<br>  |
| 202|[0x8000e154]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000173c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001740]:csrrs a7, fflags, zero<br> [0x80001744]:fsw fa2, 1616(a5)<br>  |
| 203|[0x8000e15c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001758]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000175c]:csrrs a7, fflags, zero<br> [0x80001760]:fsw fa2, 1624(a5)<br>  |
| 204|[0x8000e164]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001774]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001778]:csrrs a7, fflags, zero<br> [0x8000177c]:fsw fa2, 1632(a5)<br>  |
| 205|[0x8000e16c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001790]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001794]:csrrs a7, fflags, zero<br> [0x80001798]:fsw fa2, 1640(a5)<br>  |
| 206|[0x8000e174]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x780000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800017ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsw fa2, 1648(a5)<br>  |
| 207|[0x8000e17c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x800017c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017cc]:csrrs a7, fflags, zero<br> [0x800017d0]:fsw fa2, 1656(a5)<br>  |
| 208|[0x8000e184]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800017e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800017e8]:csrrs a7, fflags, zero<br> [0x800017ec]:fsw fa2, 1664(a5)<br>  |
| 209|[0x8000e18c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001800]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001804]:csrrs a7, fflags, zero<br> [0x80001808]:fsw fa2, 1672(a5)<br>  |
| 210|[0x8000e194]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x700000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000181c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001820]:csrrs a7, fflags, zero<br> [0x80001824]:fsw fa2, 1680(a5)<br>  |
| 211|[0x8000e19c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001838]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000183c]:csrrs a7, fflags, zero<br> [0x80001840]:fsw fa2, 1688(a5)<br>  |
| 212|[0x8000e1a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001854]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001858]:csrrs a7, fflags, zero<br> [0x8000185c]:fsw fa2, 1696(a5)<br>  |
| 213|[0x8000e1ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001870]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001874]:csrrs a7, fflags, zero<br> [0x80001878]:fsw fa2, 1704(a5)<br>  |
| 214|[0x8000e1b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x600000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000188c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsw fa2, 1712(a5)<br>  |
| 215|[0x8000e1bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x800018a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018ac]:csrrs a7, fflags, zero<br> [0x800018b0]:fsw fa2, 1720(a5)<br>  |
| 216|[0x8000e1c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800018c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018c8]:csrrs a7, fflags, zero<br> [0x800018cc]:fsw fa2, 1728(a5)<br>  |
| 217|[0x8000e1cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800018e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800018e4]:csrrs a7, fflags, zero<br> [0x800018e8]:fsw fa2, 1736(a5)<br>  |
| 218|[0x8000e1d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x400000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800018fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001900]:csrrs a7, fflags, zero<br> [0x80001904]:fsw fa2, 1744(a5)<br>  |
| 219|[0x8000e1dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001918]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000191c]:csrrs a7, fflags, zero<br> [0x80001920]:fsw fa2, 1752(a5)<br>  |
| 220|[0x8000e1e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001934]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001938]:csrrs a7, fflags, zero<br> [0x8000193c]:fsw fa2, 1760(a5)<br>  |
| 221|[0x8000e1ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x000000 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80001950]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsw fa2, 1768(a5)<br>  |
| 222|[0x8000e1f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0xfe and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000196c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001970]:csrrs a7, fflags, zero<br> [0x80001974]:fsw fa2, 1776(a5)<br>  |
| 223|[0x8000e1fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001988]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000198c]:csrrs a7, fflags, zero<br> [0x80001990]:fsw fa2, 1784(a5)<br>  |
| 224|[0x8000e204]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x800019a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800019a8]:csrrs a7, fflags, zero<br> [0x800019ac]:fsw fa2, 1792(a5)<br>  |
| 225|[0x8000e20c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800019c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800019c4]:csrrs a7, fflags, zero<br> [0x800019c8]:fsw fa2, 1800(a5)<br>  |
| 226|[0x8000e214]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x800019dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800019e0]:csrrs a7, fflags, zero<br> [0x800019e4]:fsw fa2, 1808(a5)<br>  |
| 227|[0x8000e21c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800019f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800019fc]:csrrs a7, fflags, zero<br> [0x80001a00]:fsw fa2, 1816(a5)<br>  |
| 228|[0x8000e224]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001a18]:csrrs a7, fflags, zero<br> [0x80001a1c]:fsw fa2, 1824(a5)<br>  |
| 229|[0x8000e22c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsw fa2, 1832(a5)<br>  |
| 230|[0x8000e234]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001a50]:csrrs a7, fflags, zero<br> [0x80001a54]:fsw fa2, 1840(a5)<br>  |
| 231|[0x8000e23c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001a6c]:csrrs a7, fflags, zero<br> [0x80001a70]:fsw fa2, 1848(a5)<br>  |
| 232|[0x8000e244]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001a88]:csrrs a7, fflags, zero<br> [0x80001a8c]:fsw fa2, 1856(a5)<br>  |
| 233|[0x8000e24c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001aa0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001aa4]:csrrs a7, fflags, zero<br> [0x80001aa8]:fsw fa2, 1864(a5)<br>  |
| 234|[0x8000e254]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80001abc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ac0]:csrrs a7, fflags, zero<br> [0x80001ac4]:fsw fa2, 1872(a5)<br>  |
| 235|[0x8000e25c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ad8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001adc]:csrrs a7, fflags, zero<br> [0x80001ae0]:fsw fa2, 1880(a5)<br>  |
| 236|[0x8000e264]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80001af4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001af8]:csrrs a7, fflags, zero<br> [0x80001afc]:fsw fa2, 1888(a5)<br>  |
| 237|[0x8000e26c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsw fa2, 1896(a5)<br>  |
| 238|[0x8000e274]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001b30]:csrrs a7, fflags, zero<br> [0x80001b34]:fsw fa2, 1904(a5)<br>  |
| 239|[0x8000e27c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001b4c]:csrrs a7, fflags, zero<br> [0x80001b50]:fsw fa2, 1912(a5)<br>  |
| 240|[0x8000e284]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80001b64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001b68]:csrrs a7, fflags, zero<br> [0x80001b6c]:fsw fa2, 1920(a5)<br>  |
| 241|[0x8000e28c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001b84]:csrrs a7, fflags, zero<br> [0x80001b88]:fsw fa2, 1928(a5)<br>  |
| 242|[0x8000e294]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80001b9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ba0]:csrrs a7, fflags, zero<br> [0x80001ba4]:fsw fa2, 1936(a5)<br>  |
| 243|[0x8000e29c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001bbc]:csrrs a7, fflags, zero<br> [0x80001bc0]:fsw fa2, 1944(a5)<br>  |
| 244|[0x8000e2a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001bd8]:csrrs a7, fflags, zero<br> [0x80001bdc]:fsw fa2, 1952(a5)<br>  |
| 245|[0x8000e2ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsw fa2, 1960(a5)<br>  |
| 246|[0x8000e2b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80001c0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c10]:csrrs a7, fflags, zero<br> [0x80001c14]:fsw fa2, 1968(a5)<br>  |
| 247|[0x8000e2bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c2c]:csrrs a7, fflags, zero<br> [0x80001c30]:fsw fa2, 1976(a5)<br>  |
| 248|[0x8000e2c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c48]:csrrs a7, fflags, zero<br> [0x80001c4c]:fsw fa2, 1984(a5)<br>  |
| 249|[0x8000e2cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c64]:csrrs a7, fflags, zero<br> [0x80001c68]:fsw fa2, 1992(a5)<br>  |
| 250|[0x8000e2d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80001c7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c80]:csrrs a7, fflags, zero<br> [0x80001c84]:fsw fa2, 2000(a5)<br>  |
| 251|[0x8000e2dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001c9c]:csrrs a7, fflags, zero<br> [0x80001ca0]:fsw fa2, 2008(a5)<br>  |
| 252|[0x8000e2e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80001cb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001cb8]:csrrs a7, fflags, zero<br> [0x80001cbc]:fsw fa2, 2016(a5)<br>  |
| 253|[0x8000e2ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001cd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsw fa2, 2024(a5)<br>  |
| 254|[0x8000e2f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80001cf8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001cfc]:csrrs a7, fflags, zero<br> [0x80001d00]:fsw fa2, 0(a5)<br>     |
| 255|[0x8000e2fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001d18]:csrrs a7, fflags, zero<br> [0x80001d1c]:fsw fa2, 8(a5)<br>     |
| 256|[0x8000e304]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsw fa2, 16(a5)<br>    |
| 257|[0x8000e30c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80001d4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001d50]:csrrs a7, fflags, zero<br> [0x80001d54]:fsw fa2, 24(a5)<br>    |
| 258|[0x8000e314]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001d6c]:csrrs a7, fflags, zero<br> [0x80001d70]:fsw fa2, 32(a5)<br>    |
| 259|[0x8000e31c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001d88]:csrrs a7, fflags, zero<br> [0x80001d8c]:fsw fa2, 40(a5)<br>    |
| 260|[0x8000e324]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001da0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001da4]:csrrs a7, fflags, zero<br> [0x80001da8]:fsw fa2, 48(a5)<br>    |
| 261|[0x8000e32c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80001dbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001dc0]:csrrs a7, fflags, zero<br> [0x80001dc4]:fsw fa2, 56(a5)<br>    |
| 262|[0x8000e334]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001dd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ddc]:csrrs a7, fflags, zero<br> [0x80001de0]:fsw fa2, 64(a5)<br>    |
| 263|[0x8000e33c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001df4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001df8]:csrrs a7, fflags, zero<br> [0x80001dfc]:fsw fa2, 72(a5)<br>    |
| 264|[0x8000e344]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001e14]:csrrs a7, fflags, zero<br> [0x80001e18]:fsw fa2, 80(a5)<br>    |
| 265|[0x8000e34c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80001e2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001e30]:csrrs a7, fflags, zero<br> [0x80001e34]:fsw fa2, 88(a5)<br>    |
| 266|[0x8000e354]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001e4c]:csrrs a7, fflags, zero<br> [0x80001e50]:fsw fa2, 96(a5)<br>    |
| 267|[0x8000e35c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001e68]:csrrs a7, fflags, zero<br> [0x80001e6c]:fsw fa2, 104(a5)<br>   |
| 268|[0x8000e364]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001e84]:csrrs a7, fflags, zero<br> [0x80001e88]:fsw fa2, 112(a5)<br>   |
| 269|[0x8000e36c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80001e9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ea0]:csrrs a7, fflags, zero<br> [0x80001ea4]:fsw fa2, 120(a5)<br>   |
| 270|[0x8000e374]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001eb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ebc]:csrrs a7, fflags, zero<br> [0x80001ec0]:fsw fa2, 128(a5)<br>   |
| 271|[0x8000e37c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ed4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ed8]:csrrs a7, fflags, zero<br> [0x80001edc]:fsw fa2, 136(a5)<br>   |
| 272|[0x8000e384]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ef0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ef4]:csrrs a7, fflags, zero<br> [0x80001ef8]:fsw fa2, 144(a5)<br>   |
| 273|[0x8000e38c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80001f0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f10]:csrrs a7, fflags, zero<br> [0x80001f14]:fsw fa2, 152(a5)<br>   |
| 274|[0x8000e394]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f2c]:csrrs a7, fflags, zero<br> [0x80001f30]:fsw fa2, 160(a5)<br>   |
| 275|[0x8000e39c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f48]:csrrs a7, fflags, zero<br> [0x80001f4c]:fsw fa2, 168(a5)<br>   |
| 276|[0x8000e3a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f64]:csrrs a7, fflags, zero<br> [0x80001f68]:fsw fa2, 176(a5)<br>   |
| 277|[0x8000e3ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80001f7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f80]:csrrs a7, fflags, zero<br> [0x80001f84]:fsw fa2, 184(a5)<br>   |
| 278|[0x8000e3b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001f9c]:csrrs a7, fflags, zero<br> [0x80001fa0]:fsw fa2, 192(a5)<br>   |
| 279|[0x8000e3bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80001fb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001fb8]:csrrs a7, fflags, zero<br> [0x80001fbc]:fsw fa2, 200(a5)<br>   |
| 280|[0x8000e3c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001fd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001fd4]:csrrs a7, fflags, zero<br> [0x80001fd8]:fsw fa2, 208(a5)<br>   |
| 281|[0x8000e3cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80001fec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001ff0]:csrrs a7, fflags, zero<br> [0x80001ff4]:fsw fa2, 216(a5)<br>   |
| 282|[0x8000e3d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002008]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000200c]:csrrs a7, fflags, zero<br> [0x80002010]:fsw fa2, 224(a5)<br>   |
| 283|[0x8000e3dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80002024]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002028]:csrrs a7, fflags, zero<br> [0x8000202c]:fsw fa2, 232(a5)<br>   |
| 284|[0x8000e3e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002040]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002044]:csrrs a7, fflags, zero<br> [0x80002048]:fsw fa2, 240(a5)<br>   |
| 285|[0x8000e3ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000205c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002060]:csrrs a7, fflags, zero<br> [0x80002064]:fsw fa2, 248(a5)<br>   |
| 286|[0x8000e3f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002078]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000207c]:csrrs a7, fflags, zero<br> [0x80002080]:fsw fa2, 256(a5)<br>   |
| 287|[0x8000e3fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80002094]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002098]:csrrs a7, fflags, zero<br> [0x8000209c]:fsw fa2, 264(a5)<br>   |
| 288|[0x8000e404]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800020b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800020b4]:csrrs a7, fflags, zero<br> [0x800020b8]:fsw fa2, 272(a5)<br>   |
| 289|[0x8000e40c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x800020cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800020d0]:csrrs a7, fflags, zero<br> [0x800020d4]:fsw fa2, 280(a5)<br>   |
| 290|[0x8000e414]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800020e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800020ec]:csrrs a7, fflags, zero<br> [0x800020f0]:fsw fa2, 288(a5)<br>   |
| 291|[0x8000e41c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002104]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002108]:csrrs a7, fflags, zero<br> [0x8000210c]:fsw fa2, 296(a5)<br>   |
| 292|[0x8000e424]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002120]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002124]:csrrs a7, fflags, zero<br> [0x80002128]:fsw fa2, 304(a5)<br>   |
| 293|[0x8000e42c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000213c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002140]:csrrs a7, fflags, zero<br> [0x80002144]:fsw fa2, 312(a5)<br>   |
| 294|[0x8000e434]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002158]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000215c]:csrrs a7, fflags, zero<br> [0x80002160]:fsw fa2, 320(a5)<br>   |
| 295|[0x8000e43c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002174]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002178]:csrrs a7, fflags, zero<br> [0x8000217c]:fsw fa2, 328(a5)<br>   |
| 296|[0x8000e444]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002190]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002194]:csrrs a7, fflags, zero<br> [0x80002198]:fsw fa2, 336(a5)<br>   |
| 297|[0x8000e44c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x800021ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800021b0]:csrrs a7, fflags, zero<br> [0x800021b4]:fsw fa2, 344(a5)<br>   |
| 298|[0x8000e454]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800021c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800021cc]:csrrs a7, fflags, zero<br> [0x800021d0]:fsw fa2, 352(a5)<br>   |
| 299|[0x8000e45c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x800021e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800021e8]:csrrs a7, fflags, zero<br> [0x800021ec]:fsw fa2, 360(a5)<br>   |
| 300|[0x8000e464]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002200]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002204]:csrrs a7, fflags, zero<br> [0x80002208]:fsw fa2, 368(a5)<br>   |
| 301|[0x8000e46c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000221c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002220]:csrrs a7, fflags, zero<br> [0x80002224]:fsw fa2, 376(a5)<br>   |
| 302|[0x8000e474]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002238]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000223c]:csrrs a7, fflags, zero<br> [0x80002240]:fsw fa2, 384(a5)<br>   |
| 303|[0x8000e47c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002254]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002258]:csrrs a7, fflags, zero<br> [0x8000225c]:fsw fa2, 392(a5)<br>   |
| 304|[0x8000e484]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002270]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002274]:csrrs a7, fflags, zero<br> [0x80002278]:fsw fa2, 400(a5)<br>   |
| 305|[0x8000e48c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000228c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002290]:csrrs a7, fflags, zero<br> [0x80002294]:fsw fa2, 408(a5)<br>   |
| 306|[0x8000e494]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800022a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800022ac]:csrrs a7, fflags, zero<br> [0x800022b0]:fsw fa2, 416(a5)<br>   |
| 307|[0x8000e49c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800022c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800022c8]:csrrs a7, fflags, zero<br> [0x800022cc]:fsw fa2, 424(a5)<br>   |
| 308|[0x8000e4a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800022e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800022e4]:csrrs a7, fflags, zero<br> [0x800022e8]:fsw fa2, 432(a5)<br>   |
| 309|[0x8000e4ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800022fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002300]:csrrs a7, fflags, zero<br> [0x80002304]:fsw fa2, 440(a5)<br>   |
| 310|[0x8000e4b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002318]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000231c]:csrrs a7, fflags, zero<br> [0x80002320]:fsw fa2, 448(a5)<br>   |
| 311|[0x8000e4bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002334]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002338]:csrrs a7, fflags, zero<br> [0x8000233c]:fsw fa2, 456(a5)<br>   |
| 312|[0x8000e4c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002350]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002354]:csrrs a7, fflags, zero<br> [0x80002358]:fsw fa2, 464(a5)<br>   |
| 313|[0x8000e4cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000236c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002370]:csrrs a7, fflags, zero<br> [0x80002374]:fsw fa2, 472(a5)<br>   |
| 314|[0x8000e4d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002388]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000238c]:csrrs a7, fflags, zero<br> [0x80002390]:fsw fa2, 480(a5)<br>   |
| 315|[0x8000e4dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800023a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800023a8]:csrrs a7, fflags, zero<br> [0x800023ac]:fsw fa2, 488(a5)<br>   |
| 316|[0x8000e4e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800023c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800023c4]:csrrs a7, fflags, zero<br> [0x800023c8]:fsw fa2, 496(a5)<br>   |
| 317|[0x8000e4ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800023dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800023e0]:csrrs a7, fflags, zero<br> [0x800023e4]:fsw fa2, 504(a5)<br>   |
| 318|[0x8000e4f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800023f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800023fc]:csrrs a7, fflags, zero<br> [0x80002400]:fsw fa2, 512(a5)<br>   |
| 319|[0x8000e4fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002414]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002418]:csrrs a7, fflags, zero<br> [0x8000241c]:fsw fa2, 520(a5)<br>   |
| 320|[0x8000e504]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002430]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002434]:csrrs a7, fflags, zero<br> [0x80002438]:fsw fa2, 528(a5)<br>   |
| 321|[0x8000e50c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000244c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002450]:csrrs a7, fflags, zero<br> [0x80002454]:fsw fa2, 536(a5)<br>   |
| 322|[0x8000e514]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002468]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000246c]:csrrs a7, fflags, zero<br> [0x80002470]:fsw fa2, 544(a5)<br>   |
| 323|[0x8000e51c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002484]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002488]:csrrs a7, fflags, zero<br> [0x8000248c]:fsw fa2, 552(a5)<br>   |
| 324|[0x8000e524]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800024a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800024a4]:csrrs a7, fflags, zero<br> [0x800024a8]:fsw fa2, 560(a5)<br>   |
| 325|[0x8000e52c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800024bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800024c0]:csrrs a7, fflags, zero<br> [0x800024c4]:fsw fa2, 568(a5)<br>   |
| 326|[0x8000e534]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800024d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800024dc]:csrrs a7, fflags, zero<br> [0x800024e0]:fsw fa2, 576(a5)<br>   |
| 327|[0x8000e53c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x800024f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800024f8]:csrrs a7, fflags, zero<br> [0x800024fc]:fsw fa2, 584(a5)<br>   |
| 328|[0x8000e544]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002510]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002514]:csrrs a7, fflags, zero<br> [0x80002518]:fsw fa2, 592(a5)<br>   |
| 329|[0x8000e54c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000252c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002530]:csrrs a7, fflags, zero<br> [0x80002534]:fsw fa2, 600(a5)<br>   |
| 330|[0x8000e554]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002548]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000254c]:csrrs a7, fflags, zero<br> [0x80002550]:fsw fa2, 608(a5)<br>   |
| 331|[0x8000e55c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002564]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002568]:csrrs a7, fflags, zero<br> [0x8000256c]:fsw fa2, 616(a5)<br>   |
| 332|[0x8000e564]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002580]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002584]:csrrs a7, fflags, zero<br> [0x80002588]:fsw fa2, 624(a5)<br>   |
| 333|[0x8000e56c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000259c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800025a0]:csrrs a7, fflags, zero<br> [0x800025a4]:fsw fa2, 632(a5)<br>   |
| 334|[0x8000e574]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800025b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800025bc]:csrrs a7, fflags, zero<br> [0x800025c0]:fsw fa2, 640(a5)<br>   |
| 335|[0x8000e57c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x800025d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800025d8]:csrrs a7, fflags, zero<br> [0x800025dc]:fsw fa2, 648(a5)<br>   |
| 336|[0x8000e584]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800025f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800025f4]:csrrs a7, fflags, zero<br> [0x800025f8]:fsw fa2, 656(a5)<br>   |
| 337|[0x8000e58c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x8000260c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002610]:csrrs a7, fflags, zero<br> [0x80002614]:fsw fa2, 664(a5)<br>   |
| 338|[0x8000e594]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002628]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000262c]:csrrs a7, fflags, zero<br> [0x80002630]:fsw fa2, 672(a5)<br>   |
| 339|[0x8000e59c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80002644]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002648]:csrrs a7, fflags, zero<br> [0x8000264c]:fsw fa2, 680(a5)<br>   |
| 340|[0x8000e5a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002660]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002664]:csrrs a7, fflags, zero<br> [0x80002668]:fsw fa2, 688(a5)<br>   |
| 341|[0x8000e5ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x8000267c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002680]:csrrs a7, fflags, zero<br> [0x80002684]:fsw fa2, 696(a5)<br>   |
| 342|[0x8000e5b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002698]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000269c]:csrrs a7, fflags, zero<br> [0x800026a0]:fsw fa2, 704(a5)<br>   |
| 343|[0x8000e5bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x800026b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800026b8]:csrrs a7, fflags, zero<br> [0x800026bc]:fsw fa2, 712(a5)<br>   |
| 344|[0x8000e5c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800026d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800026d4]:csrrs a7, fflags, zero<br> [0x800026d8]:fsw fa2, 720(a5)<br>   |
| 345|[0x8000e5cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x800026ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800026f0]:csrrs a7, fflags, zero<br> [0x800026f4]:fsw fa2, 728(a5)<br>   |
| 346|[0x8000e5d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002708]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000270c]:csrrs a7, fflags, zero<br> [0x80002710]:fsw fa2, 736(a5)<br>   |
| 347|[0x8000e5dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80002724]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002728]:csrrs a7, fflags, zero<br> [0x8000272c]:fsw fa2, 744(a5)<br>   |
| 348|[0x8000e5e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002740]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002744]:csrrs a7, fflags, zero<br> [0x80002748]:fsw fa2, 752(a5)<br>   |
| 349|[0x8000e5ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x8000275c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002760]:csrrs a7, fflags, zero<br> [0x80002764]:fsw fa2, 760(a5)<br>   |
| 350|[0x8000e5f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002778]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000277c]:csrrs a7, fflags, zero<br> [0x80002780]:fsw fa2, 768(a5)<br>   |
| 351|[0x8000e5fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80002794]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002798]:csrrs a7, fflags, zero<br> [0x8000279c]:fsw fa2, 776(a5)<br>   |
| 352|[0x8000e604]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800027b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800027b4]:csrrs a7, fflags, zero<br> [0x800027b8]:fsw fa2, 784(a5)<br>   |
| 353|[0x8000e60c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x800027cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800027d0]:csrrs a7, fflags, zero<br> [0x800027d4]:fsw fa2, 792(a5)<br>   |
| 354|[0x8000e614]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800027e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800027ec]:csrrs a7, fflags, zero<br> [0x800027f0]:fsw fa2, 800(a5)<br>   |
| 355|[0x8000e61c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80002804]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002808]:csrrs a7, fflags, zero<br> [0x8000280c]:fsw fa2, 808(a5)<br>   |
| 356|[0x8000e624]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002820]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002824]:csrrs a7, fflags, zero<br> [0x80002828]:fsw fa2, 816(a5)<br>   |
| 357|[0x8000e62c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x8000283c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002840]:csrrs a7, fflags, zero<br> [0x80002844]:fsw fa2, 824(a5)<br>   |
| 358|[0x8000e634]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002858]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000285c]:csrrs a7, fflags, zero<br> [0x80002860]:fsw fa2, 832(a5)<br>   |
| 359|[0x8000e63c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80002874]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002878]:csrrs a7, fflags, zero<br> [0x8000287c]:fsw fa2, 840(a5)<br>   |
| 360|[0x8000e644]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002890]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002894]:csrrs a7, fflags, zero<br> [0x80002898]:fsw fa2, 848(a5)<br>   |
| 361|[0x8000e64c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x800028ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800028b0]:csrrs a7, fflags, zero<br> [0x800028b4]:fsw fa2, 856(a5)<br>   |
| 362|[0x8000e654]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800028c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800028cc]:csrrs a7, fflags, zero<br> [0x800028d0]:fsw fa2, 864(a5)<br>   |
| 363|[0x8000e65c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x800028e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800028e8]:csrrs a7, fflags, zero<br> [0x800028ec]:fsw fa2, 872(a5)<br>   |
| 364|[0x8000e664]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002900]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002904]:csrrs a7, fflags, zero<br> [0x80002908]:fsw fa2, 880(a5)<br>   |
| 365|[0x8000e66c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x8000291c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002920]:csrrs a7, fflags, zero<br> [0x80002924]:fsw fa2, 888(a5)<br>   |
| 366|[0x8000e674]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002938]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000293c]:csrrs a7, fflags, zero<br> [0x80002940]:fsw fa2, 896(a5)<br>   |
| 367|[0x8000e67c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002954]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002958]:csrrs a7, fflags, zero<br> [0x8000295c]:fsw fa2, 904(a5)<br>   |
| 368|[0x8000e684]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80002970]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002974]:csrrs a7, fflags, zero<br> [0x80002978]:fsw fa2, 912(a5)<br>   |
| 369|[0x8000e68c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000298c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002990]:csrrs a7, fflags, zero<br> [0x80002994]:fsw fa2, 920(a5)<br>   |
| 370|[0x8000e694]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x800029a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800029ac]:csrrs a7, fflags, zero<br> [0x800029b0]:fsw fa2, 928(a5)<br>   |
| 371|[0x8000e69c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800029c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800029c8]:csrrs a7, fflags, zero<br> [0x800029cc]:fsw fa2, 936(a5)<br>   |
| 372|[0x8000e6a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x800029e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800029e4]:csrrs a7, fflags, zero<br> [0x800029e8]:fsw fa2, 944(a5)<br>   |
| 373|[0x8000e6ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800029fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a00]:csrrs a7, fflags, zero<br> [0x80002a04]:fsw fa2, 952(a5)<br>   |
| 374|[0x8000e6b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80002a18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a1c]:csrrs a7, fflags, zero<br> [0x80002a20]:fsw fa2, 960(a5)<br>   |
| 375|[0x8000e6bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002a34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a38]:csrrs a7, fflags, zero<br> [0x80002a3c]:fsw fa2, 968(a5)<br>   |
| 376|[0x8000e6c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80002a50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a54]:csrrs a7, fflags, zero<br> [0x80002a58]:fsw fa2, 976(a5)<br>   |
| 377|[0x8000e6cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002a6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a70]:csrrs a7, fflags, zero<br> [0x80002a74]:fsw fa2, 984(a5)<br>   |
| 378|[0x8000e6d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80002a88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002a8c]:csrrs a7, fflags, zero<br> [0x80002a90]:fsw fa2, 992(a5)<br>   |
| 379|[0x8000e6dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002aa4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002aa8]:csrrs a7, fflags, zero<br> [0x80002aac]:fsw fa2, 1000(a5)<br>  |
| 380|[0x8000e6e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80002ac0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002ac4]:csrrs a7, fflags, zero<br> [0x80002ac8]:fsw fa2, 1008(a5)<br>  |
| 381|[0x8000e6ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002adc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002ae0]:csrrs a7, fflags, zero<br> [0x80002ae4]:fsw fa2, 1016(a5)<br>  |
| 382|[0x8000e6f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80002af8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002afc]:csrrs a7, fflags, zero<br> [0x80002b00]:fsw fa2, 1024(a5)<br>  |
| 383|[0x8000e6fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002b14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002b18]:csrrs a7, fflags, zero<br> [0x80002b1c]:fsw fa2, 1032(a5)<br>  |
| 384|[0x8000e704]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80002b30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002b34]:csrrs a7, fflags, zero<br> [0x80002b38]:fsw fa2, 1040(a5)<br>  |
| 385|[0x8000e70c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002b4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002b50]:csrrs a7, fflags, zero<br> [0x80002b54]:fsw fa2, 1048(a5)<br>  |
| 386|[0x8000e714]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80002b68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002b6c]:csrrs a7, fflags, zero<br> [0x80002b70]:fsw fa2, 1056(a5)<br>  |
| 387|[0x8000e71c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002b84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002b88]:csrrs a7, fflags, zero<br> [0x80002b8c]:fsw fa2, 1064(a5)<br>  |
| 388|[0x8000e724]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80002ba0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002ba4]:csrrs a7, fflags, zero<br> [0x80002ba8]:fsw fa2, 1072(a5)<br>  |
| 389|[0x8000e72c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002bbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002bc0]:csrrs a7, fflags, zero<br> [0x80002bc4]:fsw fa2, 1080(a5)<br>  |
| 390|[0x8000e734]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80002bd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002bdc]:csrrs a7, fflags, zero<br> [0x80002be0]:fsw fa2, 1088(a5)<br>  |
| 391|[0x8000e73c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002bf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002bf8]:csrrs a7, fflags, zero<br> [0x80002bfc]:fsw fa2, 1096(a5)<br>  |
| 392|[0x8000e744]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80002c10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002c14]:csrrs a7, fflags, zero<br> [0x80002c18]:fsw fa2, 1104(a5)<br>  |
| 393|[0x8000e74c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002c2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002c30]:csrrs a7, fflags, zero<br> [0x80002c34]:fsw fa2, 1112(a5)<br>  |
| 394|[0x8000e754]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80002c48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002c4c]:csrrs a7, fflags, zero<br> [0x80002c50]:fsw fa2, 1120(a5)<br>  |
| 395|[0x8000e75c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002c64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002c68]:csrrs a7, fflags, zero<br> [0x80002c6c]:fsw fa2, 1128(a5)<br>  |
| 396|[0x8000e764]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x80002c80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002c84]:csrrs a7, fflags, zero<br> [0x80002c88]:fsw fa2, 1136(a5)<br>  |
| 397|[0x8000e76c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002c9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002ca0]:csrrs a7, fflags, zero<br> [0x80002ca4]:fsw fa2, 1144(a5)<br>  |
| 398|[0x8000e774]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80002cb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002cbc]:csrrs a7, fflags, zero<br> [0x80002cc0]:fsw fa2, 1152(a5)<br>  |
| 399|[0x8000e77c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002cd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002cd8]:csrrs a7, fflags, zero<br> [0x80002cdc]:fsw fa2, 1160(a5)<br>  |
| 400|[0x8000e784]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80002cf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002cf4]:csrrs a7, fflags, zero<br> [0x80002cf8]:fsw fa2, 1168(a5)<br>  |
| 401|[0x8000e78c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002d0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d10]:csrrs a7, fflags, zero<br> [0x80002d14]:fsw fa2, 1176(a5)<br>  |
| 402|[0x8000e794]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002d28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d2c]:csrrs a7, fflags, zero<br> [0x80002d30]:fsw fa2, 1184(a5)<br>  |
| 403|[0x8000e79c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002d44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d48]:csrrs a7, fflags, zero<br> [0x80002d4c]:fsw fa2, 1192(a5)<br>  |
| 404|[0x8000e7a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x80002d60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d64]:csrrs a7, fflags, zero<br> [0x80002d68]:fsw fa2, 1200(a5)<br>  |
| 405|[0x8000e7ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002d7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d80]:csrrs a7, fflags, zero<br> [0x80002d84]:fsw fa2, 1208(a5)<br>  |
| 406|[0x8000e7b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002d98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002d9c]:csrrs a7, fflags, zero<br> [0x80002da0]:fsw fa2, 1216(a5)<br>  |
| 407|[0x8000e7bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002db4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002db8]:csrrs a7, fflags, zero<br> [0x80002dbc]:fsw fa2, 1224(a5)<br>  |
| 408|[0x8000e7c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80002dd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002dd4]:csrrs a7, fflags, zero<br> [0x80002dd8]:fsw fa2, 1232(a5)<br>  |
| 409|[0x8000e7cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002dec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002df0]:csrrs a7, fflags, zero<br> [0x80002df4]:fsw fa2, 1240(a5)<br>  |
| 410|[0x8000e7d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002e08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e0c]:csrrs a7, fflags, zero<br> [0x80002e10]:fsw fa2, 1248(a5)<br>  |
| 411|[0x8000e7dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002e24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e28]:csrrs a7, fflags, zero<br> [0x80002e2c]:fsw fa2, 1256(a5)<br>  |
| 412|[0x8000e7e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80002e40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e44]:csrrs a7, fflags, zero<br> [0x80002e48]:fsw fa2, 1264(a5)<br>  |
| 413|[0x8000e7ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002e5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e60]:csrrs a7, fflags, zero<br> [0x80002e64]:fsw fa2, 1272(a5)<br>  |
| 414|[0x8000e7f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002e78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e7c]:csrrs a7, fflags, zero<br> [0x80002e80]:fsw fa2, 1280(a5)<br>  |
| 415|[0x8000e7fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002e94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002e98]:csrrs a7, fflags, zero<br> [0x80002e9c]:fsw fa2, 1288(a5)<br>  |
| 416|[0x8000e804]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80002eb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002eb4]:csrrs a7, fflags, zero<br> [0x80002eb8]:fsw fa2, 1296(a5)<br>  |
| 417|[0x8000e80c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002ecc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002ed0]:csrrs a7, fflags, zero<br> [0x80002ed4]:fsw fa2, 1304(a5)<br>  |
| 418|[0x8000e814]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002ee8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002eec]:csrrs a7, fflags, zero<br> [0x80002ef0]:fsw fa2, 1312(a5)<br>  |
| 419|[0x8000e81c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002f04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f08]:csrrs a7, fflags, zero<br> [0x80002f0c]:fsw fa2, 1320(a5)<br>  |
| 420|[0x8000e824]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80002f20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f24]:csrrs a7, fflags, zero<br> [0x80002f28]:fsw fa2, 1328(a5)<br>  |
| 421|[0x8000e82c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002f3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f40]:csrrs a7, fflags, zero<br> [0x80002f44]:fsw fa2, 1336(a5)<br>  |
| 422|[0x8000e834]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002f58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f5c]:csrrs a7, fflags, zero<br> [0x80002f60]:fsw fa2, 1344(a5)<br>  |
| 423|[0x8000e83c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002f74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f78]:csrrs a7, fflags, zero<br> [0x80002f7c]:fsw fa2, 1352(a5)<br>  |
| 424|[0x8000e844]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80002f90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002f94]:csrrs a7, fflags, zero<br> [0x80002f98]:fsw fa2, 1360(a5)<br>  |
| 425|[0x8000e84c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002fac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002fb0]:csrrs a7, fflags, zero<br> [0x80002fb4]:fsw fa2, 1368(a5)<br>  |
| 426|[0x8000e854]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002fc8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002fcc]:csrrs a7, fflags, zero<br> [0x80002fd0]:fsw fa2, 1376(a5)<br>  |
| 427|[0x8000e85c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002fe4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80002fe8]:csrrs a7, fflags, zero<br> [0x80002fec]:fsw fa2, 1384(a5)<br>  |
| 428|[0x8000e864]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003000]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003004]:csrrs a7, fflags, zero<br> [0x80003008]:fsw fa2, 1392(a5)<br>  |
| 429|[0x8000e86c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000301c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003020]:csrrs a7, fflags, zero<br> [0x80003024]:fsw fa2, 1400(a5)<br>  |
| 430|[0x8000e874]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003038]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000303c]:csrrs a7, fflags, zero<br> [0x80003040]:fsw fa2, 1408(a5)<br>  |
| 431|[0x8000e87c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003054]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003058]:csrrs a7, fflags, zero<br> [0x8000305c]:fsw fa2, 1416(a5)<br>  |
| 432|[0x8000e884]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003070]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003074]:csrrs a7, fflags, zero<br> [0x80003078]:fsw fa2, 1424(a5)<br>  |
| 433|[0x8000e88c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000308c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003090]:csrrs a7, fflags, zero<br> [0x80003094]:fsw fa2, 1432(a5)<br>  |
| 434|[0x8000e894]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x800030a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800030ac]:csrrs a7, fflags, zero<br> [0x800030b0]:fsw fa2, 1440(a5)<br>  |
| 435|[0x8000e89c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800030c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800030c8]:csrrs a7, fflags, zero<br> [0x800030cc]:fsw fa2, 1448(a5)<br>  |
| 436|[0x8000e8a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800030e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800030e4]:csrrs a7, fflags, zero<br> [0x800030e8]:fsw fa2, 1456(a5)<br>  |
| 437|[0x8000e8ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800030fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003100]:csrrs a7, fflags, zero<br> [0x80003104]:fsw fa2, 1464(a5)<br>  |
| 438|[0x8000e8b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003118]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000311c]:csrrs a7, fflags, zero<br> [0x80003120]:fsw fa2, 1472(a5)<br>  |
| 439|[0x8000e8bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003134]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003138]:csrrs a7, fflags, zero<br> [0x8000313c]:fsw fa2, 1480(a5)<br>  |
| 440|[0x8000e8c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003150]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003154]:csrrs a7, fflags, zero<br> [0x80003158]:fsw fa2, 1488(a5)<br>  |
| 441|[0x8000e8cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000316c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003170]:csrrs a7, fflags, zero<br> [0x80003174]:fsw fa2, 1496(a5)<br>  |
| 442|[0x8000e8d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003188]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000318c]:csrrs a7, fflags, zero<br> [0x80003190]:fsw fa2, 1504(a5)<br>  |
| 443|[0x8000e8dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800031a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800031a8]:csrrs a7, fflags, zero<br> [0x800031ac]:fsw fa2, 1512(a5)<br>  |
| 444|[0x8000e8e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800031c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800031c4]:csrrs a7, fflags, zero<br> [0x800031c8]:fsw fa2, 1520(a5)<br>  |
| 445|[0x8000e8ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800031dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800031e0]:csrrs a7, fflags, zero<br> [0x800031e4]:fsw fa2, 1528(a5)<br>  |
| 446|[0x8000e8f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x800031f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800031fc]:csrrs a7, fflags, zero<br> [0x80003200]:fsw fa2, 1536(a5)<br>  |
| 447|[0x8000e8fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003214]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003218]:csrrs a7, fflags, zero<br> [0x8000321c]:fsw fa2, 1544(a5)<br>  |
| 448|[0x8000e904]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80003230]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003234]:csrrs a7, fflags, zero<br> [0x80003238]:fsw fa2, 1552(a5)<br>  |
| 449|[0x8000e90c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000324c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003250]:csrrs a7, fflags, zero<br> [0x80003254]:fsw fa2, 1560(a5)<br>  |
| 450|[0x8000e914]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80003268]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000326c]:csrrs a7, fflags, zero<br> [0x80003270]:fsw fa2, 1568(a5)<br>  |
| 451|[0x8000e91c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003284]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003288]:csrrs a7, fflags, zero<br> [0x8000328c]:fsw fa2, 1576(a5)<br>  |
| 452|[0x8000e924]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x800032a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800032a4]:csrrs a7, fflags, zero<br> [0x800032a8]:fsw fa2, 1584(a5)<br>  |
| 453|[0x8000e92c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800032bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800032c0]:csrrs a7, fflags, zero<br> [0x800032c4]:fsw fa2, 1592(a5)<br>  |
| 454|[0x8000e934]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x800032d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800032dc]:csrrs a7, fflags, zero<br> [0x800032e0]:fsw fa2, 1600(a5)<br>  |
| 455|[0x8000e93c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800032f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800032f8]:csrrs a7, fflags, zero<br> [0x800032fc]:fsw fa2, 1608(a5)<br>  |
| 456|[0x8000e944]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80003310]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003314]:csrrs a7, fflags, zero<br> [0x80003318]:fsw fa2, 1616(a5)<br>  |
| 457|[0x8000e94c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000332c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003330]:csrrs a7, fflags, zero<br> [0x80003334]:fsw fa2, 1624(a5)<br>  |
| 458|[0x8000e954]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80003348]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000334c]:csrrs a7, fflags, zero<br> [0x80003350]:fsw fa2, 1632(a5)<br>  |
| 459|[0x8000e95c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003364]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003368]:csrrs a7, fflags, zero<br> [0x8000336c]:fsw fa2, 1640(a5)<br>  |
| 460|[0x8000e964]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80003380]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003384]:csrrs a7, fflags, zero<br> [0x80003388]:fsw fa2, 1648(a5)<br>  |
| 461|[0x8000e96c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000339c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800033a0]:csrrs a7, fflags, zero<br> [0x800033a4]:fsw fa2, 1656(a5)<br>  |
| 462|[0x8000e974]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x800033b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800033bc]:csrrs a7, fflags, zero<br> [0x800033c0]:fsw fa2, 1664(a5)<br>  |
| 463|[0x8000e97c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800033d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800033d8]:csrrs a7, fflags, zero<br> [0x800033dc]:fsw fa2, 1672(a5)<br>  |
| 464|[0x8000e984]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x800033f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800033f4]:csrrs a7, fflags, zero<br> [0x800033f8]:fsw fa2, 1680(a5)<br>  |
| 465|[0x8000e98c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000340c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003410]:csrrs a7, fflags, zero<br> [0x80003414]:fsw fa2, 1688(a5)<br>  |
| 466|[0x8000e994]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80003428]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000342c]:csrrs a7, fflags, zero<br> [0x80003430]:fsw fa2, 1696(a5)<br>  |
| 467|[0x8000e99c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003444]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003448]:csrrs a7, fflags, zero<br> [0x8000344c]:fsw fa2, 1704(a5)<br>  |
| 468|[0x8000e9a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80003460]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003464]:csrrs a7, fflags, zero<br> [0x80003468]:fsw fa2, 1712(a5)<br>  |
| 469|[0x8000e9ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000347c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003480]:csrrs a7, fflags, zero<br> [0x80003484]:fsw fa2, 1720(a5)<br>  |
| 470|[0x8000e9b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80003498]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000349c]:csrrs a7, fflags, zero<br> [0x800034a0]:fsw fa2, 1728(a5)<br>  |
| 471|[0x8000e9bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800034b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800034b8]:csrrs a7, fflags, zero<br> [0x800034bc]:fsw fa2, 1736(a5)<br>  |
| 472|[0x8000e9c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x800034d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800034d4]:csrrs a7, fflags, zero<br> [0x800034d8]:fsw fa2, 1744(a5)<br>  |
| 473|[0x8000e9cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800034ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800034f0]:csrrs a7, fflags, zero<br> [0x800034f4]:fsw fa2, 1752(a5)<br>  |
| 474|[0x8000e9d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80003508]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000350c]:csrrs a7, fflags, zero<br> [0x80003510]:fsw fa2, 1760(a5)<br>  |
| 475|[0x8000e9dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003524]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003528]:csrrs a7, fflags, zero<br> [0x8000352c]:fsw fa2, 1768(a5)<br>  |
| 476|[0x8000e9e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80003540]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003544]:csrrs a7, fflags, zero<br> [0x80003548]:fsw fa2, 1776(a5)<br>  |
| 477|[0x8000e9ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000355c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003560]:csrrs a7, fflags, zero<br> [0x80003564]:fsw fa2, 1784(a5)<br>  |
| 478|[0x8000e9f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80003578]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000357c]:csrrs a7, fflags, zero<br> [0x80003580]:fsw fa2, 1792(a5)<br>  |
| 479|[0x8000e9fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003594]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003598]:csrrs a7, fflags, zero<br> [0x8000359c]:fsw fa2, 1800(a5)<br>  |
| 480|[0x8000ea04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x800035b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800035b4]:csrrs a7, fflags, zero<br> [0x800035b8]:fsw fa2, 1808(a5)<br>  |
| 481|[0x8000ea0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800035cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800035d0]:csrrs a7, fflags, zero<br> [0x800035d4]:fsw fa2, 1816(a5)<br>  |
| 482|[0x8000ea14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x800035e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800035ec]:csrrs a7, fflags, zero<br> [0x800035f0]:fsw fa2, 1824(a5)<br>  |
| 483|[0x8000ea1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003604]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003608]:csrrs a7, fflags, zero<br> [0x8000360c]:fsw fa2, 1832(a5)<br>  |
| 484|[0x8000ea24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80003620]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003624]:csrrs a7, fflags, zero<br> [0x80003628]:fsw fa2, 1840(a5)<br>  |
| 485|[0x8000ea2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000363c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003640]:csrrs a7, fflags, zero<br> [0x80003644]:fsw fa2, 1848(a5)<br>  |
| 486|[0x8000ea34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80003658]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000365c]:csrrs a7, fflags, zero<br> [0x80003660]:fsw fa2, 1856(a5)<br>  |
| 487|[0x8000ea3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003674]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003678]:csrrs a7, fflags, zero<br> [0x8000367c]:fsw fa2, 1864(a5)<br>  |
| 488|[0x8000ea44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80003690]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003694]:csrrs a7, fflags, zero<br> [0x80003698]:fsw fa2, 1872(a5)<br>  |
| 489|[0x8000ea4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800036ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800036b0]:csrrs a7, fflags, zero<br> [0x800036b4]:fsw fa2, 1880(a5)<br>  |
| 490|[0x8000ea54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x800036c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800036cc]:csrrs a7, fflags, zero<br> [0x800036d0]:fsw fa2, 1888(a5)<br>  |
| 491|[0x8000ea5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800036e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800036e8]:csrrs a7, fflags, zero<br> [0x800036ec]:fsw fa2, 1896(a5)<br>  |
| 492|[0x8000ea64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80003700]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003704]:csrrs a7, fflags, zero<br> [0x80003708]:fsw fa2, 1904(a5)<br>  |
| 493|[0x8000ea6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000371c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003720]:csrrs a7, fflags, zero<br> [0x80003724]:fsw fa2, 1912(a5)<br>  |
| 494|[0x8000ea74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80003738]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000373c]:csrrs a7, fflags, zero<br> [0x80003740]:fsw fa2, 1920(a5)<br>  |
| 495|[0x8000ea7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003754]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003758]:csrrs a7, fflags, zero<br> [0x8000375c]:fsw fa2, 1928(a5)<br>  |
| 496|[0x8000ea84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80003770]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003774]:csrrs a7, fflags, zero<br> [0x80003778]:fsw fa2, 1936(a5)<br>  |
| 497|[0x8000ea8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000378c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003790]:csrrs a7, fflags, zero<br> [0x80003794]:fsw fa2, 1944(a5)<br>  |
| 498|[0x8000ea94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x800037a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800037ac]:csrrs a7, fflags, zero<br> [0x800037b0]:fsw fa2, 1952(a5)<br>  |
| 499|[0x8000ea9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800037c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800037c8]:csrrs a7, fflags, zero<br> [0x800037cc]:fsw fa2, 1960(a5)<br>  |
| 500|[0x8000eaa4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x800037e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800037e4]:csrrs a7, fflags, zero<br> [0x800037e8]:fsw fa2, 1968(a5)<br>  |
| 501|[0x8000eaac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800037fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003800]:csrrs a7, fflags, zero<br> [0x80003804]:fsw fa2, 1976(a5)<br>  |
| 502|[0x8000eab4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80003818]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000381c]:csrrs a7, fflags, zero<br> [0x80003820]:fsw fa2, 1984(a5)<br>  |
| 503|[0x8000eabc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003834]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003838]:csrrs a7, fflags, zero<br> [0x8000383c]:fsw fa2, 1992(a5)<br>  |
| 504|[0x8000eac4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80003850]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003854]:csrrs a7, fflags, zero<br> [0x80003858]:fsw fa2, 2000(a5)<br>  |
| 505|[0x8000eacc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000386c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003870]:csrrs a7, fflags, zero<br> [0x80003874]:fsw fa2, 2008(a5)<br>  |
| 506|[0x8000ead4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x80003888]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000388c]:csrrs a7, fflags, zero<br> [0x80003890]:fsw fa2, 2016(a5)<br>  |
| 507|[0x8000eadc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800038a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800038a8]:csrrs a7, fflags, zero<br> [0x800038ac]:fsw fa2, 2024(a5)<br>  |
| 508|[0x8000eae4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x800038cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800038d0]:csrrs a7, fflags, zero<br> [0x800038d4]:fsw fa2, 0(a5)<br>     |
| 509|[0x8000eaec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800038e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800038ec]:csrrs a7, fflags, zero<br> [0x800038f0]:fsw fa2, 8(a5)<br>     |
| 510|[0x8000eaf4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80003904]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003908]:csrrs a7, fflags, zero<br> [0x8000390c]:fsw fa2, 16(a5)<br>    |
| 511|[0x8000eafc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003920]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003924]:csrrs a7, fflags, zero<br> [0x80003928]:fsw fa2, 24(a5)<br>    |
| 512|[0x8000eb04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000393c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003940]:csrrs a7, fflags, zero<br> [0x80003944]:fsw fa2, 32(a5)<br>    |
| 513|[0x8000eb0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003958]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000395c]:csrrs a7, fflags, zero<br> [0x80003960]:fsw fa2, 40(a5)<br>    |
| 514|[0x8000eb14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x80003974]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003978]:csrrs a7, fflags, zero<br> [0x8000397c]:fsw fa2, 48(a5)<br>    |
| 515|[0x8000eb1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003990]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003994]:csrrs a7, fflags, zero<br> [0x80003998]:fsw fa2, 56(a5)<br>    |
| 516|[0x8000eb24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x800039ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800039b0]:csrrs a7, fflags, zero<br> [0x800039b4]:fsw fa2, 64(a5)<br>    |
| 517|[0x8000eb2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800039c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800039cc]:csrrs a7, fflags, zero<br> [0x800039d0]:fsw fa2, 72(a5)<br>    |
| 518|[0x8000eb34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x800039e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800039e8]:csrrs a7, fflags, zero<br> [0x800039ec]:fsw fa2, 80(a5)<br>    |
| 519|[0x8000eb3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003a00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a04]:csrrs a7, fflags, zero<br> [0x80003a08]:fsw fa2, 88(a5)<br>    |
| 520|[0x8000eb44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003a1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a20]:csrrs a7, fflags, zero<br> [0x80003a24]:fsw fa2, 96(a5)<br>    |
| 521|[0x8000eb4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003a38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a3c]:csrrs a7, fflags, zero<br> [0x80003a40]:fsw fa2, 104(a5)<br>   |
| 522|[0x8000eb54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80003a54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a58]:csrrs a7, fflags, zero<br> [0x80003a5c]:fsw fa2, 112(a5)<br>   |
| 523|[0x8000eb5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003a70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a74]:csrrs a7, fflags, zero<br> [0x80003a78]:fsw fa2, 120(a5)<br>   |
| 524|[0x8000eb64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003a8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003a90]:csrrs a7, fflags, zero<br> [0x80003a94]:fsw fa2, 128(a5)<br>   |
| 525|[0x8000eb6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003aa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003aac]:csrrs a7, fflags, zero<br> [0x80003ab0]:fsw fa2, 136(a5)<br>   |
| 526|[0x8000eb74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003ac4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ac8]:csrrs a7, fflags, zero<br> [0x80003acc]:fsw fa2, 144(a5)<br>   |
| 527|[0x8000eb7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003ae0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ae4]:csrrs a7, fflags, zero<br> [0x80003ae8]:fsw fa2, 152(a5)<br>   |
| 528|[0x8000eb84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003afc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b00]:csrrs a7, fflags, zero<br> [0x80003b04]:fsw fa2, 160(a5)<br>   |
| 529|[0x8000eb8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003b18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b1c]:csrrs a7, fflags, zero<br> [0x80003b20]:fsw fa2, 168(a5)<br>   |
| 530|[0x8000eb94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003b34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b38]:csrrs a7, fflags, zero<br> [0x80003b3c]:fsw fa2, 176(a5)<br>   |
| 531|[0x8000eb9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003b50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b54]:csrrs a7, fflags, zero<br> [0x80003b58]:fsw fa2, 184(a5)<br>   |
| 532|[0x8000eba4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003b6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b70]:csrrs a7, fflags, zero<br> [0x80003b74]:fsw fa2, 192(a5)<br>   |
| 533|[0x8000ebac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003b88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003b8c]:csrrs a7, fflags, zero<br> [0x80003b90]:fsw fa2, 200(a5)<br>   |
| 534|[0x8000ebb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003ba4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ba8]:csrrs a7, fflags, zero<br> [0x80003bac]:fsw fa2, 208(a5)<br>   |
| 535|[0x8000ebbc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003bc0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003bc4]:csrrs a7, fflags, zero<br> [0x80003bc8]:fsw fa2, 216(a5)<br>   |
| 536|[0x8000ebc4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003bdc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003be0]:csrrs a7, fflags, zero<br> [0x80003be4]:fsw fa2, 224(a5)<br>   |
| 537|[0x8000ebcc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003bf8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003bfc]:csrrs a7, fflags, zero<br> [0x80003c00]:fsw fa2, 232(a5)<br>   |
| 538|[0x8000ebd4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003c14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003c18]:csrrs a7, fflags, zero<br> [0x80003c1c]:fsw fa2, 240(a5)<br>   |
| 539|[0x8000ebdc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003c30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003c34]:csrrs a7, fflags, zero<br> [0x80003c38]:fsw fa2, 248(a5)<br>   |
| 540|[0x8000ebe4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003c4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003c50]:csrrs a7, fflags, zero<br> [0x80003c54]:fsw fa2, 256(a5)<br>   |
| 541|[0x8000ebec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003c68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003c6c]:csrrs a7, fflags, zero<br> [0x80003c70]:fsw fa2, 264(a5)<br>   |
| 542|[0x8000ebf4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003c84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003c88]:csrrs a7, fflags, zero<br> [0x80003c8c]:fsw fa2, 272(a5)<br>   |
| 543|[0x8000ebfc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003ca0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ca4]:csrrs a7, fflags, zero<br> [0x80003ca8]:fsw fa2, 280(a5)<br>   |
| 544|[0x8000ec04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003cbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003cc0]:csrrs a7, fflags, zero<br> [0x80003cc4]:fsw fa2, 288(a5)<br>   |
| 545|[0x8000ec0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003cd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003cdc]:csrrs a7, fflags, zero<br> [0x80003ce0]:fsw fa2, 296(a5)<br>   |
| 546|[0x8000ec14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003cf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003cf8]:csrrs a7, fflags, zero<br> [0x80003cfc]:fsw fa2, 304(a5)<br>   |
| 547|[0x8000ec1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003d10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003d14]:csrrs a7, fflags, zero<br> [0x80003d18]:fsw fa2, 312(a5)<br>   |
| 548|[0x8000ec24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003d2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003d30]:csrrs a7, fflags, zero<br> [0x80003d34]:fsw fa2, 320(a5)<br>   |
| 549|[0x8000ec2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003d48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003d4c]:csrrs a7, fflags, zero<br> [0x80003d50]:fsw fa2, 328(a5)<br>   |
| 550|[0x8000ec34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003d64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003d68]:csrrs a7, fflags, zero<br> [0x80003d6c]:fsw fa2, 336(a5)<br>   |
| 551|[0x8000ec3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003d80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003d84]:csrrs a7, fflags, zero<br> [0x80003d88]:fsw fa2, 344(a5)<br>   |
| 552|[0x8000ec44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003d9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003da0]:csrrs a7, fflags, zero<br> [0x80003da4]:fsw fa2, 352(a5)<br>   |
| 553|[0x8000ec4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003db8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003dbc]:csrrs a7, fflags, zero<br> [0x80003dc0]:fsw fa2, 360(a5)<br>   |
| 554|[0x8000ec54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003dd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003dd8]:csrrs a7, fflags, zero<br> [0x80003ddc]:fsw fa2, 368(a5)<br>   |
| 555|[0x8000ec5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80003df0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003df4]:csrrs a7, fflags, zero<br> [0x80003df8]:fsw fa2, 376(a5)<br>   |
| 556|[0x8000ec64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003e0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e10]:csrrs a7, fflags, zero<br> [0x80003e14]:fsw fa2, 384(a5)<br>   |
| 557|[0x8000ec6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80003e28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e2c]:csrrs a7, fflags, zero<br> [0x80003e30]:fsw fa2, 392(a5)<br>   |
| 558|[0x8000ec74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003e44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e48]:csrrs a7, fflags, zero<br> [0x80003e4c]:fsw fa2, 400(a5)<br>   |
| 559|[0x8000ec7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80003e60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e64]:csrrs a7, fflags, zero<br> [0x80003e68]:fsw fa2, 408(a5)<br>   |
| 560|[0x8000ec84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003e7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e80]:csrrs a7, fflags, zero<br> [0x80003e84]:fsw fa2, 416(a5)<br>   |
| 561|[0x8000ec8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80003e98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003e9c]:csrrs a7, fflags, zero<br> [0x80003ea0]:fsw fa2, 424(a5)<br>   |
| 562|[0x8000ec94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003eb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003eb8]:csrrs a7, fflags, zero<br> [0x80003ebc]:fsw fa2, 432(a5)<br>   |
| 563|[0x8000ec9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80003ed0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ed4]:csrrs a7, fflags, zero<br> [0x80003ed8]:fsw fa2, 440(a5)<br>   |
| 564|[0x8000eca4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003eec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003ef0]:csrrs a7, fflags, zero<br> [0x80003ef4]:fsw fa2, 448(a5)<br>   |
| 565|[0x8000ecac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80003f08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f0c]:csrrs a7, fflags, zero<br> [0x80003f10]:fsw fa2, 456(a5)<br>   |
| 566|[0x8000ecb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003f24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f28]:csrrs a7, fflags, zero<br> [0x80003f2c]:fsw fa2, 464(a5)<br>   |
| 567|[0x8000ecbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80003f40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f44]:csrrs a7, fflags, zero<br> [0x80003f48]:fsw fa2, 472(a5)<br>   |
| 568|[0x8000ecc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003f5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f60]:csrrs a7, fflags, zero<br> [0x80003f64]:fsw fa2, 480(a5)<br>   |
| 569|[0x8000eccc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80003f78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f7c]:csrrs a7, fflags, zero<br> [0x80003f80]:fsw fa2, 488(a5)<br>   |
| 570|[0x8000ecd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003f94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003f98]:csrrs a7, fflags, zero<br> [0x80003f9c]:fsw fa2, 496(a5)<br>   |
| 571|[0x8000ecdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80003fb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003fb4]:csrrs a7, fflags, zero<br> [0x80003fb8]:fsw fa2, 504(a5)<br>   |
| 572|[0x8000ece4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80003fcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003fd0]:csrrs a7, fflags, zero<br> [0x80003fd4]:fsw fa2, 512(a5)<br>   |
| 573|[0x8000ecec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80003fe8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80003fec]:csrrs a7, fflags, zero<br> [0x80003ff0]:fsw fa2, 520(a5)<br>   |
| 574|[0x8000ecf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004004]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004008]:csrrs a7, fflags, zero<br> [0x8000400c]:fsw fa2, 528(a5)<br>   |
| 575|[0x8000ecfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80004020]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004024]:csrrs a7, fflags, zero<br> [0x80004028]:fsw fa2, 536(a5)<br>   |
| 576|[0x8000ed04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000403c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004040]:csrrs a7, fflags, zero<br> [0x80004044]:fsw fa2, 544(a5)<br>   |
| 577|[0x8000ed0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004058]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000405c]:csrrs a7, fflags, zero<br> [0x80004060]:fsw fa2, 552(a5)<br>   |
| 578|[0x8000ed14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004074]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004078]:csrrs a7, fflags, zero<br> [0x8000407c]:fsw fa2, 560(a5)<br>   |
| 579|[0x8000ed1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80004090]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004094]:csrrs a7, fflags, zero<br> [0x80004098]:fsw fa2, 568(a5)<br>   |
| 580|[0x8000ed24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800040ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800040b0]:csrrs a7, fflags, zero<br> [0x800040b4]:fsw fa2, 576(a5)<br>   |
| 581|[0x8000ed2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x800040c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800040cc]:csrrs a7, fflags, zero<br> [0x800040d0]:fsw fa2, 584(a5)<br>   |
| 582|[0x8000ed34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800040e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800040e8]:csrrs a7, fflags, zero<br> [0x800040ec]:fsw fa2, 592(a5)<br>   |
| 583|[0x8000ed3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80004100]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004104]:csrrs a7, fflags, zero<br> [0x80004108]:fsw fa2, 600(a5)<br>   |
| 584|[0x8000ed44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000411c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004120]:csrrs a7, fflags, zero<br> [0x80004124]:fsw fa2, 608(a5)<br>   |
| 585|[0x8000ed4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80004138]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000413c]:csrrs a7, fflags, zero<br> [0x80004140]:fsw fa2, 616(a5)<br>   |
| 586|[0x8000ed54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004154]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004158]:csrrs a7, fflags, zero<br> [0x8000415c]:fsw fa2, 624(a5)<br>   |
| 587|[0x8000ed5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80004170]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004174]:csrrs a7, fflags, zero<br> [0x80004178]:fsw fa2, 632(a5)<br>   |
| 588|[0x8000ed64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000418c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004190]:csrrs a7, fflags, zero<br> [0x80004194]:fsw fa2, 640(a5)<br>   |
| 589|[0x8000ed6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x800041a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800041ac]:csrrs a7, fflags, zero<br> [0x800041b0]:fsw fa2, 648(a5)<br>   |
| 590|[0x8000ed74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800041c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800041c8]:csrrs a7, fflags, zero<br> [0x800041cc]:fsw fa2, 656(a5)<br>   |
| 591|[0x8000ed7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x800041e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800041e4]:csrrs a7, fflags, zero<br> [0x800041e8]:fsw fa2, 664(a5)<br>   |
| 592|[0x8000ed84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800041fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004200]:csrrs a7, fflags, zero<br> [0x80004204]:fsw fa2, 672(a5)<br>   |
| 593|[0x8000ed8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80004218]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000421c]:csrrs a7, fflags, zero<br> [0x80004220]:fsw fa2, 680(a5)<br>   |
| 594|[0x8000ed94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004234]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004238]:csrrs a7, fflags, zero<br> [0x8000423c]:fsw fa2, 688(a5)<br>   |
| 595|[0x8000ed9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80004250]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004254]:csrrs a7, fflags, zero<br> [0x80004258]:fsw fa2, 696(a5)<br>   |
| 596|[0x8000eda4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000426c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004270]:csrrs a7, fflags, zero<br> [0x80004274]:fsw fa2, 704(a5)<br>   |
| 597|[0x8000edac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80004288]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000428c]:csrrs a7, fflags, zero<br> [0x80004290]:fsw fa2, 712(a5)<br>   |
| 598|[0x8000edb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800042a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800042a8]:csrrs a7, fflags, zero<br> [0x800042ac]:fsw fa2, 720(a5)<br>   |
| 599|[0x8000edbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x800042c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800042c4]:csrrs a7, fflags, zero<br> [0x800042c8]:fsw fa2, 728(a5)<br>   |
| 600|[0x8000edc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800042dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800042e0]:csrrs a7, fflags, zero<br> [0x800042e4]:fsw fa2, 736(a5)<br>   |
| 601|[0x8000edcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x800042f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800042fc]:csrrs a7, fflags, zero<br> [0x80004300]:fsw fa2, 744(a5)<br>   |
| 602|[0x8000edd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004314]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004318]:csrrs a7, fflags, zero<br> [0x8000431c]:fsw fa2, 752(a5)<br>   |
| 603|[0x8000eddc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80004330]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004334]:csrrs a7, fflags, zero<br> [0x80004338]:fsw fa2, 760(a5)<br>   |
| 604|[0x8000ede4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000434c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004350]:csrrs a7, fflags, zero<br> [0x80004354]:fsw fa2, 768(a5)<br>   |
| 605|[0x8000edec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80004368]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000436c]:csrrs a7, fflags, zero<br> [0x80004370]:fsw fa2, 776(a5)<br>   |
| 606|[0x8000edf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004384]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004388]:csrrs a7, fflags, zero<br> [0x8000438c]:fsw fa2, 784(a5)<br>   |
| 607|[0x8000edfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x800043a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800043a4]:csrrs a7, fflags, zero<br> [0x800043a8]:fsw fa2, 792(a5)<br>   |
| 608|[0x8000ee04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800043bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800043c0]:csrrs a7, fflags, zero<br> [0x800043c4]:fsw fa2, 800(a5)<br>   |
| 609|[0x8000ee0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x800043d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800043dc]:csrrs a7, fflags, zero<br> [0x800043e0]:fsw fa2, 808(a5)<br>   |
| 610|[0x8000ee14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800043f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800043f8]:csrrs a7, fflags, zero<br> [0x800043fc]:fsw fa2, 816(a5)<br>   |
| 611|[0x8000ee1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80004410]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004414]:csrrs a7, fflags, zero<br> [0x80004418]:fsw fa2, 824(a5)<br>   |
| 612|[0x8000ee24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000442c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004430]:csrrs a7, fflags, zero<br> [0x80004434]:fsw fa2, 832(a5)<br>   |
| 613|[0x8000ee2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80004448]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000444c]:csrrs a7, fflags, zero<br> [0x80004450]:fsw fa2, 840(a5)<br>   |
| 614|[0x8000ee34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004464]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004468]:csrrs a7, fflags, zero<br> [0x8000446c]:fsw fa2, 848(a5)<br>   |
| 615|[0x8000ee3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80004480]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004484]:csrrs a7, fflags, zero<br> [0x80004488]:fsw fa2, 856(a5)<br>   |
| 616|[0x8000ee44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000449c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800044a0]:csrrs a7, fflags, zero<br> [0x800044a4]:fsw fa2, 864(a5)<br>   |
| 617|[0x8000ee4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x800044b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800044bc]:csrrs a7, fflags, zero<br> [0x800044c0]:fsw fa2, 872(a5)<br>   |
| 618|[0x8000ee54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800044d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800044d8]:csrrs a7, fflags, zero<br> [0x800044dc]:fsw fa2, 880(a5)<br>   |
| 619|[0x8000ee5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x800044f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800044f4]:csrrs a7, fflags, zero<br> [0x800044f8]:fsw fa2, 888(a5)<br>   |
| 620|[0x8000ee64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000450c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004510]:csrrs a7, fflags, zero<br> [0x80004514]:fsw fa2, 896(a5)<br>   |
| 621|[0x8000ee6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80004528]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000452c]:csrrs a7, fflags, zero<br> [0x80004530]:fsw fa2, 904(a5)<br>   |
| 622|[0x8000ee74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004544]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004548]:csrrs a7, fflags, zero<br> [0x8000454c]:fsw fa2, 912(a5)<br>   |
| 623|[0x8000ee7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004560]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004564]:csrrs a7, fflags, zero<br> [0x80004568]:fsw fa2, 920(a5)<br>   |
| 624|[0x8000ee84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000457c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004580]:csrrs a7, fflags, zero<br> [0x80004584]:fsw fa2, 928(a5)<br>   |
| 625|[0x8000ee8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x80004598]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000459c]:csrrs a7, fflags, zero<br> [0x800045a0]:fsw fa2, 936(a5)<br>   |
| 626|[0x8000ee94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800045b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800045b8]:csrrs a7, fflags, zero<br> [0x800045bc]:fsw fa2, 944(a5)<br>   |
| 627|[0x8000ee9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x800045d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800045d4]:csrrs a7, fflags, zero<br> [0x800045d8]:fsw fa2, 952(a5)<br>   |
| 628|[0x8000eea4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800045ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800045f0]:csrrs a7, fflags, zero<br> [0x800045f4]:fsw fa2, 960(a5)<br>   |
| 629|[0x8000eeac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80004608]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000460c]:csrrs a7, fflags, zero<br> [0x80004610]:fsw fa2, 968(a5)<br>   |
| 630|[0x8000eeb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004624]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004628]:csrrs a7, fflags, zero<br> [0x8000462c]:fsw fa2, 976(a5)<br>   |
| 631|[0x8000eebc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004640]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004644]:csrrs a7, fflags, zero<br> [0x80004648]:fsw fa2, 984(a5)<br>   |
| 632|[0x8000eec4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000465c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004660]:csrrs a7, fflags, zero<br> [0x80004664]:fsw fa2, 992(a5)<br>   |
| 633|[0x8000eecc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80004678]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000467c]:csrrs a7, fflags, zero<br> [0x80004680]:fsw fa2, 1000(a5)<br>  |
| 634|[0x8000eed4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004694]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004698]:csrrs a7, fflags, zero<br> [0x8000469c]:fsw fa2, 1008(a5)<br>  |
| 635|[0x8000eedc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x800046b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800046b4]:csrrs a7, fflags, zero<br> [0x800046b8]:fsw fa2, 1016(a5)<br>  |
| 636|[0x8000eee4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800046cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800046d0]:csrrs a7, fflags, zero<br> [0x800046d4]:fsw fa2, 1024(a5)<br>  |
| 637|[0x8000eeec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800046e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800046ec]:csrrs a7, fflags, zero<br> [0x800046f0]:fsw fa2, 1032(a5)<br>  |
| 638|[0x8000eef4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004704]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004708]:csrrs a7, fflags, zero<br> [0x8000470c]:fsw fa2, 1040(a5)<br>  |
| 639|[0x8000eefc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004720]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004724]:csrrs a7, fflags, zero<br> [0x80004728]:fsw fa2, 1048(a5)<br>  |
| 640|[0x8000ef04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000473c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004740]:csrrs a7, fflags, zero<br> [0x80004744]:fsw fa2, 1056(a5)<br>  |
| 641|[0x8000ef0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004758]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000475c]:csrrs a7, fflags, zero<br> [0x80004760]:fsw fa2, 1064(a5)<br>  |
| 642|[0x8000ef14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004774]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004778]:csrrs a7, fflags, zero<br> [0x8000477c]:fsw fa2, 1072(a5)<br>  |
| 643|[0x8000ef1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004790]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004794]:csrrs a7, fflags, zero<br> [0x80004798]:fsw fa2, 1080(a5)<br>  |
| 644|[0x8000ef24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800047ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800047b0]:csrrs a7, fflags, zero<br> [0x800047b4]:fsw fa2, 1088(a5)<br>  |
| 645|[0x8000ef2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800047c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800047cc]:csrrs a7, fflags, zero<br> [0x800047d0]:fsw fa2, 1096(a5)<br>  |
| 646|[0x8000ef34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800047e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800047e8]:csrrs a7, fflags, zero<br> [0x800047ec]:fsw fa2, 1104(a5)<br>  |
| 647|[0x8000ef3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004800]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004804]:csrrs a7, fflags, zero<br> [0x80004808]:fsw fa2, 1112(a5)<br>  |
| 648|[0x8000ef44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000481c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004820]:csrrs a7, fflags, zero<br> [0x80004824]:fsw fa2, 1120(a5)<br>  |
| 649|[0x8000ef4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004838]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000483c]:csrrs a7, fflags, zero<br> [0x80004840]:fsw fa2, 1128(a5)<br>  |
| 650|[0x8000ef54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004854]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004858]:csrrs a7, fflags, zero<br> [0x8000485c]:fsw fa2, 1136(a5)<br>  |
| 651|[0x8000ef5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004870]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004874]:csrrs a7, fflags, zero<br> [0x80004878]:fsw fa2, 1144(a5)<br>  |
| 652|[0x8000ef64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000488c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004890]:csrrs a7, fflags, zero<br> [0x80004894]:fsw fa2, 1152(a5)<br>  |
| 653|[0x8000ef6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800048a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800048ac]:csrrs a7, fflags, zero<br> [0x800048b0]:fsw fa2, 1160(a5)<br>  |
| 654|[0x8000ef74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800048c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800048c8]:csrrs a7, fflags, zero<br> [0x800048cc]:fsw fa2, 1168(a5)<br>  |
| 655|[0x8000ef7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x800048e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800048e4]:csrrs a7, fflags, zero<br> [0x800048e8]:fsw fa2, 1176(a5)<br>  |
| 656|[0x8000ef84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800048fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004900]:csrrs a7, fflags, zero<br> [0x80004904]:fsw fa2, 1184(a5)<br>  |
| 657|[0x8000ef8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004918]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000491c]:csrrs a7, fflags, zero<br> [0x80004920]:fsw fa2, 1192(a5)<br>  |
| 658|[0x8000ef94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004934]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004938]:csrrs a7, fflags, zero<br> [0x8000493c]:fsw fa2, 1200(a5)<br>  |
| 659|[0x8000ef9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004950]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004954]:csrrs a7, fflags, zero<br> [0x80004958]:fsw fa2, 1208(a5)<br>  |
| 660|[0x8000efa4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000496c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004970]:csrrs a7, fflags, zero<br> [0x80004974]:fsw fa2, 1216(a5)<br>  |
| 661|[0x8000efac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80004988]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000498c]:csrrs a7, fflags, zero<br> [0x80004990]:fsw fa2, 1224(a5)<br>  |
| 662|[0x8000efb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800049a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800049a8]:csrrs a7, fflags, zero<br> [0x800049ac]:fsw fa2, 1232(a5)<br>  |
| 663|[0x8000efbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x800049c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800049c4]:csrrs a7, fflags, zero<br> [0x800049c8]:fsw fa2, 1240(a5)<br>  |
| 664|[0x8000efc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800049dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800049e0]:csrrs a7, fflags, zero<br> [0x800049e4]:fsw fa2, 1248(a5)<br>  |
| 665|[0x8000efcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800049f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800049fc]:csrrs a7, fflags, zero<br> [0x80004a00]:fsw fa2, 1256(a5)<br>  |
| 666|[0x8000efd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004a14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004a18]:csrrs a7, fflags, zero<br> [0x80004a1c]:fsw fa2, 1264(a5)<br>  |
| 667|[0x8000efdc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004a30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004a34]:csrrs a7, fflags, zero<br> [0x80004a38]:fsw fa2, 1272(a5)<br>  |
| 668|[0x8000efe4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80004a4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004a50]:csrrs a7, fflags, zero<br> [0x80004a54]:fsw fa2, 1280(a5)<br>  |
| 669|[0x8000efec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004a68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004a6c]:csrrs a7, fflags, zero<br> [0x80004a70]:fsw fa2, 1288(a5)<br>  |
| 670|[0x8000eff4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80004a84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004a88]:csrrs a7, fflags, zero<br> [0x80004a8c]:fsw fa2, 1296(a5)<br>  |
| 671|[0x8000effc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004aa0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004aa4]:csrrs a7, fflags, zero<br> [0x80004aa8]:fsw fa2, 1304(a5)<br>  |
| 672|[0x8000f004]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80004abc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004ac0]:csrrs a7, fflags, zero<br> [0x80004ac4]:fsw fa2, 1312(a5)<br>  |
| 673|[0x8000f00c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004ad8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004adc]:csrrs a7, fflags, zero<br> [0x80004ae0]:fsw fa2, 1320(a5)<br>  |
| 674|[0x8000f014]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80004af4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004af8]:csrrs a7, fflags, zero<br> [0x80004afc]:fsw fa2, 1328(a5)<br>  |
| 675|[0x8000f01c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004b10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004b14]:csrrs a7, fflags, zero<br> [0x80004b18]:fsw fa2, 1336(a5)<br>  |
| 676|[0x8000f024]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80004b2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004b30]:csrrs a7, fflags, zero<br> [0x80004b34]:fsw fa2, 1344(a5)<br>  |
| 677|[0x8000f02c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004b48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004b4c]:csrrs a7, fflags, zero<br> [0x80004b50]:fsw fa2, 1352(a5)<br>  |
| 678|[0x8000f034]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80004b64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004b68]:csrrs a7, fflags, zero<br> [0x80004b6c]:fsw fa2, 1360(a5)<br>  |
| 679|[0x8000f03c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004b80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004b84]:csrrs a7, fflags, zero<br> [0x80004b88]:fsw fa2, 1368(a5)<br>  |
| 680|[0x8000f044]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80004b9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004ba0]:csrrs a7, fflags, zero<br> [0x80004ba4]:fsw fa2, 1376(a5)<br>  |
| 681|[0x8000f04c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004bb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004bbc]:csrrs a7, fflags, zero<br> [0x80004bc0]:fsw fa2, 1384(a5)<br>  |
| 682|[0x8000f054]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80004bd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004bd8]:csrrs a7, fflags, zero<br> [0x80004bdc]:fsw fa2, 1392(a5)<br>  |
| 683|[0x8000f05c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004bf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004bf4]:csrrs a7, fflags, zero<br> [0x80004bf8]:fsw fa2, 1400(a5)<br>  |
| 684|[0x8000f064]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80004c0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c10]:csrrs a7, fflags, zero<br> [0x80004c14]:fsw fa2, 1408(a5)<br>  |
| 685|[0x8000f06c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004c28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c2c]:csrrs a7, fflags, zero<br> [0x80004c30]:fsw fa2, 1416(a5)<br>  |
| 686|[0x8000f074]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80004c44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c48]:csrrs a7, fflags, zero<br> [0x80004c4c]:fsw fa2, 1424(a5)<br>  |
| 687|[0x8000f07c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004c60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c64]:csrrs a7, fflags, zero<br> [0x80004c68]:fsw fa2, 1432(a5)<br>  |
| 688|[0x8000f084]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004c7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c80]:csrrs a7, fflags, zero<br> [0x80004c84]:fsw fa2, 1440(a5)<br>  |
| 689|[0x8000f08c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80004c98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004c9c]:csrrs a7, fflags, zero<br> [0x80004ca0]:fsw fa2, 1448(a5)<br>  |
| 690|[0x8000f094]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004cb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004cb8]:csrrs a7, fflags, zero<br> [0x80004cbc]:fsw fa2, 1456(a5)<br>  |
| 691|[0x8000f09c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80004cd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004cd4]:csrrs a7, fflags, zero<br> [0x80004cd8]:fsw fa2, 1464(a5)<br>  |
| 692|[0x8000f0a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004cec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004cf0]:csrrs a7, fflags, zero<br> [0x80004cf4]:fsw fa2, 1472(a5)<br>  |
| 693|[0x8000f0ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80004d08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d0c]:csrrs a7, fflags, zero<br> [0x80004d10]:fsw fa2, 1480(a5)<br>  |
| 694|[0x8000f0b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004d24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d28]:csrrs a7, fflags, zero<br> [0x80004d2c]:fsw fa2, 1488(a5)<br>  |
| 695|[0x8000f0bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80004d40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d44]:csrrs a7, fflags, zero<br> [0x80004d48]:fsw fa2, 1496(a5)<br>  |
| 696|[0x8000f0c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004d5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d60]:csrrs a7, fflags, zero<br> [0x80004d64]:fsw fa2, 1504(a5)<br>  |
| 697|[0x8000f0cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80004d78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d7c]:csrrs a7, fflags, zero<br> [0x80004d80]:fsw fa2, 1512(a5)<br>  |
| 698|[0x8000f0d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004d94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004d98]:csrrs a7, fflags, zero<br> [0x80004d9c]:fsw fa2, 1520(a5)<br>  |
| 699|[0x8000f0dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80004db0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004db4]:csrrs a7, fflags, zero<br> [0x80004db8]:fsw fa2, 1528(a5)<br>  |
| 700|[0x8000f0e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004dcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004dd0]:csrrs a7, fflags, zero<br> [0x80004dd4]:fsw fa2, 1536(a5)<br>  |
| 701|[0x8000f0ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80004de8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004dec]:csrrs a7, fflags, zero<br> [0x80004df0]:fsw fa2, 1544(a5)<br>  |
| 702|[0x8000f0f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004e04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e08]:csrrs a7, fflags, zero<br> [0x80004e0c]:fsw fa2, 1552(a5)<br>  |
| 703|[0x8000f0fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80004e20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e24]:csrrs a7, fflags, zero<br> [0x80004e28]:fsw fa2, 1560(a5)<br>  |
| 704|[0x8000f104]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004e3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e40]:csrrs a7, fflags, zero<br> [0x80004e44]:fsw fa2, 1568(a5)<br>  |
| 705|[0x8000f10c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80004e58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e5c]:csrrs a7, fflags, zero<br> [0x80004e60]:fsw fa2, 1576(a5)<br>  |
| 706|[0x8000f114]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004e74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e78]:csrrs a7, fflags, zero<br> [0x80004e7c]:fsw fa2, 1584(a5)<br>  |
| 707|[0x8000f11c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80004e90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004e94]:csrrs a7, fflags, zero<br> [0x80004e98]:fsw fa2, 1592(a5)<br>  |
| 708|[0x8000f124]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004eac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004eb0]:csrrs a7, fflags, zero<br> [0x80004eb4]:fsw fa2, 1600(a5)<br>  |
| 709|[0x8000f12c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80004ec8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004ecc]:csrrs a7, fflags, zero<br> [0x80004ed0]:fsw fa2, 1608(a5)<br>  |
| 710|[0x8000f134]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004ee4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004ee8]:csrrs a7, fflags, zero<br> [0x80004eec]:fsw fa2, 1616(a5)<br>  |
| 711|[0x8000f13c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80004f00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f04]:csrrs a7, fflags, zero<br> [0x80004f08]:fsw fa2, 1624(a5)<br>  |
| 712|[0x8000f144]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004f1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f20]:csrrs a7, fflags, zero<br> [0x80004f24]:fsw fa2, 1632(a5)<br>  |
| 713|[0x8000f14c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80004f38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f3c]:csrrs a7, fflags, zero<br> [0x80004f40]:fsw fa2, 1640(a5)<br>  |
| 714|[0x8000f154]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004f54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f58]:csrrs a7, fflags, zero<br> [0x80004f5c]:fsw fa2, 1648(a5)<br>  |
| 715|[0x8000f15c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80004f70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f74]:csrrs a7, fflags, zero<br> [0x80004f78]:fsw fa2, 1656(a5)<br>  |
| 716|[0x8000f164]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004f8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004f90]:csrrs a7, fflags, zero<br> [0x80004f94]:fsw fa2, 1664(a5)<br>  |
| 717|[0x8000f16c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80004fa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004fac]:csrrs a7, fflags, zero<br> [0x80004fb0]:fsw fa2, 1672(a5)<br>  |
| 718|[0x8000f174]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004fc4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004fc8]:csrrs a7, fflags, zero<br> [0x80004fcc]:fsw fa2, 1680(a5)<br>  |
| 719|[0x8000f17c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80004fe0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80004fe4]:csrrs a7, fflags, zero<br> [0x80004fe8]:fsw fa2, 1688(a5)<br>  |
| 720|[0x8000f184]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80004ffc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005000]:csrrs a7, fflags, zero<br> [0x80005004]:fsw fa2, 1696(a5)<br>  |
| 721|[0x8000f18c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005018]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000501c]:csrrs a7, fflags, zero<br> [0x80005020]:fsw fa2, 1704(a5)<br>  |
| 722|[0x8000f194]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005034]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005038]:csrrs a7, fflags, zero<br> [0x8000503c]:fsw fa2, 1712(a5)<br>  |
| 723|[0x8000f19c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80005050]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005054]:csrrs a7, fflags, zero<br> [0x80005058]:fsw fa2, 1720(a5)<br>  |
| 724|[0x8000f1a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000506c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005070]:csrrs a7, fflags, zero<br> [0x80005074]:fsw fa2, 1728(a5)<br>  |
| 725|[0x8000f1ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005088]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000508c]:csrrs a7, fflags, zero<br> [0x80005090]:fsw fa2, 1736(a5)<br>  |
| 726|[0x8000f1b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800050a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800050a8]:csrrs a7, fflags, zero<br> [0x800050ac]:fsw fa2, 1744(a5)<br>  |
| 727|[0x8000f1bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800050c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800050c4]:csrrs a7, fflags, zero<br> [0x800050c8]:fsw fa2, 1752(a5)<br>  |
| 728|[0x8000f1c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800050dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800050e0]:csrrs a7, fflags, zero<br> [0x800050e4]:fsw fa2, 1760(a5)<br>  |
| 729|[0x8000f1cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x800050f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800050fc]:csrrs a7, fflags, zero<br> [0x80005100]:fsw fa2, 1768(a5)<br>  |
| 730|[0x8000f1d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005114]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005118]:csrrs a7, fflags, zero<br> [0x8000511c]:fsw fa2, 1776(a5)<br>  |
| 731|[0x8000f1dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80005130]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005134]:csrrs a7, fflags, zero<br> [0x80005138]:fsw fa2, 1784(a5)<br>  |
| 732|[0x8000f1e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000514c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005150]:csrrs a7, fflags, zero<br> [0x80005154]:fsw fa2, 1792(a5)<br>  |
| 733|[0x8000f1ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005168]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000516c]:csrrs a7, fflags, zero<br> [0x80005170]:fsw fa2, 1800(a5)<br>  |
| 734|[0x8000f1f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005184]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005188]:csrrs a7, fflags, zero<br> [0x8000518c]:fsw fa2, 1808(a5)<br>  |
| 735|[0x8000f1fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x800051a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800051a4]:csrrs a7, fflags, zero<br> [0x800051a8]:fsw fa2, 1816(a5)<br>  |
| 736|[0x8000f204]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800051bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800051c0]:csrrs a7, fflags, zero<br> [0x800051c4]:fsw fa2, 1824(a5)<br>  |
| 737|[0x8000f20c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800051d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800051dc]:csrrs a7, fflags, zero<br> [0x800051e0]:fsw fa2, 1832(a5)<br>  |
| 738|[0x8000f214]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800051f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800051f8]:csrrs a7, fflags, zero<br> [0x800051fc]:fsw fa2, 1840(a5)<br>  |
| 739|[0x8000f21c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005210]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005214]:csrrs a7, fflags, zero<br> [0x80005218]:fsw fa2, 1848(a5)<br>  |
| 740|[0x8000f224]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000522c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005230]:csrrs a7, fflags, zero<br> [0x80005234]:fsw fa2, 1856(a5)<br>  |
| 741|[0x8000f22c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005248]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000524c]:csrrs a7, fflags, zero<br> [0x80005250]:fsw fa2, 1864(a5)<br>  |
| 742|[0x8000f234]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005264]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005268]:csrrs a7, fflags, zero<br> [0x8000526c]:fsw fa2, 1872(a5)<br>  |
| 743|[0x8000f23c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005280]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005284]:csrrs a7, fflags, zero<br> [0x80005288]:fsw fa2, 1880(a5)<br>  |
| 744|[0x8000f244]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000529c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800052a0]:csrrs a7, fflags, zero<br> [0x800052a4]:fsw fa2, 1888(a5)<br>  |
| 745|[0x8000f24c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x800052b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800052bc]:csrrs a7, fflags, zero<br> [0x800052c0]:fsw fa2, 1896(a5)<br>  |
| 746|[0x8000f254]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800052d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800052d8]:csrrs a7, fflags, zero<br> [0x800052dc]:fsw fa2, 1904(a5)<br>  |
| 747|[0x8000f25c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x800052f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800052f4]:csrrs a7, fflags, zero<br> [0x800052f8]:fsw fa2, 1912(a5)<br>  |
| 748|[0x8000f264]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000530c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005310]:csrrs a7, fflags, zero<br> [0x80005314]:fsw fa2, 1920(a5)<br>  |
| 749|[0x8000f26c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005328]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000532c]:csrrs a7, fflags, zero<br> [0x80005330]:fsw fa2, 1928(a5)<br>  |
| 750|[0x8000f274]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005344]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005348]:csrrs a7, fflags, zero<br> [0x8000534c]:fsw fa2, 1936(a5)<br>  |
| 751|[0x8000f27c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005360]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005364]:csrrs a7, fflags, zero<br> [0x80005368]:fsw fa2, 1944(a5)<br>  |
| 752|[0x8000f284]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000537c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005380]:csrrs a7, fflags, zero<br> [0x80005384]:fsw fa2, 1952(a5)<br>  |
| 753|[0x8000f28c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005398]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000539c]:csrrs a7, fflags, zero<br> [0x800053a0]:fsw fa2, 1960(a5)<br>  |
| 754|[0x8000f294]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800053b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800053b8]:csrrs a7, fflags, zero<br> [0x800053bc]:fsw fa2, 1968(a5)<br>  |
| 755|[0x8000f29c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800053d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800053d4]:csrrs a7, fflags, zero<br> [0x800053d8]:fsw fa2, 1976(a5)<br>  |
| 756|[0x8000f2a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800053ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800053f0]:csrrs a7, fflags, zero<br> [0x800053f4]:fsw fa2, 1984(a5)<br>  |
| 757|[0x8000f2ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005408]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000540c]:csrrs a7, fflags, zero<br> [0x80005410]:fsw fa2, 1992(a5)<br>  |
| 758|[0x8000f2b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005424]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005428]:csrrs a7, fflags, zero<br> [0x8000542c]:fsw fa2, 2000(a5)<br>  |
| 759|[0x8000f2bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005440]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005444]:csrrs a7, fflags, zero<br> [0x80005448]:fsw fa2, 2008(a5)<br>  |
| 760|[0x8000f2c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000545c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005460]:csrrs a7, fflags, zero<br> [0x80005464]:fsw fa2, 2016(a5)<br>  |
| 761|[0x8000f2cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005478]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000547c]:csrrs a7, fflags, zero<br> [0x80005480]:fsw fa2, 2024(a5)<br>  |
| 762|[0x8000f2d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800054a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800054a4]:csrrs a7, fflags, zero<br> [0x800054a8]:fsw fa2, 0(a5)<br>     |
| 763|[0x8000f2dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x800054bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800054c0]:csrrs a7, fflags, zero<br> [0x800054c4]:fsw fa2, 8(a5)<br>     |
| 764|[0x8000f2e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800054d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800054dc]:csrrs a7, fflags, zero<br> [0x800054e0]:fsw fa2, 16(a5)<br>    |
| 765|[0x8000f2ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800054f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800054f8]:csrrs a7, fflags, zero<br> [0x800054fc]:fsw fa2, 24(a5)<br>    |
| 766|[0x8000f2f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005510]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005514]:csrrs a7, fflags, zero<br> [0x80005518]:fsw fa2, 32(a5)<br>    |
| 767|[0x8000f2fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000552c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005530]:csrrs a7, fflags, zero<br> [0x80005534]:fsw fa2, 40(a5)<br>    |
| 768|[0x8000f304]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005548]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000554c]:csrrs a7, fflags, zero<br> [0x80005550]:fsw fa2, 48(a5)<br>    |
| 769|[0x8000f30c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005564]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005568]:csrrs a7, fflags, zero<br> [0x8000556c]:fsw fa2, 56(a5)<br>    |
| 770|[0x8000f314]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005580]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005584]:csrrs a7, fflags, zero<br> [0x80005588]:fsw fa2, 64(a5)<br>    |
| 771|[0x8000f31c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000559c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800055a0]:csrrs a7, fflags, zero<br> [0x800055a4]:fsw fa2, 72(a5)<br>    |
| 772|[0x8000f324]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800055b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800055bc]:csrrs a7, fflags, zero<br> [0x800055c0]:fsw fa2, 80(a5)<br>    |
| 773|[0x8000f32c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800055d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800055d8]:csrrs a7, fflags, zero<br> [0x800055dc]:fsw fa2, 88(a5)<br>    |
| 774|[0x8000f334]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800055f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800055f4]:csrrs a7, fflags, zero<br> [0x800055f8]:fsw fa2, 96(a5)<br>    |
| 775|[0x8000f33c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000560c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005610]:csrrs a7, fflags, zero<br> [0x80005614]:fsw fa2, 104(a5)<br>   |
| 776|[0x8000f344]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005628]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000562c]:csrrs a7, fflags, zero<br> [0x80005630]:fsw fa2, 112(a5)<br>   |
| 777|[0x8000f34c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80005644]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005648]:csrrs a7, fflags, zero<br> [0x8000564c]:fsw fa2, 120(a5)<br>   |
| 778|[0x8000f354]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005660]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005664]:csrrs a7, fflags, zero<br> [0x80005668]:fsw fa2, 128(a5)<br>   |
| 779|[0x8000f35c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x8000567c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005680]:csrrs a7, fflags, zero<br> [0x80005684]:fsw fa2, 136(a5)<br>   |
| 780|[0x8000f364]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005698]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000569c]:csrrs a7, fflags, zero<br> [0x800056a0]:fsw fa2, 144(a5)<br>   |
| 781|[0x8000f36c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x800056b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800056b8]:csrrs a7, fflags, zero<br> [0x800056bc]:fsw fa2, 152(a5)<br>   |
| 782|[0x8000f374]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800056d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800056d4]:csrrs a7, fflags, zero<br> [0x800056d8]:fsw fa2, 160(a5)<br>   |
| 783|[0x8000f37c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x800056ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800056f0]:csrrs a7, fflags, zero<br> [0x800056f4]:fsw fa2, 168(a5)<br>   |
| 784|[0x8000f384]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005708]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000570c]:csrrs a7, fflags, zero<br> [0x80005710]:fsw fa2, 176(a5)<br>   |
| 785|[0x8000f38c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80005724]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005728]:csrrs a7, fflags, zero<br> [0x8000572c]:fsw fa2, 184(a5)<br>   |
| 786|[0x8000f394]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005740]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005744]:csrrs a7, fflags, zero<br> [0x80005748]:fsw fa2, 192(a5)<br>   |
| 787|[0x8000f39c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x8000575c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005760]:csrrs a7, fflags, zero<br> [0x80005764]:fsw fa2, 200(a5)<br>   |
| 788|[0x8000f3a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005778]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000577c]:csrrs a7, fflags, zero<br> [0x80005780]:fsw fa2, 208(a5)<br>   |
| 789|[0x8000f3ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80005794]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005798]:csrrs a7, fflags, zero<br> [0x8000579c]:fsw fa2, 216(a5)<br>   |
| 790|[0x8000f3b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800057b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800057b4]:csrrs a7, fflags, zero<br> [0x800057b8]:fsw fa2, 224(a5)<br>   |
| 791|[0x8000f3bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x800057cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800057d0]:csrrs a7, fflags, zero<br> [0x800057d4]:fsw fa2, 232(a5)<br>   |
| 792|[0x8000f3c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800057e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800057ec]:csrrs a7, fflags, zero<br> [0x800057f0]:fsw fa2, 240(a5)<br>   |
| 793|[0x8000f3cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80005804]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005808]:csrrs a7, fflags, zero<br> [0x8000580c]:fsw fa2, 248(a5)<br>   |
| 794|[0x8000f3d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005820]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005824]:csrrs a7, fflags, zero<br> [0x80005828]:fsw fa2, 256(a5)<br>   |
| 795|[0x8000f3dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x8000583c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005840]:csrrs a7, fflags, zero<br> [0x80005844]:fsw fa2, 264(a5)<br>   |
| 796|[0x8000f3e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005858]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000585c]:csrrs a7, fflags, zero<br> [0x80005860]:fsw fa2, 272(a5)<br>   |
| 797|[0x8000f3ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005874]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005878]:csrrs a7, fflags, zero<br> [0x8000587c]:fsw fa2, 280(a5)<br>   |
| 798|[0x8000f3f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80005890]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005894]:csrrs a7, fflags, zero<br> [0x80005898]:fsw fa2, 288(a5)<br>   |
| 799|[0x8000f3fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800058ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800058b0]:csrrs a7, fflags, zero<br> [0x800058b4]:fsw fa2, 296(a5)<br>   |
| 800|[0x8000f404]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x800058c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800058cc]:csrrs a7, fflags, zero<br> [0x800058d0]:fsw fa2, 304(a5)<br>   |
| 801|[0x8000f40c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800058e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800058e8]:csrrs a7, fflags, zero<br> [0x800058ec]:fsw fa2, 312(a5)<br>   |
| 802|[0x8000f414]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80005900]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005904]:csrrs a7, fflags, zero<br> [0x80005908]:fsw fa2, 320(a5)<br>   |
| 803|[0x8000f41c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000591c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005920]:csrrs a7, fflags, zero<br> [0x80005924]:fsw fa2, 328(a5)<br>   |
| 804|[0x8000f424]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80005938]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000593c]:csrrs a7, fflags, zero<br> [0x80005940]:fsw fa2, 336(a5)<br>   |
| 805|[0x8000f42c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005954]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005958]:csrrs a7, fflags, zero<br> [0x8000595c]:fsw fa2, 344(a5)<br>   |
| 806|[0x8000f434]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80005970]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005974]:csrrs a7, fflags, zero<br> [0x80005978]:fsw fa2, 352(a5)<br>   |
| 807|[0x8000f43c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000598c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005990]:csrrs a7, fflags, zero<br> [0x80005994]:fsw fa2, 360(a5)<br>   |
| 808|[0x8000f444]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800059a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800059ac]:csrrs a7, fflags, zero<br> [0x800059b0]:fsw fa2, 368(a5)<br>   |
| 809|[0x8000f44c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800059c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800059c8]:csrrs a7, fflags, zero<br> [0x800059cc]:fsw fa2, 376(a5)<br>   |
| 810|[0x8000f454]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x800059e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800059e4]:csrrs a7, fflags, zero<br> [0x800059e8]:fsw fa2, 384(a5)<br>   |
| 811|[0x8000f45c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800059fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a00]:csrrs a7, fflags, zero<br> [0x80005a04]:fsw fa2, 392(a5)<br>   |
| 812|[0x8000f464]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80005a18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a1c]:csrrs a7, fflags, zero<br> [0x80005a20]:fsw fa2, 400(a5)<br>   |
| 813|[0x8000f46c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005a34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a38]:csrrs a7, fflags, zero<br> [0x80005a3c]:fsw fa2, 408(a5)<br>   |
| 814|[0x8000f474]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80005a50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a54]:csrrs a7, fflags, zero<br> [0x80005a58]:fsw fa2, 416(a5)<br>   |
| 815|[0x8000f47c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005a6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a70]:csrrs a7, fflags, zero<br> [0x80005a74]:fsw fa2, 424(a5)<br>   |
| 816|[0x8000f484]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80005a88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005a8c]:csrrs a7, fflags, zero<br> [0x80005a90]:fsw fa2, 432(a5)<br>   |
| 817|[0x8000f48c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005aa4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005aa8]:csrrs a7, fflags, zero<br> [0x80005aac]:fsw fa2, 440(a5)<br>   |
| 818|[0x8000f494]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80005ac0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005ac4]:csrrs a7, fflags, zero<br> [0x80005ac8]:fsw fa2, 448(a5)<br>   |
| 819|[0x8000f49c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005adc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005ae0]:csrrs a7, fflags, zero<br> [0x80005ae4]:fsw fa2, 456(a5)<br>   |
| 820|[0x8000f4a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80005af8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005afc]:csrrs a7, fflags, zero<br> [0x80005b00]:fsw fa2, 464(a5)<br>   |
| 821|[0x8000f4ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005b14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005b18]:csrrs a7, fflags, zero<br> [0x80005b1c]:fsw fa2, 472(a5)<br>   |
| 822|[0x8000f4b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80005b30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005b34]:csrrs a7, fflags, zero<br> [0x80005b38]:fsw fa2, 480(a5)<br>   |
| 823|[0x8000f4bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005b4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005b50]:csrrs a7, fflags, zero<br> [0x80005b54]:fsw fa2, 488(a5)<br>   |
| 824|[0x8000f4c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80005b68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005b6c]:csrrs a7, fflags, zero<br> [0x80005b70]:fsw fa2, 496(a5)<br>   |
| 825|[0x8000f4cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005b84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005b88]:csrrs a7, fflags, zero<br> [0x80005b8c]:fsw fa2, 504(a5)<br>   |
| 826|[0x8000f4d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005ba0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005ba4]:csrrs a7, fflags, zero<br> [0x80005ba8]:fsw fa2, 512(a5)<br>   |
| 827|[0x8000f4dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005bbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005bc0]:csrrs a7, fflags, zero<br> [0x80005bc4]:fsw fa2, 520(a5)<br>   |
| 828|[0x8000f4e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80005bd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005bdc]:csrrs a7, fflags, zero<br> [0x80005be0]:fsw fa2, 528(a5)<br>   |
| 829|[0x8000f4ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005bf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005bf8]:csrrs a7, fflags, zero<br> [0x80005bfc]:fsw fa2, 536(a5)<br>   |
| 830|[0x8000f4f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005c10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005c14]:csrrs a7, fflags, zero<br> [0x80005c18]:fsw fa2, 544(a5)<br>   |
| 831|[0x8000f4fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005c2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005c30]:csrrs a7, fflags, zero<br> [0x80005c34]:fsw fa2, 552(a5)<br>   |
| 832|[0x8000f504]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80005c48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005c4c]:csrrs a7, fflags, zero<br> [0x80005c50]:fsw fa2, 560(a5)<br>   |
| 833|[0x8000f50c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005c64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005c68]:csrrs a7, fflags, zero<br> [0x80005c6c]:fsw fa2, 568(a5)<br>   |
| 834|[0x8000f514]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005c80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005c84]:csrrs a7, fflags, zero<br> [0x80005c88]:fsw fa2, 576(a5)<br>   |
| 835|[0x8000f51c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005c9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005ca0]:csrrs a7, fflags, zero<br> [0x80005ca4]:fsw fa2, 584(a5)<br>   |
| 836|[0x8000f524]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80005cb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005cbc]:csrrs a7, fflags, zero<br> [0x80005cc0]:fsw fa2, 592(a5)<br>   |
| 837|[0x8000f52c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005cd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005cd8]:csrrs a7, fflags, zero<br> [0x80005cdc]:fsw fa2, 600(a5)<br>   |
| 838|[0x8000f534]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x80005cf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005cf4]:csrrs a7, fflags, zero<br> [0x80005cf8]:fsw fa2, 608(a5)<br>   |
| 839|[0x8000f53c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005d0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d10]:csrrs a7, fflags, zero<br> [0x80005d14]:fsw fa2, 616(a5)<br>   |
| 840|[0x8000f544]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80005d28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d2c]:csrrs a7, fflags, zero<br> [0x80005d30]:fsw fa2, 624(a5)<br>   |
| 841|[0x8000f54c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005d44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d48]:csrrs a7, fflags, zero<br> [0x80005d4c]:fsw fa2, 632(a5)<br>   |
| 842|[0x8000f554]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005d60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d64]:csrrs a7, fflags, zero<br> [0x80005d68]:fsw fa2, 640(a5)<br>   |
| 843|[0x8000f55c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005d7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d80]:csrrs a7, fflags, zero<br> [0x80005d84]:fsw fa2, 648(a5)<br>   |
| 844|[0x8000f564]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005d98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005d9c]:csrrs a7, fflags, zero<br> [0x80005da0]:fsw fa2, 656(a5)<br>   |
| 845|[0x8000f56c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005db4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005db8]:csrrs a7, fflags, zero<br> [0x80005dbc]:fsw fa2, 664(a5)<br>   |
| 846|[0x8000f574]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005dd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005dd4]:csrrs a7, fflags, zero<br> [0x80005dd8]:fsw fa2, 672(a5)<br>   |
| 847|[0x8000f57c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005dec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005df0]:csrrs a7, fflags, zero<br> [0x80005df4]:fsw fa2, 680(a5)<br>   |
| 848|[0x8000f584]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005e08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e0c]:csrrs a7, fflags, zero<br> [0x80005e10]:fsw fa2, 688(a5)<br>   |
| 849|[0x8000f58c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005e24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e28]:csrrs a7, fflags, zero<br> [0x80005e2c]:fsw fa2, 696(a5)<br>   |
| 850|[0x8000f594]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005e40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e44]:csrrs a7, fflags, zero<br> [0x80005e48]:fsw fa2, 704(a5)<br>   |
| 851|[0x8000f59c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005e5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e60]:csrrs a7, fflags, zero<br> [0x80005e64]:fsw fa2, 712(a5)<br>   |
| 852|[0x8000f5a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005e78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e7c]:csrrs a7, fflags, zero<br> [0x80005e80]:fsw fa2, 720(a5)<br>   |
| 853|[0x8000f5ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005e94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005e98]:csrrs a7, fflags, zero<br> [0x80005e9c]:fsw fa2, 728(a5)<br>   |
| 854|[0x8000f5b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80005eb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005eb4]:csrrs a7, fflags, zero<br> [0x80005eb8]:fsw fa2, 736(a5)<br>   |
| 855|[0x8000f5bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005ecc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005ed0]:csrrs a7, fflags, zero<br> [0x80005ed4]:fsw fa2, 744(a5)<br>   |
| 856|[0x8000f5c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005ee8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005eec]:csrrs a7, fflags, zero<br> [0x80005ef0]:fsw fa2, 752(a5)<br>   |
| 857|[0x8000f5cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005f04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f08]:csrrs a7, fflags, zero<br> [0x80005f0c]:fsw fa2, 760(a5)<br>   |
| 858|[0x8000f5d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005f20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f24]:csrrs a7, fflags, zero<br> [0x80005f28]:fsw fa2, 768(a5)<br>   |
| 859|[0x8000f5dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005f3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f40]:csrrs a7, fflags, zero<br> [0x80005f44]:fsw fa2, 776(a5)<br>   |
| 860|[0x8000f5e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005f58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f5c]:csrrs a7, fflags, zero<br> [0x80005f60]:fsw fa2, 784(a5)<br>   |
| 861|[0x8000f5ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005f74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f78]:csrrs a7, fflags, zero<br> [0x80005f7c]:fsw fa2, 792(a5)<br>   |
| 862|[0x8000f5f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80005f90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005f94]:csrrs a7, fflags, zero<br> [0x80005f98]:fsw fa2, 800(a5)<br>   |
| 863|[0x8000f5fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005fac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005fb0]:csrrs a7, fflags, zero<br> [0x80005fb4]:fsw fa2, 808(a5)<br>   |
| 864|[0x8000f604]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80005fc8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005fcc]:csrrs a7, fflags, zero<br> [0x80005fd0]:fsw fa2, 816(a5)<br>   |
| 865|[0x8000f60c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80005fe4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80005fe8]:csrrs a7, fflags, zero<br> [0x80005fec]:fsw fa2, 824(a5)<br>   |
| 866|[0x8000f614]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006000]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006004]:csrrs a7, fflags, zero<br> [0x80006008]:fsw fa2, 832(a5)<br>   |
| 867|[0x8000f61c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000601c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006020]:csrrs a7, fflags, zero<br> [0x80006024]:fsw fa2, 840(a5)<br>   |
| 868|[0x8000f624]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006038]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000603c]:csrrs a7, fflags, zero<br> [0x80006040]:fsw fa2, 848(a5)<br>   |
| 869|[0x8000f62c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80006054]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006058]:csrrs a7, fflags, zero<br> [0x8000605c]:fsw fa2, 856(a5)<br>   |
| 870|[0x8000f634]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006070]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006074]:csrrs a7, fflags, zero<br> [0x80006078]:fsw fa2, 864(a5)<br>   |
| 871|[0x8000f63c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000608c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006090]:csrrs a7, fflags, zero<br> [0x80006094]:fsw fa2, 872(a5)<br>   |
| 872|[0x8000f644]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x800060a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800060ac]:csrrs a7, fflags, zero<br> [0x800060b0]:fsw fa2, 880(a5)<br>   |
| 873|[0x8000f64c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800060c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800060c8]:csrrs a7, fflags, zero<br> [0x800060cc]:fsw fa2, 888(a5)<br>   |
| 874|[0x8000f654]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800060e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800060e4]:csrrs a7, fflags, zero<br> [0x800060e8]:fsw fa2, 896(a5)<br>   |
| 875|[0x8000f65c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800060fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006100]:csrrs a7, fflags, zero<br> [0x80006104]:fsw fa2, 904(a5)<br>   |
| 876|[0x8000f664]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006118]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000611c]:csrrs a7, fflags, zero<br> [0x80006120]:fsw fa2, 912(a5)<br>   |
| 877|[0x8000f66c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80006134]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006138]:csrrs a7, fflags, zero<br> [0x8000613c]:fsw fa2, 920(a5)<br>   |
| 878|[0x8000f674]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006150]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006154]:csrrs a7, fflags, zero<br> [0x80006158]:fsw fa2, 928(a5)<br>   |
| 879|[0x8000f67c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x8000616c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006170]:csrrs a7, fflags, zero<br> [0x80006174]:fsw fa2, 936(a5)<br>   |
| 880|[0x8000f684]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006188]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000618c]:csrrs a7, fflags, zero<br> [0x80006190]:fsw fa2, 944(a5)<br>   |
| 881|[0x8000f68c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800061a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800061a8]:csrrs a7, fflags, zero<br> [0x800061ac]:fsw fa2, 952(a5)<br>   |
| 882|[0x8000f694]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800061c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800061c4]:csrrs a7, fflags, zero<br> [0x800061c8]:fsw fa2, 960(a5)<br>   |
| 883|[0x8000f69c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x800061dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800061e0]:csrrs a7, fflags, zero<br> [0x800061e4]:fsw fa2, 968(a5)<br>   |
| 884|[0x8000f6a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x800061f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800061fc]:csrrs a7, fflags, zero<br> [0x80006200]:fsw fa2, 976(a5)<br>   |
| 885|[0x8000f6ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006214]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006218]:csrrs a7, fflags, zero<br> [0x8000621c]:fsw fa2, 984(a5)<br>   |
| 886|[0x8000f6b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80006230]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006234]:csrrs a7, fflags, zero<br> [0x80006238]:fsw fa2, 992(a5)<br>   |
| 887|[0x8000f6bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000624c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006250]:csrrs a7, fflags, zero<br> [0x80006254]:fsw fa2, 1000(a5)<br>  |
| 888|[0x8000f6c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80006268]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000626c]:csrrs a7, fflags, zero<br> [0x80006270]:fsw fa2, 1008(a5)<br>  |
| 889|[0x8000f6cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006284]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006288]:csrrs a7, fflags, zero<br> [0x8000628c]:fsw fa2, 1016(a5)<br>  |
| 890|[0x8000f6d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x800062a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800062a4]:csrrs a7, fflags, zero<br> [0x800062a8]:fsw fa2, 1024(a5)<br>  |
| 891|[0x8000f6dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800062bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800062c0]:csrrs a7, fflags, zero<br> [0x800062c4]:fsw fa2, 1032(a5)<br>  |
| 892|[0x8000f6e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x800062d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800062dc]:csrrs a7, fflags, zero<br> [0x800062e0]:fsw fa2, 1040(a5)<br>  |
| 893|[0x8000f6ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800062f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800062f8]:csrrs a7, fflags, zero<br> [0x800062fc]:fsw fa2, 1048(a5)<br>  |
| 894|[0x8000f6f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80006310]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006314]:csrrs a7, fflags, zero<br> [0x80006318]:fsw fa2, 1056(a5)<br>  |
| 895|[0x8000f6fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000632c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006330]:csrrs a7, fflags, zero<br> [0x80006334]:fsw fa2, 1064(a5)<br>  |
| 896|[0x8000f704]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80006348]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000634c]:csrrs a7, fflags, zero<br> [0x80006350]:fsw fa2, 1072(a5)<br>  |
| 897|[0x8000f70c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006364]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006368]:csrrs a7, fflags, zero<br> [0x8000636c]:fsw fa2, 1080(a5)<br>  |
| 898|[0x8000f714]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80006380]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006384]:csrrs a7, fflags, zero<br> [0x80006388]:fsw fa2, 1088(a5)<br>  |
| 899|[0x8000f71c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000639c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800063a0]:csrrs a7, fflags, zero<br> [0x800063a4]:fsw fa2, 1096(a5)<br>  |
| 900|[0x8000f724]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x800063b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800063bc]:csrrs a7, fflags, zero<br> [0x800063c0]:fsw fa2, 1104(a5)<br>  |
| 901|[0x8000f72c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800063d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800063d8]:csrrs a7, fflags, zero<br> [0x800063dc]:fsw fa2, 1112(a5)<br>  |
| 902|[0x8000f734]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x800063f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800063f4]:csrrs a7, fflags, zero<br> [0x800063f8]:fsw fa2, 1120(a5)<br>  |
| 903|[0x8000f73c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000640c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006410]:csrrs a7, fflags, zero<br> [0x80006414]:fsw fa2, 1128(a5)<br>  |
| 904|[0x8000f744]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80006428]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000642c]:csrrs a7, fflags, zero<br> [0x80006430]:fsw fa2, 1136(a5)<br>  |
| 905|[0x8000f74c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000001 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006444]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006448]:csrrs a7, fflags, zero<br> [0x8000644c]:fsw fa2, 1144(a5)<br>  |
| 906|[0x8000f754]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80006460]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006464]:csrrs a7, fflags, zero<br> [0x80006468]:fsw fa2, 1152(a5)<br>  |
| 907|[0x8000f75c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000647c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006480]:csrrs a7, fflags, zero<br> [0x80006484]:fsw fa2, 1160(a5)<br>  |
| 908|[0x8000f764]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80006498]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000649c]:csrrs a7, fflags, zero<br> [0x800064a0]:fsw fa2, 1168(a5)<br>  |
| 909|[0x8000f76c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800064b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800064b8]:csrrs a7, fflags, zero<br> [0x800064bc]:fsw fa2, 1176(a5)<br>  |
| 910|[0x8000f774]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x800064d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800064d4]:csrrs a7, fflags, zero<br> [0x800064d8]:fsw fa2, 1184(a5)<br>  |
| 911|[0x8000f77c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800064ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800064f0]:csrrs a7, fflags, zero<br> [0x800064f4]:fsw fa2, 1192(a5)<br>  |
| 912|[0x8000f784]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80006508]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000650c]:csrrs a7, fflags, zero<br> [0x80006510]:fsw fa2, 1200(a5)<br>  |
| 913|[0x8000f78c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006524]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006528]:csrrs a7, fflags, zero<br> [0x8000652c]:fsw fa2, 1208(a5)<br>  |
| 914|[0x8000f794]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80006540]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006544]:csrrs a7, fflags, zero<br> [0x80006548]:fsw fa2, 1216(a5)<br>  |
| 915|[0x8000f79c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000655c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006560]:csrrs a7, fflags, zero<br> [0x80006564]:fsw fa2, 1224(a5)<br>  |
| 916|[0x8000f7a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80006578]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000657c]:csrrs a7, fflags, zero<br> [0x80006580]:fsw fa2, 1232(a5)<br>  |
| 917|[0x8000f7ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006594]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006598]:csrrs a7, fflags, zero<br> [0x8000659c]:fsw fa2, 1240(a5)<br>  |
| 918|[0x8000f7b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800065b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800065b4]:csrrs a7, fflags, zero<br> [0x800065b8]:fsw fa2, 1248(a5)<br>  |
| 919|[0x8000f7bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x800065cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800065d0]:csrrs a7, fflags, zero<br> [0x800065d4]:fsw fa2, 1256(a5)<br>  |
| 920|[0x8000f7c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800065e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800065ec]:csrrs a7, fflags, zero<br> [0x800065f0]:fsw fa2, 1264(a5)<br>  |
| 921|[0x8000f7cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80006604]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006608]:csrrs a7, fflags, zero<br> [0x8000660c]:fsw fa2, 1272(a5)<br>  |
| 922|[0x8000f7d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006620]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006624]:csrrs a7, fflags, zero<br> [0x80006628]:fsw fa2, 1280(a5)<br>  |
| 923|[0x8000f7dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x8000663c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006640]:csrrs a7, fflags, zero<br> [0x80006644]:fsw fa2, 1288(a5)<br>  |
| 924|[0x8000f7e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006658]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000665c]:csrrs a7, fflags, zero<br> [0x80006660]:fsw fa2, 1296(a5)<br>  |
| 925|[0x8000f7ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80006674]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006678]:csrrs a7, fflags, zero<br> [0x8000667c]:fsw fa2, 1304(a5)<br>  |
| 926|[0x8000f7f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006690]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006694]:csrrs a7, fflags, zero<br> [0x80006698]:fsw fa2, 1312(a5)<br>  |
| 927|[0x8000f7fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x800066ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800066b0]:csrrs a7, fflags, zero<br> [0x800066b4]:fsw fa2, 1320(a5)<br>  |
| 928|[0x8000f804]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800066c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800066cc]:csrrs a7, fflags, zero<br> [0x800066d0]:fsw fa2, 1328(a5)<br>  |
| 929|[0x8000f80c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x800066e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800066e8]:csrrs a7, fflags, zero<br> [0x800066ec]:fsw fa2, 1336(a5)<br>  |
| 930|[0x8000f814]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006700]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006704]:csrrs a7, fflags, zero<br> [0x80006708]:fsw fa2, 1344(a5)<br>  |
| 931|[0x8000f81c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x8000671c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006720]:csrrs a7, fflags, zero<br> [0x80006724]:fsw fa2, 1352(a5)<br>  |
| 932|[0x8000f824]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006738]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000673c]:csrrs a7, fflags, zero<br> [0x80006740]:fsw fa2, 1360(a5)<br>  |
| 933|[0x8000f82c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80006754]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006758]:csrrs a7, fflags, zero<br> [0x8000675c]:fsw fa2, 1368(a5)<br>  |
| 934|[0x8000f834]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006770]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006774]:csrrs a7, fflags, zero<br> [0x80006778]:fsw fa2, 1376(a5)<br>  |
| 935|[0x8000f83c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000678c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006790]:csrrs a7, fflags, zero<br> [0x80006794]:fsw fa2, 1384(a5)<br>  |
| 936|[0x8000f844]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800067a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800067ac]:csrrs a7, fflags, zero<br> [0x800067b0]:fsw fa2, 1392(a5)<br>  |
| 937|[0x8000f84c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x800067c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800067c8]:csrrs a7, fflags, zero<br> [0x800067cc]:fsw fa2, 1400(a5)<br>  |
| 938|[0x8000f854]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800067e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800067e4]:csrrs a7, fflags, zero<br> [0x800067e8]:fsw fa2, 1408(a5)<br>  |
| 939|[0x8000f85c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x800067fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006800]:csrrs a7, fflags, zero<br> [0x80006804]:fsw fa2, 1416(a5)<br>  |
| 940|[0x8000f864]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006818]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000681c]:csrrs a7, fflags, zero<br> [0x80006820]:fsw fa2, 1424(a5)<br>  |
| 941|[0x8000f86c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80006834]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006838]:csrrs a7, fflags, zero<br> [0x8000683c]:fsw fa2, 1432(a5)<br>  |
| 942|[0x8000f874]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006850]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006854]:csrrs a7, fflags, zero<br> [0x80006858]:fsw fa2, 1440(a5)<br>  |
| 943|[0x8000f87c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000686c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006870]:csrrs a7, fflags, zero<br> [0x80006874]:fsw fa2, 1448(a5)<br>  |
| 944|[0x8000f884]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006888]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000688c]:csrrs a7, fflags, zero<br> [0x80006890]:fsw fa2, 1456(a5)<br>  |
| 945|[0x8000f88c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800068a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800068a8]:csrrs a7, fflags, zero<br> [0x800068ac]:fsw fa2, 1464(a5)<br>  |
| 946|[0x8000f894]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800068c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800068c4]:csrrs a7, fflags, zero<br> [0x800068c8]:fsw fa2, 1472(a5)<br>  |
| 947|[0x8000f89c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x800068dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800068e0]:csrrs a7, fflags, zero<br> [0x800068e4]:fsw fa2, 1480(a5)<br>  |
| 948|[0x8000f8a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800068f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800068fc]:csrrs a7, fflags, zero<br> [0x80006900]:fsw fa2, 1488(a5)<br>  |
| 949|[0x8000f8ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80006914]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006918]:csrrs a7, fflags, zero<br> [0x8000691c]:fsw fa2, 1496(a5)<br>  |
| 950|[0x8000f8b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006930]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006934]:csrrs a7, fflags, zero<br> [0x80006938]:fsw fa2, 1504(a5)<br>  |
| 951|[0x8000f8bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000694c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006950]:csrrs a7, fflags, zero<br> [0x80006954]:fsw fa2, 1512(a5)<br>  |
| 952|[0x8000f8c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006968]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000696c]:csrrs a7, fflags, zero<br> [0x80006970]:fsw fa2, 1520(a5)<br>  |
| 953|[0x8000f8cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006984]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006988]:csrrs a7, fflags, zero<br> [0x8000698c]:fsw fa2, 1528(a5)<br>  |
| 954|[0x8000f8d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800069a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800069a4]:csrrs a7, fflags, zero<br> [0x800069a8]:fsw fa2, 1536(a5)<br>  |
| 955|[0x8000f8dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800069bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800069c0]:csrrs a7, fflags, zero<br> [0x800069c4]:fsw fa2, 1544(a5)<br>  |
| 956|[0x8000f8e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800069d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800069dc]:csrrs a7, fflags, zero<br> [0x800069e0]:fsw fa2, 1552(a5)<br>  |
| 957|[0x8000f8ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x800069f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800069f8]:csrrs a7, fflags, zero<br> [0x800069fc]:fsw fa2, 1560(a5)<br>  |
| 958|[0x8000f8f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006a10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006a14]:csrrs a7, fflags, zero<br> [0x80006a18]:fsw fa2, 1568(a5)<br>  |
| 959|[0x8000f8fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80006a2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006a30]:csrrs a7, fflags, zero<br> [0x80006a34]:fsw fa2, 1576(a5)<br>  |
| 960|[0x8000f904]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006a48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006a4c]:csrrs a7, fflags, zero<br> [0x80006a50]:fsw fa2, 1584(a5)<br>  |
| 961|[0x8000f90c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006a64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006a68]:csrrs a7, fflags, zero<br> [0x80006a6c]:fsw fa2, 1592(a5)<br>  |
| 962|[0x8000f914]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006a80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006a84]:csrrs a7, fflags, zero<br> [0x80006a88]:fsw fa2, 1600(a5)<br>  |
| 963|[0x8000f91c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80006a9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006aa0]:csrrs a7, fflags, zero<br> [0x80006aa4]:fsw fa2, 1608(a5)<br>  |
| 964|[0x8000f924]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ab8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006abc]:csrrs a7, fflags, zero<br> [0x80006ac0]:fsw fa2, 1616(a5)<br>  |
| 965|[0x8000f92c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ad4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006ad8]:csrrs a7, fflags, zero<br> [0x80006adc]:fsw fa2, 1624(a5)<br>  |
| 966|[0x8000f934]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006af0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006af4]:csrrs a7, fflags, zero<br> [0x80006af8]:fsw fa2, 1632(a5)<br>  |
| 967|[0x8000f93c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006b0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b10]:csrrs a7, fflags, zero<br> [0x80006b14]:fsw fa2, 1640(a5)<br>  |
| 968|[0x8000f944]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006b28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b2c]:csrrs a7, fflags, zero<br> [0x80006b30]:fsw fa2, 1648(a5)<br>  |
| 969|[0x8000f94c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006b44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b48]:csrrs a7, fflags, zero<br> [0x80006b4c]:fsw fa2, 1656(a5)<br>  |
| 970|[0x8000f954]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006b60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b64]:csrrs a7, fflags, zero<br> [0x80006b68]:fsw fa2, 1664(a5)<br>  |
| 971|[0x8000f95c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006b7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b80]:csrrs a7, fflags, zero<br> [0x80006b84]:fsw fa2, 1672(a5)<br>  |
| 972|[0x8000f964]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006b98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006b9c]:csrrs a7, fflags, zero<br> [0x80006ba0]:fsw fa2, 1680(a5)<br>  |
| 973|[0x8000f96c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006bb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006bb8]:csrrs a7, fflags, zero<br> [0x80006bbc]:fsw fa2, 1688(a5)<br>  |
| 974|[0x8000f974]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006bd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006bd4]:csrrs a7, fflags, zero<br> [0x80006bd8]:fsw fa2, 1696(a5)<br>  |
| 975|[0x8000f97c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006bec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006bf0]:csrrs a7, fflags, zero<br> [0x80006bf4]:fsw fa2, 1704(a5)<br>  |
| 976|[0x8000f984]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006c08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c0c]:csrrs a7, fflags, zero<br> [0x80006c10]:fsw fa2, 1712(a5)<br>  |
| 977|[0x8000f98c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006c24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c28]:csrrs a7, fflags, zero<br> [0x80006c2c]:fsw fa2, 1720(a5)<br>  |
| 978|[0x8000f994]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006c40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c44]:csrrs a7, fflags, zero<br> [0x80006c48]:fsw fa2, 1728(a5)<br>  |
| 979|[0x8000f99c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006c5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c60]:csrrs a7, fflags, zero<br> [0x80006c64]:fsw fa2, 1736(a5)<br>  |
| 980|[0x8000f9a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006c78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c7c]:csrrs a7, fflags, zero<br> [0x80006c80]:fsw fa2, 1744(a5)<br>  |
| 981|[0x8000f9ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006c94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006c98]:csrrs a7, fflags, zero<br> [0x80006c9c]:fsw fa2, 1752(a5)<br>  |
| 982|[0x8000f9b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006cb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006cb4]:csrrs a7, fflags, zero<br> [0x80006cb8]:fsw fa2, 1760(a5)<br>  |
| 983|[0x8000f9bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006ccc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006cd0]:csrrs a7, fflags, zero<br> [0x80006cd4]:fsw fa2, 1768(a5)<br>  |
| 984|[0x8000f9c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ce8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006cec]:csrrs a7, fflags, zero<br> [0x80006cf0]:fsw fa2, 1776(a5)<br>  |
| 985|[0x8000f9cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006d04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d08]:csrrs a7, fflags, zero<br> [0x80006d0c]:fsw fa2, 1784(a5)<br>  |
| 986|[0x8000f9d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006d20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d24]:csrrs a7, fflags, zero<br> [0x80006d28]:fsw fa2, 1792(a5)<br>  |
| 987|[0x8000f9dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006d3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d40]:csrrs a7, fflags, zero<br> [0x80006d44]:fsw fa2, 1800(a5)<br>  |
| 988|[0x8000f9e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006d58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d5c]:csrrs a7, fflags, zero<br> [0x80006d60]:fsw fa2, 1808(a5)<br>  |
| 989|[0x8000f9ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006d74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d78]:csrrs a7, fflags, zero<br> [0x80006d7c]:fsw fa2, 1816(a5)<br>  |
| 990|[0x8000f9f4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006d90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006d94]:csrrs a7, fflags, zero<br> [0x80006d98]:fsw fa2, 1824(a5)<br>  |
| 991|[0x8000f9fc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006dac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006db0]:csrrs a7, fflags, zero<br> [0x80006db4]:fsw fa2, 1832(a5)<br>  |
| 992|[0x8000fa04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006dc8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006dcc]:csrrs a7, fflags, zero<br> [0x80006dd0]:fsw fa2, 1840(a5)<br>  |
| 993|[0x8000fa0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006de4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006de8]:csrrs a7, fflags, zero<br> [0x80006dec]:fsw fa2, 1848(a5)<br>  |
| 994|[0x8000fa14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006e00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e04]:csrrs a7, fflags, zero<br> [0x80006e08]:fsw fa2, 1856(a5)<br>  |
| 995|[0x8000fa1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80006e1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e20]:csrrs a7, fflags, zero<br> [0x80006e24]:fsw fa2, 1864(a5)<br>  |
| 996|[0x8000fa24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006e38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e3c]:csrrs a7, fflags, zero<br> [0x80006e40]:fsw fa2, 1872(a5)<br>  |
| 997|[0x8000fa2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80006e54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e58]:csrrs a7, fflags, zero<br> [0x80006e5c]:fsw fa2, 1880(a5)<br>  |
| 998|[0x8000fa34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006e70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e74]:csrrs a7, fflags, zero<br> [0x80006e78]:fsw fa2, 1888(a5)<br>  |
| 999|[0x8000fa3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80006e8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006e90]:csrrs a7, fflags, zero<br> [0x80006e94]:fsw fa2, 1896(a5)<br>  |
|1000|[0x8000fa44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ea8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006eac]:csrrs a7, fflags, zero<br> [0x80006eb0]:fsw fa2, 1904(a5)<br>  |
|1001|[0x8000fa4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ec4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006ec8]:csrrs a7, fflags, zero<br> [0x80006ecc]:fsw fa2, 1912(a5)<br>  |
|1002|[0x8000fa54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ee0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006ee4]:csrrs a7, fflags, zero<br> [0x80006ee8]:fsw fa2, 1920(a5)<br>  |
|1003|[0x8000fa5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80006efc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f00]:csrrs a7, fflags, zero<br> [0x80006f04]:fsw fa2, 1928(a5)<br>  |
|1004|[0x8000fa64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006f18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f1c]:csrrs a7, fflags, zero<br> [0x80006f20]:fsw fa2, 1936(a5)<br>  |
|1005|[0x8000fa6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80006f34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f38]:csrrs a7, fflags, zero<br> [0x80006f3c]:fsw fa2, 1944(a5)<br>  |
|1006|[0x8000fa74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006f50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f54]:csrrs a7, fflags, zero<br> [0x80006f58]:fsw fa2, 1952(a5)<br>  |
|1007|[0x8000fa7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80006f6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f70]:csrrs a7, fflags, zero<br> [0x80006f74]:fsw fa2, 1960(a5)<br>  |
|1008|[0x8000fa84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006f88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006f8c]:csrrs a7, fflags, zero<br> [0x80006f90]:fsw fa2, 1968(a5)<br>  |
|1009|[0x8000fa8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80006fa4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006fa8]:csrrs a7, fflags, zero<br> [0x80006fac]:fsw fa2, 1976(a5)<br>  |
|1010|[0x8000fa94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006fc0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006fc4]:csrrs a7, fflags, zero<br> [0x80006fc8]:fsw fa2, 1984(a5)<br>  |
|1011|[0x8000fa9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80006fdc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006fe0]:csrrs a7, fflags, zero<br> [0x80006fe4]:fsw fa2, 1992(a5)<br>  |
|1012|[0x8000faa4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80006ff8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80006ffc]:csrrs a7, fflags, zero<br> [0x80007000]:fsw fa2, 2000(a5)<br>  |
|1013|[0x8000faac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80007014]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007018]:csrrs a7, fflags, zero<br> [0x8000701c]:fsw fa2, 2008(a5)<br>  |
|1014|[0x8000fab4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007030]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007034]:csrrs a7, fflags, zero<br> [0x80007038]:fsw fa2, 2016(a5)<br>  |
|1015|[0x8000fabc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x8000704c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007050]:csrrs a7, fflags, zero<br> [0x80007054]:fsw fa2, 2024(a5)<br>  |
|1016|[0x8000fac4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000001 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007074]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007078]:csrrs a7, fflags, zero<br> [0x8000707c]:fsw fa2, 0(a5)<br>     |
|1017|[0x8000facc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80007090]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007094]:csrrs a7, fflags, zero<br> [0x80007098]:fsw fa2, 8(a5)<br>     |
|1018|[0x8000fad4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800070ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800070b0]:csrrs a7, fflags, zero<br> [0x800070b4]:fsw fa2, 16(a5)<br>    |
|1019|[0x8000fadc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x800070c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800070cc]:csrrs a7, fflags, zero<br> [0x800070d0]:fsw fa2, 24(a5)<br>    |
|1020|[0x8000fae4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800070e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800070e8]:csrrs a7, fflags, zero<br> [0x800070ec]:fsw fa2, 32(a5)<br>    |
|1021|[0x8000faec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80007100]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007104]:csrrs a7, fflags, zero<br> [0x80007108]:fsw fa2, 40(a5)<br>    |
|1022|[0x8000faf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000711c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007120]:csrrs a7, fflags, zero<br> [0x80007124]:fsw fa2, 48(a5)<br>    |
|1023|[0x8000fafc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80007138]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000713c]:csrrs a7, fflags, zero<br> [0x80007140]:fsw fa2, 56(a5)<br>    |
|1024|[0x8000fb04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007154]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007158]:csrrs a7, fflags, zero<br> [0x8000715c]:fsw fa2, 64(a5)<br>    |
|1025|[0x8000fb0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80007170]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007174]:csrrs a7, fflags, zero<br> [0x80007178]:fsw fa2, 72(a5)<br>    |
|1026|[0x8000fb14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000718c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007190]:csrrs a7, fflags, zero<br> [0x80007194]:fsw fa2, 80(a5)<br>    |
|1027|[0x8000fb1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x800071a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800071ac]:csrrs a7, fflags, zero<br> [0x800071b0]:fsw fa2, 88(a5)<br>    |
|1028|[0x8000fb24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800071c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800071c8]:csrrs a7, fflags, zero<br> [0x800071cc]:fsw fa2, 96(a5)<br>    |
|1029|[0x8000fb2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800071e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800071e4]:csrrs a7, fflags, zero<br> [0x800071e8]:fsw fa2, 104(a5)<br>   |
|1030|[0x8000fb34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x800071fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007200]:csrrs a7, fflags, zero<br> [0x80007204]:fsw fa2, 112(a5)<br>   |
|1031|[0x8000fb3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007218]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000721c]:csrrs a7, fflags, zero<br> [0x80007220]:fsw fa2, 120(a5)<br>   |
|1032|[0x8000fb44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80007234]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007238]:csrrs a7, fflags, zero<br> [0x8000723c]:fsw fa2, 128(a5)<br>   |
|1033|[0x8000fb4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007250]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007254]:csrrs a7, fflags, zero<br> [0x80007258]:fsw fa2, 136(a5)<br>   |
|1034|[0x8000fb54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x8000726c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007270]:csrrs a7, fflags, zero<br> [0x80007274]:fsw fa2, 144(a5)<br>   |
|1035|[0x8000fb5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007288]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000728c]:csrrs a7, fflags, zero<br> [0x80007290]:fsw fa2, 152(a5)<br>   |
|1036|[0x8000fb64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x800072a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800072a8]:csrrs a7, fflags, zero<br> [0x800072ac]:fsw fa2, 160(a5)<br>   |
|1037|[0x8000fb6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800072c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800072c4]:csrrs a7, fflags, zero<br> [0x800072c8]:fsw fa2, 168(a5)<br>   |
|1038|[0x8000fb74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x800072dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800072e0]:csrrs a7, fflags, zero<br> [0x800072e4]:fsw fa2, 176(a5)<br>   |
|1039|[0x8000fb7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800072f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800072fc]:csrrs a7, fflags, zero<br> [0x80007300]:fsw fa2, 184(a5)<br>   |
|1040|[0x8000fb84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80007314]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007318]:csrrs a7, fflags, zero<br> [0x8000731c]:fsw fa2, 192(a5)<br>   |
|1041|[0x8000fb8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007330]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007334]:csrrs a7, fflags, zero<br> [0x80007338]:fsw fa2, 200(a5)<br>   |
|1042|[0x8000fb94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x8000734c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007350]:csrrs a7, fflags, zero<br> [0x80007354]:fsw fa2, 208(a5)<br>   |
|1043|[0x8000fb9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007368]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000736c]:csrrs a7, fflags, zero<br> [0x80007370]:fsw fa2, 216(a5)<br>   |
|1044|[0x8000fba4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80007384]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007388]:csrrs a7, fflags, zero<br> [0x8000738c]:fsw fa2, 224(a5)<br>   |
|1045|[0x8000fbac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800073a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800073a4]:csrrs a7, fflags, zero<br> [0x800073a8]:fsw fa2, 232(a5)<br>   |
|1046|[0x8000fbb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x800073bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800073c0]:csrrs a7, fflags, zero<br> [0x800073c4]:fsw fa2, 240(a5)<br>   |
|1047|[0x8000fbbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800073d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800073dc]:csrrs a7, fflags, zero<br> [0x800073e0]:fsw fa2, 248(a5)<br>   |
|1048|[0x8000fbc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x800073f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800073f8]:csrrs a7, fflags, zero<br> [0x800073fc]:fsw fa2, 256(a5)<br>   |
|1049|[0x8000fbcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007410]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007414]:csrrs a7, fflags, zero<br> [0x80007418]:fsw fa2, 264(a5)<br>   |
|1050|[0x8000fbd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000742c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007430]:csrrs a7, fflags, zero<br> [0x80007434]:fsw fa2, 272(a5)<br>   |
|1051|[0x8000fbdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007448]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000744c]:csrrs a7, fflags, zero<br> [0x80007450]:fsw fa2, 280(a5)<br>   |
|1052|[0x8000fbe4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80007464]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007468]:csrrs a7, fflags, zero<br> [0x8000746c]:fsw fa2, 288(a5)<br>   |
|1053|[0x8000fbec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007480]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007484]:csrrs a7, fflags, zero<br> [0x80007488]:fsw fa2, 296(a5)<br>   |
|1054|[0x8000fbf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000749c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800074a0]:csrrs a7, fflags, zero<br> [0x800074a4]:fsw fa2, 304(a5)<br>   |
|1055|[0x8000fbfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800074b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800074bc]:csrrs a7, fflags, zero<br> [0x800074c0]:fsw fa2, 312(a5)<br>   |
|1056|[0x8000fc04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800074d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800074d8]:csrrs a7, fflags, zero<br> [0x800074dc]:fsw fa2, 320(a5)<br>   |
|1057|[0x8000fc0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800074f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800074f4]:csrrs a7, fflags, zero<br> [0x800074f8]:fsw fa2, 328(a5)<br>   |
|1058|[0x8000fc14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x8000750c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007510]:csrrs a7, fflags, zero<br> [0x80007514]:fsw fa2, 336(a5)<br>   |
|1059|[0x8000fc1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007528]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000752c]:csrrs a7, fflags, zero<br> [0x80007530]:fsw fa2, 344(a5)<br>   |
|1060|[0x8000fc24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80007544]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007548]:csrrs a7, fflags, zero<br> [0x8000754c]:fsw fa2, 352(a5)<br>   |
|1061|[0x8000fc2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007560]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007564]:csrrs a7, fflags, zero<br> [0x80007568]:fsw fa2, 360(a5)<br>   |
|1062|[0x8000fc34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000757c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007580]:csrrs a7, fflags, zero<br> [0x80007584]:fsw fa2, 368(a5)<br>   |
|1063|[0x8000fc3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007598]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000759c]:csrrs a7, fflags, zero<br> [0x800075a0]:fsw fa2, 376(a5)<br>   |
|1064|[0x8000fc44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x800075b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800075b8]:csrrs a7, fflags, zero<br> [0x800075bc]:fsw fa2, 384(a5)<br>   |
|1065|[0x8000fc4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800075d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800075d4]:csrrs a7, fflags, zero<br> [0x800075d8]:fsw fa2, 392(a5)<br>   |
|1066|[0x8000fc54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800075ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800075f0]:csrrs a7, fflags, zero<br> [0x800075f4]:fsw fa2, 400(a5)<br>   |
|1067|[0x8000fc5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007608]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000760c]:csrrs a7, fflags, zero<br> [0x80007610]:fsw fa2, 408(a5)<br>   |
|1068|[0x8000fc64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007624]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007628]:csrrs a7, fflags, zero<br> [0x8000762c]:fsw fa2, 416(a5)<br>   |
|1069|[0x8000fc6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007640]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007644]:csrrs a7, fflags, zero<br> [0x80007648]:fsw fa2, 424(a5)<br>   |
|1070|[0x8000fc74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x8000765c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007660]:csrrs a7, fflags, zero<br> [0x80007664]:fsw fa2, 432(a5)<br>   |
|1071|[0x8000fc7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007678]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000767c]:csrrs a7, fflags, zero<br> [0x80007680]:fsw fa2, 440(a5)<br>   |
|1072|[0x8000fc84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007694]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007698]:csrrs a7, fflags, zero<br> [0x8000769c]:fsw fa2, 448(a5)<br>   |
|1073|[0x8000fc8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800076b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800076b4]:csrrs a7, fflags, zero<br> [0x800076b8]:fsw fa2, 456(a5)<br>   |
|1074|[0x8000fc94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x800076cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800076d0]:csrrs a7, fflags, zero<br> [0x800076d4]:fsw fa2, 464(a5)<br>   |
|1075|[0x8000fc9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800076e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800076ec]:csrrs a7, fflags, zero<br> [0x800076f0]:fsw fa2, 472(a5)<br>   |
|1076|[0x8000fca4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007704]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007708]:csrrs a7, fflags, zero<br> [0x8000770c]:fsw fa2, 480(a5)<br>   |
|1077|[0x8000fcac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007720]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007724]:csrrs a7, fflags, zero<br> [0x80007728]:fsw fa2, 488(a5)<br>   |
|1078|[0x8000fcb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000773c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007740]:csrrs a7, fflags, zero<br> [0x80007744]:fsw fa2, 496(a5)<br>   |
|1079|[0x8000fcbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007758]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000775c]:csrrs a7, fflags, zero<br> [0x80007760]:fsw fa2, 504(a5)<br>   |
|1080|[0x8000fcc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007774]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007778]:csrrs a7, fflags, zero<br> [0x8000777c]:fsw fa2, 512(a5)<br>   |
|1081|[0x8000fccc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007790]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007794]:csrrs a7, fflags, zero<br> [0x80007798]:fsw fa2, 520(a5)<br>   |
|1082|[0x8000fcd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x800077ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800077b0]:csrrs a7, fflags, zero<br> [0x800077b4]:fsw fa2, 528(a5)<br>   |
|1083|[0x8000fcdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800077c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800077cc]:csrrs a7, fflags, zero<br> [0x800077d0]:fsw fa2, 536(a5)<br>   |
|1084|[0x8000fce4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800077e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800077e8]:csrrs a7, fflags, zero<br> [0x800077ec]:fsw fa2, 544(a5)<br>   |
|1085|[0x8000fcec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007800]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007804]:csrrs a7, fflags, zero<br> [0x80007808]:fsw fa2, 552(a5)<br>   |
|1086|[0x8000fcf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000781c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007820]:csrrs a7, fflags, zero<br> [0x80007824]:fsw fa2, 560(a5)<br>   |
|1087|[0x8000fcfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007838]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000783c]:csrrs a7, fflags, zero<br> [0x80007840]:fsw fa2, 568(a5)<br>   |
|1088|[0x8000fd04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007854]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007858]:csrrs a7, fflags, zero<br> [0x8000785c]:fsw fa2, 576(a5)<br>   |
|1089|[0x8000fd0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007870]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007874]:csrrs a7, fflags, zero<br> [0x80007878]:fsw fa2, 584(a5)<br>   |
|1090|[0x8000fd14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000788c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007890]:csrrs a7, fflags, zero<br> [0x80007894]:fsw fa2, 592(a5)<br>   |
|1091|[0x8000fd1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800078a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800078ac]:csrrs a7, fflags, zero<br> [0x800078b0]:fsw fa2, 600(a5)<br>   |
|1092|[0x8000fd24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x800078c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800078c8]:csrrs a7, fflags, zero<br> [0x800078cc]:fsw fa2, 608(a5)<br>   |
|1093|[0x8000fd2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800078e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800078e4]:csrrs a7, fflags, zero<br> [0x800078e8]:fsw fa2, 616(a5)<br>   |
|1094|[0x8000fd34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800078fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007900]:csrrs a7, fflags, zero<br> [0x80007904]:fsw fa2, 624(a5)<br>   |
|1095|[0x8000fd3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007918]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000791c]:csrrs a7, fflags, zero<br> [0x80007920]:fsw fa2, 632(a5)<br>   |
|1096|[0x8000fd44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007934]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007938]:csrrs a7, fflags, zero<br> [0x8000793c]:fsw fa2, 640(a5)<br>   |
|1097|[0x8000fd4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007950]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007954]:csrrs a7, fflags, zero<br> [0x80007958]:fsw fa2, 648(a5)<br>   |
|1098|[0x8000fd54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000796c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007970]:csrrs a7, fflags, zero<br> [0x80007974]:fsw fa2, 656(a5)<br>   |
|1099|[0x8000fd5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007988]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000798c]:csrrs a7, fflags, zero<br> [0x80007990]:fsw fa2, 664(a5)<br>   |
|1100|[0x8000fd64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x800079a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800079a8]:csrrs a7, fflags, zero<br> [0x800079ac]:fsw fa2, 672(a5)<br>   |
|1101|[0x8000fd6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800079c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800079c4]:csrrs a7, fflags, zero<br> [0x800079c8]:fsw fa2, 680(a5)<br>   |
|1102|[0x8000fd74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800079dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800079e0]:csrrs a7, fflags, zero<br> [0x800079e4]:fsw fa2, 688(a5)<br>   |
|1103|[0x8000fd7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800079f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800079fc]:csrrs a7, fflags, zero<br> [0x80007a00]:fsw fa2, 696(a5)<br>   |
|1104|[0x8000fd84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007a14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007a18]:csrrs a7, fflags, zero<br> [0x80007a1c]:fsw fa2, 704(a5)<br>   |
|1105|[0x8000fd8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x7fffff and fs2 == 0 and fe2 == 0x7f and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007a30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007a34]:csrrs a7, fflags, zero<br> [0x80007a38]:fsw fa2, 712(a5)<br>   |
|1106|[0x8000fd94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80007a4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007a50]:csrrs a7, fflags, zero<br> [0x80007a54]:fsw fa2, 720(a5)<br>   |
|1107|[0x8000fd9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007a68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007a6c]:csrrs a7, fflags, zero<br> [0x80007a70]:fsw fa2, 728(a5)<br>   |
|1108|[0x8000fda4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80007a84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007a88]:csrrs a7, fflags, zero<br> [0x80007a8c]:fsw fa2, 736(a5)<br>   |
|1109|[0x8000fdac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007aa0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007aa4]:csrrs a7, fflags, zero<br> [0x80007aa8]:fsw fa2, 744(a5)<br>   |
|1110|[0x8000fdb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80007abc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007ac0]:csrrs a7, fflags, zero<br> [0x80007ac4]:fsw fa2, 752(a5)<br>   |
|1111|[0x8000fdbc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007ad8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007adc]:csrrs a7, fflags, zero<br> [0x80007ae0]:fsw fa2, 760(a5)<br>   |
|1112|[0x8000fdc4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x80007af4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007af8]:csrrs a7, fflags, zero<br> [0x80007afc]:fsw fa2, 768(a5)<br>   |
|1113|[0x8000fdcc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007b10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007b14]:csrrs a7, fflags, zero<br> [0x80007b18]:fsw fa2, 776(a5)<br>   |
|1114|[0x8000fdd4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x80007b2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007b30]:csrrs a7, fflags, zero<br> [0x80007b34]:fsw fa2, 784(a5)<br>   |
|1115|[0x8000fddc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007b48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007b4c]:csrrs a7, fflags, zero<br> [0x80007b50]:fsw fa2, 792(a5)<br>   |
|1116|[0x8000fde4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80007b64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007b68]:csrrs a7, fflags, zero<br> [0x80007b6c]:fsw fa2, 800(a5)<br>   |
|1117|[0x8000fdec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007b80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007b84]:csrrs a7, fflags, zero<br> [0x80007b88]:fsw fa2, 808(a5)<br>   |
|1118|[0x8000fdf4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80007b9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007ba0]:csrrs a7, fflags, zero<br> [0x80007ba4]:fsw fa2, 816(a5)<br>   |
|1119|[0x8000fdfc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007bb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007bbc]:csrrs a7, fflags, zero<br> [0x80007bc0]:fsw fa2, 824(a5)<br>   |
|1120|[0x8000fe04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80007bd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007bd8]:csrrs a7, fflags, zero<br> [0x80007bdc]:fsw fa2, 832(a5)<br>   |
|1121|[0x8000fe0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007bf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007bf4]:csrrs a7, fflags, zero<br> [0x80007bf8]:fsw fa2, 840(a5)<br>   |
|1122|[0x8000fe14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x80007c0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c10]:csrrs a7, fflags, zero<br> [0x80007c14]:fsw fa2, 848(a5)<br>   |
|1123|[0x8000fe1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007c28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c2c]:csrrs a7, fflags, zero<br> [0x80007c30]:fsw fa2, 856(a5)<br>   |
|1124|[0x8000fe24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x80007c44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c48]:csrrs a7, fflags, zero<br> [0x80007c4c]:fsw fa2, 864(a5)<br>   |
|1125|[0x8000fe2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007c60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c64]:csrrs a7, fflags, zero<br> [0x80007c68]:fsw fa2, 872(a5)<br>   |
|1126|[0x8000fe34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80007c7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c80]:csrrs a7, fflags, zero<br> [0x80007c84]:fsw fa2, 880(a5)<br>   |
|1127|[0x8000fe3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007c98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007c9c]:csrrs a7, fflags, zero<br> [0x80007ca0]:fsw fa2, 888(a5)<br>   |
|1128|[0x8000fe44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80007cb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007cb8]:csrrs a7, fflags, zero<br> [0x80007cbc]:fsw fa2, 896(a5)<br>   |
|1129|[0x8000fe4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007cd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007cd4]:csrrs a7, fflags, zero<br> [0x80007cd8]:fsw fa2, 904(a5)<br>   |
|1130|[0x8000fe54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x80007cec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007cf0]:csrrs a7, fflags, zero<br> [0x80007cf4]:fsw fa2, 912(a5)<br>   |
|1131|[0x8000fe5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007d08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d0c]:csrrs a7, fflags, zero<br> [0x80007d10]:fsw fa2, 920(a5)<br>   |
|1132|[0x8000fe64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x80007d24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d28]:csrrs a7, fflags, zero<br> [0x80007d2c]:fsw fa2, 928(a5)<br>   |
|1133|[0x8000fe6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007d40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d44]:csrrs a7, fflags, zero<br> [0x80007d48]:fsw fa2, 936(a5)<br>   |
|1134|[0x8000fe74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80007d5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d60]:csrrs a7, fflags, zero<br> [0x80007d64]:fsw fa2, 944(a5)<br>   |
|1135|[0x8000fe7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007d78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d7c]:csrrs a7, fflags, zero<br> [0x80007d80]:fsw fa2, 952(a5)<br>   |
|1136|[0x8000fe84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80007d94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007d98]:csrrs a7, fflags, zero<br> [0x80007d9c]:fsw fa2, 960(a5)<br>   |
|1137|[0x8000fe8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007db0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007db4]:csrrs a7, fflags, zero<br> [0x80007db8]:fsw fa2, 968(a5)<br>   |
|1138|[0x8000fe94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007dcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007dd0]:csrrs a7, fflags, zero<br> [0x80007dd4]:fsw fa2, 976(a5)<br>   |
|1139|[0x8000fe9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80007de8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007dec]:csrrs a7, fflags, zero<br> [0x80007df0]:fsw fa2, 984(a5)<br>   |
|1140|[0x8000fea4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007e04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e08]:csrrs a7, fflags, zero<br> [0x80007e0c]:fsw fa2, 992(a5)<br>   |
|1141|[0x8000feac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x80007e20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e24]:csrrs a7, fflags, zero<br> [0x80007e28]:fsw fa2, 1000(a5)<br>  |
|1142|[0x8000feb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007e3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e40]:csrrs a7, fflags, zero<br> [0x80007e44]:fsw fa2, 1008(a5)<br>  |
|1143|[0x8000febc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x80007e58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e5c]:csrrs a7, fflags, zero<br> [0x80007e60]:fsw fa2, 1016(a5)<br>  |
|1144|[0x8000fec4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007e74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e78]:csrrs a7, fflags, zero<br> [0x80007e7c]:fsw fa2, 1024(a5)<br>  |
|1145|[0x8000fecc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80007e90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007e94]:csrrs a7, fflags, zero<br> [0x80007e98]:fsw fa2, 1032(a5)<br>  |
|1146|[0x8000fed4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007eac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007eb0]:csrrs a7, fflags, zero<br> [0x80007eb4]:fsw fa2, 1040(a5)<br>  |
|1147|[0x8000fedc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80007ec8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007ecc]:csrrs a7, fflags, zero<br> [0x80007ed0]:fsw fa2, 1048(a5)<br>  |
|1148|[0x8000fee4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007ee4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007ee8]:csrrs a7, fflags, zero<br> [0x80007eec]:fsw fa2, 1056(a5)<br>  |
|1149|[0x8000feec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80007f00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f04]:csrrs a7, fflags, zero<br> [0x80007f08]:fsw fa2, 1064(a5)<br>  |
|1150|[0x8000fef4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007f1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f20]:csrrs a7, fflags, zero<br> [0x80007f24]:fsw fa2, 1072(a5)<br>  |
|1151|[0x8000fefc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80007f38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f3c]:csrrs a7, fflags, zero<br> [0x80007f40]:fsw fa2, 1080(a5)<br>  |
|1152|[0x8000ff04]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007f54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f58]:csrrs a7, fflags, zero<br> [0x80007f5c]:fsw fa2, 1088(a5)<br>  |
|1153|[0x8000ff0c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80007f70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f74]:csrrs a7, fflags, zero<br> [0x80007f78]:fsw fa2, 1096(a5)<br>  |
|1154|[0x8000ff14]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007f8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007f90]:csrrs a7, fflags, zero<br> [0x80007f94]:fsw fa2, 1104(a5)<br>  |
|1155|[0x8000ff1c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80007fa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007fac]:csrrs a7, fflags, zero<br> [0x80007fb0]:fsw fa2, 1112(a5)<br>  |
|1156|[0x8000ff24]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007fc4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007fc8]:csrrs a7, fflags, zero<br> [0x80007fcc]:fsw fa2, 1120(a5)<br>  |
|1157|[0x8000ff2c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80007fe0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80007fe4]:csrrs a7, fflags, zero<br> [0x80007fe8]:fsw fa2, 1128(a5)<br>  |
|1158|[0x8000ff34]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80007ffc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008000]:csrrs a7, fflags, zero<br> [0x80008004]:fsw fa2, 1136(a5)<br>  |
|1159|[0x8000ff3c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008018]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000801c]:csrrs a7, fflags, zero<br> [0x80008020]:fsw fa2, 1144(a5)<br>  |
|1160|[0x8000ff44]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008034]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008038]:csrrs a7, fflags, zero<br> [0x8000803c]:fsw fa2, 1152(a5)<br>  |
|1161|[0x8000ff4c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80008050]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008054]:csrrs a7, fflags, zero<br> [0x80008058]:fsw fa2, 1160(a5)<br>  |
|1162|[0x8000ff54]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000806c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008070]:csrrs a7, fflags, zero<br> [0x80008074]:fsw fa2, 1168(a5)<br>  |
|1163|[0x8000ff5c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008088]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000808c]:csrrs a7, fflags, zero<br> [0x80008090]:fsw fa2, 1176(a5)<br>  |
|1164|[0x8000ff64]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800080a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800080a8]:csrrs a7, fflags, zero<br> [0x800080ac]:fsw fa2, 1184(a5)<br>  |
|1165|[0x8000ff6c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x800080c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800080c4]:csrrs a7, fflags, zero<br> [0x800080c8]:fsw fa2, 1192(a5)<br>  |
|1166|[0x8000ff74]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800080dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800080e0]:csrrs a7, fflags, zero<br> [0x800080e4]:fsw fa2, 1200(a5)<br>  |
|1167|[0x8000ff7c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x800080f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800080fc]:csrrs a7, fflags, zero<br> [0x80008100]:fsw fa2, 1208(a5)<br>  |
|1168|[0x8000ff84]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008114]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008118]:csrrs a7, fflags, zero<br> [0x8000811c]:fsw fa2, 1216(a5)<br>  |
|1169|[0x8000ff8c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80008130]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008134]:csrrs a7, fflags, zero<br> [0x80008138]:fsw fa2, 1224(a5)<br>  |
|1170|[0x8000ff94]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000814c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008150]:csrrs a7, fflags, zero<br> [0x80008154]:fsw fa2, 1232(a5)<br>  |
|1171|[0x8000ff9c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008168]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000816c]:csrrs a7, fflags, zero<br> [0x80008170]:fsw fa2, 1240(a5)<br>  |
|1172|[0x8000ffa4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008184]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008188]:csrrs a7, fflags, zero<br> [0x8000818c]:fsw fa2, 1248(a5)<br>  |
|1173|[0x8000ffac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x800081a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800081a4]:csrrs a7, fflags, zero<br> [0x800081a8]:fsw fa2, 1256(a5)<br>  |
|1174|[0x8000ffb4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800081bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800081c0]:csrrs a7, fflags, zero<br> [0x800081c4]:fsw fa2, 1264(a5)<br>  |
|1175|[0x8000ffbc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x800081d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800081dc]:csrrs a7, fflags, zero<br> [0x800081e0]:fsw fa2, 1272(a5)<br>  |
|1176|[0x8000ffc4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800081f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800081f8]:csrrs a7, fflags, zero<br> [0x800081fc]:fsw fa2, 1280(a5)<br>  |
|1177|[0x8000ffcc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008210]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008214]:csrrs a7, fflags, zero<br> [0x80008218]:fsw fa2, 1288(a5)<br>  |
|1178|[0x8000ffd4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000822c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008230]:csrrs a7, fflags, zero<br> [0x80008234]:fsw fa2, 1296(a5)<br>  |
|1179|[0x8000ffdc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008248]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000824c]:csrrs a7, fflags, zero<br> [0x80008250]:fsw fa2, 1304(a5)<br>  |
|1180|[0x8000ffe4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008264]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008268]:csrrs a7, fflags, zero<br> [0x8000826c]:fsw fa2, 1312(a5)<br>  |
|1181|[0x8000ffec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008280]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008284]:csrrs a7, fflags, zero<br> [0x80008288]:fsw fa2, 1320(a5)<br>  |
|1182|[0x8000fff4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000829c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800082a0]:csrrs a7, fflags, zero<br> [0x800082a4]:fsw fa2, 1328(a5)<br>  |
|1183|[0x8000fffc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x800082b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800082bc]:csrrs a7, fflags, zero<br> [0x800082c0]:fsw fa2, 1336(a5)<br>  |
|1184|[0x80010004]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800082d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800082d8]:csrrs a7, fflags, zero<br> [0x800082dc]:fsw fa2, 1344(a5)<br>  |
|1185|[0x8001000c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x800082f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800082f4]:csrrs a7, fflags, zero<br> [0x800082f8]:fsw fa2, 1352(a5)<br>  |
|1186|[0x80010014]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000830c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008310]:csrrs a7, fflags, zero<br> [0x80008314]:fsw fa2, 1360(a5)<br>  |
|1187|[0x8001001c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008328]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000832c]:csrrs a7, fflags, zero<br> [0x80008330]:fsw fa2, 1368(a5)<br>  |
|1188|[0x80010024]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008344]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008348]:csrrs a7, fflags, zero<br> [0x8000834c]:fsw fa2, 1376(a5)<br>  |
|1189|[0x8001002c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008360]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008364]:csrrs a7, fflags, zero<br> [0x80008368]:fsw fa2, 1384(a5)<br>  |
|1190|[0x80010034]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000837c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008380]:csrrs a7, fflags, zero<br> [0x80008384]:fsw fa2, 1392(a5)<br>  |
|1191|[0x8001003c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008398]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000839c]:csrrs a7, fflags, zero<br> [0x800083a0]:fsw fa2, 1400(a5)<br>  |
|1192|[0x80010044]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800083b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800083b8]:csrrs a7, fflags, zero<br> [0x800083bc]:fsw fa2, 1408(a5)<br>  |
|1193|[0x8001004c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x800083d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800083d4]:csrrs a7, fflags, zero<br> [0x800083d8]:fsw fa2, 1416(a5)<br>  |
|1194|[0x80010054]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800083ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800083f0]:csrrs a7, fflags, zero<br> [0x800083f4]:fsw fa2, 1424(a5)<br>  |
|1195|[0x8001005c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008408]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000840c]:csrrs a7, fflags, zero<br> [0x80008410]:fsw fa2, 1432(a5)<br>  |
|1196|[0x80010064]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008424]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008428]:csrrs a7, fflags, zero<br> [0x8000842c]:fsw fa2, 1440(a5)<br>  |
|1197|[0x8001006c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008440]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008444]:csrrs a7, fflags, zero<br> [0x80008448]:fsw fa2, 1448(a5)<br>  |
|1198|[0x80010074]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000845c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008460]:csrrs a7, fflags, zero<br> [0x80008464]:fsw fa2, 1456(a5)<br>  |
|1199|[0x8001007c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008478]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000847c]:csrrs a7, fflags, zero<br> [0x80008480]:fsw fa2, 1464(a5)<br>  |
|1200|[0x80010084]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008494]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008498]:csrrs a7, fflags, zero<br> [0x8000849c]:fsw fa2, 1472(a5)<br>  |
|1201|[0x8001008c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x800084b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800084b4]:csrrs a7, fflags, zero<br> [0x800084b8]:fsw fa2, 1480(a5)<br>  |
|1202|[0x80010094]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800084cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800084d0]:csrrs a7, fflags, zero<br> [0x800084d4]:fsw fa2, 1488(a5)<br>  |
|1203|[0x8001009c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800084e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800084ec]:csrrs a7, fflags, zero<br> [0x800084f0]:fsw fa2, 1496(a5)<br>  |
|1204|[0x800100a4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008504]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008508]:csrrs a7, fflags, zero<br> [0x8000850c]:fsw fa2, 1504(a5)<br>  |
|1205|[0x800100ac]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008520]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008524]:csrrs a7, fflags, zero<br> [0x80008528]:fsw fa2, 1512(a5)<br>  |
|1206|[0x800100b4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000853c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008540]:csrrs a7, fflags, zero<br> [0x80008544]:fsw fa2, 1520(a5)<br>  |
|1207|[0x800100bc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008558]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000855c]:csrrs a7, fflags, zero<br> [0x80008560]:fsw fa2, 1528(a5)<br>  |
|1208|[0x800100c4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008574]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008578]:csrrs a7, fflags, zero<br> [0x8000857c]:fsw fa2, 1536(a5)<br>  |
|1209|[0x800100cc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008590]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008594]:csrrs a7, fflags, zero<br> [0x80008598]:fsw fa2, 1544(a5)<br>  |
|1210|[0x800100d4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800085ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800085b0]:csrrs a7, fflags, zero<br> [0x800085b4]:fsw fa2, 1552(a5)<br>  |
|1211|[0x800100dc]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800085c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800085cc]:csrrs a7, fflags, zero<br> [0x800085d0]:fsw fa2, 1560(a5)<br>  |
|1212|[0x800100e4]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800085e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800085e8]:csrrs a7, fflags, zero<br> [0x800085ec]:fsw fa2, 1568(a5)<br>  |
|1213|[0x800100ec]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008600]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008604]:csrrs a7, fflags, zero<br> [0x80008608]:fsw fa2, 1576(a5)<br>  |
|1214|[0x800100f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x4ccccc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000861c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008620]:csrrs a7, fflags, zero<br> [0x80008624]:fsw fa2, 1584(a5)<br>  |
|1215|[0x800100fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x80008638]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000863c]:csrrs a7, fflags, zero<br> [0x80008640]:fsw fa2, 1592(a5)<br>  |
|1216|[0x80010104]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x333333 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008654]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008658]:csrrs a7, fflags, zero<br> [0x8000865c]:fsw fa2, 1600(a5)<br>  |
|1217|[0x8001010c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x333333 and rm_val == 0  #nosat<br>                                                                                              |[0x80008670]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008674]:csrrs a7, fflags, zero<br> [0x80008678]:fsw fa2, 1608(a5)<br>  |
|1218|[0x80010114]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x5b6db6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000868c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008690]:csrrs a7, fflags, zero<br> [0x80008694]:fsw fa2, 1616(a5)<br>  |
|1219|[0x8001011c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x5b6db6 and rm_val == 0  #nosat<br>                                                                                              |[0x800086a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800086ac]:csrrs a7, fflags, zero<br> [0x800086b0]:fsw fa2, 1624(a5)<br>  |
|1220|[0x80010124]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x249249 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800086c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800086c8]:csrrs a7, fflags, zero<br> [0x800086cc]:fsw fa2, 1632(a5)<br>  |
|1221|[0x8001012c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x249249 and rm_val == 0  #nosat<br>                                                                                              |[0x800086e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800086e4]:csrrs a7, fflags, zero<br> [0x800086e8]:fsw fa2, 1640(a5)<br>  |
|1222|[0x80010134]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x444444 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800086fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008700]:csrrs a7, fflags, zero<br> [0x80008704]:fsw fa2, 1648(a5)<br>  |
|1223|[0x8001013c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x444444 and rm_val == 0  #nosat<br>                                                                                              |[0x80008718]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000871c]:csrrs a7, fflags, zero<br> [0x80008720]:fsw fa2, 1656(a5)<br>  |
|1224|[0x80010144]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3bbbbb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008734]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008738]:csrrs a7, fflags, zero<br> [0x8000873c]:fsw fa2, 1664(a5)<br>  |
|1225|[0x8001014c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3bbbbb and rm_val == 0  #nosat<br>                                                                                              |[0x80008750]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008754]:csrrs a7, fflags, zero<br> [0x80008758]:fsw fa2, 1672(a5)<br>  |
|1226|[0x80010154]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x666666 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000876c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008770]:csrrs a7, fflags, zero<br> [0x80008774]:fsw fa2, 1680(a5)<br>  |
|1227|[0x8001015c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x666666 and rm_val == 0  #nosat<br>                                                                                              |[0x80008788]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000878c]:csrrs a7, fflags, zero<br> [0x80008790]:fsw fa2, 1688(a5)<br>  |
|1228|[0x80010164]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x199999 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800087a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800087a8]:csrrs a7, fflags, zero<br> [0x800087ac]:fsw fa2, 1696(a5)<br>  |
|1229|[0x8001016c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x199999 and rm_val == 0  #nosat<br>                                                                                              |[0x800087c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800087c4]:csrrs a7, fflags, zero<br> [0x800087c8]:fsw fa2, 1704(a5)<br>  |
|1230|[0x80010174]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x6db6db and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800087dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800087e0]:csrrs a7, fflags, zero<br> [0x800087e4]:fsw fa2, 1712(a5)<br>  |
|1231|[0x8001017c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x6db6db and rm_val == 0  #nosat<br>                                                                                              |[0x800087f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800087fc]:csrrs a7, fflags, zero<br> [0x80008800]:fsw fa2, 1720(a5)<br>  |
|1232|[0x80010184]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x36db6d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008814]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008818]:csrrs a7, fflags, zero<br> [0x8000881c]:fsw fa2, 1728(a5)<br>  |
|1233|[0x8001018c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x36db6d and rm_val == 0  #nosat<br>                                                                                              |[0x80008830]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008834]:csrrs a7, fflags, zero<br> [0x80008838]:fsw fa2, 1736(a5)<br>  |
|1234|[0x80010194]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000884c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008850]:csrrs a7, fflags, zero<br> [0x80008854]:fsw fa2, 1744(a5)<br>  |
|1235|[0x8001019c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffe and rm_val == 0  #nosat<br>                                                                                              |[0x80008868]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000886c]:csrrs a7, fflags, zero<br> [0x80008870]:fsw fa2, 1752(a5)<br>  |
|1236|[0x800101a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000003 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008884]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008888]:csrrs a7, fflags, zero<br> [0x8000888c]:fsw fa2, 1760(a5)<br>  |
|1237|[0x800101ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000003 and rm_val == 0  #nosat<br>                                                                                              |[0x800088a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800088a4]:csrrs a7, fflags, zero<br> [0x800088a8]:fsw fa2, 1768(a5)<br>  |
|1238|[0x800101b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffffc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800088bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800088c0]:csrrs a7, fflags, zero<br> [0x800088c4]:fsw fa2, 1776(a5)<br>  |
|1239|[0x800101bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffffc and rm_val == 0  #nosat<br>                                                                                              |[0x800088d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800088dc]:csrrs a7, fflags, zero<br> [0x800088e0]:fsw fa2, 1784(a5)<br>  |
|1240|[0x800101c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000007 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800088f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800088f8]:csrrs a7, fflags, zero<br> [0x800088fc]:fsw fa2, 1792(a5)<br>  |
|1241|[0x800101cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000007 and rm_val == 0  #nosat<br>                                                                                              |[0x80008910]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008914]:csrrs a7, fflags, zero<br> [0x80008918]:fsw fa2, 1800(a5)<br>  |
|1242|[0x800101d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000892c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008930]:csrrs a7, fflags, zero<br> [0x80008934]:fsw fa2, 1808(a5)<br>  |
|1243|[0x800101dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff8 and rm_val == 0  #nosat<br>                                                                                              |[0x80008948]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000894c]:csrrs a7, fflags, zero<br> [0x80008950]:fsw fa2, 1816(a5)<br>  |
|1244|[0x800101e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00000f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008964]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008968]:csrrs a7, fflags, zero<br> [0x8000896c]:fsw fa2, 1824(a5)<br>  |
|1245|[0x800101ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00000f and rm_val == 0  #nosat<br>                                                                                              |[0x80008980]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008984]:csrrs a7, fflags, zero<br> [0x80008988]:fsw fa2, 1832(a5)<br>  |
|1246|[0x800101f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffff0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000899c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800089a0]:csrrs a7, fflags, zero<br> [0x800089a4]:fsw fa2, 1840(a5)<br>  |
|1247|[0x800101fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffff0 and rm_val == 0  #nosat<br>                                                                                              |[0x800089b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800089bc]:csrrs a7, fflags, zero<br> [0x800089c0]:fsw fa2, 1848(a5)<br>  |
|1248|[0x80010204]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00001f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800089d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800089d8]:csrrs a7, fflags, zero<br> [0x800089dc]:fsw fa2, 1856(a5)<br>  |
|1249|[0x8001020c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00001f and rm_val == 0  #nosat<br>                                                                                              |[0x800089f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800089f4]:csrrs a7, fflags, zero<br> [0x800089f8]:fsw fa2, 1864(a5)<br>  |
|1250|[0x80010214]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffe0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008a0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a10]:csrrs a7, fflags, zero<br> [0x80008a14]:fsw fa2, 1872(a5)<br>  |
|1251|[0x8001021c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffe0 and rm_val == 0  #nosat<br>                                                                                              |[0x80008a28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a2c]:csrrs a7, fflags, zero<br> [0x80008a30]:fsw fa2, 1880(a5)<br>  |
|1252|[0x80010224]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00003f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008a44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a48]:csrrs a7, fflags, zero<br> [0x80008a4c]:fsw fa2, 1888(a5)<br>  |
|1253|[0x8001022c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00003f and rm_val == 0  #nosat<br>                                                                                              |[0x80008a60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a64]:csrrs a7, fflags, zero<br> [0x80008a68]:fsw fa2, 1896(a5)<br>  |
|1254|[0x80010234]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffc0 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008a7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a80]:csrrs a7, fflags, zero<br> [0x80008a84]:fsw fa2, 1904(a5)<br>  |
|1255|[0x8001023c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fffc0 and rm_val == 0  #nosat<br>                                                                                              |[0x80008a98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008a9c]:csrrs a7, fflags, zero<br> [0x80008aa0]:fsw fa2, 1912(a5)<br>  |
|1256|[0x80010244]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00007f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008ab4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008ab8]:csrrs a7, fflags, zero<br> [0x80008abc]:fsw fa2, 1920(a5)<br>  |
|1257|[0x8001024c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00007f and rm_val == 0  #nosat<br>                                                                                              |[0x80008ad0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008ad4]:csrrs a7, fflags, zero<br> [0x80008ad8]:fsw fa2, 1928(a5)<br>  |
|1258|[0x80010254]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff80 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008aec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008af0]:csrrs a7, fflags, zero<br> [0x80008af4]:fsw fa2, 1936(a5)<br>  |
|1259|[0x8001025c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff80 and rm_val == 0  #nosat<br>                                                                                              |[0x80008b08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b0c]:csrrs a7, fflags, zero<br> [0x80008b10]:fsw fa2, 1944(a5)<br>  |
|1260|[0x80010264]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0000ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008b24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b28]:csrrs a7, fflags, zero<br> [0x80008b2c]:fsw fa2, 1952(a5)<br>  |
|1261|[0x8001026c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0000ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008b40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b44]:csrrs a7, fflags, zero<br> [0x80008b48]:fsw fa2, 1960(a5)<br>  |
|1262|[0x80010274]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fff00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008b5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b60]:csrrs a7, fflags, zero<br> [0x80008b64]:fsw fa2, 1968(a5)<br>  |
|1263|[0x8001027c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fff00 and rm_val == 0  #nosat<br>                                                                                              |[0x80008b78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b7c]:csrrs a7, fflags, zero<br> [0x80008b80]:fsw fa2, 1976(a5)<br>  |
|1264|[0x80010284]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0001ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008b94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008b98]:csrrs a7, fflags, zero<br> [0x80008b9c]:fsw fa2, 1984(a5)<br>  |
|1265|[0x8001028c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0001ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008bb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008bb4]:csrrs a7, fflags, zero<br> [0x80008bb8]:fsw fa2, 1992(a5)<br>  |
|1266|[0x80010294]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffe00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008bcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008bd0]:csrrs a7, fflags, zero<br> [0x80008bd4]:fsw fa2, 2000(a5)<br>  |
|1267|[0x8001029c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffe00 and rm_val == 0  #nosat<br>                                                                                              |[0x80008be8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008bec]:csrrs a7, fflags, zero<br> [0x80008bf0]:fsw fa2, 2008(a5)<br>  |
|1268|[0x800102a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0003ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008c04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008c08]:csrrs a7, fflags, zero<br> [0x80008c0c]:fsw fa2, 2016(a5)<br>  |
|1269|[0x800102ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0003ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008c20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008c24]:csrrs a7, fflags, zero<br> [0x80008c28]:fsw fa2, 2024(a5)<br>  |
|1270|[0x800102b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ffc00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008c48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008c4c]:csrrs a7, fflags, zero<br> [0x80008c50]:fsw fa2, 0(a5)<br>     |
|1271|[0x800102bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ffc00 and rm_val == 0  #nosat<br>                                                                                              |[0x80008c64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008c68]:csrrs a7, fflags, zero<br> [0x80008c6c]:fsw fa2, 8(a5)<br>     |
|1272|[0x800102c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008c80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008c84]:csrrs a7, fflags, zero<br> [0x80008c88]:fsw fa2, 16(a5)<br>    |
|1273|[0x800102cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0007ff and rm_val == 0  #nosat<br>                                                                                              |[0x80008c9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008ca0]:csrrs a7, fflags, zero<br> [0x80008ca4]:fsw fa2, 24(a5)<br>    |
|1274|[0x800102d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff800 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008cb8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008cbc]:csrrs a7, fflags, zero<br> [0x80008cc0]:fsw fa2, 32(a5)<br>    |
|1275|[0x800102dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff800 and rm_val == 0  #nosat<br>                                                                                              |[0x80008cd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008cd8]:csrrs a7, fflags, zero<br> [0x80008cdc]:fsw fa2, 40(a5)<br>    |
|1276|[0x800102e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008cf0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008cf4]:csrrs a7, fflags, zero<br> [0x80008cf8]:fsw fa2, 48(a5)<br>    |
|1277|[0x800102ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008d0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d10]:csrrs a7, fflags, zero<br> [0x80008d14]:fsw fa2, 56(a5)<br>    |
|1278|[0x800102f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7ff000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008d28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d2c]:csrrs a7, fflags, zero<br> [0x80008d30]:fsw fa2, 64(a5)<br>    |
|1279|[0x800102fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7ff000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008d44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d48]:csrrs a7, fflags, zero<br> [0x80008d4c]:fsw fa2, 72(a5)<br>    |
|1280|[0x80010304]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008d60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d64]:csrrs a7, fflags, zero<br> [0x80008d68]:fsw fa2, 80(a5)<br>    |
|1281|[0x8001030c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008d7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d80]:csrrs a7, fflags, zero<br> [0x80008d84]:fsw fa2, 88(a5)<br>    |
|1282|[0x80010314]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fe000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008d98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008d9c]:csrrs a7, fflags, zero<br> [0x80008da0]:fsw fa2, 96(a5)<br>    |
|1283|[0x8001031c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fe000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008db4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008db8]:csrrs a7, fflags, zero<br> [0x80008dbc]:fsw fa2, 104(a5)<br>   |
|1284|[0x80010324]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x003fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008dd0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008dd4]:csrrs a7, fflags, zero<br> [0x80008dd8]:fsw fa2, 112(a5)<br>   |
|1285|[0x8001032c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x003fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008dec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008df0]:csrrs a7, fflags, zero<br> [0x80008df4]:fsw fa2, 120(a5)<br>   |
|1286|[0x80010334]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fc000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008e08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e0c]:csrrs a7, fflags, zero<br> [0x80008e10]:fsw fa2, 128(a5)<br>   |
|1287|[0x8001033c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7fc000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008e24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e28]:csrrs a7, fflags, zero<br> [0x80008e2c]:fsw fa2, 136(a5)<br>   |
|1288|[0x80010344]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x007fff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008e40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e44]:csrrs a7, fflags, zero<br> [0x80008e48]:fsw fa2, 144(a5)<br>   |
|1289|[0x8001034c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x007fff and rm_val == 0  #nosat<br>                                                                                              |[0x80008e5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e60]:csrrs a7, fflags, zero<br> [0x80008e64]:fsw fa2, 152(a5)<br>   |
|1290|[0x80010354]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f8000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008e78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e7c]:csrrs a7, fflags, zero<br> [0x80008e80]:fsw fa2, 160(a5)<br>   |
|1291|[0x8001035c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f8000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008e94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008e98]:csrrs a7, fflags, zero<br> [0x80008e9c]:fsw fa2, 168(a5)<br>   |
|1292|[0x80010364]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x00ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008eb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008eb4]:csrrs a7, fflags, zero<br> [0x80008eb8]:fsw fa2, 176(a5)<br>   |
|1293|[0x8001036c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x00ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008ecc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008ed0]:csrrs a7, fflags, zero<br> [0x80008ed4]:fsw fa2, 184(a5)<br>   |
|1294|[0x80010374]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7f0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008ee8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008eec]:csrrs a7, fflags, zero<br> [0x80008ef0]:fsw fa2, 192(a5)<br>   |
|1295|[0x8001037c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7f0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008f04]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f08]:csrrs a7, fflags, zero<br> [0x80008f0c]:fsw fa2, 200(a5)<br>   |
|1296|[0x80010384]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x01ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008f20]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f24]:csrrs a7, fflags, zero<br> [0x80008f28]:fsw fa2, 208(a5)<br>   |
|1297|[0x8001038c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x01ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008f3c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f40]:csrrs a7, fflags, zero<br> [0x80008f44]:fsw fa2, 216(a5)<br>   |
|1298|[0x80010394]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7e0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008f58]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f5c]:csrrs a7, fflags, zero<br> [0x80008f60]:fsw fa2, 224(a5)<br>   |
|1299|[0x8001039c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7e0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008f74]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f78]:csrrs a7, fflags, zero<br> [0x80008f7c]:fsw fa2, 232(a5)<br>   |
|1300|[0x800103a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x03ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008f90]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008f94]:csrrs a7, fflags, zero<br> [0x80008f98]:fsw fa2, 240(a5)<br>   |
|1301|[0x800103ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x03ffff and rm_val == 0  #nosat<br>                                                                                              |[0x80008fac]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008fb0]:csrrs a7, fflags, zero<br> [0x80008fb4]:fsw fa2, 248(a5)<br>   |
|1302|[0x800103b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x7c0000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008fc8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008fcc]:csrrs a7, fflags, zero<br> [0x80008fd0]:fsw fa2, 256(a5)<br>   |
|1303|[0x800103bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x7c0000 and rm_val == 0  #nosat<br>                                                                                              |[0x80008fe4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80008fe8]:csrrs a7, fflags, zero<br> [0x80008fec]:fsw fa2, 264(a5)<br>   |
|1304|[0x800103c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x07ffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009000]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009004]:csrrs a7, fflags, zero<br> [0x80009008]:fsw fa2, 272(a5)<br>   |
|1305|[0x800103cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x07ffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000901c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009020]:csrrs a7, fflags, zero<br> [0x80009024]:fsw fa2, 280(a5)<br>   |
|1306|[0x800103d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x780000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009038]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000903c]:csrrs a7, fflags, zero<br> [0x80009040]:fsw fa2, 288(a5)<br>   |
|1307|[0x800103dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x780000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009054]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009058]:csrrs a7, fflags, zero<br> [0x8000905c]:fsw fa2, 296(a5)<br>   |
|1308|[0x800103e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x0fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009070]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009074]:csrrs a7, fflags, zero<br> [0x80009078]:fsw fa2, 304(a5)<br>   |
|1309|[0x800103ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x0fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000908c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009090]:csrrs a7, fflags, zero<br> [0x80009094]:fsw fa2, 312(a5)<br>   |
|1310|[0x800103f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x700000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800090a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800090ac]:csrrs a7, fflags, zero<br> [0x800090b0]:fsw fa2, 320(a5)<br>   |
|1311|[0x800103fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x700000 and rm_val == 0  #nosat<br>                                                                                              |[0x800090c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800090c8]:csrrs a7, fflags, zero<br> [0x800090cc]:fsw fa2, 328(a5)<br>   |
|1312|[0x80010404]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x1fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800090e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800090e4]:csrrs a7, fflags, zero<br> [0x800090e8]:fsw fa2, 336(a5)<br>   |
|1313|[0x8001040c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x1fffff and rm_val == 0  #nosat<br>                                                                                              |[0x800090fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009100]:csrrs a7, fflags, zero<br> [0x80009104]:fsw fa2, 344(a5)<br>   |
|1314|[0x80010414]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x600000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009118]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000911c]:csrrs a7, fflags, zero<br> [0x80009120]:fsw fa2, 352(a5)<br>   |
|1315|[0x8001041c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x600000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009134]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009138]:csrrs a7, fflags, zero<br> [0x8000913c]:fsw fa2, 360(a5)<br>   |
|1316|[0x80010424]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3fffff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009150]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009154]:csrrs a7, fflags, zero<br> [0x80009158]:fsw fa2, 368(a5)<br>   |
|1317|[0x8001042c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3fffff and rm_val == 0  #nosat<br>                                                                                              |[0x8000916c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80009170]:csrrs a7, fflags, zero<br> [0x80009174]:fsw fa2, 376(a5)<br>   |
|1318|[0x80010434]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x400000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80009188]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000918c]:csrrs a7, fflags, zero<br> [0x80009190]:fsw fa2, 384(a5)<br>   |
|1319|[0x8001043c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x400000 and rm_val == 0  #nosat<br>                                                                                              |[0x800091a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800091a8]:csrrs a7, fflags, zero<br> [0x800091ac]:fsw fa2, 392(a5)<br>   |
|1320|[0x8001044c]<br>0xD5BFDDB7|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and fs2 == 1 and fe2 == 0xfe and fm2 == 0x4ccccc and rm_val == 0  #nosat<br>                                                                                              |[0x800091dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800091e0]:csrrs a7, fflags, zero<br> [0x800091e4]:fsw fa2, 408(a5)<br>   |
