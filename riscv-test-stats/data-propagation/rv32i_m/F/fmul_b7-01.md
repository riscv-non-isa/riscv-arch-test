
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800012d0')]      |
| SIG_REGION                | [('0x80003704', '0x80003c14', '324 words')]      |
| COV_LABELS                | fmul_b7      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmul_b7-01.S/ref.S    |
| Total Number of coverpoints| 268     |
| Total Coverpoints Hit     | 262      |
| Total Signature Updates   | 324      |
| STAT1                     | 162      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 162     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmul.s', 'rs1 : f18', 'rs2 : f18', 'rd : f18', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000124]:fmul.s fs2, fs2, fs2, dyn
	-[0x80000128]:csrrs a7, fflags, zero
	-[0x8000012c]:fsw fs2, 0(a5)
Current Store : [0x80000130] : sw a7, 4(a5) -- Store: [0x80003708]:0x00000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f20', 'rd : f22', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x089f67 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000140]:fmul.s fs6, fs7, fs4, dyn
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw fs6, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80003710]:0x00000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f15', 'rd : f10', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000015c]:fmul.s fa0, fa5, fa5, dyn
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:fsw fa0, 16(a5)
Current Store : [0x80000168] : sw a7, 20(a5) -- Store: [0x80003718]:0x00000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f13', 'rd : f4', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ba101 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000178]:fmul.s ft4, ft4, fa3, dyn
	-[0x8000017c]:csrrs a7, fflags, zero
	-[0x80000180]:fsw ft4, 24(a5)
Current Store : [0x80000184] : sw a7, 28(a5) -- Store: [0x80003720]:0x00000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f17', 'rd : f17', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x1aa55e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000194]:fmul.s fa7, ft8, fa7, dyn
	-[0x80000198]:csrrs a7, fflags, zero
	-[0x8000019c]:fsw fa7, 32(a5)
Current Store : [0x800001a0] : sw a7, 36(a5) -- Store: [0x80003728]:0x00000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f21', 'rd : f1', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x2ccc93 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fmul.s ft1, ft7, fs5, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:fsw ft1, 40(a5)
Current Store : [0x800001bc] : sw a7, 44(a5) -- Store: [0x80003730]:0x00000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f28', 'rd : f3', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x123a99 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001cc]:fmul.s ft3, ft11, ft8, dyn
	-[0x800001d0]:csrrs a7, fflags, zero
	-[0x800001d4]:fsw ft3, 48(a5)
Current Store : [0x800001d8] : sw a7, 52(a5) -- Store: [0x80003738]:0x00000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f1', 'rd : f13', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x0f285b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fmul.s fa3, fa4, ft1, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:fsw fa3, 56(a5)
Current Store : [0x800001f4] : sw a7, 60(a5) -- Store: [0x80003740]:0x00000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f19', 'rd : f7', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x38b31c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000204]:fmul.s ft7, fs6, fs3, dyn
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:fsw ft7, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80003748]:0x00000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f11', 'rd : f19', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x076f73 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000220]:fmul.s fs3, ft5, fa1, dyn
	-[0x80000224]:csrrs a7, fflags, zero
	-[0x80000228]:fsw fs3, 72(a5)
Current Store : [0x8000022c] : sw a7, 76(a5) -- Store: [0x80003750]:0x00000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f30', 'rd : f5', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x086888 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fmul.s ft5, fs0, ft10, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:fsw ft5, 80(a5)
Current Store : [0x80000248] : sw a7, 84(a5) -- Store: [0x80003758]:0x00000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f6', 'rd : f30', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x394394 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000258]:fmul.s ft10, fs3, ft6, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:fsw ft10, 88(a5)
Current Store : [0x80000264] : sw a7, 92(a5) -- Store: [0x80003760]:0x00000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f23', 'rd : f29', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x0a90e5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000274]:fmul.s ft9, ft6, fs7, dyn
	-[0x80000278]:csrrs a7, fflags, zero
	-[0x8000027c]:fsw ft9, 96(a5)
Current Store : [0x80000280] : sw a7, 100(a5) -- Store: [0x80003768]:0x00000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f24', 'rd : f23', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x648b04 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000290]:fmul.s fs7, fa7, fs8, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw fs7, 104(a5)
Current Store : [0x8000029c] : sw a7, 108(a5) -- Store: [0x80003770]:0x00000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f14', 'rd : f27', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x296a13 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fmul.s fs11, ft1, fa4, dyn
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:fsw fs11, 112(a5)
Current Store : [0x800002b8] : sw a7, 116(a5) -- Store: [0x80003778]:0x00000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f31', 'rd : f16', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x5c337b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002c8]:fmul.s fa6, fs5, ft11, dyn
	-[0x800002cc]:csrrs a7, fflags, zero
	-[0x800002d0]:fsw fa6, 120(a5)
Current Store : [0x800002d4] : sw a7, 124(a5) -- Store: [0x80003780]:0x00000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f25', 'rd : f26', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x3f10c6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fmul.s fs10, fa0, fs9, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:fsw fs10, 128(a5)
Current Store : [0x800002f0] : sw a7, 132(a5) -- Store: [0x80003788]:0x00000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f0', 'rd : f28', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x070538 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000300]:fmul.s ft8, fa6, ft0, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft8, 136(a5)
Current Store : [0x8000030c] : sw a7, 140(a5) -- Store: [0x80003790]:0x00000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f10', 'rd : f6', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2bd1f5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000031c]:fmul.s ft6, ft3, fa0, dyn
	-[0x80000320]:csrrs a7, fflags, zero
	-[0x80000324]:fsw ft6, 144(a5)
Current Store : [0x80000328] : sw a7, 148(a5) -- Store: [0x80003798]:0x00000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f3', 'rd : f8', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x09599c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000338]:fmul.s fs0, fa2, ft3, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:fsw fs0, 152(a5)
Current Store : [0x80000344] : sw a7, 156(a5) -- Store: [0x800037a0]:0x00000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f9', 'rd : f11', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x13b178 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000354]:fmul.s fa1, fs11, fs1, dyn
	-[0x80000358]:csrrs a7, fflags, zero
	-[0x8000035c]:fsw fa1, 160(a5)
Current Store : [0x80000360] : sw a7, 164(a5) -- Store: [0x800037a8]:0x00000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f5', 'rd : f0', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x366362 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x33a925 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000370]:fmul.s ft0, fa3, ft5, dyn
	-[0x80000374]:csrrs a7, fflags, zero
	-[0x80000378]:fsw ft0, 168(a5)
Current Store : [0x8000037c] : sw a7, 172(a5) -- Store: [0x800037b0]:0x00000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f16', 'rd : f2', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x2c23d1 and fs2 == 0 and fe2 == 0x2d and fm2 == 0x3e5b55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fmul.s ft2, ft9, fa6, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:fsw ft2, 176(a5)
Current Store : [0x80000398] : sw a7, 180(a5) -- Store: [0x800037b8]:0x00000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f27', 'rd : f9', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x28844c and fs2 == 0 and fe2 == 0x2b and fm2 == 0x427310 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmul.s fs1, fs4, fs11, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:fsw fs1, 184(a5)
Current Store : [0x800003b4] : sw a7, 188(a5) -- Store: [0x800037c0]:0x00000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f8', 'rd : f25', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x00c7d5 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x7e72c1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003c4]:fmul.s fs9, ft2, fs0, dyn
	-[0x800003c8]:csrrs a7, fflags, zero
	-[0x800003cc]:fsw fs9, 192(a5)
Current Store : [0x800003d0] : sw a7, 196(a5) -- Store: [0x800037c8]:0x00000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f26', 'rd : f12', 'fs1 == 0 and fe1 == 0xfc and fm1 == 0x639f2c and fs2 == 0 and fe2 == 0x2c and fm2 == 0x0ff547 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fmul.s fa2, ft0, fs10, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw fa2, 200(a5)
Current Store : [0x800003ec] : sw a7, 204(a5) -- Store: [0x800037d0]:0x00000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f22', 'rd : f15', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x78dd0e and fs2 == 0 and fe2 == 0x2b and fm2 == 0x03abaa and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003fc]:fmul.s fa5, fs8, fs6, dyn
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:fsw fa5, 208(a5)
Current Store : [0x80000408] : sw a7, 212(a5) -- Store: [0x800037d8]:0x00000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f29', 'rd : f21', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x2befa1 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x3e951d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000418]:fmul.s fs5, fs9, ft9, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsw fs5, 216(a5)
Current Store : [0x80000424] : sw a7, 220(a5) -- Store: [0x800037e0]:0x00000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f7', 'rd : f14', 'fs1 == 0 and fe1 == 0xfa and fm1 == 0x4d54a3 and fs2 == 0 and fe2 == 0x2e and fm2 == 0x1f9626 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000434]:fmul.s fa4, fa1, ft7, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:fsw fa4, 224(a5)
Current Store : [0x80000440] : sw a7, 228(a5) -- Store: [0x800037e8]:0x00000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f2', 'rd : f31', 'fs1 == 0 and fe1 == 0xfb and fm1 == 0x61068d and fs2 == 0 and fe2 == 0x2d and fm2 == 0x119e76 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000450]:fmul.s ft11, fs10, ft2, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:fsw ft11, 232(a5)
Current Store : [0x8000045c] : sw a7, 236(a5) -- Store: [0x800037f0]:0x00000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f12', 'rd : f20', 'fs1 == 0 and fe1 == 0xfd and fm1 == 0x08b9d9 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x6fa96f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fmul.s fs4, ft10, fa2, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsw fs4, 240(a5)
Current Store : [0x80000478] : sw a7, 244(a5) -- Store: [0x800037f8]:0x00000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f4', 'rd : f24', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d071f and fs2 == 0 and fe2 == 0x2a and fm2 == 0x50ad28 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000488]:fmul.s fs8, fs1, ft4, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:fsw fs8, 248(a5)
Current Store : [0x80000494] : sw a7, 252(a5) -- Store: [0x80003800]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x305e0d and fs2 == 0 and fe2 == 0x2a and fm2 == 0x39cb42 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004a8]:csrrs a7, fflags, zero
	-[0x800004ac]:fsw fa2, 256(a5)
Current Store : [0x800004b0] : sw a7, 260(a5) -- Store: [0x80003808]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x243814 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x4789d0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw fa2, 264(a5)
Current Store : [0x800004cc] : sw a7, 268(a5) -- Store: [0x80003810]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3bb1f5 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x2e94ba and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:fsw fa2, 272(a5)
Current Store : [0x800004e8] : sw a7, 276(a5) -- Store: [0x80003818]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x63ea1b and fs2 == 0 and fe2 == 0x2c and fm2 == 0x0fc5f1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004f8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:fsw fa2, 280(a5)
Current Store : [0x80000504] : sw a7, 284(a5) -- Store: [0x80003820]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x32f44f and fs2 == 0 and fe2 == 0x2a and fm2 == 0x371bb0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000514]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsw fa2, 288(a5)
Current Store : [0x80000520] : sw a7, 292(a5) -- Store: [0x80003828]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x374d41 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x32c3eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000530]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:fsw fa2, 296(a5)
Current Store : [0x8000053c] : sw a7, 300(a5) -- Store: [0x80003830]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4a19c2 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x222315 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000054c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000550]:csrrs a7, fflags, zero
	-[0x80000554]:fsw fa2, 304(a5)
Current Store : [0x80000558] : sw a7, 308(a5) -- Store: [0x80003838]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x195ac9 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x55acb7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000568]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsw fa2, 312(a5)
Current Store : [0x80000574] : sw a7, 316(a5) -- Store: [0x80003840]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x094fff and fs2 == 0 and fe2 == 0x2b and fm2 == 0x6ea35e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000584]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:fsw fa2, 320(a5)
Current Store : [0x80000590] : sw a7, 324(a5) -- Store: [0x80003848]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0aea5e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsw fa2, 328(a5)
Current Store : [0x800005ac] : sw a7, 332(a5) -- Store: [0x80003850]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7d1e07 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005bc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsw fa2, 336(a5)
Current Store : [0x800005c8] : sw a7, 340(a5) -- Store: [0x80003858]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x04fd41 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:fsw fa2, 344(a5)
Current Store : [0x800005e4] : sw a7, 348(a5) -- Store: [0x80003860]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x762408 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005f4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800005f8]:csrrs a7, fflags, zero
	-[0x800005fc]:fsw fa2, 352(a5)
Current Store : [0x80000600] : sw a7, 356(a5) -- Store: [0x80003868]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x775433 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000610]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsw fa2, 360(a5)
Current Store : [0x8000061c] : sw a7, 364(a5) -- Store: [0x80003870]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x3af9fa and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000062c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000630]:csrrs a7, fflags, zero
	-[0x80000634]:fsw fa2, 368(a5)
Current Store : [0x80000638] : sw a7, 372(a5) -- Store: [0x80003878]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10affc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000648]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:fsw fa2, 376(a5)
Current Store : [0x80000654] : sw a7, 380(a5) -- Store: [0x80003880]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x1671a2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000664]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsw fa2, 384(a5)
Current Store : [0x80000670] : sw a7, 388(a5) -- Store: [0x80003888]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x13bb57 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsw fa2, 392(a5)
Current Store : [0x8000068c] : sw a7, 396(a5) -- Store: [0x80003890]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x6b27f7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000069c]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006a0]:csrrs a7, fflags, zero
	-[0x800006a4]:fsw fa2, 400(a5)
Current Store : [0x800006a8] : sw a7, 404(a5) -- Store: [0x80003898]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f31c4 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsw fa2, 408(a5)
Current Store : [0x800006c4] : sw a7, 412(a5) -- Store: [0x800038a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x62ae46 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006d4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006d8]:csrrs a7, fflags, zero
	-[0x800006dc]:fsw fa2, 416(a5)
Current Store : [0x800006e0] : sw a7, 420(a5) -- Store: [0x800038a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x1fef00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006f0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:fsw fa2, 424(a5)
Current Store : [0x800006fc] : sw a7, 428(a5) -- Store: [0x800038b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x1db2ee and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000070c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000710]:csrrs a7, fflags, zero
	-[0x80000714]:fsw fa2, 432(a5)
Current Store : [0x80000718] : sw a7, 436(a5) -- Store: [0x800038b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x41315c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000728]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:fsw fa2, 440(a5)
Current Store : [0x80000734] : sw a7, 444(a5) -- Store: [0x800038c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2165be and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000744]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000748]:csrrs a7, fflags, zero
	-[0x8000074c]:fsw fa2, 448(a5)
Current Store : [0x80000750] : sw a7, 452(a5) -- Store: [0x800038c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x1b6277 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsw fa2, 456(a5)
Current Store : [0x8000076c] : sw a7, 460(a5) -- Store: [0x800038d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x6a262c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000077c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000780]:csrrs a7, fflags, zero
	-[0x80000784]:fsw fa2, 464(a5)
Current Store : [0x80000788] : sw a7, 468(a5) -- Store: [0x800038d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cd606 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000798]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:fsw fa2, 472(a5)
Current Store : [0x800007a4] : sw a7, 476(a5) -- Store: [0x800038e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6a6f9b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007b4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007b8]:csrrs a7, fflags, zero
	-[0x800007bc]:fsw fa2, 480(a5)
Current Store : [0x800007c0] : sw a7, 484(a5) -- Store: [0x800038e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x476063 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:fsw fa2, 488(a5)
Current Store : [0x800007dc] : sw a7, 492(a5) -- Store: [0x800038f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a1c1b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007ec]:fmul.s fa2, fa0, fa1, dyn
	-[0x800007f0]:csrrs a7, fflags, zero
	-[0x800007f4]:fsw fa2, 496(a5)
Current Store : [0x800007f8] : sw a7, 500(a5) -- Store: [0x800038f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x0b2e4b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000808]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsw fa2, 504(a5)
Current Store : [0x80000814] : sw a7, 508(a5) -- Store: [0x80003900]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2084ae and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000824]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000828]:csrrs a7, fflags, zero
	-[0x8000082c]:fsw fa2, 512(a5)
Current Store : [0x80000830] : sw a7, 516(a5) -- Store: [0x80003908]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f221f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsw fa2, 520(a5)
Current Store : [0x8000084c] : sw a7, 524(a5) -- Store: [0x80003910]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x268dc5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000085c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000860]:csrrs a7, fflags, zero
	-[0x80000864]:fsw fa2, 528(a5)
Current Store : [0x80000868] : sw a7, 532(a5) -- Store: [0x80003918]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38eb1b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000878]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:fsw fa2, 536(a5)
Current Store : [0x80000884] : sw a7, 540(a5) -- Store: [0x80003920]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x232951 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000894]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000898]:csrrs a7, fflags, zero
	-[0x8000089c]:fsw fa2, 544(a5)
Current Store : [0x800008a0] : sw a7, 548(a5) -- Store: [0x80003928]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x6dde9e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsw fa2, 552(a5)
Current Store : [0x800008bc] : sw a7, 556(a5) -- Store: [0x80003930]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x47f677 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008cc]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008d0]:csrrs a7, fflags, zero
	-[0x800008d4]:fsw fa2, 560(a5)
Current Store : [0x800008d8] : sw a7, 564(a5) -- Store: [0x80003938]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x31cfbf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:fsw fa2, 568(a5)
Current Store : [0x800008f4] : sw a7, 572(a5) -- Store: [0x80003940]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x19405f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000904]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000908]:csrrs a7, fflags, zero
	-[0x8000090c]:fsw fa2, 576(a5)
Current Store : [0x80000910] : sw a7, 580(a5) -- Store: [0x80003948]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6b9 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsw fa2, 584(a5)
Current Store : [0x8000092c] : sw a7, 588(a5) -- Store: [0x80003950]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x1cf370 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000093c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000940]:csrrs a7, fflags, zero
	-[0x80000944]:fsw fa2, 592(a5)
Current Store : [0x80000948] : sw a7, 596(a5) -- Store: [0x80003958]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf6 and fm1 == 0x6d25cb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000958]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsw fa2, 600(a5)
Current Store : [0x80000964] : sw a7, 604(a5) -- Store: [0x80003960]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x227041 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000974]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000978]:csrrs a7, fflags, zero
	-[0x8000097c]:fsw fa2, 608(a5)
Current Store : [0x80000980] : sw a7, 612(a5) -- Store: [0x80003968]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x083942 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000990]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:fsw fa2, 616(a5)
Current Store : [0x8000099c] : sw a7, 620(a5) -- Store: [0x80003970]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6fadd2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009b0]:csrrs a7, fflags, zero
	-[0x800009b4]:fsw fa2, 624(a5)
Current Store : [0x800009b8] : sw a7, 628(a5) -- Store: [0x80003978]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x409980 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009cc]:csrrs a7, fflags, zero
	-[0x800009d0]:fsw fa2, 632(a5)
Current Store : [0x800009d4] : sw a7, 636(a5) -- Store: [0x80003980]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x328a37 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800009e8]:csrrs a7, fflags, zero
	-[0x800009ec]:fsw fa2, 640(a5)
Current Store : [0x800009f0] : sw a7, 644(a5) -- Store: [0x80003988]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x335a5f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsw fa2, 648(a5)
Current Store : [0x80000a0c] : sw a7, 652(a5) -- Store: [0x80003990]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x432be8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a20]:csrrs a7, fflags, zero
	-[0x80000a24]:fsw fa2, 656(a5)
Current Store : [0x80000a28] : sw a7, 660(a5) -- Store: [0x80003998]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x134261 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a38]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:fsw fa2, 664(a5)
Current Store : [0x80000a44] : sw a7, 668(a5) -- Store: [0x800039a0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x4e2b68 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a54]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a58]:csrrs a7, fflags, zero
	-[0x80000a5c]:fsw fa2, 672(a5)
Current Store : [0x80000a60] : sw a7, 676(a5) -- Store: [0x800039a8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x57ea20 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a70]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a74]:csrrs a7, fflags, zero
	-[0x80000a78]:fsw fa2, 680(a5)
Current Store : [0x80000a7c] : sw a7, 684(a5) -- Store: [0x800039b0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x5d9799 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000a90]:csrrs a7, fflags, zero
	-[0x80000a94]:fsw fa2, 688(a5)
Current Store : [0x80000a98] : sw a7, 692(a5) -- Store: [0x800039b8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68bbe2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsw fa2, 696(a5)
Current Store : [0x80000ab4] : sw a7, 700(a5) -- Store: [0x800039c0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3844b4 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ac8]:csrrs a7, fflags, zero
	-[0x80000acc]:fsw fa2, 704(a5)
Current Store : [0x80000ad0] : sw a7, 708(a5) -- Store: [0x800039c8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x45af29 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsw fa2, 712(a5)
Current Store : [0x80000aec] : sw a7, 716(a5) -- Store: [0x800039d0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x609f7b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000afc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b00]:csrrs a7, fflags, zero
	-[0x80000b04]:fsw fa2, 720(a5)
Current Store : [0x80000b08] : sw a7, 724(a5) -- Store: [0x800039d8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x27f459 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b18]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b1c]:csrrs a7, fflags, zero
	-[0x80000b20]:fsw fa2, 728(a5)
Current Store : [0x80000b24] : sw a7, 732(a5) -- Store: [0x800039e0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x1cbf56 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b34]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b38]:csrrs a7, fflags, zero
	-[0x80000b3c]:fsw fa2, 736(a5)
Current Store : [0x80000b40] : sw a7, 740(a5) -- Store: [0x800039e8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7dc215 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b50]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:fsw fa2, 744(a5)
Current Store : [0x80000b5c] : sw a7, 748(a5) -- Store: [0x800039f0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x358c1d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b70]:csrrs a7, fflags, zero
	-[0x80000b74]:fsw fa2, 752(a5)
Current Store : [0x80000b78] : sw a7, 756(a5) -- Store: [0x800039f8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2596ee and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b88]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:fsw fa2, 760(a5)
Current Store : [0x80000b94] : sw a7, 764(a5) -- Store: [0x80003a00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2d3017 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ba8]:csrrs a7, fflags, zero
	-[0x80000bac]:fsw fa2, 768(a5)
Current Store : [0x80000bb0] : sw a7, 772(a5) -- Store: [0x80003a08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1310f3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsw fa2, 776(a5)
Current Store : [0x80000bcc] : sw a7, 780(a5) -- Store: [0x80003a10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x3d4d49 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000be0]:csrrs a7, fflags, zero
	-[0x80000be4]:fsw fa2, 784(a5)
Current Store : [0x80000be8] : sw a7, 788(a5) -- Store: [0x80003a18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x2dbe96 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:fsw fa2, 792(a5)
Current Store : [0x80000c04] : sw a7, 796(a5) -- Store: [0x80003a20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6c407f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c14]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c18]:csrrs a7, fflags, zero
	-[0x80000c1c]:fsw fa2, 800(a5)
Current Store : [0x80000c20] : sw a7, 804(a5) -- Store: [0x80003a28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5ed631 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c30]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:fsw fa2, 808(a5)
Current Store : [0x80000c3c] : sw a7, 812(a5) -- Store: [0x80003a30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3e148d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c50]:csrrs a7, fflags, zero
	-[0x80000c54]:fsw fa2, 816(a5)
Current Store : [0x80000c58] : sw a7, 820(a5) -- Store: [0x80003a38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x140eaa and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c68]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c6c]:csrrs a7, fflags, zero
	-[0x80000c70]:fsw fa2, 824(a5)
Current Store : [0x80000c74] : sw a7, 828(a5) -- Store: [0x80003a40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x0d1c84 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c84]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000c88]:csrrs a7, fflags, zero
	-[0x80000c8c]:fsw fa2, 832(a5)
Current Store : [0x80000c90] : sw a7, 836(a5) -- Store: [0x80003a48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1c29fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsw fa2, 840(a5)
Current Store : [0x80000cac] : sw a7, 844(a5) -- Store: [0x80003a50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x01ea00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cc0]:csrrs a7, fflags, zero
	-[0x80000cc4]:fsw fa2, 848(a5)
Current Store : [0x80000cc8] : sw a7, 852(a5) -- Store: [0x80003a58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x1bb7c9 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:fsw fa2, 856(a5)
Current Store : [0x80000ce4] : sw a7, 860(a5) -- Store: [0x80003a60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x7eadb5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000cf8]:csrrs a7, fflags, zero
	-[0x80000cfc]:fsw fa2, 864(a5)
Current Store : [0x80000d00] : sw a7, 868(a5) -- Store: [0x80003a68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x04012d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d10]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d14]:csrrs a7, fflags, zero
	-[0x80000d18]:fsw fa2, 872(a5)
Current Store : [0x80000d1c] : sw a7, 876(a5) -- Store: [0x80003a70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x43d400 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d30]:csrrs a7, fflags, zero
	-[0x80000d34]:fsw fa2, 880(a5)
Current Store : [0x80000d38] : sw a7, 884(a5) -- Store: [0x80003a78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x22667e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsw fa2, 888(a5)
Current Store : [0x80000d54] : sw a7, 892(a5) -- Store: [0x80003a80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x21a5d7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d64]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d68]:csrrs a7, fflags, zero
	-[0x80000d6c]:fsw fa2, 896(a5)
Current Store : [0x80000d70] : sw a7, 900(a5) -- Store: [0x80003a88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x23f501 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsw fa2, 904(a5)
Current Store : [0x80000d8c] : sw a7, 908(a5) -- Store: [0x80003a90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfb and fm1 == 0x23397b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000da0]:csrrs a7, fflags, zero
	-[0x80000da4]:fsw fa2, 912(a5)
Current Store : [0x80000da8] : sw a7, 916(a5) -- Store: [0x80003a98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2e0a9e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000db8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dbc]:csrrs a7, fflags, zero
	-[0x80000dc0]:fsw fa2, 920(a5)
Current Store : [0x80000dc4] : sw a7, 924(a5) -- Store: [0x80003aa0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7ab7a7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000dd8]:csrrs a7, fflags, zero
	-[0x80000ddc]:fsw fa2, 928(a5)
Current Store : [0x80000de0] : sw a7, 932(a5) -- Store: [0x80003aa8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000df0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:fsw fa2, 936(a5)
Current Store : [0x80000dfc] : sw a7, 940(a5) -- Store: [0x80003ab0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e10]:csrrs a7, fflags, zero
	-[0x80000e14]:fsw fa2, 944(a5)
Current Store : [0x80000e18] : sw a7, 948(a5) -- Store: [0x80003ab8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e28]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:fsw fa2, 952(a5)
Current Store : [0x80000e34] : sw a7, 956(a5) -- Store: [0x80003ac0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e44]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e48]:csrrs a7, fflags, zero
	-[0x80000e4c]:fsw fa2, 960(a5)
Current Store : [0x80000e50] : sw a7, 964(a5) -- Store: [0x80003ac8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e60]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e64]:csrrs a7, fflags, zero
	-[0x80000e68]:fsw fa2, 968(a5)
Current Store : [0x80000e6c] : sw a7, 972(a5) -- Store: [0x80003ad0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e80]:csrrs a7, fflags, zero
	-[0x80000e84]:fsw fa2, 976(a5)
Current Store : [0x80000e88] : sw a7, 980(a5) -- Store: [0x80003ad8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e98]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:fsw fa2, 984(a5)
Current Store : [0x80000ea4] : sw a7, 988(a5) -- Store: [0x80003ae0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000eb8]:csrrs a7, fflags, zero
	-[0x80000ebc]:fsw fa2, 992(a5)
Current Store : [0x80000ec0] : sw a7, 996(a5) -- Store: [0x80003ae8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:fsw fa2, 1000(a5)
Current Store : [0x80000edc] : sw a7, 1004(a5) -- Store: [0x80003af0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000eec]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000ef0]:csrrs a7, fflags, zero
	-[0x80000ef4]:fsw fa2, 1008(a5)
Current Store : [0x80000ef8] : sw a7, 1012(a5) -- Store: [0x80003af8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f08]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f0c]:csrrs a7, fflags, zero
	-[0x80000f10]:fsw fa2, 1016(a5)
Current Store : [0x80000f14] : sw a7, 1020(a5) -- Store: [0x80003b00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsw fa2, 1024(a5)
Current Store : [0x80000f30] : sw a7, 1028(a5) -- Store: [0x80003b08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f40]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:fsw fa2, 1032(a5)
Current Store : [0x80000f4c] : sw a7, 1036(a5) -- Store: [0x80003b10]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f60]:csrrs a7, fflags, zero
	-[0x80000f64]:fsw fa2, 1040(a5)
Current Store : [0x80000f68] : sw a7, 1044(a5) -- Store: [0x80003b18]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f78]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:fsw fa2, 1048(a5)
Current Store : [0x80000f84] : sw a7, 1052(a5) -- Store: [0x80003b20]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f94]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000f98]:csrrs a7, fflags, zero
	-[0x80000f9c]:fsw fa2, 1056(a5)
Current Store : [0x80000fa0] : sw a7, 1060(a5) -- Store: [0x80003b28]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fb4]:csrrs a7, fflags, zero
	-[0x80000fb8]:fsw fa2, 1064(a5)
Current Store : [0x80000fbc] : sw a7, 1068(a5) -- Store: [0x80003b30]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fd0]:csrrs a7, fflags, zero
	-[0x80000fd4]:fsw fa2, 1072(a5)
Current Store : [0x80000fd8] : sw a7, 1076(a5) -- Store: [0x80003b38]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn
	-[0x80000fec]:csrrs a7, fflags, zero
	-[0x80000ff0]:fsw fa2, 1080(a5)
Current Store : [0x80000ff4] : sw a7, 1084(a5) -- Store: [0x80003b40]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsw fa2, 1088(a5)
Current Store : [0x80001010] : sw a7, 1092(a5) -- Store: [0x80003b48]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001020]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsw fa2, 1096(a5)
Current Store : [0x8000102c] : sw a7, 1100(a5) -- Store: [0x80003b50]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000103c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001040]:csrrs a7, fflags, zero
	-[0x80001044]:fsw fa2, 1104(a5)
Current Store : [0x80001048] : sw a7, 1108(a5) -- Store: [0x80003b58]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001058]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000105c]:csrrs a7, fflags, zero
	-[0x80001060]:fsw fa2, 1112(a5)
Current Store : [0x80001064] : sw a7, 1116(a5) -- Store: [0x80003b60]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001074]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001078]:csrrs a7, fflags, zero
	-[0x8000107c]:fsw fa2, 1120(a5)
Current Store : [0x80001080] : sw a7, 1124(a5) -- Store: [0x80003b68]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001090]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001094]:csrrs a7, fflags, zero
	-[0x80001098]:fsw fa2, 1128(a5)
Current Store : [0x8000109c] : sw a7, 1132(a5) -- Store: [0x80003b70]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010ac]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010b0]:csrrs a7, fflags, zero
	-[0x800010b4]:fsw fa2, 1136(a5)
Current Store : [0x800010b8] : sw a7, 1140(a5) -- Store: [0x80003b78]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsw fa2, 1144(a5)
Current Store : [0x800010d4] : sw a7, 1148(a5) -- Store: [0x80003b80]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsw fa2, 1152(a5)
Current Store : [0x800010f0] : sw a7, 1156(a5) -- Store: [0x80003b88]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001100]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001104]:csrrs a7, fflags, zero
	-[0x80001108]:fsw fa2, 1160(a5)
Current Store : [0x8000110c] : sw a7, 1164(a5) -- Store: [0x80003b90]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000111c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001120]:csrrs a7, fflags, zero
	-[0x80001124]:fsw fa2, 1168(a5)
Current Store : [0x80001128] : sw a7, 1172(a5) -- Store: [0x80003b98]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001138]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000113c]:csrrs a7, fflags, zero
	-[0x80001140]:fsw fa2, 1176(a5)
Current Store : [0x80001144] : sw a7, 1180(a5) -- Store: [0x80003ba0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001154]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001158]:csrrs a7, fflags, zero
	-[0x8000115c]:fsw fa2, 1184(a5)
Current Store : [0x80001160] : sw a7, 1188(a5) -- Store: [0x80003ba8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001170]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:fsw fa2, 1192(a5)
Current Store : [0x8000117c] : sw a7, 1196(a5) -- Store: [0x80003bb0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000118c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001190]:csrrs a7, fflags, zero
	-[0x80001194]:fsw fa2, 1200(a5)
Current Store : [0x80001198] : sw a7, 1204(a5) -- Store: [0x80003bb8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011a8]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011ac]:csrrs a7, fflags, zero
	-[0x800011b0]:fsw fa2, 1208(a5)
Current Store : [0x800011b4] : sw a7, 1212(a5) -- Store: [0x80003bc0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsw fa2, 1216(a5)
Current Store : [0x800011d0] : sw a7, 1220(a5) -- Store: [0x80003bc8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011e0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800011e4]:csrrs a7, fflags, zero
	-[0x800011e8]:fsw fa2, 1224(a5)
Current Store : [0x800011ec] : sw a7, 1228(a5) -- Store: [0x80003bd0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011fc]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001200]:csrrs a7, fflags, zero
	-[0x80001204]:fsw fa2, 1232(a5)
Current Store : [0x80001208] : sw a7, 1236(a5) -- Store: [0x80003bd8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001218]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:fsw fa2, 1240(a5)
Current Store : [0x80001224] : sw a7, 1244(a5) -- Store: [0x80003be0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001234]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001238]:csrrs a7, fflags, zero
	-[0x8000123c]:fsw fa2, 1248(a5)
Current Store : [0x80001240] : sw a7, 1252(a5) -- Store: [0x80003be8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001250]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001254]:csrrs a7, fflags, zero
	-[0x80001258]:fsw fa2, 1256(a5)
Current Store : [0x8000125c] : sw a7, 1260(a5) -- Store: [0x80003bf0]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000126c]:fmul.s fa2, fa0, fa1, dyn
	-[0x80001270]:csrrs a7, fflags, zero
	-[0x80001274]:fsw fa2, 1264(a5)
Current Store : [0x80001278] : sw a7, 1268(a5) -- Store: [0x80003bf8]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001288]:fmul.s fa2, fa0, fa1, dyn
	-[0x8000128c]:csrrs a7, fflags, zero
	-[0x80001290]:fsw fa2, 1272(a5)
Current Store : [0x80001294] : sw a7, 1276(a5) -- Store: [0x80003c00]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsw fa2, 1280(a5)
Current Store : [0x800012b0] : sw a7, 1284(a5) -- Store: [0x80003c08]:0x00000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0xf8 and fm1 == 0x0e9cab and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c0]:fmul.s fa2, fa0, fa1, dyn
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:fsw fa2, 1288(a5)
Current Store : [0x800012cc] : sw a7, 1292(a5) -- Store: [0x80003c10]:0x00000005





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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                                          code                                                          |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003704]<br>0xDF56FF76|- opcode : fmul.s<br> - rs1 : f18<br> - rs2 : f18<br> - rd : f18<br> - rs1 == rs2 == rd<br>                                                                                                                              |[0x80000124]:fmul.s fs2, fs2, fs2, dyn<br> [0x80000128]:csrrs a7, fflags, zero<br> [0x8000012c]:fsw fs2, 0(a5)<br>      |
|   2|[0x8000370c]<br>0x6DF56FF7|- rs1 : f23<br> - rs2 : f20<br> - rd : f22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x089f67 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br> |[0x80000140]:fmul.s fs6, fs7, fs4, dyn<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw fs6, 8(a5)<br>      |
|   3|[0x80003714]<br>0x56FF76DF|- rs1 : f15<br> - rs2 : f15<br> - rd : f10<br> - rs1 == rs2 != rd<br>                                                                                                                                                    |[0x8000015c]:fmul.s fa0, fa5, fa5, dyn<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:fsw fa0, 16(a5)<br>     |
|   4|[0x8000371c]<br>0xBFDDB7D5|- rs1 : f4<br> - rs2 : f13<br> - rd : f4<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3ba101 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                          |[0x80000178]:fmul.s ft4, ft4, fa3, dyn<br> [0x8000017c]:csrrs a7, fflags, zero<br> [0x80000180]:fsw ft4, 24(a5)<br>     |
|   5|[0x80003724]<br>0x00000005|- rs1 : f28<br> - rs2 : f17<br> - rd : f17<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x1aa55e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                        |[0x80000194]:fmul.s fa7, ft8, fa7, dyn<br> [0x80000198]:csrrs a7, fflags, zero<br> [0x8000019c]:fsw fa7, 32(a5)<br>     |
|   6|[0x8000372c]<br>0xFEEDBEAD|- rs1 : f7<br> - rs2 : f21<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x2ccc93 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                 |[0x800001b0]:fmul.s ft1, ft7, fs5, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:fsw ft1, 40(a5)<br>     |
|   7|[0x80003734]<br>0x00000000|- rs1 : f31<br> - rs2 : f28<br> - rd : f3<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x123a99 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x800001cc]:fmul.s ft3, ft11, ft8, dyn<br> [0x800001d0]:csrrs a7, fflags, zero<br> [0x800001d4]:fsw ft3, 48(a5)<br>    |
|   8|[0x8000373c]<br>0xEADFEEDB|- rs1 : f14<br> - rs2 : f1<br> - rd : f13<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x0f285b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x800001e8]:fmul.s fa3, fa4, ft1, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fa3, 56(a5)<br>     |
|   9|[0x80003744]<br>0xB7FBB6FA|- rs1 : f22<br> - rs2 : f19<br> - rd : f7<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x38b31c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000204]:fmul.s ft7, fs6, fs3, dyn<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:fsw ft7, 64(a5)<br>     |
|  10|[0x8000374c]<br>0x6FAB7FBB|- rs1 : f5<br> - rs2 : f11<br> - rd : f19<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x076f73 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000220]:fmul.s fs3, ft5, fa1, dyn<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fs3, 72(a5)<br>     |
|  11|[0x80003754]<br>0x800000F8|- rs1 : f8<br> - rs2 : f30<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x086888 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                 |[0x8000023c]:fmul.s ft5, fs0, ft10, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:fsw ft5, 80(a5)<br>    |
|  12|[0x8000375c]<br>0xF76DF56F|- rs1 : f19<br> - rs2 : f6<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x394394 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000258]:fmul.s ft10, fs3, ft6, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:fsw ft10, 88(a5)<br>   |
|  13|[0x80003764]<br>0xEEDBEADF|- rs1 : f6<br> - rs2 : f23<br> - rd : f29<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x0a90e5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000274]:fmul.s ft9, ft6, fs7, dyn<br> [0x80000278]:csrrs a7, fflags, zero<br> [0x8000027c]:fsw ft9, 96(a5)<br>     |
|  14|[0x8000376c]<br>0xB6FAB7FB|- rs1 : f17<br> - rs2 : f24<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x648b04 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                               |[0x80000290]:fmul.s fs7, fa7, fs8, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fs7, 104(a5)<br>    |
|  15|[0x80003774]<br>0xBB6FAB7F|- rs1 : f1<br> - rs2 : f14<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x296a13 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x800002ac]:fmul.s fs11, ft1, fa4, dyn<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:fsw fs11, 112(a5)<br>  |
|  16|[0x8000377c]<br>0x80003004|- rs1 : f21<br> - rs2 : f31<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x5c337b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                               |[0x800002c8]:fmul.s fa6, fs5, ft11, dyn<br> [0x800002cc]:csrrs a7, fflags, zero<br> [0x800002d0]:fsw fa6, 120(a5)<br>   |
|  17|[0x80003784]<br>0x76DF56FF|- rs1 : f10<br> - rs2 : f25<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x3f10c6 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                               |[0x800002e4]:fmul.s fs10, fa0, fs9, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:fsw fs10, 128(a5)<br>  |
|  18|[0x8000378c]<br>0xDDB7D5BF|- rs1 : f16<br> - rs2 : f0<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x070538 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000300]:fmul.s ft8, fa6, ft0, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft8, 136(a5)<br>    |
|  19|[0x80003794]<br>0x80003000|- rs1 : f3<br> - rs2 : f10<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2bd1f5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                 |[0x8000031c]:fmul.s ft6, ft3, fa0, dyn<br> [0x80000320]:csrrs a7, fflags, zero<br> [0x80000324]:fsw ft6, 144(a5)<br>    |
|  20|[0x8000379c]<br>0x5BFDDB7D|- rs1 : f12<br> - rs2 : f3<br> - rd : f8<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x09599c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                 |[0x80000338]:fmul.s fs0, fa2, ft3, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw fs0, 152(a5)<br>    |
|  21|[0x800037a4]<br>0xAB7FBB6F|- rs1 : f27<br> - rs2 : f9<br> - rd : f11<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x13b178 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                |[0x80000354]:fmul.s fa1, fs11, fs1, dyn<br> [0x80000358]:csrrs a7, fflags, zero<br> [0x8000035c]:fsw fa1, 160(a5)<br>   |
|  22|[0x800037ac]<br>0x00000000|- rs1 : f13<br> - rs2 : f5<br> - rd : f0<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x366362 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x33a925 and rm_val == 3  #nosat<br>                                                 |[0x80000370]:fmul.s ft0, fa3, ft5, dyn<br> [0x80000374]:csrrs a7, fflags, zero<br> [0x80000378]:fsw ft0, 168(a5)<br>    |
|  23|[0x800037b4]<br>0x00006000|- rs1 : f29<br> - rs2 : f16<br> - rd : f2<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x2c23d1 and fs2 == 0 and fe2 == 0x2d and fm2 == 0x3e5b55 and rm_val == 3  #nosat<br>                                                |[0x8000038c]:fmul.s ft2, ft9, fa6, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:fsw ft2, 176(a5)<br>    |
|  24|[0x800037bc]<br>0xADFEEDBE|- rs1 : f20<br> - rs2 : f27<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x28844c and fs2 == 0 and fe2 == 0x2b and fm2 == 0x427310 and rm_val == 3  #nosat<br>                                                |[0x800003a8]:fmul.s fs1, fs4, fs11, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:fsw fs1, 184(a5)<br>   |
|  25|[0x800037c4]<br>0xEDBEADFE|- rs1 : f2<br> - rs2 : f8<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x00c7d5 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x7e72c1 and rm_val == 3  #nosat<br>                                                 |[0x800003c4]:fmul.s fs9, ft2, fs0, dyn<br> [0x800003c8]:csrrs a7, fflags, zero<br> [0x800003cc]:fsw fs9, 192(a5)<br>    |
|  26|[0x800037cc]<br>0xD5BFDDB7|- rs1 : f0<br> - rs2 : f26<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xfc and fm1 == 0x639f2c and fs2 == 0 and fe2 == 0x2c and fm2 == 0x0ff547 and rm_val == 3  #nosat<br>                                                |[0x800003e0]:fmul.s fa2, ft0, fs10, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fa2, 200(a5)<br>   |
|  27|[0x800037d4]<br>0x80003704|- rs1 : f24<br> - rs2 : f22<br> - rd : f15<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x78dd0e and fs2 == 0 and fe2 == 0x2b and fm2 == 0x03abaa and rm_val == 3  #nosat<br>                                               |[0x800003fc]:fmul.s fa5, fs8, fs6, dyn<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:fsw fa5, 208(a5)<br>    |
|  28|[0x800037dc]<br>0xDBEADFEE|- rs1 : f25<br> - rs2 : f29<br> - rd : f21<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x2befa1 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x3e951d and rm_val == 3  #nosat<br>                                               |[0x80000418]:fmul.s fs5, fs9, ft9, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsw fs5, 216(a5)<br>    |
|  29|[0x800037e4]<br>0xF56FF76D|- rs1 : f11<br> - rs2 : f7<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xfa and fm1 == 0x4d54a3 and fs2 == 0 and fe2 == 0x2e and fm2 == 0x1f9626 and rm_val == 3  #nosat<br>                                                |[0x80000434]:fmul.s fa4, fa1, ft7, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:fsw fa4, 224(a5)<br>    |
|  30|[0x800037ec]<br>0xFBB6FAB7|- rs1 : f26<br> - rs2 : f2<br> - rd : f31<br> - fs1 == 0 and fe1 == 0xfb and fm1 == 0x61068d and fs2 == 0 and fe2 == 0x2d and fm2 == 0x119e76 and rm_val == 3  #nosat<br>                                                |[0x80000450]:fmul.s ft11, fs10, ft2, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:fsw ft11, 232(a5)<br> |
|  31|[0x800037f4]<br>0xB7D5BFDD|- rs1 : f30<br> - rs2 : f12<br> - rd : f20<br> - fs1 == 0 and fe1 == 0xfd and fm1 == 0x08b9d9 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x6fa96f and rm_val == 3  #nosat<br>                                               |[0x8000046c]:fmul.s fs4, ft10, fa2, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsw fs4, 240(a5)<br>   |
|  32|[0x800037fc]<br>0xDB7D5BFD|- rs1 : f9<br> - rs2 : f4<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d071f and fs2 == 0 and fe2 == 0x2a and fm2 == 0x50ad28 and rm_val == 3  #nosat<br>                                                 |[0x80000488]:fmul.s fs8, fs1, ft4, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fs8, 248(a5)<br>    |
|  33|[0x80003804]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x305e0d and fs2 == 0 and fe2 == 0x2a and fm2 == 0x39cb42 and rm_val == 3  #nosat<br>                                                                                              |[0x800004a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004a8]:csrrs a7, fflags, zero<br> [0x800004ac]:fsw fa2, 256(a5)<br>    |
|  34|[0x8000380c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x243814 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x4789d0 and rm_val == 3  #nosat<br>                                                                                              |[0x800004c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw fa2, 264(a5)<br>    |
|  35|[0x80003814]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3bb1f5 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x2e94ba and rm_val == 3  #nosat<br>                                                                                              |[0x800004dc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:fsw fa2, 272(a5)<br>    |
|  36|[0x8000381c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x63ea1b and fs2 == 0 and fe2 == 0x2c and fm2 == 0x0fc5f1 and rm_val == 3  #nosat<br>                                                                                              |[0x800004f8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:fsw fa2, 280(a5)<br>    |
|  37|[0x80003824]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x32f44f and fs2 == 0 and fe2 == 0x2a and fm2 == 0x371bb0 and rm_val == 3  #nosat<br>                                                                                              |[0x80000514]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsw fa2, 288(a5)<br>    |
|  38|[0x8000382c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x374d41 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x32c3eb and rm_val == 3  #nosat<br>                                                                                              |[0x80000530]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw fa2, 296(a5)<br>    |
|  39|[0x80003834]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4a19c2 and fs2 == 0 and fe2 == 0x2b and fm2 == 0x222315 and rm_val == 3  #nosat<br>                                                                                              |[0x8000054c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000550]:csrrs a7, fflags, zero<br> [0x80000554]:fsw fa2, 304(a5)<br>    |
|  40|[0x8000383c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x195ac9 and fs2 == 0 and fe2 == 0x2a and fm2 == 0x55acb7 and rm_val == 3  #nosat<br>                                                                                              |[0x80000568]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsw fa2, 312(a5)<br>    |
|  41|[0x80003844]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x094fff and fs2 == 0 and fe2 == 0x2b and fm2 == 0x6ea35e and rm_val == 3  #nosat<br>                                                                                              |[0x80000584]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:fsw fa2, 320(a5)<br>    |
|  42|[0x8000384c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0aea5e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800005a0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa2, 328(a5)<br>    |
|  43|[0x80003854]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7d1e07 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800005bc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsw fa2, 336(a5)<br>    |
|  44|[0x8000385c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x04fd41 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800005d8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw fa2, 344(a5)<br>    |
|  45|[0x80003864]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x762408 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800005f4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800005f8]:csrrs a7, fflags, zero<br> [0x800005fc]:fsw fa2, 352(a5)<br>    |
|  46|[0x8000386c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x775433 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000610]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsw fa2, 360(a5)<br>    |
|  47|[0x80003874]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x3af9fa and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000062c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000630]:csrrs a7, fflags, zero<br> [0x80000634]:fsw fa2, 368(a5)<br>    |
|  48|[0x8000387c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10affc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000648]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:fsw fa2, 376(a5)<br>    |
|  49|[0x80003884]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x1671a2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000664]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsw fa2, 384(a5)<br>    |
|  50|[0x8000388c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x13bb57 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000680]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw fa2, 392(a5)<br>    |
|  51|[0x80003894]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x6b27f7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000069c]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:fsw fa2, 400(a5)<br>    |
|  52|[0x8000389c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x0f31c4 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800006b8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsw fa2, 408(a5)<br>    |
|  53|[0x800038a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x62ae46 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800006d4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006d8]:csrrs a7, fflags, zero<br> [0x800006dc]:fsw fa2, 416(a5)<br>    |
|  54|[0x800038ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x1fef00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800006f0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:fsw fa2, 424(a5)<br>    |
|  55|[0x800038b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x1db2ee and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000070c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000710]:csrrs a7, fflags, zero<br> [0x80000714]:fsw fa2, 432(a5)<br>    |
|  56|[0x800038bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x41315c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000728]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw fa2, 440(a5)<br>    |
|  57|[0x800038c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2165be and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000744]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000748]:csrrs a7, fflags, zero<br> [0x8000074c]:fsw fa2, 448(a5)<br>    |
|  58|[0x800038cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x1b6277 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000760]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsw fa2, 456(a5)<br>    |
|  59|[0x800038d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x6a262c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000077c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000780]:csrrs a7, fflags, zero<br> [0x80000784]:fsw fa2, 464(a5)<br>    |
|  60|[0x800038dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3cd606 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000798]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:fsw fa2, 472(a5)<br>    |
|  61|[0x800038e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6a6f9b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800007b4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007b8]:csrrs a7, fflags, zero<br> [0x800007bc]:fsw fa2, 480(a5)<br>    |
|  62|[0x800038ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x476063 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800007d0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw fa2, 488(a5)<br>    |
|  63|[0x800038f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1a1c1b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800007ec]:fmul.s fa2, fa0, fa1, dyn<br> [0x800007f0]:csrrs a7, fflags, zero<br> [0x800007f4]:fsw fa2, 496(a5)<br>    |
|  64|[0x800038fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x0b2e4b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000808]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsw fa2, 504(a5)<br>    |
|  65|[0x80003904]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2084ae and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000824]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000828]:csrrs a7, fflags, zero<br> [0x8000082c]:fsw fa2, 512(a5)<br>    |
|  66|[0x8000390c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f221f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000840]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsw fa2, 520(a5)<br>    |
|  67|[0x80003914]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x268dc5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000085c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000860]:csrrs a7, fflags, zero<br> [0x80000864]:fsw fa2, 528(a5)<br>    |
|  68|[0x8000391c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38eb1b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000878]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:fsw fa2, 536(a5)<br>    |
|  69|[0x80003924]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x232951 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000894]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000898]:csrrs a7, fflags, zero<br> [0x8000089c]:fsw fa2, 544(a5)<br>    |
|  70|[0x8000392c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x6dde9e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800008b0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsw fa2, 552(a5)<br>    |
|  71|[0x80003934]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x47f677 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800008cc]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008d0]:csrrs a7, fflags, zero<br> [0x800008d4]:fsw fa2, 560(a5)<br>    |
|  72|[0x8000393c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x31cfbf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800008e8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:fsw fa2, 568(a5)<br>    |
|  73|[0x80003944]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x19405f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000904]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000908]:csrrs a7, fflags, zero<br> [0x8000090c]:fsw fa2, 576(a5)<br>    |
|  74|[0x8000394c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6b9 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000920]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsw fa2, 584(a5)<br>    |
|  75|[0x80003954]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x1cf370 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000093c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000940]:csrrs a7, fflags, zero<br> [0x80000944]:fsw fa2, 592(a5)<br>    |
|  76|[0x8000395c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf6 and fm1 == 0x6d25cb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000958]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsw fa2, 600(a5)<br>    |
|  77|[0x80003964]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x227041 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000974]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000978]:csrrs a7, fflags, zero<br> [0x8000097c]:fsw fa2, 608(a5)<br>    |
|  78|[0x8000396c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x083942 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000990]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:fsw fa2, 616(a5)<br>    |
|  79|[0x80003974]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6fadd2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800009ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009b0]:csrrs a7, fflags, zero<br> [0x800009b4]:fsw fa2, 624(a5)<br>    |
|  80|[0x8000397c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x409980 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800009c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009cc]:csrrs a7, fflags, zero<br> [0x800009d0]:fsw fa2, 632(a5)<br>    |
|  81|[0x80003984]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x328a37 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800009e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800009e8]:csrrs a7, fflags, zero<br> [0x800009ec]:fsw fa2, 640(a5)<br>    |
|  82|[0x8000398c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x335a5f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a00]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsw fa2, 648(a5)<br>    |
|  83|[0x80003994]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x432be8 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a1c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a20]:csrrs a7, fflags, zero<br> [0x80000a24]:fsw fa2, 656(a5)<br>    |
|  84|[0x8000399c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x134261 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a38]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:fsw fa2, 664(a5)<br>    |
|  85|[0x800039a4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x4e2b68 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a54]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a58]:csrrs a7, fflags, zero<br> [0x80000a5c]:fsw fa2, 672(a5)<br>    |
|  86|[0x800039ac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x57ea20 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a70]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a74]:csrrs a7, fflags, zero<br> [0x80000a78]:fsw fa2, 680(a5)<br>    |
|  87|[0x800039b4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x5d9799 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a8c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000a90]:csrrs a7, fflags, zero<br> [0x80000a94]:fsw fa2, 688(a5)<br>    |
|  88|[0x800039bc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68bbe2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000aa8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsw fa2, 696(a5)<br>    |
|  89|[0x800039c4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3844b4 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ac4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ac8]:csrrs a7, fflags, zero<br> [0x80000acc]:fsw fa2, 704(a5)<br>    |
|  90|[0x800039cc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x45af29 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ae0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsw fa2, 712(a5)<br>    |
|  91|[0x800039d4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x609f7b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000afc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b00]:csrrs a7, fflags, zero<br> [0x80000b04]:fsw fa2, 720(a5)<br>    |
|  92|[0x800039dc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x27f459 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b18]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b1c]:csrrs a7, fflags, zero<br> [0x80000b20]:fsw fa2, 728(a5)<br>    |
|  93|[0x800039e4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x1cbf56 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b34]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b38]:csrrs a7, fflags, zero<br> [0x80000b3c]:fsw fa2, 736(a5)<br>    |
|  94|[0x800039ec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7dc215 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b50]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:fsw fa2, 744(a5)<br>    |
|  95|[0x800039f4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x358c1d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b6c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b70]:csrrs a7, fflags, zero<br> [0x80000b74]:fsw fa2, 752(a5)<br>    |
|  96|[0x800039fc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2596ee and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b88]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:fsw fa2, 760(a5)<br>    |
|  97|[0x80003a04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2d3017 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ba4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ba8]:csrrs a7, fflags, zero<br> [0x80000bac]:fsw fa2, 768(a5)<br>    |
|  98|[0x80003a0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1310f3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000bc0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsw fa2, 776(a5)<br>    |
|  99|[0x80003a14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x3d4d49 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000bdc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000be0]:csrrs a7, fflags, zero<br> [0x80000be4]:fsw fa2, 784(a5)<br>    |
| 100|[0x80003a1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x2dbe96 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000bf8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:fsw fa2, 792(a5)<br>    |
| 101|[0x80003a24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6c407f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c14]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c18]:csrrs a7, fflags, zero<br> [0x80000c1c]:fsw fa2, 800(a5)<br>    |
| 102|[0x80003a2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5ed631 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c30]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:fsw fa2, 808(a5)<br>    |
| 103|[0x80003a34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3e148d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c4c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c50]:csrrs a7, fflags, zero<br> [0x80000c54]:fsw fa2, 816(a5)<br>    |
| 104|[0x80003a3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x140eaa and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c68]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c6c]:csrrs a7, fflags, zero<br> [0x80000c70]:fsw fa2, 824(a5)<br>    |
| 105|[0x80003a44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x0d1c84 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c84]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000c88]:csrrs a7, fflags, zero<br> [0x80000c8c]:fsw fa2, 832(a5)<br>    |
| 106|[0x80003a4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1c29fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ca0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsw fa2, 840(a5)<br>    |
| 107|[0x80003a54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x01ea00 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cbc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cc0]:csrrs a7, fflags, zero<br> [0x80000cc4]:fsw fa2, 848(a5)<br>    |
| 108|[0x80003a5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x1bb7c9 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cd8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:fsw fa2, 856(a5)<br>    |
| 109|[0x80003a64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x7eadb5 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cf4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000cf8]:csrrs a7, fflags, zero<br> [0x80000cfc]:fsw fa2, 864(a5)<br>    |
| 110|[0x80003a6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x04012d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d10]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d14]:csrrs a7, fflags, zero<br> [0x80000d18]:fsw fa2, 872(a5)<br>    |
| 111|[0x80003a74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x43d400 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d2c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d30]:csrrs a7, fflags, zero<br> [0x80000d34]:fsw fa2, 880(a5)<br>    |
| 112|[0x80003a7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x22667e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d48]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsw fa2, 888(a5)<br>    |
| 113|[0x80003a84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x21a5d7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d64]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d68]:csrrs a7, fflags, zero<br> [0x80000d6c]:fsw fa2, 896(a5)<br>    |
| 114|[0x80003a8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x23f501 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d80]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsw fa2, 904(a5)<br>    |
| 115|[0x80003a94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfb and fm1 == 0x23397b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d9c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000da0]:csrrs a7, fflags, zero<br> [0x80000da4]:fsw fa2, 912(a5)<br>    |
| 116|[0x80003a9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2e0a9e and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000db8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dbc]:csrrs a7, fflags, zero<br> [0x80000dc0]:fsw fa2, 920(a5)<br>    |
| 117|[0x80003aa4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7ab7a7 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000dd4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000dd8]:csrrs a7, fflags, zero<br> [0x80000ddc]:fsw fa2, 928(a5)<br>    |
| 118|[0x80003aac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0eff8f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000df0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:fsw fa2, 936(a5)<br>    |
| 119|[0x80003ab4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e44fd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e0c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e10]:csrrs a7, fflags, zero<br> [0x80000e14]:fsw fa2, 944(a5)<br>    |
| 120|[0x80003abc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x1d844c and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e28]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:fsw fa2, 952(a5)<br>    |
| 121|[0x80003ac4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x6f5572 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e44]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e48]:csrrs a7, fflags, zero<br> [0x80000e4c]:fsw fa2, 960(a5)<br>    |
| 122|[0x80003acc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4490fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e60]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e64]:csrrs a7, fflags, zero<br> [0x80000e68]:fsw fa2, 968(a5)<br>    |
| 123|[0x80003ad4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x6f7f16 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e7c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e80]:csrrs a7, fflags, zero<br> [0x80000e84]:fsw fa2, 976(a5)<br>    |
| 124|[0x80003adc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x7a24a3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e98]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:fsw fa2, 984(a5)<br>    |
| 125|[0x80003ae4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x41a1ac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000eb4]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000eb8]:csrrs a7, fflags, zero<br> [0x80000ebc]:fsw fa2, 992(a5)<br>    |
| 126|[0x80003aec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x37d03d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ed0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:fsw fa2, 1000(a5)<br>   |
| 127|[0x80003af4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2efc0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000eec]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000ef0]:csrrs a7, fflags, zero<br> [0x80000ef4]:fsw fa2, 1008(a5)<br>   |
| 128|[0x80003afc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2e5316 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f08]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f0c]:csrrs a7, fflags, zero<br> [0x80000f10]:fsw fa2, 1016(a5)<br>   |
| 129|[0x80003b04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x065158 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f24]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsw fa2, 1024(a5)<br>   |
| 130|[0x80003b0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x2a59d1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f40]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:fsw fa2, 1032(a5)<br>   |
| 131|[0x80003b14]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0af6e3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f5c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f60]:csrrs a7, fflags, zero<br> [0x80000f64]:fsw fa2, 1040(a5)<br>   |
| 132|[0x80003b1c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x59ffad and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f78]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:fsw fa2, 1048(a5)<br>   |
| 133|[0x80003b24]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2cbe14 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f94]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000f98]:csrrs a7, fflags, zero<br> [0x80000f9c]:fsw fa2, 1056(a5)<br>   |
| 134|[0x80003b2c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07e829 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fb0]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fb4]:csrrs a7, fflags, zero<br> [0x80000fb8]:fsw fa2, 1064(a5)<br>   |
| 135|[0x80003b34]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x4052ad and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fcc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fd0]:csrrs a7, fflags, zero<br> [0x80000fd4]:fsw fa2, 1072(a5)<br>   |
| 136|[0x80003b3c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3c2a53 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fe8]:fmul.s fa2, fa0, fa1, dyn<br> [0x80000fec]:csrrs a7, fflags, zero<br> [0x80000ff0]:fsw fa2, 1080(a5)<br>   |
| 137|[0x80003b44]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x312e1f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001004]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsw fa2, 1088(a5)<br>   |
| 138|[0x80003b4c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x10c4ce and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001020]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsw fa2, 1096(a5)<br>   |
| 139|[0x80003b54]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x38af5a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000103c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001040]:csrrs a7, fflags, zero<br> [0x80001044]:fsw fa2, 1104(a5)<br>   |
| 140|[0x80003b5c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x07daac and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001058]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000105c]:csrrs a7, fflags, zero<br> [0x80001060]:fsw fa2, 1112(a5)<br>   |
| 141|[0x80003b64]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x127958 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001074]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001078]:csrrs a7, fflags, zero<br> [0x8000107c]:fsw fa2, 1120(a5)<br>   |
| 142|[0x80003b6c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0d014f and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001090]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001094]:csrrs a7, fflags, zero<br> [0x80001098]:fsw fa2, 1128(a5)<br>   |
| 143|[0x80003b74]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x2b90d3 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800010ac]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010b0]:csrrs a7, fflags, zero<br> [0x800010b4]:fsw fa2, 1136(a5)<br>   |
| 144|[0x80003b7c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x018006 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800010c8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsw fa2, 1144(a5)<br>   |
| 145|[0x80003b84]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x43ed0a and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800010e4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsw fa2, 1152(a5)<br>   |
| 146|[0x80003b8c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x79b5b2 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001100]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001104]:csrrs a7, fflags, zero<br> [0x80001108]:fsw fa2, 1160(a5)<br>   |
| 147|[0x80003b94]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfc and fm1 == 0x3557bf and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000111c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001120]:csrrs a7, fflags, zero<br> [0x80001124]:fsw fa2, 1168(a5)<br>   |
| 148|[0x80003b9c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x49e399 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001138]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000113c]:csrrs a7, fflags, zero<br> [0x80001140]:fsw fa2, 1176(a5)<br>   |
| 149|[0x80003ba4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x11ecfc and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001154]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001158]:csrrs a7, fflags, zero<br> [0x8000115c]:fsw fa2, 1184(a5)<br>   |
| 150|[0x80003bac]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x3284ec and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001170]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:fsw fa2, 1192(a5)<br>   |
| 151|[0x80003bb4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x5cb815 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000118c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001190]:csrrs a7, fflags, zero<br> [0x80001194]:fsw fa2, 1200(a5)<br>   |
| 152|[0x80003bbc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x2ad2f1 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800011a8]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011ac]:csrrs a7, fflags, zero<br> [0x800011b0]:fsw fa2, 1208(a5)<br>   |
| 153|[0x80003bc4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x3648af and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800011c4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsw fa2, 1216(a5)<br>   |
| 154|[0x80003bcc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x0ad17d and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800011e0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800011e4]:csrrs a7, fflags, zero<br> [0x800011e8]:fsw fa2, 1224(a5)<br>   |
| 155|[0x80003bd4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x25608b and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800011fc]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001200]:csrrs a7, fflags, zero<br> [0x80001204]:fsw fa2, 1232(a5)<br>   |
| 156|[0x80003bdc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x5f2ead and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001218]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:fsw fa2, 1240(a5)<br>   |
| 157|[0x80003be4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfd and fm1 == 0x68aebb and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001234]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001238]:csrrs a7, fflags, zero<br> [0x8000123c]:fsw fa2, 1248(a5)<br>   |
| 158|[0x80003bec]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x009696 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001250]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001254]:csrrs a7, fflags, zero<br> [0x80001258]:fsw fa2, 1256(a5)<br>   |
| 159|[0x80003bf4]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x206a70 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x8000126c]:fmul.s fa2, fa0, fa1, dyn<br> [0x80001270]:csrrs a7, fflags, zero<br> [0x80001274]:fsw fa2, 1264(a5)<br>   |
| 160|[0x80003bfc]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfa and fm1 == 0x2db9cd and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x80001288]:fmul.s fa2, fa0, fa1, dyn<br> [0x8000128c]:csrrs a7, fflags, zero<br> [0x80001290]:fsw fa2, 1272(a5)<br>   |
| 161|[0x80003c04]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xfe and fm1 == 0x378efe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800012a4]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsw fa2, 1280(a5)<br>   |
| 162|[0x80003c0c]<br>0xD5BFDDB7|- fs1 == 0 and fe1 == 0xf8 and fm1 == 0x0e9cab and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000000 and rm_val == 3  #nosat<br>                                                                                              |[0x800012c0]:fmul.s fa2, fa0, fa1, dyn<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:fsw fa2, 1288(a5)<br>   |
