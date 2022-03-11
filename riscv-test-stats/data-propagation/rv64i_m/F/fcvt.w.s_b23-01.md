
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000650')]      |
| SIG_REGION                | [('0x80002210', '0x800024f0', '92 dwords')]      |
| COV_LABELS                | fcvt.w.s_b23      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.w.s/riscof_work/fcvt.w.s_b23-01.S/ref.S    |
| Total Number of coverpoints| 114     |
| Total Coverpoints Hit     | 110      |
| Total Signature Updates   | 97      |
| STAT1                     | 45      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 46     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000638]:fcvt.w.s t6, ft11, dyn
      [0x8000063c]:csrrs a7, fflags, zero
      [0x80000640]:sw t6, 576(a5)
 -- Signature Address: 0x800024e0 Data: 0x000000007FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.w.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x9', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.w.s s1, ft11, dyn
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw s1, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002214]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fcvt.w.s zero, fs6, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw zero, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002224]:0x0000000000000010




Last Coverpoint : ['rd : x26', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000200]:fcvt.w.s s10, fs8, dyn
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw s10, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002234]:0x0000000000000010




Last Coverpoint : ['rd : x17', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000224]:fcvt.w.s a7, ft2, dyn
	-[0x80000228]:csrrs s5, fflags, zero
	-[0x8000022c]:sw a7, 0(s3)
Current Store : [0x80000230] : sw s5, 4(s3) -- Store: [0x80002244]:0x0000000000000010




Last Coverpoint : ['rd : x15', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fcvt.w.s a5, fs0, dyn
	-[0x80000240]:csrrs s5, fflags, zero
	-[0x80000244]:sw a5, 16(s3)
Current Store : [0x80000248] : sw s5, 20(s3) -- Store: [0x80002254]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000260]:fcvt.w.s s6, fs10, dyn
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw s6, 0(a5)
Current Store : [0x8000026c] : sw a7, 4(a5) -- Store: [0x80002264]:0x0000000000000010




Last Coverpoint : ['rd : x12', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000278]:fcvt.w.s a2, fs5, dyn
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw a2, 16(a5)
Current Store : [0x80000284] : sw a7, 20(a5) -- Store: [0x80002274]:0x0000000000000010




Last Coverpoint : ['rd : x18', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000290]:fcvt.w.s s2, ft1, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw s2, 32(a5)
Current Store : [0x8000029c] : sw a7, 36(a5) -- Store: [0x80002284]:0x0000000000000010




Last Coverpoint : ['rd : x16', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002b4]:fcvt.w.s a6, fa4, dyn
	-[0x800002b8]:csrrs s5, fflags, zero
	-[0x800002bc]:sw a6, 0(s3)
Current Store : [0x800002c0] : sw s5, 4(s3) -- Store: [0x80002294]:0x0000000000000010




Last Coverpoint : ['rd : x3', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002d8]:fcvt.w.s gp, fs2, dyn
	-[0x800002dc]:csrrs a7, fflags, zero
	-[0x800002e0]:sw gp, 0(a5)
Current Store : [0x800002e4] : sw a7, 4(a5) -- Store: [0x800022a4]:0x0000000000000010




Last Coverpoint : ['rd : x5', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002f0]:fcvt.w.s t0, fa3, dyn
	-[0x800002f4]:csrrs a7, fflags, zero
	-[0x800002f8]:sw t0, 16(a5)
Current Store : [0x800002fc] : sw a7, 20(a5) -- Store: [0x800022b4]:0x0000000000000010




Last Coverpoint : ['rd : x29', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000308]:fcvt.w.s t4, ft8, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw t4, 32(a5)
Current Store : [0x80000314] : sw a7, 36(a5) -- Store: [0x800022c4]:0x0000000000000010




Last Coverpoint : ['rd : x24', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000320]:fcvt.w.s s8, fa1, dyn
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw s8, 48(a5)
Current Store : [0x8000032c] : sw a7, 52(a5) -- Store: [0x800022d4]:0x0000000000000010




Last Coverpoint : ['rd : x28', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000338]:fcvt.w.s t3, ft3, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:sw t3, 64(a5)
Current Store : [0x80000344] : sw a7, 68(a5) -- Store: [0x800022e4]:0x0000000000000010




Last Coverpoint : ['rd : x4', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000350]:fcvt.w.s tp, ft6, dyn
	-[0x80000354]:csrrs a7, fflags, zero
	-[0x80000358]:sw tp, 80(a5)
Current Store : [0x8000035c] : sw a7, 84(a5) -- Store: [0x800022f4]:0x0000000000000010




Last Coverpoint : ['rd : x27', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000368]:fcvt.w.s s11, fs4, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw s11, 96(a5)
Current Store : [0x80000374] : sw a7, 100(a5) -- Store: [0x80002304]:0x0000000000000010




Last Coverpoint : ['rd : x7', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000380]:fcvt.w.s t2, fa0, dyn
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:sw t2, 112(a5)
Current Store : [0x8000038c] : sw a7, 116(a5) -- Store: [0x80002314]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000398]:fcvt.w.s t5, fs3, dyn
	-[0x8000039c]:csrrs a7, fflags, zero
	-[0x800003a0]:sw t5, 128(a5)
Current Store : [0x800003a4] : sw a7, 132(a5) -- Store: [0x80002324]:0x0000000000000010




Last Coverpoint : ['rd : x21', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003b0]:fcvt.w.s s5, fa5, dyn
	-[0x800003b4]:csrrs a7, fflags, zero
	-[0x800003b8]:sw s5, 144(a5)
Current Store : [0x800003bc] : sw a7, 148(a5) -- Store: [0x80002334]:0x0000000000000010




Last Coverpoint : ['rd : x23', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fcvt.w.s s7, fs11, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:sw s7, 160(a5)
Current Store : [0x800003d4] : sw a7, 164(a5) -- Store: [0x80002344]:0x0000000000000010




Last Coverpoint : ['rd : x2', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fcvt.w.s sp, fa2, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:sw sp, 176(a5)
Current Store : [0x800003ec] : sw a7, 180(a5) -- Store: [0x80002354]:0x0000000000000010




Last Coverpoint : ['rd : x20', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003f8]:fcvt.w.s s4, fs1, dyn
	-[0x800003fc]:csrrs a7, fflags, zero
	-[0x80000400]:sw s4, 192(a5)
Current Store : [0x80000404] : sw a7, 196(a5) -- Store: [0x80002364]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000410]:fcvt.w.s s9, ft4, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:sw s9, 208(a5)
Current Store : [0x8000041c] : sw a7, 212(a5) -- Store: [0x80002374]:0x0000000000000010




Last Coverpoint : ['rd : x8', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000428]:fcvt.w.s fp, ft7, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw fp, 224(a5)
Current Store : [0x80000434] : sw a7, 228(a5) -- Store: [0x80002384]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000440]:fcvt.w.s t1, ft10, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw t1, 240(a5)
Current Store : [0x8000044c] : sw a7, 244(a5) -- Store: [0x80002394]:0x0000000000000010




Last Coverpoint : ['rd : x31', 'rs1 : f25', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000458]:fcvt.w.s t6, fs9, dyn
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw t6, 256(a5)
Current Store : [0x80000464] : sw a7, 260(a5) -- Store: [0x800023a4]:0x0000000000000010




Last Coverpoint : ['rd : x13', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000470]:fcvt.w.s a3, ft5, dyn
	-[0x80000474]:csrrs a7, fflags, zero
	-[0x80000478]:sw a3, 272(a5)
Current Store : [0x8000047c] : sw a7, 276(a5) -- Store: [0x800023b4]:0x0000000000000010




Last Coverpoint : ['rd : x19', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000488]:fcvt.w.s s3, ft9, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:sw s3, 288(a5)
Current Store : [0x80000494] : sw a7, 292(a5) -- Store: [0x800023c4]:0x0000000000000010




Last Coverpoint : ['rd : x10', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fcvt.w.s a0, fa6, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw a0, 304(a5)
Current Store : [0x800004ac] : sw a7, 308(a5) -- Store: [0x800023d4]:0x0000000000000010




Last Coverpoint : ['rd : x14', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fcvt.w.s a4, fa7, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:sw a4, 320(a5)
Current Store : [0x800004c4] : sw a7, 324(a5) -- Store: [0x800023e4]:0x0000000000000010




Last Coverpoint : ['rd : x11', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d0]:fcvt.w.s a1, fs7, dyn
	-[0x800004d4]:csrrs a7, fflags, zero
	-[0x800004d8]:sw a1, 336(a5)
Current Store : [0x800004dc] : sw a7, 340(a5) -- Store: [0x800023f4]:0x0000000000000010




Last Coverpoint : ['rd : x1', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fcvt.w.s ra, ft0, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:sw ra, 352(a5)
Current Store : [0x800004f4] : sw a7, 356(a5) -- Store: [0x80002404]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000500]:fcvt.w.s t6, ft11, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:sw t6, 368(a5)
Current Store : [0x8000050c] : sw a7, 372(a5) -- Store: [0x80002414]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000518]:fcvt.w.s t6, ft11, dyn
	-[0x8000051c]:csrrs a7, fflags, zero
	-[0x80000520]:sw t6, 384(a5)
Current Store : [0x80000524] : sw a7, 388(a5) -- Store: [0x80002424]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000530]:fcvt.w.s t6, ft11, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:sw t6, 400(a5)
Current Store : [0x8000053c] : sw a7, 404(a5) -- Store: [0x80002434]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000548]:fcvt.w.s t6, ft11, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:sw t6, 416(a5)
Current Store : [0x80000554] : sw a7, 420(a5) -- Store: [0x80002444]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000560]:fcvt.w.s t6, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:sw t6, 432(a5)
Current Store : [0x8000056c] : sw a7, 436(a5) -- Store: [0x80002454]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000578]:fcvt.w.s t6, ft11, dyn
	-[0x8000057c]:csrrs a7, fflags, zero
	-[0x80000580]:sw t6, 448(a5)
Current Store : [0x80000584] : sw a7, 452(a5) -- Store: [0x80002464]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000590]:fcvt.w.s t6, ft11, dyn
	-[0x80000594]:csrrs a7, fflags, zero
	-[0x80000598]:sw t6, 464(a5)
Current Store : [0x8000059c] : sw a7, 468(a5) -- Store: [0x80002474]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fcvt.w.s t6, ft11, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:sw t6, 480(a5)
Current Store : [0x800005b4] : sw a7, 484(a5) -- Store: [0x80002484]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fcvt.w.s t6, ft11, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:sw t6, 496(a5)
Current Store : [0x800005cc] : sw a7, 500(a5) -- Store: [0x80002494]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fcvt.w.s t6, ft11, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:sw t6, 512(a5)
Current Store : [0x800005e4] : sw a7, 516(a5) -- Store: [0x800024a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005f0]:fcvt.w.s t6, ft11, dyn
	-[0x800005f4]:csrrs a7, fflags, zero
	-[0x800005f8]:sw t6, 528(a5)
Current Store : [0x800005fc] : sw a7, 532(a5) -- Store: [0x800024b4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000608]:fcvt.w.s t6, ft11, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:sw t6, 544(a5)
Current Store : [0x80000614] : sw a7, 548(a5) -- Store: [0x800024c4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000620]:fcvt.w.s t6, ft11, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:sw t6, 560(a5)
Current Store : [0x8000062c] : sw a7, 564(a5) -- Store: [0x800024d4]:0x0000000000000010




Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000638]:fcvt.w.s t6, ft11, dyn
	-[0x8000063c]:csrrs a7, fflags, zero
	-[0x80000640]:sw t6, 576(a5)
Current Store : [0x80000644] : sw a7, 580(a5) -- Store: [0x800024e4]:0x0000000000000010





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

|s.no|            signature             |                                                           coverpoints                                                           |                                                       code                                                       |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000007FFFFE00|- opcode : fcvt.w.s<br> - rd : x9<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.w.s s1, ft11, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw s1, 0(a5)<br>     |
|   2|[0x80002220]<br>0x0000000000000000|- rd : x0<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat<br>                         |[0x800001e8]:fcvt.w.s zero, fs6, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw zero, 16(a5)<br> |
|   3|[0x80002230]<br>0x000000007FFFFFFF|- rd : x26<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat<br>                        |[0x80000200]:fcvt.w.s s10, fs8, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw s10, 32(a5)<br>   |
|   4|[0x80002240]<br>0x000000007FFFFFFF|- rd : x17<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat<br>                         |[0x80000224]:fcvt.w.s a7, ft2, dyn<br> [0x80000228]:csrrs s5, fflags, zero<br> [0x8000022c]:sw a7, 0(s3)<br>      |
|   5|[0x80002250]<br>0x000000007FFFFFFF|- rd : x15<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat<br>                         |[0x8000023c]:fcvt.w.s a5, fs0, dyn<br> [0x80000240]:csrrs s5, fflags, zero<br> [0x80000244]:sw a5, 16(s3)<br>     |
|   6|[0x80002260]<br>0x000000007FFFFFFF|- rd : x22<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat<br>                        |[0x80000260]:fcvt.w.s s6, fs10, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw s6, 0(a5)<br>     |
|   7|[0x80002270]<br>0x000000007FFFFFFF|- rd : x12<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat<br>                        |[0x80000278]:fcvt.w.s a2, fs5, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw a2, 16(a5)<br>     |
|   8|[0x80002280]<br>0x000000007FFFFFFF|- rd : x18<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat<br>                         |[0x80000290]:fcvt.w.s s2, ft1, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw s2, 32(a5)<br>     |
|   9|[0x80002290]<br>0x000000007FFFFFFF|- rd : x16<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat<br>                        |[0x800002b4]:fcvt.w.s a6, fa4, dyn<br> [0x800002b8]:csrrs s5, fflags, zero<br> [0x800002bc]:sw a6, 0(s3)<br>      |
|  10|[0x800022a0]<br>0x000000007FFFFFFF|- rd : x3<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat<br>                         |[0x800002d8]:fcvt.w.s gp, fs2, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:sw gp, 0(a5)<br>      |
|  11|[0x800022b0]<br>0x000000007FFFFFFF|- rd : x5<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat<br>                         |[0x800002f0]:fcvt.w.s t0, fa3, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:sw t0, 16(a5)<br>     |
|  12|[0x800022c0]<br>0x000000007FFFFFFF|- rd : x29<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat<br>                        |[0x80000308]:fcvt.w.s t4, ft8, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw t4, 32(a5)<br>     |
|  13|[0x800022d0]<br>0x000000007FFFFFFF|- rd : x24<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat<br>                        |[0x80000320]:fcvt.w.s s8, fa1, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw s8, 48(a5)<br>     |
|  14|[0x800022e0]<br>0x000000007FFFFFFF|- rd : x28<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat<br>                         |[0x80000338]:fcvt.w.s t3, ft3, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:sw t3, 64(a5)<br>     |
|  15|[0x800022f0]<br>0x000000007FFFFFFF|- rd : x4<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat<br>                          |[0x80000350]:fcvt.w.s tp, ft6, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:sw tp, 80(a5)<br>     |
|  16|[0x80002300]<br>0x000000007FFFFFFF|- rd : x27<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat<br>                        |[0x80000368]:fcvt.w.s s11, fs4, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw s11, 96(a5)<br>   |
|  17|[0x80002310]<br>0x000000007FFFFFFF|- rd : x7<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat<br>                         |[0x80000380]:fcvt.w.s t2, fa0, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:sw t2, 112(a5)<br>    |
|  18|[0x80002320]<br>0x000000007FFFFFFF|- rd : x30<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat<br>                        |[0x80000398]:fcvt.w.s t5, fs3, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:sw t5, 128(a5)<br>    |
|  19|[0x80002330]<br>0x000000007FFFFFFF|- rd : x21<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat<br>                        |[0x800003b0]:fcvt.w.s s5, fa5, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:sw s5, 144(a5)<br>    |
|  20|[0x80002340]<br>0x000000007FFFFFFF|- rd : x23<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat<br>                        |[0x800003c8]:fcvt.w.s s7, fs11, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:sw s7, 160(a5)<br>   |
|  21|[0x80002350]<br>0x000000007FFFFFFF|- rd : x2<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat<br>                         |[0x800003e0]:fcvt.w.s sp, fa2, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:sw sp, 176(a5)<br>    |
|  22|[0x80002360]<br>0x000000007FFFFFFF|- rd : x20<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat<br>                         |[0x800003f8]:fcvt.w.s s4, fs1, dyn<br> [0x800003fc]:csrrs a7, fflags, zero<br> [0x80000400]:sw s4, 192(a5)<br>    |
|  23|[0x80002370]<br>0x000000007FFFFFFF|- rd : x25<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat<br>                         |[0x80000410]:fcvt.w.s s9, ft4, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:sw s9, 208(a5)<br>    |
|  24|[0x80002380]<br>0x000000007FFFFFFF|- rd : x8<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat<br>                          |[0x80000428]:fcvt.w.s fp, ft7, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw fp, 224(a5)<br>    |
|  25|[0x80002390]<br>0x000000007FFFFFFF|- rd : x6<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat<br>                         |[0x80000440]:fcvt.w.s t1, ft10, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw t1, 240(a5)<br>   |
|  26|[0x800023a0]<br>0x000000007FFFFFFF|- rd : x31<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000458]:fcvt.w.s t6, fs9, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw t6, 256(a5)<br>    |
|  27|[0x800023b0]<br>0x000000007FFFFF80|- rd : x13<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat<br>                         |[0x80000470]:fcvt.w.s a3, ft5, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:sw a3, 272(a5)<br>    |
|  28|[0x800023c0]<br>0x000000007FFFFF80|- rd : x19<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat<br>                        |[0x80000488]:fcvt.w.s s3, ft9, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:sw s3, 288(a5)<br>    |
|  29|[0x800023d0]<br>0x000000007FFFFF80|- rd : x10<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat<br>                        |[0x800004a0]:fcvt.w.s a0, fa6, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw a0, 304(a5)<br>    |
|  30|[0x800023e0]<br>0x000000007FFFFF80|- rd : x14<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat<br>                        |[0x800004b8]:fcvt.w.s a4, fa7, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:sw a4, 320(a5)<br>    |
|  31|[0x800023f0]<br>0x000000007FFFFF80|- rd : x11<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                        |[0x800004d0]:fcvt.w.s a1, fs7, dyn<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:sw a1, 336(a5)<br>    |
|  32|[0x80002400]<br>0x000000007FFFFF00|- rd : x1<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat<br>                          |[0x800004e8]:fcvt.w.s ra, ft0, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:sw ra, 352(a5)<br>    |
|  33|[0x80002410]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat<br>                                                       |[0x80000500]:fcvt.w.s t6, ft11, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:sw t6, 368(a5)<br>   |
|  34|[0x80002420]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat<br>                                                       |[0x80000518]:fcvt.w.s t6, ft11, dyn<br> [0x8000051c]:csrrs a7, fflags, zero<br> [0x80000520]:sw t6, 384(a5)<br>   |
|  35|[0x80002430]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat<br>                                                       |[0x80000530]:fcvt.w.s t6, ft11, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:sw t6, 400(a5)<br>   |
|  36|[0x80002440]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                       |[0x80000548]:fcvt.w.s t6, ft11, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:sw t6, 416(a5)<br>   |
|  37|[0x80002450]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat<br>                                                       |[0x80000560]:fcvt.w.s t6, ft11, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:sw t6, 432(a5)<br>   |
|  38|[0x80002460]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat<br>                                                       |[0x80000578]:fcvt.w.s t6, ft11, dyn<br> [0x8000057c]:csrrs a7, fflags, zero<br> [0x80000580]:sw t6, 448(a5)<br>   |
|  39|[0x80002470]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat<br>                                                       |[0x80000590]:fcvt.w.s t6, ft11, dyn<br> [0x80000594]:csrrs a7, fflags, zero<br> [0x80000598]:sw t6, 464(a5)<br>   |
|  40|[0x80002480]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat<br>                                                       |[0x800005a8]:fcvt.w.s t6, ft11, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:sw t6, 480(a5)<br>   |
|  41|[0x80002490]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat<br>                                                       |[0x800005c0]:fcvt.w.s t6, ft11, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:sw t6, 496(a5)<br>   |
|  42|[0x800024a0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat<br>                                                       |[0x800005d8]:fcvt.w.s t6, ft11, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:sw t6, 512(a5)<br>   |
|  43|[0x800024b0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat<br>                                                       |[0x800005f0]:fcvt.w.s t6, ft11, dyn<br> [0x800005f4]:csrrs a7, fflags, zero<br> [0x800005f8]:sw t6, 528(a5)<br>   |
|  44|[0x800024c0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat<br>                                                       |[0x80000608]:fcvt.w.s t6, ft11, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:sw t6, 544(a5)<br>   |
|  45|[0x800024d0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat<br>                                                       |[0x80000620]:fcvt.w.s t6, ft11, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:sw t6, 560(a5)<br>   |
