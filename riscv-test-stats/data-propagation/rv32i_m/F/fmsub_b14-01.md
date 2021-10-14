
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b40')]      |
| SIG_REGION                | [('0x80002504', '0x8000278c', '162 words')]      |
| COV_LABELS                | fmsub_b14      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmsub_b14-01.S/ref.S    |
| Total Number of coverpoints| 221     |
| Total Coverpoints Hit     | 214      |
| Total Signature Updates   | 162      |
| STAT1                     | 81      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmsub.s', 'rs1 : f23', 'rs2 : f23', 'rs3 : f23', 'rd : f22', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x80000128]:fmsub.s fs6, fs7, fs7, fs7, dyn
	-[0x8000012c]:csrrs a7, fflags, zero
	-[0x80000130]:fsw fs6, 0(a5)
Current Store : [0x80000134] : sw a7, 4(a5) -- Store: [0x80002508]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f4', 'rs3 : f2', 'rd : f2', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x80000148]:fmsub.s ft2, ft2, ft4, ft2, dyn
	-[0x8000014c]:csrrs a7, fflags, zero
	-[0x80000150]:fsw ft2, 8(a5)
Current Store : [0x80000154] : sw a7, 12(a5) -- Store: [0x80002510]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f2', 'rs3 : f26', 'rd : f31', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000168]:fmsub.s ft11, fs10, ft2, fs10, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw ft11, 16(a5)
Current Store : [0x80000174] : sw a7, 20(a5) -- Store: [0x80002518]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f6', 'rs3 : f0', 'rd : f6', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xab and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000188]:fmsub.s ft6, fa5, ft6, ft0, dyn
	-[0x8000018c]:csrrs a7, fflags, zero
	-[0x80000190]:fsw ft6, 24(a5)
Current Store : [0x80000194] : sw a7, 28(a5) -- Store: [0x80002520]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f11', 'rs3 : f11', 'rd : f4', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x800001a8]:fmsub.s ft4, fs3, fa1, fa1, dyn
	-[0x800001ac]:csrrs a7, fflags, zero
	-[0x800001b0]:fsw ft4, 32(a5)
Current Store : [0x800001b4] : sw a7, 36(a5) -- Store: [0x80002528]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f1', 'rs3 : f1', 'rd : f1', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x800001c8]:fmsub.s ft1, fs6, ft1, ft1, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw ft1, 40(a5)
Current Store : [0x800001d4] : sw a7, 44(a5) -- Store: [0x80002530]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f7', 'rs3 : f19', 'rd : f29', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x800001e8]:fmsub.s ft9, ft7, ft7, fs3, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw ft9, 48(a5)
Current Store : [0x800001f4] : sw a7, 52(a5) -- Store: [0x80002538]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f30', 'rs3 : f20', 'rd : f30', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000208]:fmsub.s ft10, ft10, ft10, fs4, dyn
	-[0x8000020c]:csrrs a7, fflags, zero
	-[0x80000210]:fsw ft10, 56(a5)
Current Store : [0x80000214] : sw a7, 60(a5) -- Store: [0x80002540]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f21', 'rs3 : f21', 'rd : f21', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x80000228]:fmsub.s fs5, fs5, fs5, fs5, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fs5, 64(a5)
Current Store : [0x80000234] : sw a7, 68(a5) -- Store: [0x80002548]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f25', 'rs3 : f27', 'rd : f27', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa5 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000248]:fmsub.s fs11, ft9, fs9, fs11, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:fsw fs11, 72(a5)
Current Store : [0x80000254] : sw a7, 76(a5) -- Store: [0x80002550]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f26', 'rs3 : f16', 'rd : f17', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa4 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000268]:fmsub.s fa7, fs0, fs10, fa6, dyn
	-[0x8000026c]:csrrs a7, fflags, zero
	-[0x80000270]:fsw fa7, 80(a5)
Current Store : [0x80000274] : sw a7, 84(a5) -- Store: [0x80002558]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f12', 'rs3 : f15', 'rd : f11', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa3 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fmsub.s fa1, fa1, fa2, fa5, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fa1, 88(a5)
Current Store : [0x80000294] : sw a7, 92(a5) -- Store: [0x80002560]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f28', 'rs3 : f24', 'rd : f26', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa2 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fmsub.s fs10, fs2, ft8, fs8, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:fsw fs10, 96(a5)
Current Store : [0x800002b4] : sw a7, 100(a5) -- Store: [0x80002568]:0x00000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f20', 'rs3 : f5', 'rd : f18', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa1 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fmsub.s fs2, fa0, fs4, ft5, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fs2, 104(a5)
Current Store : [0x800002d4] : sw a7, 108(a5) -- Store: [0x80002570]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f17', 'rs3 : f6', 'rd : f16', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa0 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fmsub.s fa6, fs4, fa7, ft6, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw fa6, 112(a5)
Current Store : [0x800002f4] : sw a7, 116(a5) -- Store: [0x80002578]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f3', 'rs3 : f17', 'rd : f25', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9f and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000308]:fmsub.s fs9, ft8, ft3, fa7, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:fsw fs9, 120(a5)
Current Store : [0x80000314] : sw a7, 124(a5) -- Store: [0x80002580]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f16', 'rs3 : f18', 'rd : f9', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9e and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000328]:fmsub.s fs1, ft11, fa6, fs2, dyn
	-[0x8000032c]:csrrs a7, fflags, zero
	-[0x80000330]:fsw fs1, 128(a5)
Current Store : [0x80000334] : sw a7, 132(a5) -- Store: [0x80002588]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f15', 'rs3 : f3', 'rd : f28', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9d and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fmsub.s ft8, ft6, fa5, ft3, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw ft8, 136(a5)
Current Store : [0x80000354] : sw a7, 140(a5) -- Store: [0x80002590]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f31', 'rs3 : f14', 'rd : f23', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9c and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000368]:fmsub.s fs7, fs1, ft11, fa4, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:fsw fs7, 144(a5)
Current Store : [0x80000374] : sw a7, 148(a5) -- Store: [0x80002598]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f24', 'rs3 : f4', 'rd : f10', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9b and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000388]:fmsub.s fa0, fa3, fs8, ft4, dyn
	-[0x8000038c]:csrrs a7, fflags, zero
	-[0x80000390]:fsw fa0, 152(a5)
Current Store : [0x80000394] : sw a7, 156(a5) -- Store: [0x800025a0]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f9', 'rs3 : f22', 'rd : f5', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9a and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmsub.s ft5, fs9, fs1, fs6, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft5, 160(a5)
Current Store : [0x800003b4] : sw a7, 164(a5) -- Store: [0x800025a8]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f8', 'rs3 : f31', 'rd : f12', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x99 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fmsub.s fa2, ft0, fs0, ft11, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:fsw fa2, 168(a5)
Current Store : [0x800003d4] : sw a7, 172(a5) -- Store: [0x800025b0]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f22', 'rs3 : f30', 'rd : f3', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x98 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fmsub.s ft3, fa2, fs6, ft10, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsw ft3, 176(a5)
Current Store : [0x800003f4] : sw a7, 180(a5) -- Store: [0x800025b8]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f14', 'rs3 : f8', 'rd : f7', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x97 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000408]:fmsub.s ft7, ft5, fa4, fs0, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw ft7, 184(a5)
Current Store : [0x80000414] : sw a7, 188(a5) -- Store: [0x800025c0]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f19', 'rs3 : f7', 'rd : f13', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x96 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000428]:fmsub.s fa3, fs8, fs3, ft7, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:fsw fa3, 192(a5)
Current Store : [0x80000434] : sw a7, 196(a5) -- Store: [0x800025c8]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f18', 'rs3 : f25', 'rd : f20', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x95 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fmsub.s fs4, fa4, fs2, fs9, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsw fs4, 200(a5)
Current Store : [0x80000454] : sw a7, 204(a5) -- Store: [0x800025d0]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f13', 'rs3 : f29', 'rd : f8', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x94 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fmsub.s fs0, fs11, fa3, ft9, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fs0, 208(a5)
Current Store : [0x80000474] : sw a7, 212(a5) -- Store: [0x800025d8]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f29', 'rs3 : f13', 'rd : f24', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x93 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fmsub.s fs8, ft4, ft9, fa3, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fs8, 216(a5)
Current Store : [0x80000494] : sw a7, 220(a5) -- Store: [0x800025e0]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f27', 'rs3 : f28', 'rd : f15', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x92 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fmsub.s fa5, fa7, fs11, ft8, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsw fa5, 224(a5)
Current Store : [0x800004b4] : sw a7, 228(a5) -- Store: [0x800025e8]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f5', 'rs3 : f10', 'rd : f14', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x91 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fmsub.s fa4, fa6, ft5, fa0, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:fsw fa4, 232(a5)
Current Store : [0x800004d4] : sw a7, 236(a5) -- Store: [0x800025f0]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f10', 'rs3 : f12', 'rd : f19', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x90 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fmsub.s fs3, ft1, fa0, fa2, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:fsw fs3, 240(a5)
Current Store : [0x800004f4] : sw a7, 244(a5) -- Store: [0x800025f8]:0x00000005




Last Coverpoint : ['rs1 : f3', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8f and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fmsub.s ft1, ft3, fs4, ft0, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsw ft1, 248(a5)
Current Store : [0x80000514] : sw a7, 252(a5) -- Store: [0x80002600]:0x00000005




Last Coverpoint : ['rs2 : f0', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8e and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fmsub.s fa3, ft4, ft0, fs6, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsw fa3, 256(a5)
Current Store : [0x80000534] : sw a7, 260(a5) -- Store: [0x80002608]:0x00000005




Last Coverpoint : ['rs3 : f9', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8d and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000548]:fmsub.s fa0, fa1, fs11, fs1, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:fsw fa0, 264(a5)
Current Store : [0x80000554] : sw a7, 268(a5) -- Store: [0x80002610]:0x00000005




Last Coverpoint : ['rd : f0', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8c and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmsub.s ft0, fs5, fs0, ft9, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw ft0, 272(a5)
Current Store : [0x80000574] : sw a7, 276(a5) -- Store: [0x80002618]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8b and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000588]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:fsw fa3, 280(a5)
Current Store : [0x80000594] : sw a7, 284(a5) -- Store: [0x80002620]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8a and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:fsw fa3, 288(a5)
Current Store : [0x800005b4] : sw a7, 292(a5) -- Store: [0x80002628]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x89 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsw fa3, 296(a5)
Current Store : [0x800005d4] : sw a7, 300(a5) -- Store: [0x80002630]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x88 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:fsw fa3, 304(a5)
Current Store : [0x800005f4] : sw a7, 308(a5) -- Store: [0x80002638]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x87 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000608]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsw fa3, 312(a5)
Current Store : [0x80000614] : sw a7, 316(a5) -- Store: [0x80002640]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x86 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsw fa3, 320(a5)
Current Store : [0x80000634] : sw a7, 324(a5) -- Store: [0x80002648]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x85 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000648]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa3, 328(a5)
Current Store : [0x80000654] : sw a7, 332(a5) -- Store: [0x80002650]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x84 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000668]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000066c]:csrrs a7, fflags, zero
	-[0x80000670]:fsw fa3, 336(a5)
Current Store : [0x80000674] : sw a7, 340(a5) -- Store: [0x80002658]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x83 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsw fa3, 344(a5)
Current Store : [0x80000694] : sw a7, 348(a5) -- Store: [0x80002660]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x82 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsw fa3, 352(a5)
Current Store : [0x800006b4] : sw a7, 356(a5) -- Store: [0x80002668]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x81 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800006cc]:csrrs a7, fflags, zero
	-[0x800006d0]:fsw fa3, 360(a5)
Current Store : [0x800006d4] : sw a7, 364(a5) -- Store: [0x80002670]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x80 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsw fa3, 368(a5)
Current Store : [0x800006f4] : sw a7, 372(a5) -- Store: [0x80002678]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7f and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000708]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:fsw fa3, 376(a5)
Current Store : [0x80000714] : sw a7, 380(a5) -- Store: [0x80002680]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7e and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000728]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa3, 384(a5)
Current Store : [0x80000734] : sw a7, 388(a5) -- Store: [0x80002688]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7d and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000748]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsw fa3, 392(a5)
Current Store : [0x80000754] : sw a7, 396(a5) -- Store: [0x80002690]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7c and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000768]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:fsw fa3, 400(a5)
Current Store : [0x80000774] : sw a7, 404(a5) -- Store: [0x80002698]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7b and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000788]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000078c]:csrrs a7, fflags, zero
	-[0x80000790]:fsw fa3, 408(a5)
Current Store : [0x80000794] : sw a7, 412(a5) -- Store: [0x800026a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7a and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsw fa3, 416(a5)
Current Store : [0x800007b4] : sw a7, 420(a5) -- Store: [0x800026a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x79 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsw fa3, 424(a5)
Current Store : [0x800007d4] : sw a7, 428(a5) -- Store: [0x800026b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x78 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ec]:csrrs a7, fflags, zero
	-[0x800007f0]:fsw fa3, 432(a5)
Current Store : [0x800007f4] : sw a7, 436(a5) -- Store: [0x800026b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x77 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa3, 440(a5)
Current Store : [0x80000814] : sw a7, 444(a5) -- Store: [0x800026c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x76 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000828]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:fsw fa3, 448(a5)
Current Store : [0x80000834] : sw a7, 452(a5) -- Store: [0x800026c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x75 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000848]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000084c]:csrrs a7, fflags, zero
	-[0x80000850]:fsw fa3, 456(a5)
Current Store : [0x80000854] : sw a7, 460(a5) -- Store: [0x800026d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x74 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000868]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsw fa3, 464(a5)
Current Store : [0x80000874] : sw a7, 468(a5) -- Store: [0x800026d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x73 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000888]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:fsw fa3, 472(a5)
Current Store : [0x80000894] : sw a7, 476(a5) -- Store: [0x800026e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x72 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsw fa3, 480(a5)
Current Store : [0x800008b4] : sw a7, 484(a5) -- Store: [0x800026e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x71 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsw fa3, 488(a5)
Current Store : [0x800008d4] : sw a7, 492(a5) -- Store: [0x800026f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x70 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa3, 496(a5)
Current Store : [0x800008f4] : sw a7, 500(a5) -- Store: [0x800026f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6f and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000908]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000090c]:csrrs a7, fflags, zero
	-[0x80000910]:fsw fa3, 504(a5)
Current Store : [0x80000914] : sw a7, 508(a5) -- Store: [0x80002700]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6e and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000928]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsw fa3, 512(a5)
Current Store : [0x80000934] : sw a7, 516(a5) -- Store: [0x80002708]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6d and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000948]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:fsw fa3, 520(a5)
Current Store : [0x80000954] : sw a7, 524(a5) -- Store: [0x80002710]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6c and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000968]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000096c]:csrrs a7, fflags, zero
	-[0x80000970]:fsw fa3, 528(a5)
Current Store : [0x80000974] : sw a7, 532(a5) -- Store: [0x80002718]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6b and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsw fa3, 536(a5)
Current Store : [0x80000994] : sw a7, 540(a5) -- Store: [0x80002720]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6a and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:fsw fa3, 544(a5)
Current Store : [0x800009b4] : sw a7, 548(a5) -- Store: [0x80002728]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x69 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa3, 552(a5)
Current Store : [0x800009d4] : sw a7, 556(a5) -- Store: [0x80002730]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x68 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsw fa3, 560(a5)
Current Store : [0x800009f4] : sw a7, 564(a5) -- Store: [0x80002738]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x67 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a08]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:fsw fa3, 568(a5)
Current Store : [0x80000a14] : sw a7, 572(a5) -- Store: [0x80002740]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x66 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a28]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a2c]:csrrs a7, fflags, zero
	-[0x80000a30]:fsw fa3, 576(a5)
Current Store : [0x80000a34] : sw a7, 580(a5) -- Store: [0x80002748]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x20 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a48]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:fsw fa3, 584(a5)
Current Store : [0x80000a54] : sw a7, 588(a5) -- Store: [0x80002750]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xbc and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsw fa3, 592(a5)
Current Store : [0x80000a74] : sw a7, 596(a5) -- Store: [0x80002758]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xac and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a88]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a8c]:csrrs a7, fflags, zero
	-[0x80000a90]:fsw fa3, 600(a5)
Current Store : [0x80000a94] : sw a7, 604(a5) -- Store: [0x80002760]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xaa and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa3, 608(a5)
Current Store : [0x80000ab4] : sw a7, 612(a5) -- Store: [0x80002768]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa9 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:fsw fa3, 616(a5)
Current Store : [0x80000ad4] : sw a7, 620(a5) -- Store: [0x80002770]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa8 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae8]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aec]:csrrs a7, fflags, zero
	-[0x80000af0]:fsw fa3, 624(a5)
Current Store : [0x80000af4] : sw a7, 628(a5) -- Store: [0x80002778]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa7 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b08]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:fsw fa3, 632(a5)
Current Store : [0x80000b14] : sw a7, 636(a5) -- Store: [0x80002780]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa6 and fm3 == 0x7980c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b28]:fmsub.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:fsw fa3, 640(a5)
Current Store : [0x80000b34] : sw a7, 644(a5) -- Store: [0x80002788]:0x00000005





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

|s.no|        signature         |                                                                                                                                                            coverpoints                                                                                                                                                             |                                                             code                                                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002504]<br>0x6DF56FF7|- opcode : fmsub.s<br> - rs1 : f23<br> - rs2 : f23<br> - rs3 : f23<br> - rd : f22<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                 |[0x80000128]:fmsub.s fs6, fs7, fs7, fs7, dyn<br> [0x8000012c]:csrrs a7, fflags, zero<br> [0x80000130]:fsw fs6, 0(a5)<br>      |
|   2|[0x8000250c]<br>0x00006000|- rs1 : f2<br> - rs2 : f4<br> - rs3 : f2<br> - rd : f2<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                            |[0x80000148]:fmsub.s ft2, ft2, ft4, ft2, dyn<br> [0x8000014c]:csrrs a7, fflags, zero<br> [0x80000150]:fsw ft2, 8(a5)<br>      |
|   3|[0x80002514]<br>0xFBB6FAB7|- rs1 : f26<br> - rs2 : f2<br> - rs3 : f26<br> - rd : f31<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                            |[0x80000168]:fmsub.s ft11, fs10, ft2, fs10, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw ft11, 16(a5)<br> |
|   4|[0x8000251c]<br>0x80002000|- rs1 : f15<br> - rs2 : f6<br> - rs3 : f0<br> - rd : f6<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xab and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                 |[0x80000188]:fmsub.s ft6, fa5, ft6, ft0, dyn<br> [0x8000018c]:csrrs a7, fflags, zero<br> [0x80000190]:fsw ft6, 24(a5)<br>     |
|   5|[0x80002524]<br>0xBFDDB7D5|- rs1 : f19<br> - rs2 : f11<br> - rs3 : f11<br> - rd : f4<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                            |[0x800001a8]:fmsub.s ft4, fs3, fa1, fa1, dyn<br> [0x800001ac]:csrrs a7, fflags, zero<br> [0x800001b0]:fsw ft4, 32(a5)<br>     |
|   6|[0x8000252c]<br>0xFEEDBEAD|- rs1 : f22<br> - rs2 : f1<br> - rs3 : f1<br> - rd : f1<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                           |[0x800001c8]:fmsub.s ft1, fs6, ft1, ft1, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw ft1, 40(a5)<br>     |
|   7|[0x80002534]<br>0xEEDBEADF|- rs1 : f7<br> - rs2 : f7<br> - rs3 : f19<br> - rd : f29<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                             |[0x800001e8]:fmsub.s ft9, ft7, ft7, fs3, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw ft9, 48(a5)<br>     |
|   8|[0x8000253c]<br>0xF76DF56F|- rs1 : f30<br> - rs2 : f30<br> - rs3 : f20<br> - rd : f30<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                        |[0x80000208]:fmsub.s ft10, ft10, ft10, fs4, dyn<br> [0x8000020c]:csrrs a7, fflags, zero<br> [0x80000210]:fsw ft10, 56(a5)<br> |
|   9|[0x80002544]<br>0xDBEADFEE|- rs1 : f21<br> - rs2 : f21<br> - rs3 : f21<br> - rd : f21<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                        |[0x80000228]:fmsub.s fs5, fs5, fs5, fs5, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fs5, 64(a5)<br>     |
|  10|[0x8000254c]<br>0xBB6FAB7F|- rs1 : f29<br> - rs2 : f25<br> - rs3 : f27<br> - rd : f27<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa5 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                              |[0x80000248]:fmsub.s fs11, ft9, fs9, fs11, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:fsw fs11, 72(a5)<br>  |
|  11|[0x80002554]<br>0x00000005|- rs1 : f8<br> - rs2 : f26<br> - rs3 : f16<br> - rd : f17<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa4 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br> |[0x80000268]:fmsub.s fa7, fs0, fs10, fa6, dyn<br> [0x8000026c]:csrrs a7, fflags, zero<br> [0x80000270]:fsw fa7, 80(a5)<br>    |
|  12|[0x8000255c]<br>0xAB7FBB6F|- rs1 : f11<br> - rs2 : f12<br> - rs3 : f15<br> - rd : f11<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa3 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                              |[0x80000288]:fmsub.s fa1, fa1, fa2, fa5, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fa1, 88(a5)<br>     |
|  13|[0x80002564]<br>0x76DF56FF|- rs1 : f18<br> - rs2 : f28<br> - rs3 : f24<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa2 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                         |[0x800002a8]:fmsub.s fs10, fs2, ft8, fs8, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsw fs10, 96(a5)<br>   |
|  14|[0x8000256c]<br>0xDF56FF76|- rs1 : f10<br> - rs2 : f20<br> - rs3 : f5<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa1 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800002c8]:fmsub.s fs2, fa0, fs4, ft5, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fs2, 104(a5)<br>    |
|  15|[0x80002574]<br>0x80002004|- rs1 : f20<br> - rs2 : f17<br> - rs3 : f6<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa0 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800002e8]:fmsub.s fa6, fs4, fa7, ft6, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw fa6, 112(a5)<br>    |
|  16|[0x8000257c]<br>0xEDBEADFE|- rs1 : f28<br> - rs2 : f3<br> - rs3 : f17<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9f and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000308]:fmsub.s fs9, ft8, ft3, fa7, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw fs9, 120(a5)<br>    |
|  17|[0x80002584]<br>0xADFEEDBE|- rs1 : f31<br> - rs2 : f16<br> - rs3 : f18<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9e and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000328]:fmsub.s fs1, ft11, fa6, fs2, dyn<br> [0x8000032c]:csrrs a7, fflags, zero<br> [0x80000330]:fsw fs1, 128(a5)<br>   |
|  18|[0x8000258c]<br>0xDDB7D5BF|- rs1 : f6<br> - rs2 : f15<br> - rs3 : f3<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9d and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                           |[0x80000348]:fmsub.s ft8, ft6, fa5, ft3, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw ft8, 136(a5)<br>    |
|  19|[0x80002594]<br>0xB6FAB7FB|- rs1 : f9<br> - rs2 : f31<br> - rs3 : f14<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9c and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000368]:fmsub.s fs7, fs1, ft11, fa4, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:fsw fs7, 144(a5)<br>   |
|  20|[0x8000259c]<br>0x56FF76DF|- rs1 : f13<br> - rs2 : f24<br> - rs3 : f4<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9b and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000388]:fmsub.s fa0, fa3, fs8, ft4, dyn<br> [0x8000038c]:csrrs a7, fflags, zero<br> [0x80000390]:fsw fa0, 152(a5)<br>    |
|  21|[0x800025a4]<br>0x800000F8|- rs1 : f25<br> - rs2 : f9<br> - rs3 : f22<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x9a and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                           |[0x800003a8]:fmsub.s ft5, fs9, fs1, fs6, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft5, 160(a5)<br>    |
|  22|[0x800025ac]<br>0xD5BFDDB7|- rs1 : f0<br> - rs2 : f8<br> - rs3 : f31<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x99 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                           |[0x800003c8]:fmsub.s fa2, ft0, fs0, ft11, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsw fa2, 168(a5)<br>   |
|  23|[0x800025b4]<br>0x00000000|- rs1 : f12<br> - rs2 : f22<br> - rs3 : f30<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x98 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800003e8]:fmsub.s ft3, fa2, fs6, ft10, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsw ft3, 176(a5)<br>   |
|  24|[0x800025bc]<br>0xB7FBB6FA|- rs1 : f5<br> - rs2 : f14<br> - rs3 : f8<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x97 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                            |[0x80000408]:fmsub.s ft7, ft5, fa4, fs0, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw ft7, 184(a5)<br>    |
|  25|[0x800025c4]<br>0xEADFEEDB|- rs1 : f24<br> - rs2 : f19<br> - rs3 : f7<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x96 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000428]:fmsub.s fa3, fs8, fs3, ft7, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:fsw fa3, 192(a5)<br>    |
|  26|[0x800025cc]<br>0xB7D5BFDD|- rs1 : f14<br> - rs2 : f18<br> - rs3 : f25<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x95 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                         |[0x80000448]:fmsub.s fs4, fa4, fs2, fs9, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsw fs4, 200(a5)<br>    |
|  27|[0x800025d4]<br>0x5BFDDB7D|- rs1 : f27<br> - rs2 : f13<br> - rs3 : f29<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x94 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000468]:fmsub.s fs0, fs11, fa3, ft9, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fs0, 208(a5)<br>   |
|  28|[0x800025dc]<br>0xDB7D5BFD|- rs1 : f4<br> - rs2 : f29<br> - rs3 : f13<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x93 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x80000488]:fmsub.s fs8, ft4, ft9, fa3, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fs8, 216(a5)<br>    |
|  29|[0x800025e4]<br>0x80002504|- rs1 : f17<br> - rs2 : f27<br> - rs3 : f28<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x92 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                         |[0x800004a8]:fmsub.s fa5, fa7, fs11, ft8, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsw fa5, 224(a5)<br>   |
|  30|[0x800025ec]<br>0xF56FF76D|- rs1 : f16<br> - rs2 : f5<br> - rs3 : f10<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x91 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800004c8]:fmsub.s fa4, fa6, ft5, fa0, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw fa4, 232(a5)<br>    |
|  31|[0x800025f4]<br>0x6FAB7FBB|- rs1 : f1<br> - rs2 : f10<br> - rs3 : f12<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x90 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800004e8]:fmsub.s fs3, ft1, fa0, fa2, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:fsw fs3, 240(a5)<br>    |
|  32|[0x800025fc]<br>0xFEEDBEAD|- rs1 : f3<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8f and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                         |[0x80000508]:fmsub.s ft1, ft3, fs4, ft0, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsw ft1, 248(a5)<br>    |
|  33|[0x80002604]<br>0xEADFEEDB|- rs2 : f0<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8e and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                         |[0x80000528]:fmsub.s fa3, ft4, ft0, fs6, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsw fa3, 256(a5)<br>    |
|  34|[0x8000260c]<br>0x56FF76DF|- rs3 : f9<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8d and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                         |[0x80000548]:fmsub.s fa0, fa1, fs11, fs1, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:fsw fa0, 264(a5)<br>   |
|  35|[0x80002614]<br>0x00000000|- rd : f0<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8c and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                          |[0x80000568]:fmsub.s ft0, fs5, fs0, ft9, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw ft0, 272(a5)<br>    |
|  36|[0x8000261c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8b and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000588]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:fsw fa3, 280(a5)<br>    |
|  37|[0x80002624]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x8a and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800005a8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsw fa3, 288(a5)<br>    |
|  38|[0x8000262c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x89 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800005c8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsw fa3, 296(a5)<br>    |
|  39|[0x80002634]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x88 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800005e8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:fsw fa3, 304(a5)<br>    |
|  40|[0x8000263c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x87 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000608]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsw fa3, 312(a5)<br>    |
|  41|[0x80002644]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x86 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000628]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsw fa3, 320(a5)<br>    |
|  42|[0x8000264c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x85 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000648]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa3, 328(a5)<br>    |
|  43|[0x80002654]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x84 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000668]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000066c]:csrrs a7, fflags, zero<br> [0x80000670]:fsw fa3, 336(a5)<br>    |
|  44|[0x8000265c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x83 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000688]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsw fa3, 344(a5)<br>    |
|  45|[0x80002664]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x82 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800006a8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsw fa3, 352(a5)<br>    |
|  46|[0x8000266c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x81 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800006c8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800006cc]:csrrs a7, fflags, zero<br> [0x800006d0]:fsw fa3, 360(a5)<br>    |
|  47|[0x80002674]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x80 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800006e8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsw fa3, 368(a5)<br>    |
|  48|[0x8000267c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7f and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000708]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:fsw fa3, 376(a5)<br>    |
|  49|[0x80002684]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7e and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000728]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa3, 384(a5)<br>    |
|  50|[0x8000268c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7d and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000748]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsw fa3, 392(a5)<br>    |
|  51|[0x80002694]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7c and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000768]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:fsw fa3, 400(a5)<br>    |
|  52|[0x8000269c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7b and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000788]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000078c]:csrrs a7, fflags, zero<br> [0x80000790]:fsw fa3, 408(a5)<br>    |
|  53|[0x800026a4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x7a and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800007a8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsw fa3, 416(a5)<br>    |
|  54|[0x800026ac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x79 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800007c8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsw fa3, 424(a5)<br>    |
|  55|[0x800026b4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x78 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800007e8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ec]:csrrs a7, fflags, zero<br> [0x800007f0]:fsw fa3, 432(a5)<br>    |
|  56|[0x800026bc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x77 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000808]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa3, 440(a5)<br>    |
|  57|[0x800026c4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x76 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000828]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:fsw fa3, 448(a5)<br>    |
|  58|[0x800026cc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x75 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000848]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000084c]:csrrs a7, fflags, zero<br> [0x80000850]:fsw fa3, 456(a5)<br>    |
|  59|[0x800026d4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x74 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000868]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsw fa3, 464(a5)<br>    |
|  60|[0x800026dc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x73 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000888]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:fsw fa3, 472(a5)<br>    |
|  61|[0x800026e4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x72 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008a8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsw fa3, 480(a5)<br>    |
|  62|[0x800026ec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x71 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008c8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsw fa3, 488(a5)<br>    |
|  63|[0x800026f4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x70 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008e8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa3, 496(a5)<br>    |
|  64|[0x800026fc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6f and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000908]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000090c]:csrrs a7, fflags, zero<br> [0x80000910]:fsw fa3, 504(a5)<br>    |
|  65|[0x80002704]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6e and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000928]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsw fa3, 512(a5)<br>    |
|  66|[0x8000270c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6d and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000948]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:fsw fa3, 520(a5)<br>    |
|  67|[0x80002714]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6c and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000968]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000096c]:csrrs a7, fflags, zero<br> [0x80000970]:fsw fa3, 528(a5)<br>    |
|  68|[0x8000271c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6b and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000988]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsw fa3, 536(a5)<br>    |
|  69|[0x80002724]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x6a and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800009a8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:fsw fa3, 544(a5)<br>    |
|  70|[0x8000272c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x69 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800009c8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa3, 552(a5)<br>    |
|  71|[0x80002734]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x68 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800009e8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsw fa3, 560(a5)<br>    |
|  72|[0x8000273c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x67 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a08]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:fsw fa3, 568(a5)<br>    |
|  73|[0x80002744]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x66 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a28]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a2c]:csrrs a7, fflags, zero<br> [0x80000a30]:fsw fa3, 576(a5)<br>    |
|  74|[0x8000274c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0x20 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a48]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:fsw fa3, 584(a5)<br>    |
|  75|[0x80002754]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xbc and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a68]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsw fa3, 592(a5)<br>    |
|  76|[0x8000275c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xac and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a88]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a8c]:csrrs a7, fflags, zero<br> [0x80000a90]:fsw fa3, 600(a5)<br>    |
|  77|[0x80002764]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xaa and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000aa8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa3, 608(a5)<br>    |
|  78|[0x8000276c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa9 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000ac8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:fsw fa3, 616(a5)<br>    |
|  79|[0x80002774]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa8 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000ae8]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aec]:csrrs a7, fflags, zero<br> [0x80000af0]:fsw fa3, 624(a5)<br>    |
|  80|[0x8000277c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa7 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000b08]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:fsw fa3, 632(a5)<br>    |
|  81|[0x80002784]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x4e622b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x22b50f and fs3 == 0 and fe3 == 0xa6 and fm3 == 0x7980c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000b28]:fmsub.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:fsw fa3, 640(a5)<br>    |
