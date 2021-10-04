
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001620')]      |
| SIG_REGION                | [('0x80003904', '0x80003e44', '336 words')]      |
| COV_LABELS                | fmadd_b7      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmadd_b7-01.S/ref.S    |
| Total Number of coverpoints| 308     |
| Total Coverpoints Hit     | 301      |
| Total Signature Updates   | 336      |
| STAT1                     | 168      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 168     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmadd.s', 'rs1 : f28', 'rs2 : f0', 'rs3 : f28', 'rd : f22', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000128]:fmadd.s fs6, ft8, ft0, ft8, dyn
	-[0x8000012c]:csrrs a7, fflags, zero
	-[0x80000130]:fsw fs6, 0(a5)
Current Store : [0x80000134] : sw a7, 4(a5) -- Store: [0x80003908]:0x00000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f31', 'rs3 : f20', 'rd : f31', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2390a7 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x6c2877 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16e335 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000148]:fmadd.s ft11, ft10, ft11, fs4, dyn
	-[0x8000014c]:csrrs a7, fflags, zero
	-[0x80000150]:fsw ft11, 8(a5)
Current Store : [0x80000154] : sw a7, 12(a5) -- Store: [0x80003910]:0x00000001




Last Coverpoint : ['rs1 : f10', 'rs2 : f3', 'rs3 : f7', 'rd : f7', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x14058d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x021f69 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1679f6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000168]:fmadd.s ft7, fa0, ft3, ft7, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:fsw ft7, 16(a5)
Current Store : [0x80000174] : sw a7, 20(a5) -- Store: [0x80003918]:0x00000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f9', 'rs3 : f4', 'rd : f27', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000188]:fmadd.s fs11, fs1, fs1, ft4, dyn
	-[0x8000018c]:csrrs a7, fflags, zero
	-[0x80000190]:fsw fs11, 24(a5)
Current Store : [0x80000194] : sw a7, 28(a5) -- Store: [0x80003920]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f15', 'rs3 : f9', 'rd : f15', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x800001a8]:fmadd.s fa5, fa5, fa5, fs1, dyn
	-[0x800001ac]:csrrs a7, fflags, zero
	-[0x800001b0]:fsw fa5, 32(a5)
Current Store : [0x800001b4] : sw a7, 36(a5) -- Store: [0x80003928]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f14', 'rs3 : f14', 'rd : f6', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x800001c8]:fmadd.s ft6, fa4, fa4, fa4, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:fsw ft6, 40(a5)
Current Store : [0x800001d4] : sw a7, 44(a5) -- Store: [0x80003930]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f24', 'rs3 : f24', 'rd : f24', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800001e8]:fmadd.s fs8, fs8, fs8, fs8, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw fs8, 48(a5)
Current Store : [0x800001f4] : sw a7, 52(a5) -- Store: [0x80003938]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f19', 'rs3 : f26', 'rd : f21', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2a7c0d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1d4c63 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5181e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000208]:fmadd.s fs5, fs5, fs3, fs10, dyn
	-[0x8000020c]:csrrs a7, fflags, zero
	-[0x80000210]:fsw fs5, 56(a5)
Current Store : [0x80000214] : sw a7, 60(a5) -- Store: [0x80003940]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f25', 'rs3 : f25', 'rd : f25', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000228]:fmadd.s fs9, ft11, fs9, fs9, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:fsw fs9, 64(a5)
Current Store : [0x80000234] : sw a7, 68(a5) -- Store: [0x80003948]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f2', 'rs3 : f19', 'rd : f19', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x80000248]:fmadd.s fs3, fs3, ft2, fs3, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:fsw fs3, 72(a5)
Current Store : [0x80000254] : sw a7, 76(a5) -- Store: [0x80003950]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f30', 'rs3 : f5', 'rd : f18', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0f0b15 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4b0294 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x62de76 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000268]:fmadd.s fs2, ft9, ft10, ft5, dyn
	-[0x8000026c]:csrrs a7, fflags, zero
	-[0x80000270]:fsw fs2, 80(a5)
Current Store : [0x80000274] : sw a7, 84(a5) -- Store: [0x80003958]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f6', 'rs3 : f6', 'rd : f16', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x80000288]:fmadd.s fa6, fa3, ft6, ft6, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:fsw fa6, 88(a5)
Current Store : [0x80000294] : sw a7, 92(a5) -- Store: [0x80003960]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f21', 'rs3 : f0', 'rd : f2', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x63f59c and fs2 == 1 and fe2 == 0x7f and fm2 == 0x647f4a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4b7817 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fmadd.s ft2, fa1, fs5, ft0, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:fsw ft2, 96(a5)
Current Store : [0x800002b4] : sw a7, 100(a5) -- Store: [0x80003968]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f10', 'rs3 : f15', 'rd : f29', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x4cdcfa and fs2 == 1 and fe2 == 0x7e and fm2 == 0x2149e2 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x011219 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fmadd.s ft9, fs11, fa0, fa5, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw ft9, 104(a5)
Current Store : [0x800002d4] : sw a7, 108(a5) -- Store: [0x80003970]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f28', 'rs3 : f31', 'rd : f3', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x11ff1d and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4a76b7 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x66ee02 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fmadd.s ft3, ft2, ft8, ft11, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:fsw ft3, 112(a5)
Current Store : [0x800002f4] : sw a7, 116(a5) -- Store: [0x80003978]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f5', 'rs3 : f17', 'rd : f23', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ebf31 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x22c52b and fs3 == 0 and fe3 == 0xfb and fm3 == 0x3585de and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000308]:fmadd.s fs7, ft1, ft5, fa7, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:fsw fs7, 120(a5)
Current Store : [0x80000314] : sw a7, 124(a5) -- Store: [0x80003980]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f27', 'rs3 : f23', 'rd : f28', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x77a1f3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6fb705 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x67e13b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000328]:fmadd.s ft8, fs10, fs11, fs7, dyn
	-[0x8000032c]:csrrs a7, fflags, zero
	-[0x80000330]:fsw ft8, 128(a5)
Current Store : [0x80000334] : sw a7, 132(a5) -- Store: [0x80003988]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f13', 'rs3 : f3', 'rd : f5', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x697c86 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x47d51b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x36422a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000348]:fmadd.s ft5, ft7, fa3, ft3, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:fsw ft5, 136(a5)
Current Store : [0x80000354] : sw a7, 140(a5) -- Store: [0x80003990]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f12', 'rs3 : f16', 'rd : f17', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ddabc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x17cf0e and fs3 == 0 and fe3 == 0xfc and fm3 == 0x612b27 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000368]:fmadd.s fa7, fs4, fa2, fa6, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:fsw fa7, 144(a5)
Current Store : [0x80000374] : sw a7, 148(a5) -- Store: [0x80003998]:0x00000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f23', 'rs3 : f12', 'rd : f1', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x4d95b3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x140204 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x6db854 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000388]:fmadd.s ft1, fs2, fs7, fa2, dyn
	-[0x8000038c]:csrrs a7, fflags, zero
	-[0x80000390]:fsw ft1, 152(a5)
Current Store : [0x80000394] : sw a7, 156(a5) -- Store: [0x800039a0]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f7', 'rs3 : f29', 'rd : f30', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x16204d and fs2 == 1 and fe2 == 0x7d and fm2 == 0x20dc4b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x3caac1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmadd.s ft10, ft5, ft7, ft9, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw ft10, 160(a5)
Current Store : [0x800003b4] : sw a7, 164(a5) -- Store: [0x800039a8]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f8', 'rs3 : f1', 'rd : f9', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x5244d5 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x5a9f6c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x33918f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fmadd.s fs1, fs7, fs0, ft1, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:fsw fs1, 168(a5)
Current Store : [0x800003d4] : sw a7, 172(a5) -- Store: [0x800039b0]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f22', 'rs3 : f21', 'rd : f12', 'fs1 == 0 and fe1 == 0xf8 and fm1 == 0x223dfa and fs2 == 1 and fe2 == 0x84 and fm2 == 0x2157ca and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4c813b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fmadd.s fa2, ft0, fs6, fs5, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsw fa2, 176(a5)
Current Store : [0x800003f4] : sw a7, 180(a5) -- Store: [0x800039b8]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f26', 'rs3 : f30', 'rd : f0', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x16166d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x07627c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ebf21 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000408]:fmadd.s ft0, ft3, fs10, ft10, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:fsw ft0, 184(a5)
Current Store : [0x80000414] : sw a7, 188(a5) -- Store: [0x800039c0]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f1', 'rs3 : f10', 'rd : f11', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x2a4aa3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x293302 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x611a69 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000428]:fmadd.s fa1, fs0, ft1, fa0, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:fsw fa1, 192(a5)
Current Store : [0x80000434] : sw a7, 196(a5) -- Store: [0x800039c8]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f16', 'rs3 : f2', 'rd : f4', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x3b3787 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x2337c4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6eba47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000448]:fmadd.s ft4, fs6, fa6, ft2, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsw ft4, 200(a5)
Current Store : [0x80000454] : sw a7, 204(a5) -- Store: [0x800039d0]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f4', 'rs3 : f18', 'rd : f13', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x5bf434 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x552827 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3724af and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000468]:fmadd.s fa3, fa6, ft4, fs2, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:fsw fa3, 208(a5)
Current Store : [0x80000474] : sw a7, 212(a5) -- Store: [0x800039d8]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f29', 'rs3 : f8', 'rd : f10', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cfb28 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x7fccec and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3cd574 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000488]:fmadd.s fa0, fa2, ft9, fs0, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fa0, 216(a5)
Current Store : [0x80000494] : sw a7, 220(a5) -- Store: [0x800039e0]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f20', 'rs3 : f22', 'rd : f26', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x1f8c7e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x44a44f and fs3 == 0 and fe3 == 0xfc and fm3 == 0x751bf1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fmadd.s fs10, ft6, fs4, fs6, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsw fs10, 224(a5)
Current Store : [0x800004b4] : sw a7, 228(a5) -- Store: [0x800039e8]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f18', 'rs3 : f13', 'rd : f8', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3c5927 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x01847e and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3e94d0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004c8]:fmadd.s fs0, fs9, fs2, fa3, dyn
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:fsw fs0, 232(a5)
Current Store : [0x800004d4] : sw a7, 236(a5) -- Store: [0x800039f0]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f11', 'rs3 : f27', 'rd : f14', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x64ca80 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x5f46b8 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x478b9a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fmadd.s fa4, fa7, fa1, fs11, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:fsw fa4, 240(a5)
Current Store : [0x800004f4] : sw a7, 244(a5) -- Store: [0x800039f8]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f17', 'rs3 : f11', 'rd : f20', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3889e8 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x73608d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2f7080 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000508]:fmadd.s fs4, ft4, fa7, fa1, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsw fs4, 248(a5)
Current Store : [0x80000514] : sw a7, 252(a5) -- Store: [0x80003a00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ab616 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x47f49a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x11d5f1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000528]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsw fa3, 256(a5)
Current Store : [0x80000534] : sw a7, 260(a5) -- Store: [0x80003a08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2dd370 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x24d96b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fde2a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000548]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:fsw fa3, 264(a5)
Current Store : [0x80000554] : sw a7, 268(a5) -- Store: [0x80003a10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x105363 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1303f7 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x25c43d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa3, 272(a5)
Current Store : [0x80000574] : sw a7, 276(a5) -- Store: [0x80003a18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x71b611 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x353e03 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2b2047 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000588]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:fsw fa3, 280(a5)
Current Store : [0x80000594] : sw a7, 284(a5) -- Store: [0x80003a20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6c3979 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x6a3541 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x581dad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:fsw fa3, 288(a5)
Current Store : [0x800005b4] : sw a7, 292(a5) -- Store: [0x80003a28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x25c337 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x27c65d and fs3 == 0 and fe3 == 0xfd and fm3 == 0x594594 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsw fa3, 296(a5)
Current Store : [0x800005d4] : sw a7, 300(a5) -- Store: [0x80003a30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b8bb0 and fs2 == 1 and fe2 == 0x75 and fm2 == 0x0afed7 and fs3 == 0 and fe3 == 0xf4 and fm3 == 0x3a4824 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:fsw fa3, 304(a5)
Current Store : [0x800005f4] : sw a7, 308(a5) -- Store: [0x80003a38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x69b4c8 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x13b0b0 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x06d41d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000608]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsw fa3, 312(a5)
Current Store : [0x80000614] : sw a7, 316(a5) -- Store: [0x80003a40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37c8e9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01712d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x39dafb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000628]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsw fa3, 320(a5)
Current Store : [0x80000634] : sw a7, 324(a5) -- Store: [0x80003a48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x64d70d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x723849 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x58859b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000648]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa3, 328(a5)
Current Store : [0x80000654] : sw a7, 332(a5) -- Store: [0x80003a50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0dddb2 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x44f318 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x5a48e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000668]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000066c]:csrrs a7, fflags, zero
	-[0x80000670]:fsw fa3, 336(a5)
Current Store : [0x80000674] : sw a7, 340(a5) -- Store: [0x80003a58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1c1813 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4a4039 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x76a451 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000688]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsw fa3, 344(a5)
Current Store : [0x80000694] : sw a7, 348(a5) -- Store: [0x80003a60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d27fd and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0313ed and fs3 == 0 and fe3 == 0xfd and fm3 == 0x20ef64 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:fsw fa3, 352(a5)
Current Store : [0x800006b4] : sw a7, 356(a5) -- Store: [0x80003a68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f106b and fs2 == 1 and fe2 == 0x7f and fm2 == 0x532924 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x37fe62 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006cc]:csrrs a7, fflags, zero
	-[0x800006d0]:fsw fa3, 360(a5)
Current Store : [0x800006d4] : sw a7, 364(a5) -- Store: [0x80003a70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x515d63 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1f58f4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0251c0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsw fa3, 368(a5)
Current Store : [0x800006f4] : sw a7, 372(a5) -- Store: [0x80003a78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6b9bcd and fs2 == 1 and fe2 == 0x7c and fm2 == 0x1e405c and fs3 == 0 and fe3 == 0xfb and fm3 == 0x11a564 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000708]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:fsw fa3, 376(a5)
Current Store : [0x80000714] : sw a7, 380(a5) -- Store: [0x80003a80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f91dd and fs2 == 1 and fe2 == 0x7b and fm2 == 0x458990 and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x5d90cb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000728]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa3, 384(a5)
Current Store : [0x80000734] : sw a7, 388(a5) -- Store: [0x80003a88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x30c11b and fs2 == 1 and fe2 == 0x81 and fm2 == 0x673027 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1f9f7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000748]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsw fa3, 392(a5)
Current Store : [0x80000754] : sw a7, 396(a5) -- Store: [0x80003a90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x55e8d8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3c7042 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1d74cc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000768]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:fsw fa3, 400(a5)
Current Store : [0x80000774] : sw a7, 404(a5) -- Store: [0x80003a98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf4 and fm1 == 0x01e1e1 and fs2 == 1 and fe2 == 0x88 and fm2 == 0x196885 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1baa0e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000788]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000078c]:csrrs a7, fflags, zero
	-[0x80000790]:fsw fa3, 408(a5)
Current Store : [0x80000794] : sw a7, 412(a5) -- Store: [0x80003aa0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x36aa81 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x730786 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2d6937 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsw fa3, 416(a5)
Current Store : [0x800007b4] : sw a7, 420(a5) -- Store: [0x80003aa8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6aedca and fs2 == 1 and fe2 == 0x7e and fm2 == 0x76f305 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x629f84 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsw fa3, 424(a5)
Current Store : [0x800007d4] : sw a7, 428(a5) -- Store: [0x80003ab0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x32afd0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x513864 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1208e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800007ec]:csrrs a7, fflags, zero
	-[0x800007f0]:fsw fa3, 432(a5)
Current Store : [0x800007f4] : sw a7, 436(a5) -- Store: [0x80003ab8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x148024 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x3cd5fe and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x5b1479 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000808]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa3, 440(a5)
Current Store : [0x80000814] : sw a7, 444(a5) -- Store: [0x80003ac0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x73b9b6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x12733e and fs3 == 0 and fe3 == 0xfc and fm3 == 0x0b6da2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000828]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:fsw fa3, 448(a5)
Current Store : [0x80000834] : sw a7, 452(a5) -- Store: [0x80003ac8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2653cb and fs2 == 1 and fe2 == 0x80 and fm2 == 0x1dd609 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x4d18e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000848]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000084c]:csrrs a7, fflags, zero
	-[0x80000850]:fsw fa3, 456(a5)
Current Store : [0x80000854] : sw a7, 460(a5) -- Store: [0x80003ad0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3516bd and fs2 == 1 and fe2 == 0x7d and fm2 == 0x75a1a3 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x2dc11a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000868]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsw fa3, 464(a5)
Current Store : [0x80000874] : sw a7, 468(a5) -- Store: [0x80003ad8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x724091 and fs2 == 1 and fe2 == 0x7b and fm2 == 0x07e5ab and fs3 == 0 and fe3 == 0xfa and fm3 == 0x009962 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000888]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:fsw fa3, 472(a5)
Current Store : [0x80000894] : sw a7, 476(a5) -- Store: [0x80003ae0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2838a7 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x486d6d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03b42b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsw fa3, 480(a5)
Current Store : [0x800008b4] : sw a7, 484(a5) -- Store: [0x80003ae8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x295ec9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3caab6 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x79a51a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsw fa3, 488(a5)
Current Store : [0x800008d4] : sw a7, 492(a5) -- Store: [0x80003af0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x29b5ac and fs2 == 1 and fe2 == 0x81 and fm2 == 0x3962d8 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x75cba0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa3, 496(a5)
Current Store : [0x800008f4] : sw a7, 500(a5) -- Store: [0x80003af8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x748e89 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x10cab1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0a51cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000908]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000090c]:csrrs a7, fflags, zero
	-[0x80000910]:fsw fa3, 504(a5)
Current Store : [0x80000914] : sw a7, 508(a5) -- Store: [0x80003b00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f83d9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1efb14 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x14be49 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000928]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsw fa3, 512(a5)
Current Store : [0x80000934] : sw a7, 516(a5) -- Store: [0x80003b08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7f92d6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x21da8e and fs3 == 0 and fe3 == 0xfd and fm3 == 0x219589 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000948]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:fsw fa3, 520(a5)
Current Store : [0x80000954] : sw a7, 524(a5) -- Store: [0x80003b10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x15d4d3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x3e8bad and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5f0b6a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000968]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000096c]:csrrs a7, fflags, zero
	-[0x80000970]:fsw fa3, 528(a5)
Current Store : [0x80000974] : sw a7, 532(a5) -- Store: [0x80003b18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c3a54 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x70e95d and fs3 == 0 and fe3 == 0xfc and fm3 == 0x03f683 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000988]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsw fa3, 536(a5)
Current Store : [0x80000994] : sw a7, 540(a5) -- Store: [0x80003b20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x04c0f2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x053b56 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0a2e07 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:fsw fa3, 544(a5)
Current Store : [0x800009b4] : sw a7, 548(a5) -- Store: [0x80003b28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x33fa2e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0255a1 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x37427e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa3, 552(a5)
Current Store : [0x800009d4] : sw a7, 556(a5) -- Store: [0x80003b30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x7f3dba and fs2 == 1 and fe2 == 0x81 and fm2 == 0x211bd1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x20a18e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsw fa3, 560(a5)
Current Store : [0x800009f4] : sw a7, 564(a5) -- Store: [0x80003b38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x46f72d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x02c459 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4b443e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:fsw fa3, 568(a5)
Current Store : [0x80000a14] : sw a7, 572(a5) -- Store: [0x80003b40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b6a5b and fs2 == 1 and fe2 == 0x7e and fm2 == 0x7adbb0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x37a6b2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a2c]:csrrs a7, fflags, zero
	-[0x80000a30]:fsw fa3, 576(a5)
Current Store : [0x80000a34] : sw a7, 580(a5) -- Store: [0x80003b48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2705e0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4a90d7 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x042923 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:fsw fa3, 584(a5)
Current Store : [0x80000a54] : sw a7, 588(a5) -- Store: [0x80003b50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x066ad6 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x1a1b4e and fs3 == 0 and fe3 == 0xfe and fm3 == 0x21d537 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsw fa3, 592(a5)
Current Store : [0x80000a74] : sw a7, 596(a5) -- Store: [0x80003b58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0da9b0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0fad14 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1f0320 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000a8c]:csrrs a7, fflags, zero
	-[0x80000a90]:fsw fa3, 600(a5)
Current Store : [0x80000a94] : sw a7, 604(a5) -- Store: [0x80003b60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x05966f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x6cf9b4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7751f9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa3, 608(a5)
Current Store : [0x80000ab4] : sw a7, 612(a5) -- Store: [0x80003b68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x789da3 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1db158 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1924e8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:fsw fa3, 616(a5)
Current Store : [0x80000ad4] : sw a7, 620(a5) -- Store: [0x80003b70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x31c4c0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x61ceaa and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ccd6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000aec]:csrrs a7, fflags, zero
	-[0x80000af0]:fsw fa3, 624(a5)
Current Store : [0x80000af4] : sw a7, 628(a5) -- Store: [0x80003b78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x40881b and fs2 == 1 and fe2 == 0x80 and fm2 == 0x2b773c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x00f497 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:fsw fa3, 632(a5)
Current Store : [0x80000b14] : sw a7, 636(a5) -- Store: [0x80003b80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x0e4d98 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x3ceebe and fs3 == 0 and fe3 == 0xfd and fm3 == 0x520b63 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:fsw fa3, 640(a5)
Current Store : [0x80000b34] : sw a7, 644(a5) -- Store: [0x80003b88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x797b55 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x64cca5 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5ef947 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsw fa3, 648(a5)
Current Store : [0x80000b54] : sw a7, 652(a5) -- Store: [0x80003b90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x61ada9 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x4defe6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x358b8d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b6c]:csrrs a7, fflags, zero
	-[0x80000b70]:fsw fa3, 656(a5)
Current Store : [0x80000b74] : sw a7, 660(a5) -- Store: [0x80003b98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x13caa0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x65c581 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x04a647 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa3, 664(a5)
Current Store : [0x80000b94] : sw a7, 668(a5) -- Store: [0x80003ba0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x57b1c2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x5d5a9b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3a80cc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ba8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bac]:csrrs a7, fflags, zero
	-[0x80000bb0]:fsw fa3, 672(a5)
Current Store : [0x80000bb4] : sw a7, 676(a5) -- Store: [0x80003ba8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0b8ecb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x781ce6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x074216 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bc8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bcc]:csrrs a7, fflags, zero
	-[0x80000bd0]:fsw fa3, 680(a5)
Current Store : [0x80000bd4] : sw a7, 684(a5) -- Store: [0x80003bb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7efbaa and fs2 == 1 and fe2 == 0x7f and fm2 == 0x126eac and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11d9c2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000be8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000bec]:csrrs a7, fflags, zero
	-[0x80000bf0]:fsw fa3, 688(a5)
Current Store : [0x80000bf4] : sw a7, 692(a5) -- Store: [0x80003bb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x14c7ca and fs2 == 1 and fe2 == 0x7e and fm2 == 0x65789e and fs3 == 0 and fe3 == 0xfe and fm3 == 0x055cd1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c0c]:csrrs a7, fflags, zero
	-[0x80000c10]:fsw fa3, 696(a5)
Current Store : [0x80000c14] : sw a7, 700(a5) -- Store: [0x80003bc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0abfd0 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x0b3975 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x16ea94 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsw fa3, 704(a5)
Current Store : [0x80000c34] : sw a7, 708(a5) -- Store: [0x80003bc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1625cb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0df910 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2689cb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c4c]:csrrs a7, fflags, zero
	-[0x80000c50]:fsw fa3, 712(a5)
Current Store : [0x80000c54] : sw a7, 716(a5) -- Store: [0x80003bd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x08ea41 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x438442 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x512259 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c6c]:csrrs a7, fflags, zero
	-[0x80000c70]:fsw fa3, 720(a5)
Current Store : [0x80000c74] : sw a7, 724(a5) -- Store: [0x80003bd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3fbd64 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x2d8949 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x01f9d0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000c8c]:csrrs a7, fflags, zero
	-[0x80000c90]:fsw fa3, 728(a5)
Current Store : [0x80000c94] : sw a7, 732(a5) -- Store: [0x80003be0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3848de and fs2 == 1 and fe2 == 0x7e and fm2 == 0x273904 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x70c129 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ca8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000cac]:csrrs a7, fflags, zero
	-[0x80000cb0]:fsw fa3, 736(a5)
Current Store : [0x80000cb4] : sw a7, 740(a5) -- Store: [0x80003be8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x10c4ae and fs2 == 1 and fe2 == 0x80 and fm2 == 0x27ca24 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3dc53a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cc8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000ccc]:csrrs a7, fflags, zero
	-[0x80000cd0]:fsw fa3, 744(a5)
Current Store : [0x80000cd4] : sw a7, 748(a5) -- Store: [0x80003bf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x1b0e1c and fs2 == 1 and fe2 == 0x7d and fm2 == 0x39c4ac and fs3 == 0 and fe3 == 0xfb and fm3 == 0x6108a4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ce8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000cec]:csrrs a7, fflags, zero
	-[0x80000cf0]:fsw fa3, 752(a5)
Current Store : [0x80000cf4] : sw a7, 756(a5) -- Store: [0x80003bf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x37f3c9 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1b85b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5f815f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsw fa3, 760(a5)
Current Store : [0x80000d14] : sw a7, 764(a5) -- Store: [0x80003c00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3b73fa and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3f4883 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0c10a1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d2c]:csrrs a7, fflags, zero
	-[0x80000d30]:fsw fa3, 768(a5)
Current Store : [0x80000d34] : sw a7, 772(a5) -- Store: [0x80003c08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b64b8 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6debb7 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2e28cb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsw fa3, 776(a5)
Current Store : [0x80000d54] : sw a7, 780(a5) -- Store: [0x80003c10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fdd96 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x5a545b and fs3 == 0 and fe3 == 0xfe and fm3 == 0x23a1eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d6c]:csrrs a7, fflags, zero
	-[0x80000d70]:fsw fa3, 784(a5)
Current Store : [0x80000d74] : sw a7, 788(a5) -- Store: [0x80003c18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x626a93 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x44bf77 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2e02f0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000d8c]:csrrs a7, fflags, zero
	-[0x80000d90]:fsw fa3, 792(a5)
Current Store : [0x80000d94] : sw a7, 796(a5) -- Store: [0x80003c20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x653da7 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x351f02 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x22305b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000da8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dac]:csrrs a7, fflags, zero
	-[0x80000db0]:fsw fa3, 800(a5)
Current Store : [0x80000db4] : sw a7, 804(a5) -- Store: [0x80003c28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x23c8dc and fs2 == 1 and fe2 == 0x81 and fm2 == 0x02691f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x26de83 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dc8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dcc]:csrrs a7, fflags, zero
	-[0x80000dd0]:fsw fa3, 808(a5)
Current Store : [0x80000dd4] : sw a7, 812(a5) -- Store: [0x80003c30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7212c5 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x20008a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x174c3e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsw fa3, 816(a5)
Current Store : [0x80000df4] : sw a7, 820(a5) -- Store: [0x80003c38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c7ac4 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x262942 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x365c7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e0c]:csrrs a7, fflags, zero
	-[0x80000e10]:fsw fa3, 824(a5)
Current Store : [0x80000e14] : sw a7, 828(a5) -- Store: [0x80003c40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x20fa79 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x1f78b2 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x488eed and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa3, 832(a5)
Current Store : [0x80000e34] : sw a7, 836(a5) -- Store: [0x80003c48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x490a06 and fs2 == 1 and fe2 == 0x82 and fm2 == 0x7157ba and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3d8755 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e4c]:csrrs a7, fflags, zero
	-[0x80000e50]:fsw fa3, 840(a5)
Current Store : [0x80000e54] : sw a7, 844(a5) -- Store: [0x80003c50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2b21f2 and fs2 == 1 and fe2 == 0x83 and fm2 == 0x038e08 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2fe2a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e6c]:csrrs a7, fflags, zero
	-[0x80000e70]:fsw fa3, 848(a5)
Current Store : [0x80000e74] : sw a7, 852(a5) -- Store: [0x80003c58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ef9b3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6cf335 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x21f46d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000e8c]:csrrs a7, fflags, zero
	-[0x80000e90]:fsw fa3, 856(a5)
Current Store : [0x80000e94] : sw a7, 860(a5) -- Store: [0x80003c60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6414a9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3211a1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ea613 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ea8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000eac]:csrrs a7, fflags, zero
	-[0x80000eb0]:fsw fa3, 864(a5)
Current Store : [0x80000eb4] : sw a7, 868(a5) -- Store: [0x80003c68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x1bdc6a and fs2 == 1 and fe2 == 0x7e and fm2 == 0x15b123 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x364645 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsw fa3, 872(a5)
Current Store : [0x80000ed4] : sw a7, 876(a5) -- Store: [0x80003c70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3d723b and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0a6ccf and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4ce034 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ee8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000eec]:csrrs a7, fflags, zero
	-[0x80000ef0]:fsw fa3, 880(a5)
Current Store : [0x80000ef4] : sw a7, 884(a5) -- Store: [0x80003c78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x781bf7 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x19e553 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x1526f9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f08]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f0c]:csrrs a7, fflags, zero
	-[0x80000f10]:fsw fa3, 888(a5)
Current Store : [0x80000f14] : sw a7, 892(a5) -- Store: [0x80003c80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x04524e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x391f1a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3f5f1d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f28]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f2c]:csrrs a7, fflags, zero
	-[0x80000f30]:fsw fa3, 896(a5)
Current Store : [0x80000f34] : sw a7, 900(a5) -- Store: [0x80003c88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x703804 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x73aee7 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x64a94b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f48]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f4c]:csrrs a7, fflags, zero
	-[0x80000f50]:fsw fa3, 904(a5)
Current Store : [0x80000f54] : sw a7, 908(a5) -- Store: [0x80003c90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x734d68 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0f6a98 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x084d8c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f68]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f6c]:csrrs a7, fflags, zero
	-[0x80000f70]:fsw fa3, 912(a5)
Current Store : [0x80000f74] : sw a7, 916(a5) -- Store: [0x80003c98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5155d6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x12ba16 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x6ff63d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f88]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000f8c]:csrrs a7, fflags, zero
	-[0x80000f90]:fsw fa3, 920(a5)
Current Store : [0x80000f94] : sw a7, 924(a5) -- Store: [0x80003ca0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x028b61 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x2dfcc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x317228 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsw fa3, 928(a5)
Current Store : [0x80000fb4] : sw a7, 932(a5) -- Store: [0x80003ca8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6a8ec9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x406305 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3045d1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fc8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fcc]:csrrs a7, fflags, zero
	-[0x80000fd0]:fsw fa3, 936(a5)
Current Store : [0x80000fd4] : sw a7, 940(a5) -- Store: [0x80003cb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x0c0d61 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x6f2b41 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x02d828 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x80000fec]:csrrs a7, fflags, zero
	-[0x80000ff0]:fsw fa3, 944(a5)
Current Store : [0x80000ff4] : sw a7, 948(a5) -- Store: [0x80003cb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x61107d and fs2 == 1 and fe2 == 0x83 and fm2 == 0x4e8dd6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3597f8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001008]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:fsw fa3, 952(a5)
Current Store : [0x80001014] : sw a7, 956(a5) -- Store: [0x80003cc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x191148 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0a0793 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x250fb1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001028]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000102c]:csrrs a7, fflags, zero
	-[0x80001030]:fsw fa3, 960(a5)
Current Store : [0x80001034] : sw a7, 964(a5) -- Store: [0x80003cc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x25f81d and fs2 == 1 and fe2 == 0x81 and fm2 == 0x5da39a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0fb142 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001048]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000104c]:csrrs a7, fflags, zero
	-[0x80001050]:fsw fa3, 968(a5)
Current Store : [0x80001054] : sw a7, 972(a5) -- Store: [0x80003cd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x497c49 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3d34f5 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x14ea70 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001068]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:fsw fa3, 976(a5)
Current Store : [0x80001074] : sw a7, 980(a5) -- Store: [0x80003cd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x043e1b and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03dea5 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x083d97 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001088]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsw fa3, 984(a5)
Current Store : [0x80001094] : sw a7, 988(a5) -- Store: [0x80003ce0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x327e6a and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01b4a9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34df56 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010ac]:csrrs a7, fflags, zero
	-[0x800010b0]:fsw fa3, 992(a5)
Current Store : [0x800010b4] : sw a7, 996(a5) -- Store: [0x80003ce8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x16edbb and fs2 == 1 and fe2 == 0x80 and fm2 == 0x761db3 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1119f4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa3, 1000(a5)
Current Store : [0x800010d4] : sw a7, 1004(a5) -- Store: [0x80003cf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x0af237 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x28f25d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x376500 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800010ec]:csrrs a7, fflags, zero
	-[0x800010f0]:fsw fa3, 1008(a5)
Current Store : [0x800010f4] : sw a7, 1012(a5) -- Store: [0x80003cf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf7 and fm1 == 0x5f1c44 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x24b4d2 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x0f8bb3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001108]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000110c]:csrrs a7, fflags, zero
	-[0x80001110]:fsw fa3, 1016(a5)
Current Store : [0x80001114] : sw a7, 1020(a5) -- Store: [0x80003d00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0c9d65 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x4a38ba and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5e26b6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001128]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:fsw fa3, 1024(a5)
Current Store : [0x80001134] : sw a7, 1028(a5) -- Store: [0x80003d08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x5e038c and fs2 == 1 and fe2 == 0x84 and fm2 == 0x2e660b and fs3 == 0 and fe3 == 0xfe and fm3 == 0x173ee9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001148]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000114c]:csrrs a7, fflags, zero
	-[0x80001150]:fsw fa3, 1032(a5)
Current Store : [0x80001154] : sw a7, 1036(a5) -- Store: [0x80003d10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ff5ec and fs2 == 1 and fe2 == 0x7f and fm2 == 0x103b80 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x223795 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001168]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsw fa3, 1040(a5)
Current Store : [0x80001174] : sw a7, 1044(a5) -- Store: [0x80003d18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b3817 and fs2 == 1 and fe2 == 0x79 and fm2 == 0x401917 and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x0c7c6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001188]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:fsw fa3, 1048(a5)
Current Store : [0x80001194] : sw a7, 1052(a5) -- Store: [0x80003d20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x074be5 and fs2 == 1 and fe2 == 0x7b and fm2 == 0x25a9d6 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x2f1b5a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011ac]:csrrs a7, fflags, zero
	-[0x800011b0]:fsw fa3, 1056(a5)
Current Store : [0x800011b4] : sw a7, 1060(a5) -- Store: [0x80003d28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x728772 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x430d36 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x38c9b0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsw fa3, 1064(a5)
Current Store : [0x800011d4] : sw a7, 1068(a5) -- Store: [0x80003d30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d27cc and fs2 == 1 and fe2 == 0x7e and fm2 == 0x165ba8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x389b2c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:fsw fa3, 1072(a5)
Current Store : [0x800011f4] : sw a7, 1076(a5) -- Store: [0x80003d38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x01c09c and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6ad52b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x6e0c34 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001208]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000120c]:csrrs a7, fflags, zero
	-[0x80001210]:fsw fa3, 1080(a5)
Current Store : [0x80001214] : sw a7, 1084(a5) -- Store: [0x80003d40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf6 and fm1 == 0x26497d and fs2 == 1 and fe2 == 0x86 and fm2 == 0x486327 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0229d2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001228]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000122c]:csrrs a7, fflags, zero
	-[0x80001230]:fsw fa3, 1088(a5)
Current Store : [0x80001234] : sw a7, 1092(a5) -- Store: [0x80003d48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x67719b and fs2 == 1 and fe2 == 0x80 and fm2 == 0x00154c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x67981f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001248]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:fsw fa3, 1096(a5)
Current Store : [0x80001254] : sw a7, 1100(a5) -- Store: [0x80003d50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x5fcc51 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x64e70b and fs3 == 0 and fe3 == 0xfa and fm3 == 0x481bf3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001268]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000126c]:csrrs a7, fflags, zero
	-[0x80001270]:fsw fa3, 1104(a5)
Current Store : [0x80001274] : sw a7, 1108(a5) -- Store: [0x80003d58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0ab269 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6b3fb1 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x7ee893 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001288]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000128c]:csrrs a7, fflags, zero
	-[0x80001290]:fsw fa3, 1112(a5)
Current Store : [0x80001294] : sw a7, 1116(a5) -- Store: [0x80003d60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b9930 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x2b2afd and fs3 == 0 and fe3 == 0xfc and fm3 == 0x657849 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsw fa3, 1120(a5)
Current Store : [0x800012b4] : sw a7, 1124(a5) -- Store: [0x80003d68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x049a6e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x332355 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x399491 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012cc]:csrrs a7, fflags, zero
	-[0x800012d0]:fsw fa3, 1128(a5)
Current Store : [0x800012d4] : sw a7, 1132(a5) -- Store: [0x80003d70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1d454a and fs2 == 1 and fe2 == 0x81 and fm2 == 0x130ace and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34aad9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800012ec]:csrrs a7, fflags, zero
	-[0x800012f0]:fsw fa3, 1136(a5)
Current Store : [0x800012f4] : sw a7, 1140(a5) -- Store: [0x80003d78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4f0fd2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x20e6fd and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0224b8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001308]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:fsw fa3, 1144(a5)
Current Store : [0x80001314] : sw a7, 1148(a5) -- Store: [0x80003d80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x5e2fb5 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x54b2a7 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x389a90 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001328]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000132c]:csrrs a7, fflags, zero
	-[0x80001330]:fsw fa3, 1152(a5)
Current Store : [0x80001334] : sw a7, 1156(a5) -- Store: [0x80003d88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3c9ff5 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x635528 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x278095 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001348]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000134c]:csrrs a7, fflags, zero
	-[0x80001350]:fsw fa3, 1160(a5)
Current Store : [0x80001354] : sw a7, 1164(a5) -- Store: [0x80003d90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x20dccc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03ae89 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x257d51 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001368]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:fsw fa3, 1168(a5)
Current Store : [0x80001374] : sw a7, 1172(a5) -- Store: [0x80003d98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf5 and fm1 == 0x2e79de and fs2 == 1 and fe2 == 0x87 and fm2 == 0x757c34 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x274f48 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001388]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsw fa3, 1176(a5)
Current Store : [0x80001394] : sw a7, 1180(a5) -- Store: [0x80003da0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6d1a0c and fs2 == 1 and fe2 == 0x7c and fm2 == 0x521f16 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x429c29 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800013ac]:csrrs a7, fflags, zero
	-[0x800013b0]:fsw fa3, 1184(a5)
Current Store : [0x800013b4] : sw a7, 1188(a5) -- Store: [0x80003da8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x190d5e and fs2 == 1 and fe2 == 0x7c and fm2 == 0x32420c and fs3 == 0 and fe3 == 0xfb and fm3 == 0x552591 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800013cc]:csrrs a7, fflags, zero
	-[0x800013d0]:fsw fa3, 1192(a5)
Current Store : [0x800013d4] : sw a7, 1196(a5) -- Store: [0x80003db0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1304ef and fs2 == 1 and fe2 == 0x7c and fm2 == 0x557010 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x7526ed and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800013ec]:csrrs a7, fflags, zero
	-[0x800013f0]:fsw fa3, 1200(a5)
Current Store : [0x800013f4] : sw a7, 1204(a5) -- Store: [0x80003db8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x56a477 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x51d69a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2ff034 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001408]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000140c]:csrrs a7, fflags, zero
	-[0x80001410]:fsw fa3, 1208(a5)
Current Store : [0x80001414] : sw a7, 1212(a5) -- Store: [0x80003dc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x2125ab and fs2 == 1 and fe2 == 0x83 and fm2 == 0x0435fb and fs3 == 0 and fe3 == 0xfc and fm3 == 0x2672cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001428]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000142c]:csrrs a7, fflags, zero
	-[0x80001430]:fsw fa3, 1216(a5)
Current Store : [0x80001434] : sw a7, 1220(a5) -- Store: [0x80003dc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x50cddd and fs2 == 1 and fe2 == 0x7f and fm2 == 0x071ab8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5c64b6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001448]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000144c]:csrrs a7, fflags, zero
	-[0x80001450]:fsw fa3, 1224(a5)
Current Store : [0x80001454] : sw a7, 1228(a5) -- Store: [0x80003dd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x341f5c and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0691ee and fs3 == 0 and fe3 == 0xfc and fm3 == 0x3d5e30 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001468]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000146c]:csrrs a7, fflags, zero
	-[0x80001470]:fsw fa3, 1232(a5)
Current Store : [0x80001474] : sw a7, 1236(a5) -- Store: [0x80003dd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cf90f and fs2 == 1 and fe2 == 0x7c and fm2 == 0x00acab and fs3 == 0 and fe3 == 0xfb and fm3 == 0x2de265 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001488]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000148c]:csrrs a7, fflags, zero
	-[0x80001490]:fsw fa3, 1240(a5)
Current Store : [0x80001494] : sw a7, 1244(a5) -- Store: [0x80003de0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x351fde and fs2 == 1 and fe2 == 0x7e and fm2 == 0x301cf4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7934ca and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800014ac]:csrrs a7, fflags, zero
	-[0x800014b0]:fsw fa3, 1248(a5)
Current Store : [0x800014b4] : sw a7, 1252(a5) -- Store: [0x80003de8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x323547 and fs2 == 1 and fe2 == 0x83 and fm2 == 0x006caa and fs3 == 0 and fe3 == 0xfd and fm3 == 0x32cc91 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800014cc]:csrrs a7, fflags, zero
	-[0x800014d0]:fsw fa3, 1256(a5)
Current Store : [0x800014d4] : sw a7, 1260(a5) -- Store: [0x80003df0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0e0f7e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1f8f25 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x31161d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800014ec]:csrrs a7, fflags, zero
	-[0x800014f0]:fsw fa3, 1264(a5)
Current Store : [0x800014f4] : sw a7, 1268(a5) -- Store: [0x80003df8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x18ad5a and fs2 == 1 and fe2 == 0x7f and fm2 == 0x17b417 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34f350 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001508]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000150c]:csrrs a7, fflags, zero
	-[0x80001510]:fsw fa3, 1272(a5)
Current Store : [0x80001514] : sw a7, 1276(a5) -- Store: [0x80003e00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f31b9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x186e02 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0e6c50 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001528]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000152c]:csrrs a7, fflags, zero
	-[0x80001530]:fsw fa3, 1280(a5)
Current Store : [0x80001534] : sw a7, 1284(a5) -- Store: [0x80003e08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x390aa3 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x722d10 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2f0ca1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001548]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsw fa3, 1288(a5)
Current Store : [0x80001554] : sw a7, 1292(a5) -- Store: [0x80003e10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x07f885 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x648bdf and fs3 == 0 and fe3 == 0xfd and fm3 == 0x72c742 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001568]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000156c]:csrrs a7, fflags, zero
	-[0x80001570]:fsw fa3, 1296(a5)
Current Store : [0x80001574] : sw a7, 1300(a5) -- Store: [0x80003e18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x243fb8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x2c433a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5d0be3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001588]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000158c]:csrrs a7, fflags, zero
	-[0x80001590]:fsw fa3, 1304(a5)
Current Store : [0x80001594] : sw a7, 1308(a5) -- Store: [0x80003e20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x32eb6c and fs2 == 1 and fe2 == 0x84 and fm2 == 0x55d574 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x157310 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015a8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800015ac]:csrrs a7, fflags, zero
	-[0x800015b0]:fsw fa3, 1312(a5)
Current Store : [0x800015b4] : sw a7, 1316(a5) -- Store: [0x80003e28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ef4a6 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x00c03c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2ffb67 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015c8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800015cc]:csrrs a7, fflags, zero
	-[0x800015d0]:fsw fa3, 1320(a5)
Current Store : [0x800015d4] : sw a7, 1324(a5) -- Store: [0x80003e30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5fd1b9 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x5dbbf1 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x41dc5e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015e8]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x800015ec]:csrrs a7, fflags, zero
	-[0x800015f0]:fsw fa3, 1328(a5)
Current Store : [0x800015f4] : sw a7, 1332(a5) -- Store: [0x80003e38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x324e28 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x470cb8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0aa39d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001608]:fmadd.s fa3, fa0, fa1, fa2, dyn
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:fsw fa3, 1336(a5)
Current Store : [0x80001614] : sw a7, 1340(a5) -- Store: [0x80003e40]:0x00000005





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

|s.no|        signature         |                                                                                                                                                            coverpoints                                                                                                                                                             |                                                            code                                                             |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003904]<br>0x6DF56FF7|- opcode : fmadd.s<br> - rs1 : f28<br> - rs2 : f0<br> - rs3 : f28<br> - rd : f22<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                     |[0x80000128]:fmadd.s fs6, ft8, ft0, ft8, dyn<br> [0x8000012c]:csrrs a7, fflags, zero<br> [0x80000130]:fsw fs6, 0(a5)<br>     |
|   2|[0x8000390c]<br>0xFBB6FAB7|- rs1 : f30<br> - rs2 : f31<br> - rs3 : f20<br> - rd : f31<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2390a7 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x6c2877 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x16e335 and rm_val == 3  #nosat<br>                              |[0x80000148]:fmadd.s ft11, ft10, ft11, fs4, dyn<br> [0x8000014c]:csrrs a7, fflags, zero<br> [0x80000150]:fsw ft11, 8(a5)<br> |
|   3|[0x80003914]<br>0xB7FBB6FA|- rs1 : f10<br> - rs2 : f3<br> - rs3 : f7<br> - rd : f7<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x14058d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x021f69 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1679f6 and rm_val == 3  #nosat<br>                                 |[0x80000168]:fmadd.s ft7, fa0, ft3, ft7, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:fsw ft7, 16(a5)<br>    |
|   4|[0x8000391c]<br>0xBB6FAB7F|- rs1 : f9<br> - rs2 : f9<br> - rs3 : f4<br> - rd : f27<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                              |[0x80000188]:fmadd.s fs11, fs1, fs1, ft4, dyn<br> [0x8000018c]:csrrs a7, fflags, zero<br> [0x80000190]:fsw fs11, 24(a5)<br>  |
|   5|[0x80003924]<br>0x80003904|- rs1 : f15<br> - rs2 : f15<br> - rs3 : f9<br> - rd : f15<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                         |[0x800001a8]:fmadd.s fa5, fa5, fa5, fs1, dyn<br> [0x800001ac]:csrrs a7, fflags, zero<br> [0x800001b0]:fsw fa5, 32(a5)<br>    |
|   6|[0x8000392c]<br>0x80003000|- rs1 : f14<br> - rs2 : f14<br> - rs3 : f14<br> - rd : f6<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                         |[0x800001c8]:fmadd.s ft6, fa4, fa4, fa4, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:fsw ft6, 40(a5)<br>    |
|   7|[0x80003934]<br>0xDB7D5BFD|- rs1 : f24<br> - rs2 : f24<br> - rs3 : f24<br> - rd : f24<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                        |[0x800001e8]:fmadd.s fs8, fs8, fs8, fs8, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fs8, 48(a5)<br>    |
|   8|[0x8000393c]<br>0xDBEADFEE|- rs1 : f21<br> - rs2 : f19<br> - rs3 : f26<br> - rd : f21<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2a7c0d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1d4c63 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5181e6 and rm_val == 3  #nosat<br>                              |[0x80000208]:fmadd.s fs5, fs5, fs3, fs10, dyn<br> [0x8000020c]:csrrs a7, fflags, zero<br> [0x80000210]:fsw fs5, 56(a5)<br>   |
|   9|[0x80003944]<br>0xEDBEADFE|- rs1 : f31<br> - rs2 : f25<br> - rs3 : f25<br> - rd : f25<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                        |[0x80000228]:fmadd.s fs9, ft11, fs9, fs9, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fs9, 64(a5)<br>   |
|  10|[0x8000394c]<br>0x6FAB7FBB|- rs1 : f19<br> - rs2 : f2<br> - rs3 : f19<br> - rd : f19<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                         |[0x80000248]:fmadd.s fs3, fs3, ft2, fs3, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:fsw fs3, 72(a5)<br>    |
|  11|[0x80003954]<br>0xDF56FF76|- rs1 : f29<br> - rs2 : f30<br> - rs3 : f5<br> - rd : f18<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0f0b15 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4b0294 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x62de76 and rm_val == 3  #nosat<br> |[0x80000268]:fmadd.s fs2, ft9, ft10, ft5, dyn<br> [0x8000026c]:csrrs a7, fflags, zero<br> [0x80000270]:fsw fs2, 80(a5)<br>   |
|  12|[0x8000395c]<br>0x80003004|- rs1 : f13<br> - rs2 : f6<br> - rs3 : f6<br> - rd : f16<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                             |[0x80000288]:fmadd.s fa6, fa3, ft6, ft6, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:fsw fa6, 88(a5)<br>    |
|  13|[0x80003964]<br>0x00006000|- rs1 : f11<br> - rs2 : f21<br> - rs3 : f0<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x63f59c and fs2 == 1 and fe2 == 0x7f and fm2 == 0x647f4a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4b7817 and rm_val == 3  #nosat<br>                                                                                           |[0x800002a8]:fmadd.s ft2, fa1, fs5, ft0, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsw ft2, 96(a5)<br>    |
|  14|[0x8000396c]<br>0xEEDBEADF|- rs1 : f27<br> - rs2 : f10<br> - rs3 : f15<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x4cdcfa and fs2 == 1 and fe2 == 0x7e and fm2 == 0x2149e2 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x011219 and rm_val == 3  #nosat<br>                                                                                         |[0x800002c8]:fmadd.s ft9, fs11, fa0, fa5, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw ft9, 104(a5)<br>  |
|  15|[0x80003974]<br>0x00000000|- rs1 : f2<br> - rs2 : f28<br> - rs3 : f31<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x11ff1d and fs2 == 1 and fe2 == 0x7d and fm2 == 0x4a76b7 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x66ee02 and rm_val == 3  #nosat<br>                                                                                           |[0x800002e8]:fmadd.s ft3, ft2, ft8, ft11, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:fsw ft3, 112(a5)<br>  |
|  16|[0x8000397c]<br>0xB6FAB7FB|- rs1 : f1<br> - rs2 : f5<br> - rs3 : f17<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ebf31 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x22c52b and fs3 == 0 and fe3 == 0xfb and fm3 == 0x3585de and rm_val == 3  #nosat<br>                                                                                           |[0x80000308]:fmadd.s fs7, ft1, ft5, fa7, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw fs7, 120(a5)<br>   |
|  17|[0x80003984]<br>0xDDB7D5BF|- rs1 : f26<br> - rs2 : f27<br> - rs3 : f23<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x77a1f3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6fb705 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x67e13b and rm_val == 3  #nosat<br>                                                                                         |[0x80000328]:fmadd.s ft8, fs10, fs11, fs7, dyn<br> [0x8000032c]:csrrs a7, fflags, zero<br> [0x80000330]:fsw ft8, 128(a5)<br> |
|  18|[0x8000398c]<br>0x800000F8|- rs1 : f7<br> - rs2 : f13<br> - rs3 : f3<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x697c86 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x47d51b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x36422a and rm_val == 3  #nosat<br>                                                                                            |[0x80000348]:fmadd.s ft5, ft7, fa3, ft3, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:fsw ft5, 136(a5)<br>   |
|  19|[0x80003994]<br>0x00000005|- rs1 : f20<br> - rs2 : f12<br> - rs3 : f16<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ddabc and fs2 == 1 and fe2 == 0x7d and fm2 == 0x17cf0e and fs3 == 0 and fe3 == 0xfc and fm3 == 0x612b27 and rm_val == 3  #nosat<br>                                                                                         |[0x80000368]:fmadd.s fa7, fs4, fa2, fa6, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:fsw fa7, 144(a5)<br>   |
|  20|[0x8000399c]<br>0xFEEDBEAD|- rs1 : f18<br> - rs2 : f23<br> - rs3 : f12<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x4d95b3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x140204 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x6db854 and rm_val == 3  #nosat<br>                                                                                          |[0x80000388]:fmadd.s ft1, fs2, fs7, fa2, dyn<br> [0x8000038c]:csrrs a7, fflags, zero<br> [0x80000390]:fsw ft1, 152(a5)<br>   |
|  21|[0x800039a4]<br>0xF76DF56F|- rs1 : f5<br> - rs2 : f7<br> - rs3 : f29<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x16204d and fs2 == 1 and fe2 == 0x7d and fm2 == 0x20dc4b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x3caac1 and rm_val == 3  #nosat<br>                                                                                           |[0x800003a8]:fmadd.s ft10, ft5, ft7, ft9, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw ft10, 160(a5)<br> |
|  22|[0x800039ac]<br>0xADFEEDBE|- rs1 : f23<br> - rs2 : f8<br> - rs3 : f1<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x5244d5 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x5a9f6c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x33918f and rm_val == 3  #nosat<br>                                                                                            |[0x800003c8]:fmadd.s fs1, fs7, fs0, ft1, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsw fs1, 168(a5)<br>   |
|  23|[0x800039b4]<br>0xD5BFDDB7|- rs1 : f0<br> - rs2 : f22<br> - rs3 : f21<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xf8 and fm1 == 0x223dfa and fs2 == 1 and fe2 == 0x84 and fm2 == 0x2157ca and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4c813b and rm_val == 3  #nosat<br>                                                                                          |[0x800003e8]:fmadd.s fa2, ft0, fs6, fs5, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsw fa2, 176(a5)<br>   |
|  24|[0x800039bc]<br>0x00000000|- rs1 : f3<br> - rs2 : f26<br> - rs3 : f30<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x16166d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x07627c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ebf21 and rm_val == 3  #nosat<br>                                                                                           |[0x80000408]:fmadd.s ft0, ft3, fs10, ft10, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:fsw ft0, 184(a5)<br> |
|  25|[0x800039c4]<br>0xAB7FBB6F|- rs1 : f8<br> - rs2 : f1<br> - rs3 : f10<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x2a4aa3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x293302 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x611a69 and rm_val == 3  #nosat<br>                                                                                           |[0x80000428]:fmadd.s fa1, fs0, ft1, fa0, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:fsw fa1, 192(a5)<br>   |
|  26|[0x800039cc]<br>0xBFDDB7D5|- rs1 : f22<br> - rs2 : f16<br> - rs3 : f2<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x3b3787 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x2337c4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x6eba47 and rm_val == 3  #nosat<br>                                                                                           |[0x80000448]:fmadd.s ft4, fs6, fa6, ft2, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsw ft4, 200(a5)<br>   |
|  27|[0x800039d4]<br>0xEADFEEDB|- rs1 : f16<br> - rs2 : f4<br> - rs3 : f18<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x5bf434 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x552827 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3724af and rm_val == 3  #nosat<br>                                                                                          |[0x80000468]:fmadd.s fa3, fa6, ft4, fs2, dyn<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:fsw fa3, 208(a5)<br>   |
|  28|[0x800039dc]<br>0x56FF76DF|- rs1 : f12<br> - rs2 : f29<br> - rs3 : f8<br> - rd : f10<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cfb28 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x7fccec and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3cd574 and rm_val == 3  #nosat<br>                                                                                          |[0x80000488]:fmadd.s fa0, fa2, ft9, fs0, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fa0, 216(a5)<br>   |
|  29|[0x800039e4]<br>0x76DF56FF|- rs1 : f6<br> - rs2 : f20<br> - rs3 : f22<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x1f8c7e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x44a44f and fs3 == 0 and fe3 == 0xfc and fm3 == 0x751bf1 and rm_val == 3  #nosat<br>                                                                                          |[0x800004a8]:fmadd.s fs10, ft6, fs4, fs6, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsw fs10, 224(a5)<br> |
|  30|[0x800039ec]<br>0x5BFDDB7D|- rs1 : f25<br> - rs2 : f18<br> - rs3 : f13<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3c5927 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x01847e and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3e94d0 and rm_val == 3  #nosat<br>                                                                                          |[0x800004c8]:fmadd.s fs0, fs9, fs2, fa3, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw fs0, 232(a5)<br>   |
|  31|[0x800039f4]<br>0xF56FF76D|- rs1 : f17<br> - rs2 : f11<br> - rs3 : f27<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x64ca80 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x5f46b8 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x478b9a and rm_val == 3  #nosat<br>                                                                                         |[0x800004e8]:fmadd.s fa4, fa7, fa1, fs11, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:fsw fa4, 240(a5)<br>  |
|  32|[0x800039fc]<br>0xB7D5BFDD|- rs1 : f4<br> - rs2 : f17<br> - rs3 : f11<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3889e8 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x73608d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2f7080 and rm_val == 3  #nosat<br>                                                                                          |[0x80000508]:fmadd.s fs4, ft4, fa7, fa1, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsw fs4, 248(a5)<br>   |
|  33|[0x80003a04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ab616 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x47f49a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x11d5f1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000528]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsw fa3, 256(a5)<br>   |
|  34|[0x80003a0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2dd370 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x24d96b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5fde2a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000548]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:fsw fa3, 264(a5)<br>   |
|  35|[0x80003a14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x105363 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1303f7 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x25c43d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000568]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa3, 272(a5)<br>   |
|  36|[0x80003a1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x71b611 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x353e03 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2b2047 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000588]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:fsw fa3, 280(a5)<br>   |
|  37|[0x80003a24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6c3979 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x6a3541 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x581dad and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800005a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsw fa3, 288(a5)<br>   |
|  38|[0x80003a2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x25c337 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x27c65d and fs3 == 0 and fe3 == 0xfd and fm3 == 0x594594 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800005c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsw fa3, 296(a5)<br>   |
|  39|[0x80003a34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b8bb0 and fs2 == 1 and fe2 == 0x75 and fm2 == 0x0afed7 and fs3 == 0 and fe3 == 0xf4 and fm3 == 0x3a4824 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800005e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:fsw fa3, 304(a5)<br>   |
|  40|[0x80003a3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x69b4c8 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x13b0b0 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x06d41d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000608]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsw fa3, 312(a5)<br>   |
|  41|[0x80003a44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37c8e9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01712d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x39dafb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000628]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsw fa3, 320(a5)<br>   |
|  42|[0x80003a4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x64d70d and fs2 == 1 and fe2 == 0x7e and fm2 == 0x723849 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x58859b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000648]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa3, 328(a5)<br>   |
|  43|[0x80003a54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0dddb2 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x44f318 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x5a48e6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000668]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000066c]:csrrs a7, fflags, zero<br> [0x80000670]:fsw fa3, 336(a5)<br>   |
|  44|[0x80003a5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1c1813 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4a4039 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x76a451 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000688]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsw fa3, 344(a5)<br>   |
|  45|[0x80003a64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d27fd and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0313ed and fs3 == 0 and fe3 == 0xfd and fm3 == 0x20ef64 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800006a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:fsw fa3, 352(a5)<br>   |
|  46|[0x80003a6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f106b and fs2 == 1 and fe2 == 0x7f and fm2 == 0x532924 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x37fe62 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800006c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006cc]:csrrs a7, fflags, zero<br> [0x800006d0]:fsw fa3, 360(a5)<br>   |
|  47|[0x80003a74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x515d63 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1f58f4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0251c0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800006e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsw fa3, 368(a5)<br>   |
|  48|[0x80003a7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6b9bcd and fs2 == 1 and fe2 == 0x7c and fm2 == 0x1e405c and fs3 == 0 and fe3 == 0xfb and fm3 == 0x11a564 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000708]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:fsw fa3, 376(a5)<br>   |
|  49|[0x80003a84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f91dd and fs2 == 1 and fe2 == 0x7b and fm2 == 0x458990 and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x5d90cb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000728]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa3, 384(a5)<br>   |
|  50|[0x80003a8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x30c11b and fs2 == 1 and fe2 == 0x81 and fm2 == 0x673027 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1f9f7f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000748]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsw fa3, 392(a5)<br>   |
|  51|[0x80003a94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x55e8d8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3c7042 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1d74cc and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000768]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:fsw fa3, 400(a5)<br>   |
|  52|[0x80003a9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x01e1e1 and fs2 == 1 and fe2 == 0x88 and fm2 == 0x196885 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1baa0e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000788]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000078c]:csrrs a7, fflags, zero<br> [0x80000790]:fsw fa3, 408(a5)<br>   |
|  53|[0x80003aa4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x36aa81 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x730786 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2d6937 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsw fa3, 416(a5)<br>   |
|  54|[0x80003aac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6aedca and fs2 == 1 and fe2 == 0x7e and fm2 == 0x76f305 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x629f84 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsw fa3, 424(a5)<br>   |
|  55|[0x80003ab4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x32afd0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x513864 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x1208e5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800007ec]:csrrs a7, fflags, zero<br> [0x800007f0]:fsw fa3, 432(a5)<br>   |
|  56|[0x80003abc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x148024 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x3cd5fe and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x5b1479 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000808]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa3, 440(a5)<br>   |
|  57|[0x80003ac4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x73b9b6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x12733e and fs3 == 0 and fe3 == 0xfc and fm3 == 0x0b6da2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000828]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:fsw fa3, 448(a5)<br>   |
|  58|[0x80003acc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2653cb and fs2 == 1 and fe2 == 0x80 and fm2 == 0x1dd609 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x4d18e7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000848]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000084c]:csrrs a7, fflags, zero<br> [0x80000850]:fsw fa3, 456(a5)<br>   |
|  59|[0x80003ad4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3516bd and fs2 == 1 and fe2 == 0x7d and fm2 == 0x75a1a3 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x2dc11a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000868]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsw fa3, 464(a5)<br>   |
|  60|[0x80003adc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x724091 and fs2 == 1 and fe2 == 0x7b and fm2 == 0x07e5ab and fs3 == 0 and fe3 == 0xfa and fm3 == 0x009962 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000888]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:fsw fa3, 472(a5)<br>   |
|  61|[0x80003ae4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2838a7 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x486d6d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x03b42b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsw fa3, 480(a5)<br>   |
|  62|[0x80003aec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x295ec9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3caab6 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x79a51a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsw fa3, 488(a5)<br>   |
|  63|[0x80003af4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x29b5ac and fs2 == 1 and fe2 == 0x81 and fm2 == 0x3962d8 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x75cba0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa3, 496(a5)<br>   |
|  64|[0x80003afc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x748e89 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x10cab1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0a51cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000908]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000090c]:csrrs a7, fflags, zero<br> [0x80000910]:fsw fa3, 504(a5)<br>   |
|  65|[0x80003b04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f83d9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1efb14 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x14be49 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000928]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsw fa3, 512(a5)<br>   |
|  66|[0x80003b0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7f92d6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x21da8e and fs3 == 0 and fe3 == 0xfd and fm3 == 0x219589 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000948]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:fsw fa3, 520(a5)<br>   |
|  67|[0x80003b14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x15d4d3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x3e8bad and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5f0b6a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000968]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000096c]:csrrs a7, fflags, zero<br> [0x80000970]:fsw fa3, 528(a5)<br>   |
|  68|[0x80003b1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c3a54 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x70e95d and fs3 == 0 and fe3 == 0xfc and fm3 == 0x03f683 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000988]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsw fa3, 536(a5)<br>   |
|  69|[0x80003b24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x04c0f2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x053b56 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0a2e07 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:fsw fa3, 544(a5)<br>   |
|  70|[0x80003b2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x33fa2e and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0255a1 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x37427e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa3, 552(a5)<br>   |
|  71|[0x80003b34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x7f3dba and fs2 == 1 and fe2 == 0x81 and fm2 == 0x211bd1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x20a18e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsw fa3, 560(a5)<br>   |
|  72|[0x80003b3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x46f72d and fs2 == 1 and fe2 == 0x7f and fm2 == 0x02c459 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4b443e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:fsw fa3, 568(a5)<br>   |
|  73|[0x80003b44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b6a5b and fs2 == 1 and fe2 == 0x7e and fm2 == 0x7adbb0 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x37a6b2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a2c]:csrrs a7, fflags, zero<br> [0x80000a30]:fsw fa3, 576(a5)<br>   |
|  74|[0x80003b4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2705e0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x4a90d7 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x042923 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:fsw fa3, 584(a5)<br>   |
|  75|[0x80003b54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x066ad6 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x1a1b4e and fs3 == 0 and fe3 == 0xfe and fm3 == 0x21d537 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsw fa3, 592(a5)<br>   |
|  76|[0x80003b5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0da9b0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0fad14 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1f0320 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000a8c]:csrrs a7, fflags, zero<br> [0x80000a90]:fsw fa3, 600(a5)<br>   |
|  77|[0x80003b64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x05966f and fs2 == 1 and fe2 == 0x7f and fm2 == 0x6cf9b4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7751f9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000aa8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa3, 608(a5)<br>   |
|  78|[0x80003b6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x789da3 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1db158 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1924e8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ac8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:fsw fa3, 616(a5)<br>   |
|  79|[0x80003b74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x31c4c0 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x61ceaa and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ccd6f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ae8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000aec]:csrrs a7, fflags, zero<br> [0x80000af0]:fsw fa3, 624(a5)<br>   |
|  80|[0x80003b7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x40881b and fs2 == 1 and fe2 == 0x80 and fm2 == 0x2b773c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x00f497 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:fsw fa3, 632(a5)<br>   |
|  81|[0x80003b84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x0e4d98 and fs2 == 1 and fe2 == 0x84 and fm2 == 0x3ceebe and fs3 == 0 and fe3 == 0xfd and fm3 == 0x520b63 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:fsw fa3, 640(a5)<br>   |
|  82|[0x80003b8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x797b55 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x64cca5 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5ef947 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsw fa3, 648(a5)<br>   |
|  83|[0x80003b94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x61ada9 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x4defe6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x358b8d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b6c]:csrrs a7, fflags, zero<br> [0x80000b70]:fsw fa3, 656(a5)<br>   |
|  84|[0x80003b9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x13caa0 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x65c581 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x04a647 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa3, 664(a5)<br>   |
|  85|[0x80003ba4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x57b1c2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x5d5a9b and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3a80cc and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ba8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bac]:csrrs a7, fflags, zero<br> [0x80000bb0]:fsw fa3, 672(a5)<br>   |
|  86|[0x80003bac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0b8ecb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x781ce6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x074216 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000bc8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bcc]:csrrs a7, fflags, zero<br> [0x80000bd0]:fsw fa3, 680(a5)<br>   |
|  87|[0x80003bb4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7efbaa and fs2 == 1 and fe2 == 0x7f and fm2 == 0x126eac and fs3 == 0 and fe3 == 0xfe and fm3 == 0x11d9c2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000be8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000bec]:csrrs a7, fflags, zero<br> [0x80000bf0]:fsw fa3, 688(a5)<br>   |
|  88|[0x80003bbc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x14c7ca and fs2 == 1 and fe2 == 0x7e and fm2 == 0x65789e and fs3 == 0 and fe3 == 0xfe and fm3 == 0x055cd1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c0c]:csrrs a7, fflags, zero<br> [0x80000c10]:fsw fa3, 696(a5)<br>   |
|  89|[0x80003bc4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0abfd0 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x0b3975 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x16ea94 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsw fa3, 704(a5)<br>   |
|  90|[0x80003bcc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1625cb and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0df910 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2689cb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c4c]:csrrs a7, fflags, zero<br> [0x80000c50]:fsw fa3, 712(a5)<br>   |
|  91|[0x80003bd4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x08ea41 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x438442 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x512259 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c6c]:csrrs a7, fflags, zero<br> [0x80000c70]:fsw fa3, 720(a5)<br>   |
|  92|[0x80003bdc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3fbd64 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x2d8949 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x01f9d0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000c8c]:csrrs a7, fflags, zero<br> [0x80000c90]:fsw fa3, 728(a5)<br>   |
|  93|[0x80003be4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3848de and fs2 == 1 and fe2 == 0x7e and fm2 == 0x273904 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x70c129 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ca8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000cac]:csrrs a7, fflags, zero<br> [0x80000cb0]:fsw fa3, 736(a5)<br>   |
|  94|[0x80003bec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x10c4ae and fs2 == 1 and fe2 == 0x80 and fm2 == 0x27ca24 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3dc53a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000cc8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000ccc]:csrrs a7, fflags, zero<br> [0x80000cd0]:fsw fa3, 744(a5)<br>   |
|  95|[0x80003bf4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x1b0e1c and fs2 == 1 and fe2 == 0x7d and fm2 == 0x39c4ac and fs3 == 0 and fe3 == 0xfb and fm3 == 0x6108a4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ce8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000cec]:csrrs a7, fflags, zero<br> [0x80000cf0]:fsw fa3, 752(a5)<br>   |
|  96|[0x80003bfc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x37f3c9 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x1b85b6 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x5f815f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsw fa3, 760(a5)<br>   |
|  97|[0x80003c04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3b73fa and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3f4883 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0c10a1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d2c]:csrrs a7, fflags, zero<br> [0x80000d30]:fsw fa3, 768(a5)<br>   |
|  98|[0x80003c0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b64b8 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6debb7 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2e28cb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsw fa3, 776(a5)<br>   |
|  99|[0x80003c14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3fdd96 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x5a545b and fs3 == 0 and fe3 == 0xfe and fm3 == 0x23a1eb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d6c]:csrrs a7, fflags, zero<br> [0x80000d70]:fsw fa3, 784(a5)<br>   |
| 100|[0x80003c1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x626a93 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x44bf77 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x2e02f0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000d8c]:csrrs a7, fflags, zero<br> [0x80000d90]:fsw fa3, 792(a5)<br>   |
| 101|[0x80003c24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x653da7 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x351f02 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x22305b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000da8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dac]:csrrs a7, fflags, zero<br> [0x80000db0]:fsw fa3, 800(a5)<br>   |
| 102|[0x80003c2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x23c8dc and fs2 == 1 and fe2 == 0x81 and fm2 == 0x02691f and fs3 == 0 and fe3 == 0xfd and fm3 == 0x26de83 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000dc8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dcc]:csrrs a7, fflags, zero<br> [0x80000dd0]:fsw fa3, 808(a5)<br>   |
| 103|[0x80003c34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7212c5 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x20008a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x174c3e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000de8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsw fa3, 816(a5)<br>   |
| 104|[0x80003c3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0c7ac4 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x262942 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x365c7f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e0c]:csrrs a7, fflags, zero<br> [0x80000e10]:fsw fa3, 824(a5)<br>   |
| 105|[0x80003c44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x20fa79 and fs2 == 1 and fe2 == 0x7c and fm2 == 0x1f78b2 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x488eed and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa3, 832(a5)<br>   |
| 106|[0x80003c4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x490a06 and fs2 == 1 and fe2 == 0x82 and fm2 == 0x7157ba and fs3 == 0 and fe3 == 0xfd and fm3 == 0x3d8755 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e4c]:csrrs a7, fflags, zero<br> [0x80000e50]:fsw fa3, 840(a5)<br>   |
| 107|[0x80003c54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2b21f2 and fs2 == 1 and fe2 == 0x83 and fm2 == 0x038e08 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2fe2a3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e6c]:csrrs a7, fflags, zero<br> [0x80000e70]:fsw fa3, 848(a5)<br>   |
| 108|[0x80003c5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ef9b3 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6cf335 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x21f46d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000e8c]:csrrs a7, fflags, zero<br> [0x80000e90]:fsw fa3, 856(a5)<br>   |
| 109|[0x80003c64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6414a9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3211a1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1ea613 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ea8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000eac]:csrrs a7, fflags, zero<br> [0x80000eb0]:fsw fa3, 864(a5)<br>   |
| 110|[0x80003c6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x1bdc6a and fs2 == 1 and fe2 == 0x7e and fm2 == 0x15b123 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x364645 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ec8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsw fa3, 872(a5)<br>   |
| 111|[0x80003c74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3d723b and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0a6ccf and fs3 == 0 and fe3 == 0xfd and fm3 == 0x4ce034 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ee8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000eec]:csrrs a7, fflags, zero<br> [0x80000ef0]:fsw fa3, 880(a5)<br>   |
| 112|[0x80003c7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x781bf7 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x19e553 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x1526f9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f08]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f0c]:csrrs a7, fflags, zero<br> [0x80000f10]:fsw fa3, 888(a5)<br>   |
| 113|[0x80003c84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x04524e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x391f1a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3f5f1d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f28]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f2c]:csrrs a7, fflags, zero<br> [0x80000f30]:fsw fa3, 896(a5)<br>   |
| 114|[0x80003c8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x703804 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x73aee7 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x64a94b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f48]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f4c]:csrrs a7, fflags, zero<br> [0x80000f50]:fsw fa3, 904(a5)<br>   |
| 115|[0x80003c94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x734d68 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0f6a98 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x084d8c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f68]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f6c]:csrrs a7, fflags, zero<br> [0x80000f70]:fsw fa3, 912(a5)<br>   |
| 116|[0x80003c9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5155d6 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x12ba16 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x6ff63d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f88]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000f8c]:csrrs a7, fflags, zero<br> [0x80000f90]:fsw fa3, 920(a5)<br>   |
| 117|[0x80003ca4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x028b61 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x2dfcc1 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x317228 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fa8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsw fa3, 928(a5)<br>   |
| 118|[0x80003cac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6a8ec9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x406305 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3045d1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fc8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fcc]:csrrs a7, fflags, zero<br> [0x80000fd0]:fsw fa3, 936(a5)<br>   |
| 119|[0x80003cb4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x0c0d61 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x6f2b41 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x02d828 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fe8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x80000fec]:csrrs a7, fflags, zero<br> [0x80000ff0]:fsw fa3, 944(a5)<br>   |
| 120|[0x80003cbc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x61107d and fs2 == 1 and fe2 == 0x83 and fm2 == 0x4e8dd6 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x3597f8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001008]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:fsw fa3, 952(a5)<br>   |
| 121|[0x80003cc4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x191148 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x0a0793 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x250fb1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001028]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000102c]:csrrs a7, fflags, zero<br> [0x80001030]:fsw fa3, 960(a5)<br>   |
| 122|[0x80003ccc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x25f81d and fs2 == 1 and fe2 == 0x81 and fm2 == 0x5da39a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0fb142 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001048]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000104c]:csrrs a7, fflags, zero<br> [0x80001050]:fsw fa3, 968(a5)<br>   |
| 123|[0x80003cd4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x497c49 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x3d34f5 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x14ea70 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001068]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:fsw fa3, 976(a5)<br>   |
| 124|[0x80003cdc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x043e1b and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03dea5 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x083d97 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001088]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsw fa3, 984(a5)<br>   |
| 125|[0x80003ce4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x327e6a and fs2 == 1 and fe2 == 0x7f and fm2 == 0x01b4a9 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34df56 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010ac]:csrrs a7, fflags, zero<br> [0x800010b0]:fsw fa3, 992(a5)<br>   |
| 126|[0x80003cec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x16edbb and fs2 == 1 and fe2 == 0x80 and fm2 == 0x761db3 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x1119f4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa3, 1000(a5)<br>  |
| 127|[0x80003cf4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x0af237 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x28f25d and fs3 == 0 and fe3 == 0xfe and fm3 == 0x376500 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800010ec]:csrrs a7, fflags, zero<br> [0x800010f0]:fsw fa3, 1008(a5)<br>  |
| 128|[0x80003cfc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf7 and fm1 == 0x5f1c44 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x24b4d2 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x0f8bb3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001108]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000110c]:csrrs a7, fflags, zero<br> [0x80001110]:fsw fa3, 1016(a5)<br>  |
| 129|[0x80003d04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0c9d65 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x4a38ba and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5e26b6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001128]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:fsw fa3, 1024(a5)<br>  |
| 130|[0x80003d0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x5e038c and fs2 == 1 and fe2 == 0x84 and fm2 == 0x2e660b and fs3 == 0 and fe3 == 0xfe and fm3 == 0x173ee9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001148]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000114c]:csrrs a7, fflags, zero<br> [0x80001150]:fsw fa3, 1032(a5)<br>  |
| 131|[0x80003d14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ff5ec and fs2 == 1 and fe2 == 0x7f and fm2 == 0x103b80 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x223795 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001168]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsw fa3, 1040(a5)<br>  |
| 132|[0x80003d1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3b3817 and fs2 == 1 and fe2 == 0x79 and fm2 == 0x401917 and fs3 == 0 and fe3 == 0xf9 and fm3 == 0x0c7c6b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001188]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:fsw fa3, 1048(a5)<br>  |
| 133|[0x80003d24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x074be5 and fs2 == 1 and fe2 == 0x7b and fm2 == 0x25a9d6 and fs3 == 0 and fe3 == 0xfa and fm3 == 0x2f1b5a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011ac]:csrrs a7, fflags, zero<br> [0x800011b0]:fsw fa3, 1056(a5)<br>  |
| 134|[0x80003d2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x728772 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x430d36 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x38c9b0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsw fa3, 1064(a5)<br>  |
| 135|[0x80003d34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d27cc and fs2 == 1 and fe2 == 0x7e and fm2 == 0x165ba8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x389b2c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:fsw fa3, 1072(a5)<br>  |
| 136|[0x80003d3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x01c09c and fs2 == 1 and fe2 == 0x7e and fm2 == 0x6ad52b and fs3 == 0 and fe3 == 0xfc and fm3 == 0x6e0c34 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001208]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000120c]:csrrs a7, fflags, zero<br> [0x80001210]:fsw fa3, 1080(a5)<br>  |
| 137|[0x80003d44]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf6 and fm1 == 0x26497d and fs2 == 1 and fe2 == 0x86 and fm2 == 0x486327 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0229d2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001228]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000122c]:csrrs a7, fflags, zero<br> [0x80001230]:fsw fa3, 1088(a5)<br>  |
| 138|[0x80003d4c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x67719b and fs2 == 1 and fe2 == 0x80 and fm2 == 0x00154c and fs3 == 0 and fe3 == 0xfd and fm3 == 0x67981f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001248]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:fsw fa3, 1096(a5)<br>  |
| 139|[0x80003d54]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x5fcc51 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x64e70b and fs3 == 0 and fe3 == 0xfa and fm3 == 0x481bf3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001268]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000126c]:csrrs a7, fflags, zero<br> [0x80001270]:fsw fa3, 1104(a5)<br>  |
| 140|[0x80003d5c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0ab269 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x6b3fb1 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x7ee893 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001288]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000128c]:csrrs a7, fflags, zero<br> [0x80001290]:fsw fa3, 1112(a5)<br>  |
| 141|[0x80003d64]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b9930 and fs2 == 1 and fe2 == 0x7d and fm2 == 0x2b2afd and fs3 == 0 and fe3 == 0xfc and fm3 == 0x657849 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsw fa3, 1120(a5)<br>  |
| 142|[0x80003d6c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x049a6e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x332355 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x399491 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012cc]:csrrs a7, fflags, zero<br> [0x800012d0]:fsw fa3, 1128(a5)<br>  |
| 143|[0x80003d74]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1d454a and fs2 == 1 and fe2 == 0x81 and fm2 == 0x130ace and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34aad9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800012ec]:csrrs a7, fflags, zero<br> [0x800012f0]:fsw fa3, 1136(a5)<br>  |
| 144|[0x80003d7c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4f0fd2 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x20e6fd and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0224b8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001308]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:fsw fa3, 1144(a5)<br>  |
| 145|[0x80003d84]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x5e2fb5 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x54b2a7 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x389a90 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001328]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000132c]:csrrs a7, fflags, zero<br> [0x80001330]:fsw fa3, 1152(a5)<br>  |
| 146|[0x80003d8c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3c9ff5 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x635528 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x278095 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001348]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000134c]:csrrs a7, fflags, zero<br> [0x80001350]:fsw fa3, 1160(a5)<br>  |
| 147|[0x80003d94]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x20dccc and fs2 == 1 and fe2 == 0x7f and fm2 == 0x03ae89 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x257d51 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001368]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:fsw fa3, 1168(a5)<br>  |
| 148|[0x80003d9c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf5 and fm1 == 0x2e79de and fs2 == 1 and fe2 == 0x87 and fm2 == 0x757c34 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x274f48 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001388]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsw fa3, 1176(a5)<br>  |
| 149|[0x80003da4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6d1a0c and fs2 == 1 and fe2 == 0x7c and fm2 == 0x521f16 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x429c29 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800013ac]:csrrs a7, fflags, zero<br> [0x800013b0]:fsw fa3, 1184(a5)<br>  |
| 150|[0x80003dac]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x190d5e and fs2 == 1 and fe2 == 0x7c and fm2 == 0x32420c and fs3 == 0 and fe3 == 0xfb and fm3 == 0x552591 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800013cc]:csrrs a7, fflags, zero<br> [0x800013d0]:fsw fa3, 1192(a5)<br>  |
| 151|[0x80003db4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1304ef and fs2 == 1 and fe2 == 0x7c and fm2 == 0x557010 and fs3 == 0 and fe3 == 0xfb and fm3 == 0x7526ed and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800013ec]:csrrs a7, fflags, zero<br> [0x800013f0]:fsw fa3, 1200(a5)<br>  |
| 152|[0x80003dbc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x56a477 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x51d69a and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2ff034 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001408]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000140c]:csrrs a7, fflags, zero<br> [0x80001410]:fsw fa3, 1208(a5)<br>  |
| 153|[0x80003dc4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x2125ab and fs2 == 1 and fe2 == 0x83 and fm2 == 0x0435fb and fs3 == 0 and fe3 == 0xfc and fm3 == 0x2672cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001428]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000142c]:csrrs a7, fflags, zero<br> [0x80001430]:fsw fa3, 1216(a5)<br>  |
| 154|[0x80003dcc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x50cddd and fs2 == 1 and fe2 == 0x7f and fm2 == 0x071ab8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5c64b6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001448]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000144c]:csrrs a7, fflags, zero<br> [0x80001450]:fsw fa3, 1224(a5)<br>  |
| 155|[0x80003dd4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x341f5c and fs2 == 1 and fe2 == 0x7e and fm2 == 0x0691ee and fs3 == 0 and fe3 == 0xfc and fm3 == 0x3d5e30 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001468]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000146c]:csrrs a7, fflags, zero<br> [0x80001470]:fsw fa3, 1232(a5)<br>  |
| 156|[0x80003ddc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cf90f and fs2 == 1 and fe2 == 0x7c and fm2 == 0x00acab and fs3 == 0 and fe3 == 0xfb and fm3 == 0x2de265 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001488]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000148c]:csrrs a7, fflags, zero<br> [0x80001490]:fsw fa3, 1240(a5)<br>  |
| 157|[0x80003de4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x351fde and fs2 == 1 and fe2 == 0x7e and fm2 == 0x301cf4 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x7934ca and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800014ac]:csrrs a7, fflags, zero<br> [0x800014b0]:fsw fa3, 1248(a5)<br>  |
| 158|[0x80003dec]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x323547 and fs2 == 1 and fe2 == 0x83 and fm2 == 0x006caa and fs3 == 0 and fe3 == 0xfd and fm3 == 0x32cc91 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800014cc]:csrrs a7, fflags, zero<br> [0x800014d0]:fsw fa3, 1256(a5)<br>  |
| 159|[0x80003df4]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0e0f7e and fs2 == 1 and fe2 == 0x7f and fm2 == 0x1f8f25 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x31161d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800014ec]:csrrs a7, fflags, zero<br> [0x800014f0]:fsw fa3, 1264(a5)<br>  |
| 160|[0x80003dfc]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x18ad5a and fs2 == 1 and fe2 == 0x7f and fm2 == 0x17b417 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x34f350 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001508]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000150c]:csrrs a7, fflags, zero<br> [0x80001510]:fsw fa3, 1272(a5)<br>  |
| 161|[0x80003e04]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f31b9 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x186e02 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x0e6c50 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001528]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000152c]:csrrs a7, fflags, zero<br> [0x80001530]:fsw fa3, 1280(a5)<br>  |
| 162|[0x80003e0c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x390aa3 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x722d10 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2f0ca1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001548]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsw fa3, 1288(a5)<br>  |
| 163|[0x80003e14]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x07f885 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x648bdf and fs3 == 0 and fe3 == 0xfd and fm3 == 0x72c742 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001568]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000156c]:csrrs a7, fflags, zero<br> [0x80001570]:fsw fa3, 1296(a5)<br>  |
| 164|[0x80003e1c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x243fb8 and fs2 == 1 and fe2 == 0x7f and fm2 == 0x2c433a and fs3 == 0 and fe3 == 0xfd and fm3 == 0x5d0be3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001588]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000158c]:csrrs a7, fflags, zero<br> [0x80001590]:fsw fa3, 1304(a5)<br>  |
| 165|[0x80003e24]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x32eb6c and fs2 == 1 and fe2 == 0x84 and fm2 == 0x55d574 and fs3 == 0 and fe3 == 0xfe and fm3 == 0x157310 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015a8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800015ac]:csrrs a7, fflags, zero<br> [0x800015b0]:fsw fa3, 1312(a5)<br>  |
| 166|[0x80003e2c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ef4a6 and fs2 == 1 and fe2 == 0x80 and fm2 == 0x00c03c and fs3 == 0 and fe3 == 0xfe and fm3 == 0x2ffb67 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015c8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800015cc]:csrrs a7, fflags, zero<br> [0x800015d0]:fsw fa3, 1320(a5)<br>  |
| 167|[0x80003e34]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5fd1b9 and fs2 == 1 and fe2 == 0x81 and fm2 == 0x5dbbf1 and fs3 == 0 and fe3 == 0xfc and fm3 == 0x41dc5e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015e8]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x800015ec]:csrrs a7, fflags, zero<br> [0x800015f0]:fsw fa3, 1328(a5)<br>  |
| 168|[0x80003e3c]<br>0xEADFEEDB|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x324e28 and fs2 == 1 and fe2 == 0x7e and fm2 == 0x470cb8 and fs3 == 0 and fe3 == 0xfd and fm3 == 0x0aa39d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001608]:fmadd.s fa3, fa0, fa1, fa2, dyn<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:fsw fa3, 1336(a5)<br>  |
