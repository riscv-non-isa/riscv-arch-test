
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800013a0')]      |
| SIG_REGION                | [('0x80003804', '0x80003ca4', '296 words')]      |
| COV_LABELS                | fnmadd_b4      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fnmadd_b4-01.S/ref.S    |
| Total Number of coverpoints| 288     |
| Total Coverpoints Hit     | 281      |
| Total Signature Updates   | 296      |
| STAT1                     | 148      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 148     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fnmadd.s', 'rs1 : f21', 'rs2 : f19', 'rs3 : f31', 'rd : f19', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000128]:fnmadd.s fs3, fs5, fs3, ft11, dyn
	-[0x8000012c]:csrrs a7, fflags, zero
	-[0x80000130]:fsw fs3, 0(a5)
Current Store : [0x80000134] : sw a7, 4(a5) -- Store: [0x80003808]:0x00000001




Last Coverpoint : ['rs1 : f8', 'rs2 : f4', 'rs3 : f11', 'rd : f8', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000148]:fnmadd.s fs0, fs0, ft4, fa1, dyn
	-[0x8000014c]:csrrs a7, fflags, zero
	-[0x80000150]:fsw fs0, 8(a5)
Current Store : [0x80000154] : sw a7, 12(a5) -- Store: [0x80003810]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f29', 'rs3 : f2', 'rd : f29', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000168]:fnmadd.s ft9, ft9, ft9, ft2, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw ft9, 16(a5)
Current Store : [0x80000174] : sw a7, 20(a5) -- Store: [0x80003818]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f18', 'rs3 : f25', 'rd : f27', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000188]:fnmadd.s fs11, ft6, fs2, fs9, dyn
	-[0x8000018c]:csrrs a7, fflags, zero
	-[0x80000190]:fsw fs11, 24(a5)
Current Store : [0x80000194] : sw a7, 28(a5) -- Store: [0x80003820]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f3', 'rs3 : f3', 'rd : f3', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x800001a8]:fnmadd.s ft3, fs8, ft3, ft3, dyn
	-[0x800001ac]:csrrs a7, fflags, zero
	-[0x800001b0]:fsw ft3, 32(a5)
Current Store : [0x800001b4] : sw a7, 36(a5) -- Store: [0x80003828]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f23', 'rs3 : f23', 'rd : f9', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x800001c8]:fnmadd.s fs1, fs7, fs7, fs7, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw fs1, 40(a5)
Current Store : [0x800001d4] : sw a7, 44(a5) -- Store: [0x80003830]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f1', 'rs3 : f1', 'rd : f1', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800001e8]:fnmadd.s ft1, ft1, ft1, ft1, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw ft1, 48(a5)
Current Store : [0x800001f4] : sw a7, 52(a5) -- Store: [0x80003838]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f21', 'rs3 : f12', 'rd : f28', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000208]:fnmadd.s ft8, fa2, fs5, fa2, dyn
	-[0x8000020c]:csrrs a7, fflags, zero
	-[0x80000210]:fsw ft8, 56(a5)
Current Store : [0x80000214] : sw a7, 60(a5) -- Store: [0x80003840]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f6', 'rs3 : f6', 'rd : f4', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x80000228]:fnmadd.s ft4, fs6, ft6, ft6, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw ft4, 64(a5)
Current Store : [0x80000234] : sw a7, 68(a5) -- Store: [0x80003848]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f13', 'rs3 : f17', 'rd : f17', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000248]:fnmadd.s fa7, ft8, fa3, fa7, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:fsw fa7, 72(a5)
Current Store : [0x80000254] : sw a7, 76(a5) -- Store: [0x80003850]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f7', 'rs3 : f24', 'rd : f0', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000268]:fnmadd.s ft0, ft7, ft7, fs8, dyn
	-[0x8000026c]:csrrs a7, fflags, zero
	-[0x80000270]:fsw ft0, 80(a5)
Current Store : [0x80000274] : sw a7, 84(a5) -- Store: [0x80003858]:0x00000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f14', 'rs3 : f10', 'rd : f10', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x80000288]:fnmadd.s fa0, fa0, fa4, fa0, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fa0, 88(a5)
Current Store : [0x80000294] : sw a7, 92(a5) -- Store: [0x80003860]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f16', 'rs3 : f14', 'rd : f15', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fnmadd.s fa5, fs10, fa6, fa4, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:fsw fa5, 96(a5)
Current Store : [0x800002b4] : sw a7, 100(a5) -- Store: [0x80003868]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f20', 'rs3 : f8', 'rd : f6', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fnmadd.s ft6, fa7, fs4, fs0, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw ft6, 104(a5)
Current Store : [0x800002d4] : sw a7, 108(a5) -- Store: [0x80003870]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f17', 'rs3 : f19', 'rd : f11', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fnmadd.s fa1, ft10, fa7, fs3, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw fa1, 112(a5)
Current Store : [0x800002f4] : sw a7, 116(a5) -- Store: [0x80003878]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f15', 'rs3 : f0', 'rd : f30', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000308]:fnmadd.s ft10, ft5, fa5, ft0, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:fsw ft10, 120(a5)
Current Store : [0x80000314] : sw a7, 124(a5) -- Store: [0x80003880]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f5', 'rs3 : f27', 'rd : f25', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000328]:fnmadd.s fs9, fs4, ft5, fs11, dyn
	-[0x8000032c]:csrrs a7, fflags, zero
	-[0x80000330]:fsw fs9, 128(a5)
Current Store : [0x80000334] : sw a7, 132(a5) -- Store: [0x80003888]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f22', 'rs3 : f13', 'rd : f16', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000348]:fnmadd.s fa6, ft11, fs6, fa3, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw fa6, 136(a5)
Current Store : [0x80000354] : sw a7, 140(a5) -- Store: [0x80003890]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f10', 'rs3 : f20', 'rd : f13', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000368]:fnmadd.s fa3, fa4, fa0, fs4, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:fsw fa3, 144(a5)
Current Store : [0x80000374] : sw a7, 148(a5) -- Store: [0x80003898]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f27', 'rs3 : f9', 'rd : f26', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000388]:fnmadd.s fs10, fs2, fs11, fs1, dyn
	-[0x8000038c]:csrrs a7, fflags, zero
	-[0x80000390]:fsw fs10, 152(a5)
Current Store : [0x80000394] : sw a7, 156(a5) -- Store: [0x800038a0]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f26', 'rs3 : f30', 'rd : f22', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fnmadd.s fs6, ft0, fs10, ft10, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs6, 160(a5)
Current Store : [0x800003b4] : sw a7, 164(a5) -- Store: [0x800038a8]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f2', 'rs3 : f5', 'rd : f18', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fnmadd.s fs2, ft3, ft2, ft5, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:fsw fs2, 168(a5)
Current Store : [0x800003d4] : sw a7, 172(a5) -- Store: [0x800038b0]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f11', 'rs3 : f18', 'rd : f21', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fnmadd.s fs5, ft4, fa1, fs2, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsw fs5, 176(a5)
Current Store : [0x800003f4] : sw a7, 180(a5) -- Store: [0x800038b8]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f9', 'rs3 : f15', 'rd : f23', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000408]:fnmadd.s fs7, fs9, fs1, fa5, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw fs7, 184(a5)
Current Store : [0x80000414] : sw a7, 188(a5) -- Store: [0x800038c0]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f31', 'rs3 : f4', 'rd : f7', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000428]:fnmadd.s ft7, fa6, ft11, ft4, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:fsw ft7, 192(a5)
Current Store : [0x80000434] : sw a7, 196(a5) -- Store: [0x800038c8]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f24', 'rs3 : f7', 'rd : f31', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fnmadd.s ft11, fa1, fs8, ft7, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsw ft11, 200(a5)
Current Store : [0x80000454] : sw a7, 204(a5) -- Store: [0x800038d0]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f25', 'rs3 : f26', 'rd : f12', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000468]:fnmadd.s fa2, fs1, fs9, fs10, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa2, 208(a5)
Current Store : [0x80000474] : sw a7, 212(a5) -- Store: [0x800038d8]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f0', 'rs3 : f21', 'rd : f24', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000488]:fnmadd.s fs8, fs3, ft0, fs5, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fs8, 216(a5)
Current Store : [0x80000494] : sw a7, 220(a5) -- Store: [0x800038e0]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f8', 'rs3 : f29', 'rd : f14', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fnmadd.s fa4, fa3, fs0, ft9, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsw fa4, 224(a5)
Current Store : [0x800004b4] : sw a7, 228(a5) -- Store: [0x800038e8]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f28', 'rs3 : f22', 'rd : f2', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fnmadd.s ft2, fs11, ft8, fs6, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:fsw ft2, 232(a5)
Current Store : [0x800004d4] : sw a7, 236(a5) -- Store: [0x800038f0]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f12', 'rs3 : f28', 'rd : f20', 'fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fnmadd.s fs4, ft2, fa2, ft8, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:fsw fs4, 240(a5)
Current Store : [0x800004f4] : sw a7, 244(a5) -- Store: [0x800038f8]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f30', 'rs3 : f16', 'rd : f5', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000508]:fnmadd.s ft5, fa5, ft10, fa6, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsw ft5, 248(a5)
Current Store : [0x80000514] : sw a7, 252(a5) -- Store: [0x80003900]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000528]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsw fa3, 256(a5)
Current Store : [0x80000534] : sw a7, 260(a5) -- Store: [0x80003908]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000548]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:fsw fa3, 264(a5)
Current Store : [0x80000554] : sw a7, 268(a5) -- Store: [0x80003910]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000568]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa3, 272(a5)
Current Store : [0x80000574] : sw a7, 276(a5) -- Store: [0x80003918]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000588]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:fsw fa3, 280(a5)
Current Store : [0x80000594] : sw a7, 284(a5) -- Store: [0x80003920]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:fsw fa3, 288(a5)
Current Store : [0x800005b4] : sw a7, 292(a5) -- Store: [0x80003928]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsw fa3, 296(a5)
Current Store : [0x800005d4] : sw a7, 300(a5) -- Store: [0x80003930]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:fsw fa3, 304(a5)
Current Store : [0x800005f4] : sw a7, 308(a5) -- Store: [0x80003938]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000608]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsw fa3, 312(a5)
Current Store : [0x80000614] : sw a7, 316(a5) -- Store: [0x80003940]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsw fa3, 320(a5)
Current Store : [0x80000634] : sw a7, 324(a5) -- Store: [0x80003948]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000648]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa3, 328(a5)
Current Store : [0x80000654] : sw a7, 332(a5) -- Store: [0x80003950]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000668]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000066c]:csrrs a7, fflags, zero
	-[0x80000670]:fsw fa3, 336(a5)
Current Store : [0x80000674] : sw a7, 340(a5) -- Store: [0x80003958]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000688]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsw fa3, 344(a5)
Current Store : [0x80000694] : sw a7, 348(a5) -- Store: [0x80003960]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsw fa3, 352(a5)
Current Store : [0x800006b4] : sw a7, 356(a5) -- Store: [0x80003968]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006cc]:csrrs a7, fflags, zero
	-[0x800006d0]:fsw fa3, 360(a5)
Current Store : [0x800006d4] : sw a7, 364(a5) -- Store: [0x80003970]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsw fa3, 368(a5)
Current Store : [0x800006f4] : sw a7, 372(a5) -- Store: [0x80003978]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000708]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:fsw fa3, 376(a5)
Current Store : [0x80000714] : sw a7, 380(a5) -- Store: [0x80003980]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000728]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa3, 384(a5)
Current Store : [0x80000734] : sw a7, 388(a5) -- Store: [0x80003988]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000748]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsw fa3, 392(a5)
Current Store : [0x80000754] : sw a7, 396(a5) -- Store: [0x80003990]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000768]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:fsw fa3, 400(a5)
Current Store : [0x80000774] : sw a7, 404(a5) -- Store: [0x80003998]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000788]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000078c]:csrrs a7, fflags, zero
	-[0x80000790]:fsw fa3, 408(a5)
Current Store : [0x80000794] : sw a7, 412(a5) -- Store: [0x800039a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsw fa3, 416(a5)
Current Store : [0x800007b4] : sw a7, 420(a5) -- Store: [0x800039a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsw fa3, 424(a5)
Current Store : [0x800007d4] : sw a7, 428(a5) -- Store: [0x800039b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ec]:csrrs a7, fflags, zero
	-[0x800007f0]:fsw fa3, 432(a5)
Current Store : [0x800007f4] : sw a7, 436(a5) -- Store: [0x800039b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa3, 440(a5)
Current Store : [0x80000814] : sw a7, 444(a5) -- Store: [0x800039c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000828]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:fsw fa3, 448(a5)
Current Store : [0x80000834] : sw a7, 452(a5) -- Store: [0x800039c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000848]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000084c]:csrrs a7, fflags, zero
	-[0x80000850]:fsw fa3, 456(a5)
Current Store : [0x80000854] : sw a7, 460(a5) -- Store: [0x800039d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000868]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsw fa3, 464(a5)
Current Store : [0x80000874] : sw a7, 468(a5) -- Store: [0x800039d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000888]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:fsw fa3, 472(a5)
Current Store : [0x80000894] : sw a7, 476(a5) -- Store: [0x800039e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsw fa3, 480(a5)
Current Store : [0x800008b4] : sw a7, 484(a5) -- Store: [0x800039e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsw fa3, 488(a5)
Current Store : [0x800008d4] : sw a7, 492(a5) -- Store: [0x800039f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa3, 496(a5)
Current Store : [0x800008f4] : sw a7, 500(a5) -- Store: [0x800039f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000908]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000090c]:csrrs a7, fflags, zero
	-[0x80000910]:fsw fa3, 504(a5)
Current Store : [0x80000914] : sw a7, 508(a5) -- Store: [0x80003a00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000928]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsw fa3, 512(a5)
Current Store : [0x80000934] : sw a7, 516(a5) -- Store: [0x80003a08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000948]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:fsw fa3, 520(a5)
Current Store : [0x80000954] : sw a7, 524(a5) -- Store: [0x80003a10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000968]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000096c]:csrrs a7, fflags, zero
	-[0x80000970]:fsw fa3, 528(a5)
Current Store : [0x80000974] : sw a7, 532(a5) -- Store: [0x80003a18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000988]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsw fa3, 536(a5)
Current Store : [0x80000994] : sw a7, 540(a5) -- Store: [0x80003a20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:fsw fa3, 544(a5)
Current Store : [0x800009b4] : sw a7, 548(a5) -- Store: [0x80003a28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa3, 552(a5)
Current Store : [0x800009d4] : sw a7, 556(a5) -- Store: [0x80003a30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsw fa3, 560(a5)
Current Store : [0x800009f4] : sw a7, 564(a5) -- Store: [0x80003a38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:fsw fa3, 568(a5)
Current Store : [0x80000a14] : sw a7, 572(a5) -- Store: [0x80003a40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a2c]:csrrs a7, fflags, zero
	-[0x80000a30]:fsw fa3, 576(a5)
Current Store : [0x80000a34] : sw a7, 580(a5) -- Store: [0x80003a48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:fsw fa3, 584(a5)
Current Store : [0x80000a54] : sw a7, 588(a5) -- Store: [0x80003a50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsw fa3, 592(a5)
Current Store : [0x80000a74] : sw a7, 596(a5) -- Store: [0x80003a58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a8c]:csrrs a7, fflags, zero
	-[0x80000a90]:fsw fa3, 600(a5)
Current Store : [0x80000a94] : sw a7, 604(a5) -- Store: [0x80003a60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa3, 608(a5)
Current Store : [0x80000ab4] : sw a7, 612(a5) -- Store: [0x80003a68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:fsw fa3, 616(a5)
Current Store : [0x80000ad4] : sw a7, 620(a5) -- Store: [0x80003a70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ae8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aec]:csrrs a7, fflags, zero
	-[0x80000af0]:fsw fa3, 624(a5)
Current Store : [0x80000af4] : sw a7, 628(a5) -- Store: [0x80003a78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:fsw fa3, 632(a5)
Current Store : [0x80000b14] : sw a7, 636(a5) -- Store: [0x80003a80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:fsw fa3, 640(a5)
Current Store : [0x80000b34] : sw a7, 644(a5) -- Store: [0x80003a88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsw fa3, 648(a5)
Current Store : [0x80000b54] : sw a7, 652(a5) -- Store: [0x80003a90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b6c]:csrrs a7, fflags, zero
	-[0x80000b70]:fsw fa3, 656(a5)
Current Store : [0x80000b74] : sw a7, 660(a5) -- Store: [0x80003a98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa3, 664(a5)
Current Store : [0x80000b94] : sw a7, 668(a5) -- Store: [0x80003aa0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ba8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bac]:csrrs a7, fflags, zero
	-[0x80000bb0]:fsw fa3, 672(a5)
Current Store : [0x80000bb4] : sw a7, 676(a5) -- Store: [0x80003aa8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bcc]:csrrs a7, fflags, zero
	-[0x80000bd0]:fsw fa3, 680(a5)
Current Store : [0x80000bd4] : sw a7, 684(a5) -- Store: [0x80003ab0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000be8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bec]:csrrs a7, fflags, zero
	-[0x80000bf0]:fsw fa3, 688(a5)
Current Store : [0x80000bf4] : sw a7, 692(a5) -- Store: [0x80003ab8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c0c]:csrrs a7, fflags, zero
	-[0x80000c10]:fsw fa3, 696(a5)
Current Store : [0x80000c14] : sw a7, 700(a5) -- Store: [0x80003ac0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsw fa3, 704(a5)
Current Store : [0x80000c34] : sw a7, 708(a5) -- Store: [0x80003ac8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c4c]:csrrs a7, fflags, zero
	-[0x80000c50]:fsw fa3, 712(a5)
Current Store : [0x80000c54] : sw a7, 716(a5) -- Store: [0x80003ad0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c6c]:csrrs a7, fflags, zero
	-[0x80000c70]:fsw fa3, 720(a5)
Current Store : [0x80000c74] : sw a7, 724(a5) -- Store: [0x80003ad8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c8c]:csrrs a7, fflags, zero
	-[0x80000c90]:fsw fa3, 728(a5)
Current Store : [0x80000c94] : sw a7, 732(a5) -- Store: [0x80003ae0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ca8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000cac]:csrrs a7, fflags, zero
	-[0x80000cb0]:fsw fa3, 736(a5)
Current Store : [0x80000cb4] : sw a7, 740(a5) -- Store: [0x80003ae8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000ccc]:csrrs a7, fflags, zero
	-[0x80000cd0]:fsw fa3, 744(a5)
Current Store : [0x80000cd4] : sw a7, 748(a5) -- Store: [0x80003af0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ce8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000cec]:csrrs a7, fflags, zero
	-[0x80000cf0]:fsw fa3, 752(a5)
Current Store : [0x80000cf4] : sw a7, 756(a5) -- Store: [0x80003af8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsw fa3, 760(a5)
Current Store : [0x80000d14] : sw a7, 764(a5) -- Store: [0x80003b00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d2c]:csrrs a7, fflags, zero
	-[0x80000d30]:fsw fa3, 768(a5)
Current Store : [0x80000d34] : sw a7, 772(a5) -- Store: [0x80003b08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsw fa3, 776(a5)
Current Store : [0x80000d54] : sw a7, 780(a5) -- Store: [0x80003b10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d6c]:csrrs a7, fflags, zero
	-[0x80000d70]:fsw fa3, 784(a5)
Current Store : [0x80000d74] : sw a7, 788(a5) -- Store: [0x80003b18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d8c]:csrrs a7, fflags, zero
	-[0x80000d90]:fsw fa3, 792(a5)
Current Store : [0x80000d94] : sw a7, 796(a5) -- Store: [0x80003b20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dac]:csrrs a7, fflags, zero
	-[0x80000db0]:fsw fa3, 800(a5)
Current Store : [0x80000db4] : sw a7, 804(a5) -- Store: [0x80003b28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000dc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dcc]:csrrs a7, fflags, zero
	-[0x80000dd0]:fsw fa3, 808(a5)
Current Store : [0x80000dd4] : sw a7, 812(a5) -- Store: [0x80003b30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsw fa3, 816(a5)
Current Store : [0x80000df4] : sw a7, 820(a5) -- Store: [0x80003b38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e0c]:csrrs a7, fflags, zero
	-[0x80000e10]:fsw fa3, 824(a5)
Current Store : [0x80000e14] : sw a7, 828(a5) -- Store: [0x80003b40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa3, 832(a5)
Current Store : [0x80000e34] : sw a7, 836(a5) -- Store: [0x80003b48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e4c]:csrrs a7, fflags, zero
	-[0x80000e50]:fsw fa3, 840(a5)
Current Store : [0x80000e54] : sw a7, 844(a5) -- Store: [0x80003b50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e6c]:csrrs a7, fflags, zero
	-[0x80000e70]:fsw fa3, 848(a5)
Current Store : [0x80000e74] : sw a7, 852(a5) -- Store: [0x80003b58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e8c]:csrrs a7, fflags, zero
	-[0x80000e90]:fsw fa3, 856(a5)
Current Store : [0x80000e94] : sw a7, 860(a5) -- Store: [0x80003b60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ea8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000eac]:csrrs a7, fflags, zero
	-[0x80000eb0]:fsw fa3, 864(a5)
Current Store : [0x80000eb4] : sw a7, 868(a5) -- Store: [0x80003b68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsw fa3, 872(a5)
Current Store : [0x80000ed4] : sw a7, 876(a5) -- Store: [0x80003b70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000eec]:csrrs a7, fflags, zero
	-[0x80000ef0]:fsw fa3, 880(a5)
Current Store : [0x80000ef4] : sw a7, 884(a5) -- Store: [0x80003b78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f08]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f0c]:csrrs a7, fflags, zero
	-[0x80000f10]:fsw fa3, 888(a5)
Current Store : [0x80000f14] : sw a7, 892(a5) -- Store: [0x80003b80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f28]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f2c]:csrrs a7, fflags, zero
	-[0x80000f30]:fsw fa3, 896(a5)
Current Store : [0x80000f34] : sw a7, 900(a5) -- Store: [0x80003b88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f48]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f4c]:csrrs a7, fflags, zero
	-[0x80000f50]:fsw fa3, 904(a5)
Current Store : [0x80000f54] : sw a7, 908(a5) -- Store: [0x80003b90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f68]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f6c]:csrrs a7, fflags, zero
	-[0x80000f70]:fsw fa3, 912(a5)
Current Store : [0x80000f74] : sw a7, 916(a5) -- Store: [0x80003b98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f88]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f8c]:csrrs a7, fflags, zero
	-[0x80000f90]:fsw fa3, 920(a5)
Current Store : [0x80000f94] : sw a7, 924(a5) -- Store: [0x80003ba0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsw fa3, 928(a5)
Current Store : [0x80000fb4] : sw a7, 932(a5) -- Store: [0x80003ba8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fcc]:csrrs a7, fflags, zero
	-[0x80000fd0]:fsw fa3, 936(a5)
Current Store : [0x80000fd4] : sw a7, 940(a5) -- Store: [0x80003bb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000fe8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fec]:csrrs a7, fflags, zero
	-[0x80000ff0]:fsw fa3, 944(a5)
Current Store : [0x80000ff4] : sw a7, 948(a5) -- Store: [0x80003bb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001008]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:fsw fa3, 952(a5)
Current Store : [0x80001014] : sw a7, 956(a5) -- Store: [0x80003bc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001028]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000102c]:csrrs a7, fflags, zero
	-[0x80001030]:fsw fa3, 960(a5)
Current Store : [0x80001034] : sw a7, 964(a5) -- Store: [0x80003bc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001048]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000104c]:csrrs a7, fflags, zero
	-[0x80001050]:fsw fa3, 968(a5)
Current Store : [0x80001054] : sw a7, 972(a5) -- Store: [0x80003bd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001068]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:fsw fa3, 976(a5)
Current Store : [0x80001074] : sw a7, 980(a5) -- Store: [0x80003bd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001088]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsw fa3, 984(a5)
Current Store : [0x80001094] : sw a7, 988(a5) -- Store: [0x80003be0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010ac]:csrrs a7, fflags, zero
	-[0x800010b0]:fsw fa3, 992(a5)
Current Store : [0x800010b4] : sw a7, 996(a5) -- Store: [0x80003be8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa3, 1000(a5)
Current Store : [0x800010d4] : sw a7, 1004(a5) -- Store: [0x80003bf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800010e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010ec]:csrrs a7, fflags, zero
	-[0x800010f0]:fsw fa3, 1008(a5)
Current Store : [0x800010f4] : sw a7, 1012(a5) -- Store: [0x80003bf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001108]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000110c]:csrrs a7, fflags, zero
	-[0x80001110]:fsw fa3, 1016(a5)
Current Store : [0x80001114] : sw a7, 1020(a5) -- Store: [0x80003c00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001128]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:fsw fa3, 1024(a5)
Current Store : [0x80001134] : sw a7, 1028(a5) -- Store: [0x80003c08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001148]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000114c]:csrrs a7, fflags, zero
	-[0x80001150]:fsw fa3, 1032(a5)
Current Store : [0x80001154] : sw a7, 1036(a5) -- Store: [0x80003c10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001168]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsw fa3, 1040(a5)
Current Store : [0x80001174] : sw a7, 1044(a5) -- Store: [0x80003c18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001188]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:fsw fa3, 1048(a5)
Current Store : [0x80001194] : sw a7, 1052(a5) -- Store: [0x80003c20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011ac]:csrrs a7, fflags, zero
	-[0x800011b0]:fsw fa3, 1056(a5)
Current Store : [0x800011b4] : sw a7, 1060(a5) -- Store: [0x80003c28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsw fa3, 1064(a5)
Current Store : [0x800011d4] : sw a7, 1068(a5) -- Store: [0x80003c30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:fsw fa3, 1072(a5)
Current Store : [0x800011f4] : sw a7, 1076(a5) -- Store: [0x80003c38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001208]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000120c]:csrrs a7, fflags, zero
	-[0x80001210]:fsw fa3, 1080(a5)
Current Store : [0x80001214] : sw a7, 1084(a5) -- Store: [0x80003c40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001228]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000122c]:csrrs a7, fflags, zero
	-[0x80001230]:fsw fa3, 1088(a5)
Current Store : [0x80001234] : sw a7, 1092(a5) -- Store: [0x80003c48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001248]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:fsw fa3, 1096(a5)
Current Store : [0x80001254] : sw a7, 1100(a5) -- Store: [0x80003c50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001268]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000126c]:csrrs a7, fflags, zero
	-[0x80001270]:fsw fa3, 1104(a5)
Current Store : [0x80001274] : sw a7, 1108(a5) -- Store: [0x80003c58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001288]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000128c]:csrrs a7, fflags, zero
	-[0x80001290]:fsw fa3, 1112(a5)
Current Store : [0x80001294] : sw a7, 1116(a5) -- Store: [0x80003c60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsw fa3, 1120(a5)
Current Store : [0x800012b4] : sw a7, 1124(a5) -- Store: [0x80003c68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012cc]:csrrs a7, fflags, zero
	-[0x800012d0]:fsw fa3, 1128(a5)
Current Store : [0x800012d4] : sw a7, 1132(a5) -- Store: [0x80003c70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012ec]:csrrs a7, fflags, zero
	-[0x800012f0]:fsw fa3, 1136(a5)
Current Store : [0x800012f4] : sw a7, 1140(a5) -- Store: [0x80003c78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001308]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:fsw fa3, 1144(a5)
Current Store : [0x80001314] : sw a7, 1148(a5) -- Store: [0x80003c80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001328]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000132c]:csrrs a7, fflags, zero
	-[0x80001330]:fsw fa3, 1152(a5)
Current Store : [0x80001334] : sw a7, 1156(a5) -- Store: [0x80003c88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001348]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000134c]:csrrs a7, fflags, zero
	-[0x80001350]:fsw fa3, 1160(a5)
Current Store : [0x80001354] : sw a7, 1164(a5) -- Store: [0x80003c90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001368]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:fsw fa3, 1168(a5)
Current Store : [0x80001374] : sw a7, 1172(a5) -- Store: [0x80003c98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001388]:fnmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsw fa3, 1176(a5)
Current Store : [0x80001394] : sw a7, 1180(a5) -- Store: [0x80003ca0]:0x00000005





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

|s.no|        signature         |                                                                                                                                                            coverpoints                                                                                                                                                             |                                                             code                                                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003804]<br>0x6FAB7FBB|- opcode : fnmadd.s<br> - rs1 : f21<br> - rs2 : f19<br> - rs3 : f31<br> - rd : f19<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 0  #nosat<br>      |[0x80000128]:fnmadd.s fs3, fs5, fs3, ft11, dyn<br> [0x8000012c]:csrrs a7, fflags, zero<br> [0x80000130]:fsw fs3, 0(a5)<br>     |
|   2|[0x8000380c]<br>0x5BFDDB7D|- rs1 : f8<br> - rs2 : f4<br> - rs3 : f11<br> - rd : f8<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 4  #nosat<br>                                 |[0x80000148]:fnmadd.s fs0, fs0, ft4, fa1, dyn<br> [0x8000014c]:csrrs a7, fflags, zero<br> [0x80000150]:fsw fs0, 8(a5)<br>      |
|   3|[0x80003814]<br>0xEEDBEADF|- rs1 : f29<br> - rs2 : f29<br> - rs3 : f2<br> - rd : f29<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                         |[0x80000168]:fnmadd.s ft9, ft9, ft9, ft2, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw ft9, 16(a5)<br>     |
|   4|[0x8000381c]<br>0xBB6FAB7F|- rs1 : f6<br> - rs2 : f18<br> - rs3 : f25<br> - rd : f27<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 2  #nosat<br> |[0x80000188]:fnmadd.s fs11, ft6, fs2, fs9, dyn<br> [0x8000018c]:csrrs a7, fflags, zero<br> [0x80000190]:fsw fs11, 24(a5)<br>   |
|   5|[0x80003824]<br>0x00000000|- rs1 : f24<br> - rs2 : f3<br> - rs3 : f3<br> - rd : f3<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                           |[0x800001a8]:fnmadd.s ft3, fs8, ft3, ft3, dyn<br> [0x800001ac]:csrrs a7, fflags, zero<br> [0x800001b0]:fsw ft3, 32(a5)<br>     |
|   6|[0x8000382c]<br>0xADFEEDBE|- rs1 : f23<br> - rs2 : f23<br> - rs3 : f23<br> - rd : f9<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                         |[0x800001c8]:fnmadd.s fs1, fs7, fs7, fs7, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw fs1, 40(a5)<br>     |
|   7|[0x80003834]<br>0xFEEDBEAD|- rs1 : f1<br> - rs2 : f1<br> - rs3 : f1<br> - rd : f1<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                            |[0x800001e8]:fnmadd.s ft1, ft1, ft1, ft1, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw ft1, 48(a5)<br>     |
|   8|[0x8000383c]<br>0xDDB7D5BF|- rs1 : f12<br> - rs2 : f21<br> - rs3 : f12<br> - rd : f28<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                           |[0x80000208]:fnmadd.s ft8, fa2, fs5, fa2, dyn<br> [0x8000020c]:csrrs a7, fflags, zero<br> [0x80000210]:fsw ft8, 56(a5)<br>     |
|   9|[0x80003844]<br>0xBFDDB7D5|- rs1 : f22<br> - rs2 : f6<br> - rs3 : f6<br> - rd : f4<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                              |[0x80000228]:fnmadd.s ft4, fs6, ft6, ft6, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw ft4, 64(a5)<br>     |
|  10|[0x8000384c]<br>0x00000005|- rs1 : f28<br> - rs2 : f13<br> - rs3 : f17<br> - rd : f17<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 1  #nosat<br>                              |[0x80000248]:fnmadd.s fa7, ft8, fa3, fa7, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:fsw fa7, 72(a5)<br>     |
|  11|[0x80003854]<br>0x00000000|- rs1 : f7<br> - rs2 : f7<br> - rs3 : f24<br> - rd : f0<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                              |[0x80000268]:fnmadd.s ft0, ft7, ft7, fs8, dyn<br> [0x8000026c]:csrrs a7, fflags, zero<br> [0x80000270]:fsw ft0, 80(a5)<br>     |
|  12|[0x8000385c]<br>0x56FF76DF|- rs1 : f10<br> - rs2 : f14<br> - rs3 : f10<br> - rd : f10<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                        |[0x80000288]:fnmadd.s fa0, fa0, fa4, fa0, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fa0, 88(a5)<br>     |
|  13|[0x80003864]<br>0x80003804|- rs1 : f26<br> - rs2 : f16<br> - rs3 : f14<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 3  #nosat<br>                                                                                         |[0x800002a8]:fnmadd.s fa5, fs10, fa6, fa4, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsw fa5, 96(a5)<br>    |
|  14|[0x8000386c]<br>0x80003000|- rs1 : f17<br> - rs2 : f20<br> - rs3 : f8<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 2  #nosat<br>                                                                                           |[0x800002c8]:fnmadd.s ft6, fa7, fs4, fs0, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw ft6, 104(a5)<br>    |
|  15|[0x80003874]<br>0xAB7FBB6F|- rs1 : f30<br> - rs2 : f17<br> - rs3 : f19<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 1  #nosat<br>                                                                                         |[0x800002e8]:fnmadd.s fa1, ft10, fa7, fs3, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw fa1, 112(a5)<br>   |
|  16|[0x8000387c]<br>0xF76DF56F|- rs1 : f5<br> - rs2 : f15<br> - rs3 : f0<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 0  #nosat<br>                                                                                           |[0x80000308]:fnmadd.s ft10, ft5, fa5, ft0, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw ft10, 120(a5)<br>  |
|  17|[0x80003884]<br>0xEDBEADFE|- rs1 : f20<br> - rs2 : f5<br> - rs3 : f27<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 4  #nosat<br>                                                                                          |[0x80000328]:fnmadd.s fs9, fs4, ft5, fs11, dyn<br> [0x8000032c]:csrrs a7, fflags, zero<br> [0x80000330]:fsw fs9, 128(a5)<br>   |
|  18|[0x8000388c]<br>0x80003004|- rs1 : f31<br> - rs2 : f22<br> - rs3 : f13<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 3  #nosat<br>                                                                                         |[0x80000348]:fnmadd.s fa6, ft11, fs6, fa3, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw fa6, 136(a5)<br>   |
|  19|[0x80003894]<br>0xEADFEEDB|- rs1 : f14<br> - rs2 : f10<br> - rs3 : f20<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 2  #nosat<br>                                                                                         |[0x80000368]:fnmadd.s fa3, fa4, fa0, fs4, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:fsw fa3, 144(a5)<br>    |
|  20|[0x8000389c]<br>0x76DF56FF|- rs1 : f18<br> - rs2 : f27<br> - rs3 : f9<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 1  #nosat<br>                                                                                          |[0x80000388]:fnmadd.s fs10, fs2, fs11, fs1, dyn<br> [0x8000038c]:csrrs a7, fflags, zero<br> [0x80000390]:fsw fs10, 152(a5)<br> |
|  21|[0x800038a4]<br>0x6DF56FF7|- rs1 : f0<br> - rs2 : f26<br> - rs3 : f30<br> - rd : f22<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x623c76 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x546367 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x09c28b and rm_val == 0  #nosat<br>                                                                                          |[0x800003a8]:fnmadd.s fs6, ft0, fs10, ft10, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs6, 160(a5)<br>  |
|  22|[0x800038ac]<br>0xDF56FF76|- rs1 : f3<br> - rs2 : f2<br> - rs3 : f5<br> - rd : f18<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 4  #nosat<br>                                                                                            |[0x800003c8]:fnmadd.s fs2, ft3, ft2, ft5, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsw fs2, 168(a5)<br>    |
|  23|[0x800038b4]<br>0xDBEADFEE|- rs1 : f4<br> - rs2 : f11<br> - rs3 : f18<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 3  #nosat<br>                                                                                          |[0x800003e8]:fnmadd.s fs5, ft4, fa1, fs2, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsw fs5, 176(a5)<br>    |
|  24|[0x800038bc]<br>0xB6FAB7FB|- rs1 : f25<br> - rs2 : f9<br> - rs3 : f15<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 2  #nosat<br>                                                                                          |[0x80000408]:fnmadd.s fs7, fs9, fs1, fa5, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw fs7, 184(a5)<br>    |
|  25|[0x800038c4]<br>0xB7FBB6FA|- rs1 : f16<br> - rs2 : f31<br> - rs3 : f4<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 1  #nosat<br>                                                                                           |[0x80000428]:fnmadd.s ft7, fa6, ft11, ft4, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:fsw ft7, 192(a5)<br>   |
|  26|[0x800038cc]<br>0xFBB6FAB7|- rs1 : f11<br> - rs2 : f24<br> - rs3 : f7<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x671228 and fs2 == 0 and fe2 == 0x80 and fm2 == 0x7514b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x69b89c and rm_val == 0  #nosat<br>                                                                                          |[0x80000448]:fnmadd.s ft11, fa1, fs8, ft7, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsw ft11, 200(a5)<br>  |
|  27|[0x800038d4]<br>0xD5BFDDB7|- rs1 : f9<br> - rs2 : f25<br> - rs3 : f26<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 4  #nosat<br>                                                                                          |[0x80000468]:fnmadd.s fa2, fs1, fs9, fs10, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa2, 208(a5)<br>   |
|  28|[0x800038dc]<br>0xDB7D5BFD|- rs1 : f19<br> - rs2 : f0<br> - rs3 : f21<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 3  #nosat<br>                                                                                          |[0x80000488]:fnmadd.s fs8, fs3, ft0, fs5, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fs8, 216(a5)<br>    |
|  29|[0x800038e4]<br>0xF56FF76D|- rs1 : f13<br> - rs2 : f8<br> - rs3 : f29<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 2  #nosat<br>                                                                                          |[0x800004a8]:fnmadd.s fa4, fa3, fs0, ft9, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsw fa4, 224(a5)<br>    |
|  30|[0x800038ec]<br>0x00006000|- rs1 : f27<br> - rs2 : f28<br> - rs3 : f22<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 1  #nosat<br>                                                                                          |[0x800004c8]:fnmadd.s ft2, fs11, ft8, fs6, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw ft2, 232(a5)<br>   |
|  31|[0x800038f4]<br>0xB7D5BFDD|- rs1 : f2<br> - rs2 : f12<br> - rs3 : f28<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2e9fe8 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x669d12 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0ac4bf and rm_val == 0  #nosat<br>                                                                                          |[0x800004e8]:fnmadd.s fs4, ft2, fa2, ft8, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:fsw fs4, 240(a5)<br>    |
|  32|[0x800038fc]<br>0x800000F8|- rs1 : f15<br> - rs2 : f30<br> - rs3 : f16<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 4  #nosat<br>                                                                                          |[0x80000508]:fnmadd.s ft5, fa5, ft10, fa6, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsw ft5, 248(a5)<br>   |
|  33|[0x80003904]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000528]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsw fa3, 256(a5)<br>    |
|  34|[0x8000390c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000548]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:fsw fa3, 264(a5)<br>    |
|  35|[0x80003914]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000568]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa3, 272(a5)<br>    |
|  36|[0x8000391c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1aa82d and fs2 == 0 and fe2 == 0x80 and fm2 == 0x1d078a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3b76c8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000588]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:fsw fa3, 280(a5)<br>    |
|  37|[0x80003924]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800005a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsw fa3, 288(a5)<br>    |
|  38|[0x8000392c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800005c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsw fa3, 296(a5)<br>    |
|  39|[0x80003934]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800005e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:fsw fa3, 304(a5)<br>    |
|  40|[0x8000393c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000608]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsw fa3, 312(a5)<br>    |
|  41|[0x80003944]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7783fc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6ff524 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x05ffb0 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000628]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsw fa3, 320(a5)<br>    |
|  42|[0x8000394c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000648]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa3, 328(a5)<br>    |
|  43|[0x80003954]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000668]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000066c]:csrrs a7, fflags, zero<br> [0x80000670]:fsw fa3, 336(a5)<br>    |
|  44|[0x8000395c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000688]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsw fa3, 344(a5)<br>    |
|  45|[0x80003964]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800006a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsw fa3, 352(a5)<br>    |
|  46|[0x8000396c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2ea04a and fs2 == 0 and fe2 == 0x7f and fm2 == 0x0ecbff and fs3 == 0 and fe3 == 0xfd and fm3 == 0x45a044 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800006c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006cc]:csrrs a7, fflags, zero<br> [0x800006d0]:fsw fa3, 360(a5)<br>    |
|  47|[0x80003974]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800006e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsw fa3, 368(a5)<br>    |
|  48|[0x8000397c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000708]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:fsw fa3, 376(a5)<br>    |
|  49|[0x80003984]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000728]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa3, 384(a5)<br>    |
|  50|[0x8000398c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000748]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsw fa3, 392(a5)<br>    |
|  51|[0x80003994]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0a62c0 and fs2 == 0 and fe2 == 0x7f and fm2 == 0x19b337 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3315e5 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000768]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:fsw fa3, 400(a5)<br>    |
|  52|[0x8000399c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000788]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000078c]:csrrs a7, fflags, zero<br> [0x80000790]:fsw fa3, 408(a5)<br>    |
|  53|[0x800039a4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsw fa3, 416(a5)<br>    |
|  54|[0x800039ac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800007c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsw fa3, 424(a5)<br>    |
|  55|[0x800039b4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800007e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ec]:csrrs a7, fflags, zero<br> [0x800007f0]:fsw fa3, 432(a5)<br>    |
|  56|[0x800039bc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1a457f and fs2 == 0 and fe2 == 0x81 and fm2 == 0x103bee and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7bacd4 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000808]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa3, 440(a5)<br>    |
|  57|[0x800039c4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000828]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:fsw fa3, 448(a5)<br>    |
|  58|[0x800039cc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000848]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000084c]:csrrs a7, fflags, zero<br> [0x80000850]:fsw fa3, 456(a5)<br>    |
|  59|[0x800039d4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000868]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsw fa3, 464(a5)<br>    |
|  60|[0x800039dc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000888]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:fsw fa3, 472(a5)<br>    |
|  61|[0x800039e4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x36a9e2 and fs2 == 0 and fe2 == 0x7d and fm2 == 0x36353c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6202c3 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsw fa3, 480(a5)<br>    |
|  62|[0x800039ec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800008c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsw fa3, 488(a5)<br>    |
|  63|[0x800039f4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa3, 496(a5)<br>    |
|  64|[0x800039fc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000908]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000090c]:csrrs a7, fflags, zero<br> [0x80000910]:fsw fa3, 504(a5)<br>    |
|  65|[0x80003a04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000928]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsw fa3, 512(a5)<br>    |
|  66|[0x80003a0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x73cf0f and fs2 == 0 and fe2 == 0x7e and fm2 == 0x27ce41 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fa103 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000948]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:fsw fa3, 520(a5)<br>    |
|  67|[0x80003a14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000968]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000096c]:csrrs a7, fflags, zero<br> [0x80000970]:fsw fa3, 528(a5)<br>    |
|  68|[0x80003a1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000988]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsw fa3, 536(a5)<br>    |
|  69|[0x80003a24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800009a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:fsw fa3, 544(a5)<br>    |
|  70|[0x80003a2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800009c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa3, 552(a5)<br>    |
|  71|[0x80003a34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x100bf1 and fs2 == 0 and fe2 == 0x7e and fm2 == 0x44fc96 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x176ba2 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800009e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsw fa3, 560(a5)<br>    |
|  72|[0x80003a3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000a08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:fsw fa3, 568(a5)<br>    |
|  73|[0x80003a44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a2c]:csrrs a7, fflags, zero<br> [0x80000a30]:fsw fa3, 576(a5)<br>    |
|  74|[0x80003a4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000a48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:fsw fa3, 584(a5)<br>    |
|  75|[0x80003a54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000a68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsw fa3, 592(a5)<br>    |
|  76|[0x80003a5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a849e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x307a2b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2af628 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a8c]:csrrs a7, fflags, zero<br> [0x80000a90]:fsw fa3, 600(a5)<br>    |
|  77|[0x80003a64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000aa8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa3, 608(a5)<br>    |
|  78|[0x80003a6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ac8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:fsw fa3, 616(a5)<br>    |
|  79|[0x80003a74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ae8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aec]:csrrs a7, fflags, zero<br> [0x80000af0]:fsw fa3, 624(a5)<br>    |
|  80|[0x80003a7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000b08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:fsw fa3, 632(a5)<br>    |
|  81|[0x80003a84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0f0e02 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x093dc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19a77e and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000b28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:fsw fa3, 640(a5)<br>    |
|  82|[0x80003a8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000b48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsw fa3, 648(a5)<br>    |
|  83|[0x80003a94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b6c]:csrrs a7, fflags, zero<br> [0x80000b70]:fsw fa3, 656(a5)<br>    |
|  84|[0x80003a9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000b88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa3, 664(a5)<br>    |
|  85|[0x80003aa4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000ba8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bac]:csrrs a7, fflags, zero<br> [0x80000bb0]:fsw fa3, 672(a5)<br>    |
|  86|[0x80003aac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x221a29 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x497654 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x00dd0d and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000bc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bcc]:csrrs a7, fflags, zero<br> [0x80000bd0]:fsw fa3, 680(a5)<br>    |
|  87|[0x80003ab4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000be8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bec]:csrrs a7, fflags, zero<br> [0x80000bf0]:fsw fa3, 688(a5)<br>    |
|  88|[0x80003abc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c0c]:csrrs a7, fflags, zero<br> [0x80000c10]:fsw fa3, 696(a5)<br>    |
|  89|[0x80003ac4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000c28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsw fa3, 704(a5)<br>    |
|  90|[0x80003acc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000c48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c4c]:csrrs a7, fflags, zero<br> [0x80000c50]:fsw fa3, 712(a5)<br>    |
|  91|[0x80003ad4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a3f02 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4850d9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03a707 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000c68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c6c]:csrrs a7, fflags, zero<br> [0x80000c70]:fsw fa3, 720(a5)<br>    |
|  92|[0x80003adc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000c88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c8c]:csrrs a7, fflags, zero<br> [0x80000c90]:fsw fa3, 728(a5)<br>    |
|  93|[0x80003ae4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ca8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000cac]:csrrs a7, fflags, zero<br> [0x80000cb0]:fsw fa3, 736(a5)<br>    |
|  94|[0x80003aec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000cc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000ccc]:csrrs a7, fflags, zero<br> [0x80000cd0]:fsw fa3, 744(a5)<br>    |
|  95|[0x80003af4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000ce8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000cec]:csrrs a7, fflags, zero<br> [0x80000cf0]:fsw fa3, 752(a5)<br>    |
|  96|[0x80003afc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a9574 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x698994 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x4beb8f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000d08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsw fa3, 760(a5)<br>    |
|  97|[0x80003b04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000d28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d2c]:csrrs a7, fflags, zero<br> [0x80000d30]:fsw fa3, 768(a5)<br>    |
|  98|[0x80003b0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsw fa3, 776(a5)<br>    |
|  99|[0x80003b14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000d68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d6c]:csrrs a7, fflags, zero<br> [0x80000d70]:fsw fa3, 784(a5)<br>    |
| 100|[0x80003b1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000d88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d8c]:csrrs a7, fflags, zero<br> [0x80000d90]:fsw fa3, 792(a5)<br>    |
| 101|[0x80003b24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x14365e and fs2 == 1 and fe2 == 0x80 and fm2 == 0x14091c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x549695 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000da8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dac]:csrrs a7, fflags, zero<br> [0x80000db0]:fsw fa3, 800(a5)<br>    |
| 102|[0x80003b2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000dc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dcc]:csrrs a7, fflags, zero<br> [0x80000dd0]:fsw fa3, 808(a5)<br>    |
| 103|[0x80003b34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000de8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsw fa3, 816(a5)<br>    |
| 104|[0x80003b3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000e08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e0c]:csrrs a7, fflags, zero<br> [0x80000e10]:fsw fa3, 824(a5)<br>    |
| 105|[0x80003b44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000e28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa3, 832(a5)<br>    |
| 106|[0x80003b4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4eb58d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1734a0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x02f434 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000e48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e4c]:csrrs a7, fflags, zero<br> [0x80000e50]:fsw fa3, 840(a5)<br>    |
| 107|[0x80003b54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000e68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e6c]:csrrs a7, fflags, zero<br> [0x80000e70]:fsw fa3, 848(a5)<br>    |
| 108|[0x80003b5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e8c]:csrrs a7, fflags, zero<br> [0x80000e90]:fsw fa3, 856(a5)<br>    |
| 109|[0x80003b64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ea8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000eac]:csrrs a7, fflags, zero<br> [0x80000eb0]:fsw fa3, 864(a5)<br>    |
| 110|[0x80003b6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000ec8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsw fa3, 872(a5)<br>    |
| 111|[0x80003b74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c2059 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4d8c66 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1efa7c and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000ee8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000eec]:csrrs a7, fflags, zero<br> [0x80000ef0]:fsw fa3, 880(a5)<br>    |
| 112|[0x80003b7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000f08]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f0c]:csrrs a7, fflags, zero<br> [0x80000f10]:fsw fa3, 888(a5)<br>    |
| 113|[0x80003b84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f28]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f2c]:csrrs a7, fflags, zero<br> [0x80000f30]:fsw fa3, 896(a5)<br>    |
| 114|[0x80003b8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000f48]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f4c]:csrrs a7, fflags, zero<br> [0x80000f50]:fsw fa3, 904(a5)<br>    |
| 115|[0x80003b94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000f68]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f6c]:csrrs a7, fflags, zero<br> [0x80000f70]:fsw fa3, 912(a5)<br>    |
| 116|[0x80003b9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x516e9f and fs2 == 1 and fe2 == 0x7e and fm2 == 0x39f488 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x19f7bf and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000f88]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f8c]:csrrs a7, fflags, zero<br> [0x80000f90]:fsw fa3, 920(a5)<br>    |
| 117|[0x80003ba4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000fa8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsw fa3, 928(a5)<br>    |
| 118|[0x80003bac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fc8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fcc]:csrrs a7, fflags, zero<br> [0x80000fd0]:fsw fa3, 936(a5)<br>    |
| 119|[0x80003bb4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000fe8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fec]:csrrs a7, fflags, zero<br> [0x80000ff0]:fsw fa3, 944(a5)<br>    |
| 120|[0x80003bbc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001008]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:fsw fa3, 952(a5)<br>    |
| 121|[0x80003bc4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f4b27 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1db103 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x13dde9 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001028]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000102c]:csrrs a7, fflags, zero<br> [0x80001030]:fsw fa3, 960(a5)<br>    |
| 122|[0x80003bcc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001048]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000104c]:csrrs a7, fflags, zero<br> [0x80001050]:fsw fa3, 968(a5)<br>    |
| 123|[0x80003bd4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001068]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:fsw fa3, 976(a5)<br>    |
| 124|[0x80003bdc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001088]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsw fa3, 984(a5)<br>    |
| 125|[0x80003be4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800010a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010ac]:csrrs a7, fflags, zero<br> [0x800010b0]:fsw fa3, 992(a5)<br>    |
| 126|[0x80003bec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3493df and fs2 == 1 and fe2 == 0x7e and fm2 == 0x02cca2 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11de47 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800010c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa3, 1000(a5)<br>   |
| 127|[0x80003bf4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800010e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010ec]:csrrs a7, fflags, zero<br> [0x800010f0]:fsw fa3, 1008(a5)<br>   |
| 128|[0x80003bfc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001108]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000110c]:csrrs a7, fflags, zero<br> [0x80001110]:fsw fa3, 1016(a5)<br>   |
| 129|[0x80003c04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001128]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:fsw fa3, 1024(a5)<br>   |
| 130|[0x80003c0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001148]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000114c]:csrrs a7, fflags, zero<br> [0x80001150]:fsw fa3, 1032(a5)<br>   |
| 131|[0x80003c14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf3 and fm1 == 0x319f1b and fs2 == 1 and fe2 == 0x88 and fm2 == 0x3a9ca3 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e85b6 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001168]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsw fa3, 1040(a5)<br>   |
| 132|[0x80003c1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001188]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:fsw fa3, 1048(a5)<br>   |
| 133|[0x80003c24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011ac]:csrrs a7, fflags, zero<br> [0x800011b0]:fsw fa3, 1056(a5)<br>   |
| 134|[0x80003c2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800011c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsw fa3, 1064(a5)<br>   |
| 135|[0x80003c34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800011e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:fsw fa3, 1072(a5)<br>   |
| 136|[0x80003c3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3a40d7 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x42db6b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x48ecdf and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001208]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000120c]:csrrs a7, fflags, zero<br> [0x80001210]:fsw fa3, 1080(a5)<br>   |
| 137|[0x80003c44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001228]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000122c]:csrrs a7, fflags, zero<br> [0x80001230]:fsw fa3, 1088(a5)<br>   |
| 138|[0x80003c4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001248]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:fsw fa3, 1096(a5)<br>   |
| 139|[0x80003c54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001268]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000126c]:csrrs a7, fflags, zero<br> [0x80001270]:fsw fa3, 1104(a5)<br>   |
| 140|[0x80003c5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x185240 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x65cfde and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1dd0ae and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001288]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000128c]:csrrs a7, fflags, zero<br> [0x80001290]:fsw fa3, 1112(a5)<br>   |
| 141|[0x80003c64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012a8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsw fa3, 1120(a5)<br>   |
| 142|[0x80003c6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800012c8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012cc]:csrrs a7, fflags, zero<br> [0x800012d0]:fsw fa3, 1128(a5)<br>   |
| 143|[0x80003c74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x6fd4df and fs2 == 0 and fe2 == 0x83 and fm2 == 0x51f880 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16b33b and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800012e8]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012ec]:csrrs a7, fflags, zero<br> [0x800012f0]:fsw fa3, 1136(a5)<br>   |
| 144|[0x80003c7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001308]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:fsw fa3, 1144(a5)<br>   |
| 145|[0x80003c84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001328]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000132c]:csrrs a7, fflags, zero<br> [0x80001330]:fsw fa3, 1152(a5)<br>   |
| 146|[0x80003c8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001348]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000134c]:csrrs a7, fflags, zero<br> [0x80001350]:fsw fa3, 1160(a5)<br>   |
| 147|[0x80003c94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x337137 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x7b3938 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7e7e1b and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001368]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:fsw fa3, 1168(a5)<br>   |
| 148|[0x80003c9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x28f9a2 and fs2 == 0 and fe2 == 0x81 and fm2 == 0x248a4f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x49b378 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001388]:fnmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsw fa3, 1176(a5)<br>   |
