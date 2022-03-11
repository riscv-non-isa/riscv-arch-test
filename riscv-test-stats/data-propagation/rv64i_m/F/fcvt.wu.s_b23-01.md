
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
| COV_LABELS                | fcvt.wu.s_b23      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.wu.s/riscof_work/fcvt.wu.s_b23-01.S/ref.S    |
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
      [0x80000638]:fcvt.wu.s t6, ft11, dyn
      [0x8000063c]:csrrs a7, fflags, zero
      [0x80000640]:sw t6, 224(a5)
 -- Signature Address: 0x800024e0 Data: 0xFFFFFFFF80000400
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.wu.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x10', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.wu.s a0, fa6, dyn
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw a0, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002214]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fcvt.wu.s s1, fs3, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw s1, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002224]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000200]:fcvt.wu.s a3, ft4, dyn
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw a3, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002234]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000218]:fcvt.wu.s zero, fs2, dyn
	-[0x8000021c]:csrrs a7, fflags, zero
	-[0x80000220]:sw zero, 48(a5)
Current Store : [0x80000224] : sw a7, 52(a5) -- Store: [0x80002244]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000230]:fcvt.wu.s sp, fs7, dyn
	-[0x80000234]:csrrs a7, fflags, zero
	-[0x80000238]:sw sp, 64(a5)
Current Store : [0x8000023c] : sw a7, 68(a5) -- Store: [0x80002254]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000248]:fcvt.wu.s s10, ft8, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:sw s10, 80(a5)
Current Store : [0x80000254] : sw a7, 84(a5) -- Store: [0x80002264]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000260]:fcvt.wu.s s4, fa4, dyn
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw s4, 96(a5)
Current Store : [0x8000026c] : sw a7, 100(a5) -- Store: [0x80002274]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000278]:fcvt.wu.s fp, fa2, dyn
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw fp, 112(a5)
Current Store : [0x80000284] : sw a7, 116(a5) -- Store: [0x80002284]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f25', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000290]:fcvt.wu.s s7, fs9, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw s7, 128(a5)
Current Store : [0x8000029c] : sw a7, 132(a5) -- Store: [0x80002294]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fcvt.wu.s t5, fs10, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:sw t5, 144(a5)
Current Store : [0x800002b4] : sw a7, 148(a5) -- Store: [0x800022a4]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c0]:fcvt.wu.s t1, fa3, dyn
	-[0x800002c4]:csrrs a7, fflags, zero
	-[0x800002c8]:sw t1, 160(a5)
Current Store : [0x800002cc] : sw a7, 164(a5) -- Store: [0x800022b4]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002d8]:fcvt.wu.s a1, fa7, dyn
	-[0x800002dc]:csrrs a7, fflags, zero
	-[0x800002e0]:sw a1, 176(a5)
Current Store : [0x800002e4] : sw a7, 180(a5) -- Store: [0x800022c4]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002f0]:fcvt.wu.s t4, fa1, dyn
	-[0x800002f4]:csrrs a7, fflags, zero
	-[0x800002f8]:sw t4, 192(a5)
Current Store : [0x800002fc] : sw a7, 196(a5) -- Store: [0x800022d4]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000308]:fcvt.wu.s s2, ft11, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw s2, 208(a5)
Current Store : [0x80000314] : sw a7, 212(a5) -- Store: [0x800022e4]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000320]:fcvt.wu.s s5, fs0, dyn
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw s5, 224(a5)
Current Store : [0x8000032c] : sw a7, 228(a5) -- Store: [0x800022f4]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fcvt.wu.s t2, ft0, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:sw t2, 240(a5)
Current Store : [0x80000344] : sw a7, 244(a5) -- Store: [0x80002304]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000350]:fcvt.wu.s s8, ft7, dyn
	-[0x80000354]:csrrs a7, fflags, zero
	-[0x80000358]:sw s8, 256(a5)
Current Store : [0x8000035c] : sw a7, 260(a5) -- Store: [0x80002314]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000368]:fcvt.wu.s tp, ft2, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw tp, 272(a5)
Current Store : [0x80000374] : sw a7, 276(a5) -- Store: [0x80002324]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000380]:fcvt.wu.s s11, ft5, dyn
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:sw s11, 288(a5)
Current Store : [0x8000038c] : sw a7, 292(a5) -- Store: [0x80002334]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000398]:fcvt.wu.s t0, ft3, dyn
	-[0x8000039c]:csrrs a7, fflags, zero
	-[0x800003a0]:sw t0, 304(a5)
Current Store : [0x800003a4] : sw a7, 308(a5) -- Store: [0x80002344]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b0]:fcvt.wu.s a4, fs8, dyn
	-[0x800003b4]:csrrs a7, fflags, zero
	-[0x800003b8]:sw a4, 320(a5)
Current Store : [0x800003bc] : sw a7, 324(a5) -- Store: [0x80002354]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fcvt.wu.s t6, ft1, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:sw t6, 336(a5)
Current Store : [0x800003d4] : sw a7, 340(a5) -- Store: [0x80002364]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003ec]:fcvt.wu.s a5, fa5, dyn
	-[0x800003f0]:csrrs s5, fflags, zero
	-[0x800003f4]:sw a5, 0(s3)
Current Store : [0x800003f8] : sw s5, 4(s3) -- Store: [0x80002374]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000404]:fcvt.wu.s a7, fs6, dyn
	-[0x80000408]:csrrs s5, fflags, zero
	-[0x8000040c]:sw a7, 16(s3)
Current Store : [0x80000410] : sw s5, 20(s3) -- Store: [0x80002384]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000428]:fcvt.wu.s s9, fs4, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw s9, 0(a5)
Current Store : [0x80000434] : sw a7, 4(a5) -- Store: [0x80002394]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000440]:fcvt.wu.s s6, ft6, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw s6, 16(a5)
Current Store : [0x8000044c] : sw a7, 20(a5) -- Store: [0x800023a4]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000458]:fcvt.wu.s a2, fa0, dyn
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw a2, 32(a5)
Current Store : [0x80000464] : sw a7, 36(a5) -- Store: [0x800023b4]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000470]:fcvt.wu.s ra, fs5, dyn
	-[0x80000474]:csrrs a7, fflags, zero
	-[0x80000478]:sw ra, 48(a5)
Current Store : [0x8000047c] : sw a7, 52(a5) -- Store: [0x800023c4]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000488]:fcvt.wu.s gp, ft9, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:sw gp, 64(a5)
Current Store : [0x80000494] : sw a7, 68(a5) -- Store: [0x800023d4]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fcvt.wu.s s3, fs11, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw s3, 80(a5)
Current Store : [0x800004ac] : sw a7, 84(a5) -- Store: [0x800023e4]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c4]:fcvt.wu.s a6, ft10, dyn
	-[0x800004c8]:csrrs s5, fflags, zero
	-[0x800004cc]:sw a6, 0(s3)
Current Store : [0x800004d0] : sw s5, 4(s3) -- Store: [0x800023f4]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fcvt.wu.s t3, fs1, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:sw t3, 0(a5)
Current Store : [0x800004f4] : sw a7, 4(a5) -- Store: [0x80002404]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000500]:fcvt.wu.s t6, ft11, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:sw t6, 16(a5)
Current Store : [0x8000050c] : sw a7, 20(a5) -- Store: [0x80002414]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000518]:fcvt.wu.s t6, ft11, dyn
	-[0x8000051c]:csrrs a7, fflags, zero
	-[0x80000520]:sw t6, 32(a5)
Current Store : [0x80000524] : sw a7, 36(a5) -- Store: [0x80002424]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000530]:fcvt.wu.s t6, ft11, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:sw t6, 48(a5)
Current Store : [0x8000053c] : sw a7, 52(a5) -- Store: [0x80002434]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000548]:fcvt.wu.s t6, ft11, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:sw t6, 64(a5)
Current Store : [0x80000554] : sw a7, 68(a5) -- Store: [0x80002444]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000560]:fcvt.wu.s t6, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:sw t6, 80(a5)
Current Store : [0x8000056c] : sw a7, 84(a5) -- Store: [0x80002454]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000578]:fcvt.wu.s t6, ft11, dyn
	-[0x8000057c]:csrrs a7, fflags, zero
	-[0x80000580]:sw t6, 96(a5)
Current Store : [0x80000584] : sw a7, 100(a5) -- Store: [0x80002464]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000590]:fcvt.wu.s t6, ft11, dyn
	-[0x80000594]:csrrs a7, fflags, zero
	-[0x80000598]:sw t6, 112(a5)
Current Store : [0x8000059c] : sw a7, 116(a5) -- Store: [0x80002474]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fcvt.wu.s t6, ft11, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:sw t6, 128(a5)
Current Store : [0x800005b4] : sw a7, 132(a5) -- Store: [0x80002484]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fcvt.wu.s t6, ft11, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:sw t6, 144(a5)
Current Store : [0x800005cc] : sw a7, 148(a5) -- Store: [0x80002494]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fcvt.wu.s t6, ft11, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:sw t6, 160(a5)
Current Store : [0x800005e4] : sw a7, 164(a5) -- Store: [0x800024a4]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005f0]:fcvt.wu.s t6, ft11, dyn
	-[0x800005f4]:csrrs a7, fflags, zero
	-[0x800005f8]:sw t6, 176(a5)
Current Store : [0x800005fc] : sw a7, 180(a5) -- Store: [0x800024b4]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000608]:fcvt.wu.s t6, ft11, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:sw t6, 192(a5)
Current Store : [0x80000614] : sw a7, 196(a5) -- Store: [0x800024c4]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000620]:fcvt.wu.s t6, ft11, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:sw t6, 208(a5)
Current Store : [0x8000062c] : sw a7, 212(a5) -- Store: [0x800024d4]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000638]:fcvt.wu.s t6, ft11, dyn
	-[0x8000063c]:csrrs a7, fflags, zero
	-[0x80000640]:sw t6, 224(a5)
Current Store : [0x80000644] : sw a7, 228(a5) -- Store: [0x800024e4]:0x0000000000000000





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

|s.no|            signature             |                                                            coverpoints                                                            |                                                       code                                                        |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000007FFFFE00|- opcode : fcvt.wu.s<br> - rd : x10<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.wu.s a0, fa6, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw a0, 0(a5)<br>      |
|   2|[0x80002220]<br>0xFFFFFFFF80000400|- rd : x9<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat<br>                           |[0x800001e8]:fcvt.wu.s s1, fs3, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw s1, 16(a5)<br>     |
|   3|[0x80002230]<br>0xFFFFFFFF80000400|- rd : x13<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat<br>                           |[0x80000200]:fcvt.wu.s a3, ft4, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw a3, 32(a5)<br>     |
|   4|[0x80002240]<br>0x0000000000000000|- rd : x0<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat<br>                           |[0x80000218]:fcvt.wu.s zero, fs2, dyn<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:sw zero, 48(a5)<br> |
|   5|[0x80002250]<br>0xFFFFFFFF80000400|- rd : x2<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat<br>                           |[0x80000230]:fcvt.wu.s sp, fs7, dyn<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:sw sp, 64(a5)<br>     |
|   6|[0x80002260]<br>0xFFFFFFFF80000400|- rd : x26<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat<br>                          |[0x80000248]:fcvt.wu.s s10, ft8, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:sw s10, 80(a5)<br>   |
|   7|[0x80002270]<br>0xFFFFFFFF80000300|- rd : x20<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat<br>                          |[0x80000260]:fcvt.wu.s s4, fa4, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw s4, 96(a5)<br>     |
|   8|[0x80002280]<br>0xFFFFFFFF80000300|- rd : x8<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat<br>                           |[0x80000278]:fcvt.wu.s fp, fa2, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw fp, 112(a5)<br>    |
|   9|[0x80002290]<br>0xFFFFFFFF80000300|- rd : x23<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat<br>                          |[0x80000290]:fcvt.wu.s s7, fs9, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw s7, 128(a5)<br>    |
|  10|[0x800022a0]<br>0xFFFFFFFF80000300|- rd : x30<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat<br>                          |[0x800002a8]:fcvt.wu.s t5, fs10, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:sw t5, 144(a5)<br>   |
|  11|[0x800022b0]<br>0xFFFFFFFF80000300|- rd : x6<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat<br>                           |[0x800002c0]:fcvt.wu.s t1, fa3, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:sw t1, 160(a5)<br>    |
|  12|[0x800022c0]<br>0xFFFFFFFF80000200|- rd : x11<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat<br>                          |[0x800002d8]:fcvt.wu.s a1, fa7, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:sw a1, 176(a5)<br>    |
|  13|[0x800022d0]<br>0xFFFFFFFF80000200|- rd : x29<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat<br>                          |[0x800002f0]:fcvt.wu.s t4, fa1, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:sw t4, 192(a5)<br>    |
|  14|[0x800022e0]<br>0xFFFFFFFF80000200|- rd : x18<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat<br>                          |[0x80000308]:fcvt.wu.s s2, ft11, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw s2, 208(a5)<br>   |
|  15|[0x800022f0]<br>0xFFFFFFFF80000200|- rd : x21<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat<br>                           |[0x80000320]:fcvt.wu.s s5, fs0, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw s5, 224(a5)<br>    |
|  16|[0x80002300]<br>0xFFFFFFFF80000200|- rd : x7<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat<br>                            |[0x80000338]:fcvt.wu.s t2, ft0, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:sw t2, 240(a5)<br>    |
|  17|[0x80002310]<br>0xFFFFFFFF80000100|- rd : x24<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat<br>                           |[0x80000350]:fcvt.wu.s s8, ft7, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:sw s8, 256(a5)<br>    |
|  18|[0x80002320]<br>0xFFFFFFFF80000100|- rd : x4<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat<br>                            |[0x80000368]:fcvt.wu.s tp, ft2, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw tp, 272(a5)<br>    |
|  19|[0x80002330]<br>0xFFFFFFFF80000100|- rd : x27<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat<br>                           |[0x80000380]:fcvt.wu.s s11, ft5, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:sw s11, 288(a5)<br>  |
|  20|[0x80002340]<br>0xFFFFFFFF80000100|- rd : x5<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat<br>                            |[0x80000398]:fcvt.wu.s t0, ft3, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:sw t0, 304(a5)<br>    |
|  21|[0x80002350]<br>0xFFFFFFFF80000100|- rd : x14<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat<br>                          |[0x800003b0]:fcvt.wu.s a4, fs8, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:sw a4, 320(a5)<br>    |
|  22|[0x80002360]<br>0xFFFFFFFF80000000|- rd : x31<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat<br>                           |[0x800003c8]:fcvt.wu.s t6, ft1, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:sw t6, 336(a5)<br>    |
|  23|[0x80002370]<br>0xFFFFFFFF80000000|- rd : x15<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat<br>                          |[0x800003ec]:fcvt.wu.s a5, fa5, dyn<br> [0x800003f0]:csrrs s5, fflags, zero<br> [0x800003f4]:sw a5, 0(s3)<br>      |
|  24|[0x80002380]<br>0xFFFFFFFF80000000|- rd : x17<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat<br>                          |[0x80000404]:fcvt.wu.s a7, fs6, dyn<br> [0x80000408]:csrrs s5, fflags, zero<br> [0x8000040c]:sw a7, 16(s3)<br>     |
|  25|[0x80002390]<br>0xFFFFFFFF80000000|- rd : x25<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat<br>                          |[0x80000428]:fcvt.wu.s s9, fs4, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw s9, 0(a5)<br>      |
|  26|[0x800023a0]<br>0xFFFFFFFF80000000|- rd : x22<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br>                           |[0x80000440]:fcvt.wu.s s6, ft6, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw s6, 16(a5)<br>     |
|  27|[0x800023b0]<br>0x000000007FFFFF80|- rd : x12<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat<br>                          |[0x80000458]:fcvt.wu.s a2, fa0, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw a2, 32(a5)<br>     |
|  28|[0x800023c0]<br>0x000000007FFFFF80|- rd : x1<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat<br>                           |[0x80000470]:fcvt.wu.s ra, fs5, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:sw ra, 48(a5)<br>     |
|  29|[0x800023d0]<br>0x000000007FFFFF80|- rd : x3<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat<br>                           |[0x80000488]:fcvt.wu.s gp, ft9, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:sw gp, 64(a5)<br>     |
|  30|[0x800023e0]<br>0x000000007FFFFF80|- rd : x19<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat<br>                          |[0x800004a0]:fcvt.wu.s s3, fs11, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw s3, 80(a5)<br>    |
|  31|[0x800023f0]<br>0x000000007FFFFF80|- rd : x16<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                          |[0x800004c4]:fcvt.wu.s a6, ft10, dyn<br> [0x800004c8]:csrrs s5, fflags, zero<br> [0x800004cc]:sw a6, 0(s3)<br>     |
|  32|[0x80002400]<br>0x000000007FFFFF00|- rd : x28<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat<br>                           |[0x800004e8]:fcvt.wu.s t3, fs1, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:sw t3, 0(a5)<br>      |
|  33|[0x80002410]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat<br>                                                         |[0x80000500]:fcvt.wu.s t6, ft11, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:sw t6, 16(a5)<br>    |
|  34|[0x80002420]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat<br>                                                         |[0x80000518]:fcvt.wu.s t6, ft11, dyn<br> [0x8000051c]:csrrs a7, fflags, zero<br> [0x80000520]:sw t6, 32(a5)<br>    |
|  35|[0x80002430]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat<br>                                                         |[0x80000530]:fcvt.wu.s t6, ft11, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:sw t6, 48(a5)<br>    |
|  36|[0x80002440]<br>0x000000007FFFFF00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat<br>                                                         |[0x80000548]:fcvt.wu.s t6, ft11, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:sw t6, 64(a5)<br>    |
|  37|[0x80002450]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat<br>                                                         |[0x80000560]:fcvt.wu.s t6, ft11, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:sw t6, 80(a5)<br>    |
|  38|[0x80002460]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat<br>                                                         |[0x80000578]:fcvt.wu.s t6, ft11, dyn<br> [0x8000057c]:csrrs a7, fflags, zero<br> [0x80000580]:sw t6, 96(a5)<br>    |
|  39|[0x80002470]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat<br>                                                         |[0x80000590]:fcvt.wu.s t6, ft11, dyn<br> [0x80000594]:csrrs a7, fflags, zero<br> [0x80000598]:sw t6, 112(a5)<br>   |
|  40|[0x80002480]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat<br>                                                         |[0x800005a8]:fcvt.wu.s t6, ft11, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:sw t6, 128(a5)<br>   |
|  41|[0x80002490]<br>0x000000007FFFFE80|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat<br>                                                         |[0x800005c0]:fcvt.wu.s t6, ft11, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:sw t6, 144(a5)<br>   |
|  42|[0x800024a0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat<br>                                                         |[0x800005d8]:fcvt.wu.s t6, ft11, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:sw t6, 160(a5)<br>   |
|  43|[0x800024b0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat<br>                                                         |[0x800005f0]:fcvt.wu.s t6, ft11, dyn<br> [0x800005f4]:csrrs a7, fflags, zero<br> [0x800005f8]:sw t6, 176(a5)<br>   |
|  44|[0x800024c0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat<br>                                                         |[0x80000608]:fcvt.wu.s t6, ft11, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:sw t6, 192(a5)<br>   |
|  45|[0x800024d0]<br>0x000000007FFFFE00|- fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat<br>                                                         |[0x80000620]:fcvt.wu.s t6, ft11, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:sw t6, 208(a5)<br>   |
