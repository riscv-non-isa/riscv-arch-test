
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80003790')]      |
| SIG_REGION                | [('0x80005b04', '0x80007f24', '1156 dwords')]      |
| COV_LABELS                | feq_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/feq_b1-01.S/ref.S    |
| Total Number of coverpoints| 681     |
| Total Coverpoints Hit     | 675      |
| Total Signature Updates   | 1156      |
| STAT1                     | 576      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 578     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003764]:feq.h t6, ft11, ft10
      [0x80003768]:csrrs a7, fflags, zero
      [0x8000376c]:sh t6, 1490(a5)
 -- Signature Address: 0x80007b86 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : feq.h
      - rd : x31
      - rs1 : f31
      - rs2 : f30
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000377c]:feq.h t6, ft11, ft10
      [0x80003780]:csrrs a7, fflags, zero
      [0x80003784]:sh t6, 1500(a5)
 -- Signature Address: 0x80007b90 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : feq.h
      - rd : x31
      - rs1 : f31
      - rs2 : f30
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : feq.h', 'rd : x13', 'rs1 : f7', 'rs2 : f19', 'rs1 != rs2', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000120]:feq.h a3, ft7, fs3
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh a3, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80005b06]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f3', 'rs2 : f3', 'rs1 == rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000138]:feq.h a0, ft3, ft3
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh a0, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80005b10]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f14', 'rs2 : f31', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000150]:feq.h zero, fa4, ft11
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh zero, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x80005b1a]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f22', 'rs2 : f6', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000168]:feq.h s3, fs6, ft6
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sh s3, 30(a5)
Current Store : [0x80000174] : sh a7, 32(a5) -- Store: [0x80005b24]:0x0000000000000010




Last Coverpoint : ['rd : x28', 'rs1 : f8', 'rs2 : f16', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000180]:feq.h t3, fs0, fa6
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sh t3, 40(a5)
Current Store : [0x8000018c] : sh a7, 42(a5) -- Store: [0x80005b2e]:0x0000000000000010




Last Coverpoint : ['rd : x3', 'rs1 : f18', 'rs2 : f14', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000198]:feq.h gp, fs2, fa4
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sh gp, 50(a5)
Current Store : [0x800001a4] : sh a7, 52(a5) -- Store: [0x80005b38]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f17', 'rs2 : f1', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001b0]:feq.h s9, fa7, ft1
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sh s9, 60(a5)
Current Store : [0x800001bc] : sh a7, 62(a5) -- Store: [0x80005b42]:0x0000000000000010




Last Coverpoint : ['rd : x31', 'rs1 : f30', 'rs2 : f28', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001c8]:feq.h t6, ft10, ft8
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sh t6, 70(a5)
Current Store : [0x800001d4] : sh a7, 72(a5) -- Store: [0x80005b4c]:0x0000000000000010




Last Coverpoint : ['rd : x24', 'rs1 : f24', 'rs2 : f30', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001e0]:feq.h s8, fs8, ft10
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sh s8, 80(a5)
Current Store : [0x800001ec] : sh a7, 82(a5) -- Store: [0x80005b56]:0x0000000000000010




Last Coverpoint : ['rd : x4', 'rs1 : f10', 'rs2 : f5', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800001f8]:feq.h tp, fa0, ft5
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sh tp, 90(a5)
Current Store : [0x80000204] : sh a7, 92(a5) -- Store: [0x80005b60]:0x0000000000000010




Last Coverpoint : ['rd : x14', 'rs1 : f13', 'rs2 : f23', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000210]:feq.h a4, fa3, fs7
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sh a4, 100(a5)
Current Store : [0x8000021c] : sh a7, 102(a5) -- Store: [0x80005b6a]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f11', 'rs2 : f0', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000228]:feq.h t1, fa1, ft0
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sh t1, 110(a5)
Current Store : [0x80000234] : sh a7, 112(a5) -- Store: [0x80005b74]:0x0000000000000010




Last Coverpoint : ['rd : x18', 'rs1 : f27', 'rs2 : f13', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000240]:feq.h s2, fs11, fa3
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh s2, 120(a5)
Current Store : [0x8000024c] : sh a7, 122(a5) -- Store: [0x80005b7e]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f12', 'rs2 : f8', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000258]:feq.h s6, fa2, fs0
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sh s6, 130(a5)
Current Store : [0x80000264] : sh a7, 132(a5) -- Store: [0x80005b88]:0x0000000000000010




Last Coverpoint : ['rd : x21', 'rs1 : f28', 'rs2 : f20', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000270]:feq.h s5, ft8, fs4
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sh s5, 140(a5)
Current Store : [0x8000027c] : sh a7, 142(a5) -- Store: [0x80005b92]:0x0000000000000010




Last Coverpoint : ['rd : x27', 'rs1 : f19', 'rs2 : f29', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000288]:feq.h s11, fs3, ft9
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sh s11, 150(a5)
Current Store : [0x80000294] : sh a7, 152(a5) -- Store: [0x80005b9c]:0x0000000000000010




Last Coverpoint : ['rd : x15', 'rs1 : f0', 'rs2 : f15', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002ac]:feq.h a5, ft0, fa5
	-[0x800002b0]:csrrs s5, fflags, zero
	-[0x800002b4]:sh a5, 0(s3)
Current Store : [0x800002b8] : sh s5, 2(s3) -- Store: [0x80005c06]:0x0000000000000010




Last Coverpoint : ['rd : x16', 'rs1 : f26', 'rs2 : f2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002c4]:feq.h a6, fs10, ft2
	-[0x800002c8]:csrrs s5, fflags, zero
	-[0x800002cc]:sh a6, 10(s3)
Current Store : [0x800002d0] : sh s5, 12(s3) -- Store: [0x80005c10]:0x0000000000000010




Last Coverpoint : ['rd : x20', 'rs1 : f5', 'rs2 : f25', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800002e8]:feq.h s4, ft5, fs9
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sh s4, 0(a5)
Current Store : [0x800002f4] : sh a7, 2(a5) -- Store: [0x80005c26]:0x0000000000000010




Last Coverpoint : ['rd : x5', 'rs1 : f4', 'rs2 : f11', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000300]:feq.h t0, ft4, fa1
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sh t0, 10(a5)
Current Store : [0x8000030c] : sh a7, 12(a5) -- Store: [0x80005c30]:0x0000000000000010




Last Coverpoint : ['rd : x17', 'rs1 : f23', 'rs2 : f27', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000324]:feq.h a7, fs7, fs11
	-[0x80000328]:csrrs s5, fflags, zero
	-[0x8000032c]:sh a7, 0(s3)
Current Store : [0x80000330] : sh s5, 2(s3) -- Store: [0x80005c46]:0x0000000000000010




Last Coverpoint : ['rd : x1', 'rs1 : f15', 'rs2 : f12', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000348]:feq.h ra, fa5, fa2
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh ra, 0(a5)
Current Store : [0x80000354] : sh a7, 2(a5) -- Store: [0x80005c56]:0x0000000000000010




Last Coverpoint : ['rd : x7', 'rs1 : f9', 'rs2 : f4', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000360]:feq.h t2, fs1, ft4
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh t2, 10(a5)
Current Store : [0x8000036c] : sh a7, 12(a5) -- Store: [0x80005c60]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f2', 'rs2 : f24', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000378]:feq.h t5, ft2, fs8
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh t5, 20(a5)
Current Store : [0x80000384] : sh a7, 22(a5) -- Store: [0x80005c6a]:0x0000000000000010




Last Coverpoint : ['rd : x26', 'rs1 : f21', 'rs2 : f26', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000390]:feq.h s10, fs5, fs10
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sh s10, 30(a5)
Current Store : [0x8000039c] : sh a7, 32(a5) -- Store: [0x80005c74]:0x0000000000000010




Last Coverpoint : ['rd : x23', 'rs1 : f6', 'rs2 : f21', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003a8]:feq.h s7, ft6, fs5
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sh s7, 40(a5)
Current Store : [0x800003b4] : sh a7, 42(a5) -- Store: [0x80005c7e]:0x0000000000000010




Last Coverpoint : ['rd : x8', 'rs1 : f31', 'rs2 : f18', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003c0]:feq.h fp, ft11, fs2
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh fp, 50(a5)
Current Store : [0x800003cc] : sh a7, 52(a5) -- Store: [0x80005c88]:0x0000000000000010




Last Coverpoint : ['rd : x9', 'rs1 : f20', 'rs2 : f9', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003d8]:feq.h s1, fs4, fs1
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh s1, 60(a5)
Current Store : [0x800003e4] : sh a7, 62(a5) -- Store: [0x80005c92]:0x0000000000000010




Last Coverpoint : ['rd : x12', 'rs1 : f1', 'rs2 : f7', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800003f0]:feq.h a2, ft1, ft7
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh a2, 70(a5)
Current Store : [0x800003fc] : sh a7, 72(a5) -- Store: [0x80005c9c]:0x0000000000000010




Last Coverpoint : ['rd : x29', 'rs1 : f25', 'rs2 : f22', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000408]:feq.h t4, fs9, fs6
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sh t4, 80(a5)
Current Store : [0x80000414] : sh a7, 82(a5) -- Store: [0x80005ca6]:0x0000000000000010




Last Coverpoint : ['rd : x11', 'rs1 : f16', 'rs2 : f10', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000420]:feq.h a1, fa6, fa0
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sh a1, 90(a5)
Current Store : [0x8000042c] : sh a7, 92(a5) -- Store: [0x80005cb0]:0x0000000000000010




Last Coverpoint : ['rd : x2', 'rs1 : f29', 'rs2 : f17', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000438]:feq.h sp, ft9, fa7
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sh sp, 100(a5)
Current Store : [0x80000444] : sh a7, 102(a5) -- Store: [0x80005cba]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000450]:feq.h t6, ft11, ft10
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh t6, 110(a5)
Current Store : [0x8000045c] : sh a7, 112(a5) -- Store: [0x80005cc4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000468]:feq.h t6, ft11, ft10
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sh t6, 120(a5)
Current Store : [0x80000474] : sh a7, 122(a5) -- Store: [0x80005cce]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000480]:feq.h t6, ft11, ft10
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:sh t6, 130(a5)
Current Store : [0x8000048c] : sh a7, 132(a5) -- Store: [0x80005cd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000498]:feq.h t6, ft11, ft10
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:sh t6, 140(a5)
Current Store : [0x800004a4] : sh a7, 142(a5) -- Store: [0x80005ce2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004b0]:feq.h t6, ft11, ft10
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:sh t6, 150(a5)
Current Store : [0x800004bc] : sh a7, 152(a5) -- Store: [0x80005cec]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004c8]:feq.h t6, ft11, ft10
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:sh t6, 160(a5)
Current Store : [0x800004d4] : sh a7, 162(a5) -- Store: [0x80005cf6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004e0]:feq.h t6, ft11, ft10
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:sh t6, 170(a5)
Current Store : [0x800004ec] : sh a7, 172(a5) -- Store: [0x80005d00]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004f8]:feq.h t6, ft11, ft10
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:sh t6, 180(a5)
Current Store : [0x80000504] : sh a7, 182(a5) -- Store: [0x80005d0a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000510]:feq.h t6, ft11, ft10
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:sh t6, 190(a5)
Current Store : [0x8000051c] : sh a7, 192(a5) -- Store: [0x80005d14]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000528]:feq.h t6, ft11, ft10
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:sh t6, 200(a5)
Current Store : [0x80000534] : sh a7, 202(a5) -- Store: [0x80005d1e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000540]:feq.h t6, ft11, ft10
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:sh t6, 210(a5)
Current Store : [0x8000054c] : sh a7, 212(a5) -- Store: [0x80005d28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000558]:feq.h t6, ft11, ft10
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:sh t6, 220(a5)
Current Store : [0x80000564] : sh a7, 222(a5) -- Store: [0x80005d32]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000570]:feq.h t6, ft11, ft10
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:sh t6, 230(a5)
Current Store : [0x8000057c] : sh a7, 232(a5) -- Store: [0x80005d3c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000588]:feq.h t6, ft11, ft10
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:sh t6, 240(a5)
Current Store : [0x80000594] : sh a7, 242(a5) -- Store: [0x80005d46]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005a0]:feq.h t6, ft11, ft10
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:sh t6, 250(a5)
Current Store : [0x800005ac] : sh a7, 252(a5) -- Store: [0x80005d50]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005b8]:feq.h t6, ft11, ft10
	-[0x800005bc]:csrrs a7, fflags, zero
	-[0x800005c0]:sh t6, 260(a5)
Current Store : [0x800005c4] : sh a7, 262(a5) -- Store: [0x80005d5a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005d0]:feq.h t6, ft11, ft10
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:sh t6, 270(a5)
Current Store : [0x800005dc] : sh a7, 272(a5) -- Store: [0x80005d64]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005e8]:feq.h t6, ft11, ft10
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:sh t6, 280(a5)
Current Store : [0x800005f4] : sh a7, 282(a5) -- Store: [0x80005d6e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000600]:feq.h t6, ft11, ft10
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:sh t6, 290(a5)
Current Store : [0x8000060c] : sh a7, 292(a5) -- Store: [0x80005d78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000618]:feq.h t6, ft11, ft10
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:sh t6, 300(a5)
Current Store : [0x80000624] : sh a7, 302(a5) -- Store: [0x80005d82]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000630]:feq.h t6, ft11, ft10
	-[0x80000634]:csrrs a7, fflags, zero
	-[0x80000638]:sh t6, 310(a5)
Current Store : [0x8000063c] : sh a7, 312(a5) -- Store: [0x80005d8c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000648]:feq.h t6, ft11, ft10
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:sh t6, 320(a5)
Current Store : [0x80000654] : sh a7, 322(a5) -- Store: [0x80005d96]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000660]:feq.h t6, ft11, ft10
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:sh t6, 330(a5)
Current Store : [0x8000066c] : sh a7, 332(a5) -- Store: [0x80005da0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000678]:feq.h t6, ft11, ft10
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:sh t6, 340(a5)
Current Store : [0x80000684] : sh a7, 342(a5) -- Store: [0x80005daa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000690]:feq.h t6, ft11, ft10
	-[0x80000694]:csrrs a7, fflags, zero
	-[0x80000698]:sh t6, 350(a5)
Current Store : [0x8000069c] : sh a7, 352(a5) -- Store: [0x80005db4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006a8]:feq.h t6, ft11, ft10
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:sh t6, 360(a5)
Current Store : [0x800006b4] : sh a7, 362(a5) -- Store: [0x80005dbe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006c0]:feq.h t6, ft11, ft10
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:sh t6, 370(a5)
Current Store : [0x800006cc] : sh a7, 372(a5) -- Store: [0x80005dc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006d8]:feq.h t6, ft11, ft10
	-[0x800006dc]:csrrs a7, fflags, zero
	-[0x800006e0]:sh t6, 380(a5)
Current Store : [0x800006e4] : sh a7, 382(a5) -- Store: [0x80005dd2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006f0]:feq.h t6, ft11, ft10
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:sh t6, 390(a5)
Current Store : [0x800006fc] : sh a7, 392(a5) -- Store: [0x80005ddc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000708]:feq.h t6, ft11, ft10
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:sh t6, 400(a5)
Current Store : [0x80000714] : sh a7, 402(a5) -- Store: [0x80005de6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000720]:feq.h t6, ft11, ft10
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:sh t6, 410(a5)
Current Store : [0x8000072c] : sh a7, 412(a5) -- Store: [0x80005df0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000738]:feq.h t6, ft11, ft10
	-[0x8000073c]:csrrs a7, fflags, zero
	-[0x80000740]:sh t6, 420(a5)
Current Store : [0x80000744] : sh a7, 422(a5) -- Store: [0x80005dfa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000750]:feq.h t6, ft11, ft10
	-[0x80000754]:csrrs a7, fflags, zero
	-[0x80000758]:sh t6, 430(a5)
Current Store : [0x8000075c] : sh a7, 432(a5) -- Store: [0x80005e04]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000768]:feq.h t6, ft11, ft10
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:sh t6, 440(a5)
Current Store : [0x80000774] : sh a7, 442(a5) -- Store: [0x80005e0e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000780]:feq.h t6, ft11, ft10
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:sh t6, 450(a5)
Current Store : [0x8000078c] : sh a7, 452(a5) -- Store: [0x80005e18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000798]:feq.h t6, ft11, ft10
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:sh t6, 460(a5)
Current Store : [0x800007a4] : sh a7, 462(a5) -- Store: [0x80005e22]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007b0]:feq.h t6, ft11, ft10
	-[0x800007b4]:csrrs a7, fflags, zero
	-[0x800007b8]:sh t6, 470(a5)
Current Store : [0x800007bc] : sh a7, 472(a5) -- Store: [0x80005e2c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007c8]:feq.h t6, ft11, ft10
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:sh t6, 480(a5)
Current Store : [0x800007d4] : sh a7, 482(a5) -- Store: [0x80005e36]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007e0]:feq.h t6, ft11, ft10
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:sh t6, 490(a5)
Current Store : [0x800007ec] : sh a7, 492(a5) -- Store: [0x80005e40]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007f8]:feq.h t6, ft11, ft10
	-[0x800007fc]:csrrs a7, fflags, zero
	-[0x80000800]:sh t6, 500(a5)
Current Store : [0x80000804] : sh a7, 502(a5) -- Store: [0x80005e4a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000810]:feq.h t6, ft11, ft10
	-[0x80000814]:csrrs a7, fflags, zero
	-[0x80000818]:sh t6, 510(a5)
Current Store : [0x8000081c] : sh a7, 512(a5) -- Store: [0x80005e54]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000828]:feq.h t6, ft11, ft10
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:sh t6, 520(a5)
Current Store : [0x80000834] : sh a7, 522(a5) -- Store: [0x80005e5e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000840]:feq.h t6, ft11, ft10
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:sh t6, 530(a5)
Current Store : [0x8000084c] : sh a7, 532(a5) -- Store: [0x80005e68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000858]:feq.h t6, ft11, ft10
	-[0x8000085c]:csrrs a7, fflags, zero
	-[0x80000860]:sh t6, 540(a5)
Current Store : [0x80000864] : sh a7, 542(a5) -- Store: [0x80005e72]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000870]:feq.h t6, ft11, ft10
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:sh t6, 550(a5)
Current Store : [0x8000087c] : sh a7, 552(a5) -- Store: [0x80005e7c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000888]:feq.h t6, ft11, ft10
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:sh t6, 560(a5)
Current Store : [0x80000894] : sh a7, 562(a5) -- Store: [0x80005e86]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008a0]:feq.h t6, ft11, ft10
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:sh t6, 570(a5)
Current Store : [0x800008ac] : sh a7, 572(a5) -- Store: [0x80005e90]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008b8]:feq.h t6, ft11, ft10
	-[0x800008bc]:csrrs a7, fflags, zero
	-[0x800008c0]:sh t6, 580(a5)
Current Store : [0x800008c4] : sh a7, 582(a5) -- Store: [0x80005e9a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008d0]:feq.h t6, ft11, ft10
	-[0x800008d4]:csrrs a7, fflags, zero
	-[0x800008d8]:sh t6, 590(a5)
Current Store : [0x800008dc] : sh a7, 592(a5) -- Store: [0x80005ea4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008e8]:feq.h t6, ft11, ft10
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:sh t6, 600(a5)
Current Store : [0x800008f4] : sh a7, 602(a5) -- Store: [0x80005eae]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000900]:feq.h t6, ft11, ft10
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:sh t6, 610(a5)
Current Store : [0x8000090c] : sh a7, 612(a5) -- Store: [0x80005eb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000918]:feq.h t6, ft11, ft10
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:sh t6, 620(a5)
Current Store : [0x80000924] : sh a7, 622(a5) -- Store: [0x80005ec2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000930]:feq.h t6, ft11, ft10
	-[0x80000934]:csrrs a7, fflags, zero
	-[0x80000938]:sh t6, 630(a5)
Current Store : [0x8000093c] : sh a7, 632(a5) -- Store: [0x80005ecc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000948]:feq.h t6, ft11, ft10
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:sh t6, 640(a5)
Current Store : [0x80000954] : sh a7, 642(a5) -- Store: [0x80005ed6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000960]:feq.h t6, ft11, ft10
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:sh t6, 650(a5)
Current Store : [0x8000096c] : sh a7, 652(a5) -- Store: [0x80005ee0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000978]:feq.h t6, ft11, ft10
	-[0x8000097c]:csrrs a7, fflags, zero
	-[0x80000980]:sh t6, 660(a5)
Current Store : [0x80000984] : sh a7, 662(a5) -- Store: [0x80005eea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000990]:feq.h t6, ft11, ft10
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:sh t6, 670(a5)
Current Store : [0x8000099c] : sh a7, 672(a5) -- Store: [0x80005ef4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009a8]:feq.h t6, ft11, ft10
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:sh t6, 680(a5)
Current Store : [0x800009b4] : sh a7, 682(a5) -- Store: [0x80005efe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009c0]:feq.h t6, ft11, ft10
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:sh t6, 690(a5)
Current Store : [0x800009cc] : sh a7, 692(a5) -- Store: [0x80005f08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009d8]:feq.h t6, ft11, ft10
	-[0x800009dc]:csrrs a7, fflags, zero
	-[0x800009e0]:sh t6, 700(a5)
Current Store : [0x800009e4] : sh a7, 702(a5) -- Store: [0x80005f12]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009f0]:feq.h t6, ft11, ft10
	-[0x800009f4]:csrrs a7, fflags, zero
	-[0x800009f8]:sh t6, 710(a5)
Current Store : [0x800009fc] : sh a7, 712(a5) -- Store: [0x80005f1c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a08]:feq.h t6, ft11, ft10
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:sh t6, 720(a5)
Current Store : [0x80000a14] : sh a7, 722(a5) -- Store: [0x80005f26]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a20]:feq.h t6, ft11, ft10
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:sh t6, 730(a5)
Current Store : [0x80000a2c] : sh a7, 732(a5) -- Store: [0x80005f30]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a38]:feq.h t6, ft11, ft10
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:sh t6, 740(a5)
Current Store : [0x80000a44] : sh a7, 742(a5) -- Store: [0x80005f3a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a50]:feq.h t6, ft11, ft10
	-[0x80000a54]:csrrs a7, fflags, zero
	-[0x80000a58]:sh t6, 750(a5)
Current Store : [0x80000a5c] : sh a7, 752(a5) -- Store: [0x80005f44]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a68]:feq.h t6, ft11, ft10
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:sh t6, 760(a5)
Current Store : [0x80000a74] : sh a7, 762(a5) -- Store: [0x80005f4e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a80]:feq.h t6, ft11, ft10
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:sh t6, 770(a5)
Current Store : [0x80000a8c] : sh a7, 772(a5) -- Store: [0x80005f58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a98]:feq.h t6, ft11, ft10
	-[0x80000a9c]:csrrs a7, fflags, zero
	-[0x80000aa0]:sh t6, 780(a5)
Current Store : [0x80000aa4] : sh a7, 782(a5) -- Store: [0x80005f62]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ab0]:feq.h t6, ft11, ft10
	-[0x80000ab4]:csrrs a7, fflags, zero
	-[0x80000ab8]:sh t6, 790(a5)
Current Store : [0x80000abc] : sh a7, 792(a5) -- Store: [0x80005f6c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:feq.h t6, ft11, ft10
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:sh t6, 800(a5)
Current Store : [0x80000ad4] : sh a7, 802(a5) -- Store: [0x80005f76]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:feq.h t6, ft11, ft10
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:sh t6, 810(a5)
Current Store : [0x80000aec] : sh a7, 812(a5) -- Store: [0x80005f80]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000af8]:feq.h t6, ft11, ft10
	-[0x80000afc]:csrrs a7, fflags, zero
	-[0x80000b00]:sh t6, 820(a5)
Current Store : [0x80000b04] : sh a7, 822(a5) -- Store: [0x80005f8a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b10]:feq.h t6, ft11, ft10
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:sh t6, 830(a5)
Current Store : [0x80000b1c] : sh a7, 832(a5) -- Store: [0x80005f94]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b28]:feq.h t6, ft11, ft10
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:sh t6, 840(a5)
Current Store : [0x80000b34] : sh a7, 842(a5) -- Store: [0x80005f9e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b40]:feq.h t6, ft11, ft10
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:sh t6, 850(a5)
Current Store : [0x80000b4c] : sh a7, 852(a5) -- Store: [0x80005fa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b58]:feq.h t6, ft11, ft10
	-[0x80000b5c]:csrrs a7, fflags, zero
	-[0x80000b60]:sh t6, 860(a5)
Current Store : [0x80000b64] : sh a7, 862(a5) -- Store: [0x80005fb2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b70]:feq.h t6, ft11, ft10
	-[0x80000b74]:csrrs a7, fflags, zero
	-[0x80000b78]:sh t6, 870(a5)
Current Store : [0x80000b7c] : sh a7, 872(a5) -- Store: [0x80005fbc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b88]:feq.h t6, ft11, ft10
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:sh t6, 880(a5)
Current Store : [0x80000b94] : sh a7, 882(a5) -- Store: [0x80005fc6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:feq.h t6, ft11, ft10
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:sh t6, 890(a5)
Current Store : [0x80000bac] : sh a7, 892(a5) -- Store: [0x80005fd0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:feq.h t6, ft11, ft10
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:sh t6, 900(a5)
Current Store : [0x80000bc4] : sh a7, 902(a5) -- Store: [0x80005fda]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000bd0]:feq.h t6, ft11, ft10
	-[0x80000bd4]:csrrs a7, fflags, zero
	-[0x80000bd8]:sh t6, 910(a5)
Current Store : [0x80000bdc] : sh a7, 912(a5) -- Store: [0x80005fe4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000be8]:feq.h t6, ft11, ft10
	-[0x80000bec]:csrrs a7, fflags, zero
	-[0x80000bf0]:sh t6, 920(a5)
Current Store : [0x80000bf4] : sh a7, 922(a5) -- Store: [0x80005fee]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c00]:feq.h t6, ft11, ft10
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:sh t6, 930(a5)
Current Store : [0x80000c0c] : sh a7, 932(a5) -- Store: [0x80005ff8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c18]:feq.h t6, ft11, ft10
	-[0x80000c1c]:csrrs a7, fflags, zero
	-[0x80000c20]:sh t6, 940(a5)
Current Store : [0x80000c24] : sh a7, 942(a5) -- Store: [0x80006002]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c30]:feq.h t6, ft11, ft10
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:sh t6, 950(a5)
Current Store : [0x80000c3c] : sh a7, 952(a5) -- Store: [0x8000600c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c48]:feq.h t6, ft11, ft10
	-[0x80000c4c]:csrrs a7, fflags, zero
	-[0x80000c50]:sh t6, 960(a5)
Current Store : [0x80000c54] : sh a7, 962(a5) -- Store: [0x80006016]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c60]:feq.h t6, ft11, ft10
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:sh t6, 970(a5)
Current Store : [0x80000c6c] : sh a7, 972(a5) -- Store: [0x80006020]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c78]:feq.h t6, ft11, ft10
	-[0x80000c7c]:csrrs a7, fflags, zero
	-[0x80000c80]:sh t6, 980(a5)
Current Store : [0x80000c84] : sh a7, 982(a5) -- Store: [0x8000602a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c90]:feq.h t6, ft11, ft10
	-[0x80000c94]:csrrs a7, fflags, zero
	-[0x80000c98]:sh t6, 990(a5)
Current Store : [0x80000c9c] : sh a7, 992(a5) -- Store: [0x80006034]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ca8]:feq.h t6, ft11, ft10
	-[0x80000cac]:csrrs a7, fflags, zero
	-[0x80000cb0]:sh t6, 1000(a5)
Current Store : [0x80000cb4] : sh a7, 1002(a5) -- Store: [0x8000603e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:feq.h t6, ft11, ft10
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:sh t6, 1010(a5)
Current Store : [0x80000ccc] : sh a7, 1012(a5) -- Store: [0x80006048]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:feq.h t6, ft11, ft10
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:sh t6, 1020(a5)
Current Store : [0x80000ce4] : sh a7, 1022(a5) -- Store: [0x80006052]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cf0]:feq.h t6, ft11, ft10
	-[0x80000cf4]:csrrs a7, fflags, zero
	-[0x80000cf8]:sh t6, 1030(a5)
Current Store : [0x80000cfc] : sh a7, 1032(a5) -- Store: [0x8000605c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d08]:feq.h t6, ft11, ft10
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:sh t6, 1040(a5)
Current Store : [0x80000d14] : sh a7, 1042(a5) -- Store: [0x80006066]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d20]:feq.h t6, ft11, ft10
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:sh t6, 1050(a5)
Current Store : [0x80000d2c] : sh a7, 1052(a5) -- Store: [0x80006070]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d38]:feq.h t6, ft11, ft10
	-[0x80000d3c]:csrrs a7, fflags, zero
	-[0x80000d40]:sh t6, 1060(a5)
Current Store : [0x80000d44] : sh a7, 1062(a5) -- Store: [0x8000607a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d50]:feq.h t6, ft11, ft10
	-[0x80000d54]:csrrs a7, fflags, zero
	-[0x80000d58]:sh t6, 1070(a5)
Current Store : [0x80000d5c] : sh a7, 1072(a5) -- Store: [0x80006084]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d68]:feq.h t6, ft11, ft10
	-[0x80000d6c]:csrrs a7, fflags, zero
	-[0x80000d70]:sh t6, 1080(a5)
Current Store : [0x80000d74] : sh a7, 1082(a5) -- Store: [0x8000608e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d80]:feq.h t6, ft11, ft10
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:sh t6, 1090(a5)
Current Store : [0x80000d8c] : sh a7, 1092(a5) -- Store: [0x80006098]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d98]:feq.h t6, ft11, ft10
	-[0x80000d9c]:csrrs a7, fflags, zero
	-[0x80000da0]:sh t6, 1100(a5)
Current Store : [0x80000da4] : sh a7, 1102(a5) -- Store: [0x800060a2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000db0]:feq.h t6, ft11, ft10
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:sh t6, 1110(a5)
Current Store : [0x80000dbc] : sh a7, 1112(a5) -- Store: [0x800060ac]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000dc8]:feq.h t6, ft11, ft10
	-[0x80000dcc]:csrrs a7, fflags, zero
	-[0x80000dd0]:sh t6, 1120(a5)
Current Store : [0x80000dd4] : sh a7, 1122(a5) -- Store: [0x800060b6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000de0]:feq.h t6, ft11, ft10
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:sh t6, 1130(a5)
Current Store : [0x80000dec] : sh a7, 1132(a5) -- Store: [0x800060c0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000df8]:feq.h t6, ft11, ft10
	-[0x80000dfc]:csrrs a7, fflags, zero
	-[0x80000e00]:sh t6, 1140(a5)
Current Store : [0x80000e04] : sh a7, 1142(a5) -- Store: [0x800060ca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e10]:feq.h t6, ft11, ft10
	-[0x80000e14]:csrrs a7, fflags, zero
	-[0x80000e18]:sh t6, 1150(a5)
Current Store : [0x80000e1c] : sh a7, 1152(a5) -- Store: [0x800060d4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e28]:feq.h t6, ft11, ft10
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:sh t6, 1160(a5)
Current Store : [0x80000e34] : sh a7, 1162(a5) -- Store: [0x800060de]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e40]:feq.h t6, ft11, ft10
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:sh t6, 1170(a5)
Current Store : [0x80000e4c] : sh a7, 1172(a5) -- Store: [0x800060e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e58]:feq.h t6, ft11, ft10
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:sh t6, 1180(a5)
Current Store : [0x80000e64] : sh a7, 1182(a5) -- Store: [0x800060f2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e70]:feq.h t6, ft11, ft10
	-[0x80000e74]:csrrs a7, fflags, zero
	-[0x80000e78]:sh t6, 1190(a5)
Current Store : [0x80000e7c] : sh a7, 1192(a5) -- Store: [0x800060fc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e88]:feq.h t6, ft11, ft10
	-[0x80000e8c]:csrrs a7, fflags, zero
	-[0x80000e90]:sh t6, 1200(a5)
Current Store : [0x80000e94] : sh a7, 1202(a5) -- Store: [0x80006106]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ea0]:feq.h t6, ft11, ft10
	-[0x80000ea4]:csrrs a7, fflags, zero
	-[0x80000ea8]:sh t6, 1210(a5)
Current Store : [0x80000eac] : sh a7, 1212(a5) -- Store: [0x80006110]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000eb8]:feq.h t6, ft11, ft10
	-[0x80000ebc]:csrrs a7, fflags, zero
	-[0x80000ec0]:sh t6, 1220(a5)
Current Store : [0x80000ec4] : sh a7, 1222(a5) -- Store: [0x8000611a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:feq.h t6, ft11, ft10
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:sh t6, 1230(a5)
Current Store : [0x80000edc] : sh a7, 1232(a5) -- Store: [0x80006124]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ee8]:feq.h t6, ft11, ft10
	-[0x80000eec]:csrrs a7, fflags, zero
	-[0x80000ef0]:sh t6, 1240(a5)
Current Store : [0x80000ef4] : sh a7, 1242(a5) -- Store: [0x8000612e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f00]:feq.h t6, ft11, ft10
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:sh t6, 1250(a5)
Current Store : [0x80000f0c] : sh a7, 1252(a5) -- Store: [0x80006138]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f18]:feq.h t6, ft11, ft10
	-[0x80000f1c]:csrrs a7, fflags, zero
	-[0x80000f20]:sh t6, 1260(a5)
Current Store : [0x80000f24] : sh a7, 1262(a5) -- Store: [0x80006142]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f30]:feq.h t6, ft11, ft10
	-[0x80000f34]:csrrs a7, fflags, zero
	-[0x80000f38]:sh t6, 1270(a5)
Current Store : [0x80000f3c] : sh a7, 1272(a5) -- Store: [0x8000614c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f48]:feq.h t6, ft11, ft10
	-[0x80000f4c]:csrrs a7, fflags, zero
	-[0x80000f50]:sh t6, 1280(a5)
Current Store : [0x80000f54] : sh a7, 1282(a5) -- Store: [0x80006156]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f60]:feq.h t6, ft11, ft10
	-[0x80000f64]:csrrs a7, fflags, zero
	-[0x80000f68]:sh t6, 1290(a5)
Current Store : [0x80000f6c] : sh a7, 1292(a5) -- Store: [0x80006160]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f78]:feq.h t6, ft11, ft10
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:sh t6, 1300(a5)
Current Store : [0x80000f84] : sh a7, 1302(a5) -- Store: [0x8000616a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f90]:feq.h t6, ft11, ft10
	-[0x80000f94]:csrrs a7, fflags, zero
	-[0x80000f98]:sh t6, 1310(a5)
Current Store : [0x80000f9c] : sh a7, 1312(a5) -- Store: [0x80006174]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:feq.h t6, ft11, ft10
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:sh t6, 1320(a5)
Current Store : [0x80000fb4] : sh a7, 1322(a5) -- Store: [0x8000617e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000fc0]:feq.h t6, ft11, ft10
	-[0x80000fc4]:csrrs a7, fflags, zero
	-[0x80000fc8]:sh t6, 1330(a5)
Current Store : [0x80000fcc] : sh a7, 1332(a5) -- Store: [0x80006188]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000fd8]:feq.h t6, ft11, ft10
	-[0x80000fdc]:csrrs a7, fflags, zero
	-[0x80000fe0]:sh t6, 1340(a5)
Current Store : [0x80000fe4] : sh a7, 1342(a5) -- Store: [0x80006192]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ff0]:feq.h t6, ft11, ft10
	-[0x80000ff4]:csrrs a7, fflags, zero
	-[0x80000ff8]:sh t6, 1350(a5)
Current Store : [0x80000ffc] : sh a7, 1352(a5) -- Store: [0x8000619c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001008]:feq.h t6, ft11, ft10
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:sh t6, 1360(a5)
Current Store : [0x80001014] : sh a7, 1362(a5) -- Store: [0x800061a6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001020]:feq.h t6, ft11, ft10
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:sh t6, 1370(a5)
Current Store : [0x8000102c] : sh a7, 1372(a5) -- Store: [0x800061b0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001038]:feq.h t6, ft11, ft10
	-[0x8000103c]:csrrs a7, fflags, zero
	-[0x80001040]:sh t6, 1380(a5)
Current Store : [0x80001044] : sh a7, 1382(a5) -- Store: [0x800061ba]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001050]:feq.h t6, ft11, ft10
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:sh t6, 1390(a5)
Current Store : [0x8000105c] : sh a7, 1392(a5) -- Store: [0x800061c4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001068]:feq.h t6, ft11, ft10
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:sh t6, 1400(a5)
Current Store : [0x80001074] : sh a7, 1402(a5) -- Store: [0x800061ce]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001080]:feq.h t6, ft11, ft10
	-[0x80001084]:csrrs a7, fflags, zero
	-[0x80001088]:sh t6, 1410(a5)
Current Store : [0x8000108c] : sh a7, 1412(a5) -- Store: [0x800061d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001098]:feq.h t6, ft11, ft10
	-[0x8000109c]:csrrs a7, fflags, zero
	-[0x800010a0]:sh t6, 1420(a5)
Current Store : [0x800010a4] : sh a7, 1422(a5) -- Store: [0x800061e2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010b0]:feq.h t6, ft11, ft10
	-[0x800010b4]:csrrs a7, fflags, zero
	-[0x800010b8]:sh t6, 1430(a5)
Current Store : [0x800010bc] : sh a7, 1432(a5) -- Store: [0x800061ec]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010c8]:feq.h t6, ft11, ft10
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:sh t6, 1440(a5)
Current Store : [0x800010d4] : sh a7, 1442(a5) -- Store: [0x800061f6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010e0]:feq.h t6, ft11, ft10
	-[0x800010e4]:csrrs a7, fflags, zero
	-[0x800010e8]:sh t6, 1450(a5)
Current Store : [0x800010ec] : sh a7, 1452(a5) -- Store: [0x80006200]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010f8]:feq.h t6, ft11, ft10
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:sh t6, 1460(a5)
Current Store : [0x80001104] : sh a7, 1462(a5) -- Store: [0x8000620a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001110]:feq.h t6, ft11, ft10
	-[0x80001114]:csrrs a7, fflags, zero
	-[0x80001118]:sh t6, 1470(a5)
Current Store : [0x8000111c] : sh a7, 1472(a5) -- Store: [0x80006214]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001128]:feq.h t6, ft11, ft10
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:sh t6, 1480(a5)
Current Store : [0x80001134] : sh a7, 1482(a5) -- Store: [0x8000621e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001140]:feq.h t6, ft11, ft10
	-[0x80001144]:csrrs a7, fflags, zero
	-[0x80001148]:sh t6, 1490(a5)
Current Store : [0x8000114c] : sh a7, 1492(a5) -- Store: [0x80006228]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001158]:feq.h t6, ft11, ft10
	-[0x8000115c]:csrrs a7, fflags, zero
	-[0x80001160]:sh t6, 1500(a5)
Current Store : [0x80001164] : sh a7, 1502(a5) -- Store: [0x80006232]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001170]:feq.h t6, ft11, ft10
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:sh t6, 1510(a5)
Current Store : [0x8000117c] : sh a7, 1512(a5) -- Store: [0x8000623c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001188]:feq.h t6, ft11, ft10
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:sh t6, 1520(a5)
Current Store : [0x80001194] : sh a7, 1522(a5) -- Store: [0x80006246]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011a0]:feq.h t6, ft11, ft10
	-[0x800011a4]:csrrs a7, fflags, zero
	-[0x800011a8]:sh t6, 1530(a5)
Current Store : [0x800011ac] : sh a7, 1532(a5) -- Store: [0x80006250]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011b8]:feq.h t6, ft11, ft10
	-[0x800011bc]:csrrs a7, fflags, zero
	-[0x800011c0]:sh t6, 1540(a5)
Current Store : [0x800011c4] : sh a7, 1542(a5) -- Store: [0x8000625a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011d0]:feq.h t6, ft11, ft10
	-[0x800011d4]:csrrs a7, fflags, zero
	-[0x800011d8]:sh t6, 1550(a5)
Current Store : [0x800011dc] : sh a7, 1552(a5) -- Store: [0x80006264]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011e8]:feq.h t6, ft11, ft10
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:sh t6, 1560(a5)
Current Store : [0x800011f4] : sh a7, 1562(a5) -- Store: [0x8000626e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001200]:feq.h t6, ft11, ft10
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:sh t6, 1570(a5)
Current Store : [0x8000120c] : sh a7, 1572(a5) -- Store: [0x80006278]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001218]:feq.h t6, ft11, ft10
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:sh t6, 1580(a5)
Current Store : [0x80001224] : sh a7, 1582(a5) -- Store: [0x80006282]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001230]:feq.h t6, ft11, ft10
	-[0x80001234]:csrrs a7, fflags, zero
	-[0x80001238]:sh t6, 1590(a5)
Current Store : [0x8000123c] : sh a7, 1592(a5) -- Store: [0x8000628c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001248]:feq.h t6, ft11, ft10
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:sh t6, 1600(a5)
Current Store : [0x80001254] : sh a7, 1602(a5) -- Store: [0x80006296]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001260]:feq.h t6, ft11, ft10
	-[0x80001264]:csrrs a7, fflags, zero
	-[0x80001268]:sh t6, 1610(a5)
Current Store : [0x8000126c] : sh a7, 1612(a5) -- Store: [0x800062a0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001278]:feq.h t6, ft11, ft10
	-[0x8000127c]:csrrs a7, fflags, zero
	-[0x80001280]:sh t6, 1620(a5)
Current Store : [0x80001284] : sh a7, 1622(a5) -- Store: [0x800062aa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001290]:feq.h t6, ft11, ft10
	-[0x80001294]:csrrs a7, fflags, zero
	-[0x80001298]:sh t6, 1630(a5)
Current Store : [0x8000129c] : sh a7, 1632(a5) -- Store: [0x800062b4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012a8]:feq.h t6, ft11, ft10
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:sh t6, 1640(a5)
Current Store : [0x800012b4] : sh a7, 1642(a5) -- Store: [0x800062be]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012c0]:feq.h t6, ft11, ft10
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:sh t6, 1650(a5)
Current Store : [0x800012cc] : sh a7, 1652(a5) -- Store: [0x800062c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012d8]:feq.h t6, ft11, ft10
	-[0x800012dc]:csrrs a7, fflags, zero
	-[0x800012e0]:sh t6, 1660(a5)
Current Store : [0x800012e4] : sh a7, 1662(a5) -- Store: [0x800062d2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012f0]:feq.h t6, ft11, ft10
	-[0x800012f4]:csrrs a7, fflags, zero
	-[0x800012f8]:sh t6, 1670(a5)
Current Store : [0x800012fc] : sh a7, 1672(a5) -- Store: [0x800062dc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001308]:feq.h t6, ft11, ft10
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:sh t6, 1680(a5)
Current Store : [0x80001314] : sh a7, 1682(a5) -- Store: [0x800062e6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001320]:feq.h t6, ft11, ft10
	-[0x80001324]:csrrs a7, fflags, zero
	-[0x80001328]:sh t6, 1690(a5)
Current Store : [0x8000132c] : sh a7, 1692(a5) -- Store: [0x800062f0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001338]:feq.h t6, ft11, ft10
	-[0x8000133c]:csrrs a7, fflags, zero
	-[0x80001340]:sh t6, 1700(a5)
Current Store : [0x80001344] : sh a7, 1702(a5) -- Store: [0x800062fa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001350]:feq.h t6, ft11, ft10
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:sh t6, 1710(a5)
Current Store : [0x8000135c] : sh a7, 1712(a5) -- Store: [0x80006304]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001368]:feq.h t6, ft11, ft10
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:sh t6, 1720(a5)
Current Store : [0x80001374] : sh a7, 1722(a5) -- Store: [0x8000630e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001380]:feq.h t6, ft11, ft10
	-[0x80001384]:csrrs a7, fflags, zero
	-[0x80001388]:sh t6, 1730(a5)
Current Store : [0x8000138c] : sh a7, 1732(a5) -- Store: [0x80006318]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001398]:feq.h t6, ft11, ft10
	-[0x8000139c]:csrrs a7, fflags, zero
	-[0x800013a0]:sh t6, 1740(a5)
Current Store : [0x800013a4] : sh a7, 1742(a5) -- Store: [0x80006322]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013b0]:feq.h t6, ft11, ft10
	-[0x800013b4]:csrrs a7, fflags, zero
	-[0x800013b8]:sh t6, 1750(a5)
Current Store : [0x800013bc] : sh a7, 1752(a5) -- Store: [0x8000632c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013c8]:feq.h t6, ft11, ft10
	-[0x800013cc]:csrrs a7, fflags, zero
	-[0x800013d0]:sh t6, 1760(a5)
Current Store : [0x800013d4] : sh a7, 1762(a5) -- Store: [0x80006336]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013e0]:feq.h t6, ft11, ft10
	-[0x800013e4]:csrrs a7, fflags, zero
	-[0x800013e8]:sh t6, 1770(a5)
Current Store : [0x800013ec] : sh a7, 1772(a5) -- Store: [0x80006340]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013f8]:feq.h t6, ft11, ft10
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:sh t6, 1780(a5)
Current Store : [0x80001404] : sh a7, 1782(a5) -- Store: [0x8000634a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001410]:feq.h t6, ft11, ft10
	-[0x80001414]:csrrs a7, fflags, zero
	-[0x80001418]:sh t6, 1790(a5)
Current Store : [0x8000141c] : sh a7, 1792(a5) -- Store: [0x80006354]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001428]:feq.h t6, ft11, ft10
	-[0x8000142c]:csrrs a7, fflags, zero
	-[0x80001430]:sh t6, 1800(a5)
Current Store : [0x80001434] : sh a7, 1802(a5) -- Store: [0x8000635e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001440]:feq.h t6, ft11, ft10
	-[0x80001444]:csrrs a7, fflags, zero
	-[0x80001448]:sh t6, 1810(a5)
Current Store : [0x8000144c] : sh a7, 1812(a5) -- Store: [0x80006368]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001458]:feq.h t6, ft11, ft10
	-[0x8000145c]:csrrs a7, fflags, zero
	-[0x80001460]:sh t6, 1820(a5)
Current Store : [0x80001464] : sh a7, 1822(a5) -- Store: [0x80006372]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001470]:feq.h t6, ft11, ft10
	-[0x80001474]:csrrs a7, fflags, zero
	-[0x80001478]:sh t6, 1830(a5)
Current Store : [0x8000147c] : sh a7, 1832(a5) -- Store: [0x8000637c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001488]:feq.h t6, ft11, ft10
	-[0x8000148c]:csrrs a7, fflags, zero
	-[0x80001490]:sh t6, 1840(a5)
Current Store : [0x80001494] : sh a7, 1842(a5) -- Store: [0x80006386]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800014a0]:feq.h t6, ft11, ft10
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:sh t6, 1850(a5)
Current Store : [0x800014ac] : sh a7, 1852(a5) -- Store: [0x80006390]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800014b8]:feq.h t6, ft11, ft10
	-[0x800014bc]:csrrs a7, fflags, zero
	-[0x800014c0]:sh t6, 1860(a5)
Current Store : [0x800014c4] : sh a7, 1862(a5) -- Store: [0x8000639a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800014d0]:feq.h t6, ft11, ft10
	-[0x800014d4]:csrrs a7, fflags, zero
	-[0x800014d8]:sh t6, 1870(a5)
Current Store : [0x800014dc] : sh a7, 1872(a5) -- Store: [0x800063a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800014e8]:feq.h t6, ft11, ft10
	-[0x800014ec]:csrrs a7, fflags, zero
	-[0x800014f0]:sh t6, 1880(a5)
Current Store : [0x800014f4] : sh a7, 1882(a5) -- Store: [0x800063ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001500]:feq.h t6, ft11, ft10
	-[0x80001504]:csrrs a7, fflags, zero
	-[0x80001508]:sh t6, 1890(a5)
Current Store : [0x8000150c] : sh a7, 1892(a5) -- Store: [0x800063b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001518]:feq.h t6, ft11, ft10
	-[0x8000151c]:csrrs a7, fflags, zero
	-[0x80001520]:sh t6, 1900(a5)
Current Store : [0x80001524] : sh a7, 1902(a5) -- Store: [0x800063c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001530]:feq.h t6, ft11, ft10
	-[0x80001534]:csrrs a7, fflags, zero
	-[0x80001538]:sh t6, 1910(a5)
Current Store : [0x8000153c] : sh a7, 1912(a5) -- Store: [0x800063cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001548]:feq.h t6, ft11, ft10
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:sh t6, 1920(a5)
Current Store : [0x80001554] : sh a7, 1922(a5) -- Store: [0x800063d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001560]:feq.h t6, ft11, ft10
	-[0x80001564]:csrrs a7, fflags, zero
	-[0x80001568]:sh t6, 1930(a5)
Current Store : [0x8000156c] : sh a7, 1932(a5) -- Store: [0x800063e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001578]:feq.h t6, ft11, ft10
	-[0x8000157c]:csrrs a7, fflags, zero
	-[0x80001580]:sh t6, 1940(a5)
Current Store : [0x80001584] : sh a7, 1942(a5) -- Store: [0x800063ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001590]:feq.h t6, ft11, ft10
	-[0x80001594]:csrrs a7, fflags, zero
	-[0x80001598]:sh t6, 1950(a5)
Current Store : [0x8000159c] : sh a7, 1952(a5) -- Store: [0x800063f4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015a8]:feq.h t6, ft11, ft10
	-[0x800015ac]:csrrs a7, fflags, zero
	-[0x800015b0]:sh t6, 1960(a5)
Current Store : [0x800015b4] : sh a7, 1962(a5) -- Store: [0x800063fe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015c0]:feq.h t6, ft11, ft10
	-[0x800015c4]:csrrs a7, fflags, zero
	-[0x800015c8]:sh t6, 1970(a5)
Current Store : [0x800015cc] : sh a7, 1972(a5) -- Store: [0x80006408]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015d8]:feq.h t6, ft11, ft10
	-[0x800015dc]:csrrs a7, fflags, zero
	-[0x800015e0]:sh t6, 1980(a5)
Current Store : [0x800015e4] : sh a7, 1982(a5) -- Store: [0x80006412]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800015f0]:feq.h t6, ft11, ft10
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:sh t6, 1990(a5)
Current Store : [0x800015fc] : sh a7, 1992(a5) -- Store: [0x8000641c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001608]:feq.h t6, ft11, ft10
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:sh t6, 2000(a5)
Current Store : [0x80001614] : sh a7, 2002(a5) -- Store: [0x80006426]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001620]:feq.h t6, ft11, ft10
	-[0x80001624]:csrrs a7, fflags, zero
	-[0x80001628]:sh t6, 2010(a5)
Current Store : [0x8000162c] : sh a7, 2012(a5) -- Store: [0x80006430]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001638]:feq.h t6, ft11, ft10
	-[0x8000163c]:csrrs a7, fflags, zero
	-[0x80001640]:sh t6, 2020(a5)
Current Store : [0x80001644] : sh a7, 2022(a5) -- Store: [0x8000643a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001658]:feq.h t6, ft11, ft10
	-[0x8000165c]:csrrs a7, fflags, zero
	-[0x80001660]:sh t6, 0(a5)
Current Store : [0x80001664] : sh a7, 2(a5) -- Store: [0x80006906]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001670]:feq.h t6, ft11, ft10
	-[0x80001674]:csrrs a7, fflags, zero
	-[0x80001678]:sh t6, 10(a5)
Current Store : [0x8000167c] : sh a7, 12(a5) -- Store: [0x80006910]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001688]:feq.h t6, ft11, ft10
	-[0x8000168c]:csrrs a7, fflags, zero
	-[0x80001690]:sh t6, 20(a5)
Current Store : [0x80001694] : sh a7, 22(a5) -- Store: [0x8000691a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016a0]:feq.h t6, ft11, ft10
	-[0x800016a4]:csrrs a7, fflags, zero
	-[0x800016a8]:sh t6, 30(a5)
Current Store : [0x800016ac] : sh a7, 32(a5) -- Store: [0x80006924]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016b8]:feq.h t6, ft11, ft10
	-[0x800016bc]:csrrs a7, fflags, zero
	-[0x800016c0]:sh t6, 40(a5)
Current Store : [0x800016c4] : sh a7, 42(a5) -- Store: [0x8000692e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016d0]:feq.h t6, ft11, ft10
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:sh t6, 50(a5)
Current Store : [0x800016dc] : sh a7, 52(a5) -- Store: [0x80006938]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016e8]:feq.h t6, ft11, ft10
	-[0x800016ec]:csrrs a7, fflags, zero
	-[0x800016f0]:sh t6, 60(a5)
Current Store : [0x800016f4] : sh a7, 62(a5) -- Store: [0x80006942]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001700]:feq.h t6, ft11, ft10
	-[0x80001704]:csrrs a7, fflags, zero
	-[0x80001708]:sh t6, 70(a5)
Current Store : [0x8000170c] : sh a7, 72(a5) -- Store: [0x8000694c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001718]:feq.h t6, ft11, ft10
	-[0x8000171c]:csrrs a7, fflags, zero
	-[0x80001720]:sh t6, 80(a5)
Current Store : [0x80001724] : sh a7, 82(a5) -- Store: [0x80006956]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001730]:feq.h t6, ft11, ft10
	-[0x80001734]:csrrs a7, fflags, zero
	-[0x80001738]:sh t6, 90(a5)
Current Store : [0x8000173c] : sh a7, 92(a5) -- Store: [0x80006960]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001748]:feq.h t6, ft11, ft10
	-[0x8000174c]:csrrs a7, fflags, zero
	-[0x80001750]:sh t6, 100(a5)
Current Store : [0x80001754] : sh a7, 102(a5) -- Store: [0x8000696a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001760]:feq.h t6, ft11, ft10
	-[0x80001764]:csrrs a7, fflags, zero
	-[0x80001768]:sh t6, 110(a5)
Current Store : [0x8000176c] : sh a7, 112(a5) -- Store: [0x80006974]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001778]:feq.h t6, ft11, ft10
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:sh t6, 120(a5)
Current Store : [0x80001784] : sh a7, 122(a5) -- Store: [0x8000697e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001790]:feq.h t6, ft11, ft10
	-[0x80001794]:csrrs a7, fflags, zero
	-[0x80001798]:sh t6, 130(a5)
Current Store : [0x8000179c] : sh a7, 132(a5) -- Store: [0x80006988]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017a8]:feq.h t6, ft11, ft10
	-[0x800017ac]:csrrs a7, fflags, zero
	-[0x800017b0]:sh t6, 140(a5)
Current Store : [0x800017b4] : sh a7, 142(a5) -- Store: [0x80006992]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017c0]:feq.h t6, ft11, ft10
	-[0x800017c4]:csrrs a7, fflags, zero
	-[0x800017c8]:sh t6, 150(a5)
Current Store : [0x800017cc] : sh a7, 152(a5) -- Store: [0x8000699c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017d8]:feq.h t6, ft11, ft10
	-[0x800017dc]:csrrs a7, fflags, zero
	-[0x800017e0]:sh t6, 160(a5)
Current Store : [0x800017e4] : sh a7, 162(a5) -- Store: [0x800069a6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017f0]:feq.h t6, ft11, ft10
	-[0x800017f4]:csrrs a7, fflags, zero
	-[0x800017f8]:sh t6, 170(a5)
Current Store : [0x800017fc] : sh a7, 172(a5) -- Store: [0x800069b0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001808]:feq.h t6, ft11, ft10
	-[0x8000180c]:csrrs a7, fflags, zero
	-[0x80001810]:sh t6, 180(a5)
Current Store : [0x80001814] : sh a7, 182(a5) -- Store: [0x800069ba]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001820]:feq.h t6, ft11, ft10
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:sh t6, 190(a5)
Current Store : [0x8000182c] : sh a7, 192(a5) -- Store: [0x800069c4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001838]:feq.h t6, ft11, ft10
	-[0x8000183c]:csrrs a7, fflags, zero
	-[0x80001840]:sh t6, 200(a5)
Current Store : [0x80001844] : sh a7, 202(a5) -- Store: [0x800069ce]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001850]:feq.h t6, ft11, ft10
	-[0x80001854]:csrrs a7, fflags, zero
	-[0x80001858]:sh t6, 210(a5)
Current Store : [0x8000185c] : sh a7, 212(a5) -- Store: [0x800069d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001868]:feq.h t6, ft11, ft10
	-[0x8000186c]:csrrs a7, fflags, zero
	-[0x80001870]:sh t6, 220(a5)
Current Store : [0x80001874] : sh a7, 222(a5) -- Store: [0x800069e2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001880]:feq.h t6, ft11, ft10
	-[0x80001884]:csrrs a7, fflags, zero
	-[0x80001888]:sh t6, 230(a5)
Current Store : [0x8000188c] : sh a7, 232(a5) -- Store: [0x800069ec]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001898]:feq.h t6, ft11, ft10
	-[0x8000189c]:csrrs a7, fflags, zero
	-[0x800018a0]:sh t6, 240(a5)
Current Store : [0x800018a4] : sh a7, 242(a5) -- Store: [0x800069f6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018b0]:feq.h t6, ft11, ft10
	-[0x800018b4]:csrrs a7, fflags, zero
	-[0x800018b8]:sh t6, 250(a5)
Current Store : [0x800018bc] : sh a7, 252(a5) -- Store: [0x80006a00]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018c8]:feq.h t6, ft11, ft10
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:sh t6, 260(a5)
Current Store : [0x800018d4] : sh a7, 262(a5) -- Store: [0x80006a0a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018e0]:feq.h t6, ft11, ft10
	-[0x800018e4]:csrrs a7, fflags, zero
	-[0x800018e8]:sh t6, 270(a5)
Current Store : [0x800018ec] : sh a7, 272(a5) -- Store: [0x80006a14]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018f8]:feq.h t6, ft11, ft10
	-[0x800018fc]:csrrs a7, fflags, zero
	-[0x80001900]:sh t6, 280(a5)
Current Store : [0x80001904] : sh a7, 282(a5) -- Store: [0x80006a1e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001910]:feq.h t6, ft11, ft10
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:sh t6, 290(a5)
Current Store : [0x8000191c] : sh a7, 292(a5) -- Store: [0x80006a28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001928]:feq.h t6, ft11, ft10
	-[0x8000192c]:csrrs a7, fflags, zero
	-[0x80001930]:sh t6, 300(a5)
Current Store : [0x80001934] : sh a7, 302(a5) -- Store: [0x80006a32]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001940]:feq.h t6, ft11, ft10
	-[0x80001944]:csrrs a7, fflags, zero
	-[0x80001948]:sh t6, 310(a5)
Current Store : [0x8000194c] : sh a7, 312(a5) -- Store: [0x80006a3c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001958]:feq.h t6, ft11, ft10
	-[0x8000195c]:csrrs a7, fflags, zero
	-[0x80001960]:sh t6, 320(a5)
Current Store : [0x80001964] : sh a7, 322(a5) -- Store: [0x80006a46]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001970]:feq.h t6, ft11, ft10
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:sh t6, 330(a5)
Current Store : [0x8000197c] : sh a7, 332(a5) -- Store: [0x80006a50]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001988]:feq.h t6, ft11, ft10
	-[0x8000198c]:csrrs a7, fflags, zero
	-[0x80001990]:sh t6, 340(a5)
Current Store : [0x80001994] : sh a7, 342(a5) -- Store: [0x80006a5a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800019a0]:feq.h t6, ft11, ft10
	-[0x800019a4]:csrrs a7, fflags, zero
	-[0x800019a8]:sh t6, 350(a5)
Current Store : [0x800019ac] : sh a7, 352(a5) -- Store: [0x80006a64]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800019b8]:feq.h t6, ft11, ft10
	-[0x800019bc]:csrrs a7, fflags, zero
	-[0x800019c0]:sh t6, 360(a5)
Current Store : [0x800019c4] : sh a7, 362(a5) -- Store: [0x80006a6e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800019d0]:feq.h t6, ft11, ft10
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:sh t6, 370(a5)
Current Store : [0x800019dc] : sh a7, 372(a5) -- Store: [0x80006a78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800019e8]:feq.h t6, ft11, ft10
	-[0x800019ec]:csrrs a7, fflags, zero
	-[0x800019f0]:sh t6, 380(a5)
Current Store : [0x800019f4] : sh a7, 382(a5) -- Store: [0x80006a82]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a00]:feq.h t6, ft11, ft10
	-[0x80001a04]:csrrs a7, fflags, zero
	-[0x80001a08]:sh t6, 390(a5)
Current Store : [0x80001a0c] : sh a7, 392(a5) -- Store: [0x80006a8c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a18]:feq.h t6, ft11, ft10
	-[0x80001a1c]:csrrs a7, fflags, zero
	-[0x80001a20]:sh t6, 400(a5)
Current Store : [0x80001a24] : sh a7, 402(a5) -- Store: [0x80006a96]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a30]:feq.h t6, ft11, ft10
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:sh t6, 410(a5)
Current Store : [0x80001a3c] : sh a7, 412(a5) -- Store: [0x80006aa0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a48]:feq.h t6, ft11, ft10
	-[0x80001a4c]:csrrs a7, fflags, zero
	-[0x80001a50]:sh t6, 420(a5)
Current Store : [0x80001a54] : sh a7, 422(a5) -- Store: [0x80006aaa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a60]:feq.h t6, ft11, ft10
	-[0x80001a64]:csrrs a7, fflags, zero
	-[0x80001a68]:sh t6, 430(a5)
Current Store : [0x80001a6c] : sh a7, 432(a5) -- Store: [0x80006ab4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a78]:feq.h t6, ft11, ft10
	-[0x80001a7c]:csrrs a7, fflags, zero
	-[0x80001a80]:sh t6, 440(a5)
Current Store : [0x80001a84] : sh a7, 442(a5) -- Store: [0x80006abe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a90]:feq.h t6, ft11, ft10
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:sh t6, 450(a5)
Current Store : [0x80001a9c] : sh a7, 452(a5) -- Store: [0x80006ac8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001aa8]:feq.h t6, ft11, ft10
	-[0x80001aac]:csrrs a7, fflags, zero
	-[0x80001ab0]:sh t6, 460(a5)
Current Store : [0x80001ab4] : sh a7, 462(a5) -- Store: [0x80006ad2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ac0]:feq.h t6, ft11, ft10
	-[0x80001ac4]:csrrs a7, fflags, zero
	-[0x80001ac8]:sh t6, 470(a5)
Current Store : [0x80001acc] : sh a7, 472(a5) -- Store: [0x80006adc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ad8]:feq.h t6, ft11, ft10
	-[0x80001adc]:csrrs a7, fflags, zero
	-[0x80001ae0]:sh t6, 480(a5)
Current Store : [0x80001ae4] : sh a7, 482(a5) -- Store: [0x80006ae6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001af0]:feq.h t6, ft11, ft10
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:sh t6, 490(a5)
Current Store : [0x80001afc] : sh a7, 492(a5) -- Store: [0x80006af0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b08]:feq.h t6, ft11, ft10
	-[0x80001b0c]:csrrs a7, fflags, zero
	-[0x80001b10]:sh t6, 500(a5)
Current Store : [0x80001b14] : sh a7, 502(a5) -- Store: [0x80006afa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b20]:feq.h t6, ft11, ft10
	-[0x80001b24]:csrrs a7, fflags, zero
	-[0x80001b28]:sh t6, 510(a5)
Current Store : [0x80001b2c] : sh a7, 512(a5) -- Store: [0x80006b04]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b38]:feq.h t6, ft11, ft10
	-[0x80001b3c]:csrrs a7, fflags, zero
	-[0x80001b40]:sh t6, 520(a5)
Current Store : [0x80001b44] : sh a7, 522(a5) -- Store: [0x80006b0e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b50]:feq.h t6, ft11, ft10
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:sh t6, 530(a5)
Current Store : [0x80001b5c] : sh a7, 532(a5) -- Store: [0x80006b18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b68]:feq.h t6, ft11, ft10
	-[0x80001b6c]:csrrs a7, fflags, zero
	-[0x80001b70]:sh t6, 540(a5)
Current Store : [0x80001b74] : sh a7, 542(a5) -- Store: [0x80006b22]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b80]:feq.h t6, ft11, ft10
	-[0x80001b84]:csrrs a7, fflags, zero
	-[0x80001b88]:sh t6, 550(a5)
Current Store : [0x80001b8c] : sh a7, 552(a5) -- Store: [0x80006b2c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001b98]:feq.h t6, ft11, ft10
	-[0x80001b9c]:csrrs a7, fflags, zero
	-[0x80001ba0]:sh t6, 560(a5)
Current Store : [0x80001ba4] : sh a7, 562(a5) -- Store: [0x80006b36]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:feq.h t6, ft11, ft10
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:sh t6, 570(a5)
Current Store : [0x80001bbc] : sh a7, 572(a5) -- Store: [0x80006b40]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001bc8]:feq.h t6, ft11, ft10
	-[0x80001bcc]:csrrs a7, fflags, zero
	-[0x80001bd0]:sh t6, 580(a5)
Current Store : [0x80001bd4] : sh a7, 582(a5) -- Store: [0x80006b4a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001be0]:feq.h t6, ft11, ft10
	-[0x80001be4]:csrrs a7, fflags, zero
	-[0x80001be8]:sh t6, 590(a5)
Current Store : [0x80001bec] : sh a7, 592(a5) -- Store: [0x80006b54]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001bf8]:feq.h t6, ft11, ft10
	-[0x80001bfc]:csrrs a7, fflags, zero
	-[0x80001c00]:sh t6, 600(a5)
Current Store : [0x80001c04] : sh a7, 602(a5) -- Store: [0x80006b5e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c10]:feq.h t6, ft11, ft10
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:sh t6, 610(a5)
Current Store : [0x80001c1c] : sh a7, 612(a5) -- Store: [0x80006b68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c28]:feq.h t6, ft11, ft10
	-[0x80001c2c]:csrrs a7, fflags, zero
	-[0x80001c30]:sh t6, 620(a5)
Current Store : [0x80001c34] : sh a7, 622(a5) -- Store: [0x80006b72]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c40]:feq.h t6, ft11, ft10
	-[0x80001c44]:csrrs a7, fflags, zero
	-[0x80001c48]:sh t6, 630(a5)
Current Store : [0x80001c4c] : sh a7, 632(a5) -- Store: [0x80006b7c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c58]:feq.h t6, ft11, ft10
	-[0x80001c5c]:csrrs a7, fflags, zero
	-[0x80001c60]:sh t6, 640(a5)
Current Store : [0x80001c64] : sh a7, 642(a5) -- Store: [0x80006b86]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c70]:feq.h t6, ft11, ft10
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:sh t6, 650(a5)
Current Store : [0x80001c7c] : sh a7, 652(a5) -- Store: [0x80006b90]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001c88]:feq.h t6, ft11, ft10
	-[0x80001c8c]:csrrs a7, fflags, zero
	-[0x80001c90]:sh t6, 660(a5)
Current Store : [0x80001c94] : sh a7, 662(a5) -- Store: [0x80006b9a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ca0]:feq.h t6, ft11, ft10
	-[0x80001ca4]:csrrs a7, fflags, zero
	-[0x80001ca8]:sh t6, 670(a5)
Current Store : [0x80001cac] : sh a7, 672(a5) -- Store: [0x80006ba4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001cb8]:feq.h t6, ft11, ft10
	-[0x80001cbc]:csrrs a7, fflags, zero
	-[0x80001cc0]:sh t6, 680(a5)
Current Store : [0x80001cc4] : sh a7, 682(a5) -- Store: [0x80006bae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:feq.h t6, ft11, ft10
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:sh t6, 690(a5)
Current Store : [0x80001cdc] : sh a7, 692(a5) -- Store: [0x80006bb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ce8]:feq.h t6, ft11, ft10
	-[0x80001cec]:csrrs a7, fflags, zero
	-[0x80001cf0]:sh t6, 700(a5)
Current Store : [0x80001cf4] : sh a7, 702(a5) -- Store: [0x80006bc2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d00]:feq.h t6, ft11, ft10
	-[0x80001d04]:csrrs a7, fflags, zero
	-[0x80001d08]:sh t6, 710(a5)
Current Store : [0x80001d0c] : sh a7, 712(a5) -- Store: [0x80006bcc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d18]:feq.h t6, ft11, ft10
	-[0x80001d1c]:csrrs a7, fflags, zero
	-[0x80001d20]:sh t6, 720(a5)
Current Store : [0x80001d24] : sh a7, 722(a5) -- Store: [0x80006bd6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d30]:feq.h t6, ft11, ft10
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:sh t6, 730(a5)
Current Store : [0x80001d3c] : sh a7, 732(a5) -- Store: [0x80006be0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d48]:feq.h t6, ft11, ft10
	-[0x80001d4c]:csrrs a7, fflags, zero
	-[0x80001d50]:sh t6, 740(a5)
Current Store : [0x80001d54] : sh a7, 742(a5) -- Store: [0x80006bea]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d60]:feq.h t6, ft11, ft10
	-[0x80001d64]:csrrs a7, fflags, zero
	-[0x80001d68]:sh t6, 750(a5)
Current Store : [0x80001d6c] : sh a7, 752(a5) -- Store: [0x80006bf4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d78]:feq.h t6, ft11, ft10
	-[0x80001d7c]:csrrs a7, fflags, zero
	-[0x80001d80]:sh t6, 760(a5)
Current Store : [0x80001d84] : sh a7, 762(a5) -- Store: [0x80006bfe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001d90]:feq.h t6, ft11, ft10
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:sh t6, 770(a5)
Current Store : [0x80001d9c] : sh a7, 772(a5) -- Store: [0x80006c08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001da8]:feq.h t6, ft11, ft10
	-[0x80001dac]:csrrs a7, fflags, zero
	-[0x80001db0]:sh t6, 780(a5)
Current Store : [0x80001db4] : sh a7, 782(a5) -- Store: [0x80006c12]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001dc0]:feq.h t6, ft11, ft10
	-[0x80001dc4]:csrrs a7, fflags, zero
	-[0x80001dc8]:sh t6, 790(a5)
Current Store : [0x80001dcc] : sh a7, 792(a5) -- Store: [0x80006c1c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001dd8]:feq.h t6, ft11, ft10
	-[0x80001ddc]:csrrs a7, fflags, zero
	-[0x80001de0]:sh t6, 800(a5)
Current Store : [0x80001de4] : sh a7, 802(a5) -- Store: [0x80006c26]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001df0]:feq.h t6, ft11, ft10
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:sh t6, 810(a5)
Current Store : [0x80001dfc] : sh a7, 812(a5) -- Store: [0x80006c30]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e08]:feq.h t6, ft11, ft10
	-[0x80001e0c]:csrrs a7, fflags, zero
	-[0x80001e10]:sh t6, 820(a5)
Current Store : [0x80001e14] : sh a7, 822(a5) -- Store: [0x80006c3a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e20]:feq.h t6, ft11, ft10
	-[0x80001e24]:csrrs a7, fflags, zero
	-[0x80001e28]:sh t6, 830(a5)
Current Store : [0x80001e2c] : sh a7, 832(a5) -- Store: [0x80006c44]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e38]:feq.h t6, ft11, ft10
	-[0x80001e3c]:csrrs a7, fflags, zero
	-[0x80001e40]:sh t6, 840(a5)
Current Store : [0x80001e44] : sh a7, 842(a5) -- Store: [0x80006c4e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e50]:feq.h t6, ft11, ft10
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:sh t6, 850(a5)
Current Store : [0x80001e5c] : sh a7, 852(a5) -- Store: [0x80006c58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e68]:feq.h t6, ft11, ft10
	-[0x80001e6c]:csrrs a7, fflags, zero
	-[0x80001e70]:sh t6, 860(a5)
Current Store : [0x80001e74] : sh a7, 862(a5) -- Store: [0x80006c62]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e80]:feq.h t6, ft11, ft10
	-[0x80001e84]:csrrs a7, fflags, zero
	-[0x80001e88]:sh t6, 870(a5)
Current Store : [0x80001e8c] : sh a7, 872(a5) -- Store: [0x80006c6c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001e98]:feq.h t6, ft11, ft10
	-[0x80001e9c]:csrrs a7, fflags, zero
	-[0x80001ea0]:sh t6, 880(a5)
Current Store : [0x80001ea4] : sh a7, 882(a5) -- Store: [0x80006c76]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:feq.h t6, ft11, ft10
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:sh t6, 890(a5)
Current Store : [0x80001ebc] : sh a7, 892(a5) -- Store: [0x80006c80]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ec8]:feq.h t6, ft11, ft10
	-[0x80001ecc]:csrrs a7, fflags, zero
	-[0x80001ed0]:sh t6, 900(a5)
Current Store : [0x80001ed4] : sh a7, 902(a5) -- Store: [0x80006c8a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ee0]:feq.h t6, ft11, ft10
	-[0x80001ee4]:csrrs a7, fflags, zero
	-[0x80001ee8]:sh t6, 910(a5)
Current Store : [0x80001eec] : sh a7, 912(a5) -- Store: [0x80006c94]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001ef8]:feq.h t6, ft11, ft10
	-[0x80001efc]:csrrs a7, fflags, zero
	-[0x80001f00]:sh t6, 920(a5)
Current Store : [0x80001f04] : sh a7, 922(a5) -- Store: [0x80006c9e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f10]:feq.h t6, ft11, ft10
	-[0x80001f14]:csrrs a7, fflags, zero
	-[0x80001f18]:sh t6, 930(a5)
Current Store : [0x80001f1c] : sh a7, 932(a5) -- Store: [0x80006ca8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f28]:feq.h t6, ft11, ft10
	-[0x80001f2c]:csrrs a7, fflags, zero
	-[0x80001f30]:sh t6, 940(a5)
Current Store : [0x80001f34] : sh a7, 942(a5) -- Store: [0x80006cb2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f40]:feq.h t6, ft11, ft10
	-[0x80001f44]:csrrs a7, fflags, zero
	-[0x80001f48]:sh t6, 950(a5)
Current Store : [0x80001f4c] : sh a7, 952(a5) -- Store: [0x80006cbc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f58]:feq.h t6, ft11, ft10
	-[0x80001f5c]:csrrs a7, fflags, zero
	-[0x80001f60]:sh t6, 960(a5)
Current Store : [0x80001f64] : sh a7, 962(a5) -- Store: [0x80006cc6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f70]:feq.h t6, ft11, ft10
	-[0x80001f74]:csrrs a7, fflags, zero
	-[0x80001f78]:sh t6, 970(a5)
Current Store : [0x80001f7c] : sh a7, 972(a5) -- Store: [0x80006cd0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001f88]:feq.h t6, ft11, ft10
	-[0x80001f8c]:csrrs a7, fflags, zero
	-[0x80001f90]:sh t6, 980(a5)
Current Store : [0x80001f94] : sh a7, 982(a5) -- Store: [0x80006cda]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001fa0]:feq.h t6, ft11, ft10
	-[0x80001fa4]:csrrs a7, fflags, zero
	-[0x80001fa8]:sh t6, 990(a5)
Current Store : [0x80001fac] : sh a7, 992(a5) -- Store: [0x80006ce4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001fb8]:feq.h t6, ft11, ft10
	-[0x80001fbc]:csrrs a7, fflags, zero
	-[0x80001fc0]:sh t6, 1000(a5)
Current Store : [0x80001fc4] : sh a7, 1002(a5) -- Store: [0x80006cee]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001fd0]:feq.h t6, ft11, ft10
	-[0x80001fd4]:csrrs a7, fflags, zero
	-[0x80001fd8]:sh t6, 1010(a5)
Current Store : [0x80001fdc] : sh a7, 1012(a5) -- Store: [0x80006cf8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001fe8]:feq.h t6, ft11, ft10
	-[0x80001fec]:csrrs a7, fflags, zero
	-[0x80001ff0]:sh t6, 1020(a5)
Current Store : [0x80001ff4] : sh a7, 1022(a5) -- Store: [0x80006d02]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002000]:feq.h t6, ft11, ft10
	-[0x80002004]:csrrs a7, fflags, zero
	-[0x80002008]:sh t6, 1030(a5)
Current Store : [0x8000200c] : sh a7, 1032(a5) -- Store: [0x80006d0c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002018]:feq.h t6, ft11, ft10
	-[0x8000201c]:csrrs a7, fflags, zero
	-[0x80002020]:sh t6, 1040(a5)
Current Store : [0x80002024] : sh a7, 1042(a5) -- Store: [0x80006d16]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002030]:feq.h t6, ft11, ft10
	-[0x80002034]:csrrs a7, fflags, zero
	-[0x80002038]:sh t6, 1050(a5)
Current Store : [0x8000203c] : sh a7, 1052(a5) -- Store: [0x80006d20]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002048]:feq.h t6, ft11, ft10
	-[0x8000204c]:csrrs a7, fflags, zero
	-[0x80002050]:sh t6, 1060(a5)
Current Store : [0x80002054] : sh a7, 1062(a5) -- Store: [0x80006d2a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002060]:feq.h t6, ft11, ft10
	-[0x80002064]:csrrs a7, fflags, zero
	-[0x80002068]:sh t6, 1070(a5)
Current Store : [0x8000206c] : sh a7, 1072(a5) -- Store: [0x80006d34]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002078]:feq.h t6, ft11, ft10
	-[0x8000207c]:csrrs a7, fflags, zero
	-[0x80002080]:sh t6, 1080(a5)
Current Store : [0x80002084] : sh a7, 1082(a5) -- Store: [0x80006d3e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002090]:feq.h t6, ft11, ft10
	-[0x80002094]:csrrs a7, fflags, zero
	-[0x80002098]:sh t6, 1090(a5)
Current Store : [0x8000209c] : sh a7, 1092(a5) -- Store: [0x80006d48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800020a8]:feq.h t6, ft11, ft10
	-[0x800020ac]:csrrs a7, fflags, zero
	-[0x800020b0]:sh t6, 1100(a5)
Current Store : [0x800020b4] : sh a7, 1102(a5) -- Store: [0x80006d52]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800020c0]:feq.h t6, ft11, ft10
	-[0x800020c4]:csrrs a7, fflags, zero
	-[0x800020c8]:sh t6, 1110(a5)
Current Store : [0x800020cc] : sh a7, 1112(a5) -- Store: [0x80006d5c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800020d8]:feq.h t6, ft11, ft10
	-[0x800020dc]:csrrs a7, fflags, zero
	-[0x800020e0]:sh t6, 1120(a5)
Current Store : [0x800020e4] : sh a7, 1122(a5) -- Store: [0x80006d66]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800020f0]:feq.h t6, ft11, ft10
	-[0x800020f4]:csrrs a7, fflags, zero
	-[0x800020f8]:sh t6, 1130(a5)
Current Store : [0x800020fc] : sh a7, 1132(a5) -- Store: [0x80006d70]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002108]:feq.h t6, ft11, ft10
	-[0x8000210c]:csrrs a7, fflags, zero
	-[0x80002110]:sh t6, 1140(a5)
Current Store : [0x80002114] : sh a7, 1142(a5) -- Store: [0x80006d7a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002120]:feq.h t6, ft11, ft10
	-[0x80002124]:csrrs a7, fflags, zero
	-[0x80002128]:sh t6, 1150(a5)
Current Store : [0x8000212c] : sh a7, 1152(a5) -- Store: [0x80006d84]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002138]:feq.h t6, ft11, ft10
	-[0x8000213c]:csrrs a7, fflags, zero
	-[0x80002140]:sh t6, 1160(a5)
Current Store : [0x80002144] : sh a7, 1162(a5) -- Store: [0x80006d8e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002150]:feq.h t6, ft11, ft10
	-[0x80002154]:csrrs a7, fflags, zero
	-[0x80002158]:sh t6, 1170(a5)
Current Store : [0x8000215c] : sh a7, 1172(a5) -- Store: [0x80006d98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002168]:feq.h t6, ft11, ft10
	-[0x8000216c]:csrrs a7, fflags, zero
	-[0x80002170]:sh t6, 1180(a5)
Current Store : [0x80002174] : sh a7, 1182(a5) -- Store: [0x80006da2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002180]:feq.h t6, ft11, ft10
	-[0x80002184]:csrrs a7, fflags, zero
	-[0x80002188]:sh t6, 1190(a5)
Current Store : [0x8000218c] : sh a7, 1192(a5) -- Store: [0x80006dac]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002198]:feq.h t6, ft11, ft10
	-[0x8000219c]:csrrs a7, fflags, zero
	-[0x800021a0]:sh t6, 1200(a5)
Current Store : [0x800021a4] : sh a7, 1202(a5) -- Store: [0x80006db6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800021b0]:feq.h t6, ft11, ft10
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:sh t6, 1210(a5)
Current Store : [0x800021bc] : sh a7, 1212(a5) -- Store: [0x80006dc0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800021c8]:feq.h t6, ft11, ft10
	-[0x800021cc]:csrrs a7, fflags, zero
	-[0x800021d0]:sh t6, 1220(a5)
Current Store : [0x800021d4] : sh a7, 1222(a5) -- Store: [0x80006dca]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800021e0]:feq.h t6, ft11, ft10
	-[0x800021e4]:csrrs a7, fflags, zero
	-[0x800021e8]:sh t6, 1230(a5)
Current Store : [0x800021ec] : sh a7, 1232(a5) -- Store: [0x80006dd4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800021f8]:feq.h t6, ft11, ft10
	-[0x800021fc]:csrrs a7, fflags, zero
	-[0x80002200]:sh t6, 1240(a5)
Current Store : [0x80002204] : sh a7, 1242(a5) -- Store: [0x80006dde]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002210]:feq.h t6, ft11, ft10
	-[0x80002214]:csrrs a7, fflags, zero
	-[0x80002218]:sh t6, 1250(a5)
Current Store : [0x8000221c] : sh a7, 1252(a5) -- Store: [0x80006de8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002228]:feq.h t6, ft11, ft10
	-[0x8000222c]:csrrs a7, fflags, zero
	-[0x80002230]:sh t6, 1260(a5)
Current Store : [0x80002234] : sh a7, 1262(a5) -- Store: [0x80006df2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002240]:feq.h t6, ft11, ft10
	-[0x80002244]:csrrs a7, fflags, zero
	-[0x80002248]:sh t6, 1270(a5)
Current Store : [0x8000224c] : sh a7, 1272(a5) -- Store: [0x80006dfc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002258]:feq.h t6, ft11, ft10
	-[0x8000225c]:csrrs a7, fflags, zero
	-[0x80002260]:sh t6, 1280(a5)
Current Store : [0x80002264] : sh a7, 1282(a5) -- Store: [0x80006e06]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002270]:feq.h t6, ft11, ft10
	-[0x80002274]:csrrs a7, fflags, zero
	-[0x80002278]:sh t6, 1290(a5)
Current Store : [0x8000227c] : sh a7, 1292(a5) -- Store: [0x80006e10]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002288]:feq.h t6, ft11, ft10
	-[0x8000228c]:csrrs a7, fflags, zero
	-[0x80002290]:sh t6, 1300(a5)
Current Store : [0x80002294] : sh a7, 1302(a5) -- Store: [0x80006e1a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800022a0]:feq.h t6, ft11, ft10
	-[0x800022a4]:csrrs a7, fflags, zero
	-[0x800022a8]:sh t6, 1310(a5)
Current Store : [0x800022ac] : sh a7, 1312(a5) -- Store: [0x80006e24]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800022b8]:feq.h t6, ft11, ft10
	-[0x800022bc]:csrrs a7, fflags, zero
	-[0x800022c0]:sh t6, 1320(a5)
Current Store : [0x800022c4] : sh a7, 1322(a5) -- Store: [0x80006e2e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800022d0]:feq.h t6, ft11, ft10
	-[0x800022d4]:csrrs a7, fflags, zero
	-[0x800022d8]:sh t6, 1330(a5)
Current Store : [0x800022dc] : sh a7, 1332(a5) -- Store: [0x80006e38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800022e8]:feq.h t6, ft11, ft10
	-[0x800022ec]:csrrs a7, fflags, zero
	-[0x800022f0]:sh t6, 1340(a5)
Current Store : [0x800022f4] : sh a7, 1342(a5) -- Store: [0x80006e42]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002300]:feq.h t6, ft11, ft10
	-[0x80002304]:csrrs a7, fflags, zero
	-[0x80002308]:sh t6, 1350(a5)
Current Store : [0x8000230c] : sh a7, 1352(a5) -- Store: [0x80006e4c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002318]:feq.h t6, ft11, ft10
	-[0x8000231c]:csrrs a7, fflags, zero
	-[0x80002320]:sh t6, 1360(a5)
Current Store : [0x80002324] : sh a7, 1362(a5) -- Store: [0x80006e56]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002330]:feq.h t6, ft11, ft10
	-[0x80002334]:csrrs a7, fflags, zero
	-[0x80002338]:sh t6, 1370(a5)
Current Store : [0x8000233c] : sh a7, 1372(a5) -- Store: [0x80006e60]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002348]:feq.h t6, ft11, ft10
	-[0x8000234c]:csrrs a7, fflags, zero
	-[0x80002350]:sh t6, 1380(a5)
Current Store : [0x80002354] : sh a7, 1382(a5) -- Store: [0x80006e6a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002360]:feq.h t6, ft11, ft10
	-[0x80002364]:csrrs a7, fflags, zero
	-[0x80002368]:sh t6, 1390(a5)
Current Store : [0x8000236c] : sh a7, 1392(a5) -- Store: [0x80006e74]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002378]:feq.h t6, ft11, ft10
	-[0x8000237c]:csrrs a7, fflags, zero
	-[0x80002380]:sh t6, 1400(a5)
Current Store : [0x80002384] : sh a7, 1402(a5) -- Store: [0x80006e7e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002390]:feq.h t6, ft11, ft10
	-[0x80002394]:csrrs a7, fflags, zero
	-[0x80002398]:sh t6, 1410(a5)
Current Store : [0x8000239c] : sh a7, 1412(a5) -- Store: [0x80006e88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800023a8]:feq.h t6, ft11, ft10
	-[0x800023ac]:csrrs a7, fflags, zero
	-[0x800023b0]:sh t6, 1420(a5)
Current Store : [0x800023b4] : sh a7, 1422(a5) -- Store: [0x80006e92]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800023c0]:feq.h t6, ft11, ft10
	-[0x800023c4]:csrrs a7, fflags, zero
	-[0x800023c8]:sh t6, 1430(a5)
Current Store : [0x800023cc] : sh a7, 1432(a5) -- Store: [0x80006e9c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800023d8]:feq.h t6, ft11, ft10
	-[0x800023dc]:csrrs a7, fflags, zero
	-[0x800023e0]:sh t6, 1440(a5)
Current Store : [0x800023e4] : sh a7, 1442(a5) -- Store: [0x80006ea6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800023f0]:feq.h t6, ft11, ft10
	-[0x800023f4]:csrrs a7, fflags, zero
	-[0x800023f8]:sh t6, 1450(a5)
Current Store : [0x800023fc] : sh a7, 1452(a5) -- Store: [0x80006eb0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002408]:feq.h t6, ft11, ft10
	-[0x8000240c]:csrrs a7, fflags, zero
	-[0x80002410]:sh t6, 1460(a5)
Current Store : [0x80002414] : sh a7, 1462(a5) -- Store: [0x80006eba]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002420]:feq.h t6, ft11, ft10
	-[0x80002424]:csrrs a7, fflags, zero
	-[0x80002428]:sh t6, 1470(a5)
Current Store : [0x8000242c] : sh a7, 1472(a5) -- Store: [0x80006ec4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002438]:feq.h t6, ft11, ft10
	-[0x8000243c]:csrrs a7, fflags, zero
	-[0x80002440]:sh t6, 1480(a5)
Current Store : [0x80002444] : sh a7, 1482(a5) -- Store: [0x80006ece]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002450]:feq.h t6, ft11, ft10
	-[0x80002454]:csrrs a7, fflags, zero
	-[0x80002458]:sh t6, 1490(a5)
Current Store : [0x8000245c] : sh a7, 1492(a5) -- Store: [0x80006ed8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002468]:feq.h t6, ft11, ft10
	-[0x8000246c]:csrrs a7, fflags, zero
	-[0x80002470]:sh t6, 1500(a5)
Current Store : [0x80002474] : sh a7, 1502(a5) -- Store: [0x80006ee2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002480]:feq.h t6, ft11, ft10
	-[0x80002484]:csrrs a7, fflags, zero
	-[0x80002488]:sh t6, 1510(a5)
Current Store : [0x8000248c] : sh a7, 1512(a5) -- Store: [0x80006eec]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002498]:feq.h t6, ft11, ft10
	-[0x8000249c]:csrrs a7, fflags, zero
	-[0x800024a0]:sh t6, 1520(a5)
Current Store : [0x800024a4] : sh a7, 1522(a5) -- Store: [0x80006ef6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800024b0]:feq.h t6, ft11, ft10
	-[0x800024b4]:csrrs a7, fflags, zero
	-[0x800024b8]:sh t6, 1530(a5)
Current Store : [0x800024bc] : sh a7, 1532(a5) -- Store: [0x80006f00]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800024c8]:feq.h t6, ft11, ft10
	-[0x800024cc]:csrrs a7, fflags, zero
	-[0x800024d0]:sh t6, 1540(a5)
Current Store : [0x800024d4] : sh a7, 1542(a5) -- Store: [0x80006f0a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800024e0]:feq.h t6, ft11, ft10
	-[0x800024e4]:csrrs a7, fflags, zero
	-[0x800024e8]:sh t6, 1550(a5)
Current Store : [0x800024ec] : sh a7, 1552(a5) -- Store: [0x80006f14]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800024f8]:feq.h t6, ft11, ft10
	-[0x800024fc]:csrrs a7, fflags, zero
	-[0x80002500]:sh t6, 1560(a5)
Current Store : [0x80002504] : sh a7, 1562(a5) -- Store: [0x80006f1e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002510]:feq.h t6, ft11, ft10
	-[0x80002514]:csrrs a7, fflags, zero
	-[0x80002518]:sh t6, 1570(a5)
Current Store : [0x8000251c] : sh a7, 1572(a5) -- Store: [0x80006f28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002528]:feq.h t6, ft11, ft10
	-[0x8000252c]:csrrs a7, fflags, zero
	-[0x80002530]:sh t6, 1580(a5)
Current Store : [0x80002534] : sh a7, 1582(a5) -- Store: [0x80006f32]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002540]:feq.h t6, ft11, ft10
	-[0x80002544]:csrrs a7, fflags, zero
	-[0x80002548]:sh t6, 1590(a5)
Current Store : [0x8000254c] : sh a7, 1592(a5) -- Store: [0x80006f3c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002558]:feq.h t6, ft11, ft10
	-[0x8000255c]:csrrs a7, fflags, zero
	-[0x80002560]:sh t6, 1600(a5)
Current Store : [0x80002564] : sh a7, 1602(a5) -- Store: [0x80006f46]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002570]:feq.h t6, ft11, ft10
	-[0x80002574]:csrrs a7, fflags, zero
	-[0x80002578]:sh t6, 1610(a5)
Current Store : [0x8000257c] : sh a7, 1612(a5) -- Store: [0x80006f50]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002588]:feq.h t6, ft11, ft10
	-[0x8000258c]:csrrs a7, fflags, zero
	-[0x80002590]:sh t6, 1620(a5)
Current Store : [0x80002594] : sh a7, 1622(a5) -- Store: [0x80006f5a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800025a0]:feq.h t6, ft11, ft10
	-[0x800025a4]:csrrs a7, fflags, zero
	-[0x800025a8]:sh t6, 1630(a5)
Current Store : [0x800025ac] : sh a7, 1632(a5) -- Store: [0x80006f64]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800025b8]:feq.h t6, ft11, ft10
	-[0x800025bc]:csrrs a7, fflags, zero
	-[0x800025c0]:sh t6, 1640(a5)
Current Store : [0x800025c4] : sh a7, 1642(a5) -- Store: [0x80006f6e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800025d0]:feq.h t6, ft11, ft10
	-[0x800025d4]:csrrs a7, fflags, zero
	-[0x800025d8]:sh t6, 1650(a5)
Current Store : [0x800025dc] : sh a7, 1652(a5) -- Store: [0x80006f78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800025e8]:feq.h t6, ft11, ft10
	-[0x800025ec]:csrrs a7, fflags, zero
	-[0x800025f0]:sh t6, 1660(a5)
Current Store : [0x800025f4] : sh a7, 1662(a5) -- Store: [0x80006f82]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002600]:feq.h t6, ft11, ft10
	-[0x80002604]:csrrs a7, fflags, zero
	-[0x80002608]:sh t6, 1670(a5)
Current Store : [0x8000260c] : sh a7, 1672(a5) -- Store: [0x80006f8c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002618]:feq.h t6, ft11, ft10
	-[0x8000261c]:csrrs a7, fflags, zero
	-[0x80002620]:sh t6, 1680(a5)
Current Store : [0x80002624] : sh a7, 1682(a5) -- Store: [0x80006f96]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002630]:feq.h t6, ft11, ft10
	-[0x80002634]:csrrs a7, fflags, zero
	-[0x80002638]:sh t6, 1690(a5)
Current Store : [0x8000263c] : sh a7, 1692(a5) -- Store: [0x80006fa0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002648]:feq.h t6, ft11, ft10
	-[0x8000264c]:csrrs a7, fflags, zero
	-[0x80002650]:sh t6, 1700(a5)
Current Store : [0x80002654] : sh a7, 1702(a5) -- Store: [0x80006faa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002660]:feq.h t6, ft11, ft10
	-[0x80002664]:csrrs a7, fflags, zero
	-[0x80002668]:sh t6, 1710(a5)
Current Store : [0x8000266c] : sh a7, 1712(a5) -- Store: [0x80006fb4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002678]:feq.h t6, ft11, ft10
	-[0x8000267c]:csrrs a7, fflags, zero
	-[0x80002680]:sh t6, 1720(a5)
Current Store : [0x80002684] : sh a7, 1722(a5) -- Store: [0x80006fbe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002690]:feq.h t6, ft11, ft10
	-[0x80002694]:csrrs a7, fflags, zero
	-[0x80002698]:sh t6, 1730(a5)
Current Store : [0x8000269c] : sh a7, 1732(a5) -- Store: [0x80006fc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800026a8]:feq.h t6, ft11, ft10
	-[0x800026ac]:csrrs a7, fflags, zero
	-[0x800026b0]:sh t6, 1740(a5)
Current Store : [0x800026b4] : sh a7, 1742(a5) -- Store: [0x80006fd2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800026c0]:feq.h t6, ft11, ft10
	-[0x800026c4]:csrrs a7, fflags, zero
	-[0x800026c8]:sh t6, 1750(a5)
Current Store : [0x800026cc] : sh a7, 1752(a5) -- Store: [0x80006fdc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800026d8]:feq.h t6, ft11, ft10
	-[0x800026dc]:csrrs a7, fflags, zero
	-[0x800026e0]:sh t6, 1760(a5)
Current Store : [0x800026e4] : sh a7, 1762(a5) -- Store: [0x80006fe6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800026f0]:feq.h t6, ft11, ft10
	-[0x800026f4]:csrrs a7, fflags, zero
	-[0x800026f8]:sh t6, 1770(a5)
Current Store : [0x800026fc] : sh a7, 1772(a5) -- Store: [0x80006ff0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002708]:feq.h t6, ft11, ft10
	-[0x8000270c]:csrrs a7, fflags, zero
	-[0x80002710]:sh t6, 1780(a5)
Current Store : [0x80002714] : sh a7, 1782(a5) -- Store: [0x80006ffa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002720]:feq.h t6, ft11, ft10
	-[0x80002724]:csrrs a7, fflags, zero
	-[0x80002728]:sh t6, 1790(a5)
Current Store : [0x8000272c] : sh a7, 1792(a5) -- Store: [0x80007004]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002738]:feq.h t6, ft11, ft10
	-[0x8000273c]:csrrs a7, fflags, zero
	-[0x80002740]:sh t6, 1800(a5)
Current Store : [0x80002744] : sh a7, 1802(a5) -- Store: [0x8000700e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002750]:feq.h t6, ft11, ft10
	-[0x80002754]:csrrs a7, fflags, zero
	-[0x80002758]:sh t6, 1810(a5)
Current Store : [0x8000275c] : sh a7, 1812(a5) -- Store: [0x80007018]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002768]:feq.h t6, ft11, ft10
	-[0x8000276c]:csrrs a7, fflags, zero
	-[0x80002770]:sh t6, 1820(a5)
Current Store : [0x80002774] : sh a7, 1822(a5) -- Store: [0x80007022]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002780]:feq.h t6, ft11, ft10
	-[0x80002784]:csrrs a7, fflags, zero
	-[0x80002788]:sh t6, 1830(a5)
Current Store : [0x8000278c] : sh a7, 1832(a5) -- Store: [0x8000702c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002798]:feq.h t6, ft11, ft10
	-[0x8000279c]:csrrs a7, fflags, zero
	-[0x800027a0]:sh t6, 1840(a5)
Current Store : [0x800027a4] : sh a7, 1842(a5) -- Store: [0x80007036]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800027b0]:feq.h t6, ft11, ft10
	-[0x800027b4]:csrrs a7, fflags, zero
	-[0x800027b8]:sh t6, 1850(a5)
Current Store : [0x800027bc] : sh a7, 1852(a5) -- Store: [0x80007040]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800027c8]:feq.h t6, ft11, ft10
	-[0x800027cc]:csrrs a7, fflags, zero
	-[0x800027d0]:sh t6, 1860(a5)
Current Store : [0x800027d4] : sh a7, 1862(a5) -- Store: [0x8000704a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800027e0]:feq.h t6, ft11, ft10
	-[0x800027e4]:csrrs a7, fflags, zero
	-[0x800027e8]:sh t6, 1870(a5)
Current Store : [0x800027ec] : sh a7, 1872(a5) -- Store: [0x80007054]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800027f8]:feq.h t6, ft11, ft10
	-[0x800027fc]:csrrs a7, fflags, zero
	-[0x80002800]:sh t6, 1880(a5)
Current Store : [0x80002804] : sh a7, 1882(a5) -- Store: [0x8000705e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002810]:feq.h t6, ft11, ft10
	-[0x80002814]:csrrs a7, fflags, zero
	-[0x80002818]:sh t6, 1890(a5)
Current Store : [0x8000281c] : sh a7, 1892(a5) -- Store: [0x80007068]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002828]:feq.h t6, ft11, ft10
	-[0x8000282c]:csrrs a7, fflags, zero
	-[0x80002830]:sh t6, 1900(a5)
Current Store : [0x80002834] : sh a7, 1902(a5) -- Store: [0x80007072]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002840]:feq.h t6, ft11, ft10
	-[0x80002844]:csrrs a7, fflags, zero
	-[0x80002848]:sh t6, 1910(a5)
Current Store : [0x8000284c] : sh a7, 1912(a5) -- Store: [0x8000707c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002858]:feq.h t6, ft11, ft10
	-[0x8000285c]:csrrs a7, fflags, zero
	-[0x80002860]:sh t6, 1920(a5)
Current Store : [0x80002864] : sh a7, 1922(a5) -- Store: [0x80007086]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002870]:feq.h t6, ft11, ft10
	-[0x80002874]:csrrs a7, fflags, zero
	-[0x80002878]:sh t6, 1930(a5)
Current Store : [0x8000287c] : sh a7, 1932(a5) -- Store: [0x80007090]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002888]:feq.h t6, ft11, ft10
	-[0x8000288c]:csrrs a7, fflags, zero
	-[0x80002890]:sh t6, 1940(a5)
Current Store : [0x80002894] : sh a7, 1942(a5) -- Store: [0x8000709a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800028a0]:feq.h t6, ft11, ft10
	-[0x800028a4]:csrrs a7, fflags, zero
	-[0x800028a8]:sh t6, 1950(a5)
Current Store : [0x800028ac] : sh a7, 1952(a5) -- Store: [0x800070a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800028b8]:feq.h t6, ft11, ft10
	-[0x800028bc]:csrrs a7, fflags, zero
	-[0x800028c0]:sh t6, 1960(a5)
Current Store : [0x800028c4] : sh a7, 1962(a5) -- Store: [0x800070ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800028d0]:feq.h t6, ft11, ft10
	-[0x800028d4]:csrrs a7, fflags, zero
	-[0x800028d8]:sh t6, 1970(a5)
Current Store : [0x800028dc] : sh a7, 1972(a5) -- Store: [0x800070b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800028e8]:feq.h t6, ft11, ft10
	-[0x800028ec]:csrrs a7, fflags, zero
	-[0x800028f0]:sh t6, 1980(a5)
Current Store : [0x800028f4] : sh a7, 1982(a5) -- Store: [0x800070c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002900]:feq.h t6, ft11, ft10
	-[0x80002904]:csrrs a7, fflags, zero
	-[0x80002908]:sh t6, 1990(a5)
Current Store : [0x8000290c] : sh a7, 1992(a5) -- Store: [0x800070cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002918]:feq.h t6, ft11, ft10
	-[0x8000291c]:csrrs a7, fflags, zero
	-[0x80002920]:sh t6, 2000(a5)
Current Store : [0x80002924] : sh a7, 2002(a5) -- Store: [0x800070d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002930]:feq.h t6, ft11, ft10
	-[0x80002934]:csrrs a7, fflags, zero
	-[0x80002938]:sh t6, 2010(a5)
Current Store : [0x8000293c] : sh a7, 2012(a5) -- Store: [0x800070e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002948]:feq.h t6, ft11, ft10
	-[0x8000294c]:csrrs a7, fflags, zero
	-[0x80002950]:sh t6, 2020(a5)
Current Store : [0x80002954] : sh a7, 2022(a5) -- Store: [0x800070ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002968]:feq.h t6, ft11, ft10
	-[0x8000296c]:csrrs a7, fflags, zero
	-[0x80002970]:sh t6, 0(a5)
Current Store : [0x80002974] : sh a7, 2(a5) -- Store: [0x800075b6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002980]:feq.h t6, ft11, ft10
	-[0x80002984]:csrrs a7, fflags, zero
	-[0x80002988]:sh t6, 10(a5)
Current Store : [0x8000298c] : sh a7, 12(a5) -- Store: [0x800075c0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002998]:feq.h t6, ft11, ft10
	-[0x8000299c]:csrrs a7, fflags, zero
	-[0x800029a0]:sh t6, 20(a5)
Current Store : [0x800029a4] : sh a7, 22(a5) -- Store: [0x800075ca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800029b0]:feq.h t6, ft11, ft10
	-[0x800029b4]:csrrs a7, fflags, zero
	-[0x800029b8]:sh t6, 30(a5)
Current Store : [0x800029bc] : sh a7, 32(a5) -- Store: [0x800075d4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800029c8]:feq.h t6, ft11, ft10
	-[0x800029cc]:csrrs a7, fflags, zero
	-[0x800029d0]:sh t6, 40(a5)
Current Store : [0x800029d4] : sh a7, 42(a5) -- Store: [0x800075de]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800029e0]:feq.h t6, ft11, ft10
	-[0x800029e4]:csrrs a7, fflags, zero
	-[0x800029e8]:sh t6, 50(a5)
Current Store : [0x800029ec] : sh a7, 52(a5) -- Store: [0x800075e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800029f8]:feq.h t6, ft11, ft10
	-[0x800029fc]:csrrs a7, fflags, zero
	-[0x80002a00]:sh t6, 60(a5)
Current Store : [0x80002a04] : sh a7, 62(a5) -- Store: [0x800075f2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a10]:feq.h t6, ft11, ft10
	-[0x80002a14]:csrrs a7, fflags, zero
	-[0x80002a18]:sh t6, 70(a5)
Current Store : [0x80002a1c] : sh a7, 72(a5) -- Store: [0x800075fc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a28]:feq.h t6, ft11, ft10
	-[0x80002a2c]:csrrs a7, fflags, zero
	-[0x80002a30]:sh t6, 80(a5)
Current Store : [0x80002a34] : sh a7, 82(a5) -- Store: [0x80007606]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a40]:feq.h t6, ft11, ft10
	-[0x80002a44]:csrrs a7, fflags, zero
	-[0x80002a48]:sh t6, 90(a5)
Current Store : [0x80002a4c] : sh a7, 92(a5) -- Store: [0x80007610]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a58]:feq.h t6, ft11, ft10
	-[0x80002a5c]:csrrs a7, fflags, zero
	-[0x80002a60]:sh t6, 100(a5)
Current Store : [0x80002a64] : sh a7, 102(a5) -- Store: [0x8000761a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a70]:feq.h t6, ft11, ft10
	-[0x80002a74]:csrrs a7, fflags, zero
	-[0x80002a78]:sh t6, 110(a5)
Current Store : [0x80002a7c] : sh a7, 112(a5) -- Store: [0x80007624]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002a88]:feq.h t6, ft11, ft10
	-[0x80002a8c]:csrrs a7, fflags, zero
	-[0x80002a90]:sh t6, 120(a5)
Current Store : [0x80002a94] : sh a7, 122(a5) -- Store: [0x8000762e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002aa0]:feq.h t6, ft11, ft10
	-[0x80002aa4]:csrrs a7, fflags, zero
	-[0x80002aa8]:sh t6, 130(a5)
Current Store : [0x80002aac] : sh a7, 132(a5) -- Store: [0x80007638]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ab8]:feq.h t6, ft11, ft10
	-[0x80002abc]:csrrs a7, fflags, zero
	-[0x80002ac0]:sh t6, 140(a5)
Current Store : [0x80002ac4] : sh a7, 142(a5) -- Store: [0x80007642]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ad0]:feq.h t6, ft11, ft10
	-[0x80002ad4]:csrrs a7, fflags, zero
	-[0x80002ad8]:sh t6, 150(a5)
Current Store : [0x80002adc] : sh a7, 152(a5) -- Store: [0x8000764c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ae8]:feq.h t6, ft11, ft10
	-[0x80002aec]:csrrs a7, fflags, zero
	-[0x80002af0]:sh t6, 160(a5)
Current Store : [0x80002af4] : sh a7, 162(a5) -- Store: [0x80007656]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b00]:feq.h t6, ft11, ft10
	-[0x80002b04]:csrrs a7, fflags, zero
	-[0x80002b08]:sh t6, 170(a5)
Current Store : [0x80002b0c] : sh a7, 172(a5) -- Store: [0x80007660]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b18]:feq.h t6, ft11, ft10
	-[0x80002b1c]:csrrs a7, fflags, zero
	-[0x80002b20]:sh t6, 180(a5)
Current Store : [0x80002b24] : sh a7, 182(a5) -- Store: [0x8000766a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b30]:feq.h t6, ft11, ft10
	-[0x80002b34]:csrrs a7, fflags, zero
	-[0x80002b38]:sh t6, 190(a5)
Current Store : [0x80002b3c] : sh a7, 192(a5) -- Store: [0x80007674]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b48]:feq.h t6, ft11, ft10
	-[0x80002b4c]:csrrs a7, fflags, zero
	-[0x80002b50]:sh t6, 200(a5)
Current Store : [0x80002b54] : sh a7, 202(a5) -- Store: [0x8000767e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b60]:feq.h t6, ft11, ft10
	-[0x80002b64]:csrrs a7, fflags, zero
	-[0x80002b68]:sh t6, 210(a5)
Current Store : [0x80002b6c] : sh a7, 212(a5) -- Store: [0x80007688]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b78]:feq.h t6, ft11, ft10
	-[0x80002b7c]:csrrs a7, fflags, zero
	-[0x80002b80]:sh t6, 220(a5)
Current Store : [0x80002b84] : sh a7, 222(a5) -- Store: [0x80007692]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002b90]:feq.h t6, ft11, ft10
	-[0x80002b94]:csrrs a7, fflags, zero
	-[0x80002b98]:sh t6, 230(a5)
Current Store : [0x80002b9c] : sh a7, 232(a5) -- Store: [0x8000769c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ba8]:feq.h t6, ft11, ft10
	-[0x80002bac]:csrrs a7, fflags, zero
	-[0x80002bb0]:sh t6, 240(a5)
Current Store : [0x80002bb4] : sh a7, 242(a5) -- Store: [0x800076a6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002bc0]:feq.h t6, ft11, ft10
	-[0x80002bc4]:csrrs a7, fflags, zero
	-[0x80002bc8]:sh t6, 250(a5)
Current Store : [0x80002bcc] : sh a7, 252(a5) -- Store: [0x800076b0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002bd8]:feq.h t6, ft11, ft10
	-[0x80002bdc]:csrrs a7, fflags, zero
	-[0x80002be0]:sh t6, 260(a5)
Current Store : [0x80002be4] : sh a7, 262(a5) -- Store: [0x800076ba]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002bf0]:feq.h t6, ft11, ft10
	-[0x80002bf4]:csrrs a7, fflags, zero
	-[0x80002bf8]:sh t6, 270(a5)
Current Store : [0x80002bfc] : sh a7, 272(a5) -- Store: [0x800076c4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c08]:feq.h t6, ft11, ft10
	-[0x80002c0c]:csrrs a7, fflags, zero
	-[0x80002c10]:sh t6, 280(a5)
Current Store : [0x80002c14] : sh a7, 282(a5) -- Store: [0x800076ce]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c20]:feq.h t6, ft11, ft10
	-[0x80002c24]:csrrs a7, fflags, zero
	-[0x80002c28]:sh t6, 290(a5)
Current Store : [0x80002c2c] : sh a7, 292(a5) -- Store: [0x800076d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c38]:feq.h t6, ft11, ft10
	-[0x80002c3c]:csrrs a7, fflags, zero
	-[0x80002c40]:sh t6, 300(a5)
Current Store : [0x80002c44] : sh a7, 302(a5) -- Store: [0x800076e2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c50]:feq.h t6, ft11, ft10
	-[0x80002c54]:csrrs a7, fflags, zero
	-[0x80002c58]:sh t6, 310(a5)
Current Store : [0x80002c5c] : sh a7, 312(a5) -- Store: [0x800076ec]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c68]:feq.h t6, ft11, ft10
	-[0x80002c6c]:csrrs a7, fflags, zero
	-[0x80002c70]:sh t6, 320(a5)
Current Store : [0x80002c74] : sh a7, 322(a5) -- Store: [0x800076f6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c80]:feq.h t6, ft11, ft10
	-[0x80002c84]:csrrs a7, fflags, zero
	-[0x80002c88]:sh t6, 330(a5)
Current Store : [0x80002c8c] : sh a7, 332(a5) -- Store: [0x80007700]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002c98]:feq.h t6, ft11, ft10
	-[0x80002c9c]:csrrs a7, fflags, zero
	-[0x80002ca0]:sh t6, 340(a5)
Current Store : [0x80002ca4] : sh a7, 342(a5) -- Store: [0x8000770a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002cb0]:feq.h t6, ft11, ft10
	-[0x80002cb4]:csrrs a7, fflags, zero
	-[0x80002cb8]:sh t6, 350(a5)
Current Store : [0x80002cbc] : sh a7, 352(a5) -- Store: [0x80007714]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002cc8]:feq.h t6, ft11, ft10
	-[0x80002ccc]:csrrs a7, fflags, zero
	-[0x80002cd0]:sh t6, 360(a5)
Current Store : [0x80002cd4] : sh a7, 362(a5) -- Store: [0x8000771e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ce0]:feq.h t6, ft11, ft10
	-[0x80002ce4]:csrrs a7, fflags, zero
	-[0x80002ce8]:sh t6, 370(a5)
Current Store : [0x80002cec] : sh a7, 372(a5) -- Store: [0x80007728]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002cf8]:feq.h t6, ft11, ft10
	-[0x80002cfc]:csrrs a7, fflags, zero
	-[0x80002d00]:sh t6, 380(a5)
Current Store : [0x80002d04] : sh a7, 382(a5) -- Store: [0x80007732]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d10]:feq.h t6, ft11, ft10
	-[0x80002d14]:csrrs a7, fflags, zero
	-[0x80002d18]:sh t6, 390(a5)
Current Store : [0x80002d1c] : sh a7, 392(a5) -- Store: [0x8000773c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d28]:feq.h t6, ft11, ft10
	-[0x80002d2c]:csrrs a7, fflags, zero
	-[0x80002d30]:sh t6, 400(a5)
Current Store : [0x80002d34] : sh a7, 402(a5) -- Store: [0x80007746]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d40]:feq.h t6, ft11, ft10
	-[0x80002d44]:csrrs a7, fflags, zero
	-[0x80002d48]:sh t6, 410(a5)
Current Store : [0x80002d4c] : sh a7, 412(a5) -- Store: [0x80007750]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d58]:feq.h t6, ft11, ft10
	-[0x80002d5c]:csrrs a7, fflags, zero
	-[0x80002d60]:sh t6, 420(a5)
Current Store : [0x80002d64] : sh a7, 422(a5) -- Store: [0x8000775a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d70]:feq.h t6, ft11, ft10
	-[0x80002d74]:csrrs a7, fflags, zero
	-[0x80002d78]:sh t6, 430(a5)
Current Store : [0x80002d7c] : sh a7, 432(a5) -- Store: [0x80007764]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002d88]:feq.h t6, ft11, ft10
	-[0x80002d8c]:csrrs a7, fflags, zero
	-[0x80002d90]:sh t6, 440(a5)
Current Store : [0x80002d94] : sh a7, 442(a5) -- Store: [0x8000776e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002da0]:feq.h t6, ft11, ft10
	-[0x80002da4]:csrrs a7, fflags, zero
	-[0x80002da8]:sh t6, 450(a5)
Current Store : [0x80002dac] : sh a7, 452(a5) -- Store: [0x80007778]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002db8]:feq.h t6, ft11, ft10
	-[0x80002dbc]:csrrs a7, fflags, zero
	-[0x80002dc0]:sh t6, 460(a5)
Current Store : [0x80002dc4] : sh a7, 462(a5) -- Store: [0x80007782]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002dd0]:feq.h t6, ft11, ft10
	-[0x80002dd4]:csrrs a7, fflags, zero
	-[0x80002dd8]:sh t6, 470(a5)
Current Store : [0x80002ddc] : sh a7, 472(a5) -- Store: [0x8000778c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002de8]:feq.h t6, ft11, ft10
	-[0x80002dec]:csrrs a7, fflags, zero
	-[0x80002df0]:sh t6, 480(a5)
Current Store : [0x80002df4] : sh a7, 482(a5) -- Store: [0x80007796]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e00]:feq.h t6, ft11, ft10
	-[0x80002e04]:csrrs a7, fflags, zero
	-[0x80002e08]:sh t6, 490(a5)
Current Store : [0x80002e0c] : sh a7, 492(a5) -- Store: [0x800077a0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e18]:feq.h t6, ft11, ft10
	-[0x80002e1c]:csrrs a7, fflags, zero
	-[0x80002e20]:sh t6, 500(a5)
Current Store : [0x80002e24] : sh a7, 502(a5) -- Store: [0x800077aa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e30]:feq.h t6, ft11, ft10
	-[0x80002e34]:csrrs a7, fflags, zero
	-[0x80002e38]:sh t6, 510(a5)
Current Store : [0x80002e3c] : sh a7, 512(a5) -- Store: [0x800077b4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e48]:feq.h t6, ft11, ft10
	-[0x80002e4c]:csrrs a7, fflags, zero
	-[0x80002e50]:sh t6, 520(a5)
Current Store : [0x80002e54] : sh a7, 522(a5) -- Store: [0x800077be]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e60]:feq.h t6, ft11, ft10
	-[0x80002e64]:csrrs a7, fflags, zero
	-[0x80002e68]:sh t6, 530(a5)
Current Store : [0x80002e6c] : sh a7, 532(a5) -- Store: [0x800077c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e78]:feq.h t6, ft11, ft10
	-[0x80002e7c]:csrrs a7, fflags, zero
	-[0x80002e80]:sh t6, 540(a5)
Current Store : [0x80002e84] : sh a7, 542(a5) -- Store: [0x800077d2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002e90]:feq.h t6, ft11, ft10
	-[0x80002e94]:csrrs a7, fflags, zero
	-[0x80002e98]:sh t6, 550(a5)
Current Store : [0x80002e9c] : sh a7, 552(a5) -- Store: [0x800077dc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ea8]:feq.h t6, ft11, ft10
	-[0x80002eac]:csrrs a7, fflags, zero
	-[0x80002eb0]:sh t6, 560(a5)
Current Store : [0x80002eb4] : sh a7, 562(a5) -- Store: [0x800077e6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ec0]:feq.h t6, ft11, ft10
	-[0x80002ec4]:csrrs a7, fflags, zero
	-[0x80002ec8]:sh t6, 570(a5)
Current Store : [0x80002ecc] : sh a7, 572(a5) -- Store: [0x800077f0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ed8]:feq.h t6, ft11, ft10
	-[0x80002edc]:csrrs a7, fflags, zero
	-[0x80002ee0]:sh t6, 580(a5)
Current Store : [0x80002ee4] : sh a7, 582(a5) -- Store: [0x800077fa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ef0]:feq.h t6, ft11, ft10
	-[0x80002ef4]:csrrs a7, fflags, zero
	-[0x80002ef8]:sh t6, 590(a5)
Current Store : [0x80002efc] : sh a7, 592(a5) -- Store: [0x80007804]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f08]:feq.h t6, ft11, ft10
	-[0x80002f0c]:csrrs a7, fflags, zero
	-[0x80002f10]:sh t6, 600(a5)
Current Store : [0x80002f14] : sh a7, 602(a5) -- Store: [0x8000780e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f20]:feq.h t6, ft11, ft10
	-[0x80002f24]:csrrs a7, fflags, zero
	-[0x80002f28]:sh t6, 610(a5)
Current Store : [0x80002f2c] : sh a7, 612(a5) -- Store: [0x80007818]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f38]:feq.h t6, ft11, ft10
	-[0x80002f3c]:csrrs a7, fflags, zero
	-[0x80002f40]:sh t6, 620(a5)
Current Store : [0x80002f44] : sh a7, 622(a5) -- Store: [0x80007822]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f50]:feq.h t6, ft11, ft10
	-[0x80002f54]:csrrs a7, fflags, zero
	-[0x80002f58]:sh t6, 630(a5)
Current Store : [0x80002f5c] : sh a7, 632(a5) -- Store: [0x8000782c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f68]:feq.h t6, ft11, ft10
	-[0x80002f6c]:csrrs a7, fflags, zero
	-[0x80002f70]:sh t6, 640(a5)
Current Store : [0x80002f74] : sh a7, 642(a5) -- Store: [0x80007836]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f80]:feq.h t6, ft11, ft10
	-[0x80002f84]:csrrs a7, fflags, zero
	-[0x80002f88]:sh t6, 650(a5)
Current Store : [0x80002f8c] : sh a7, 652(a5) -- Store: [0x80007840]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002f98]:feq.h t6, ft11, ft10
	-[0x80002f9c]:csrrs a7, fflags, zero
	-[0x80002fa0]:sh t6, 660(a5)
Current Store : [0x80002fa4] : sh a7, 662(a5) -- Store: [0x8000784a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002fb0]:feq.h t6, ft11, ft10
	-[0x80002fb4]:csrrs a7, fflags, zero
	-[0x80002fb8]:sh t6, 670(a5)
Current Store : [0x80002fbc] : sh a7, 672(a5) -- Store: [0x80007854]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002fc8]:feq.h t6, ft11, ft10
	-[0x80002fcc]:csrrs a7, fflags, zero
	-[0x80002fd0]:sh t6, 680(a5)
Current Store : [0x80002fd4] : sh a7, 682(a5) -- Store: [0x8000785e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002fe0]:feq.h t6, ft11, ft10
	-[0x80002fe4]:csrrs a7, fflags, zero
	-[0x80002fe8]:sh t6, 690(a5)
Current Store : [0x80002fec] : sh a7, 692(a5) -- Store: [0x80007868]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80002ff8]:feq.h t6, ft11, ft10
	-[0x80002ffc]:csrrs a7, fflags, zero
	-[0x80003000]:sh t6, 700(a5)
Current Store : [0x80003004] : sh a7, 702(a5) -- Store: [0x80007872]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003010]:feq.h t6, ft11, ft10
	-[0x80003014]:csrrs a7, fflags, zero
	-[0x80003018]:sh t6, 710(a5)
Current Store : [0x8000301c] : sh a7, 712(a5) -- Store: [0x8000787c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003028]:feq.h t6, ft11, ft10
	-[0x8000302c]:csrrs a7, fflags, zero
	-[0x80003030]:sh t6, 720(a5)
Current Store : [0x80003034] : sh a7, 722(a5) -- Store: [0x80007886]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003040]:feq.h t6, ft11, ft10
	-[0x80003044]:csrrs a7, fflags, zero
	-[0x80003048]:sh t6, 730(a5)
Current Store : [0x8000304c] : sh a7, 732(a5) -- Store: [0x80007890]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003058]:feq.h t6, ft11, ft10
	-[0x8000305c]:csrrs a7, fflags, zero
	-[0x80003060]:sh t6, 740(a5)
Current Store : [0x80003064] : sh a7, 742(a5) -- Store: [0x8000789a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003070]:feq.h t6, ft11, ft10
	-[0x80003074]:csrrs a7, fflags, zero
	-[0x80003078]:sh t6, 750(a5)
Current Store : [0x8000307c] : sh a7, 752(a5) -- Store: [0x800078a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003088]:feq.h t6, ft11, ft10
	-[0x8000308c]:csrrs a7, fflags, zero
	-[0x80003090]:sh t6, 760(a5)
Current Store : [0x80003094] : sh a7, 762(a5) -- Store: [0x800078ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800030a0]:feq.h t6, ft11, ft10
	-[0x800030a4]:csrrs a7, fflags, zero
	-[0x800030a8]:sh t6, 770(a5)
Current Store : [0x800030ac] : sh a7, 772(a5) -- Store: [0x800078b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800030b8]:feq.h t6, ft11, ft10
	-[0x800030bc]:csrrs a7, fflags, zero
	-[0x800030c0]:sh t6, 780(a5)
Current Store : [0x800030c4] : sh a7, 782(a5) -- Store: [0x800078c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800030d0]:feq.h t6, ft11, ft10
	-[0x800030d4]:csrrs a7, fflags, zero
	-[0x800030d8]:sh t6, 790(a5)
Current Store : [0x800030dc] : sh a7, 792(a5) -- Store: [0x800078cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800030e8]:feq.h t6, ft11, ft10
	-[0x800030ec]:csrrs a7, fflags, zero
	-[0x800030f0]:sh t6, 800(a5)
Current Store : [0x800030f4] : sh a7, 802(a5) -- Store: [0x800078d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003104]:feq.h t6, ft11, ft10
	-[0x80003108]:csrrs a7, fflags, zero
	-[0x8000310c]:sh t6, 810(a5)
Current Store : [0x80003110] : sh a7, 812(a5) -- Store: [0x800078e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000311c]:feq.h t6, ft11, ft10
	-[0x80003120]:csrrs a7, fflags, zero
	-[0x80003124]:sh t6, 820(a5)
Current Store : [0x80003128] : sh a7, 822(a5) -- Store: [0x800078ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003134]:feq.h t6, ft11, ft10
	-[0x80003138]:csrrs a7, fflags, zero
	-[0x8000313c]:sh t6, 830(a5)
Current Store : [0x80003140] : sh a7, 832(a5) -- Store: [0x800078f4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000314c]:feq.h t6, ft11, ft10
	-[0x80003150]:csrrs a7, fflags, zero
	-[0x80003154]:sh t6, 840(a5)
Current Store : [0x80003158] : sh a7, 842(a5) -- Store: [0x800078fe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003164]:feq.h t6, ft11, ft10
	-[0x80003168]:csrrs a7, fflags, zero
	-[0x8000316c]:sh t6, 850(a5)
Current Store : [0x80003170] : sh a7, 852(a5) -- Store: [0x80007908]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000317c]:feq.h t6, ft11, ft10
	-[0x80003180]:csrrs a7, fflags, zero
	-[0x80003184]:sh t6, 860(a5)
Current Store : [0x80003188] : sh a7, 862(a5) -- Store: [0x80007912]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003194]:feq.h t6, ft11, ft10
	-[0x80003198]:csrrs a7, fflags, zero
	-[0x8000319c]:sh t6, 870(a5)
Current Store : [0x800031a0] : sh a7, 872(a5) -- Store: [0x8000791c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800031ac]:feq.h t6, ft11, ft10
	-[0x800031b0]:csrrs a7, fflags, zero
	-[0x800031b4]:sh t6, 880(a5)
Current Store : [0x800031b8] : sh a7, 882(a5) -- Store: [0x80007926]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800031c4]:feq.h t6, ft11, ft10
	-[0x800031c8]:csrrs a7, fflags, zero
	-[0x800031cc]:sh t6, 890(a5)
Current Store : [0x800031d0] : sh a7, 892(a5) -- Store: [0x80007930]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800031dc]:feq.h t6, ft11, ft10
	-[0x800031e0]:csrrs a7, fflags, zero
	-[0x800031e4]:sh t6, 900(a5)
Current Store : [0x800031e8] : sh a7, 902(a5) -- Store: [0x8000793a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800031f4]:feq.h t6, ft11, ft10
	-[0x800031f8]:csrrs a7, fflags, zero
	-[0x800031fc]:sh t6, 910(a5)
Current Store : [0x80003200] : sh a7, 912(a5) -- Store: [0x80007944]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000320c]:feq.h t6, ft11, ft10
	-[0x80003210]:csrrs a7, fflags, zero
	-[0x80003214]:sh t6, 920(a5)
Current Store : [0x80003218] : sh a7, 922(a5) -- Store: [0x8000794e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003224]:feq.h t6, ft11, ft10
	-[0x80003228]:csrrs a7, fflags, zero
	-[0x8000322c]:sh t6, 930(a5)
Current Store : [0x80003230] : sh a7, 932(a5) -- Store: [0x80007958]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000323c]:feq.h t6, ft11, ft10
	-[0x80003240]:csrrs a7, fflags, zero
	-[0x80003244]:sh t6, 940(a5)
Current Store : [0x80003248] : sh a7, 942(a5) -- Store: [0x80007962]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003254]:feq.h t6, ft11, ft10
	-[0x80003258]:csrrs a7, fflags, zero
	-[0x8000325c]:sh t6, 950(a5)
Current Store : [0x80003260] : sh a7, 952(a5) -- Store: [0x8000796c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000326c]:feq.h t6, ft11, ft10
	-[0x80003270]:csrrs a7, fflags, zero
	-[0x80003274]:sh t6, 960(a5)
Current Store : [0x80003278] : sh a7, 962(a5) -- Store: [0x80007976]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003284]:feq.h t6, ft11, ft10
	-[0x80003288]:csrrs a7, fflags, zero
	-[0x8000328c]:sh t6, 970(a5)
Current Store : [0x80003290] : sh a7, 972(a5) -- Store: [0x80007980]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000329c]:feq.h t6, ft11, ft10
	-[0x800032a0]:csrrs a7, fflags, zero
	-[0x800032a4]:sh t6, 980(a5)
Current Store : [0x800032a8] : sh a7, 982(a5) -- Store: [0x8000798a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800032b4]:feq.h t6, ft11, ft10
	-[0x800032b8]:csrrs a7, fflags, zero
	-[0x800032bc]:sh t6, 990(a5)
Current Store : [0x800032c0] : sh a7, 992(a5) -- Store: [0x80007994]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800032cc]:feq.h t6, ft11, ft10
	-[0x800032d0]:csrrs a7, fflags, zero
	-[0x800032d4]:sh t6, 1000(a5)
Current Store : [0x800032d8] : sh a7, 1002(a5) -- Store: [0x8000799e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800032e4]:feq.h t6, ft11, ft10
	-[0x800032e8]:csrrs a7, fflags, zero
	-[0x800032ec]:sh t6, 1010(a5)
Current Store : [0x800032f0] : sh a7, 1012(a5) -- Store: [0x800079a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800032fc]:feq.h t6, ft11, ft10
	-[0x80003300]:csrrs a7, fflags, zero
	-[0x80003304]:sh t6, 1020(a5)
Current Store : [0x80003308] : sh a7, 1022(a5) -- Store: [0x800079b2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003314]:feq.h t6, ft11, ft10
	-[0x80003318]:csrrs a7, fflags, zero
	-[0x8000331c]:sh t6, 1030(a5)
Current Store : [0x80003320] : sh a7, 1032(a5) -- Store: [0x800079bc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000332c]:feq.h t6, ft11, ft10
	-[0x80003330]:csrrs a7, fflags, zero
	-[0x80003334]:sh t6, 1040(a5)
Current Store : [0x80003338] : sh a7, 1042(a5) -- Store: [0x800079c6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003344]:feq.h t6, ft11, ft10
	-[0x80003348]:csrrs a7, fflags, zero
	-[0x8000334c]:sh t6, 1050(a5)
Current Store : [0x80003350] : sh a7, 1052(a5) -- Store: [0x800079d0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000335c]:feq.h t6, ft11, ft10
	-[0x80003360]:csrrs a7, fflags, zero
	-[0x80003364]:sh t6, 1060(a5)
Current Store : [0x80003368] : sh a7, 1062(a5) -- Store: [0x800079da]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003374]:feq.h t6, ft11, ft10
	-[0x80003378]:csrrs a7, fflags, zero
	-[0x8000337c]:sh t6, 1070(a5)
Current Store : [0x80003380] : sh a7, 1072(a5) -- Store: [0x800079e4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000338c]:feq.h t6, ft11, ft10
	-[0x80003390]:csrrs a7, fflags, zero
	-[0x80003394]:sh t6, 1080(a5)
Current Store : [0x80003398] : sh a7, 1082(a5) -- Store: [0x800079ee]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800033a4]:feq.h t6, ft11, ft10
	-[0x800033a8]:csrrs a7, fflags, zero
	-[0x800033ac]:sh t6, 1090(a5)
Current Store : [0x800033b0] : sh a7, 1092(a5) -- Store: [0x800079f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800033bc]:feq.h t6, ft11, ft10
	-[0x800033c0]:csrrs a7, fflags, zero
	-[0x800033c4]:sh t6, 1100(a5)
Current Store : [0x800033c8] : sh a7, 1102(a5) -- Store: [0x80007a02]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800033d4]:feq.h t6, ft11, ft10
	-[0x800033d8]:csrrs a7, fflags, zero
	-[0x800033dc]:sh t6, 1110(a5)
Current Store : [0x800033e0] : sh a7, 1112(a5) -- Store: [0x80007a0c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800033ec]:feq.h t6, ft11, ft10
	-[0x800033f0]:csrrs a7, fflags, zero
	-[0x800033f4]:sh t6, 1120(a5)
Current Store : [0x800033f8] : sh a7, 1122(a5) -- Store: [0x80007a16]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003404]:feq.h t6, ft11, ft10
	-[0x80003408]:csrrs a7, fflags, zero
	-[0x8000340c]:sh t6, 1130(a5)
Current Store : [0x80003410] : sh a7, 1132(a5) -- Store: [0x80007a20]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000341c]:feq.h t6, ft11, ft10
	-[0x80003420]:csrrs a7, fflags, zero
	-[0x80003424]:sh t6, 1140(a5)
Current Store : [0x80003428] : sh a7, 1142(a5) -- Store: [0x80007a2a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003434]:feq.h t6, ft11, ft10
	-[0x80003438]:csrrs a7, fflags, zero
	-[0x8000343c]:sh t6, 1150(a5)
Current Store : [0x80003440] : sh a7, 1152(a5) -- Store: [0x80007a34]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000344c]:feq.h t6, ft11, ft10
	-[0x80003450]:csrrs a7, fflags, zero
	-[0x80003454]:sh t6, 1160(a5)
Current Store : [0x80003458] : sh a7, 1162(a5) -- Store: [0x80007a3e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003464]:feq.h t6, ft11, ft10
	-[0x80003468]:csrrs a7, fflags, zero
	-[0x8000346c]:sh t6, 1170(a5)
Current Store : [0x80003470] : sh a7, 1172(a5) -- Store: [0x80007a48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000347c]:feq.h t6, ft11, ft10
	-[0x80003480]:csrrs a7, fflags, zero
	-[0x80003484]:sh t6, 1180(a5)
Current Store : [0x80003488] : sh a7, 1182(a5) -- Store: [0x80007a52]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003494]:feq.h t6, ft11, ft10
	-[0x80003498]:csrrs a7, fflags, zero
	-[0x8000349c]:sh t6, 1190(a5)
Current Store : [0x800034a0] : sh a7, 1192(a5) -- Store: [0x80007a5c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800034ac]:feq.h t6, ft11, ft10
	-[0x800034b0]:csrrs a7, fflags, zero
	-[0x800034b4]:sh t6, 1200(a5)
Current Store : [0x800034b8] : sh a7, 1202(a5) -- Store: [0x80007a66]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800034c4]:feq.h t6, ft11, ft10
	-[0x800034c8]:csrrs a7, fflags, zero
	-[0x800034cc]:sh t6, 1210(a5)
Current Store : [0x800034d0] : sh a7, 1212(a5) -- Store: [0x80007a70]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800034dc]:feq.h t6, ft11, ft10
	-[0x800034e0]:csrrs a7, fflags, zero
	-[0x800034e4]:sh t6, 1220(a5)
Current Store : [0x800034e8] : sh a7, 1222(a5) -- Store: [0x80007a7a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800034f4]:feq.h t6, ft11, ft10
	-[0x800034f8]:csrrs a7, fflags, zero
	-[0x800034fc]:sh t6, 1230(a5)
Current Store : [0x80003500] : sh a7, 1232(a5) -- Store: [0x80007a84]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000350c]:feq.h t6, ft11, ft10
	-[0x80003510]:csrrs a7, fflags, zero
	-[0x80003514]:sh t6, 1240(a5)
Current Store : [0x80003518] : sh a7, 1242(a5) -- Store: [0x80007a8e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003524]:feq.h t6, ft11, ft10
	-[0x80003528]:csrrs a7, fflags, zero
	-[0x8000352c]:sh t6, 1250(a5)
Current Store : [0x80003530] : sh a7, 1252(a5) -- Store: [0x80007a98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000353c]:feq.h t6, ft11, ft10
	-[0x80003540]:csrrs a7, fflags, zero
	-[0x80003544]:sh t6, 1260(a5)
Current Store : [0x80003548] : sh a7, 1262(a5) -- Store: [0x80007aa2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003554]:feq.h t6, ft11, ft10
	-[0x80003558]:csrrs a7, fflags, zero
	-[0x8000355c]:sh t6, 1270(a5)
Current Store : [0x80003560] : sh a7, 1272(a5) -- Store: [0x80007aac]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000356c]:feq.h t6, ft11, ft10
	-[0x80003570]:csrrs a7, fflags, zero
	-[0x80003574]:sh t6, 1280(a5)
Current Store : [0x80003578] : sh a7, 1282(a5) -- Store: [0x80007ab6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003584]:feq.h t6, ft11, ft10
	-[0x80003588]:csrrs a7, fflags, zero
	-[0x8000358c]:sh t6, 1290(a5)
Current Store : [0x80003590] : sh a7, 1292(a5) -- Store: [0x80007ac0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000359c]:feq.h t6, ft11, ft10
	-[0x800035a0]:csrrs a7, fflags, zero
	-[0x800035a4]:sh t6, 1300(a5)
Current Store : [0x800035a8] : sh a7, 1302(a5) -- Store: [0x80007aca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800035b4]:feq.h t6, ft11, ft10
	-[0x800035b8]:csrrs a7, fflags, zero
	-[0x800035bc]:sh t6, 1310(a5)
Current Store : [0x800035c0] : sh a7, 1312(a5) -- Store: [0x80007ad4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800035cc]:feq.h t6, ft11, ft10
	-[0x800035d0]:csrrs a7, fflags, zero
	-[0x800035d4]:sh t6, 1320(a5)
Current Store : [0x800035d8] : sh a7, 1322(a5) -- Store: [0x80007ade]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800035e4]:feq.h t6, ft11, ft10
	-[0x800035e8]:csrrs a7, fflags, zero
	-[0x800035ec]:sh t6, 1330(a5)
Current Store : [0x800035f0] : sh a7, 1332(a5) -- Store: [0x80007ae8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800035fc]:feq.h t6, ft11, ft10
	-[0x80003600]:csrrs a7, fflags, zero
	-[0x80003604]:sh t6, 1340(a5)
Current Store : [0x80003608] : sh a7, 1342(a5) -- Store: [0x80007af2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003614]:feq.h t6, ft11, ft10
	-[0x80003618]:csrrs a7, fflags, zero
	-[0x8000361c]:sh t6, 1350(a5)
Current Store : [0x80003620] : sh a7, 1352(a5) -- Store: [0x80007afc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000362c]:feq.h t6, ft11, ft10
	-[0x80003630]:csrrs a7, fflags, zero
	-[0x80003634]:sh t6, 1360(a5)
Current Store : [0x80003638] : sh a7, 1362(a5) -- Store: [0x80007b06]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003644]:feq.h t6, ft11, ft10
	-[0x80003648]:csrrs a7, fflags, zero
	-[0x8000364c]:sh t6, 1370(a5)
Current Store : [0x80003650] : sh a7, 1372(a5) -- Store: [0x80007b10]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000365c]:feq.h t6, ft11, ft10
	-[0x80003660]:csrrs a7, fflags, zero
	-[0x80003664]:sh t6, 1380(a5)
Current Store : [0x80003668] : sh a7, 1382(a5) -- Store: [0x80007b1a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003674]:feq.h t6, ft11, ft10
	-[0x80003678]:csrrs a7, fflags, zero
	-[0x8000367c]:sh t6, 1390(a5)
Current Store : [0x80003680] : sh a7, 1392(a5) -- Store: [0x80007b24]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000368c]:feq.h t6, ft11, ft10
	-[0x80003690]:csrrs a7, fflags, zero
	-[0x80003694]:sh t6, 1400(a5)
Current Store : [0x80003698] : sh a7, 1402(a5) -- Store: [0x80007b2e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800036a4]:feq.h t6, ft11, ft10
	-[0x800036a8]:csrrs a7, fflags, zero
	-[0x800036ac]:sh t6, 1410(a5)
Current Store : [0x800036b0] : sh a7, 1412(a5) -- Store: [0x80007b38]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800036bc]:feq.h t6, ft11, ft10
	-[0x800036c0]:csrrs a7, fflags, zero
	-[0x800036c4]:sh t6, 1420(a5)
Current Store : [0x800036c8] : sh a7, 1422(a5) -- Store: [0x80007b42]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800036d4]:feq.h t6, ft11, ft10
	-[0x800036d8]:csrrs a7, fflags, zero
	-[0x800036dc]:sh t6, 1430(a5)
Current Store : [0x800036e0] : sh a7, 1432(a5) -- Store: [0x80007b4c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800036ec]:feq.h t6, ft11, ft10
	-[0x800036f0]:csrrs a7, fflags, zero
	-[0x800036f4]:sh t6, 1440(a5)
Current Store : [0x800036f8] : sh a7, 1442(a5) -- Store: [0x80007b56]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003704]:feq.h t6, ft11, ft10
	-[0x80003708]:csrrs a7, fflags, zero
	-[0x8000370c]:sh t6, 1450(a5)
Current Store : [0x80003710] : sh a7, 1452(a5) -- Store: [0x80007b60]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000371c]:feq.h t6, ft11, ft10
	-[0x80003720]:csrrs a7, fflags, zero
	-[0x80003724]:sh t6, 1460(a5)
Current Store : [0x80003728] : sh a7, 1462(a5) -- Store: [0x80007b6a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003734]:feq.h t6, ft11, ft10
	-[0x80003738]:csrrs a7, fflags, zero
	-[0x8000373c]:sh t6, 1470(a5)
Current Store : [0x80003740] : sh a7, 1472(a5) -- Store: [0x80007b74]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000374c]:feq.h t6, ft11, ft10
	-[0x80003750]:csrrs a7, fflags, zero
	-[0x80003754]:sh t6, 1480(a5)
Current Store : [0x80003758] : sh a7, 1482(a5) -- Store: [0x80007b7e]:0x0000000000000010




Last Coverpoint : ['opcode : feq.h', 'rd : x31', 'rs1 : f31', 'rs2 : f30', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80003764]:feq.h t6, ft11, ft10
	-[0x80003768]:csrrs a7, fflags, zero
	-[0x8000376c]:sh t6, 1490(a5)
Current Store : [0x80003770] : sh a7, 1492(a5) -- Store: [0x80007b88]:0x0000000000000010




Last Coverpoint : ['opcode : feq.h', 'rd : x31', 'rs1 : f31', 'rs2 : f30', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000377c]:feq.h t6, ft11, ft10
	-[0x80003780]:csrrs a7, fflags, zero
	-[0x80003784]:sh t6, 1500(a5)
Current Store : [0x80003788] : sh a7, 1502(a5) -- Store: [0x80007b92]:0x0000000000000010





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

|s.no|            signature             |                                                                                               coverpoints                                                                                                |                                                      code                                                      |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80005b04]<br>0x0000000000000001|- opcode : feq.h<br> - rd : x13<br> - rs1 : f7<br> - rs2 : f19<br> - rs1 != rs2<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br> |[0x80000120]:feq.h a3, ft7, fs3<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh a3, 0(a5)<br>       |
|   2|[0x80005b0e]<br>0x0000000000000001|- rd : x10<br> - rs1 : f3<br> - rs2 : f3<br> - rs1 == rs2<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                       |[0x80000138]:feq.h a0, ft3, ft3<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh a0, 10(a5)<br>      |
|   3|[0x80005b18]<br>0x0000000000000000|- rd : x0<br> - rs1 : f14<br> - rs2 : f31<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                       |[0x80000150]:feq.h zero, fa4, ft11<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh zero, 20(a5)<br> |
|   4|[0x80005b22]<br>0x0000000000000000|- rd : x19<br> - rs1 : f22<br> - rs2 : f6<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                       |[0x80000168]:feq.h s3, fs6, ft6<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sh s3, 30(a5)<br>      |
|   5|[0x80005b2c]<br>0x0000000000000000|- rd : x28<br> - rs1 : f8<br> - rs2 : f16<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                       |[0x80000180]:feq.h t3, fs0, fa6<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sh t3, 40(a5)<br>      |
|   6|[0x80005b36]<br>0x0000000000000000|- rd : x3<br> - rs1 : f18<br> - rs2 : f14<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                       |[0x80000198]:feq.h gp, fs2, fa4<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sh gp, 50(a5)<br>      |
|   7|[0x80005b40]<br>0x0000000000000000|- rd : x25<br> - rs1 : f17<br> - rs2 : f1<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                       |[0x800001b0]:feq.h s9, fa7, ft1<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sh s9, 60(a5)<br>      |
|   8|[0x80005b4a]<br>0x0000000000000000|- rd : x31<br> - rs1 : f30<br> - rs2 : f28<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                      |[0x800001c8]:feq.h t6, ft10, ft8<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sh t6, 70(a5)<br>     |
|   9|[0x80005b54]<br>0x0000000000000000|- rd : x24<br> - rs1 : f24<br> - rs2 : f30<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                      |[0x800001e0]:feq.h s8, fs8, ft10<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sh s8, 80(a5)<br>     |
|  10|[0x80005b5e]<br>0x0000000000000000|- rd : x4<br> - rs1 : f10<br> - rs2 : f5<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                        |[0x800001f8]:feq.h tp, fa0, ft5<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sh tp, 90(a5)<br>      |
|  11|[0x80005b68]<br>0x0000000000000000|- rd : x14<br> - rs1 : f13<br> - rs2 : f23<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                      |[0x80000210]:feq.h a4, fa3, fs7<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sh a4, 100(a5)<br>     |
|  12|[0x80005b72]<br>0x0000000000000000|- rd : x6<br> - rs1 : f11<br> - rs2 : f0<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                        |[0x80000228]:feq.h t1, fa1, ft0<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sh t1, 110(a5)<br>     |
|  13|[0x80005b7c]<br>0x0000000000000000|- rd : x18<br> - rs1 : f27<br> - rs2 : f13<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                      |[0x80000240]:feq.h s2, fs11, fa3<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh s2, 120(a5)<br>    |
|  14|[0x80005b86]<br>0x0000000000000000|- rd : x22<br> - rs1 : f12<br> - rs2 : f8<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                       |[0x80000258]:feq.h s6, fa2, fs0<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sh s6, 130(a5)<br>     |
|  15|[0x80005b90]<br>0x0000000000000000|- rd : x21<br> - rs1 : f28<br> - rs2 : f20<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                      |[0x80000270]:feq.h s5, ft8, fs4<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sh s5, 140(a5)<br>     |
|  16|[0x80005b9a]<br>0x0000000000000000|- rd : x27<br> - rs1 : f19<br> - rs2 : f29<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                      |[0x80000288]:feq.h s11, fs3, ft9<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sh s11, 150(a5)<br>   |
|  17|[0x80005c04]<br>0x0000000000000000|- rd : x15<br> - rs1 : f0<br> - rs2 : f15<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                       |[0x800002ac]:feq.h a5, ft0, fa5<br> [0x800002b0]:csrrs s5, fflags, zero<br> [0x800002b4]:sh a5, 0(s3)<br>       |
|  18|[0x80005c0e]<br>0x0000000000000000|- rd : x16<br> - rs1 : f26<br> - rs2 : f2<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                       |[0x800002c4]:feq.h a6, fs10, ft2<br> [0x800002c8]:csrrs s5, fflags, zero<br> [0x800002cc]:sh a6, 10(s3)<br>     |
|  19|[0x80005c24]<br>0x0000000000000000|- rd : x20<br> - rs1 : f5<br> - rs2 : f25<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                       |[0x800002e8]:feq.h s4, ft5, fs9<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sh s4, 0(a5)<br>       |
|  20|[0x80005c2e]<br>0x0000000000000000|- rd : x5<br> - rs1 : f4<br> - rs2 : f11<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                        |[0x80000300]:feq.h t0, ft4, fa1<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sh t0, 10(a5)<br>      |
|  21|[0x80005c44]<br>0x0000000000000000|- rd : x17<br> - rs1 : f23<br> - rs2 : f27<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                      |[0x80000324]:feq.h a7, fs7, fs11<br> [0x80000328]:csrrs s5, fflags, zero<br> [0x8000032c]:sh a7, 0(s3)<br>      |
|  22|[0x80005c54]<br>0x0000000000000000|- rd : x1<br> - rs1 : f15<br> - rs2 : f12<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                       |[0x80000348]:feq.h ra, fa5, fa2<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh ra, 0(a5)<br>       |
|  23|[0x80005c5e]<br>0x0000000000000000|- rd : x7<br> - rs1 : f9<br> - rs2 : f4<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                         |[0x80000360]:feq.h t2, fs1, ft4<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh t2, 10(a5)<br>      |
|  24|[0x80005c68]<br>0x0000000000000000|- rd : x30<br> - rs1 : f2<br> - rs2 : f24<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                       |[0x80000378]:feq.h t5, ft2, fs8<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh t5, 20(a5)<br>      |
|  25|[0x80005c72]<br>0x0000000000000000|- rd : x26<br> - rs1 : f21<br> - rs2 : f26<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                      |[0x80000390]:feq.h s10, fs5, fs10<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sh s10, 30(a5)<br>   |
|  26|[0x80005c7c]<br>0x0000000000000000|- rd : x23<br> - rs1 : f6<br> - rs2 : f21<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                       |[0x800003a8]:feq.h s7, ft6, fs5<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sh s7, 40(a5)<br>      |
|  27|[0x80005c86]<br>0x0000000000000001|- rd : x8<br> - rs1 : f31<br> - rs2 : f18<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                       |[0x800003c0]:feq.h fp, ft11, fs2<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh fp, 50(a5)<br>     |
|  28|[0x80005c90]<br>0x0000000000000000|- rd : x9<br> - rs1 : f20<br> - rs2 : f9<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                        |[0x800003d8]:feq.h s1, fs4, fs1<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh s1, 60(a5)<br>      |
|  29|[0x80005c9a]<br>0x0000000000000000|- rd : x12<br> - rs1 : f1<br> - rs2 : f7<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                        |[0x800003f0]:feq.h a2, ft1, ft7<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh a2, 70(a5)<br>      |
|  30|[0x80005ca4]<br>0x0000000000000000|- rd : x29<br> - rs1 : f25<br> - rs2 : f22<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                      |[0x80000408]:feq.h t4, fs9, fs6<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh t4, 80(a5)<br>      |
|  31|[0x80005cae]<br>0x0000000000000000|- rd : x11<br> - rs1 : f16<br> - rs2 : f10<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                      |[0x80000420]:feq.h a1, fa6, fa0<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sh a1, 90(a5)<br>      |
|  32|[0x80005cb8]<br>0x0000000000000000|- rd : x2<br> - rs1 : f29<br> - rs2 : f17<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                       |[0x80000438]:feq.h sp, ft9, fa7<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sh sp, 100(a5)<br>     |
|  33|[0x80005cc2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000450]:feq.h t6, ft11, ft10<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sh t6, 110(a5)<br>   |
|  34|[0x80005ccc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000468]:feq.h t6, ft11, ft10<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:sh t6, 120(a5)<br>   |
|  35|[0x80005cd6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000480]:feq.h t6, ft11, ft10<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:sh t6, 130(a5)<br>   |
|  36|[0x80005ce0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000498]:feq.h t6, ft11, ft10<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:sh t6, 140(a5)<br>   |
|  37|[0x80005cea]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800004b0]:feq.h t6, ft11, ft10<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:sh t6, 150(a5)<br>   |
|  38|[0x80005cf4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x800004c8]:feq.h t6, ft11, ft10<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:sh t6, 160(a5)<br>   |
|  39|[0x80005cfe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800004e0]:feq.h t6, ft11, ft10<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:sh t6, 170(a5)<br>   |
|  40|[0x80005d08]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800004f8]:feq.h t6, ft11, ft10<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:sh t6, 180(a5)<br>   |
|  41|[0x80005d12]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000510]:feq.h t6, ft11, ft10<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sh t6, 190(a5)<br>   |
|  42|[0x80005d1c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000528]:feq.h t6, ft11, ft10<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:sh t6, 200(a5)<br>   |
|  43|[0x80005d26]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000540]:feq.h t6, ft11, ft10<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:sh t6, 210(a5)<br>   |
|  44|[0x80005d30]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80000558]:feq.h t6, ft11, ft10<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:sh t6, 220(a5)<br>   |
|  45|[0x80005d3a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80000570]:feq.h t6, ft11, ft10<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:sh t6, 230(a5)<br>   |
|  46|[0x80005d44]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000588]:feq.h t6, ft11, ft10<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:sh t6, 240(a5)<br>   |
|  47|[0x80005d4e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800005a0]:feq.h t6, ft11, ft10<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:sh t6, 250(a5)<br>   |
|  48|[0x80005d58]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800005b8]:feq.h t6, ft11, ft10<br> [0x800005bc]:csrrs a7, fflags, zero<br> [0x800005c0]:sh t6, 260(a5)<br>   |
|  49|[0x80005d62]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800005d0]:feq.h t6, ft11, ft10<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:sh t6, 270(a5)<br>   |
|  50|[0x80005d6c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800005e8]:feq.h t6, ft11, ft10<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:sh t6, 280(a5)<br>   |
|  51|[0x80005d76]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000600]:feq.h t6, ft11, ft10<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:sh t6, 290(a5)<br>   |
|  52|[0x80005d80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80000618]:feq.h t6, ft11, ft10<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:sh t6, 300(a5)<br>   |
|  53|[0x80005d8a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000630]:feq.h t6, ft11, ft10<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:sh t6, 310(a5)<br>   |
|  54|[0x80005d94]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80000648]:feq.h t6, ft11, ft10<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:sh t6, 320(a5)<br>   |
|  55|[0x80005d9e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80000660]:feq.h t6, ft11, ft10<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:sh t6, 330(a5)<br>   |
|  56|[0x80005da8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000678]:feq.h t6, ft11, ft10<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:sh t6, 340(a5)<br>   |
|  57|[0x80005db2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000690]:feq.h t6, ft11, ft10<br> [0x80000694]:csrrs a7, fflags, zero<br> [0x80000698]:sh t6, 350(a5)<br>   |
|  58|[0x80005dbc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800006a8]:feq.h t6, ft11, ft10<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:sh t6, 360(a5)<br>   |
|  59|[0x80005dc6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800006c0]:feq.h t6, ft11, ft10<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:sh t6, 370(a5)<br>   |
|  60|[0x80005dd0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800006d8]:feq.h t6, ft11, ft10<br> [0x800006dc]:csrrs a7, fflags, zero<br> [0x800006e0]:sh t6, 380(a5)<br>   |
|  61|[0x80005dda]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800006f0]:feq.h t6, ft11, ft10<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:sh t6, 390(a5)<br>   |
|  62|[0x80005de4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80000708]:feq.h t6, ft11, ft10<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:sh t6, 400(a5)<br>   |
|  63|[0x80005dee]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000720]:feq.h t6, ft11, ft10<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:sh t6, 410(a5)<br>   |
|  64|[0x80005df8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000738]:feq.h t6, ft11, ft10<br> [0x8000073c]:csrrs a7, fflags, zero<br> [0x80000740]:sh t6, 420(a5)<br>   |
|  65|[0x80005e02]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000750]:feq.h t6, ft11, ft10<br> [0x80000754]:csrrs a7, fflags, zero<br> [0x80000758]:sh t6, 430(a5)<br>   |
|  66|[0x80005e0c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000768]:feq.h t6, ft11, ft10<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:sh t6, 440(a5)<br>   |
|  67|[0x80005e16]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000780]:feq.h t6, ft11, ft10<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:sh t6, 450(a5)<br>   |
|  68|[0x80005e20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80000798]:feq.h t6, ft11, ft10<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:sh t6, 460(a5)<br>   |
|  69|[0x80005e2a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800007b0]:feq.h t6, ft11, ft10<br> [0x800007b4]:csrrs a7, fflags, zero<br> [0x800007b8]:sh t6, 470(a5)<br>   |
|  70|[0x80005e34]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800007c8]:feq.h t6, ft11, ft10<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:sh t6, 480(a5)<br>   |
|  71|[0x80005e3e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800007e0]:feq.h t6, ft11, ft10<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:sh t6, 490(a5)<br>   |
|  72|[0x80005e48]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800007f8]:feq.h t6, ft11, ft10<br> [0x800007fc]:csrrs a7, fflags, zero<br> [0x80000800]:sh t6, 500(a5)<br>   |
|  73|[0x80005e52]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000810]:feq.h t6, ft11, ft10<br> [0x80000814]:csrrs a7, fflags, zero<br> [0x80000818]:sh t6, 510(a5)<br>   |
|  74|[0x80005e5c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000828]:feq.h t6, ft11, ft10<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:sh t6, 520(a5)<br>   |
|  75|[0x80005e66]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000840]:feq.h t6, ft11, ft10<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:sh t6, 530(a5)<br>   |
|  76|[0x80005e70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80000858]:feq.h t6, ft11, ft10<br> [0x8000085c]:csrrs a7, fflags, zero<br> [0x80000860]:sh t6, 540(a5)<br>   |
|  77|[0x80005e7a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000870]:feq.h t6, ft11, ft10<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:sh t6, 550(a5)<br>   |
|  78|[0x80005e84]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80000888]:feq.h t6, ft11, ft10<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:sh t6, 560(a5)<br>   |
|  79|[0x80005e8e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800008a0]:feq.h t6, ft11, ft10<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:sh t6, 570(a5)<br>   |
|  80|[0x80005e98]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800008b8]:feq.h t6, ft11, ft10<br> [0x800008bc]:csrrs a7, fflags, zero<br> [0x800008c0]:sh t6, 580(a5)<br>   |
|  81|[0x80005ea2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800008d0]:feq.h t6, ft11, ft10<br> [0x800008d4]:csrrs a7, fflags, zero<br> [0x800008d8]:sh t6, 590(a5)<br>   |
|  82|[0x80005eac]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800008e8]:feq.h t6, ft11, ft10<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:sh t6, 600(a5)<br>   |
|  83|[0x80005eb6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000900]:feq.h t6, ft11, ft10<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:sh t6, 610(a5)<br>   |
|  84|[0x80005ec0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000918]:feq.h t6, ft11, ft10<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:sh t6, 620(a5)<br>   |
|  85|[0x80005eca]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000930]:feq.h t6, ft11, ft10<br> [0x80000934]:csrrs a7, fflags, zero<br> [0x80000938]:sh t6, 630(a5)<br>   |
|  86|[0x80005ed4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80000948]:feq.h t6, ft11, ft10<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:sh t6, 640(a5)<br>   |
|  87|[0x80005ede]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000960]:feq.h t6, ft11, ft10<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:sh t6, 650(a5)<br>   |
|  88|[0x80005ee8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000978]:feq.h t6, ft11, ft10<br> [0x8000097c]:csrrs a7, fflags, zero<br> [0x80000980]:sh t6, 660(a5)<br>   |
|  89|[0x80005ef2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000990]:feq.h t6, ft11, ft10<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:sh t6, 670(a5)<br>   |
|  90|[0x80005efc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800009a8]:feq.h t6, ft11, ft10<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:sh t6, 680(a5)<br>   |
|  91|[0x80005f06]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800009c0]:feq.h t6, ft11, ft10<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:sh t6, 690(a5)<br>   |
|  92|[0x80005f10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800009d8]:feq.h t6, ft11, ft10<br> [0x800009dc]:csrrs a7, fflags, zero<br> [0x800009e0]:sh t6, 700(a5)<br>   |
|  93|[0x80005f1a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800009f0]:feq.h t6, ft11, ft10<br> [0x800009f4]:csrrs a7, fflags, zero<br> [0x800009f8]:sh t6, 710(a5)<br>   |
|  94|[0x80005f24]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a08]:feq.h t6, ft11, ft10<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:sh t6, 720(a5)<br>   |
|  95|[0x80005f2e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a20]:feq.h t6, ft11, ft10<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:sh t6, 730(a5)<br>   |
|  96|[0x80005f38]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a38]:feq.h t6, ft11, ft10<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:sh t6, 740(a5)<br>   |
|  97|[0x80005f42]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a50]:feq.h t6, ft11, ft10<br> [0x80000a54]:csrrs a7, fflags, zero<br> [0x80000a58]:sh t6, 750(a5)<br>   |
|  98|[0x80005f4c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a68]:feq.h t6, ft11, ft10<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:sh t6, 760(a5)<br>   |
|  99|[0x80005f56]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a80]:feq.h t6, ft11, ft10<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:sh t6, 770(a5)<br>   |
| 100|[0x80005f60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80000a98]:feq.h t6, ft11, ft10<br> [0x80000a9c]:csrrs a7, fflags, zero<br> [0x80000aa0]:sh t6, 780(a5)<br>   |
| 101|[0x80005f6a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ab0]:feq.h t6, ft11, ft10<br> [0x80000ab4]:csrrs a7, fflags, zero<br> [0x80000ab8]:sh t6, 790(a5)<br>   |
| 102|[0x80005f74]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ac8]:feq.h t6, ft11, ft10<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:sh t6, 800(a5)<br>   |
| 103|[0x80005f7e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ae0]:feq.h t6, ft11, ft10<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:sh t6, 810(a5)<br>   |
| 104|[0x80005f88]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000af8]:feq.h t6, ft11, ft10<br> [0x80000afc]:csrrs a7, fflags, zero<br> [0x80000b00]:sh t6, 820(a5)<br>   |
| 105|[0x80005f92]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000b10]:feq.h t6, ft11, ft10<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:sh t6, 830(a5)<br>   |
| 106|[0x80005f9c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000b28]:feq.h t6, ft11, ft10<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:sh t6, 840(a5)<br>   |
| 107|[0x80005fa6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000b40]:feq.h t6, ft11, ft10<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:sh t6, 850(a5)<br>   |
| 108|[0x80005fb0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000b58]:feq.h t6, ft11, ft10<br> [0x80000b5c]:csrrs a7, fflags, zero<br> [0x80000b60]:sh t6, 860(a5)<br>   |
| 109|[0x80005fba]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000b70]:feq.h t6, ft11, ft10<br> [0x80000b74]:csrrs a7, fflags, zero<br> [0x80000b78]:sh t6, 870(a5)<br>   |
| 110|[0x80005fc4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80000b88]:feq.h t6, ft11, ft10<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:sh t6, 880(a5)<br>   |
| 111|[0x80005fce]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ba0]:feq.h t6, ft11, ft10<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:sh t6, 890(a5)<br>   |
| 112|[0x80005fd8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000bb8]:feq.h t6, ft11, ft10<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:sh t6, 900(a5)<br>   |
| 113|[0x80005fe2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000bd0]:feq.h t6, ft11, ft10<br> [0x80000bd4]:csrrs a7, fflags, zero<br> [0x80000bd8]:sh t6, 910(a5)<br>   |
| 114|[0x80005fec]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000be8]:feq.h t6, ft11, ft10<br> [0x80000bec]:csrrs a7, fflags, zero<br> [0x80000bf0]:sh t6, 920(a5)<br>   |
| 115|[0x80005ff6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000c00]:feq.h t6, ft11, ft10<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:sh t6, 930(a5)<br>   |
| 116|[0x80006000]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80000c18]:feq.h t6, ft11, ft10<br> [0x80000c1c]:csrrs a7, fflags, zero<br> [0x80000c20]:sh t6, 940(a5)<br>   |
| 117|[0x8000600a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80000c30]:feq.h t6, ft11, ft10<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:sh t6, 950(a5)<br>   |
| 118|[0x80006014]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000c48]:feq.h t6, ft11, ft10<br> [0x80000c4c]:csrrs a7, fflags, zero<br> [0x80000c50]:sh t6, 960(a5)<br>   |
| 119|[0x8000601e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000c60]:feq.h t6, ft11, ft10<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:sh t6, 970(a5)<br>   |
| 120|[0x80006028]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000c78]:feq.h t6, ft11, ft10<br> [0x80000c7c]:csrrs a7, fflags, zero<br> [0x80000c80]:sh t6, 980(a5)<br>   |
| 121|[0x80006032]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000c90]:feq.h t6, ft11, ft10<br> [0x80000c94]:csrrs a7, fflags, zero<br> [0x80000c98]:sh t6, 990(a5)<br>   |
| 122|[0x8000603c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ca8]:feq.h t6, ft11, ft10<br> [0x80000cac]:csrrs a7, fflags, zero<br> [0x80000cb0]:sh t6, 1000(a5)<br>  |
| 123|[0x80006046]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000cc0]:feq.h t6, ft11, ft10<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:sh t6, 1010(a5)<br>  |
| 124|[0x80006050]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80000cd8]:feq.h t6, ft11, ft10<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:sh t6, 1020(a5)<br>  |
| 125|[0x8000605a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000cf0]:feq.h t6, ft11, ft10<br> [0x80000cf4]:csrrs a7, fflags, zero<br> [0x80000cf8]:sh t6, 1030(a5)<br>  |
| 126|[0x80006064]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d08]:feq.h t6, ft11, ft10<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:sh t6, 1040(a5)<br>  |
| 127|[0x8000606e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d20]:feq.h t6, ft11, ft10<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:sh t6, 1050(a5)<br>  |
| 128|[0x80006078]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d38]:feq.h t6, ft11, ft10<br> [0x80000d3c]:csrrs a7, fflags, zero<br> [0x80000d40]:sh t6, 1060(a5)<br>  |
| 129|[0x80006082]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d50]:feq.h t6, ft11, ft10<br> [0x80000d54]:csrrs a7, fflags, zero<br> [0x80000d58]:sh t6, 1070(a5)<br>  |
| 130|[0x8000608c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d68]:feq.h t6, ft11, ft10<br> [0x80000d6c]:csrrs a7, fflags, zero<br> [0x80000d70]:sh t6, 1080(a5)<br>  |
| 131|[0x80006096]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000d80]:feq.h t6, ft11, ft10<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:sh t6, 1090(a5)<br>  |
| 132|[0x800060a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000d98]:feq.h t6, ft11, ft10<br> [0x80000d9c]:csrrs a7, fflags, zero<br> [0x80000da0]:sh t6, 1100(a5)<br>  |
| 133|[0x800060aa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000db0]:feq.h t6, ft11, ft10<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:sh t6, 1110(a5)<br>  |
| 134|[0x800060b4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80000dc8]:feq.h t6, ft11, ft10<br> [0x80000dcc]:csrrs a7, fflags, zero<br> [0x80000dd0]:sh t6, 1120(a5)<br>  |
| 135|[0x800060be]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000de0]:feq.h t6, ft11, ft10<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:sh t6, 1130(a5)<br>  |
| 136|[0x800060c8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000df8]:feq.h t6, ft11, ft10<br> [0x80000dfc]:csrrs a7, fflags, zero<br> [0x80000e00]:sh t6, 1140(a5)<br>  |
| 137|[0x800060d2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000e10]:feq.h t6, ft11, ft10<br> [0x80000e14]:csrrs a7, fflags, zero<br> [0x80000e18]:sh t6, 1150(a5)<br>  |
| 138|[0x800060dc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000e28]:feq.h t6, ft11, ft10<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:sh t6, 1160(a5)<br>  |
| 139|[0x800060e6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000e40]:feq.h t6, ft11, ft10<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:sh t6, 1170(a5)<br>  |
| 140|[0x800060f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80000e58]:feq.h t6, ft11, ft10<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:sh t6, 1180(a5)<br>  |
| 141|[0x800060fa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80000e70]:feq.h t6, ft11, ft10<br> [0x80000e74]:csrrs a7, fflags, zero<br> [0x80000e78]:sh t6, 1190(a5)<br>  |
| 142|[0x80006104]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000e88]:feq.h t6, ft11, ft10<br> [0x80000e8c]:csrrs a7, fflags, zero<br> [0x80000e90]:sh t6, 1200(a5)<br>  |
| 143|[0x8000610e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ea0]:feq.h t6, ft11, ft10<br> [0x80000ea4]:csrrs a7, fflags, zero<br> [0x80000ea8]:sh t6, 1210(a5)<br>  |
| 144|[0x80006118]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000eb8]:feq.h t6, ft11, ft10<br> [0x80000ebc]:csrrs a7, fflags, zero<br> [0x80000ec0]:sh t6, 1220(a5)<br>  |
| 145|[0x80006122]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ed0]:feq.h t6, ft11, ft10<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:sh t6, 1230(a5)<br>  |
| 146|[0x8000612c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000ee8]:feq.h t6, ft11, ft10<br> [0x80000eec]:csrrs a7, fflags, zero<br> [0x80000ef0]:sh t6, 1240(a5)<br>  |
| 147|[0x80006136]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f00]:feq.h t6, ft11, ft10<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:sh t6, 1250(a5)<br>  |
| 148|[0x80006140]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f18]:feq.h t6, ft11, ft10<br> [0x80000f1c]:csrrs a7, fflags, zero<br> [0x80000f20]:sh t6, 1260(a5)<br>  |
| 149|[0x8000614a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f30]:feq.h t6, ft11, ft10<br> [0x80000f34]:csrrs a7, fflags, zero<br> [0x80000f38]:sh t6, 1270(a5)<br>  |
| 150|[0x80006154]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f48]:feq.h t6, ft11, ft10<br> [0x80000f4c]:csrrs a7, fflags, zero<br> [0x80000f50]:sh t6, 1280(a5)<br>  |
| 151|[0x8000615e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f60]:feq.h t6, ft11, ft10<br> [0x80000f64]:csrrs a7, fflags, zero<br> [0x80000f68]:sh t6, 1290(a5)<br>  |
| 152|[0x80006168]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f78]:feq.h t6, ft11, ft10<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:sh t6, 1300(a5)<br>  |
| 153|[0x80006172]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80000f90]:feq.h t6, ft11, ft10<br> [0x80000f94]:csrrs a7, fflags, zero<br> [0x80000f98]:sh t6, 1310(a5)<br>  |
| 154|[0x8000617c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000fa8]:feq.h t6, ft11, ft10<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:sh t6, 1320(a5)<br>  |
| 155|[0x80006186]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80000fc0]:feq.h t6, ft11, ft10<br> [0x80000fc4]:csrrs a7, fflags, zero<br> [0x80000fc8]:sh t6, 1330(a5)<br>  |
| 156|[0x80006190]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000fd8]:feq.h t6, ft11, ft10<br> [0x80000fdc]:csrrs a7, fflags, zero<br> [0x80000fe0]:sh t6, 1340(a5)<br>  |
| 157|[0x8000619a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80000ff0]:feq.h t6, ft11, ft10<br> [0x80000ff4]:csrrs a7, fflags, zero<br> [0x80000ff8]:sh t6, 1350(a5)<br>  |
| 158|[0x800061a4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001008]:feq.h t6, ft11, ft10<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:sh t6, 1360(a5)<br>  |
| 159|[0x800061ae]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001020]:feq.h t6, ft11, ft10<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:sh t6, 1370(a5)<br>  |
| 160|[0x800061b8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001038]:feq.h t6, ft11, ft10<br> [0x8000103c]:csrrs a7, fflags, zero<br> [0x80001040]:sh t6, 1380(a5)<br>  |
| 161|[0x800061c2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001050]:feq.h t6, ft11, ft10<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:sh t6, 1390(a5)<br>  |
| 162|[0x800061cc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001068]:feq.h t6, ft11, ft10<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:sh t6, 1400(a5)<br>  |
| 163|[0x800061d6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001080]:feq.h t6, ft11, ft10<br> [0x80001084]:csrrs a7, fflags, zero<br> [0x80001088]:sh t6, 1410(a5)<br>  |
| 164|[0x800061e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80001098]:feq.h t6, ft11, ft10<br> [0x8000109c]:csrrs a7, fflags, zero<br> [0x800010a0]:sh t6, 1420(a5)<br>  |
| 165|[0x800061ea]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800010b0]:feq.h t6, ft11, ft10<br> [0x800010b4]:csrrs a7, fflags, zero<br> [0x800010b8]:sh t6, 1430(a5)<br>  |
| 166|[0x800061f4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800010c8]:feq.h t6, ft11, ft10<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:sh t6, 1440(a5)<br>  |
| 167|[0x800061fe]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800010e0]:feq.h t6, ft11, ft10<br> [0x800010e4]:csrrs a7, fflags, zero<br> [0x800010e8]:sh t6, 1450(a5)<br>  |
| 168|[0x80006208]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800010f8]:feq.h t6, ft11, ft10<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:sh t6, 1460(a5)<br>  |
| 169|[0x80006212]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001110]:feq.h t6, ft11, ft10<br> [0x80001114]:csrrs a7, fflags, zero<br> [0x80001118]:sh t6, 1470(a5)<br>  |
| 170|[0x8000621c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001128]:feq.h t6, ft11, ft10<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:sh t6, 1480(a5)<br>  |
| 171|[0x80006226]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001140]:feq.h t6, ft11, ft10<br> [0x80001144]:csrrs a7, fflags, zero<br> [0x80001148]:sh t6, 1490(a5)<br>  |
| 172|[0x80006230]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001158]:feq.h t6, ft11, ft10<br> [0x8000115c]:csrrs a7, fflags, zero<br> [0x80001160]:sh t6, 1500(a5)<br>  |
| 173|[0x8000623a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001170]:feq.h t6, ft11, ft10<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:sh t6, 1510(a5)<br>  |
| 174|[0x80006244]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001188]:feq.h t6, ft11, ft10<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:sh t6, 1520(a5)<br>  |
| 175|[0x8000624e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800011a0]:feq.h t6, ft11, ft10<br> [0x800011a4]:csrrs a7, fflags, zero<br> [0x800011a8]:sh t6, 1530(a5)<br>  |
| 176|[0x80006258]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800011b8]:feq.h t6, ft11, ft10<br> [0x800011bc]:csrrs a7, fflags, zero<br> [0x800011c0]:sh t6, 1540(a5)<br>  |
| 177|[0x80006262]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800011d0]:feq.h t6, ft11, ft10<br> [0x800011d4]:csrrs a7, fflags, zero<br> [0x800011d8]:sh t6, 1550(a5)<br>  |
| 178|[0x8000626c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800011e8]:feq.h t6, ft11, ft10<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:sh t6, 1560(a5)<br>  |
| 179|[0x80006276]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001200]:feq.h t6, ft11, ft10<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:sh t6, 1570(a5)<br>  |
| 180|[0x80006280]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001218]:feq.h t6, ft11, ft10<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:sh t6, 1580(a5)<br>  |
| 181|[0x8000628a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001230]:feq.h t6, ft11, ft10<br> [0x80001234]:csrrs a7, fflags, zero<br> [0x80001238]:sh t6, 1590(a5)<br>  |
| 182|[0x80006294]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001248]:feq.h t6, ft11, ft10<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:sh t6, 1600(a5)<br>  |
| 183|[0x8000629e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001260]:feq.h t6, ft11, ft10<br> [0x80001264]:csrrs a7, fflags, zero<br> [0x80001268]:sh t6, 1610(a5)<br>  |
| 184|[0x800062a8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001278]:feq.h t6, ft11, ft10<br> [0x8000127c]:csrrs a7, fflags, zero<br> [0x80001280]:sh t6, 1620(a5)<br>  |
| 185|[0x800062b2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001290]:feq.h t6, ft11, ft10<br> [0x80001294]:csrrs a7, fflags, zero<br> [0x80001298]:sh t6, 1630(a5)<br>  |
| 186|[0x800062bc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800012a8]:feq.h t6, ft11, ft10<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:sh t6, 1640(a5)<br>  |
| 187|[0x800062c6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800012c0]:feq.h t6, ft11, ft10<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:sh t6, 1650(a5)<br>  |
| 188|[0x800062d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800012d8]:feq.h t6, ft11, ft10<br> [0x800012dc]:csrrs a7, fflags, zero<br> [0x800012e0]:sh t6, 1660(a5)<br>  |
| 189|[0x800062da]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800012f0]:feq.h t6, ft11, ft10<br> [0x800012f4]:csrrs a7, fflags, zero<br> [0x800012f8]:sh t6, 1670(a5)<br>  |
| 190|[0x800062e4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001308]:feq.h t6, ft11, ft10<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:sh t6, 1680(a5)<br>  |
| 191|[0x800062ee]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001320]:feq.h t6, ft11, ft10<br> [0x80001324]:csrrs a7, fflags, zero<br> [0x80001328]:sh t6, 1690(a5)<br>  |
| 192|[0x800062f8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001338]:feq.h t6, ft11, ft10<br> [0x8000133c]:csrrs a7, fflags, zero<br> [0x80001340]:sh t6, 1700(a5)<br>  |
| 193|[0x80006302]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001350]:feq.h t6, ft11, ft10<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:sh t6, 1710(a5)<br>  |
| 194|[0x8000630c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001368]:feq.h t6, ft11, ft10<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:sh t6, 1720(a5)<br>  |
| 195|[0x80006316]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001380]:feq.h t6, ft11, ft10<br> [0x80001384]:csrrs a7, fflags, zero<br> [0x80001388]:sh t6, 1730(a5)<br>  |
| 196|[0x80006320]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001398]:feq.h t6, ft11, ft10<br> [0x8000139c]:csrrs a7, fflags, zero<br> [0x800013a0]:sh t6, 1740(a5)<br>  |
| 197|[0x8000632a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800013b0]:feq.h t6, ft11, ft10<br> [0x800013b4]:csrrs a7, fflags, zero<br> [0x800013b8]:sh t6, 1750(a5)<br>  |
| 198|[0x80006334]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x800013c8]:feq.h t6, ft11, ft10<br> [0x800013cc]:csrrs a7, fflags, zero<br> [0x800013d0]:sh t6, 1760(a5)<br>  |
| 199|[0x8000633e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800013e0]:feq.h t6, ft11, ft10<br> [0x800013e4]:csrrs a7, fflags, zero<br> [0x800013e8]:sh t6, 1770(a5)<br>  |
| 200|[0x80006348]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800013f8]:feq.h t6, ft11, ft10<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:sh t6, 1780(a5)<br>  |
| 201|[0x80006352]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001410]:feq.h t6, ft11, ft10<br> [0x80001414]:csrrs a7, fflags, zero<br> [0x80001418]:sh t6, 1790(a5)<br>  |
| 202|[0x8000635c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001428]:feq.h t6, ft11, ft10<br> [0x8000142c]:csrrs a7, fflags, zero<br> [0x80001430]:sh t6, 1800(a5)<br>  |
| 203|[0x80006366]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001440]:feq.h t6, ft11, ft10<br> [0x80001444]:csrrs a7, fflags, zero<br> [0x80001448]:sh t6, 1810(a5)<br>  |
| 204|[0x80006370]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001458]:feq.h t6, ft11, ft10<br> [0x8000145c]:csrrs a7, fflags, zero<br> [0x80001460]:sh t6, 1820(a5)<br>  |
| 205|[0x8000637a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001470]:feq.h t6, ft11, ft10<br> [0x80001474]:csrrs a7, fflags, zero<br> [0x80001478]:sh t6, 1830(a5)<br>  |
| 206|[0x80006384]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001488]:feq.h t6, ft11, ft10<br> [0x8000148c]:csrrs a7, fflags, zero<br> [0x80001490]:sh t6, 1840(a5)<br>  |
| 207|[0x8000638e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800014a0]:feq.h t6, ft11, ft10<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:sh t6, 1850(a5)<br>  |
| 208|[0x80006398]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800014b8]:feq.h t6, ft11, ft10<br> [0x800014bc]:csrrs a7, fflags, zero<br> [0x800014c0]:sh t6, 1860(a5)<br>  |
| 209|[0x800063a2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800014d0]:feq.h t6, ft11, ft10<br> [0x800014d4]:csrrs a7, fflags, zero<br> [0x800014d8]:sh t6, 1870(a5)<br>  |
| 210|[0x800063ac]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800014e8]:feq.h t6, ft11, ft10<br> [0x800014ec]:csrrs a7, fflags, zero<br> [0x800014f0]:sh t6, 1880(a5)<br>  |
| 211|[0x800063b6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001500]:feq.h t6, ft11, ft10<br> [0x80001504]:csrrs a7, fflags, zero<br> [0x80001508]:sh t6, 1890(a5)<br>  |
| 212|[0x800063c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80001518]:feq.h t6, ft11, ft10<br> [0x8000151c]:csrrs a7, fflags, zero<br> [0x80001520]:sh t6, 1900(a5)<br>  |
| 213|[0x800063ca]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80001530]:feq.h t6, ft11, ft10<br> [0x80001534]:csrrs a7, fflags, zero<br> [0x80001538]:sh t6, 1910(a5)<br>  |
| 214|[0x800063d4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001548]:feq.h t6, ft11, ft10<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:sh t6, 1920(a5)<br>  |
| 215|[0x800063de]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001560]:feq.h t6, ft11, ft10<br> [0x80001564]:csrrs a7, fflags, zero<br> [0x80001568]:sh t6, 1930(a5)<br>  |
| 216|[0x800063e8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001578]:feq.h t6, ft11, ft10<br> [0x8000157c]:csrrs a7, fflags, zero<br> [0x80001580]:sh t6, 1940(a5)<br>  |
| 217|[0x800063f2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001590]:feq.h t6, ft11, ft10<br> [0x80001594]:csrrs a7, fflags, zero<br> [0x80001598]:sh t6, 1950(a5)<br>  |
| 218|[0x800063fc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800015a8]:feq.h t6, ft11, ft10<br> [0x800015ac]:csrrs a7, fflags, zero<br> [0x800015b0]:sh t6, 1960(a5)<br>  |
| 219|[0x80006406]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800015c0]:feq.h t6, ft11, ft10<br> [0x800015c4]:csrrs a7, fflags, zero<br> [0x800015c8]:sh t6, 1970(a5)<br>  |
| 220|[0x80006410]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x800015d8]:feq.h t6, ft11, ft10<br> [0x800015dc]:csrrs a7, fflags, zero<br> [0x800015e0]:sh t6, 1980(a5)<br>  |
| 221|[0x8000641a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800015f0]:feq.h t6, ft11, ft10<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:sh t6, 1990(a5)<br>  |
| 222|[0x80006424]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001608]:feq.h t6, ft11, ft10<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:sh t6, 2000(a5)<br>  |
| 223|[0x8000642e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80001620]:feq.h t6, ft11, ft10<br> [0x80001624]:csrrs a7, fflags, zero<br> [0x80001628]:sh t6, 2010(a5)<br>  |
| 224|[0x80006438]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001638]:feq.h t6, ft11, ft10<br> [0x8000163c]:csrrs a7, fflags, zero<br> [0x80001640]:sh t6, 2020(a5)<br>  |
| 225|[0x80006904]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001658]:feq.h t6, ft11, ft10<br> [0x8000165c]:csrrs a7, fflags, zero<br> [0x80001660]:sh t6, 0(a5)<br>     |
| 226|[0x8000690e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001670]:feq.h t6, ft11, ft10<br> [0x80001674]:csrrs a7, fflags, zero<br> [0x80001678]:sh t6, 10(a5)<br>    |
| 227|[0x80006918]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001688]:feq.h t6, ft11, ft10<br> [0x8000168c]:csrrs a7, fflags, zero<br> [0x80001690]:sh t6, 20(a5)<br>    |
| 228|[0x80006922]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800016a0]:feq.h t6, ft11, ft10<br> [0x800016a4]:csrrs a7, fflags, zero<br> [0x800016a8]:sh t6, 30(a5)<br>    |
| 229|[0x8000692c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800016b8]:feq.h t6, ft11, ft10<br> [0x800016bc]:csrrs a7, fflags, zero<br> [0x800016c0]:sh t6, 40(a5)<br>    |
| 230|[0x80006936]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x800016d0]:feq.h t6, ft11, ft10<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:sh t6, 50(a5)<br>    |
| 231|[0x80006940]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800016e8]:feq.h t6, ft11, ft10<br> [0x800016ec]:csrrs a7, fflags, zero<br> [0x800016f0]:sh t6, 60(a5)<br>    |
| 232|[0x8000694a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001700]:feq.h t6, ft11, ft10<br> [0x80001704]:csrrs a7, fflags, zero<br> [0x80001708]:sh t6, 70(a5)<br>    |
| 233|[0x80006954]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001718]:feq.h t6, ft11, ft10<br> [0x8000171c]:csrrs a7, fflags, zero<br> [0x80001720]:sh t6, 80(a5)<br>    |
| 234|[0x8000695e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001730]:feq.h t6, ft11, ft10<br> [0x80001734]:csrrs a7, fflags, zero<br> [0x80001738]:sh t6, 90(a5)<br>    |
| 235|[0x80006968]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001748]:feq.h t6, ft11, ft10<br> [0x8000174c]:csrrs a7, fflags, zero<br> [0x80001750]:sh t6, 100(a5)<br>   |
| 236|[0x80006972]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80001760]:feq.h t6, ft11, ft10<br> [0x80001764]:csrrs a7, fflags, zero<br> [0x80001768]:sh t6, 110(a5)<br>   |
| 237|[0x8000697c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80001778]:feq.h t6, ft11, ft10<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:sh t6, 120(a5)<br>   |
| 238|[0x80006986]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001790]:feq.h t6, ft11, ft10<br> [0x80001794]:csrrs a7, fflags, zero<br> [0x80001798]:sh t6, 130(a5)<br>   |
| 239|[0x80006990]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800017a8]:feq.h t6, ft11, ft10<br> [0x800017ac]:csrrs a7, fflags, zero<br> [0x800017b0]:sh t6, 140(a5)<br>   |
| 240|[0x8000699a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800017c0]:feq.h t6, ft11, ft10<br> [0x800017c4]:csrrs a7, fflags, zero<br> [0x800017c8]:sh t6, 150(a5)<br>   |
| 241|[0x800069a4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800017d8]:feq.h t6, ft11, ft10<br> [0x800017dc]:csrrs a7, fflags, zero<br> [0x800017e0]:sh t6, 160(a5)<br>   |
| 242|[0x800069ae]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800017f0]:feq.h t6, ft11, ft10<br> [0x800017f4]:csrrs a7, fflags, zero<br> [0x800017f8]:sh t6, 170(a5)<br>   |
| 243|[0x800069b8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001808]:feq.h t6, ft11, ft10<br> [0x8000180c]:csrrs a7, fflags, zero<br> [0x80001810]:sh t6, 180(a5)<br>   |
| 244|[0x800069c2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001820]:feq.h t6, ft11, ft10<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:sh t6, 190(a5)<br>   |
| 245|[0x800069cc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001838]:feq.h t6, ft11, ft10<br> [0x8000183c]:csrrs a7, fflags, zero<br> [0x80001840]:sh t6, 200(a5)<br>   |
| 246|[0x800069d6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001850]:feq.h t6, ft11, ft10<br> [0x80001854]:csrrs a7, fflags, zero<br> [0x80001858]:sh t6, 210(a5)<br>   |
| 247|[0x800069e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80001868]:feq.h t6, ft11, ft10<br> [0x8000186c]:csrrs a7, fflags, zero<br> [0x80001870]:sh t6, 220(a5)<br>   |
| 248|[0x800069ea]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001880]:feq.h t6, ft11, ft10<br> [0x80001884]:csrrs a7, fflags, zero<br> [0x80001888]:sh t6, 230(a5)<br>   |
| 249|[0x800069f4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001898]:feq.h t6, ft11, ft10<br> [0x8000189c]:csrrs a7, fflags, zero<br> [0x800018a0]:sh t6, 240(a5)<br>   |
| 250|[0x800069fe]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800018b0]:feq.h t6, ft11, ft10<br> [0x800018b4]:csrrs a7, fflags, zero<br> [0x800018b8]:sh t6, 250(a5)<br>   |
| 251|[0x80006a08]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800018c8]:feq.h t6, ft11, ft10<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:sh t6, 260(a5)<br>   |
| 252|[0x80006a12]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800018e0]:feq.h t6, ft11, ft10<br> [0x800018e4]:csrrs a7, fflags, zero<br> [0x800018e8]:sh t6, 270(a5)<br>   |
| 253|[0x80006a1c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800018f8]:feq.h t6, ft11, ft10<br> [0x800018fc]:csrrs a7, fflags, zero<br> [0x80001900]:sh t6, 280(a5)<br>   |
| 254|[0x80006a26]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001910]:feq.h t6, ft11, ft10<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:sh t6, 290(a5)<br>   |
| 255|[0x80006a30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001928]:feq.h t6, ft11, ft10<br> [0x8000192c]:csrrs a7, fflags, zero<br> [0x80001930]:sh t6, 300(a5)<br>   |
| 256|[0x80006a3a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001940]:feq.h t6, ft11, ft10<br> [0x80001944]:csrrs a7, fflags, zero<br> [0x80001948]:sh t6, 310(a5)<br>   |
| 257|[0x80006a44]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001958]:feq.h t6, ft11, ft10<br> [0x8000195c]:csrrs a7, fflags, zero<br> [0x80001960]:sh t6, 320(a5)<br>   |
| 258|[0x80006a4e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001970]:feq.h t6, ft11, ft10<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:sh t6, 330(a5)<br>   |
| 259|[0x80006a58]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001988]:feq.h t6, ft11, ft10<br> [0x8000198c]:csrrs a7, fflags, zero<br> [0x80001990]:sh t6, 340(a5)<br>   |
| 260|[0x80006a62]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800019a0]:feq.h t6, ft11, ft10<br> [0x800019a4]:csrrs a7, fflags, zero<br> [0x800019a8]:sh t6, 350(a5)<br>   |
| 261|[0x80006a6c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800019b8]:feq.h t6, ft11, ft10<br> [0x800019bc]:csrrs a7, fflags, zero<br> [0x800019c0]:sh t6, 360(a5)<br>   |
| 262|[0x80006a76]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800019d0]:feq.h t6, ft11, ft10<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:sh t6, 370(a5)<br>   |
| 263|[0x80006a80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800019e8]:feq.h t6, ft11, ft10<br> [0x800019ec]:csrrs a7, fflags, zero<br> [0x800019f0]:sh t6, 380(a5)<br>   |
| 264|[0x80006a8a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a00]:feq.h t6, ft11, ft10<br> [0x80001a04]:csrrs a7, fflags, zero<br> [0x80001a08]:sh t6, 390(a5)<br>   |
| 265|[0x80006a94]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a18]:feq.h t6, ft11, ft10<br> [0x80001a1c]:csrrs a7, fflags, zero<br> [0x80001a20]:sh t6, 400(a5)<br>   |
| 266|[0x80006a9e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a30]:feq.h t6, ft11, ft10<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:sh t6, 410(a5)<br>   |
| 267|[0x80006aa8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a48]:feq.h t6, ft11, ft10<br> [0x80001a4c]:csrrs a7, fflags, zero<br> [0x80001a50]:sh t6, 420(a5)<br>   |
| 268|[0x80006ab2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a60]:feq.h t6, ft11, ft10<br> [0x80001a64]:csrrs a7, fflags, zero<br> [0x80001a68]:sh t6, 430(a5)<br>   |
| 269|[0x80006abc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a78]:feq.h t6, ft11, ft10<br> [0x80001a7c]:csrrs a7, fflags, zero<br> [0x80001a80]:sh t6, 440(a5)<br>   |
| 270|[0x80006ac6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001a90]:feq.h t6, ft11, ft10<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:sh t6, 450(a5)<br>   |
| 271|[0x80006ad0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80001aa8]:feq.h t6, ft11, ft10<br> [0x80001aac]:csrrs a7, fflags, zero<br> [0x80001ab0]:sh t6, 460(a5)<br>   |
| 272|[0x80006ada]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ac0]:feq.h t6, ft11, ft10<br> [0x80001ac4]:csrrs a7, fflags, zero<br> [0x80001ac8]:sh t6, 470(a5)<br>   |
| 273|[0x80006ae4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ad8]:feq.h t6, ft11, ft10<br> [0x80001adc]:csrrs a7, fflags, zero<br> [0x80001ae0]:sh t6, 480(a5)<br>   |
| 274|[0x80006aee]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001af0]:feq.h t6, ft11, ft10<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:sh t6, 490(a5)<br>   |
| 275|[0x80006af8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001b08]:feq.h t6, ft11, ft10<br> [0x80001b0c]:csrrs a7, fflags, zero<br> [0x80001b10]:sh t6, 500(a5)<br>   |
| 276|[0x80006b02]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001b20]:feq.h t6, ft11, ft10<br> [0x80001b24]:csrrs a7, fflags, zero<br> [0x80001b28]:sh t6, 510(a5)<br>   |
| 277|[0x80006b0c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001b38]:feq.h t6, ft11, ft10<br> [0x80001b3c]:csrrs a7, fflags, zero<br> [0x80001b40]:sh t6, 520(a5)<br>   |
| 278|[0x80006b16]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001b50]:feq.h t6, ft11, ft10<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:sh t6, 530(a5)<br>   |
| 279|[0x80006b20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001b68]:feq.h t6, ft11, ft10<br> [0x80001b6c]:csrrs a7, fflags, zero<br> [0x80001b70]:sh t6, 540(a5)<br>   |
| 280|[0x80006b2a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001b80]:feq.h t6, ft11, ft10<br> [0x80001b84]:csrrs a7, fflags, zero<br> [0x80001b88]:sh t6, 550(a5)<br>   |
| 281|[0x80006b34]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001b98]:feq.h t6, ft11, ft10<br> [0x80001b9c]:csrrs a7, fflags, zero<br> [0x80001ba0]:sh t6, 560(a5)<br>   |
| 282|[0x80006b3e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001bb0]:feq.h t6, ft11, ft10<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:sh t6, 570(a5)<br>   |
| 283|[0x80006b48]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001bc8]:feq.h t6, ft11, ft10<br> [0x80001bcc]:csrrs a7, fflags, zero<br> [0x80001bd0]:sh t6, 580(a5)<br>   |
| 284|[0x80006b52]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80001be0]:feq.h t6, ft11, ft10<br> [0x80001be4]:csrrs a7, fflags, zero<br> [0x80001be8]:sh t6, 590(a5)<br>   |
| 285|[0x80006b5c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80001bf8]:feq.h t6, ft11, ft10<br> [0x80001bfc]:csrrs a7, fflags, zero<br> [0x80001c00]:sh t6, 600(a5)<br>   |
| 286|[0x80006b66]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c10]:feq.h t6, ft11, ft10<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:sh t6, 610(a5)<br>   |
| 287|[0x80006b70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c28]:feq.h t6, ft11, ft10<br> [0x80001c2c]:csrrs a7, fflags, zero<br> [0x80001c30]:sh t6, 620(a5)<br>   |
| 288|[0x80006b7a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c40]:feq.h t6, ft11, ft10<br> [0x80001c44]:csrrs a7, fflags, zero<br> [0x80001c48]:sh t6, 630(a5)<br>   |
| 289|[0x80006b84]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c58]:feq.h t6, ft11, ft10<br> [0x80001c5c]:csrrs a7, fflags, zero<br> [0x80001c60]:sh t6, 640(a5)<br>   |
| 290|[0x80006b8e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c70]:feq.h t6, ft11, ft10<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:sh t6, 650(a5)<br>   |
| 291|[0x80006b98]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001c88]:feq.h t6, ft11, ft10<br> [0x80001c8c]:csrrs a7, fflags, zero<br> [0x80001c90]:sh t6, 660(a5)<br>   |
| 292|[0x80006ba2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ca0]:feq.h t6, ft11, ft10<br> [0x80001ca4]:csrrs a7, fflags, zero<br> [0x80001ca8]:sh t6, 670(a5)<br>   |
| 293|[0x80006bac]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001cb8]:feq.h t6, ft11, ft10<br> [0x80001cbc]:csrrs a7, fflags, zero<br> [0x80001cc0]:sh t6, 680(a5)<br>   |
| 294|[0x80006bb6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001cd0]:feq.h t6, ft11, ft10<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:sh t6, 690(a5)<br>   |
| 295|[0x80006bc0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ce8]:feq.h t6, ft11, ft10<br> [0x80001cec]:csrrs a7, fflags, zero<br> [0x80001cf0]:sh t6, 700(a5)<br>   |
| 296|[0x80006bca]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001d00]:feq.h t6, ft11, ft10<br> [0x80001d04]:csrrs a7, fflags, zero<br> [0x80001d08]:sh t6, 710(a5)<br>   |
| 297|[0x80006bd4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001d18]:feq.h t6, ft11, ft10<br> [0x80001d1c]:csrrs a7, fflags, zero<br> [0x80001d20]:sh t6, 720(a5)<br>   |
| 298|[0x80006bde]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001d30]:feq.h t6, ft11, ft10<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:sh t6, 730(a5)<br>   |
| 299|[0x80006be8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001d48]:feq.h t6, ft11, ft10<br> [0x80001d4c]:csrrs a7, fflags, zero<br> [0x80001d50]:sh t6, 740(a5)<br>   |
| 300|[0x80006bf2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001d60]:feq.h t6, ft11, ft10<br> [0x80001d64]:csrrs a7, fflags, zero<br> [0x80001d68]:sh t6, 750(a5)<br>   |
| 301|[0x80006bfc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001d78]:feq.h t6, ft11, ft10<br> [0x80001d7c]:csrrs a7, fflags, zero<br> [0x80001d80]:sh t6, 760(a5)<br>   |
| 302|[0x80006c06]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001d90]:feq.h t6, ft11, ft10<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:sh t6, 770(a5)<br>   |
| 303|[0x80006c10]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001da8]:feq.h t6, ft11, ft10<br> [0x80001dac]:csrrs a7, fflags, zero<br> [0x80001db0]:sh t6, 780(a5)<br>   |
| 304|[0x80006c1a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001dc0]:feq.h t6, ft11, ft10<br> [0x80001dc4]:csrrs a7, fflags, zero<br> [0x80001dc8]:sh t6, 790(a5)<br>   |
| 305|[0x80006c24]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001dd8]:feq.h t6, ft11, ft10<br> [0x80001ddc]:csrrs a7, fflags, zero<br> [0x80001de0]:sh t6, 800(a5)<br>   |
| 306|[0x80006c2e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001df0]:feq.h t6, ft11, ft10<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:sh t6, 810(a5)<br>   |
| 307|[0x80006c38]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001e08]:feq.h t6, ft11, ft10<br> [0x80001e0c]:csrrs a7, fflags, zero<br> [0x80001e10]:sh t6, 820(a5)<br>   |
| 308|[0x80006c42]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80001e20]:feq.h t6, ft11, ft10<br> [0x80001e24]:csrrs a7, fflags, zero<br> [0x80001e28]:sh t6, 830(a5)<br>   |
| 309|[0x80006c4c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80001e38]:feq.h t6, ft11, ft10<br> [0x80001e3c]:csrrs a7, fflags, zero<br> [0x80001e40]:sh t6, 840(a5)<br>   |
| 310|[0x80006c56]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001e50]:feq.h t6, ft11, ft10<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:sh t6, 850(a5)<br>   |
| 311|[0x80006c60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001e68]:feq.h t6, ft11, ft10<br> [0x80001e6c]:csrrs a7, fflags, zero<br> [0x80001e70]:sh t6, 860(a5)<br>   |
| 312|[0x80006c6a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001e80]:feq.h t6, ft11, ft10<br> [0x80001e84]:csrrs a7, fflags, zero<br> [0x80001e88]:sh t6, 870(a5)<br>   |
| 313|[0x80006c74]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001e98]:feq.h t6, ft11, ft10<br> [0x80001e9c]:csrrs a7, fflags, zero<br> [0x80001ea0]:sh t6, 880(a5)<br>   |
| 314|[0x80006c7e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001eb0]:feq.h t6, ft11, ft10<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:sh t6, 890(a5)<br>   |
| 315|[0x80006c88]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ec8]:feq.h t6, ft11, ft10<br> [0x80001ecc]:csrrs a7, fflags, zero<br> [0x80001ed0]:sh t6, 900(a5)<br>   |
| 316|[0x80006c92]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ee0]:feq.h t6, ft11, ft10<br> [0x80001ee4]:csrrs a7, fflags, zero<br> [0x80001ee8]:sh t6, 910(a5)<br>   |
| 317|[0x80006c9c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001ef8]:feq.h t6, ft11, ft10<br> [0x80001efc]:csrrs a7, fflags, zero<br> [0x80001f00]:sh t6, 920(a5)<br>   |
| 318|[0x80006ca6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f10]:feq.h t6, ft11, ft10<br> [0x80001f14]:csrrs a7, fflags, zero<br> [0x80001f18]:sh t6, 930(a5)<br>   |
| 319|[0x80006cb0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f28]:feq.h t6, ft11, ft10<br> [0x80001f2c]:csrrs a7, fflags, zero<br> [0x80001f30]:sh t6, 940(a5)<br>   |
| 320|[0x80006cba]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f40]:feq.h t6, ft11, ft10<br> [0x80001f44]:csrrs a7, fflags, zero<br> [0x80001f48]:sh t6, 950(a5)<br>   |
| 321|[0x80006cc4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f58]:feq.h t6, ft11, ft10<br> [0x80001f5c]:csrrs a7, fflags, zero<br> [0x80001f60]:sh t6, 960(a5)<br>   |
| 322|[0x80006cce]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f70]:feq.h t6, ft11, ft10<br> [0x80001f74]:csrrs a7, fflags, zero<br> [0x80001f78]:sh t6, 970(a5)<br>   |
| 323|[0x80006cd8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80001f88]:feq.h t6, ft11, ft10<br> [0x80001f8c]:csrrs a7, fflags, zero<br> [0x80001f90]:sh t6, 980(a5)<br>   |
| 324|[0x80006ce2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001fa0]:feq.h t6, ft11, ft10<br> [0x80001fa4]:csrrs a7, fflags, zero<br> [0x80001fa8]:sh t6, 990(a5)<br>   |
| 325|[0x80006cec]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80001fb8]:feq.h t6, ft11, ft10<br> [0x80001fbc]:csrrs a7, fflags, zero<br> [0x80001fc0]:sh t6, 1000(a5)<br>  |
| 326|[0x80006cf6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80001fd0]:feq.h t6, ft11, ft10<br> [0x80001fd4]:csrrs a7, fflags, zero<br> [0x80001fd8]:sh t6, 1010(a5)<br>  |
| 327|[0x80006d00]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80001fe8]:feq.h t6, ft11, ft10<br> [0x80001fec]:csrrs a7, fflags, zero<br> [0x80001ff0]:sh t6, 1020(a5)<br>  |
| 328|[0x80006d0a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002000]:feq.h t6, ft11, ft10<br> [0x80002004]:csrrs a7, fflags, zero<br> [0x80002008]:sh t6, 1030(a5)<br>  |
| 329|[0x80006d14]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002018]:feq.h t6, ft11, ft10<br> [0x8000201c]:csrrs a7, fflags, zero<br> [0x80002020]:sh t6, 1040(a5)<br>  |
| 330|[0x80006d1e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002030]:feq.h t6, ft11, ft10<br> [0x80002034]:csrrs a7, fflags, zero<br> [0x80002038]:sh t6, 1050(a5)<br>  |
| 331|[0x80006d28]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002048]:feq.h t6, ft11, ft10<br> [0x8000204c]:csrrs a7, fflags, zero<br> [0x80002050]:sh t6, 1060(a5)<br>  |
| 332|[0x80006d32]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80002060]:feq.h t6, ft11, ft10<br> [0x80002064]:csrrs a7, fflags, zero<br> [0x80002068]:sh t6, 1070(a5)<br>  |
| 333|[0x80006d3c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80002078]:feq.h t6, ft11, ft10<br> [0x8000207c]:csrrs a7, fflags, zero<br> [0x80002080]:sh t6, 1080(a5)<br>  |
| 334|[0x80006d46]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002090]:feq.h t6, ft11, ft10<br> [0x80002094]:csrrs a7, fflags, zero<br> [0x80002098]:sh t6, 1090(a5)<br>  |
| 335|[0x80006d50]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800020a8]:feq.h t6, ft11, ft10<br> [0x800020ac]:csrrs a7, fflags, zero<br> [0x800020b0]:sh t6, 1100(a5)<br>  |
| 336|[0x80006d5a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800020c0]:feq.h t6, ft11, ft10<br> [0x800020c4]:csrrs a7, fflags, zero<br> [0x800020c8]:sh t6, 1110(a5)<br>  |
| 337|[0x80006d64]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800020d8]:feq.h t6, ft11, ft10<br> [0x800020dc]:csrrs a7, fflags, zero<br> [0x800020e0]:sh t6, 1120(a5)<br>  |
| 338|[0x80006d6e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800020f0]:feq.h t6, ft11, ft10<br> [0x800020f4]:csrrs a7, fflags, zero<br> [0x800020f8]:sh t6, 1130(a5)<br>  |
| 339|[0x80006d78]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002108]:feq.h t6, ft11, ft10<br> [0x8000210c]:csrrs a7, fflags, zero<br> [0x80002110]:sh t6, 1140(a5)<br>  |
| 340|[0x80006d82]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80002120]:feq.h t6, ft11, ft10<br> [0x80002124]:csrrs a7, fflags, zero<br> [0x80002128]:sh t6, 1150(a5)<br>  |
| 341|[0x80006d8c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002138]:feq.h t6, ft11, ft10<br> [0x8000213c]:csrrs a7, fflags, zero<br> [0x80002140]:sh t6, 1160(a5)<br>  |
| 342|[0x80006d96]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002150]:feq.h t6, ft11, ft10<br> [0x80002154]:csrrs a7, fflags, zero<br> [0x80002158]:sh t6, 1170(a5)<br>  |
| 343|[0x80006da0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80002168]:feq.h t6, ft11, ft10<br> [0x8000216c]:csrrs a7, fflags, zero<br> [0x80002170]:sh t6, 1180(a5)<br>  |
| 344|[0x80006daa]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002180]:feq.h t6, ft11, ft10<br> [0x80002184]:csrrs a7, fflags, zero<br> [0x80002188]:sh t6, 1190(a5)<br>  |
| 345|[0x80006db4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002198]:feq.h t6, ft11, ft10<br> [0x8000219c]:csrrs a7, fflags, zero<br> [0x800021a0]:sh t6, 1200(a5)<br>  |
| 346|[0x80006dbe]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800021b0]:feq.h t6, ft11, ft10<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:sh t6, 1210(a5)<br>  |
| 347|[0x80006dc8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800021c8]:feq.h t6, ft11, ft10<br> [0x800021cc]:csrrs a7, fflags, zero<br> [0x800021d0]:sh t6, 1220(a5)<br>  |
| 348|[0x80006dd2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800021e0]:feq.h t6, ft11, ft10<br> [0x800021e4]:csrrs a7, fflags, zero<br> [0x800021e8]:sh t6, 1230(a5)<br>  |
| 349|[0x80006ddc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800021f8]:feq.h t6, ft11, ft10<br> [0x800021fc]:csrrs a7, fflags, zero<br> [0x80002200]:sh t6, 1240(a5)<br>  |
| 350|[0x80006de6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002210]:feq.h t6, ft11, ft10<br> [0x80002214]:csrrs a7, fflags, zero<br> [0x80002218]:sh t6, 1250(a5)<br>  |
| 351|[0x80006df0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002228]:feq.h t6, ft11, ft10<br> [0x8000222c]:csrrs a7, fflags, zero<br> [0x80002230]:sh t6, 1260(a5)<br>  |
| 352|[0x80006dfa]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002240]:feq.h t6, ft11, ft10<br> [0x80002244]:csrrs a7, fflags, zero<br> [0x80002248]:sh t6, 1270(a5)<br>  |
| 353|[0x80006e04]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002258]:feq.h t6, ft11, ft10<br> [0x8000225c]:csrrs a7, fflags, zero<br> [0x80002260]:sh t6, 1280(a5)<br>  |
| 354|[0x80006e0e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002270]:feq.h t6, ft11, ft10<br> [0x80002274]:csrrs a7, fflags, zero<br> [0x80002278]:sh t6, 1290(a5)<br>  |
| 355|[0x80006e18]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002288]:feq.h t6, ft11, ft10<br> [0x8000228c]:csrrs a7, fflags, zero<br> [0x80002290]:sh t6, 1300(a5)<br>  |
| 356|[0x80006e22]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800022a0]:feq.h t6, ft11, ft10<br> [0x800022a4]:csrrs a7, fflags, zero<br> [0x800022a8]:sh t6, 1310(a5)<br>  |
| 357|[0x80006e2c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800022b8]:feq.h t6, ft11, ft10<br> [0x800022bc]:csrrs a7, fflags, zero<br> [0x800022c0]:sh t6, 1320(a5)<br>  |
| 358|[0x80006e36]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800022d0]:feq.h t6, ft11, ft10<br> [0x800022d4]:csrrs a7, fflags, zero<br> [0x800022d8]:sh t6, 1330(a5)<br>  |
| 359|[0x80006e40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800022e8]:feq.h t6, ft11, ft10<br> [0x800022ec]:csrrs a7, fflags, zero<br> [0x800022f0]:sh t6, 1340(a5)<br>  |
| 360|[0x80006e4a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002300]:feq.h t6, ft11, ft10<br> [0x80002304]:csrrs a7, fflags, zero<br> [0x80002308]:sh t6, 1350(a5)<br>  |
| 361|[0x80006e54]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002318]:feq.h t6, ft11, ft10<br> [0x8000231c]:csrrs a7, fflags, zero<br> [0x80002320]:sh t6, 1360(a5)<br>  |
| 362|[0x80006e5e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002330]:feq.h t6, ft11, ft10<br> [0x80002334]:csrrs a7, fflags, zero<br> [0x80002338]:sh t6, 1370(a5)<br>  |
| 363|[0x80006e68]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002348]:feq.h t6, ft11, ft10<br> [0x8000234c]:csrrs a7, fflags, zero<br> [0x80002350]:sh t6, 1380(a5)<br>  |
| 364|[0x80006e72]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80002360]:feq.h t6, ft11, ft10<br> [0x80002364]:csrrs a7, fflags, zero<br> [0x80002368]:sh t6, 1390(a5)<br>  |
| 365|[0x80006e7c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002378]:feq.h t6, ft11, ft10<br> [0x8000237c]:csrrs a7, fflags, zero<br> [0x80002380]:sh t6, 1400(a5)<br>  |
| 366|[0x80006e86]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002390]:feq.h t6, ft11, ft10<br> [0x80002394]:csrrs a7, fflags, zero<br> [0x80002398]:sh t6, 1410(a5)<br>  |
| 367|[0x80006e90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800023a8]:feq.h t6, ft11, ft10<br> [0x800023ac]:csrrs a7, fflags, zero<br> [0x800023b0]:sh t6, 1420(a5)<br>  |
| 368|[0x80006e9a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800023c0]:feq.h t6, ft11, ft10<br> [0x800023c4]:csrrs a7, fflags, zero<br> [0x800023c8]:sh t6, 1430(a5)<br>  |
| 369|[0x80006ea4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800023d8]:feq.h t6, ft11, ft10<br> [0x800023dc]:csrrs a7, fflags, zero<br> [0x800023e0]:sh t6, 1440(a5)<br>  |
| 370|[0x80006eae]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800023f0]:feq.h t6, ft11, ft10<br> [0x800023f4]:csrrs a7, fflags, zero<br> [0x800023f8]:sh t6, 1450(a5)<br>  |
| 371|[0x80006eb8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002408]:feq.h t6, ft11, ft10<br> [0x8000240c]:csrrs a7, fflags, zero<br> [0x80002410]:sh t6, 1460(a5)<br>  |
| 372|[0x80006ec2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002420]:feq.h t6, ft11, ft10<br> [0x80002424]:csrrs a7, fflags, zero<br> [0x80002428]:sh t6, 1470(a5)<br>  |
| 373|[0x80006ecc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002438]:feq.h t6, ft11, ft10<br> [0x8000243c]:csrrs a7, fflags, zero<br> [0x80002440]:sh t6, 1480(a5)<br>  |
| 374|[0x80006ed6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002450]:feq.h t6, ft11, ft10<br> [0x80002454]:csrrs a7, fflags, zero<br> [0x80002458]:sh t6, 1490(a5)<br>  |
| 375|[0x80006ee0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002468]:feq.h t6, ft11, ft10<br> [0x8000246c]:csrrs a7, fflags, zero<br> [0x80002470]:sh t6, 1500(a5)<br>  |
| 376|[0x80006eea]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002480]:feq.h t6, ft11, ft10<br> [0x80002484]:csrrs a7, fflags, zero<br> [0x80002488]:sh t6, 1510(a5)<br>  |
| 377|[0x80006ef4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002498]:feq.h t6, ft11, ft10<br> [0x8000249c]:csrrs a7, fflags, zero<br> [0x800024a0]:sh t6, 1520(a5)<br>  |
| 378|[0x80006efe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800024b0]:feq.h t6, ft11, ft10<br> [0x800024b4]:csrrs a7, fflags, zero<br> [0x800024b8]:sh t6, 1530(a5)<br>  |
| 379|[0x80006f08]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800024c8]:feq.h t6, ft11, ft10<br> [0x800024cc]:csrrs a7, fflags, zero<br> [0x800024d0]:sh t6, 1540(a5)<br>  |
| 380|[0x80006f12]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800024e0]:feq.h t6, ft11, ft10<br> [0x800024e4]:csrrs a7, fflags, zero<br> [0x800024e8]:sh t6, 1550(a5)<br>  |
| 381|[0x80006f1c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800024f8]:feq.h t6, ft11, ft10<br> [0x800024fc]:csrrs a7, fflags, zero<br> [0x80002500]:sh t6, 1560(a5)<br>  |
| 382|[0x80006f26]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002510]:feq.h t6, ft11, ft10<br> [0x80002514]:csrrs a7, fflags, zero<br> [0x80002518]:sh t6, 1570(a5)<br>  |
| 383|[0x80006f30]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002528]:feq.h t6, ft11, ft10<br> [0x8000252c]:csrrs a7, fflags, zero<br> [0x80002530]:sh t6, 1580(a5)<br>  |
| 384|[0x80006f3a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002540]:feq.h t6, ft11, ft10<br> [0x80002544]:csrrs a7, fflags, zero<br> [0x80002548]:sh t6, 1590(a5)<br>  |
| 385|[0x80006f44]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002558]:feq.h t6, ft11, ft10<br> [0x8000255c]:csrrs a7, fflags, zero<br> [0x80002560]:sh t6, 1600(a5)<br>  |
| 386|[0x80006f4e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002570]:feq.h t6, ft11, ft10<br> [0x80002574]:csrrs a7, fflags, zero<br> [0x80002578]:sh t6, 1610(a5)<br>  |
| 387|[0x80006f58]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002588]:feq.h t6, ft11, ft10<br> [0x8000258c]:csrrs a7, fflags, zero<br> [0x80002590]:sh t6, 1620(a5)<br>  |
| 388|[0x80006f62]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x800025a0]:feq.h t6, ft11, ft10<br> [0x800025a4]:csrrs a7, fflags, zero<br> [0x800025a8]:sh t6, 1630(a5)<br>  |
| 389|[0x80006f6c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800025b8]:feq.h t6, ft11, ft10<br> [0x800025bc]:csrrs a7, fflags, zero<br> [0x800025c0]:sh t6, 1640(a5)<br>  |
| 390|[0x80006f76]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x800025d0]:feq.h t6, ft11, ft10<br> [0x800025d4]:csrrs a7, fflags, zero<br> [0x800025d8]:sh t6, 1650(a5)<br>  |
| 391|[0x80006f80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800025e8]:feq.h t6, ft11, ft10<br> [0x800025ec]:csrrs a7, fflags, zero<br> [0x800025f0]:sh t6, 1660(a5)<br>  |
| 392|[0x80006f8a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002600]:feq.h t6, ft11, ft10<br> [0x80002604]:csrrs a7, fflags, zero<br> [0x80002608]:sh t6, 1670(a5)<br>  |
| 393|[0x80006f94]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002618]:feq.h t6, ft11, ft10<br> [0x8000261c]:csrrs a7, fflags, zero<br> [0x80002620]:sh t6, 1680(a5)<br>  |
| 394|[0x80006f9e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002630]:feq.h t6, ft11, ft10<br> [0x80002634]:csrrs a7, fflags, zero<br> [0x80002638]:sh t6, 1690(a5)<br>  |
| 395|[0x80006fa8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002648]:feq.h t6, ft11, ft10<br> [0x8000264c]:csrrs a7, fflags, zero<br> [0x80002650]:sh t6, 1700(a5)<br>  |
| 396|[0x80006fb2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002660]:feq.h t6, ft11, ft10<br> [0x80002664]:csrrs a7, fflags, zero<br> [0x80002668]:sh t6, 1710(a5)<br>  |
| 397|[0x80006fbc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002678]:feq.h t6, ft11, ft10<br> [0x8000267c]:csrrs a7, fflags, zero<br> [0x80002680]:sh t6, 1720(a5)<br>  |
| 398|[0x80006fc6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002690]:feq.h t6, ft11, ft10<br> [0x80002694]:csrrs a7, fflags, zero<br> [0x80002698]:sh t6, 1730(a5)<br>  |
| 399|[0x80006fd0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800026a8]:feq.h t6, ft11, ft10<br> [0x800026ac]:csrrs a7, fflags, zero<br> [0x800026b0]:sh t6, 1740(a5)<br>  |
| 400|[0x80006fda]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800026c0]:feq.h t6, ft11, ft10<br> [0x800026c4]:csrrs a7, fflags, zero<br> [0x800026c8]:sh t6, 1750(a5)<br>  |
| 401|[0x80006fe4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800026d8]:feq.h t6, ft11, ft10<br> [0x800026dc]:csrrs a7, fflags, zero<br> [0x800026e0]:sh t6, 1760(a5)<br>  |
| 402|[0x80006fee]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800026f0]:feq.h t6, ft11, ft10<br> [0x800026f4]:csrrs a7, fflags, zero<br> [0x800026f8]:sh t6, 1770(a5)<br>  |
| 403|[0x80006ff8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002708]:feq.h t6, ft11, ft10<br> [0x8000270c]:csrrs a7, fflags, zero<br> [0x80002710]:sh t6, 1780(a5)<br>  |
| 404|[0x80007002]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80002720]:feq.h t6, ft11, ft10<br> [0x80002724]:csrrs a7, fflags, zero<br> [0x80002728]:sh t6, 1790(a5)<br>  |
| 405|[0x8000700c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80002738]:feq.h t6, ft11, ft10<br> [0x8000273c]:csrrs a7, fflags, zero<br> [0x80002740]:sh t6, 1800(a5)<br>  |
| 406|[0x80007016]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002750]:feq.h t6, ft11, ft10<br> [0x80002754]:csrrs a7, fflags, zero<br> [0x80002758]:sh t6, 1810(a5)<br>  |
| 407|[0x80007020]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002768]:feq.h t6, ft11, ft10<br> [0x8000276c]:csrrs a7, fflags, zero<br> [0x80002770]:sh t6, 1820(a5)<br>  |
| 408|[0x8000702a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002780]:feq.h t6, ft11, ft10<br> [0x80002784]:csrrs a7, fflags, zero<br> [0x80002788]:sh t6, 1830(a5)<br>  |
| 409|[0x80007034]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002798]:feq.h t6, ft11, ft10<br> [0x8000279c]:csrrs a7, fflags, zero<br> [0x800027a0]:sh t6, 1840(a5)<br>  |
| 410|[0x8000703e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800027b0]:feq.h t6, ft11, ft10<br> [0x800027b4]:csrrs a7, fflags, zero<br> [0x800027b8]:sh t6, 1850(a5)<br>  |
| 411|[0x80007048]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800027c8]:feq.h t6, ft11, ft10<br> [0x800027cc]:csrrs a7, fflags, zero<br> [0x800027d0]:sh t6, 1860(a5)<br>  |
| 412|[0x80007052]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x800027e0]:feq.h t6, ft11, ft10<br> [0x800027e4]:csrrs a7, fflags, zero<br> [0x800027e8]:sh t6, 1870(a5)<br>  |
| 413|[0x8000705c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800027f8]:feq.h t6, ft11, ft10<br> [0x800027fc]:csrrs a7, fflags, zero<br> [0x80002800]:sh t6, 1880(a5)<br>  |
| 414|[0x80007066]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002810]:feq.h t6, ft11, ft10<br> [0x80002814]:csrrs a7, fflags, zero<br> [0x80002818]:sh t6, 1890(a5)<br>  |
| 415|[0x80007070]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80002828]:feq.h t6, ft11, ft10<br> [0x8000282c]:csrrs a7, fflags, zero<br> [0x80002830]:sh t6, 1900(a5)<br>  |
| 416|[0x8000707a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002840]:feq.h t6, ft11, ft10<br> [0x80002844]:csrrs a7, fflags, zero<br> [0x80002848]:sh t6, 1910(a5)<br>  |
| 417|[0x80007084]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002858]:feq.h t6, ft11, ft10<br> [0x8000285c]:csrrs a7, fflags, zero<br> [0x80002860]:sh t6, 1920(a5)<br>  |
| 418|[0x8000708e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002870]:feq.h t6, ft11, ft10<br> [0x80002874]:csrrs a7, fflags, zero<br> [0x80002878]:sh t6, 1930(a5)<br>  |
| 419|[0x80007098]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002888]:feq.h t6, ft11, ft10<br> [0x8000288c]:csrrs a7, fflags, zero<br> [0x80002890]:sh t6, 1940(a5)<br>  |
| 420|[0x800070a2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800028a0]:feq.h t6, ft11, ft10<br> [0x800028a4]:csrrs a7, fflags, zero<br> [0x800028a8]:sh t6, 1950(a5)<br>  |
| 421|[0x800070ac]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800028b8]:feq.h t6, ft11, ft10<br> [0x800028bc]:csrrs a7, fflags, zero<br> [0x800028c0]:sh t6, 1960(a5)<br>  |
| 422|[0x800070b6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x800028d0]:feq.h t6, ft11, ft10<br> [0x800028d4]:csrrs a7, fflags, zero<br> [0x800028d8]:sh t6, 1970(a5)<br>  |
| 423|[0x800070c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800028e8]:feq.h t6, ft11, ft10<br> [0x800028ec]:csrrs a7, fflags, zero<br> [0x800028f0]:sh t6, 1980(a5)<br>  |
| 424|[0x800070ca]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002900]:feq.h t6, ft11, ft10<br> [0x80002904]:csrrs a7, fflags, zero<br> [0x80002908]:sh t6, 1990(a5)<br>  |
| 425|[0x800070d4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002918]:feq.h t6, ft11, ft10<br> [0x8000291c]:csrrs a7, fflags, zero<br> [0x80002920]:sh t6, 2000(a5)<br>  |
| 426|[0x800070de]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002930]:feq.h t6, ft11, ft10<br> [0x80002934]:csrrs a7, fflags, zero<br> [0x80002938]:sh t6, 2010(a5)<br>  |
| 427|[0x800070e8]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002948]:feq.h t6, ft11, ft10<br> [0x8000294c]:csrrs a7, fflags, zero<br> [0x80002950]:sh t6, 2020(a5)<br>  |
| 428|[0x800075b4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80002968]:feq.h t6, ft11, ft10<br> [0x8000296c]:csrrs a7, fflags, zero<br> [0x80002970]:sh t6, 0(a5)<br>     |
| 429|[0x800075be]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80002980]:feq.h t6, ft11, ft10<br> [0x80002984]:csrrs a7, fflags, zero<br> [0x80002988]:sh t6, 10(a5)<br>    |
| 430|[0x800075c8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002998]:feq.h t6, ft11, ft10<br> [0x8000299c]:csrrs a7, fflags, zero<br> [0x800029a0]:sh t6, 20(a5)<br>    |
| 431|[0x800075d2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800029b0]:feq.h t6, ft11, ft10<br> [0x800029b4]:csrrs a7, fflags, zero<br> [0x800029b8]:sh t6, 30(a5)<br>    |
| 432|[0x800075dc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800029c8]:feq.h t6, ft11, ft10<br> [0x800029cc]:csrrs a7, fflags, zero<br> [0x800029d0]:sh t6, 40(a5)<br>    |
| 433|[0x800075e6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800029e0]:feq.h t6, ft11, ft10<br> [0x800029e4]:csrrs a7, fflags, zero<br> [0x800029e8]:sh t6, 50(a5)<br>    |
| 434|[0x800075f0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800029f8]:feq.h t6, ft11, ft10<br> [0x800029fc]:csrrs a7, fflags, zero<br> [0x80002a00]:sh t6, 60(a5)<br>    |
| 435|[0x800075fa]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a10]:feq.h t6, ft11, ft10<br> [0x80002a14]:csrrs a7, fflags, zero<br> [0x80002a18]:sh t6, 70(a5)<br>    |
| 436|[0x80007604]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a28]:feq.h t6, ft11, ft10<br> [0x80002a2c]:csrrs a7, fflags, zero<br> [0x80002a30]:sh t6, 80(a5)<br>    |
| 437|[0x8000760e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a40]:feq.h t6, ft11, ft10<br> [0x80002a44]:csrrs a7, fflags, zero<br> [0x80002a48]:sh t6, 90(a5)<br>    |
| 438|[0x80007618]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a58]:feq.h t6, ft11, ft10<br> [0x80002a5c]:csrrs a7, fflags, zero<br> [0x80002a60]:sh t6, 100(a5)<br>   |
| 439|[0x80007622]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a70]:feq.h t6, ft11, ft10<br> [0x80002a74]:csrrs a7, fflags, zero<br> [0x80002a78]:sh t6, 110(a5)<br>   |
| 440|[0x8000762c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002a88]:feq.h t6, ft11, ft10<br> [0x80002a8c]:csrrs a7, fflags, zero<br> [0x80002a90]:sh t6, 120(a5)<br>   |
| 441|[0x80007636]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002aa0]:feq.h t6, ft11, ft10<br> [0x80002aa4]:csrrs a7, fflags, zero<br> [0x80002aa8]:sh t6, 130(a5)<br>   |
| 442|[0x80007640]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ab8]:feq.h t6, ft11, ft10<br> [0x80002abc]:csrrs a7, fflags, zero<br> [0x80002ac0]:sh t6, 140(a5)<br>   |
| 443|[0x8000764a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ad0]:feq.h t6, ft11, ft10<br> [0x80002ad4]:csrrs a7, fflags, zero<br> [0x80002ad8]:sh t6, 150(a5)<br>   |
| 444|[0x80007654]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002ae8]:feq.h t6, ft11, ft10<br> [0x80002aec]:csrrs a7, fflags, zero<br> [0x80002af0]:sh t6, 160(a5)<br>   |
| 445|[0x8000765e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002b00]:feq.h t6, ft11, ft10<br> [0x80002b04]:csrrs a7, fflags, zero<br> [0x80002b08]:sh t6, 170(a5)<br>   |
| 446|[0x80007668]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002b18]:feq.h t6, ft11, ft10<br> [0x80002b1c]:csrrs a7, fflags, zero<br> [0x80002b20]:sh t6, 180(a5)<br>   |
| 447|[0x80007672]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002b30]:feq.h t6, ft11, ft10<br> [0x80002b34]:csrrs a7, fflags, zero<br> [0x80002b38]:sh t6, 190(a5)<br>   |
| 448|[0x8000767c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002b48]:feq.h t6, ft11, ft10<br> [0x80002b4c]:csrrs a7, fflags, zero<br> [0x80002b50]:sh t6, 200(a5)<br>   |
| 449|[0x80007686]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002b60]:feq.h t6, ft11, ft10<br> [0x80002b64]:csrrs a7, fflags, zero<br> [0x80002b68]:sh t6, 210(a5)<br>   |
| 450|[0x80007690]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002b78]:feq.h t6, ft11, ft10<br> [0x80002b7c]:csrrs a7, fflags, zero<br> [0x80002b80]:sh t6, 220(a5)<br>   |
| 451|[0x8000769a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002b90]:feq.h t6, ft11, ft10<br> [0x80002b94]:csrrs a7, fflags, zero<br> [0x80002b98]:sh t6, 230(a5)<br>   |
| 452|[0x800076a4]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80002ba8]:feq.h t6, ft11, ft10<br> [0x80002bac]:csrrs a7, fflags, zero<br> [0x80002bb0]:sh t6, 240(a5)<br>   |
| 453|[0x800076ae]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80002bc0]:feq.h t6, ft11, ft10<br> [0x80002bc4]:csrrs a7, fflags, zero<br> [0x80002bc8]:sh t6, 250(a5)<br>   |
| 454|[0x800076b8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002bd8]:feq.h t6, ft11, ft10<br> [0x80002bdc]:csrrs a7, fflags, zero<br> [0x80002be0]:sh t6, 260(a5)<br>   |
| 455|[0x800076c2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002bf0]:feq.h t6, ft11, ft10<br> [0x80002bf4]:csrrs a7, fflags, zero<br> [0x80002bf8]:sh t6, 270(a5)<br>   |
| 456|[0x800076cc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c08]:feq.h t6, ft11, ft10<br> [0x80002c0c]:csrrs a7, fflags, zero<br> [0x80002c10]:sh t6, 280(a5)<br>   |
| 457|[0x800076d6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c20]:feq.h t6, ft11, ft10<br> [0x80002c24]:csrrs a7, fflags, zero<br> [0x80002c28]:sh t6, 290(a5)<br>   |
| 458|[0x800076e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c38]:feq.h t6, ft11, ft10<br> [0x80002c3c]:csrrs a7, fflags, zero<br> [0x80002c40]:sh t6, 300(a5)<br>   |
| 459|[0x800076ea]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c50]:feq.h t6, ft11, ft10<br> [0x80002c54]:csrrs a7, fflags, zero<br> [0x80002c58]:sh t6, 310(a5)<br>   |
| 460|[0x800076f4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c68]:feq.h t6, ft11, ft10<br> [0x80002c6c]:csrrs a7, fflags, zero<br> [0x80002c70]:sh t6, 320(a5)<br>   |
| 461|[0x800076fe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c80]:feq.h t6, ft11, ft10<br> [0x80002c84]:csrrs a7, fflags, zero<br> [0x80002c88]:sh t6, 330(a5)<br>   |
| 462|[0x80007708]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002c98]:feq.h t6, ft11, ft10<br> [0x80002c9c]:csrrs a7, fflags, zero<br> [0x80002ca0]:sh t6, 340(a5)<br>   |
| 463|[0x80007712]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80002cb0]:feq.h t6, ft11, ft10<br> [0x80002cb4]:csrrs a7, fflags, zero<br> [0x80002cb8]:sh t6, 350(a5)<br>   |
| 464|[0x8000771c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002cc8]:feq.h t6, ft11, ft10<br> [0x80002ccc]:csrrs a7, fflags, zero<br> [0x80002cd0]:sh t6, 360(a5)<br>   |
| 465|[0x80007726]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ce0]:feq.h t6, ft11, ft10<br> [0x80002ce4]:csrrs a7, fflags, zero<br> [0x80002ce8]:sh t6, 370(a5)<br>   |
| 466|[0x80007730]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002cf8]:feq.h t6, ft11, ft10<br> [0x80002cfc]:csrrs a7, fflags, zero<br> [0x80002d00]:sh t6, 380(a5)<br>   |
| 467|[0x8000773a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002d10]:feq.h t6, ft11, ft10<br> [0x80002d14]:csrrs a7, fflags, zero<br> [0x80002d18]:sh t6, 390(a5)<br>   |
| 468|[0x80007744]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002d28]:feq.h t6, ft11, ft10<br> [0x80002d2c]:csrrs a7, fflags, zero<br> [0x80002d30]:sh t6, 400(a5)<br>   |
| 469|[0x8000774e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002d40]:feq.h t6, ft11, ft10<br> [0x80002d44]:csrrs a7, fflags, zero<br> [0x80002d48]:sh t6, 410(a5)<br>   |
| 470|[0x80007758]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002d58]:feq.h t6, ft11, ft10<br> [0x80002d5c]:csrrs a7, fflags, zero<br> [0x80002d60]:sh t6, 420(a5)<br>   |
| 471|[0x80007762]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002d70]:feq.h t6, ft11, ft10<br> [0x80002d74]:csrrs a7, fflags, zero<br> [0x80002d78]:sh t6, 430(a5)<br>   |
| 472|[0x8000776c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002d88]:feq.h t6, ft11, ft10<br> [0x80002d8c]:csrrs a7, fflags, zero<br> [0x80002d90]:sh t6, 440(a5)<br>   |
| 473|[0x80007776]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002da0]:feq.h t6, ft11, ft10<br> [0x80002da4]:csrrs a7, fflags, zero<br> [0x80002da8]:sh t6, 450(a5)<br>   |
| 474|[0x80007780]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002db8]:feq.h t6, ft11, ft10<br> [0x80002dbc]:csrrs a7, fflags, zero<br> [0x80002dc0]:sh t6, 460(a5)<br>   |
| 475|[0x8000778a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002dd0]:feq.h t6, ft11, ft10<br> [0x80002dd4]:csrrs a7, fflags, zero<br> [0x80002dd8]:sh t6, 470(a5)<br>   |
| 476|[0x80007794]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80002de8]:feq.h t6, ft11, ft10<br> [0x80002dec]:csrrs a7, fflags, zero<br> [0x80002df0]:sh t6, 480(a5)<br>   |
| 477|[0x8000779e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e00]:feq.h t6, ft11, ft10<br> [0x80002e04]:csrrs a7, fflags, zero<br> [0x80002e08]:sh t6, 490(a5)<br>   |
| 478|[0x800077a8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e18]:feq.h t6, ft11, ft10<br> [0x80002e1c]:csrrs a7, fflags, zero<br> [0x80002e20]:sh t6, 500(a5)<br>   |
| 479|[0x800077b2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e30]:feq.h t6, ft11, ft10<br> [0x80002e34]:csrrs a7, fflags, zero<br> [0x80002e38]:sh t6, 510(a5)<br>   |
| 480|[0x800077bc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e48]:feq.h t6, ft11, ft10<br> [0x80002e4c]:csrrs a7, fflags, zero<br> [0x80002e50]:sh t6, 520(a5)<br>   |
| 481|[0x800077c6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e60]:feq.h t6, ft11, ft10<br> [0x80002e64]:csrrs a7, fflags, zero<br> [0x80002e68]:sh t6, 530(a5)<br>   |
| 482|[0x800077d0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e78]:feq.h t6, ft11, ft10<br> [0x80002e7c]:csrrs a7, fflags, zero<br> [0x80002e80]:sh t6, 540(a5)<br>   |
| 483|[0x800077da]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002e90]:feq.h t6, ft11, ft10<br> [0x80002e94]:csrrs a7, fflags, zero<br> [0x80002e98]:sh t6, 550(a5)<br>   |
| 484|[0x800077e4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ea8]:feq.h t6, ft11, ft10<br> [0x80002eac]:csrrs a7, fflags, zero<br> [0x80002eb0]:sh t6, 560(a5)<br>   |
| 485|[0x800077ee]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ec0]:feq.h t6, ft11, ft10<br> [0x80002ec4]:csrrs a7, fflags, zero<br> [0x80002ec8]:sh t6, 570(a5)<br>   |
| 486|[0x800077f8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ed8]:feq.h t6, ft11, ft10<br> [0x80002edc]:csrrs a7, fflags, zero<br> [0x80002ee0]:sh t6, 580(a5)<br>   |
| 487|[0x80007802]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80002ef0]:feq.h t6, ft11, ft10<br> [0x80002ef4]:csrrs a7, fflags, zero<br> [0x80002ef8]:sh t6, 590(a5)<br>   |
| 488|[0x8000780c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002f08]:feq.h t6, ft11, ft10<br> [0x80002f0c]:csrrs a7, fflags, zero<br> [0x80002f10]:sh t6, 600(a5)<br>   |
| 489|[0x80007816]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80002f20]:feq.h t6, ft11, ft10<br> [0x80002f24]:csrrs a7, fflags, zero<br> [0x80002f28]:sh t6, 610(a5)<br>   |
| 490|[0x80007820]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002f38]:feq.h t6, ft11, ft10<br> [0x80002f3c]:csrrs a7, fflags, zero<br> [0x80002f40]:sh t6, 620(a5)<br>   |
| 491|[0x8000782a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002f50]:feq.h t6, ft11, ft10<br> [0x80002f54]:csrrs a7, fflags, zero<br> [0x80002f58]:sh t6, 630(a5)<br>   |
| 492|[0x80007834]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002f68]:feq.h t6, ft11, ft10<br> [0x80002f6c]:csrrs a7, fflags, zero<br> [0x80002f70]:sh t6, 640(a5)<br>   |
| 493|[0x8000783e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002f80]:feq.h t6, ft11, ft10<br> [0x80002f84]:csrrs a7, fflags, zero<br> [0x80002f88]:sh t6, 650(a5)<br>   |
| 494|[0x80007848]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x80002f98]:feq.h t6, ft11, ft10<br> [0x80002f9c]:csrrs a7, fflags, zero<br> [0x80002fa0]:sh t6, 660(a5)<br>   |
| 495|[0x80007852]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80002fb0]:feq.h t6, ft11, ft10<br> [0x80002fb4]:csrrs a7, fflags, zero<br> [0x80002fb8]:sh t6, 670(a5)<br>   |
| 496|[0x8000785c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002fc8]:feq.h t6, ft11, ft10<br> [0x80002fcc]:csrrs a7, fflags, zero<br> [0x80002fd0]:sh t6, 680(a5)<br>   |
| 497|[0x80007866]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80002fe0]:feq.h t6, ft11, ft10<br> [0x80002fe4]:csrrs a7, fflags, zero<br> [0x80002fe8]:sh t6, 690(a5)<br>   |
| 498|[0x80007870]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80002ff8]:feq.h t6, ft11, ft10<br> [0x80002ffc]:csrrs a7, fflags, zero<br> [0x80003000]:sh t6, 700(a5)<br>   |
| 499|[0x8000787a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80003010]:feq.h t6, ft11, ft10<br> [0x80003014]:csrrs a7, fflags, zero<br> [0x80003018]:sh t6, 710(a5)<br>   |
| 500|[0x80007884]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x80003028]:feq.h t6, ft11, ft10<br> [0x8000302c]:csrrs a7, fflags, zero<br> [0x80003030]:sh t6, 720(a5)<br>   |
| 501|[0x8000788e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80003040]:feq.h t6, ft11, ft10<br> [0x80003044]:csrrs a7, fflags, zero<br> [0x80003048]:sh t6, 730(a5)<br>   |
| 502|[0x80007898]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003058]:feq.h t6, ft11, ft10<br> [0x8000305c]:csrrs a7, fflags, zero<br> [0x80003060]:sh t6, 740(a5)<br>   |
| 503|[0x800078a2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003070]:feq.h t6, ft11, ft10<br> [0x80003074]:csrrs a7, fflags, zero<br> [0x80003078]:sh t6, 750(a5)<br>   |
| 504|[0x800078ac]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003088]:feq.h t6, ft11, ft10<br> [0x8000308c]:csrrs a7, fflags, zero<br> [0x80003090]:sh t6, 760(a5)<br>   |
| 505|[0x800078b6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800030a0]:feq.h t6, ft11, ft10<br> [0x800030a4]:csrrs a7, fflags, zero<br> [0x800030a8]:sh t6, 770(a5)<br>   |
| 506|[0x800078c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800030b8]:feq.h t6, ft11, ft10<br> [0x800030bc]:csrrs a7, fflags, zero<br> [0x800030c0]:sh t6, 780(a5)<br>   |
| 507|[0x800078ca]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800030d0]:feq.h t6, ft11, ft10<br> [0x800030d4]:csrrs a7, fflags, zero<br> [0x800030d8]:sh t6, 790(a5)<br>   |
| 508|[0x800078d4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x800030e8]:feq.h t6, ft11, ft10<br> [0x800030ec]:csrrs a7, fflags, zero<br> [0x800030f0]:sh t6, 800(a5)<br>   |
| 509|[0x800078de]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003104]:feq.h t6, ft11, ft10<br> [0x80003108]:csrrs a7, fflags, zero<br> [0x8000310c]:sh t6, 810(a5)<br>   |
| 510|[0x800078e8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x8000311c]:feq.h t6, ft11, ft10<br> [0x80003120]:csrrs a7, fflags, zero<br> [0x80003124]:sh t6, 820(a5)<br>   |
| 511|[0x800078f2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80003134]:feq.h t6, ft11, ft10<br> [0x80003138]:csrrs a7, fflags, zero<br> [0x8000313c]:sh t6, 830(a5)<br>   |
| 512|[0x800078fc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x8000314c]:feq.h t6, ft11, ft10<br> [0x80003150]:csrrs a7, fflags, zero<br> [0x80003154]:sh t6, 840(a5)<br>   |
| 513|[0x80007906]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x80003164]:feq.h t6, ft11, ft10<br> [0x80003168]:csrrs a7, fflags, zero<br> [0x8000316c]:sh t6, 850(a5)<br>   |
| 514|[0x80007910]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000317c]:feq.h t6, ft11, ft10<br> [0x80003180]:csrrs a7, fflags, zero<br> [0x80003184]:sh t6, 860(a5)<br>   |
| 515|[0x8000791a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003194]:feq.h t6, ft11, ft10<br> [0x80003198]:csrrs a7, fflags, zero<br> [0x8000319c]:sh t6, 870(a5)<br>   |
| 516|[0x80007924]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800031ac]:feq.h t6, ft11, ft10<br> [0x800031b0]:csrrs a7, fflags, zero<br> [0x800031b4]:sh t6, 880(a5)<br>   |
| 517|[0x8000792e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800031c4]:feq.h t6, ft11, ft10<br> [0x800031c8]:csrrs a7, fflags, zero<br> [0x800031cc]:sh t6, 890(a5)<br>   |
| 518|[0x80007938]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x800031dc]:feq.h t6, ft11, ft10<br> [0x800031e0]:csrrs a7, fflags, zero<br> [0x800031e4]:sh t6, 900(a5)<br>   |
| 519|[0x80007942]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800031f4]:feq.h t6, ft11, ft10<br> [0x800031f8]:csrrs a7, fflags, zero<br> [0x800031fc]:sh t6, 910(a5)<br>   |
| 520|[0x8000794c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000320c]:feq.h t6, ft11, ft10<br> [0x80003210]:csrrs a7, fflags, zero<br> [0x80003214]:sh t6, 920(a5)<br>   |
| 521|[0x80007956]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003224]:feq.h t6, ft11, ft10<br> [0x80003228]:csrrs a7, fflags, zero<br> [0x8000322c]:sh t6, 930(a5)<br>   |
| 522|[0x80007960]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x8000323c]:feq.h t6, ft11, ft10<br> [0x80003240]:csrrs a7, fflags, zero<br> [0x80003244]:sh t6, 940(a5)<br>   |
| 523|[0x8000796a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80003254]:feq.h t6, ft11, ft10<br> [0x80003258]:csrrs a7, fflags, zero<br> [0x8000325c]:sh t6, 950(a5)<br>   |
| 524|[0x80007974]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x8000326c]:feq.h t6, ft11, ft10<br> [0x80003270]:csrrs a7, fflags, zero<br> [0x80003274]:sh t6, 960(a5)<br>   |
| 525|[0x8000797e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80003284]:feq.h t6, ft11, ft10<br> [0x80003288]:csrrs a7, fflags, zero<br> [0x8000328c]:sh t6, 970(a5)<br>   |
| 526|[0x80007988]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x8000329c]:feq.h t6, ft11, ft10<br> [0x800032a0]:csrrs a7, fflags, zero<br> [0x800032a4]:sh t6, 980(a5)<br>   |
| 527|[0x80007992]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800032b4]:feq.h t6, ft11, ft10<br> [0x800032b8]:csrrs a7, fflags, zero<br> [0x800032bc]:sh t6, 990(a5)<br>   |
| 528|[0x8000799c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800032cc]:feq.h t6, ft11, ft10<br> [0x800032d0]:csrrs a7, fflags, zero<br> [0x800032d4]:sh t6, 1000(a5)<br>  |
| 529|[0x800079a6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800032e4]:feq.h t6, ft11, ft10<br> [0x800032e8]:csrrs a7, fflags, zero<br> [0x800032ec]:sh t6, 1010(a5)<br>  |
| 530|[0x800079b0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800032fc]:feq.h t6, ft11, ft10<br> [0x80003300]:csrrs a7, fflags, zero<br> [0x80003304]:sh t6, 1020(a5)<br>  |
| 531|[0x800079ba]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003314]:feq.h t6, ft11, ft10<br> [0x80003318]:csrrs a7, fflags, zero<br> [0x8000331c]:sh t6, 1030(a5)<br>  |
| 532|[0x800079c4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x8000332c]:feq.h t6, ft11, ft10<br> [0x80003330]:csrrs a7, fflags, zero<br> [0x80003334]:sh t6, 1040(a5)<br>  |
| 533|[0x800079ce]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003344]:feq.h t6, ft11, ft10<br> [0x80003348]:csrrs a7, fflags, zero<br> [0x8000334c]:sh t6, 1050(a5)<br>  |
| 534|[0x800079d8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x8000335c]:feq.h t6, ft11, ft10<br> [0x80003360]:csrrs a7, fflags, zero<br> [0x80003364]:sh t6, 1060(a5)<br>  |
| 535|[0x800079e2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x80003374]:feq.h t6, ft11, ft10<br> [0x80003378]:csrrs a7, fflags, zero<br> [0x8000337c]:sh t6, 1070(a5)<br>  |
| 536|[0x800079ec]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x8000338c]:feq.h t6, ft11, ft10<br> [0x80003390]:csrrs a7, fflags, zero<br> [0x80003394]:sh t6, 1080(a5)<br>  |
| 537|[0x800079f6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800033a4]:feq.h t6, ft11, ft10<br> [0x800033a8]:csrrs a7, fflags, zero<br> [0x800033ac]:sh t6, 1090(a5)<br>  |
| 538|[0x80007a00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800033bc]:feq.h t6, ft11, ft10<br> [0x800033c0]:csrrs a7, fflags, zero<br> [0x800033c4]:sh t6, 1100(a5)<br>  |
| 539|[0x80007a0a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800033d4]:feq.h t6, ft11, ft10<br> [0x800033d8]:csrrs a7, fflags, zero<br> [0x800033dc]:sh t6, 1110(a5)<br>  |
| 540|[0x80007a14]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800033ec]:feq.h t6, ft11, ft10<br> [0x800033f0]:csrrs a7, fflags, zero<br> [0x800033f4]:sh t6, 1120(a5)<br>  |
| 541|[0x80007a1e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80003404]:feq.h t6, ft11, ft10<br> [0x80003408]:csrrs a7, fflags, zero<br> [0x8000340c]:sh t6, 1130(a5)<br>  |
| 542|[0x80007a28]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x8000341c]:feq.h t6, ft11, ft10<br> [0x80003420]:csrrs a7, fflags, zero<br> [0x80003424]:sh t6, 1140(a5)<br>  |
| 543|[0x80007a32]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003434]:feq.h t6, ft11, ft10<br> [0x80003438]:csrrs a7, fflags, zero<br> [0x8000343c]:sh t6, 1150(a5)<br>  |
| 544|[0x80007a3c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000344c]:feq.h t6, ft11, ft10<br> [0x80003450]:csrrs a7, fflags, zero<br> [0x80003454]:sh t6, 1160(a5)<br>  |
| 545|[0x80007a46]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003464]:feq.h t6, ft11, ft10<br> [0x80003468]:csrrs a7, fflags, zero<br> [0x8000346c]:sh t6, 1170(a5)<br>  |
| 546|[0x80007a50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x8000347c]:feq.h t6, ft11, ft10<br> [0x80003480]:csrrs a7, fflags, zero<br> [0x80003484]:sh t6, 1180(a5)<br>  |
| 547|[0x80007a5a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80003494]:feq.h t6, ft11, ft10<br> [0x80003498]:csrrs a7, fflags, zero<br> [0x8000349c]:sh t6, 1190(a5)<br>  |
| 548|[0x80007a64]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800034ac]:feq.h t6, ft11, ft10<br> [0x800034b0]:csrrs a7, fflags, zero<br> [0x800034b4]:sh t6, 1200(a5)<br>  |
| 549|[0x80007a6e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x800034c4]:feq.h t6, ft11, ft10<br> [0x800034c8]:csrrs a7, fflags, zero<br> [0x800034cc]:sh t6, 1210(a5)<br>  |
| 550|[0x80007a78]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800034dc]:feq.h t6, ft11, ft10<br> [0x800034e0]:csrrs a7, fflags, zero<br> [0x800034e4]:sh t6, 1220(a5)<br>  |
| 551|[0x80007a82]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x800034f4]:feq.h t6, ft11, ft10<br> [0x800034f8]:csrrs a7, fflags, zero<br> [0x800034fc]:sh t6, 1230(a5)<br>  |
| 552|[0x80007a8c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000350c]:feq.h t6, ft11, ft10<br> [0x80003510]:csrrs a7, fflags, zero<br> [0x80003514]:sh t6, 1240(a5)<br>  |
| 553|[0x80007a96]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003524]:feq.h t6, ft11, ft10<br> [0x80003528]:csrrs a7, fflags, zero<br> [0x8000352c]:sh t6, 1250(a5)<br>  |
| 554|[0x80007aa0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000353c]:feq.h t6, ft11, ft10<br> [0x80003540]:csrrs a7, fflags, zero<br> [0x80003544]:sh t6, 1260(a5)<br>  |
| 555|[0x80007aaa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003554]:feq.h t6, ft11, ft10<br> [0x80003558]:csrrs a7, fflags, zero<br> [0x8000355c]:sh t6, 1270(a5)<br>  |
| 556|[0x80007ab4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 2  #nosat<br>                                                                                     |[0x8000356c]:feq.h t6, ft11, ft10<br> [0x80003570]:csrrs a7, fflags, zero<br> [0x80003574]:sh t6, 1280(a5)<br>  |
| 557|[0x80007abe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003584]:feq.h t6, ft11, ft10<br> [0x80003588]:csrrs a7, fflags, zero<br> [0x8000358c]:sh t6, 1290(a5)<br>  |
| 558|[0x80007ac8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 2  #nosat<br>                                                                                     |[0x8000359c]:feq.h t6, ft11, ft10<br> [0x800035a0]:csrrs a7, fflags, zero<br> [0x800035a4]:sh t6, 1300(a5)<br>  |
| 559|[0x80007ad2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 2  #nosat<br>                                                                                     |[0x800035b4]:feq.h t6, ft11, ft10<br> [0x800035b8]:csrrs a7, fflags, zero<br> [0x800035bc]:sh t6, 1310(a5)<br>  |
| 560|[0x80007adc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800035cc]:feq.h t6, ft11, ft10<br> [0x800035d0]:csrrs a7, fflags, zero<br> [0x800035d4]:sh t6, 1320(a5)<br>  |
| 561|[0x80007ae6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 2  #nosat<br>                                                                                     |[0x800035e4]:feq.h t6, ft11, ft10<br> [0x800035e8]:csrrs a7, fflags, zero<br> [0x800035ec]:sh t6, 1330(a5)<br>  |
| 562|[0x80007af0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800035fc]:feq.h t6, ft11, ft10<br> [0x80003600]:csrrs a7, fflags, zero<br> [0x80003604]:sh t6, 1340(a5)<br>  |
| 563|[0x80007afa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x80003614]:feq.h t6, ft11, ft10<br> [0x80003618]:csrrs a7, fflags, zero<br> [0x8000361c]:sh t6, 1350(a5)<br>  |
| 564|[0x80007b04]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x8000362c]:feq.h t6, ft11, ft10<br> [0x80003630]:csrrs a7, fflags, zero<br> [0x80003634]:sh t6, 1360(a5)<br>  |
| 565|[0x80007b0e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x80003644]:feq.h t6, ft11, ft10<br> [0x80003648]:csrrs a7, fflags, zero<br> [0x8000364c]:sh t6, 1370(a5)<br>  |
| 566|[0x80007b18]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 2  #nosat<br>                                                                                     |[0x8000365c]:feq.h t6, ft11, ft10<br> [0x80003660]:csrrs a7, fflags, zero<br> [0x80003664]:sh t6, 1380(a5)<br>  |
| 567|[0x80007b22]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003674]:feq.h t6, ft11, ft10<br> [0x80003678]:csrrs a7, fflags, zero<br> [0x8000367c]:sh t6, 1390(a5)<br>  |
| 568|[0x80007b2c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000368c]:feq.h t6, ft11, ft10<br> [0x80003690]:csrrs a7, fflags, zero<br> [0x80003694]:sh t6, 1400(a5)<br>  |
| 569|[0x80007b36]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x800036a4]:feq.h t6, ft11, ft10<br> [0x800036a8]:csrrs a7, fflags, zero<br> [0x800036ac]:sh t6, 1410(a5)<br>  |
| 570|[0x80007b40]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800036bc]:feq.h t6, ft11, ft10<br> [0x800036c0]:csrrs a7, fflags, zero<br> [0x800036c4]:sh t6, 1420(a5)<br>  |
| 571|[0x80007b4a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 2  #nosat<br>                                                                                     |[0x800036d4]:feq.h t6, ft11, ft10<br> [0x800036d8]:csrrs a7, fflags, zero<br> [0x800036dc]:sh t6, 1430(a5)<br>  |
| 572|[0x80007b54]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 2  #nosat<br>                                                                                     |[0x800036ec]:feq.h t6, ft11, ft10<br> [0x800036f0]:csrrs a7, fflags, zero<br> [0x800036f4]:sh t6, 1440(a5)<br>  |
| 573|[0x80007b5e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 2  #nosat<br>                                                                                     |[0x80003704]:feq.h t6, ft11, ft10<br> [0x80003708]:csrrs a7, fflags, zero<br> [0x8000370c]:sh t6, 1450(a5)<br>  |
| 574|[0x80007b68]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x8000371c]:feq.h t6, ft11, ft10<br> [0x80003720]:csrrs a7, fflags, zero<br> [0x80003724]:sh t6, 1460(a5)<br>  |
| 575|[0x80007b72]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 2  #nosat<br>                                                                                     |[0x80003734]:feq.h t6, ft11, ft10<br> [0x80003738]:csrrs a7, fflags, zero<br> [0x8000373c]:sh t6, 1470(a5)<br>  |
| 576|[0x80007b7c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 2  #nosat<br>                                                                                     |[0x8000374c]:feq.h t6, ft11, ft10<br> [0x80003750]:csrrs a7, fflags, zero<br> [0x80003754]:sh t6, 1480(a5)<br>  |
