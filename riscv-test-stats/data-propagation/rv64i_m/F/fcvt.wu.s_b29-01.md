
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x800009b0')]      |
| SIG_REGION                | [('0x80002310', '0x80002820', '162 dwords')]      |
| COV_LABELS                | fcvt.wu.s_b29      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.wu.s/riscof_work/fcvt.wu.s_b29-01.S/ref.S    |
| Total Number of coverpoints| 149     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 169      |
| STAT1                     | 80      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000998]:fcvt.wu.s t6, ft11, dyn
      [0x8000099c]:csrrs a7, fflags, zero
      [0x800009a0]:sw t6, 800(a5)
 -- Signature Address: 0x80002810 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.wu.s
      - rd : x31
      - rs1 : f31
      - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x26', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.wu.s s10, fa3, dyn
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw s10, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002314]:0x0000000000000001




Last Coverpoint : ['rd : x3', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fcvt.wu.s gp, fs8, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw gp, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002324]:0x0000000000000001




Last Coverpoint : ['rd : x4', 'rs1 : f0', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000200]:fcvt.wu.s tp, ft0, dyn
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw tp, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002334]:0x0000000000000001




Last Coverpoint : ['rd : x1', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000218]:fcvt.wu.s ra, fa6, dyn
	-[0x8000021c]:csrrs a7, fflags, zero
	-[0x80000220]:sw ra, 48(a5)
Current Store : [0x80000224] : sw a7, 52(a5) -- Store: [0x80002344]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f21', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000230]:fcvt.wu.s t4, fs5, dyn
	-[0x80000234]:csrrs a7, fflags, zero
	-[0x80000238]:sw t4, 64(a5)
Current Store : [0x8000023c] : sw a7, 68(a5) -- Store: [0x80002354]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000248]:fcvt.wu.s s3, ft1, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:sw s3, 80(a5)
Current Store : [0x80000254] : sw a7, 84(a5) -- Store: [0x80002364]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f12', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000260]:fcvt.wu.s sp, fa2, dyn
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw sp, 96(a5)
Current Store : [0x8000026c] : sw a7, 100(a5) -- Store: [0x80002374]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000278]:fcvt.wu.s a0, fs6, dyn
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw a0, 112(a5)
Current Store : [0x80000284] : sw a7, 116(a5) -- Store: [0x80002384]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000290]:fcvt.wu.s t5, fs11, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw t5, 128(a5)
Current Store : [0x8000029c] : sw a7, 132(a5) -- Store: [0x80002394]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fcvt.wu.s a2, ft8, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:sw a2, 144(a5)
Current Store : [0x800002b4] : sw a7, 148(a5) -- Store: [0x800023a4]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c0]:fcvt.wu.s s7, fs1, dyn
	-[0x800002c4]:csrrs a7, fflags, zero
	-[0x800002c8]:sw s7, 160(a5)
Current Store : [0x800002cc] : sw a7, 164(a5) -- Store: [0x800023b4]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800002d8]:fcvt.wu.s fp, fs10, dyn
	-[0x800002dc]:csrrs a7, fflags, zero
	-[0x800002e0]:sw fp, 176(a5)
Current Store : [0x800002e4] : sw a7, 180(a5) -- Store: [0x800023c4]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800002f0]:fcvt.wu.s t6, ft10, dyn
	-[0x800002f4]:csrrs a7, fflags, zero
	-[0x800002f8]:sw t6, 192(a5)
Current Store : [0x800002fc] : sw a7, 196(a5) -- Store: [0x800023d4]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000308]:fcvt.wu.s a1, fs2, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw a1, 208(a5)
Current Store : [0x80000314] : sw a7, 212(a5) -- Store: [0x800023e4]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000320]:fcvt.wu.s s11, fa0, dyn
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw s11, 224(a5)
Current Store : [0x8000032c] : sw a7, 228(a5) -- Store: [0x800023f4]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f8', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fcvt.wu.s t2, fs0, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:sw t2, 240(a5)
Current Store : [0x80000344] : sw a7, 244(a5) -- Store: [0x80002404]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000350]:fcvt.wu.s s2, ft7, dyn
	-[0x80000354]:csrrs a7, fflags, zero
	-[0x80000358]:sw s2, 256(a5)
Current Store : [0x8000035c] : sw a7, 260(a5) -- Store: [0x80002414]:0x0000000000000011




Last Coverpoint : ['rd : x21', 'rs1 : f6', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000368]:fcvt.wu.s s5, ft6, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw s5, 272(a5)
Current Store : [0x80000374] : sw a7, 276(a5) -- Store: [0x80002424]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000380]:fcvt.wu.s s4, ft11, dyn
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:sw s4, 288(a5)
Current Store : [0x8000038c] : sw a7, 292(a5) -- Store: [0x80002434]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000398]:fcvt.wu.s s6, fa7, dyn
	-[0x8000039c]:csrrs a7, fflags, zero
	-[0x800003a0]:sw s6, 304(a5)
Current Store : [0x800003a4] : sw a7, 308(a5) -- Store: [0x80002444]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f23', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b0]:fcvt.wu.s s8, fs7, dyn
	-[0x800003b4]:csrrs a7, fflags, zero
	-[0x800003b8]:sw s8, 320(a5)
Current Store : [0x800003bc] : sw a7, 324(a5) -- Store: [0x80002454]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fcvt.wu.s t0, fs9, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:sw t0, 336(a5)
Current Store : [0x800003d4] : sw a7, 340(a5) -- Store: [0x80002464]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f2', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003e0]:fcvt.wu.s t1, ft2, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:sw t1, 352(a5)
Current Store : [0x800003ec] : sw a7, 356(a5) -- Store: [0x80002474]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f29', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000404]:fcvt.wu.s a5, ft9, dyn
	-[0x80000408]:csrrs s5, fflags, zero
	-[0x8000040c]:sw a5, 0(s3)
Current Store : [0x80000410] : sw s5, 4(s3) -- Store: [0x80002484]:0x0000000000000011




Last Coverpoint : ['rd : x0', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000428]:fcvt.wu.s zero, fs4, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw zero, 0(a5)
Current Store : [0x80000434] : sw a7, 4(a5) -- Store: [0x80002494]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000440]:fcvt.wu.s a3, ft4, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw a3, 16(a5)
Current Store : [0x8000044c] : sw a7, 20(a5) -- Store: [0x800024a4]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f14', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000458]:fcvt.wu.s a4, fa4, dyn
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw a4, 32(a5)
Current Store : [0x80000464] : sw a7, 36(a5) -- Store: [0x800024b4]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f15', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000047c]:fcvt.wu.s a6, fa5, dyn
	-[0x80000480]:csrrs s5, fflags, zero
	-[0x80000484]:sw a6, 0(s3)
Current Store : [0x80000488] : sw s5, 4(s3) -- Store: [0x800024c4]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fcvt.wu.s t3, fa1, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw t3, 0(a5)
Current Store : [0x800004ac] : sw a7, 4(a5) -- Store: [0x800024d4]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004c4]:fcvt.wu.s a7, fs3, dyn
	-[0x800004c8]:csrrs s5, fflags, zero
	-[0x800004cc]:sw a7, 0(s3)
Current Store : [0x800004d0] : sw s5, 4(s3) -- Store: [0x800024e4]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fcvt.wu.s s1, ft5, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:sw s1, 0(a5)
Current Store : [0x800004f4] : sw a7, 4(a5) -- Store: [0x800024f4]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000500]:fcvt.wu.s s9, ft3, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:sw s9, 16(a5)
Current Store : [0x8000050c] : sw a7, 20(a5) -- Store: [0x80002504]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000518]:fcvt.wu.s t6, ft11, dyn
	-[0x8000051c]:csrrs a7, fflags, zero
	-[0x80000520]:sw t6, 32(a5)
Current Store : [0x80000524] : sw a7, 36(a5) -- Store: [0x80002514]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000530]:fcvt.wu.s t6, ft11, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:sw t6, 48(a5)
Current Store : [0x8000053c] : sw a7, 52(a5) -- Store: [0x80002524]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000548]:fcvt.wu.s t6, ft11, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:sw t6, 64(a5)
Current Store : [0x80000554] : sw a7, 68(a5) -- Store: [0x80002534]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fcvt.wu.s t6, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:sw t6, 80(a5)
Current Store : [0x8000056c] : sw a7, 84(a5) -- Store: [0x80002544]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000578]:fcvt.wu.s t6, ft11, dyn
	-[0x8000057c]:csrrs a7, fflags, zero
	-[0x80000580]:sw t6, 96(a5)
Current Store : [0x80000584] : sw a7, 100(a5) -- Store: [0x80002554]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000590]:fcvt.wu.s t6, ft11, dyn
	-[0x80000594]:csrrs a7, fflags, zero
	-[0x80000598]:sw t6, 112(a5)
Current Store : [0x8000059c] : sw a7, 116(a5) -- Store: [0x80002564]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fcvt.wu.s t6, ft11, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:sw t6, 128(a5)
Current Store : [0x800005b4] : sw a7, 132(a5) -- Store: [0x80002574]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fcvt.wu.s t6, ft11, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:sw t6, 144(a5)
Current Store : [0x800005cc] : sw a7, 148(a5) -- Store: [0x80002584]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fcvt.wu.s t6, ft11, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:sw t6, 160(a5)
Current Store : [0x800005e4] : sw a7, 164(a5) -- Store: [0x80002594]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005f0]:fcvt.wu.s t6, ft11, dyn
	-[0x800005f4]:csrrs a7, fflags, zero
	-[0x800005f8]:sw t6, 176(a5)
Current Store : [0x800005fc] : sw a7, 180(a5) -- Store: [0x800025a4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000608]:fcvt.wu.s t6, ft11, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:sw t6, 192(a5)
Current Store : [0x80000614] : sw a7, 196(a5) -- Store: [0x800025b4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000620]:fcvt.wu.s t6, ft11, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:sw t6, 208(a5)
Current Store : [0x8000062c] : sw a7, 212(a5) -- Store: [0x800025c4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000638]:fcvt.wu.s t6, ft11, dyn
	-[0x8000063c]:csrrs a7, fflags, zero
	-[0x80000640]:sw t6, 224(a5)
Current Store : [0x80000644] : sw a7, 228(a5) -- Store: [0x800025d4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000650]:fcvt.wu.s t6, ft11, dyn
	-[0x80000654]:csrrs a7, fflags, zero
	-[0x80000658]:sw t6, 240(a5)
Current Store : [0x8000065c] : sw a7, 244(a5) -- Store: [0x800025e4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000668]:fcvt.wu.s t6, ft11, dyn
	-[0x8000066c]:csrrs a7, fflags, zero
	-[0x80000670]:sw t6, 256(a5)
Current Store : [0x80000674] : sw a7, 260(a5) -- Store: [0x800025f4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000680]:fcvt.wu.s t6, ft11, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:sw t6, 272(a5)
Current Store : [0x8000068c] : sw a7, 276(a5) -- Store: [0x80002604]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000698]:fcvt.wu.s t6, ft11, dyn
	-[0x8000069c]:csrrs a7, fflags, zero
	-[0x800006a0]:sw t6, 288(a5)
Current Store : [0x800006a4] : sw a7, 292(a5) -- Store: [0x80002614]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fcvt.wu.s t6, ft11, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:sw t6, 304(a5)
Current Store : [0x800006bc] : sw a7, 308(a5) -- Store: [0x80002624]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c8]:fcvt.wu.s t6, ft11, dyn
	-[0x800006cc]:csrrs a7, fflags, zero
	-[0x800006d0]:sw t6, 320(a5)
Current Store : [0x800006d4] : sw a7, 324(a5) -- Store: [0x80002634]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fcvt.wu.s t6, ft11, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:sw t6, 336(a5)
Current Store : [0x800006ec] : sw a7, 340(a5) -- Store: [0x80002644]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006f8]:fcvt.wu.s t6, ft11, dyn
	-[0x800006fc]:csrrs a7, fflags, zero
	-[0x80000700]:sw t6, 352(a5)
Current Store : [0x80000704] : sw a7, 356(a5) -- Store: [0x80002654]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000710]:fcvt.wu.s t6, ft11, dyn
	-[0x80000714]:csrrs a7, fflags, zero
	-[0x80000718]:sw t6, 368(a5)
Current Store : [0x8000071c] : sw a7, 372(a5) -- Store: [0x80002664]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000728]:fcvt.wu.s t6, ft11, dyn
	-[0x8000072c]:csrrs a7, fflags, zero
	-[0x80000730]:sw t6, 384(a5)
Current Store : [0x80000734] : sw a7, 388(a5) -- Store: [0x80002674]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000740]:fcvt.wu.s t6, ft11, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:sw t6, 400(a5)
Current Store : [0x8000074c] : sw a7, 404(a5) -- Store: [0x80002684]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000758]:fcvt.wu.s t6, ft11, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:sw t6, 416(a5)
Current Store : [0x80000764] : sw a7, 420(a5) -- Store: [0x80002694]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000770]:fcvt.wu.s t6, ft11, dyn
	-[0x80000774]:csrrs a7, fflags, zero
	-[0x80000778]:sw t6, 432(a5)
Current Store : [0x8000077c] : sw a7, 436(a5) -- Store: [0x800026a4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000788]:fcvt.wu.s t6, ft11, dyn
	-[0x8000078c]:csrrs a7, fflags, zero
	-[0x80000790]:sw t6, 448(a5)
Current Store : [0x80000794] : sw a7, 452(a5) -- Store: [0x800026b4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fcvt.wu.s t6, ft11, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:sw t6, 464(a5)
Current Store : [0x800007ac] : sw a7, 468(a5) -- Store: [0x800026c4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007b8]:fcvt.wu.s t6, ft11, dyn
	-[0x800007bc]:csrrs a7, fflags, zero
	-[0x800007c0]:sw t6, 480(a5)
Current Store : [0x800007c4] : sw a7, 484(a5) -- Store: [0x800026d4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007d0]:fcvt.wu.s t6, ft11, dyn
	-[0x800007d4]:csrrs a7, fflags, zero
	-[0x800007d8]:sw t6, 496(a5)
Current Store : [0x800007dc] : sw a7, 500(a5) -- Store: [0x800026e4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007e8]:fcvt.wu.s t6, ft11, dyn
	-[0x800007ec]:csrrs a7, fflags, zero
	-[0x800007f0]:sw t6, 512(a5)
Current Store : [0x800007f4] : sw a7, 516(a5) -- Store: [0x800026f4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000800]:fcvt.wu.s t6, ft11, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:sw t6, 528(a5)
Current Store : [0x8000080c] : sw a7, 532(a5) -- Store: [0x80002704]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000818]:fcvt.wu.s t6, ft11, dyn
	-[0x8000081c]:csrrs a7, fflags, zero
	-[0x80000820]:sw t6, 544(a5)
Current Store : [0x80000824] : sw a7, 548(a5) -- Store: [0x80002714]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000830]:fcvt.wu.s t6, ft11, dyn
	-[0x80000834]:csrrs a7, fflags, zero
	-[0x80000838]:sw t6, 560(a5)
Current Store : [0x8000083c] : sw a7, 564(a5) -- Store: [0x80002724]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000848]:fcvt.wu.s t6, ft11, dyn
	-[0x8000084c]:csrrs a7, fflags, zero
	-[0x80000850]:sw t6, 576(a5)
Current Store : [0x80000854] : sw a7, 580(a5) -- Store: [0x80002734]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000860]:fcvt.wu.s t6, ft11, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:sw t6, 592(a5)
Current Store : [0x8000086c] : sw a7, 596(a5) -- Store: [0x80002744]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000878]:fcvt.wu.s t6, ft11, dyn
	-[0x8000087c]:csrrs a7, fflags, zero
	-[0x80000880]:sw t6, 608(a5)
Current Store : [0x80000884] : sw a7, 612(a5) -- Store: [0x80002754]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000890]:fcvt.wu.s t6, ft11, dyn
	-[0x80000894]:csrrs a7, fflags, zero
	-[0x80000898]:sw t6, 624(a5)
Current Store : [0x8000089c] : sw a7, 628(a5) -- Store: [0x80002764]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fcvt.wu.s t6, ft11, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:sw t6, 640(a5)
Current Store : [0x800008b4] : sw a7, 644(a5) -- Store: [0x80002774]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fcvt.wu.s t6, ft11, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:sw t6, 656(a5)
Current Store : [0x800008cc] : sw a7, 660(a5) -- Store: [0x80002784]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008d8]:fcvt.wu.s t6, ft11, dyn
	-[0x800008dc]:csrrs a7, fflags, zero
	-[0x800008e0]:sw t6, 672(a5)
Current Store : [0x800008e4] : sw a7, 676(a5) -- Store: [0x80002794]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008f0]:fcvt.wu.s t6, ft11, dyn
	-[0x800008f4]:csrrs a7, fflags, zero
	-[0x800008f8]:sw t6, 688(a5)
Current Store : [0x800008fc] : sw a7, 692(a5) -- Store: [0x800027a4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000908]:fcvt.wu.s t6, ft11, dyn
	-[0x8000090c]:csrrs a7, fflags, zero
	-[0x80000910]:sw t6, 704(a5)
Current Store : [0x80000914] : sw a7, 708(a5) -- Store: [0x800027b4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fcvt.wu.s t6, ft11, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:sw t6, 720(a5)
Current Store : [0x8000092c] : sw a7, 724(a5) -- Store: [0x800027c4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000938]:fcvt.wu.s t6, ft11, dyn
	-[0x8000093c]:csrrs a7, fflags, zero
	-[0x80000940]:sw t6, 736(a5)
Current Store : [0x80000944] : sw a7, 740(a5) -- Store: [0x800027d4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000950]:fcvt.wu.s t6, ft11, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:sw t6, 752(a5)
Current Store : [0x8000095c] : sw a7, 756(a5) -- Store: [0x800027e4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000968]:fcvt.wu.s t6, ft11, dyn
	-[0x8000096c]:csrrs a7, fflags, zero
	-[0x80000970]:sw t6, 768(a5)
Current Store : [0x80000974] : sw a7, 772(a5) -- Store: [0x800027f4]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000980]:fcvt.wu.s t6, ft11, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:sw t6, 784(a5)
Current Store : [0x8000098c] : sw a7, 788(a5) -- Store: [0x80002804]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x31', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000998]:fcvt.wu.s t6, ft11, dyn
	-[0x8000099c]:csrrs a7, fflags, zero
	-[0x800009a0]:sw t6, 800(a5)
Current Store : [0x800009a4] : sw a7, 804(a5) -- Store: [0x80002814]:0x0000000000000011





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

|s.no|            signature             |                                                            coverpoints                                                            |                                                       code                                                       |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000000|- opcode : fcvt.wu.s<br> - rd : x26<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.wu.s s10, fa3, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw s10, 0(a5)<br>   |
|   2|[0x80002320]<br>0x0000000000000000|- rd : x3<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 4  #nosat<br>                           |[0x800001e8]:fcvt.wu.s gp, fs8, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw gp, 16(a5)<br>    |
|   3|[0x80002330]<br>0x0000000000000000|- rd : x4<br> - rs1 : f0<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 3  #nosat<br>                            |[0x80000200]:fcvt.wu.s tp, ft0, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw tp, 32(a5)<br>    |
|   4|[0x80002340]<br>0x0000000000000000|- rd : x1<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 2  #nosat<br>                           |[0x80000218]:fcvt.wu.s ra, fa6, dyn<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:sw ra, 48(a5)<br>    |
|   5|[0x80002350]<br>0x0000000000000000|- rd : x29<br> - rs1 : f21<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 1  #nosat<br>                          |[0x80000230]:fcvt.wu.s t4, fs5, dyn<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:sw t4, 64(a5)<br>    |
|   6|[0x80002360]<br>0x0000000000000000|- rd : x19<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat<br>                           |[0x80000248]:fcvt.wu.s s3, ft1, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:sw s3, 80(a5)<br>    |
|   7|[0x80002370]<br>0x0000000000000000|- rd : x2<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 4  #nosat<br>                           |[0x80000260]:fcvt.wu.s sp, fa2, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw sp, 96(a5)<br>    |
|   8|[0x80002380]<br>0x0000000000000000|- rd : x10<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 3  #nosat<br>                          |[0x80000278]:fcvt.wu.s a0, fs6, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw a0, 112(a5)<br>   |
|   9|[0x80002390]<br>0x0000000000000000|- rd : x30<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 2  #nosat<br>                          |[0x80000290]:fcvt.wu.s t5, fs11, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw t5, 128(a5)<br>  |
|  10|[0x800023a0]<br>0x0000000000000000|- rd : x12<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 1  #nosat<br>                          |[0x800002a8]:fcvt.wu.s a2, ft8, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:sw a2, 144(a5)<br>   |
|  11|[0x800023b0]<br>0x0000000000000000|- rd : x23<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat<br>                           |[0x800002c0]:fcvt.wu.s s7, fs1, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:sw s7, 160(a5)<br>   |
|  12|[0x800023c0]<br>0x0000000000000000|- rd : x8<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 4  #nosat<br>                           |[0x800002d8]:fcvt.wu.s fp, fs10, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:sw fp, 176(a5)<br>  |
|  13|[0x800023d0]<br>0x0000000000000000|- rd : x31<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 3  #nosat<br>                          |[0x800002f0]:fcvt.wu.s t6, ft10, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:sw t6, 192(a5)<br>  |
|  14|[0x800023e0]<br>0x0000000000000000|- rd : x11<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 2  #nosat<br>                          |[0x80000308]:fcvt.wu.s a1, fs2, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw a1, 208(a5)<br>   |
|  15|[0x800023f0]<br>0x0000000000000000|- rd : x27<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 1  #nosat<br>                          |[0x80000320]:fcvt.wu.s s11, fa0, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw s11, 224(a5)<br> |
|  16|[0x80002400]<br>0x0000000000000000|- rd : x7<br> - rs1 : f8<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat<br>                            |[0x80000338]:fcvt.wu.s t2, fs0, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:sw t2, 240(a5)<br>   |
|  17|[0x80002410]<br>0x0000000000000000|- rd : x18<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 4  #nosat<br>                           |[0x80000350]:fcvt.wu.s s2, ft7, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:sw s2, 256(a5)<br>   |
|  18|[0x80002420]<br>0x0000000000000000|- rd : x21<br> - rs1 : f6<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 3  #nosat<br>                           |[0x80000368]:fcvt.wu.s s5, ft6, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw s5, 272(a5)<br>   |
|  19|[0x80002430]<br>0x0000000000000000|- rd : x20<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 2  #nosat<br>                          |[0x80000380]:fcvt.wu.s s4, ft11, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:sw s4, 288(a5)<br>  |
|  20|[0x80002440]<br>0x0000000000000000|- rd : x22<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 1  #nosat<br>                          |[0x80000398]:fcvt.wu.s s6, fa7, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:sw s6, 304(a5)<br>   |
|  21|[0x80002450]<br>0x0000000000000000|- rd : x24<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat<br>                          |[0x800003b0]:fcvt.wu.s s8, fs7, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:sw s8, 320(a5)<br>   |
|  22|[0x80002460]<br>0x0000000000000000|- rd : x5<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 4  #nosat<br>                           |[0x800003c8]:fcvt.wu.s t0, fs9, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:sw t0, 336(a5)<br>   |
|  23|[0x80002470]<br>0x0000000000000000|- rd : x6<br> - rs1 : f2<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 3  #nosat<br>                            |[0x800003e0]:fcvt.wu.s t1, ft2, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:sw t1, 352(a5)<br>   |
|  24|[0x80002480]<br>0x0000000000000000|- rd : x15<br> - rs1 : f29<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 2  #nosat<br>                          |[0x80000404]:fcvt.wu.s a5, ft9, dyn<br> [0x80000408]:csrrs s5, fflags, zero<br> [0x8000040c]:sw a5, 0(s3)<br>     |
|  25|[0x80002490]<br>0x0000000000000000|- rd : x0<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat<br>                           |[0x80000428]:fcvt.wu.s zero, fs4, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw zero, 0(a5)<br> |
|  26|[0x800024a0]<br>0x0000000000000000|- rd : x13<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat<br>                           |[0x80000440]:fcvt.wu.s a3, ft4, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw a3, 16(a5)<br>    |
|  27|[0x800024b0]<br>0x0000000000000000|- rd : x14<br> - rs1 : f14<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 4  #nosat<br>                          |[0x80000458]:fcvt.wu.s a4, fa4, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw a4, 32(a5)<br>    |
|  28|[0x800024c0]<br>0x0000000000000000|- rd : x16<br> - rs1 : f15<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 3  #nosat<br>                          |[0x8000047c]:fcvt.wu.s a6, fa5, dyn<br> [0x80000480]:csrrs s5, fflags, zero<br> [0x80000484]:sw a6, 0(s3)<br>     |
|  29|[0x800024d0]<br>0x0000000000000000|- rd : x28<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 2  #nosat<br>                          |[0x800004a0]:fcvt.wu.s t3, fa1, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw t3, 0(a5)<br>     |
|  30|[0x800024e0]<br>0x0000000000000000|- rd : x17<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 1  #nosat<br>                          |[0x800004c4]:fcvt.wu.s a7, fs3, dyn<br> [0x800004c8]:csrrs s5, fflags, zero<br> [0x800004cc]:sw a7, 0(s3)<br>     |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x9<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat<br>                            |[0x800004e8]:fcvt.wu.s s1, ft5, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:sw s1, 0(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000000|- rd : x25<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 4  #nosat<br>                           |[0x80000500]:fcvt.wu.s s9, ft3, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:sw s9, 16(a5)<br>    |
|  33|[0x80002510]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 3  #nosat<br>                                                         |[0x80000518]:fcvt.wu.s t6, ft11, dyn<br> [0x8000051c]:csrrs a7, fflags, zero<br> [0x80000520]:sw t6, 32(a5)<br>   |
|  34|[0x80002520]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 2  #nosat<br>                                                         |[0x80000530]:fcvt.wu.s t6, ft11, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:sw t6, 48(a5)<br>   |
|  35|[0x80002530]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 1  #nosat<br>                                                         |[0x80000548]:fcvt.wu.s t6, ft11, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:sw t6, 64(a5)<br>   |
|  36|[0x80002540]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat<br>                                                         |[0x80000560]:fcvt.wu.s t6, ft11, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:sw t6, 80(a5)<br>   |
|  37|[0x80002550]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 4  #nosat<br>                                                         |[0x80000578]:fcvt.wu.s t6, ft11, dyn<br> [0x8000057c]:csrrs a7, fflags, zero<br> [0x80000580]:sw t6, 96(a5)<br>   |
|  38|[0x80002560]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 3  #nosat<br>                                                         |[0x80000590]:fcvt.wu.s t6, ft11, dyn<br> [0x80000594]:csrrs a7, fflags, zero<br> [0x80000598]:sw t6, 112(a5)<br>  |
|  39|[0x80002570]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 2  #nosat<br>                                                         |[0x800005a8]:fcvt.wu.s t6, ft11, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:sw t6, 128(a5)<br>  |
|  40|[0x80002580]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 1  #nosat<br>                                                         |[0x800005c0]:fcvt.wu.s t6, ft11, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:sw t6, 144(a5)<br>  |
|  41|[0x80002590]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br>                                                         |[0x800005d8]:fcvt.wu.s t6, ft11, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:sw t6, 160(a5)<br>  |
|  42|[0x800025a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 4  #nosat<br>                                                         |[0x800005f0]:fcvt.wu.s t6, ft11, dyn<br> [0x800005f4]:csrrs a7, fflags, zero<br> [0x800005f8]:sw t6, 176(a5)<br>  |
|  43|[0x800025b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 3  #nosat<br>                                                         |[0x80000608]:fcvt.wu.s t6, ft11, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:sw t6, 192(a5)<br>  |
|  44|[0x800025c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 2  #nosat<br>                                                         |[0x80000620]:fcvt.wu.s t6, ft11, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:sw t6, 208(a5)<br>  |
|  45|[0x800025d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 1  #nosat<br>                                                         |[0x80000638]:fcvt.wu.s t6, ft11, dyn<br> [0x8000063c]:csrrs a7, fflags, zero<br> [0x80000640]:sw t6, 224(a5)<br>  |
|  46|[0x800025e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bf and rm_val == 0  #nosat<br>                                                         |[0x80000650]:fcvt.wu.s t6, ft11, dyn<br> [0x80000654]:csrrs a7, fflags, zero<br> [0x80000658]:sw t6, 240(a5)<br>  |
|  47|[0x800025f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 4  #nosat<br>                                                         |[0x80000668]:fcvt.wu.s t6, ft11, dyn<br> [0x8000066c]:csrrs a7, fflags, zero<br> [0x80000670]:sw t6, 256(a5)<br>  |
|  48|[0x80002600]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 3  #nosat<br>                                                         |[0x80000680]:fcvt.wu.s t6, ft11, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:sw t6, 272(a5)<br>  |
|  49|[0x80002610]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 2  #nosat<br>                                                         |[0x80000698]:fcvt.wu.s t6, ft11, dyn<br> [0x8000069c]:csrrs a7, fflags, zero<br> [0x800006a0]:sw t6, 288(a5)<br>  |
|  50|[0x80002620]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 1  #nosat<br>                                                         |[0x800006b0]:fcvt.wu.s t6, ft11, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:sw t6, 304(a5)<br>  |
|  51|[0x80002630]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923be and rm_val == 0  #nosat<br>                                                         |[0x800006c8]:fcvt.wu.s t6, ft11, dyn<br> [0x800006cc]:csrrs a7, fflags, zero<br> [0x800006d0]:sw t6, 320(a5)<br>  |
|  52|[0x80002640]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 4  #nosat<br>                                                         |[0x800006e0]:fcvt.wu.s t6, ft11, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:sw t6, 336(a5)<br>  |
|  53|[0x80002650]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 3  #nosat<br>                                                         |[0x800006f8]:fcvt.wu.s t6, ft11, dyn<br> [0x800006fc]:csrrs a7, fflags, zero<br> [0x80000700]:sw t6, 352(a5)<br>  |
|  54|[0x80002660]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 2  #nosat<br>                                                         |[0x80000710]:fcvt.wu.s t6, ft11, dyn<br> [0x80000714]:csrrs a7, fflags, zero<br> [0x80000718]:sw t6, 368(a5)<br>  |
|  55|[0x80002670]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 1  #nosat<br>                                                         |[0x80000728]:fcvt.wu.s t6, ft11, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:sw t6, 384(a5)<br>  |
|  56|[0x80002680]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bd and rm_val == 0  #nosat<br>                                                         |[0x80000740]:fcvt.wu.s t6, ft11, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:sw t6, 400(a5)<br>  |
|  57|[0x80002690]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 4  #nosat<br>                                                         |[0x80000758]:fcvt.wu.s t6, ft11, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:sw t6, 416(a5)<br>  |
|  58|[0x800026a0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 3  #nosat<br>                                                         |[0x80000770]:fcvt.wu.s t6, ft11, dyn<br> [0x80000774]:csrrs a7, fflags, zero<br> [0x80000778]:sw t6, 432(a5)<br>  |
|  59|[0x800026b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 2  #nosat<br>                                                         |[0x80000788]:fcvt.wu.s t6, ft11, dyn<br> [0x8000078c]:csrrs a7, fflags, zero<br> [0x80000790]:sw t6, 448(a5)<br>  |
|  60|[0x800026c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 1  #nosat<br>                                                         |[0x800007a0]:fcvt.wu.s t6, ft11, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:sw t6, 464(a5)<br>  |
|  61|[0x800026d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bc and rm_val == 0  #nosat<br>                                                         |[0x800007b8]:fcvt.wu.s t6, ft11, dyn<br> [0x800007bc]:csrrs a7, fflags, zero<br> [0x800007c0]:sw t6, 480(a5)<br>  |
|  62|[0x800026e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 4  #nosat<br>                                                         |[0x800007d0]:fcvt.wu.s t6, ft11, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:sw t6, 496(a5)<br>  |
|  63|[0x800026f0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 3  #nosat<br>                                                         |[0x800007e8]:fcvt.wu.s t6, ft11, dyn<br> [0x800007ec]:csrrs a7, fflags, zero<br> [0x800007f0]:sw t6, 512(a5)<br>  |
|  64|[0x80002700]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 2  #nosat<br>                                                         |[0x80000800]:fcvt.wu.s t6, ft11, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:sw t6, 528(a5)<br>  |
|  65|[0x80002710]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 1  #nosat<br>                                                         |[0x80000818]:fcvt.wu.s t6, ft11, dyn<br> [0x8000081c]:csrrs a7, fflags, zero<br> [0x80000820]:sw t6, 544(a5)<br>  |
|  66|[0x80002720]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923bb and rm_val == 0  #nosat<br>                                                         |[0x80000830]:fcvt.wu.s t6, ft11, dyn<br> [0x80000834]:csrrs a7, fflags, zero<br> [0x80000838]:sw t6, 560(a5)<br>  |
|  67|[0x80002730]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 4  #nosat<br>                                                         |[0x80000848]:fcvt.wu.s t6, ft11, dyn<br> [0x8000084c]:csrrs a7, fflags, zero<br> [0x80000850]:sw t6, 576(a5)<br>  |
|  68|[0x80002740]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 3  #nosat<br>                                                         |[0x80000860]:fcvt.wu.s t6, ft11, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:sw t6, 592(a5)<br>  |
|  69|[0x80002750]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 2  #nosat<br>                                                         |[0x80000878]:fcvt.wu.s t6, ft11, dyn<br> [0x8000087c]:csrrs a7, fflags, zero<br> [0x80000880]:sw t6, 608(a5)<br>  |
|  70|[0x80002760]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 1  #nosat<br>                                                         |[0x80000890]:fcvt.wu.s t6, ft11, dyn<br> [0x80000894]:csrrs a7, fflags, zero<br> [0x80000898]:sw t6, 624(a5)<br>  |
|  71|[0x80002770]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923ba and rm_val == 0  #nosat<br>                                                         |[0x800008a8]:fcvt.wu.s t6, ft11, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:sw t6, 640(a5)<br>  |
|  72|[0x80002780]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 4  #nosat<br>                                                         |[0x800008c0]:fcvt.wu.s t6, ft11, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:sw t6, 656(a5)<br>  |
|  73|[0x80002790]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 3  #nosat<br>                                                         |[0x800008d8]:fcvt.wu.s t6, ft11, dyn<br> [0x800008dc]:csrrs a7, fflags, zero<br> [0x800008e0]:sw t6, 672(a5)<br>  |
|  74|[0x800027a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 2  #nosat<br>                                                         |[0x800008f0]:fcvt.wu.s t6, ft11, dyn<br> [0x800008f4]:csrrs a7, fflags, zero<br> [0x800008f8]:sw t6, 688(a5)<br>  |
|  75|[0x800027b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 1  #nosat<br>                                                         |[0x80000908]:fcvt.wu.s t6, ft11, dyn<br> [0x8000090c]:csrrs a7, fflags, zero<br> [0x80000910]:sw t6, 704(a5)<br>  |
|  76|[0x800027c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b9 and rm_val == 0  #nosat<br>                                                         |[0x80000920]:fcvt.wu.s t6, ft11, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:sw t6, 720(a5)<br>  |
|  77|[0x800027d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 4  #nosat<br>                                                         |[0x80000938]:fcvt.wu.s t6, ft11, dyn<br> [0x8000093c]:csrrs a7, fflags, zero<br> [0x80000940]:sw t6, 736(a5)<br>  |
|  78|[0x800027e0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 3  #nosat<br>                                                         |[0x80000950]:fcvt.wu.s t6, ft11, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:sw t6, 752(a5)<br>  |
|  79|[0x800027f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 2  #nosat<br>                                                         |[0x80000968]:fcvt.wu.s t6, ft11, dyn<br> [0x8000096c]:csrrs a7, fflags, zero<br> [0x80000970]:sw t6, 768(a5)<br>  |
|  80|[0x80002800]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 1  #nosat<br>                                                         |[0x80000980]:fcvt.wu.s t6, ft11, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:sw t6, 784(a5)<br>  |
