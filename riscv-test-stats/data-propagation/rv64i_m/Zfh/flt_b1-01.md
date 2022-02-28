
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x800037b0')]      |
| SIG_REGION                | [('0x80005b04', '0x80007f24', '1156 dwords')]      |
| COV_LABELS                | flt_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/flt_b1-01.S/ref.S    |
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
      [0x8000377c]:flt.h t6, ft11, ft10
      [0x80003780]:csrrs a7, fflags, zero
      [0x80003784]:sh t6, 1510(a5)
 -- Signature Address: 0x80007b7a Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : flt.h
      - rd : x31
      - rs1 : f31
      - rs2 : f30
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003794]:flt.h t6, ft11, ft10
      [0x80003798]:csrrs a7, fflags, zero
      [0x8000379c]:sh t6, 1520(a5)
 -- Signature Address: 0x80007b84 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : flt.h
      - rd : x31
      - rs1 : f31
      - rs2 : f30
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : flt.h', 'rd : x3', 'rs1 : f13', 'rs2 : f24', 'rs1 != rs2', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000120]:flt.h gp, fa3, fs8
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh gp, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80005b06]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f4', 'rs2 : f4', 'rs1 == rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000138]:flt.h t0, ft4, ft4
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh t0, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80005b10]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f22', 'rs2 : f6', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000150]:flt.h s7, fs6, ft6
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh s7, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x80005b1a]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f27', 'rs2 : f14', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000168]:flt.h s8, fs11, fa4
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sh s8, 30(a5)
Current Store : [0x80000174] : sh a7, 32(a5) -- Store: [0x80005b24]:0x0000000000000010




Last Coverpoint : ['rd : x26', 'rs1 : f6', 'rs2 : f1', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000180]:flt.h s10, ft6, ft1
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sh s10, 40(a5)
Current Store : [0x8000018c] : sh a7, 42(a5) -- Store: [0x80005b2e]:0x0000000000000010




Last Coverpoint : ['rd : x19', 'rs1 : f12', 'rs2 : f9', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000198]:flt.h s3, fa2, fs1
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sh s3, 50(a5)
Current Store : [0x800001a4] : sh a7, 52(a5) -- Store: [0x80005b38]:0x0000000000000010




Last Coverpoint : ['rd : x1', 'rs1 : f7', 'rs2 : f27', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001b0]:flt.h ra, ft7, fs11
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sh ra, 60(a5)
Current Store : [0x800001bc] : sh a7, 62(a5) -- Store: [0x80005b42]:0x0000000000000010




Last Coverpoint : ['rd : x17', 'rs1 : f30', 'rs2 : f25', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001d4]:flt.h a7, ft10, fs9
	-[0x800001d8]:csrrs s5, fflags, zero
	-[0x800001dc]:sh a7, 0(s3)
Current Store : [0x800001e0] : sh s5, 2(s3) -- Store: [0x80005b76]:0x0000000000000010




Last Coverpoint : ['rd : x2', 'rs1 : f9', 'rs2 : f0', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001f8]:flt.h sp, fs1, ft0
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sh sp, 0(a5)
Current Store : [0x80000204] : sh a7, 2(a5) -- Store: [0x80005b86]:0x0000000000000010




Last Coverpoint : ['rd : x7', 'rs1 : f5', 'rs2 : f16', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000210]:flt.h t2, ft5, fa6
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sh t2, 10(a5)
Current Store : [0x8000021c] : sh a7, 12(a5) -- Store: [0x80005b90]:0x0000000000000010




Last Coverpoint : ['rd : x31', 'rs1 : f8', 'rs2 : f31', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000228]:flt.h t6, fs0, ft11
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sh t6, 20(a5)
Current Store : [0x80000234] : sh a7, 22(a5) -- Store: [0x80005b9a]:0x0000000000000010




Last Coverpoint : ['rd : x28', 'rs1 : f20', 'rs2 : f19', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000240]:flt.h t3, fs4, fs3
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh t3, 30(a5)
Current Store : [0x8000024c] : sh a7, 32(a5) -- Store: [0x80005ba4]:0x0000000000000010




Last Coverpoint : ['rd : x14', 'rs1 : f28', 'rs2 : f13', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000258]:flt.h a4, ft8, fa3
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sh a4, 40(a5)
Current Store : [0x80000264] : sh a7, 42(a5) -- Store: [0x80005bae]:0x0000000000000010




Last Coverpoint : ['rd : x20', 'rs1 : f0', 'rs2 : f10', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000270]:flt.h s4, ft0, fa0
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sh s4, 50(a5)
Current Store : [0x8000027c] : sh a7, 52(a5) -- Store: [0x80005bb8]:0x0000000000000010




Last Coverpoint : ['rd : x15', 'rs1 : f14', 'rs2 : f2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000294]:flt.h a5, fa4, ft2
	-[0x80000298]:csrrs s5, fflags, zero
	-[0x8000029c]:sh a5, 0(s3)
Current Store : [0x800002a0] : sh s5, 2(s3) -- Store: [0x80005be6]:0x0000000000000010




Last Coverpoint : ['rd : x12', 'rs1 : f23', 'rs2 : f29', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002b8]:flt.h a2, fs7, ft9
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sh a2, 0(a5)
Current Store : [0x800002c4] : sh a7, 2(a5) -- Store: [0x80005bf6]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f11', 'rs2 : f18', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002d0]:flt.h s9, fa1, fs2
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sh s9, 10(a5)
Current Store : [0x800002dc] : sh a7, 12(a5) -- Store: [0x80005c00]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f2', 'rs2 : f20', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002e8]:flt.h t5, ft2, fs4
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sh t5, 20(a5)
Current Store : [0x800002f4] : sh a7, 22(a5) -- Store: [0x80005c0a]:0x0000000000000010




Last Coverpoint : ['rd : x16', 'rs1 : f24', 'rs2 : f23', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000030c]:flt.h a6, fs8, fs7
	-[0x80000310]:csrrs s5, fflags, zero
	-[0x80000314]:sh a6, 0(s3)
Current Store : [0x80000318] : sh s5, 2(s3) -- Store: [0x80005c26]:0x0000000000000010




Last Coverpoint : ['rd : x27', 'rs1 : f25', 'rs2 : f8', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000330]:flt.h s11, fs9, fs0
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sh s11, 0(a5)
Current Store : [0x8000033c] : sh a7, 2(a5) -- Store: [0x80005c36]:0x0000000000000010




Last Coverpoint : ['rd : x29', 'rs1 : f26', 'rs2 : f11', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000348]:flt.h t4, fs10, fa1
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh t4, 10(a5)
Current Store : [0x80000354] : sh a7, 12(a5) -- Store: [0x80005c40]:0x0000000000000010




Last Coverpoint : ['rd : x4', 'rs1 : f31', 'rs2 : f7', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000360]:flt.h tp, ft11, ft7
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh tp, 20(a5)
Current Store : [0x8000036c] : sh a7, 22(a5) -- Store: [0x80005c4a]:0x0000000000000010




Last Coverpoint : ['rd : x10', 'rs1 : f1', 'rs2 : f30', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000378]:flt.h a0, ft1, ft10
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh a0, 30(a5)
Current Store : [0x80000384] : sh a7, 32(a5) -- Store: [0x80005c54]:0x0000000000000010




Last Coverpoint : ['rd : x0', 'rs1 : f15', 'rs2 : f17', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000390]:flt.h zero, fa5, fa7
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sh zero, 40(a5)
Current Store : [0x8000039c] : sh a7, 42(a5) -- Store: [0x80005c5e]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f16', 'rs2 : f21', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003a8]:flt.h t1, fa6, fs5
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sh t1, 50(a5)
Current Store : [0x800003b4] : sh a7, 52(a5) -- Store: [0x80005c68]:0x0000000000000010




Last Coverpoint : ['rd : x8', 'rs1 : f18', 'rs2 : f28', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003c0]:flt.h fp, fs2, ft8
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh fp, 60(a5)
Current Store : [0x800003cc] : sh a7, 62(a5) -- Store: [0x80005c72]:0x0000000000000010




Last Coverpoint : ['rd : x11', 'rs1 : f3', 'rs2 : f5', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003d8]:flt.h a1, ft3, ft5
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh a1, 70(a5)
Current Store : [0x800003e4] : sh a7, 72(a5) -- Store: [0x80005c7c]:0x0000000000000010




Last Coverpoint : ['rd : x9', 'rs1 : f29', 'rs2 : f12', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003f0]:flt.h s1, ft9, fa2
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh s1, 80(a5)
Current Store : [0x800003fc] : sh a7, 82(a5) -- Store: [0x80005c86]:0x0000000000000010




Last Coverpoint : ['rd : x18', 'rs1 : f21', 'rs2 : f15', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000408]:flt.h s2, fs5, fa5
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sh s2, 90(a5)
Current Store : [0x80000414] : sh a7, 92(a5) -- Store: [0x80005c90]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f17', 'rs2 : f22', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000420]:flt.h s6, fa7, fs6
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sh s6, 100(a5)
Current Store : [0x8000042c] : sh a7, 102(a5) -- Store: [0x80005c9a]:0x0000000000000010




Last Coverpoint : ['rd : x21', 'rs1 : f19', 'rs2 : f26', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000438]:flt.h s5, fs3, fs10
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sh s5, 110(a5)
Current Store : [0x80000444] : sh a7, 112(a5) -- Store: [0x80005ca4]:0x0000000000000010




Last Coverpoint : ['rd : x13', 'rs1 : f10', 'rs2 : f3', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000450]:flt.h a3, fa0, ft3
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh a3, 120(a5)
Current Store : [0x8000045c] : sh a7, 122(a5) -- Store: [0x80005cae]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000468]:flt.h t6, ft11, ft10
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sh t6, 130(a5)
Current Store : [0x80000474] : sh a7, 132(a5) -- Store: [0x80005cb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000480]:flt.h t6, ft11, ft10
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:sh t6, 140(a5)
Current Store : [0x8000048c] : sh a7, 142(a5) -- Store: [0x80005cc2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000498]:flt.h t6, ft11, ft10
	-[0x8000049c]:csrrs a7, fflags, zero
	-[0x800004a0]:sh t6, 150(a5)
Current Store : [0x800004a4] : sh a7, 152(a5) -- Store: [0x80005ccc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b0]:flt.h t6, ft11, ft10
	-[0x800004b4]:csrrs a7, fflags, zero
	-[0x800004b8]:sh t6, 160(a5)
Current Store : [0x800004bc] : sh a7, 162(a5) -- Store: [0x80005cd6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004c8]:flt.h t6, ft11, ft10
	-[0x800004cc]:csrrs a7, fflags, zero
	-[0x800004d0]:sh t6, 170(a5)
Current Store : [0x800004d4] : sh a7, 172(a5) -- Store: [0x80005ce0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004e0]:flt.h t6, ft11, ft10
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:sh t6, 180(a5)
Current Store : [0x800004ec] : sh a7, 182(a5) -- Store: [0x80005cea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004f8]:flt.h t6, ft11, ft10
	-[0x800004fc]:csrrs a7, fflags, zero
	-[0x80000500]:sh t6, 190(a5)
Current Store : [0x80000504] : sh a7, 192(a5) -- Store: [0x80005cf4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000510]:flt.h t6, ft11, ft10
	-[0x80000514]:csrrs a7, fflags, zero
	-[0x80000518]:sh t6, 200(a5)
Current Store : [0x8000051c] : sh a7, 202(a5) -- Store: [0x80005cfe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000528]:flt.h t6, ft11, ft10
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:sh t6, 210(a5)
Current Store : [0x80000534] : sh a7, 212(a5) -- Store: [0x80005d08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000540]:flt.h t6, ft11, ft10
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:sh t6, 220(a5)
Current Store : [0x8000054c] : sh a7, 222(a5) -- Store: [0x80005d12]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000558]:flt.h t6, ft11, ft10
	-[0x8000055c]:csrrs a7, fflags, zero
	-[0x80000560]:sh t6, 230(a5)
Current Store : [0x80000564] : sh a7, 232(a5) -- Store: [0x80005d1c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000570]:flt.h t6, ft11, ft10
	-[0x80000574]:csrrs a7, fflags, zero
	-[0x80000578]:sh t6, 240(a5)
Current Store : [0x8000057c] : sh a7, 242(a5) -- Store: [0x80005d26]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000588]:flt.h t6, ft11, ft10
	-[0x8000058c]:csrrs a7, fflags, zero
	-[0x80000590]:sh t6, 250(a5)
Current Store : [0x80000594] : sh a7, 252(a5) -- Store: [0x80005d30]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005a0]:flt.h t6, ft11, ft10
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:sh t6, 260(a5)
Current Store : [0x800005ac] : sh a7, 262(a5) -- Store: [0x80005d3a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005b8]:flt.h t6, ft11, ft10
	-[0x800005bc]:csrrs a7, fflags, zero
	-[0x800005c0]:sh t6, 270(a5)
Current Store : [0x800005c4] : sh a7, 272(a5) -- Store: [0x80005d44]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005d0]:flt.h t6, ft11, ft10
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:sh t6, 280(a5)
Current Store : [0x800005dc] : sh a7, 282(a5) -- Store: [0x80005d4e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005e8]:flt.h t6, ft11, ft10
	-[0x800005ec]:csrrs a7, fflags, zero
	-[0x800005f0]:sh t6, 290(a5)
Current Store : [0x800005f4] : sh a7, 292(a5) -- Store: [0x80005d58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000600]:flt.h t6, ft11, ft10
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:sh t6, 300(a5)
Current Store : [0x8000060c] : sh a7, 302(a5) -- Store: [0x80005d62]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000618]:flt.h t6, ft11, ft10
	-[0x8000061c]:csrrs a7, fflags, zero
	-[0x80000620]:sh t6, 310(a5)
Current Store : [0x80000624] : sh a7, 312(a5) -- Store: [0x80005d6c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000630]:flt.h t6, ft11, ft10
	-[0x80000634]:csrrs a7, fflags, zero
	-[0x80000638]:sh t6, 320(a5)
Current Store : [0x8000063c] : sh a7, 322(a5) -- Store: [0x80005d76]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000648]:flt.h t6, ft11, ft10
	-[0x8000064c]:csrrs a7, fflags, zero
	-[0x80000650]:sh t6, 330(a5)
Current Store : [0x80000654] : sh a7, 332(a5) -- Store: [0x80005d80]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000660]:flt.h t6, ft11, ft10
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:sh t6, 340(a5)
Current Store : [0x8000066c] : sh a7, 342(a5) -- Store: [0x80005d8a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000678]:flt.h t6, ft11, ft10
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:sh t6, 350(a5)
Current Store : [0x80000684] : sh a7, 352(a5) -- Store: [0x80005d94]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000690]:flt.h t6, ft11, ft10
	-[0x80000694]:csrrs a7, fflags, zero
	-[0x80000698]:sh t6, 360(a5)
Current Store : [0x8000069c] : sh a7, 362(a5) -- Store: [0x80005d9e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006a8]:flt.h t6, ft11, ft10
	-[0x800006ac]:csrrs a7, fflags, zero
	-[0x800006b0]:sh t6, 370(a5)
Current Store : [0x800006b4] : sh a7, 372(a5) -- Store: [0x80005da8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006c0]:flt.h t6, ft11, ft10
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:sh t6, 380(a5)
Current Store : [0x800006cc] : sh a7, 382(a5) -- Store: [0x80005db2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006d8]:flt.h t6, ft11, ft10
	-[0x800006dc]:csrrs a7, fflags, zero
	-[0x800006e0]:sh t6, 390(a5)
Current Store : [0x800006e4] : sh a7, 392(a5) -- Store: [0x80005dbc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006f0]:flt.h t6, ft11, ft10
	-[0x800006f4]:csrrs a7, fflags, zero
	-[0x800006f8]:sh t6, 400(a5)
Current Store : [0x800006fc] : sh a7, 402(a5) -- Store: [0x80005dc6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000708]:flt.h t6, ft11, ft10
	-[0x8000070c]:csrrs a7, fflags, zero
	-[0x80000710]:sh t6, 410(a5)
Current Store : [0x80000714] : sh a7, 412(a5) -- Store: [0x80005dd0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000720]:flt.h t6, ft11, ft10
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:sh t6, 420(a5)
Current Store : [0x8000072c] : sh a7, 422(a5) -- Store: [0x80005dda]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000738]:flt.h t6, ft11, ft10
	-[0x8000073c]:csrrs a7, fflags, zero
	-[0x80000740]:sh t6, 430(a5)
Current Store : [0x80000744] : sh a7, 432(a5) -- Store: [0x80005de4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000750]:flt.h t6, ft11, ft10
	-[0x80000754]:csrrs a7, fflags, zero
	-[0x80000758]:sh t6, 440(a5)
Current Store : [0x8000075c] : sh a7, 442(a5) -- Store: [0x80005dee]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000768]:flt.h t6, ft11, ft10
	-[0x8000076c]:csrrs a7, fflags, zero
	-[0x80000770]:sh t6, 450(a5)
Current Store : [0x80000774] : sh a7, 452(a5) -- Store: [0x80005df8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000780]:flt.h t6, ft11, ft10
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:sh t6, 460(a5)
Current Store : [0x8000078c] : sh a7, 462(a5) -- Store: [0x80005e02]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000798]:flt.h t6, ft11, ft10
	-[0x8000079c]:csrrs a7, fflags, zero
	-[0x800007a0]:sh t6, 470(a5)
Current Store : [0x800007a4] : sh a7, 472(a5) -- Store: [0x80005e0c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007b0]:flt.h t6, ft11, ft10
	-[0x800007b4]:csrrs a7, fflags, zero
	-[0x800007b8]:sh t6, 480(a5)
Current Store : [0x800007bc] : sh a7, 482(a5) -- Store: [0x80005e16]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007c8]:flt.h t6, ft11, ft10
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:sh t6, 490(a5)
Current Store : [0x800007d4] : sh a7, 492(a5) -- Store: [0x80005e20]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007e0]:flt.h t6, ft11, ft10
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:sh t6, 500(a5)
Current Store : [0x800007ec] : sh a7, 502(a5) -- Store: [0x80005e2a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007f8]:flt.h t6, ft11, ft10
	-[0x800007fc]:csrrs a7, fflags, zero
	-[0x80000800]:sh t6, 510(a5)
Current Store : [0x80000804] : sh a7, 512(a5) -- Store: [0x80005e34]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000810]:flt.h t6, ft11, ft10
	-[0x80000814]:csrrs a7, fflags, zero
	-[0x80000818]:sh t6, 520(a5)
Current Store : [0x8000081c] : sh a7, 522(a5) -- Store: [0x80005e3e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000828]:flt.h t6, ft11, ft10
	-[0x8000082c]:csrrs a7, fflags, zero
	-[0x80000830]:sh t6, 530(a5)
Current Store : [0x80000834] : sh a7, 532(a5) -- Store: [0x80005e48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000840]:flt.h t6, ft11, ft10
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:sh t6, 540(a5)
Current Store : [0x8000084c] : sh a7, 542(a5) -- Store: [0x80005e52]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000858]:flt.h t6, ft11, ft10
	-[0x8000085c]:csrrs a7, fflags, zero
	-[0x80000860]:sh t6, 550(a5)
Current Store : [0x80000864] : sh a7, 552(a5) -- Store: [0x80005e5c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000870]:flt.h t6, ft11, ft10
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:sh t6, 560(a5)
Current Store : [0x8000087c] : sh a7, 562(a5) -- Store: [0x80005e66]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000888]:flt.h t6, ft11, ft10
	-[0x8000088c]:csrrs a7, fflags, zero
	-[0x80000890]:sh t6, 570(a5)
Current Store : [0x80000894] : sh a7, 572(a5) -- Store: [0x80005e70]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008a0]:flt.h t6, ft11, ft10
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:sh t6, 580(a5)
Current Store : [0x800008ac] : sh a7, 582(a5) -- Store: [0x80005e7a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008b8]:flt.h t6, ft11, ft10
	-[0x800008bc]:csrrs a7, fflags, zero
	-[0x800008c0]:sh t6, 590(a5)
Current Store : [0x800008c4] : sh a7, 592(a5) -- Store: [0x80005e84]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008d0]:flt.h t6, ft11, ft10
	-[0x800008d4]:csrrs a7, fflags, zero
	-[0x800008d8]:sh t6, 600(a5)
Current Store : [0x800008dc] : sh a7, 602(a5) -- Store: [0x80005e8e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008e8]:flt.h t6, ft11, ft10
	-[0x800008ec]:csrrs a7, fflags, zero
	-[0x800008f0]:sh t6, 610(a5)
Current Store : [0x800008f4] : sh a7, 612(a5) -- Store: [0x80005e98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000900]:flt.h t6, ft11, ft10
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:sh t6, 620(a5)
Current Store : [0x8000090c] : sh a7, 622(a5) -- Store: [0x80005ea2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000918]:flt.h t6, ft11, ft10
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:sh t6, 630(a5)
Current Store : [0x80000924] : sh a7, 632(a5) -- Store: [0x80005eac]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000930]:flt.h t6, ft11, ft10
	-[0x80000934]:csrrs a7, fflags, zero
	-[0x80000938]:sh t6, 640(a5)
Current Store : [0x8000093c] : sh a7, 642(a5) -- Store: [0x80005eb6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000948]:flt.h t6, ft11, ft10
	-[0x8000094c]:csrrs a7, fflags, zero
	-[0x80000950]:sh t6, 650(a5)
Current Store : [0x80000954] : sh a7, 652(a5) -- Store: [0x80005ec0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000960]:flt.h t6, ft11, ft10
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:sh t6, 660(a5)
Current Store : [0x8000096c] : sh a7, 662(a5) -- Store: [0x80005eca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000978]:flt.h t6, ft11, ft10
	-[0x8000097c]:csrrs a7, fflags, zero
	-[0x80000980]:sh t6, 670(a5)
Current Store : [0x80000984] : sh a7, 672(a5) -- Store: [0x80005ed4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000990]:flt.h t6, ft11, ft10
	-[0x80000994]:csrrs a7, fflags, zero
	-[0x80000998]:sh t6, 680(a5)
Current Store : [0x8000099c] : sh a7, 682(a5) -- Store: [0x80005ede]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009a8]:flt.h t6, ft11, ft10
	-[0x800009ac]:csrrs a7, fflags, zero
	-[0x800009b0]:sh t6, 690(a5)
Current Store : [0x800009b4] : sh a7, 692(a5) -- Store: [0x80005ee8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009c0]:flt.h t6, ft11, ft10
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:sh t6, 700(a5)
Current Store : [0x800009cc] : sh a7, 702(a5) -- Store: [0x80005ef2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009d8]:flt.h t6, ft11, ft10
	-[0x800009dc]:csrrs a7, fflags, zero
	-[0x800009e0]:sh t6, 710(a5)
Current Store : [0x800009e4] : sh a7, 712(a5) -- Store: [0x80005efc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009f0]:flt.h t6, ft11, ft10
	-[0x800009f4]:csrrs a7, fflags, zero
	-[0x800009f8]:sh t6, 720(a5)
Current Store : [0x800009fc] : sh a7, 722(a5) -- Store: [0x80005f06]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a08]:flt.h t6, ft11, ft10
	-[0x80000a0c]:csrrs a7, fflags, zero
	-[0x80000a10]:sh t6, 730(a5)
Current Store : [0x80000a14] : sh a7, 732(a5) -- Store: [0x80005f10]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a20]:flt.h t6, ft11, ft10
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:sh t6, 740(a5)
Current Store : [0x80000a2c] : sh a7, 742(a5) -- Store: [0x80005f1a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a38]:flt.h t6, ft11, ft10
	-[0x80000a3c]:csrrs a7, fflags, zero
	-[0x80000a40]:sh t6, 750(a5)
Current Store : [0x80000a44] : sh a7, 752(a5) -- Store: [0x80005f24]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a50]:flt.h t6, ft11, ft10
	-[0x80000a54]:csrrs a7, fflags, zero
	-[0x80000a58]:sh t6, 760(a5)
Current Store : [0x80000a5c] : sh a7, 762(a5) -- Store: [0x80005f2e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a68]:flt.h t6, ft11, ft10
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:sh t6, 770(a5)
Current Store : [0x80000a74] : sh a7, 772(a5) -- Store: [0x80005f38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a80]:flt.h t6, ft11, ft10
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:sh t6, 780(a5)
Current Store : [0x80000a8c] : sh a7, 782(a5) -- Store: [0x80005f42]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a98]:flt.h t6, ft11, ft10
	-[0x80000a9c]:csrrs a7, fflags, zero
	-[0x80000aa0]:sh t6, 790(a5)
Current Store : [0x80000aa4] : sh a7, 792(a5) -- Store: [0x80005f4c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ab0]:flt.h t6, ft11, ft10
	-[0x80000ab4]:csrrs a7, fflags, zero
	-[0x80000ab8]:sh t6, 800(a5)
Current Store : [0x80000abc] : sh a7, 802(a5) -- Store: [0x80005f56]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ac8]:flt.h t6, ft11, ft10
	-[0x80000acc]:csrrs a7, fflags, zero
	-[0x80000ad0]:sh t6, 810(a5)
Current Store : [0x80000ad4] : sh a7, 812(a5) -- Store: [0x80005f60]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:flt.h t6, ft11, ft10
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:sh t6, 820(a5)
Current Store : [0x80000aec] : sh a7, 822(a5) -- Store: [0x80005f6a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000af8]:flt.h t6, ft11, ft10
	-[0x80000afc]:csrrs a7, fflags, zero
	-[0x80000b00]:sh t6, 830(a5)
Current Store : [0x80000b04] : sh a7, 832(a5) -- Store: [0x80005f74]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b10]:flt.h t6, ft11, ft10
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:sh t6, 840(a5)
Current Store : [0x80000b1c] : sh a7, 842(a5) -- Store: [0x80005f7e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b28]:flt.h t6, ft11, ft10
	-[0x80000b2c]:csrrs a7, fflags, zero
	-[0x80000b30]:sh t6, 850(a5)
Current Store : [0x80000b34] : sh a7, 852(a5) -- Store: [0x80005f88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b40]:flt.h t6, ft11, ft10
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:sh t6, 860(a5)
Current Store : [0x80000b4c] : sh a7, 862(a5) -- Store: [0x80005f92]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b58]:flt.h t6, ft11, ft10
	-[0x80000b5c]:csrrs a7, fflags, zero
	-[0x80000b60]:sh t6, 870(a5)
Current Store : [0x80000b64] : sh a7, 872(a5) -- Store: [0x80005f9c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b70]:flt.h t6, ft11, ft10
	-[0x80000b74]:csrrs a7, fflags, zero
	-[0x80000b78]:sh t6, 880(a5)
Current Store : [0x80000b7c] : sh a7, 882(a5) -- Store: [0x80005fa6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b88]:flt.h t6, ft11, ft10
	-[0x80000b8c]:csrrs a7, fflags, zero
	-[0x80000b90]:sh t6, 890(a5)
Current Store : [0x80000b94] : sh a7, 892(a5) -- Store: [0x80005fb0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:flt.h t6, ft11, ft10
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:sh t6, 900(a5)
Current Store : [0x80000bac] : sh a7, 902(a5) -- Store: [0x80005fba]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:flt.h t6, ft11, ft10
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:sh t6, 910(a5)
Current Store : [0x80000bc4] : sh a7, 912(a5) -- Store: [0x80005fc4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bd0]:flt.h t6, ft11, ft10
	-[0x80000bd4]:csrrs a7, fflags, zero
	-[0x80000bd8]:sh t6, 920(a5)
Current Store : [0x80000bdc] : sh a7, 922(a5) -- Store: [0x80005fce]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000be8]:flt.h t6, ft11, ft10
	-[0x80000bec]:csrrs a7, fflags, zero
	-[0x80000bf0]:sh t6, 930(a5)
Current Store : [0x80000bf4] : sh a7, 932(a5) -- Store: [0x80005fd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c00]:flt.h t6, ft11, ft10
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:sh t6, 940(a5)
Current Store : [0x80000c0c] : sh a7, 942(a5) -- Store: [0x80005fe2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c18]:flt.h t6, ft11, ft10
	-[0x80000c1c]:csrrs a7, fflags, zero
	-[0x80000c20]:sh t6, 950(a5)
Current Store : [0x80000c24] : sh a7, 952(a5) -- Store: [0x80005fec]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c30]:flt.h t6, ft11, ft10
	-[0x80000c34]:csrrs a7, fflags, zero
	-[0x80000c38]:sh t6, 960(a5)
Current Store : [0x80000c3c] : sh a7, 962(a5) -- Store: [0x80005ff6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c48]:flt.h t6, ft11, ft10
	-[0x80000c4c]:csrrs a7, fflags, zero
	-[0x80000c50]:sh t6, 970(a5)
Current Store : [0x80000c54] : sh a7, 972(a5) -- Store: [0x80006000]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c60]:flt.h t6, ft11, ft10
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:sh t6, 980(a5)
Current Store : [0x80000c6c] : sh a7, 982(a5) -- Store: [0x8000600a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c78]:flt.h t6, ft11, ft10
	-[0x80000c7c]:csrrs a7, fflags, zero
	-[0x80000c80]:sh t6, 990(a5)
Current Store : [0x80000c84] : sh a7, 992(a5) -- Store: [0x80006014]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c90]:flt.h t6, ft11, ft10
	-[0x80000c94]:csrrs a7, fflags, zero
	-[0x80000c98]:sh t6, 1000(a5)
Current Store : [0x80000c9c] : sh a7, 1002(a5) -- Store: [0x8000601e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ca8]:flt.h t6, ft11, ft10
	-[0x80000cac]:csrrs a7, fflags, zero
	-[0x80000cb0]:sh t6, 1010(a5)
Current Store : [0x80000cb4] : sh a7, 1012(a5) -- Store: [0x80006028]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:flt.h t6, ft11, ft10
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:sh t6, 1020(a5)
Current Store : [0x80000ccc] : sh a7, 1022(a5) -- Store: [0x80006032]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cd8]:flt.h t6, ft11, ft10
	-[0x80000cdc]:csrrs a7, fflags, zero
	-[0x80000ce0]:sh t6, 1030(a5)
Current Store : [0x80000ce4] : sh a7, 1032(a5) -- Store: [0x8000603c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cf0]:flt.h t6, ft11, ft10
	-[0x80000cf4]:csrrs a7, fflags, zero
	-[0x80000cf8]:sh t6, 1040(a5)
Current Store : [0x80000cfc] : sh a7, 1042(a5) -- Store: [0x80006046]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d08]:flt.h t6, ft11, ft10
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:sh t6, 1050(a5)
Current Store : [0x80000d14] : sh a7, 1052(a5) -- Store: [0x80006050]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d20]:flt.h t6, ft11, ft10
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:sh t6, 1060(a5)
Current Store : [0x80000d2c] : sh a7, 1062(a5) -- Store: [0x8000605a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d38]:flt.h t6, ft11, ft10
	-[0x80000d3c]:csrrs a7, fflags, zero
	-[0x80000d40]:sh t6, 1070(a5)
Current Store : [0x80000d44] : sh a7, 1072(a5) -- Store: [0x80006064]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d50]:flt.h t6, ft11, ft10
	-[0x80000d54]:csrrs a7, fflags, zero
	-[0x80000d58]:sh t6, 1080(a5)
Current Store : [0x80000d5c] : sh a7, 1082(a5) -- Store: [0x8000606e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d68]:flt.h t6, ft11, ft10
	-[0x80000d6c]:csrrs a7, fflags, zero
	-[0x80000d70]:sh t6, 1090(a5)
Current Store : [0x80000d74] : sh a7, 1092(a5) -- Store: [0x80006078]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d80]:flt.h t6, ft11, ft10
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:sh t6, 1100(a5)
Current Store : [0x80000d8c] : sh a7, 1102(a5) -- Store: [0x80006082]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d98]:flt.h t6, ft11, ft10
	-[0x80000d9c]:csrrs a7, fflags, zero
	-[0x80000da0]:sh t6, 1110(a5)
Current Store : [0x80000da4] : sh a7, 1112(a5) -- Store: [0x8000608c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000db0]:flt.h t6, ft11, ft10
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:sh t6, 1120(a5)
Current Store : [0x80000dbc] : sh a7, 1122(a5) -- Store: [0x80006096]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000dc8]:flt.h t6, ft11, ft10
	-[0x80000dcc]:csrrs a7, fflags, zero
	-[0x80000dd0]:sh t6, 1130(a5)
Current Store : [0x80000dd4] : sh a7, 1132(a5) -- Store: [0x800060a0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000de0]:flt.h t6, ft11, ft10
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:sh t6, 1140(a5)
Current Store : [0x80000dec] : sh a7, 1142(a5) -- Store: [0x800060aa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000df8]:flt.h t6, ft11, ft10
	-[0x80000dfc]:csrrs a7, fflags, zero
	-[0x80000e00]:sh t6, 1150(a5)
Current Store : [0x80000e04] : sh a7, 1152(a5) -- Store: [0x800060b4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e10]:flt.h t6, ft11, ft10
	-[0x80000e14]:csrrs a7, fflags, zero
	-[0x80000e18]:sh t6, 1160(a5)
Current Store : [0x80000e1c] : sh a7, 1162(a5) -- Store: [0x800060be]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e28]:flt.h t6, ft11, ft10
	-[0x80000e2c]:csrrs a7, fflags, zero
	-[0x80000e30]:sh t6, 1170(a5)
Current Store : [0x80000e34] : sh a7, 1172(a5) -- Store: [0x800060c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e40]:flt.h t6, ft11, ft10
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:sh t6, 1180(a5)
Current Store : [0x80000e4c] : sh a7, 1182(a5) -- Store: [0x800060d2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e58]:flt.h t6, ft11, ft10
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:sh t6, 1190(a5)
Current Store : [0x80000e64] : sh a7, 1192(a5) -- Store: [0x800060dc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e70]:flt.h t6, ft11, ft10
	-[0x80000e74]:csrrs a7, fflags, zero
	-[0x80000e78]:sh t6, 1200(a5)
Current Store : [0x80000e7c] : sh a7, 1202(a5) -- Store: [0x800060e6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e88]:flt.h t6, ft11, ft10
	-[0x80000e8c]:csrrs a7, fflags, zero
	-[0x80000e90]:sh t6, 1210(a5)
Current Store : [0x80000e94] : sh a7, 1212(a5) -- Store: [0x800060f0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ea0]:flt.h t6, ft11, ft10
	-[0x80000ea4]:csrrs a7, fflags, zero
	-[0x80000ea8]:sh t6, 1220(a5)
Current Store : [0x80000eac] : sh a7, 1222(a5) -- Store: [0x800060fa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000eb8]:flt.h t6, ft11, ft10
	-[0x80000ebc]:csrrs a7, fflags, zero
	-[0x80000ec0]:sh t6, 1230(a5)
Current Store : [0x80000ec4] : sh a7, 1232(a5) -- Store: [0x80006104]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ed0]:flt.h t6, ft11, ft10
	-[0x80000ed4]:csrrs a7, fflags, zero
	-[0x80000ed8]:sh t6, 1240(a5)
Current Store : [0x80000edc] : sh a7, 1242(a5) -- Store: [0x8000610e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ee8]:flt.h t6, ft11, ft10
	-[0x80000eec]:csrrs a7, fflags, zero
	-[0x80000ef0]:sh t6, 1250(a5)
Current Store : [0x80000ef4] : sh a7, 1252(a5) -- Store: [0x80006118]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f00]:flt.h t6, ft11, ft10
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:sh t6, 1260(a5)
Current Store : [0x80000f0c] : sh a7, 1262(a5) -- Store: [0x80006122]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f18]:flt.h t6, ft11, ft10
	-[0x80000f1c]:csrrs a7, fflags, zero
	-[0x80000f20]:sh t6, 1270(a5)
Current Store : [0x80000f24] : sh a7, 1272(a5) -- Store: [0x8000612c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f30]:flt.h t6, ft11, ft10
	-[0x80000f34]:csrrs a7, fflags, zero
	-[0x80000f38]:sh t6, 1280(a5)
Current Store : [0x80000f3c] : sh a7, 1282(a5) -- Store: [0x80006136]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f48]:flt.h t6, ft11, ft10
	-[0x80000f4c]:csrrs a7, fflags, zero
	-[0x80000f50]:sh t6, 1290(a5)
Current Store : [0x80000f54] : sh a7, 1292(a5) -- Store: [0x80006140]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f60]:flt.h t6, ft11, ft10
	-[0x80000f64]:csrrs a7, fflags, zero
	-[0x80000f68]:sh t6, 1300(a5)
Current Store : [0x80000f6c] : sh a7, 1302(a5) -- Store: [0x8000614a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f78]:flt.h t6, ft11, ft10
	-[0x80000f7c]:csrrs a7, fflags, zero
	-[0x80000f80]:sh t6, 1310(a5)
Current Store : [0x80000f84] : sh a7, 1312(a5) -- Store: [0x80006154]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f90]:flt.h t6, ft11, ft10
	-[0x80000f94]:csrrs a7, fflags, zero
	-[0x80000f98]:sh t6, 1320(a5)
Current Store : [0x80000f9c] : sh a7, 1322(a5) -- Store: [0x8000615e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:flt.h t6, ft11, ft10
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:sh t6, 1330(a5)
Current Store : [0x80000fb4] : sh a7, 1332(a5) -- Store: [0x80006168]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fc0]:flt.h t6, ft11, ft10
	-[0x80000fc4]:csrrs a7, fflags, zero
	-[0x80000fc8]:sh t6, 1340(a5)
Current Store : [0x80000fcc] : sh a7, 1342(a5) -- Store: [0x80006172]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fd8]:flt.h t6, ft11, ft10
	-[0x80000fdc]:csrrs a7, fflags, zero
	-[0x80000fe0]:sh t6, 1350(a5)
Current Store : [0x80000fe4] : sh a7, 1352(a5) -- Store: [0x8000617c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ff0]:flt.h t6, ft11, ft10
	-[0x80000ff4]:csrrs a7, fflags, zero
	-[0x80000ff8]:sh t6, 1360(a5)
Current Store : [0x80000ffc] : sh a7, 1362(a5) -- Store: [0x80006186]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001008]:flt.h t6, ft11, ft10
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:sh t6, 1370(a5)
Current Store : [0x80001014] : sh a7, 1372(a5) -- Store: [0x80006190]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001020]:flt.h t6, ft11, ft10
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:sh t6, 1380(a5)
Current Store : [0x8000102c] : sh a7, 1382(a5) -- Store: [0x8000619a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001038]:flt.h t6, ft11, ft10
	-[0x8000103c]:csrrs a7, fflags, zero
	-[0x80001040]:sh t6, 1390(a5)
Current Store : [0x80001044] : sh a7, 1392(a5) -- Store: [0x800061a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001050]:flt.h t6, ft11, ft10
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:sh t6, 1400(a5)
Current Store : [0x8000105c] : sh a7, 1402(a5) -- Store: [0x800061ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001068]:flt.h t6, ft11, ft10
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:sh t6, 1410(a5)
Current Store : [0x80001074] : sh a7, 1412(a5) -- Store: [0x800061b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001080]:flt.h t6, ft11, ft10
	-[0x80001084]:csrrs a7, fflags, zero
	-[0x80001088]:sh t6, 1420(a5)
Current Store : [0x8000108c] : sh a7, 1422(a5) -- Store: [0x800061c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001098]:flt.h t6, ft11, ft10
	-[0x8000109c]:csrrs a7, fflags, zero
	-[0x800010a0]:sh t6, 1430(a5)
Current Store : [0x800010a4] : sh a7, 1432(a5) -- Store: [0x800061cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010b0]:flt.h t6, ft11, ft10
	-[0x800010b4]:csrrs a7, fflags, zero
	-[0x800010b8]:sh t6, 1440(a5)
Current Store : [0x800010bc] : sh a7, 1442(a5) -- Store: [0x800061d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c8]:flt.h t6, ft11, ft10
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:sh t6, 1450(a5)
Current Store : [0x800010d4] : sh a7, 1452(a5) -- Store: [0x800061e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010e0]:flt.h t6, ft11, ft10
	-[0x800010e4]:csrrs a7, fflags, zero
	-[0x800010e8]:sh t6, 1460(a5)
Current Store : [0x800010ec] : sh a7, 1462(a5) -- Store: [0x800061ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010f8]:flt.h t6, ft11, ft10
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:sh t6, 1470(a5)
Current Store : [0x80001104] : sh a7, 1472(a5) -- Store: [0x800061f4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001110]:flt.h t6, ft11, ft10
	-[0x80001114]:csrrs a7, fflags, zero
	-[0x80001118]:sh t6, 1480(a5)
Current Store : [0x8000111c] : sh a7, 1482(a5) -- Store: [0x800061fe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001128]:flt.h t6, ft11, ft10
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:sh t6, 1490(a5)
Current Store : [0x80001134] : sh a7, 1492(a5) -- Store: [0x80006208]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001140]:flt.h t6, ft11, ft10
	-[0x80001144]:csrrs a7, fflags, zero
	-[0x80001148]:sh t6, 1500(a5)
Current Store : [0x8000114c] : sh a7, 1502(a5) -- Store: [0x80006212]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001158]:flt.h t6, ft11, ft10
	-[0x8000115c]:csrrs a7, fflags, zero
	-[0x80001160]:sh t6, 1510(a5)
Current Store : [0x80001164] : sh a7, 1512(a5) -- Store: [0x8000621c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001170]:flt.h t6, ft11, ft10
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:sh t6, 1520(a5)
Current Store : [0x8000117c] : sh a7, 1522(a5) -- Store: [0x80006226]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001188]:flt.h t6, ft11, ft10
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:sh t6, 1530(a5)
Current Store : [0x80001194] : sh a7, 1532(a5) -- Store: [0x80006230]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011a0]:flt.h t6, ft11, ft10
	-[0x800011a4]:csrrs a7, fflags, zero
	-[0x800011a8]:sh t6, 1540(a5)
Current Store : [0x800011ac] : sh a7, 1542(a5) -- Store: [0x8000623a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011b8]:flt.h t6, ft11, ft10
	-[0x800011bc]:csrrs a7, fflags, zero
	-[0x800011c0]:sh t6, 1550(a5)
Current Store : [0x800011c4] : sh a7, 1552(a5) -- Store: [0x80006244]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011d0]:flt.h t6, ft11, ft10
	-[0x800011d4]:csrrs a7, fflags, zero
	-[0x800011d8]:sh t6, 1560(a5)
Current Store : [0x800011dc] : sh a7, 1562(a5) -- Store: [0x8000624e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011e8]:flt.h t6, ft11, ft10
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:sh t6, 1570(a5)
Current Store : [0x800011f4] : sh a7, 1572(a5) -- Store: [0x80006258]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001200]:flt.h t6, ft11, ft10
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:sh t6, 1580(a5)
Current Store : [0x8000120c] : sh a7, 1582(a5) -- Store: [0x80006262]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001218]:flt.h t6, ft11, ft10
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:sh t6, 1590(a5)
Current Store : [0x80001224] : sh a7, 1592(a5) -- Store: [0x8000626c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001230]:flt.h t6, ft11, ft10
	-[0x80001234]:csrrs a7, fflags, zero
	-[0x80001238]:sh t6, 1600(a5)
Current Store : [0x8000123c] : sh a7, 1602(a5) -- Store: [0x80006276]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001248]:flt.h t6, ft11, ft10
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:sh t6, 1610(a5)
Current Store : [0x80001254] : sh a7, 1612(a5) -- Store: [0x80006280]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001260]:flt.h t6, ft11, ft10
	-[0x80001264]:csrrs a7, fflags, zero
	-[0x80001268]:sh t6, 1620(a5)
Current Store : [0x8000126c] : sh a7, 1622(a5) -- Store: [0x8000628a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001278]:flt.h t6, ft11, ft10
	-[0x8000127c]:csrrs a7, fflags, zero
	-[0x80001280]:sh t6, 1630(a5)
Current Store : [0x80001284] : sh a7, 1632(a5) -- Store: [0x80006294]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001290]:flt.h t6, ft11, ft10
	-[0x80001294]:csrrs a7, fflags, zero
	-[0x80001298]:sh t6, 1640(a5)
Current Store : [0x8000129c] : sh a7, 1642(a5) -- Store: [0x8000629e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012a8]:flt.h t6, ft11, ft10
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:sh t6, 1650(a5)
Current Store : [0x800012b4] : sh a7, 1652(a5) -- Store: [0x800062a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012c0]:flt.h t6, ft11, ft10
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:sh t6, 1660(a5)
Current Store : [0x800012cc] : sh a7, 1662(a5) -- Store: [0x800062b2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012d8]:flt.h t6, ft11, ft10
	-[0x800012dc]:csrrs a7, fflags, zero
	-[0x800012e0]:sh t6, 1670(a5)
Current Store : [0x800012e4] : sh a7, 1672(a5) -- Store: [0x800062bc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012f0]:flt.h t6, ft11, ft10
	-[0x800012f4]:csrrs a7, fflags, zero
	-[0x800012f8]:sh t6, 1680(a5)
Current Store : [0x800012fc] : sh a7, 1682(a5) -- Store: [0x800062c6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001308]:flt.h t6, ft11, ft10
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:sh t6, 1690(a5)
Current Store : [0x80001314] : sh a7, 1692(a5) -- Store: [0x800062d0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001320]:flt.h t6, ft11, ft10
	-[0x80001324]:csrrs a7, fflags, zero
	-[0x80001328]:sh t6, 1700(a5)
Current Store : [0x8000132c] : sh a7, 1702(a5) -- Store: [0x800062da]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001338]:flt.h t6, ft11, ft10
	-[0x8000133c]:csrrs a7, fflags, zero
	-[0x80001340]:sh t6, 1710(a5)
Current Store : [0x80001344] : sh a7, 1712(a5) -- Store: [0x800062e4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001350]:flt.h t6, ft11, ft10
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:sh t6, 1720(a5)
Current Store : [0x8000135c] : sh a7, 1722(a5) -- Store: [0x800062ee]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001368]:flt.h t6, ft11, ft10
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:sh t6, 1730(a5)
Current Store : [0x80001374] : sh a7, 1732(a5) -- Store: [0x800062f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001380]:flt.h t6, ft11, ft10
	-[0x80001384]:csrrs a7, fflags, zero
	-[0x80001388]:sh t6, 1740(a5)
Current Store : [0x8000138c] : sh a7, 1742(a5) -- Store: [0x80006302]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001398]:flt.h t6, ft11, ft10
	-[0x8000139c]:csrrs a7, fflags, zero
	-[0x800013a0]:sh t6, 1750(a5)
Current Store : [0x800013a4] : sh a7, 1752(a5) -- Store: [0x8000630c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013b0]:flt.h t6, ft11, ft10
	-[0x800013b4]:csrrs a7, fflags, zero
	-[0x800013b8]:sh t6, 1760(a5)
Current Store : [0x800013bc] : sh a7, 1762(a5) -- Store: [0x80006316]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013c8]:flt.h t6, ft11, ft10
	-[0x800013cc]:csrrs a7, fflags, zero
	-[0x800013d0]:sh t6, 1770(a5)
Current Store : [0x800013d4] : sh a7, 1772(a5) -- Store: [0x80006320]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013e0]:flt.h t6, ft11, ft10
	-[0x800013e4]:csrrs a7, fflags, zero
	-[0x800013e8]:sh t6, 1780(a5)
Current Store : [0x800013ec] : sh a7, 1782(a5) -- Store: [0x8000632a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013f8]:flt.h t6, ft11, ft10
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:sh t6, 1790(a5)
Current Store : [0x80001404] : sh a7, 1792(a5) -- Store: [0x80006334]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001410]:flt.h t6, ft11, ft10
	-[0x80001414]:csrrs a7, fflags, zero
	-[0x80001418]:sh t6, 1800(a5)
Current Store : [0x8000141c] : sh a7, 1802(a5) -- Store: [0x8000633e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001428]:flt.h t6, ft11, ft10
	-[0x8000142c]:csrrs a7, fflags, zero
	-[0x80001430]:sh t6, 1810(a5)
Current Store : [0x80001434] : sh a7, 1812(a5) -- Store: [0x80006348]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001440]:flt.h t6, ft11, ft10
	-[0x80001444]:csrrs a7, fflags, zero
	-[0x80001448]:sh t6, 1820(a5)
Current Store : [0x8000144c] : sh a7, 1822(a5) -- Store: [0x80006352]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001458]:flt.h t6, ft11, ft10
	-[0x8000145c]:csrrs a7, fflags, zero
	-[0x80001460]:sh t6, 1830(a5)
Current Store : [0x80001464] : sh a7, 1832(a5) -- Store: [0x8000635c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001470]:flt.h t6, ft11, ft10
	-[0x80001474]:csrrs a7, fflags, zero
	-[0x80001478]:sh t6, 1840(a5)
Current Store : [0x8000147c] : sh a7, 1842(a5) -- Store: [0x80006366]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001488]:flt.h t6, ft11, ft10
	-[0x8000148c]:csrrs a7, fflags, zero
	-[0x80001490]:sh t6, 1850(a5)
Current Store : [0x80001494] : sh a7, 1852(a5) -- Store: [0x80006370]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014a0]:flt.h t6, ft11, ft10
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:sh t6, 1860(a5)
Current Store : [0x800014ac] : sh a7, 1862(a5) -- Store: [0x8000637a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014b8]:flt.h t6, ft11, ft10
	-[0x800014bc]:csrrs a7, fflags, zero
	-[0x800014c0]:sh t6, 1870(a5)
Current Store : [0x800014c4] : sh a7, 1872(a5) -- Store: [0x80006384]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014d0]:flt.h t6, ft11, ft10
	-[0x800014d4]:csrrs a7, fflags, zero
	-[0x800014d8]:sh t6, 1880(a5)
Current Store : [0x800014dc] : sh a7, 1882(a5) -- Store: [0x8000638e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014e8]:flt.h t6, ft11, ft10
	-[0x800014ec]:csrrs a7, fflags, zero
	-[0x800014f0]:sh t6, 1890(a5)
Current Store : [0x800014f4] : sh a7, 1892(a5) -- Store: [0x80006398]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001500]:flt.h t6, ft11, ft10
	-[0x80001504]:csrrs a7, fflags, zero
	-[0x80001508]:sh t6, 1900(a5)
Current Store : [0x8000150c] : sh a7, 1902(a5) -- Store: [0x800063a2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001518]:flt.h t6, ft11, ft10
	-[0x8000151c]:csrrs a7, fflags, zero
	-[0x80001520]:sh t6, 1910(a5)
Current Store : [0x80001524] : sh a7, 1912(a5) -- Store: [0x800063ac]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001530]:flt.h t6, ft11, ft10
	-[0x80001534]:csrrs a7, fflags, zero
	-[0x80001538]:sh t6, 1920(a5)
Current Store : [0x8000153c] : sh a7, 1922(a5) -- Store: [0x800063b6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001548]:flt.h t6, ft11, ft10
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:sh t6, 1930(a5)
Current Store : [0x80001554] : sh a7, 1932(a5) -- Store: [0x800063c0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001560]:flt.h t6, ft11, ft10
	-[0x80001564]:csrrs a7, fflags, zero
	-[0x80001568]:sh t6, 1940(a5)
Current Store : [0x8000156c] : sh a7, 1942(a5) -- Store: [0x800063ca]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001578]:flt.h t6, ft11, ft10
	-[0x8000157c]:csrrs a7, fflags, zero
	-[0x80001580]:sh t6, 1950(a5)
Current Store : [0x80001584] : sh a7, 1952(a5) -- Store: [0x800063d4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001590]:flt.h t6, ft11, ft10
	-[0x80001594]:csrrs a7, fflags, zero
	-[0x80001598]:sh t6, 1960(a5)
Current Store : [0x8000159c] : sh a7, 1962(a5) -- Store: [0x800063de]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015a8]:flt.h t6, ft11, ft10
	-[0x800015ac]:csrrs a7, fflags, zero
	-[0x800015b0]:sh t6, 1970(a5)
Current Store : [0x800015b4] : sh a7, 1972(a5) -- Store: [0x800063e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015c0]:flt.h t6, ft11, ft10
	-[0x800015c4]:csrrs a7, fflags, zero
	-[0x800015c8]:sh t6, 1980(a5)
Current Store : [0x800015cc] : sh a7, 1982(a5) -- Store: [0x800063f2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015d8]:flt.h t6, ft11, ft10
	-[0x800015dc]:csrrs a7, fflags, zero
	-[0x800015e0]:sh t6, 1990(a5)
Current Store : [0x800015e4] : sh a7, 1992(a5) -- Store: [0x800063fc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015f0]:flt.h t6, ft11, ft10
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:sh t6, 2000(a5)
Current Store : [0x800015fc] : sh a7, 2002(a5) -- Store: [0x80006406]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001608]:flt.h t6, ft11, ft10
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:sh t6, 2010(a5)
Current Store : [0x80001614] : sh a7, 2012(a5) -- Store: [0x80006410]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001620]:flt.h t6, ft11, ft10
	-[0x80001624]:csrrs a7, fflags, zero
	-[0x80001628]:sh t6, 2020(a5)
Current Store : [0x8000162c] : sh a7, 2022(a5) -- Store: [0x8000641a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001640]:flt.h t6, ft11, ft10
	-[0x80001644]:csrrs a7, fflags, zero
	-[0x80001648]:sh t6, 0(a5)
Current Store : [0x8000164c] : sh a7, 2(a5) -- Store: [0x800068e6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001658]:flt.h t6, ft11, ft10
	-[0x8000165c]:csrrs a7, fflags, zero
	-[0x80001660]:sh t6, 10(a5)
Current Store : [0x80001664] : sh a7, 12(a5) -- Store: [0x800068f0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001670]:flt.h t6, ft11, ft10
	-[0x80001674]:csrrs a7, fflags, zero
	-[0x80001678]:sh t6, 20(a5)
Current Store : [0x8000167c] : sh a7, 22(a5) -- Store: [0x800068fa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001688]:flt.h t6, ft11, ft10
	-[0x8000168c]:csrrs a7, fflags, zero
	-[0x80001690]:sh t6, 30(a5)
Current Store : [0x80001694] : sh a7, 32(a5) -- Store: [0x80006904]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016a0]:flt.h t6, ft11, ft10
	-[0x800016a4]:csrrs a7, fflags, zero
	-[0x800016a8]:sh t6, 40(a5)
Current Store : [0x800016ac] : sh a7, 42(a5) -- Store: [0x8000690e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016b8]:flt.h t6, ft11, ft10
	-[0x800016bc]:csrrs a7, fflags, zero
	-[0x800016c0]:sh t6, 50(a5)
Current Store : [0x800016c4] : sh a7, 52(a5) -- Store: [0x80006918]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016d0]:flt.h t6, ft11, ft10
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:sh t6, 60(a5)
Current Store : [0x800016dc] : sh a7, 62(a5) -- Store: [0x80006922]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016e8]:flt.h t6, ft11, ft10
	-[0x800016ec]:csrrs a7, fflags, zero
	-[0x800016f0]:sh t6, 70(a5)
Current Store : [0x800016f4] : sh a7, 72(a5) -- Store: [0x8000692c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001700]:flt.h t6, ft11, ft10
	-[0x80001704]:csrrs a7, fflags, zero
	-[0x80001708]:sh t6, 80(a5)
Current Store : [0x8000170c] : sh a7, 82(a5) -- Store: [0x80006936]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001718]:flt.h t6, ft11, ft10
	-[0x8000171c]:csrrs a7, fflags, zero
	-[0x80001720]:sh t6, 90(a5)
Current Store : [0x80001724] : sh a7, 92(a5) -- Store: [0x80006940]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001730]:flt.h t6, ft11, ft10
	-[0x80001734]:csrrs a7, fflags, zero
	-[0x80001738]:sh t6, 100(a5)
Current Store : [0x8000173c] : sh a7, 102(a5) -- Store: [0x8000694a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001748]:flt.h t6, ft11, ft10
	-[0x8000174c]:csrrs a7, fflags, zero
	-[0x80001750]:sh t6, 110(a5)
Current Store : [0x80001754] : sh a7, 112(a5) -- Store: [0x80006954]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001760]:flt.h t6, ft11, ft10
	-[0x80001764]:csrrs a7, fflags, zero
	-[0x80001768]:sh t6, 120(a5)
Current Store : [0x8000176c] : sh a7, 122(a5) -- Store: [0x8000695e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001778]:flt.h t6, ft11, ft10
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:sh t6, 130(a5)
Current Store : [0x80001784] : sh a7, 132(a5) -- Store: [0x80006968]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001790]:flt.h t6, ft11, ft10
	-[0x80001794]:csrrs a7, fflags, zero
	-[0x80001798]:sh t6, 140(a5)
Current Store : [0x8000179c] : sh a7, 142(a5) -- Store: [0x80006972]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017a8]:flt.h t6, ft11, ft10
	-[0x800017ac]:csrrs a7, fflags, zero
	-[0x800017b0]:sh t6, 150(a5)
Current Store : [0x800017b4] : sh a7, 152(a5) -- Store: [0x8000697c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017c0]:flt.h t6, ft11, ft10
	-[0x800017c4]:csrrs a7, fflags, zero
	-[0x800017c8]:sh t6, 160(a5)
Current Store : [0x800017cc] : sh a7, 162(a5) -- Store: [0x80006986]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017d8]:flt.h t6, ft11, ft10
	-[0x800017dc]:csrrs a7, fflags, zero
	-[0x800017e0]:sh t6, 170(a5)
Current Store : [0x800017e4] : sh a7, 172(a5) -- Store: [0x80006990]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017f0]:flt.h t6, ft11, ft10
	-[0x800017f4]:csrrs a7, fflags, zero
	-[0x800017f8]:sh t6, 180(a5)
Current Store : [0x800017fc] : sh a7, 182(a5) -- Store: [0x8000699a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001808]:flt.h t6, ft11, ft10
	-[0x8000180c]:csrrs a7, fflags, zero
	-[0x80001810]:sh t6, 190(a5)
Current Store : [0x80001814] : sh a7, 192(a5) -- Store: [0x800069a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001820]:flt.h t6, ft11, ft10
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:sh t6, 200(a5)
Current Store : [0x8000182c] : sh a7, 202(a5) -- Store: [0x800069ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001838]:flt.h t6, ft11, ft10
	-[0x8000183c]:csrrs a7, fflags, zero
	-[0x80001840]:sh t6, 210(a5)
Current Store : [0x80001844] : sh a7, 212(a5) -- Store: [0x800069b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001850]:flt.h t6, ft11, ft10
	-[0x80001854]:csrrs a7, fflags, zero
	-[0x80001858]:sh t6, 220(a5)
Current Store : [0x8000185c] : sh a7, 222(a5) -- Store: [0x800069c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001868]:flt.h t6, ft11, ft10
	-[0x8000186c]:csrrs a7, fflags, zero
	-[0x80001870]:sh t6, 230(a5)
Current Store : [0x80001874] : sh a7, 232(a5) -- Store: [0x800069cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001880]:flt.h t6, ft11, ft10
	-[0x80001884]:csrrs a7, fflags, zero
	-[0x80001888]:sh t6, 240(a5)
Current Store : [0x8000188c] : sh a7, 242(a5) -- Store: [0x800069d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001898]:flt.h t6, ft11, ft10
	-[0x8000189c]:csrrs a7, fflags, zero
	-[0x800018a0]:sh t6, 250(a5)
Current Store : [0x800018a4] : sh a7, 252(a5) -- Store: [0x800069e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018b0]:flt.h t6, ft11, ft10
	-[0x800018b4]:csrrs a7, fflags, zero
	-[0x800018b8]:sh t6, 260(a5)
Current Store : [0x800018bc] : sh a7, 262(a5) -- Store: [0x800069ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018c8]:flt.h t6, ft11, ft10
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:sh t6, 270(a5)
Current Store : [0x800018d4] : sh a7, 272(a5) -- Store: [0x800069f4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018e0]:flt.h t6, ft11, ft10
	-[0x800018e4]:csrrs a7, fflags, zero
	-[0x800018e8]:sh t6, 280(a5)
Current Store : [0x800018ec] : sh a7, 282(a5) -- Store: [0x800069fe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018f8]:flt.h t6, ft11, ft10
	-[0x800018fc]:csrrs a7, fflags, zero
	-[0x80001900]:sh t6, 290(a5)
Current Store : [0x80001904] : sh a7, 292(a5) -- Store: [0x80006a08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001910]:flt.h t6, ft11, ft10
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:sh t6, 300(a5)
Current Store : [0x8000191c] : sh a7, 302(a5) -- Store: [0x80006a12]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001928]:flt.h t6, ft11, ft10
	-[0x8000192c]:csrrs a7, fflags, zero
	-[0x80001930]:sh t6, 310(a5)
Current Store : [0x80001934] : sh a7, 312(a5) -- Store: [0x80006a1c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001940]:flt.h t6, ft11, ft10
	-[0x80001944]:csrrs a7, fflags, zero
	-[0x80001948]:sh t6, 320(a5)
Current Store : [0x8000194c] : sh a7, 322(a5) -- Store: [0x80006a26]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001958]:flt.h t6, ft11, ft10
	-[0x8000195c]:csrrs a7, fflags, zero
	-[0x80001960]:sh t6, 330(a5)
Current Store : [0x80001964] : sh a7, 332(a5) -- Store: [0x80006a30]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001970]:flt.h t6, ft11, ft10
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:sh t6, 340(a5)
Current Store : [0x8000197c] : sh a7, 342(a5) -- Store: [0x80006a3a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001988]:flt.h t6, ft11, ft10
	-[0x8000198c]:csrrs a7, fflags, zero
	-[0x80001990]:sh t6, 350(a5)
Current Store : [0x80001994] : sh a7, 352(a5) -- Store: [0x80006a44]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019a0]:flt.h t6, ft11, ft10
	-[0x800019a4]:csrrs a7, fflags, zero
	-[0x800019a8]:sh t6, 360(a5)
Current Store : [0x800019ac] : sh a7, 362(a5) -- Store: [0x80006a4e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019b8]:flt.h t6, ft11, ft10
	-[0x800019bc]:csrrs a7, fflags, zero
	-[0x800019c0]:sh t6, 370(a5)
Current Store : [0x800019c4] : sh a7, 372(a5) -- Store: [0x80006a58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019d0]:flt.h t6, ft11, ft10
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:sh t6, 380(a5)
Current Store : [0x800019dc] : sh a7, 382(a5) -- Store: [0x80006a62]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019e8]:flt.h t6, ft11, ft10
	-[0x800019ec]:csrrs a7, fflags, zero
	-[0x800019f0]:sh t6, 390(a5)
Current Store : [0x800019f4] : sh a7, 392(a5) -- Store: [0x80006a6c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a00]:flt.h t6, ft11, ft10
	-[0x80001a04]:csrrs a7, fflags, zero
	-[0x80001a08]:sh t6, 400(a5)
Current Store : [0x80001a0c] : sh a7, 402(a5) -- Store: [0x80006a76]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a18]:flt.h t6, ft11, ft10
	-[0x80001a1c]:csrrs a7, fflags, zero
	-[0x80001a20]:sh t6, 410(a5)
Current Store : [0x80001a24] : sh a7, 412(a5) -- Store: [0x80006a80]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a30]:flt.h t6, ft11, ft10
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:sh t6, 420(a5)
Current Store : [0x80001a3c] : sh a7, 422(a5) -- Store: [0x80006a8a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a48]:flt.h t6, ft11, ft10
	-[0x80001a4c]:csrrs a7, fflags, zero
	-[0x80001a50]:sh t6, 430(a5)
Current Store : [0x80001a54] : sh a7, 432(a5) -- Store: [0x80006a94]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a60]:flt.h t6, ft11, ft10
	-[0x80001a64]:csrrs a7, fflags, zero
	-[0x80001a68]:sh t6, 440(a5)
Current Store : [0x80001a6c] : sh a7, 442(a5) -- Store: [0x80006a9e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a78]:flt.h t6, ft11, ft10
	-[0x80001a7c]:csrrs a7, fflags, zero
	-[0x80001a80]:sh t6, 450(a5)
Current Store : [0x80001a84] : sh a7, 452(a5) -- Store: [0x80006aa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a90]:flt.h t6, ft11, ft10
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:sh t6, 460(a5)
Current Store : [0x80001a9c] : sh a7, 462(a5) -- Store: [0x80006ab2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001aa8]:flt.h t6, ft11, ft10
	-[0x80001aac]:csrrs a7, fflags, zero
	-[0x80001ab0]:sh t6, 470(a5)
Current Store : [0x80001ab4] : sh a7, 472(a5) -- Store: [0x80006abc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ac0]:flt.h t6, ft11, ft10
	-[0x80001ac4]:csrrs a7, fflags, zero
	-[0x80001ac8]:sh t6, 480(a5)
Current Store : [0x80001acc] : sh a7, 482(a5) -- Store: [0x80006ac6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ad8]:flt.h t6, ft11, ft10
	-[0x80001adc]:csrrs a7, fflags, zero
	-[0x80001ae0]:sh t6, 490(a5)
Current Store : [0x80001ae4] : sh a7, 492(a5) -- Store: [0x80006ad0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001af0]:flt.h t6, ft11, ft10
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:sh t6, 500(a5)
Current Store : [0x80001afc] : sh a7, 502(a5) -- Store: [0x80006ada]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b08]:flt.h t6, ft11, ft10
	-[0x80001b0c]:csrrs a7, fflags, zero
	-[0x80001b10]:sh t6, 510(a5)
Current Store : [0x80001b14] : sh a7, 512(a5) -- Store: [0x80006ae4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b20]:flt.h t6, ft11, ft10
	-[0x80001b24]:csrrs a7, fflags, zero
	-[0x80001b28]:sh t6, 520(a5)
Current Store : [0x80001b2c] : sh a7, 522(a5) -- Store: [0x80006aee]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b38]:flt.h t6, ft11, ft10
	-[0x80001b3c]:csrrs a7, fflags, zero
	-[0x80001b40]:sh t6, 530(a5)
Current Store : [0x80001b44] : sh a7, 532(a5) -- Store: [0x80006af8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b50]:flt.h t6, ft11, ft10
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:sh t6, 540(a5)
Current Store : [0x80001b5c] : sh a7, 542(a5) -- Store: [0x80006b02]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b68]:flt.h t6, ft11, ft10
	-[0x80001b6c]:csrrs a7, fflags, zero
	-[0x80001b70]:sh t6, 550(a5)
Current Store : [0x80001b74] : sh a7, 552(a5) -- Store: [0x80006b0c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b80]:flt.h t6, ft11, ft10
	-[0x80001b84]:csrrs a7, fflags, zero
	-[0x80001b88]:sh t6, 560(a5)
Current Store : [0x80001b8c] : sh a7, 562(a5) -- Store: [0x80006b16]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b98]:flt.h t6, ft11, ft10
	-[0x80001b9c]:csrrs a7, fflags, zero
	-[0x80001ba0]:sh t6, 570(a5)
Current Store : [0x80001ba4] : sh a7, 572(a5) -- Store: [0x80006b20]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:flt.h t6, ft11, ft10
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:sh t6, 580(a5)
Current Store : [0x80001bbc] : sh a7, 582(a5) -- Store: [0x80006b2a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bc8]:flt.h t6, ft11, ft10
	-[0x80001bcc]:csrrs a7, fflags, zero
	-[0x80001bd0]:sh t6, 590(a5)
Current Store : [0x80001bd4] : sh a7, 592(a5) -- Store: [0x80006b34]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001be0]:flt.h t6, ft11, ft10
	-[0x80001be4]:csrrs a7, fflags, zero
	-[0x80001be8]:sh t6, 600(a5)
Current Store : [0x80001bec] : sh a7, 602(a5) -- Store: [0x80006b3e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bf8]:flt.h t6, ft11, ft10
	-[0x80001bfc]:csrrs a7, fflags, zero
	-[0x80001c00]:sh t6, 610(a5)
Current Store : [0x80001c04] : sh a7, 612(a5) -- Store: [0x80006b48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c10]:flt.h t6, ft11, ft10
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:sh t6, 620(a5)
Current Store : [0x80001c1c] : sh a7, 622(a5) -- Store: [0x80006b52]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c28]:flt.h t6, ft11, ft10
	-[0x80001c2c]:csrrs a7, fflags, zero
	-[0x80001c30]:sh t6, 630(a5)
Current Store : [0x80001c34] : sh a7, 632(a5) -- Store: [0x80006b5c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c40]:flt.h t6, ft11, ft10
	-[0x80001c44]:csrrs a7, fflags, zero
	-[0x80001c48]:sh t6, 640(a5)
Current Store : [0x80001c4c] : sh a7, 642(a5) -- Store: [0x80006b66]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c58]:flt.h t6, ft11, ft10
	-[0x80001c5c]:csrrs a7, fflags, zero
	-[0x80001c60]:sh t6, 650(a5)
Current Store : [0x80001c64] : sh a7, 652(a5) -- Store: [0x80006b70]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c70]:flt.h t6, ft11, ft10
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:sh t6, 660(a5)
Current Store : [0x80001c7c] : sh a7, 662(a5) -- Store: [0x80006b7a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c88]:flt.h t6, ft11, ft10
	-[0x80001c8c]:csrrs a7, fflags, zero
	-[0x80001c90]:sh t6, 670(a5)
Current Store : [0x80001c94] : sh a7, 672(a5) -- Store: [0x80006b84]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ca0]:flt.h t6, ft11, ft10
	-[0x80001ca4]:csrrs a7, fflags, zero
	-[0x80001ca8]:sh t6, 680(a5)
Current Store : [0x80001cac] : sh a7, 682(a5) -- Store: [0x80006b8e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001cb8]:flt.h t6, ft11, ft10
	-[0x80001cbc]:csrrs a7, fflags, zero
	-[0x80001cc0]:sh t6, 690(a5)
Current Store : [0x80001cc4] : sh a7, 692(a5) -- Store: [0x80006b98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:flt.h t6, ft11, ft10
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:sh t6, 700(a5)
Current Store : [0x80001cdc] : sh a7, 702(a5) -- Store: [0x80006ba2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ce8]:flt.h t6, ft11, ft10
	-[0x80001cec]:csrrs a7, fflags, zero
	-[0x80001cf0]:sh t6, 710(a5)
Current Store : [0x80001cf4] : sh a7, 712(a5) -- Store: [0x80006bac]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d00]:flt.h t6, ft11, ft10
	-[0x80001d04]:csrrs a7, fflags, zero
	-[0x80001d08]:sh t6, 720(a5)
Current Store : [0x80001d0c] : sh a7, 722(a5) -- Store: [0x80006bb6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d18]:flt.h t6, ft11, ft10
	-[0x80001d1c]:csrrs a7, fflags, zero
	-[0x80001d20]:sh t6, 730(a5)
Current Store : [0x80001d24] : sh a7, 732(a5) -- Store: [0x80006bc0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d30]:flt.h t6, ft11, ft10
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:sh t6, 740(a5)
Current Store : [0x80001d3c] : sh a7, 742(a5) -- Store: [0x80006bca]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d48]:flt.h t6, ft11, ft10
	-[0x80001d4c]:csrrs a7, fflags, zero
	-[0x80001d50]:sh t6, 750(a5)
Current Store : [0x80001d54] : sh a7, 752(a5) -- Store: [0x80006bd4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d60]:flt.h t6, ft11, ft10
	-[0x80001d64]:csrrs a7, fflags, zero
	-[0x80001d68]:sh t6, 760(a5)
Current Store : [0x80001d6c] : sh a7, 762(a5) -- Store: [0x80006bde]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d78]:flt.h t6, ft11, ft10
	-[0x80001d7c]:csrrs a7, fflags, zero
	-[0x80001d80]:sh t6, 770(a5)
Current Store : [0x80001d84] : sh a7, 772(a5) -- Store: [0x80006be8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d90]:flt.h t6, ft11, ft10
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:sh t6, 780(a5)
Current Store : [0x80001d9c] : sh a7, 782(a5) -- Store: [0x80006bf2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001da8]:flt.h t6, ft11, ft10
	-[0x80001dac]:csrrs a7, fflags, zero
	-[0x80001db0]:sh t6, 790(a5)
Current Store : [0x80001db4] : sh a7, 792(a5) -- Store: [0x80006bfc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001dc0]:flt.h t6, ft11, ft10
	-[0x80001dc4]:csrrs a7, fflags, zero
	-[0x80001dc8]:sh t6, 800(a5)
Current Store : [0x80001dcc] : sh a7, 802(a5) -- Store: [0x80006c06]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001dd8]:flt.h t6, ft11, ft10
	-[0x80001ddc]:csrrs a7, fflags, zero
	-[0x80001de0]:sh t6, 810(a5)
Current Store : [0x80001de4] : sh a7, 812(a5) -- Store: [0x80006c10]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001df0]:flt.h t6, ft11, ft10
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:sh t6, 820(a5)
Current Store : [0x80001dfc] : sh a7, 822(a5) -- Store: [0x80006c1a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e08]:flt.h t6, ft11, ft10
	-[0x80001e0c]:csrrs a7, fflags, zero
	-[0x80001e10]:sh t6, 830(a5)
Current Store : [0x80001e14] : sh a7, 832(a5) -- Store: [0x80006c24]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e20]:flt.h t6, ft11, ft10
	-[0x80001e24]:csrrs a7, fflags, zero
	-[0x80001e28]:sh t6, 840(a5)
Current Store : [0x80001e2c] : sh a7, 842(a5) -- Store: [0x80006c2e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e38]:flt.h t6, ft11, ft10
	-[0x80001e3c]:csrrs a7, fflags, zero
	-[0x80001e40]:sh t6, 850(a5)
Current Store : [0x80001e44] : sh a7, 852(a5) -- Store: [0x80006c38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e50]:flt.h t6, ft11, ft10
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:sh t6, 860(a5)
Current Store : [0x80001e5c] : sh a7, 862(a5) -- Store: [0x80006c42]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e68]:flt.h t6, ft11, ft10
	-[0x80001e6c]:csrrs a7, fflags, zero
	-[0x80001e70]:sh t6, 870(a5)
Current Store : [0x80001e74] : sh a7, 872(a5) -- Store: [0x80006c4c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e80]:flt.h t6, ft11, ft10
	-[0x80001e84]:csrrs a7, fflags, zero
	-[0x80001e88]:sh t6, 880(a5)
Current Store : [0x80001e8c] : sh a7, 882(a5) -- Store: [0x80006c56]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e98]:flt.h t6, ft11, ft10
	-[0x80001e9c]:csrrs a7, fflags, zero
	-[0x80001ea0]:sh t6, 890(a5)
Current Store : [0x80001ea4] : sh a7, 892(a5) -- Store: [0x80006c60]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:flt.h t6, ft11, ft10
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:sh t6, 900(a5)
Current Store : [0x80001ebc] : sh a7, 902(a5) -- Store: [0x80006c6a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ec8]:flt.h t6, ft11, ft10
	-[0x80001ecc]:csrrs a7, fflags, zero
	-[0x80001ed0]:sh t6, 910(a5)
Current Store : [0x80001ed4] : sh a7, 912(a5) -- Store: [0x80006c74]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ee0]:flt.h t6, ft11, ft10
	-[0x80001ee4]:csrrs a7, fflags, zero
	-[0x80001ee8]:sh t6, 920(a5)
Current Store : [0x80001eec] : sh a7, 922(a5) -- Store: [0x80006c7e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ef8]:flt.h t6, ft11, ft10
	-[0x80001efc]:csrrs a7, fflags, zero
	-[0x80001f00]:sh t6, 930(a5)
Current Store : [0x80001f04] : sh a7, 932(a5) -- Store: [0x80006c88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f10]:flt.h t6, ft11, ft10
	-[0x80001f14]:csrrs a7, fflags, zero
	-[0x80001f18]:sh t6, 940(a5)
Current Store : [0x80001f1c] : sh a7, 942(a5) -- Store: [0x80006c92]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f28]:flt.h t6, ft11, ft10
	-[0x80001f2c]:csrrs a7, fflags, zero
	-[0x80001f30]:sh t6, 950(a5)
Current Store : [0x80001f34] : sh a7, 952(a5) -- Store: [0x80006c9c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f40]:flt.h t6, ft11, ft10
	-[0x80001f44]:csrrs a7, fflags, zero
	-[0x80001f48]:sh t6, 960(a5)
Current Store : [0x80001f4c] : sh a7, 962(a5) -- Store: [0x80006ca6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f58]:flt.h t6, ft11, ft10
	-[0x80001f5c]:csrrs a7, fflags, zero
	-[0x80001f60]:sh t6, 970(a5)
Current Store : [0x80001f64] : sh a7, 972(a5) -- Store: [0x80006cb0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f70]:flt.h t6, ft11, ft10
	-[0x80001f74]:csrrs a7, fflags, zero
	-[0x80001f78]:sh t6, 980(a5)
Current Store : [0x80001f7c] : sh a7, 982(a5) -- Store: [0x80006cba]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f88]:flt.h t6, ft11, ft10
	-[0x80001f8c]:csrrs a7, fflags, zero
	-[0x80001f90]:sh t6, 990(a5)
Current Store : [0x80001f94] : sh a7, 992(a5) -- Store: [0x80006cc4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fa0]:flt.h t6, ft11, ft10
	-[0x80001fa4]:csrrs a7, fflags, zero
	-[0x80001fa8]:sh t6, 1000(a5)
Current Store : [0x80001fac] : sh a7, 1002(a5) -- Store: [0x80006cce]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fb8]:flt.h t6, ft11, ft10
	-[0x80001fbc]:csrrs a7, fflags, zero
	-[0x80001fc0]:sh t6, 1010(a5)
Current Store : [0x80001fc4] : sh a7, 1012(a5) -- Store: [0x80006cd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fd0]:flt.h t6, ft11, ft10
	-[0x80001fd4]:csrrs a7, fflags, zero
	-[0x80001fd8]:sh t6, 1020(a5)
Current Store : [0x80001fdc] : sh a7, 1022(a5) -- Store: [0x80006ce2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fe8]:flt.h t6, ft11, ft10
	-[0x80001fec]:csrrs a7, fflags, zero
	-[0x80001ff0]:sh t6, 1030(a5)
Current Store : [0x80001ff4] : sh a7, 1032(a5) -- Store: [0x80006cec]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002000]:flt.h t6, ft11, ft10
	-[0x80002004]:csrrs a7, fflags, zero
	-[0x80002008]:sh t6, 1040(a5)
Current Store : [0x8000200c] : sh a7, 1042(a5) -- Store: [0x80006cf6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002018]:flt.h t6, ft11, ft10
	-[0x8000201c]:csrrs a7, fflags, zero
	-[0x80002020]:sh t6, 1050(a5)
Current Store : [0x80002024] : sh a7, 1052(a5) -- Store: [0x80006d00]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002030]:flt.h t6, ft11, ft10
	-[0x80002034]:csrrs a7, fflags, zero
	-[0x80002038]:sh t6, 1060(a5)
Current Store : [0x8000203c] : sh a7, 1062(a5) -- Store: [0x80006d0a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002048]:flt.h t6, ft11, ft10
	-[0x8000204c]:csrrs a7, fflags, zero
	-[0x80002050]:sh t6, 1070(a5)
Current Store : [0x80002054] : sh a7, 1072(a5) -- Store: [0x80006d14]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002060]:flt.h t6, ft11, ft10
	-[0x80002064]:csrrs a7, fflags, zero
	-[0x80002068]:sh t6, 1080(a5)
Current Store : [0x8000206c] : sh a7, 1082(a5) -- Store: [0x80006d1e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002078]:flt.h t6, ft11, ft10
	-[0x8000207c]:csrrs a7, fflags, zero
	-[0x80002080]:sh t6, 1090(a5)
Current Store : [0x80002084] : sh a7, 1092(a5) -- Store: [0x80006d28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002090]:flt.h t6, ft11, ft10
	-[0x80002094]:csrrs a7, fflags, zero
	-[0x80002098]:sh t6, 1100(a5)
Current Store : [0x8000209c] : sh a7, 1102(a5) -- Store: [0x80006d32]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020a8]:flt.h t6, ft11, ft10
	-[0x800020ac]:csrrs a7, fflags, zero
	-[0x800020b0]:sh t6, 1110(a5)
Current Store : [0x800020b4] : sh a7, 1112(a5) -- Store: [0x80006d3c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020c0]:flt.h t6, ft11, ft10
	-[0x800020c4]:csrrs a7, fflags, zero
	-[0x800020c8]:sh t6, 1120(a5)
Current Store : [0x800020cc] : sh a7, 1122(a5) -- Store: [0x80006d46]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020d8]:flt.h t6, ft11, ft10
	-[0x800020dc]:csrrs a7, fflags, zero
	-[0x800020e0]:sh t6, 1130(a5)
Current Store : [0x800020e4] : sh a7, 1132(a5) -- Store: [0x80006d50]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020f0]:flt.h t6, ft11, ft10
	-[0x800020f4]:csrrs a7, fflags, zero
	-[0x800020f8]:sh t6, 1140(a5)
Current Store : [0x800020fc] : sh a7, 1142(a5) -- Store: [0x80006d5a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002108]:flt.h t6, ft11, ft10
	-[0x8000210c]:csrrs a7, fflags, zero
	-[0x80002110]:sh t6, 1150(a5)
Current Store : [0x80002114] : sh a7, 1152(a5) -- Store: [0x80006d64]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002120]:flt.h t6, ft11, ft10
	-[0x80002124]:csrrs a7, fflags, zero
	-[0x80002128]:sh t6, 1160(a5)
Current Store : [0x8000212c] : sh a7, 1162(a5) -- Store: [0x80006d6e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002138]:flt.h t6, ft11, ft10
	-[0x8000213c]:csrrs a7, fflags, zero
	-[0x80002140]:sh t6, 1170(a5)
Current Store : [0x80002144] : sh a7, 1172(a5) -- Store: [0x80006d78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002150]:flt.h t6, ft11, ft10
	-[0x80002154]:csrrs a7, fflags, zero
	-[0x80002158]:sh t6, 1180(a5)
Current Store : [0x8000215c] : sh a7, 1182(a5) -- Store: [0x80006d82]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002168]:flt.h t6, ft11, ft10
	-[0x8000216c]:csrrs a7, fflags, zero
	-[0x80002170]:sh t6, 1190(a5)
Current Store : [0x80002174] : sh a7, 1192(a5) -- Store: [0x80006d8c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002180]:flt.h t6, ft11, ft10
	-[0x80002184]:csrrs a7, fflags, zero
	-[0x80002188]:sh t6, 1200(a5)
Current Store : [0x8000218c] : sh a7, 1202(a5) -- Store: [0x80006d96]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002198]:flt.h t6, ft11, ft10
	-[0x8000219c]:csrrs a7, fflags, zero
	-[0x800021a0]:sh t6, 1210(a5)
Current Store : [0x800021a4] : sh a7, 1212(a5) -- Store: [0x80006da0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021b0]:flt.h t6, ft11, ft10
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:sh t6, 1220(a5)
Current Store : [0x800021bc] : sh a7, 1222(a5) -- Store: [0x80006daa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021c8]:flt.h t6, ft11, ft10
	-[0x800021cc]:csrrs a7, fflags, zero
	-[0x800021d0]:sh t6, 1230(a5)
Current Store : [0x800021d4] : sh a7, 1232(a5) -- Store: [0x80006db4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021e0]:flt.h t6, ft11, ft10
	-[0x800021e4]:csrrs a7, fflags, zero
	-[0x800021e8]:sh t6, 1240(a5)
Current Store : [0x800021ec] : sh a7, 1242(a5) -- Store: [0x80006dbe]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021f8]:flt.h t6, ft11, ft10
	-[0x800021fc]:csrrs a7, fflags, zero
	-[0x80002200]:sh t6, 1250(a5)
Current Store : [0x80002204] : sh a7, 1252(a5) -- Store: [0x80006dc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002210]:flt.h t6, ft11, ft10
	-[0x80002214]:csrrs a7, fflags, zero
	-[0x80002218]:sh t6, 1260(a5)
Current Store : [0x8000221c] : sh a7, 1262(a5) -- Store: [0x80006dd2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002228]:flt.h t6, ft11, ft10
	-[0x8000222c]:csrrs a7, fflags, zero
	-[0x80002230]:sh t6, 1270(a5)
Current Store : [0x80002234] : sh a7, 1272(a5) -- Store: [0x80006ddc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002240]:flt.h t6, ft11, ft10
	-[0x80002244]:csrrs a7, fflags, zero
	-[0x80002248]:sh t6, 1280(a5)
Current Store : [0x8000224c] : sh a7, 1282(a5) -- Store: [0x80006de6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002258]:flt.h t6, ft11, ft10
	-[0x8000225c]:csrrs a7, fflags, zero
	-[0x80002260]:sh t6, 1290(a5)
Current Store : [0x80002264] : sh a7, 1292(a5) -- Store: [0x80006df0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002270]:flt.h t6, ft11, ft10
	-[0x80002274]:csrrs a7, fflags, zero
	-[0x80002278]:sh t6, 1300(a5)
Current Store : [0x8000227c] : sh a7, 1302(a5) -- Store: [0x80006dfa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002288]:flt.h t6, ft11, ft10
	-[0x8000228c]:csrrs a7, fflags, zero
	-[0x80002290]:sh t6, 1310(a5)
Current Store : [0x80002294] : sh a7, 1312(a5) -- Store: [0x80006e04]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022a0]:flt.h t6, ft11, ft10
	-[0x800022a4]:csrrs a7, fflags, zero
	-[0x800022a8]:sh t6, 1320(a5)
Current Store : [0x800022ac] : sh a7, 1322(a5) -- Store: [0x80006e0e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022b8]:flt.h t6, ft11, ft10
	-[0x800022bc]:csrrs a7, fflags, zero
	-[0x800022c0]:sh t6, 1330(a5)
Current Store : [0x800022c4] : sh a7, 1332(a5) -- Store: [0x80006e18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022d0]:flt.h t6, ft11, ft10
	-[0x800022d4]:csrrs a7, fflags, zero
	-[0x800022d8]:sh t6, 1340(a5)
Current Store : [0x800022dc] : sh a7, 1342(a5) -- Store: [0x80006e22]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022e8]:flt.h t6, ft11, ft10
	-[0x800022ec]:csrrs a7, fflags, zero
	-[0x800022f0]:sh t6, 1350(a5)
Current Store : [0x800022f4] : sh a7, 1352(a5) -- Store: [0x80006e2c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002300]:flt.h t6, ft11, ft10
	-[0x80002304]:csrrs a7, fflags, zero
	-[0x80002308]:sh t6, 1360(a5)
Current Store : [0x8000230c] : sh a7, 1362(a5) -- Store: [0x80006e36]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002318]:flt.h t6, ft11, ft10
	-[0x8000231c]:csrrs a7, fflags, zero
	-[0x80002320]:sh t6, 1370(a5)
Current Store : [0x80002324] : sh a7, 1372(a5) -- Store: [0x80006e40]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002330]:flt.h t6, ft11, ft10
	-[0x80002334]:csrrs a7, fflags, zero
	-[0x80002338]:sh t6, 1380(a5)
Current Store : [0x8000233c] : sh a7, 1382(a5) -- Store: [0x80006e4a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002348]:flt.h t6, ft11, ft10
	-[0x8000234c]:csrrs a7, fflags, zero
	-[0x80002350]:sh t6, 1390(a5)
Current Store : [0x80002354] : sh a7, 1392(a5) -- Store: [0x80006e54]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002360]:flt.h t6, ft11, ft10
	-[0x80002364]:csrrs a7, fflags, zero
	-[0x80002368]:sh t6, 1400(a5)
Current Store : [0x8000236c] : sh a7, 1402(a5) -- Store: [0x80006e5e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002378]:flt.h t6, ft11, ft10
	-[0x8000237c]:csrrs a7, fflags, zero
	-[0x80002380]:sh t6, 1410(a5)
Current Store : [0x80002384] : sh a7, 1412(a5) -- Store: [0x80006e68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002390]:flt.h t6, ft11, ft10
	-[0x80002394]:csrrs a7, fflags, zero
	-[0x80002398]:sh t6, 1420(a5)
Current Store : [0x8000239c] : sh a7, 1422(a5) -- Store: [0x80006e72]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023a8]:flt.h t6, ft11, ft10
	-[0x800023ac]:csrrs a7, fflags, zero
	-[0x800023b0]:sh t6, 1430(a5)
Current Store : [0x800023b4] : sh a7, 1432(a5) -- Store: [0x80006e7c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023c0]:flt.h t6, ft11, ft10
	-[0x800023c4]:csrrs a7, fflags, zero
	-[0x800023c8]:sh t6, 1440(a5)
Current Store : [0x800023cc] : sh a7, 1442(a5) -- Store: [0x80006e86]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023d8]:flt.h t6, ft11, ft10
	-[0x800023dc]:csrrs a7, fflags, zero
	-[0x800023e0]:sh t6, 1450(a5)
Current Store : [0x800023e4] : sh a7, 1452(a5) -- Store: [0x80006e90]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023f0]:flt.h t6, ft11, ft10
	-[0x800023f4]:csrrs a7, fflags, zero
	-[0x800023f8]:sh t6, 1460(a5)
Current Store : [0x800023fc] : sh a7, 1462(a5) -- Store: [0x80006e9a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002408]:flt.h t6, ft11, ft10
	-[0x8000240c]:csrrs a7, fflags, zero
	-[0x80002410]:sh t6, 1470(a5)
Current Store : [0x80002414] : sh a7, 1472(a5) -- Store: [0x80006ea4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002420]:flt.h t6, ft11, ft10
	-[0x80002424]:csrrs a7, fflags, zero
	-[0x80002428]:sh t6, 1480(a5)
Current Store : [0x8000242c] : sh a7, 1482(a5) -- Store: [0x80006eae]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002438]:flt.h t6, ft11, ft10
	-[0x8000243c]:csrrs a7, fflags, zero
	-[0x80002440]:sh t6, 1490(a5)
Current Store : [0x80002444] : sh a7, 1492(a5) -- Store: [0x80006eb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002450]:flt.h t6, ft11, ft10
	-[0x80002454]:csrrs a7, fflags, zero
	-[0x80002458]:sh t6, 1500(a5)
Current Store : [0x8000245c] : sh a7, 1502(a5) -- Store: [0x80006ec2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002468]:flt.h t6, ft11, ft10
	-[0x8000246c]:csrrs a7, fflags, zero
	-[0x80002470]:sh t6, 1510(a5)
Current Store : [0x80002474] : sh a7, 1512(a5) -- Store: [0x80006ecc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002480]:flt.h t6, ft11, ft10
	-[0x80002484]:csrrs a7, fflags, zero
	-[0x80002488]:sh t6, 1520(a5)
Current Store : [0x8000248c] : sh a7, 1522(a5) -- Store: [0x80006ed6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002498]:flt.h t6, ft11, ft10
	-[0x8000249c]:csrrs a7, fflags, zero
	-[0x800024a0]:sh t6, 1530(a5)
Current Store : [0x800024a4] : sh a7, 1532(a5) -- Store: [0x80006ee0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024b0]:flt.h t6, ft11, ft10
	-[0x800024b4]:csrrs a7, fflags, zero
	-[0x800024b8]:sh t6, 1540(a5)
Current Store : [0x800024bc] : sh a7, 1542(a5) -- Store: [0x80006eea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024c8]:flt.h t6, ft11, ft10
	-[0x800024cc]:csrrs a7, fflags, zero
	-[0x800024d0]:sh t6, 1550(a5)
Current Store : [0x800024d4] : sh a7, 1552(a5) -- Store: [0x80006ef4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024e0]:flt.h t6, ft11, ft10
	-[0x800024e4]:csrrs a7, fflags, zero
	-[0x800024e8]:sh t6, 1560(a5)
Current Store : [0x800024ec] : sh a7, 1562(a5) -- Store: [0x80006efe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024f8]:flt.h t6, ft11, ft10
	-[0x800024fc]:csrrs a7, fflags, zero
	-[0x80002500]:sh t6, 1570(a5)
Current Store : [0x80002504] : sh a7, 1572(a5) -- Store: [0x80006f08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002510]:flt.h t6, ft11, ft10
	-[0x80002514]:csrrs a7, fflags, zero
	-[0x80002518]:sh t6, 1580(a5)
Current Store : [0x8000251c] : sh a7, 1582(a5) -- Store: [0x80006f12]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002528]:flt.h t6, ft11, ft10
	-[0x8000252c]:csrrs a7, fflags, zero
	-[0x80002530]:sh t6, 1590(a5)
Current Store : [0x80002534] : sh a7, 1592(a5) -- Store: [0x80006f1c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002540]:flt.h t6, ft11, ft10
	-[0x80002544]:csrrs a7, fflags, zero
	-[0x80002548]:sh t6, 1600(a5)
Current Store : [0x8000254c] : sh a7, 1602(a5) -- Store: [0x80006f26]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002558]:flt.h t6, ft11, ft10
	-[0x8000255c]:csrrs a7, fflags, zero
	-[0x80002560]:sh t6, 1610(a5)
Current Store : [0x80002564] : sh a7, 1612(a5) -- Store: [0x80006f30]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002570]:flt.h t6, ft11, ft10
	-[0x80002574]:csrrs a7, fflags, zero
	-[0x80002578]:sh t6, 1620(a5)
Current Store : [0x8000257c] : sh a7, 1622(a5) -- Store: [0x80006f3a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002588]:flt.h t6, ft11, ft10
	-[0x8000258c]:csrrs a7, fflags, zero
	-[0x80002590]:sh t6, 1630(a5)
Current Store : [0x80002594] : sh a7, 1632(a5) -- Store: [0x80006f44]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025a0]:flt.h t6, ft11, ft10
	-[0x800025a4]:csrrs a7, fflags, zero
	-[0x800025a8]:sh t6, 1640(a5)
Current Store : [0x800025ac] : sh a7, 1642(a5) -- Store: [0x80006f4e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025b8]:flt.h t6, ft11, ft10
	-[0x800025bc]:csrrs a7, fflags, zero
	-[0x800025c0]:sh t6, 1650(a5)
Current Store : [0x800025c4] : sh a7, 1652(a5) -- Store: [0x80006f58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025d0]:flt.h t6, ft11, ft10
	-[0x800025d4]:csrrs a7, fflags, zero
	-[0x800025d8]:sh t6, 1660(a5)
Current Store : [0x800025dc] : sh a7, 1662(a5) -- Store: [0x80006f62]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025e8]:flt.h t6, ft11, ft10
	-[0x800025ec]:csrrs a7, fflags, zero
	-[0x800025f0]:sh t6, 1670(a5)
Current Store : [0x800025f4] : sh a7, 1672(a5) -- Store: [0x80006f6c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002600]:flt.h t6, ft11, ft10
	-[0x80002604]:csrrs a7, fflags, zero
	-[0x80002608]:sh t6, 1680(a5)
Current Store : [0x8000260c] : sh a7, 1682(a5) -- Store: [0x80006f76]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002618]:flt.h t6, ft11, ft10
	-[0x8000261c]:csrrs a7, fflags, zero
	-[0x80002620]:sh t6, 1690(a5)
Current Store : [0x80002624] : sh a7, 1692(a5) -- Store: [0x80006f80]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002630]:flt.h t6, ft11, ft10
	-[0x80002634]:csrrs a7, fflags, zero
	-[0x80002638]:sh t6, 1700(a5)
Current Store : [0x8000263c] : sh a7, 1702(a5) -- Store: [0x80006f8a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002648]:flt.h t6, ft11, ft10
	-[0x8000264c]:csrrs a7, fflags, zero
	-[0x80002650]:sh t6, 1710(a5)
Current Store : [0x80002654] : sh a7, 1712(a5) -- Store: [0x80006f94]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002660]:flt.h t6, ft11, ft10
	-[0x80002664]:csrrs a7, fflags, zero
	-[0x80002668]:sh t6, 1720(a5)
Current Store : [0x8000266c] : sh a7, 1722(a5) -- Store: [0x80006f9e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002678]:flt.h t6, ft11, ft10
	-[0x8000267c]:csrrs a7, fflags, zero
	-[0x80002680]:sh t6, 1730(a5)
Current Store : [0x80002684] : sh a7, 1732(a5) -- Store: [0x80006fa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002690]:flt.h t6, ft11, ft10
	-[0x80002694]:csrrs a7, fflags, zero
	-[0x80002698]:sh t6, 1740(a5)
Current Store : [0x8000269c] : sh a7, 1742(a5) -- Store: [0x80006fb2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026a8]:flt.h t6, ft11, ft10
	-[0x800026ac]:csrrs a7, fflags, zero
	-[0x800026b0]:sh t6, 1750(a5)
Current Store : [0x800026b4] : sh a7, 1752(a5) -- Store: [0x80006fbc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026c0]:flt.h t6, ft11, ft10
	-[0x800026c4]:csrrs a7, fflags, zero
	-[0x800026c8]:sh t6, 1760(a5)
Current Store : [0x800026cc] : sh a7, 1762(a5) -- Store: [0x80006fc6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026d8]:flt.h t6, ft11, ft10
	-[0x800026dc]:csrrs a7, fflags, zero
	-[0x800026e0]:sh t6, 1770(a5)
Current Store : [0x800026e4] : sh a7, 1772(a5) -- Store: [0x80006fd0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026f0]:flt.h t6, ft11, ft10
	-[0x800026f4]:csrrs a7, fflags, zero
	-[0x800026f8]:sh t6, 1780(a5)
Current Store : [0x800026fc] : sh a7, 1782(a5) -- Store: [0x80006fda]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002708]:flt.h t6, ft11, ft10
	-[0x8000270c]:csrrs a7, fflags, zero
	-[0x80002710]:sh t6, 1790(a5)
Current Store : [0x80002714] : sh a7, 1792(a5) -- Store: [0x80006fe4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002720]:flt.h t6, ft11, ft10
	-[0x80002724]:csrrs a7, fflags, zero
	-[0x80002728]:sh t6, 1800(a5)
Current Store : [0x8000272c] : sh a7, 1802(a5) -- Store: [0x80006fee]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002738]:flt.h t6, ft11, ft10
	-[0x8000273c]:csrrs a7, fflags, zero
	-[0x80002740]:sh t6, 1810(a5)
Current Store : [0x80002744] : sh a7, 1812(a5) -- Store: [0x80006ff8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002750]:flt.h t6, ft11, ft10
	-[0x80002754]:csrrs a7, fflags, zero
	-[0x80002758]:sh t6, 1820(a5)
Current Store : [0x8000275c] : sh a7, 1822(a5) -- Store: [0x80007002]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002768]:flt.h t6, ft11, ft10
	-[0x8000276c]:csrrs a7, fflags, zero
	-[0x80002770]:sh t6, 1830(a5)
Current Store : [0x80002774] : sh a7, 1832(a5) -- Store: [0x8000700c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002780]:flt.h t6, ft11, ft10
	-[0x80002784]:csrrs a7, fflags, zero
	-[0x80002788]:sh t6, 1840(a5)
Current Store : [0x8000278c] : sh a7, 1842(a5) -- Store: [0x80007016]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002798]:flt.h t6, ft11, ft10
	-[0x8000279c]:csrrs a7, fflags, zero
	-[0x800027a0]:sh t6, 1850(a5)
Current Store : [0x800027a4] : sh a7, 1852(a5) -- Store: [0x80007020]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027b0]:flt.h t6, ft11, ft10
	-[0x800027b4]:csrrs a7, fflags, zero
	-[0x800027b8]:sh t6, 1860(a5)
Current Store : [0x800027bc] : sh a7, 1862(a5) -- Store: [0x8000702a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027c8]:flt.h t6, ft11, ft10
	-[0x800027cc]:csrrs a7, fflags, zero
	-[0x800027d0]:sh t6, 1870(a5)
Current Store : [0x800027d4] : sh a7, 1872(a5) -- Store: [0x80007034]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027e0]:flt.h t6, ft11, ft10
	-[0x800027e4]:csrrs a7, fflags, zero
	-[0x800027e8]:sh t6, 1880(a5)
Current Store : [0x800027ec] : sh a7, 1882(a5) -- Store: [0x8000703e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027f8]:flt.h t6, ft11, ft10
	-[0x800027fc]:csrrs a7, fflags, zero
	-[0x80002800]:sh t6, 1890(a5)
Current Store : [0x80002804] : sh a7, 1892(a5) -- Store: [0x80007048]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002810]:flt.h t6, ft11, ft10
	-[0x80002814]:csrrs a7, fflags, zero
	-[0x80002818]:sh t6, 1900(a5)
Current Store : [0x8000281c] : sh a7, 1902(a5) -- Store: [0x80007052]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002828]:flt.h t6, ft11, ft10
	-[0x8000282c]:csrrs a7, fflags, zero
	-[0x80002830]:sh t6, 1910(a5)
Current Store : [0x80002834] : sh a7, 1912(a5) -- Store: [0x8000705c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002840]:flt.h t6, ft11, ft10
	-[0x80002844]:csrrs a7, fflags, zero
	-[0x80002848]:sh t6, 1920(a5)
Current Store : [0x8000284c] : sh a7, 1922(a5) -- Store: [0x80007066]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002858]:flt.h t6, ft11, ft10
	-[0x8000285c]:csrrs a7, fflags, zero
	-[0x80002860]:sh t6, 1930(a5)
Current Store : [0x80002864] : sh a7, 1932(a5) -- Store: [0x80007070]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002870]:flt.h t6, ft11, ft10
	-[0x80002874]:csrrs a7, fflags, zero
	-[0x80002878]:sh t6, 1940(a5)
Current Store : [0x8000287c] : sh a7, 1942(a5) -- Store: [0x8000707a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002888]:flt.h t6, ft11, ft10
	-[0x8000288c]:csrrs a7, fflags, zero
	-[0x80002890]:sh t6, 1950(a5)
Current Store : [0x80002894] : sh a7, 1952(a5) -- Store: [0x80007084]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028a0]:flt.h t6, ft11, ft10
	-[0x800028a4]:csrrs a7, fflags, zero
	-[0x800028a8]:sh t6, 1960(a5)
Current Store : [0x800028ac] : sh a7, 1962(a5) -- Store: [0x8000708e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028b8]:flt.h t6, ft11, ft10
	-[0x800028bc]:csrrs a7, fflags, zero
	-[0x800028c0]:sh t6, 1970(a5)
Current Store : [0x800028c4] : sh a7, 1972(a5) -- Store: [0x80007098]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028d0]:flt.h t6, ft11, ft10
	-[0x800028d4]:csrrs a7, fflags, zero
	-[0x800028d8]:sh t6, 1980(a5)
Current Store : [0x800028dc] : sh a7, 1982(a5) -- Store: [0x800070a2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028e8]:flt.h t6, ft11, ft10
	-[0x800028ec]:csrrs a7, fflags, zero
	-[0x800028f0]:sh t6, 1990(a5)
Current Store : [0x800028f4] : sh a7, 1992(a5) -- Store: [0x800070ac]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002900]:flt.h t6, ft11, ft10
	-[0x80002904]:csrrs a7, fflags, zero
	-[0x80002908]:sh t6, 2000(a5)
Current Store : [0x8000290c] : sh a7, 2002(a5) -- Store: [0x800070b6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002918]:flt.h t6, ft11, ft10
	-[0x8000291c]:csrrs a7, fflags, zero
	-[0x80002920]:sh t6, 2010(a5)
Current Store : [0x80002924] : sh a7, 2012(a5) -- Store: [0x800070c0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002930]:flt.h t6, ft11, ft10
	-[0x80002934]:csrrs a7, fflags, zero
	-[0x80002938]:sh t6, 2020(a5)
Current Store : [0x8000293c] : sh a7, 2022(a5) -- Store: [0x800070ca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002950]:flt.h t6, ft11, ft10
	-[0x80002954]:csrrs a7, fflags, zero
	-[0x80002958]:sh t6, 0(a5)
Current Store : [0x8000295c] : sh a7, 2(a5) -- Store: [0x80007596]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002968]:flt.h t6, ft11, ft10
	-[0x8000296c]:csrrs a7, fflags, zero
	-[0x80002970]:sh t6, 10(a5)
Current Store : [0x80002974] : sh a7, 12(a5) -- Store: [0x800075a0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002980]:flt.h t6, ft11, ft10
	-[0x80002984]:csrrs a7, fflags, zero
	-[0x80002988]:sh t6, 20(a5)
Current Store : [0x8000298c] : sh a7, 22(a5) -- Store: [0x800075aa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002998]:flt.h t6, ft11, ft10
	-[0x8000299c]:csrrs a7, fflags, zero
	-[0x800029a0]:sh t6, 30(a5)
Current Store : [0x800029a4] : sh a7, 32(a5) -- Store: [0x800075b4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029b0]:flt.h t6, ft11, ft10
	-[0x800029b4]:csrrs a7, fflags, zero
	-[0x800029b8]:sh t6, 40(a5)
Current Store : [0x800029bc] : sh a7, 42(a5) -- Store: [0x800075be]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029c8]:flt.h t6, ft11, ft10
	-[0x800029cc]:csrrs a7, fflags, zero
	-[0x800029d0]:sh t6, 50(a5)
Current Store : [0x800029d4] : sh a7, 52(a5) -- Store: [0x800075c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029e0]:flt.h t6, ft11, ft10
	-[0x800029e4]:csrrs a7, fflags, zero
	-[0x800029e8]:sh t6, 60(a5)
Current Store : [0x800029ec] : sh a7, 62(a5) -- Store: [0x800075d2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029f8]:flt.h t6, ft11, ft10
	-[0x800029fc]:csrrs a7, fflags, zero
	-[0x80002a00]:sh t6, 70(a5)
Current Store : [0x80002a04] : sh a7, 72(a5) -- Store: [0x800075dc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a10]:flt.h t6, ft11, ft10
	-[0x80002a14]:csrrs a7, fflags, zero
	-[0x80002a18]:sh t6, 80(a5)
Current Store : [0x80002a1c] : sh a7, 82(a5) -- Store: [0x800075e6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a28]:flt.h t6, ft11, ft10
	-[0x80002a2c]:csrrs a7, fflags, zero
	-[0x80002a30]:sh t6, 90(a5)
Current Store : [0x80002a34] : sh a7, 92(a5) -- Store: [0x800075f0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a40]:flt.h t6, ft11, ft10
	-[0x80002a44]:csrrs a7, fflags, zero
	-[0x80002a48]:sh t6, 100(a5)
Current Store : [0x80002a4c] : sh a7, 102(a5) -- Store: [0x800075fa]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a58]:flt.h t6, ft11, ft10
	-[0x80002a5c]:csrrs a7, fflags, zero
	-[0x80002a60]:sh t6, 110(a5)
Current Store : [0x80002a64] : sh a7, 112(a5) -- Store: [0x80007604]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a70]:flt.h t6, ft11, ft10
	-[0x80002a74]:csrrs a7, fflags, zero
	-[0x80002a78]:sh t6, 120(a5)
Current Store : [0x80002a7c] : sh a7, 122(a5) -- Store: [0x8000760e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a88]:flt.h t6, ft11, ft10
	-[0x80002a8c]:csrrs a7, fflags, zero
	-[0x80002a90]:sh t6, 130(a5)
Current Store : [0x80002a94] : sh a7, 132(a5) -- Store: [0x80007618]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002aa0]:flt.h t6, ft11, ft10
	-[0x80002aa4]:csrrs a7, fflags, zero
	-[0x80002aa8]:sh t6, 140(a5)
Current Store : [0x80002aac] : sh a7, 142(a5) -- Store: [0x80007622]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ab8]:flt.h t6, ft11, ft10
	-[0x80002abc]:csrrs a7, fflags, zero
	-[0x80002ac0]:sh t6, 150(a5)
Current Store : [0x80002ac4] : sh a7, 152(a5) -- Store: [0x8000762c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ad0]:flt.h t6, ft11, ft10
	-[0x80002ad4]:csrrs a7, fflags, zero
	-[0x80002ad8]:sh t6, 160(a5)
Current Store : [0x80002adc] : sh a7, 162(a5) -- Store: [0x80007636]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ae8]:flt.h t6, ft11, ft10
	-[0x80002aec]:csrrs a7, fflags, zero
	-[0x80002af0]:sh t6, 170(a5)
Current Store : [0x80002af4] : sh a7, 172(a5) -- Store: [0x80007640]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b00]:flt.h t6, ft11, ft10
	-[0x80002b04]:csrrs a7, fflags, zero
	-[0x80002b08]:sh t6, 180(a5)
Current Store : [0x80002b0c] : sh a7, 182(a5) -- Store: [0x8000764a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b18]:flt.h t6, ft11, ft10
	-[0x80002b1c]:csrrs a7, fflags, zero
	-[0x80002b20]:sh t6, 190(a5)
Current Store : [0x80002b24] : sh a7, 192(a5) -- Store: [0x80007654]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b30]:flt.h t6, ft11, ft10
	-[0x80002b34]:csrrs a7, fflags, zero
	-[0x80002b38]:sh t6, 200(a5)
Current Store : [0x80002b3c] : sh a7, 202(a5) -- Store: [0x8000765e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b48]:flt.h t6, ft11, ft10
	-[0x80002b4c]:csrrs a7, fflags, zero
	-[0x80002b50]:sh t6, 210(a5)
Current Store : [0x80002b54] : sh a7, 212(a5) -- Store: [0x80007668]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b60]:flt.h t6, ft11, ft10
	-[0x80002b64]:csrrs a7, fflags, zero
	-[0x80002b68]:sh t6, 220(a5)
Current Store : [0x80002b6c] : sh a7, 222(a5) -- Store: [0x80007672]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b78]:flt.h t6, ft11, ft10
	-[0x80002b7c]:csrrs a7, fflags, zero
	-[0x80002b80]:sh t6, 230(a5)
Current Store : [0x80002b84] : sh a7, 232(a5) -- Store: [0x8000767c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b90]:flt.h t6, ft11, ft10
	-[0x80002b94]:csrrs a7, fflags, zero
	-[0x80002b98]:sh t6, 240(a5)
Current Store : [0x80002b9c] : sh a7, 242(a5) -- Store: [0x80007686]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ba8]:flt.h t6, ft11, ft10
	-[0x80002bac]:csrrs a7, fflags, zero
	-[0x80002bb0]:sh t6, 250(a5)
Current Store : [0x80002bb4] : sh a7, 252(a5) -- Store: [0x80007690]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bc0]:flt.h t6, ft11, ft10
	-[0x80002bc4]:csrrs a7, fflags, zero
	-[0x80002bc8]:sh t6, 260(a5)
Current Store : [0x80002bcc] : sh a7, 262(a5) -- Store: [0x8000769a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bd8]:flt.h t6, ft11, ft10
	-[0x80002bdc]:csrrs a7, fflags, zero
	-[0x80002be0]:sh t6, 270(a5)
Current Store : [0x80002be4] : sh a7, 272(a5) -- Store: [0x800076a4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bf0]:flt.h t6, ft11, ft10
	-[0x80002bf4]:csrrs a7, fflags, zero
	-[0x80002bf8]:sh t6, 280(a5)
Current Store : [0x80002bfc] : sh a7, 282(a5) -- Store: [0x800076ae]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c08]:flt.h t6, ft11, ft10
	-[0x80002c0c]:csrrs a7, fflags, zero
	-[0x80002c10]:sh t6, 290(a5)
Current Store : [0x80002c14] : sh a7, 292(a5) -- Store: [0x800076b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c20]:flt.h t6, ft11, ft10
	-[0x80002c24]:csrrs a7, fflags, zero
	-[0x80002c28]:sh t6, 300(a5)
Current Store : [0x80002c2c] : sh a7, 302(a5) -- Store: [0x800076c2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c38]:flt.h t6, ft11, ft10
	-[0x80002c3c]:csrrs a7, fflags, zero
	-[0x80002c40]:sh t6, 310(a5)
Current Store : [0x80002c44] : sh a7, 312(a5) -- Store: [0x800076cc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c50]:flt.h t6, ft11, ft10
	-[0x80002c54]:csrrs a7, fflags, zero
	-[0x80002c58]:sh t6, 320(a5)
Current Store : [0x80002c5c] : sh a7, 322(a5) -- Store: [0x800076d6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c68]:flt.h t6, ft11, ft10
	-[0x80002c6c]:csrrs a7, fflags, zero
	-[0x80002c70]:sh t6, 330(a5)
Current Store : [0x80002c74] : sh a7, 332(a5) -- Store: [0x800076e0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c80]:flt.h t6, ft11, ft10
	-[0x80002c84]:csrrs a7, fflags, zero
	-[0x80002c88]:sh t6, 340(a5)
Current Store : [0x80002c8c] : sh a7, 342(a5) -- Store: [0x800076ea]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c98]:flt.h t6, ft11, ft10
	-[0x80002c9c]:csrrs a7, fflags, zero
	-[0x80002ca0]:sh t6, 350(a5)
Current Store : [0x80002ca4] : sh a7, 352(a5) -- Store: [0x800076f4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cb0]:flt.h t6, ft11, ft10
	-[0x80002cb4]:csrrs a7, fflags, zero
	-[0x80002cb8]:sh t6, 360(a5)
Current Store : [0x80002cbc] : sh a7, 362(a5) -- Store: [0x800076fe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cc8]:flt.h t6, ft11, ft10
	-[0x80002ccc]:csrrs a7, fflags, zero
	-[0x80002cd0]:sh t6, 370(a5)
Current Store : [0x80002cd4] : sh a7, 372(a5) -- Store: [0x80007708]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ce0]:flt.h t6, ft11, ft10
	-[0x80002ce4]:csrrs a7, fflags, zero
	-[0x80002ce8]:sh t6, 380(a5)
Current Store : [0x80002cec] : sh a7, 382(a5) -- Store: [0x80007712]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cf8]:flt.h t6, ft11, ft10
	-[0x80002cfc]:csrrs a7, fflags, zero
	-[0x80002d00]:sh t6, 390(a5)
Current Store : [0x80002d04] : sh a7, 392(a5) -- Store: [0x8000771c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d10]:flt.h t6, ft11, ft10
	-[0x80002d14]:csrrs a7, fflags, zero
	-[0x80002d18]:sh t6, 400(a5)
Current Store : [0x80002d1c] : sh a7, 402(a5) -- Store: [0x80007726]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d28]:flt.h t6, ft11, ft10
	-[0x80002d2c]:csrrs a7, fflags, zero
	-[0x80002d30]:sh t6, 410(a5)
Current Store : [0x80002d34] : sh a7, 412(a5) -- Store: [0x80007730]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d40]:flt.h t6, ft11, ft10
	-[0x80002d44]:csrrs a7, fflags, zero
	-[0x80002d48]:sh t6, 420(a5)
Current Store : [0x80002d4c] : sh a7, 422(a5) -- Store: [0x8000773a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d58]:flt.h t6, ft11, ft10
	-[0x80002d5c]:csrrs a7, fflags, zero
	-[0x80002d60]:sh t6, 430(a5)
Current Store : [0x80002d64] : sh a7, 432(a5) -- Store: [0x80007744]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d70]:flt.h t6, ft11, ft10
	-[0x80002d74]:csrrs a7, fflags, zero
	-[0x80002d78]:sh t6, 440(a5)
Current Store : [0x80002d7c] : sh a7, 442(a5) -- Store: [0x8000774e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d88]:flt.h t6, ft11, ft10
	-[0x80002d8c]:csrrs a7, fflags, zero
	-[0x80002d90]:sh t6, 450(a5)
Current Store : [0x80002d94] : sh a7, 452(a5) -- Store: [0x80007758]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002da0]:flt.h t6, ft11, ft10
	-[0x80002da4]:csrrs a7, fflags, zero
	-[0x80002da8]:sh t6, 460(a5)
Current Store : [0x80002dac] : sh a7, 462(a5) -- Store: [0x80007762]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002db8]:flt.h t6, ft11, ft10
	-[0x80002dbc]:csrrs a7, fflags, zero
	-[0x80002dc0]:sh t6, 470(a5)
Current Store : [0x80002dc4] : sh a7, 472(a5) -- Store: [0x8000776c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002dd0]:flt.h t6, ft11, ft10
	-[0x80002dd4]:csrrs a7, fflags, zero
	-[0x80002dd8]:sh t6, 480(a5)
Current Store : [0x80002ddc] : sh a7, 482(a5) -- Store: [0x80007776]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002de8]:flt.h t6, ft11, ft10
	-[0x80002dec]:csrrs a7, fflags, zero
	-[0x80002df0]:sh t6, 490(a5)
Current Store : [0x80002df4] : sh a7, 492(a5) -- Store: [0x80007780]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e00]:flt.h t6, ft11, ft10
	-[0x80002e04]:csrrs a7, fflags, zero
	-[0x80002e08]:sh t6, 500(a5)
Current Store : [0x80002e0c] : sh a7, 502(a5) -- Store: [0x8000778a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e18]:flt.h t6, ft11, ft10
	-[0x80002e1c]:csrrs a7, fflags, zero
	-[0x80002e20]:sh t6, 510(a5)
Current Store : [0x80002e24] : sh a7, 512(a5) -- Store: [0x80007794]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e30]:flt.h t6, ft11, ft10
	-[0x80002e34]:csrrs a7, fflags, zero
	-[0x80002e38]:sh t6, 520(a5)
Current Store : [0x80002e3c] : sh a7, 522(a5) -- Store: [0x8000779e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e48]:flt.h t6, ft11, ft10
	-[0x80002e4c]:csrrs a7, fflags, zero
	-[0x80002e50]:sh t6, 530(a5)
Current Store : [0x80002e54] : sh a7, 532(a5) -- Store: [0x800077a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e60]:flt.h t6, ft11, ft10
	-[0x80002e64]:csrrs a7, fflags, zero
	-[0x80002e68]:sh t6, 540(a5)
Current Store : [0x80002e6c] : sh a7, 542(a5) -- Store: [0x800077b2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e78]:flt.h t6, ft11, ft10
	-[0x80002e7c]:csrrs a7, fflags, zero
	-[0x80002e80]:sh t6, 550(a5)
Current Store : [0x80002e84] : sh a7, 552(a5) -- Store: [0x800077bc]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e90]:flt.h t6, ft11, ft10
	-[0x80002e94]:csrrs a7, fflags, zero
	-[0x80002e98]:sh t6, 560(a5)
Current Store : [0x80002e9c] : sh a7, 562(a5) -- Store: [0x800077c6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ea8]:flt.h t6, ft11, ft10
	-[0x80002eac]:csrrs a7, fflags, zero
	-[0x80002eb0]:sh t6, 570(a5)
Current Store : [0x80002eb4] : sh a7, 572(a5) -- Store: [0x800077d0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ec0]:flt.h t6, ft11, ft10
	-[0x80002ec4]:csrrs a7, fflags, zero
	-[0x80002ec8]:sh t6, 580(a5)
Current Store : [0x80002ecc] : sh a7, 582(a5) -- Store: [0x800077da]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ed8]:flt.h t6, ft11, ft10
	-[0x80002edc]:csrrs a7, fflags, zero
	-[0x80002ee0]:sh t6, 590(a5)
Current Store : [0x80002ee4] : sh a7, 592(a5) -- Store: [0x800077e4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ef0]:flt.h t6, ft11, ft10
	-[0x80002ef4]:csrrs a7, fflags, zero
	-[0x80002ef8]:sh t6, 600(a5)
Current Store : [0x80002efc] : sh a7, 602(a5) -- Store: [0x800077ee]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f08]:flt.h t6, ft11, ft10
	-[0x80002f0c]:csrrs a7, fflags, zero
	-[0x80002f10]:sh t6, 610(a5)
Current Store : [0x80002f14] : sh a7, 612(a5) -- Store: [0x800077f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f20]:flt.h t6, ft11, ft10
	-[0x80002f24]:csrrs a7, fflags, zero
	-[0x80002f28]:sh t6, 620(a5)
Current Store : [0x80002f2c] : sh a7, 622(a5) -- Store: [0x80007802]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f38]:flt.h t6, ft11, ft10
	-[0x80002f3c]:csrrs a7, fflags, zero
	-[0x80002f40]:sh t6, 630(a5)
Current Store : [0x80002f44] : sh a7, 632(a5) -- Store: [0x8000780c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f50]:flt.h t6, ft11, ft10
	-[0x80002f54]:csrrs a7, fflags, zero
	-[0x80002f58]:sh t6, 640(a5)
Current Store : [0x80002f5c] : sh a7, 642(a5) -- Store: [0x80007816]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f68]:flt.h t6, ft11, ft10
	-[0x80002f6c]:csrrs a7, fflags, zero
	-[0x80002f70]:sh t6, 650(a5)
Current Store : [0x80002f74] : sh a7, 652(a5) -- Store: [0x80007820]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f80]:flt.h t6, ft11, ft10
	-[0x80002f84]:csrrs a7, fflags, zero
	-[0x80002f88]:sh t6, 660(a5)
Current Store : [0x80002f8c] : sh a7, 662(a5) -- Store: [0x8000782a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f98]:flt.h t6, ft11, ft10
	-[0x80002f9c]:csrrs a7, fflags, zero
	-[0x80002fa0]:sh t6, 670(a5)
Current Store : [0x80002fa4] : sh a7, 672(a5) -- Store: [0x80007834]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fb0]:flt.h t6, ft11, ft10
	-[0x80002fb4]:csrrs a7, fflags, zero
	-[0x80002fb8]:sh t6, 680(a5)
Current Store : [0x80002fbc] : sh a7, 682(a5) -- Store: [0x8000783e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fc8]:flt.h t6, ft11, ft10
	-[0x80002fcc]:csrrs a7, fflags, zero
	-[0x80002fd0]:sh t6, 690(a5)
Current Store : [0x80002fd4] : sh a7, 692(a5) -- Store: [0x80007848]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fe0]:flt.h t6, ft11, ft10
	-[0x80002fe4]:csrrs a7, fflags, zero
	-[0x80002fe8]:sh t6, 700(a5)
Current Store : [0x80002fec] : sh a7, 702(a5) -- Store: [0x80007852]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ff8]:flt.h t6, ft11, ft10
	-[0x80002ffc]:csrrs a7, fflags, zero
	-[0x80003000]:sh t6, 710(a5)
Current Store : [0x80003004] : sh a7, 712(a5) -- Store: [0x8000785c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003010]:flt.h t6, ft11, ft10
	-[0x80003014]:csrrs a7, fflags, zero
	-[0x80003018]:sh t6, 720(a5)
Current Store : [0x8000301c] : sh a7, 722(a5) -- Store: [0x80007866]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003028]:flt.h t6, ft11, ft10
	-[0x8000302c]:csrrs a7, fflags, zero
	-[0x80003030]:sh t6, 730(a5)
Current Store : [0x80003034] : sh a7, 732(a5) -- Store: [0x80007870]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003040]:flt.h t6, ft11, ft10
	-[0x80003044]:csrrs a7, fflags, zero
	-[0x80003048]:sh t6, 740(a5)
Current Store : [0x8000304c] : sh a7, 742(a5) -- Store: [0x8000787a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003058]:flt.h t6, ft11, ft10
	-[0x8000305c]:csrrs a7, fflags, zero
	-[0x80003060]:sh t6, 750(a5)
Current Store : [0x80003064] : sh a7, 752(a5) -- Store: [0x80007884]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003070]:flt.h t6, ft11, ft10
	-[0x80003074]:csrrs a7, fflags, zero
	-[0x80003078]:sh t6, 760(a5)
Current Store : [0x8000307c] : sh a7, 762(a5) -- Store: [0x8000788e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003088]:flt.h t6, ft11, ft10
	-[0x8000308c]:csrrs a7, fflags, zero
	-[0x80003090]:sh t6, 770(a5)
Current Store : [0x80003094] : sh a7, 772(a5) -- Store: [0x80007898]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030a0]:flt.h t6, ft11, ft10
	-[0x800030a4]:csrrs a7, fflags, zero
	-[0x800030a8]:sh t6, 780(a5)
Current Store : [0x800030ac] : sh a7, 782(a5) -- Store: [0x800078a2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030b8]:flt.h t6, ft11, ft10
	-[0x800030bc]:csrrs a7, fflags, zero
	-[0x800030c0]:sh t6, 790(a5)
Current Store : [0x800030c4] : sh a7, 792(a5) -- Store: [0x800078ac]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030d0]:flt.h t6, ft11, ft10
	-[0x800030d4]:csrrs a7, fflags, zero
	-[0x800030d8]:sh t6, 800(a5)
Current Store : [0x800030dc] : sh a7, 802(a5) -- Store: [0x800078b6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030e8]:flt.h t6, ft11, ft10
	-[0x800030ec]:csrrs a7, fflags, zero
	-[0x800030f0]:sh t6, 810(a5)
Current Store : [0x800030f4] : sh a7, 812(a5) -- Store: [0x800078c0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003100]:flt.h t6, ft11, ft10
	-[0x80003104]:csrrs a7, fflags, zero
	-[0x80003108]:sh t6, 820(a5)
Current Store : [0x8000310c] : sh a7, 822(a5) -- Store: [0x800078ca]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000311c]:flt.h t6, ft11, ft10
	-[0x80003120]:csrrs a7, fflags, zero
	-[0x80003124]:sh t6, 830(a5)
Current Store : [0x80003128] : sh a7, 832(a5) -- Store: [0x800078d4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003134]:flt.h t6, ft11, ft10
	-[0x80003138]:csrrs a7, fflags, zero
	-[0x8000313c]:sh t6, 840(a5)
Current Store : [0x80003140] : sh a7, 842(a5) -- Store: [0x800078de]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000314c]:flt.h t6, ft11, ft10
	-[0x80003150]:csrrs a7, fflags, zero
	-[0x80003154]:sh t6, 850(a5)
Current Store : [0x80003158] : sh a7, 852(a5) -- Store: [0x800078e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003164]:flt.h t6, ft11, ft10
	-[0x80003168]:csrrs a7, fflags, zero
	-[0x8000316c]:sh t6, 860(a5)
Current Store : [0x80003170] : sh a7, 862(a5) -- Store: [0x800078f2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000317c]:flt.h t6, ft11, ft10
	-[0x80003180]:csrrs a7, fflags, zero
	-[0x80003184]:sh t6, 870(a5)
Current Store : [0x80003188] : sh a7, 872(a5) -- Store: [0x800078fc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003194]:flt.h t6, ft11, ft10
	-[0x80003198]:csrrs a7, fflags, zero
	-[0x8000319c]:sh t6, 880(a5)
Current Store : [0x800031a0] : sh a7, 882(a5) -- Store: [0x80007906]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031ac]:flt.h t6, ft11, ft10
	-[0x800031b0]:csrrs a7, fflags, zero
	-[0x800031b4]:sh t6, 890(a5)
Current Store : [0x800031b8] : sh a7, 892(a5) -- Store: [0x80007910]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031c4]:flt.h t6, ft11, ft10
	-[0x800031c8]:csrrs a7, fflags, zero
	-[0x800031cc]:sh t6, 900(a5)
Current Store : [0x800031d0] : sh a7, 902(a5) -- Store: [0x8000791a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031dc]:flt.h t6, ft11, ft10
	-[0x800031e0]:csrrs a7, fflags, zero
	-[0x800031e4]:sh t6, 910(a5)
Current Store : [0x800031e8] : sh a7, 912(a5) -- Store: [0x80007924]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031f4]:flt.h t6, ft11, ft10
	-[0x800031f8]:csrrs a7, fflags, zero
	-[0x800031fc]:sh t6, 920(a5)
Current Store : [0x80003200] : sh a7, 922(a5) -- Store: [0x8000792e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000320c]:flt.h t6, ft11, ft10
	-[0x80003210]:csrrs a7, fflags, zero
	-[0x80003214]:sh t6, 930(a5)
Current Store : [0x80003218] : sh a7, 932(a5) -- Store: [0x80007938]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003224]:flt.h t6, ft11, ft10
	-[0x80003228]:csrrs a7, fflags, zero
	-[0x8000322c]:sh t6, 940(a5)
Current Store : [0x80003230] : sh a7, 942(a5) -- Store: [0x80007942]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000323c]:flt.h t6, ft11, ft10
	-[0x80003240]:csrrs a7, fflags, zero
	-[0x80003244]:sh t6, 950(a5)
Current Store : [0x80003248] : sh a7, 952(a5) -- Store: [0x8000794c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003254]:flt.h t6, ft11, ft10
	-[0x80003258]:csrrs a7, fflags, zero
	-[0x8000325c]:sh t6, 960(a5)
Current Store : [0x80003260] : sh a7, 962(a5) -- Store: [0x80007956]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000326c]:flt.h t6, ft11, ft10
	-[0x80003270]:csrrs a7, fflags, zero
	-[0x80003274]:sh t6, 970(a5)
Current Store : [0x80003278] : sh a7, 972(a5) -- Store: [0x80007960]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003284]:flt.h t6, ft11, ft10
	-[0x80003288]:csrrs a7, fflags, zero
	-[0x8000328c]:sh t6, 980(a5)
Current Store : [0x80003290] : sh a7, 982(a5) -- Store: [0x8000796a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000329c]:flt.h t6, ft11, ft10
	-[0x800032a0]:csrrs a7, fflags, zero
	-[0x800032a4]:sh t6, 990(a5)
Current Store : [0x800032a8] : sh a7, 992(a5) -- Store: [0x80007974]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032b4]:flt.h t6, ft11, ft10
	-[0x800032b8]:csrrs a7, fflags, zero
	-[0x800032bc]:sh t6, 1000(a5)
Current Store : [0x800032c0] : sh a7, 1002(a5) -- Store: [0x8000797e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032cc]:flt.h t6, ft11, ft10
	-[0x800032d0]:csrrs a7, fflags, zero
	-[0x800032d4]:sh t6, 1010(a5)
Current Store : [0x800032d8] : sh a7, 1012(a5) -- Store: [0x80007988]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032e4]:flt.h t6, ft11, ft10
	-[0x800032e8]:csrrs a7, fflags, zero
	-[0x800032ec]:sh t6, 1020(a5)
Current Store : [0x800032f0] : sh a7, 1022(a5) -- Store: [0x80007992]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032fc]:flt.h t6, ft11, ft10
	-[0x80003300]:csrrs a7, fflags, zero
	-[0x80003304]:sh t6, 1030(a5)
Current Store : [0x80003308] : sh a7, 1032(a5) -- Store: [0x8000799c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003314]:flt.h t6, ft11, ft10
	-[0x80003318]:csrrs a7, fflags, zero
	-[0x8000331c]:sh t6, 1040(a5)
Current Store : [0x80003320] : sh a7, 1042(a5) -- Store: [0x800079a6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000332c]:flt.h t6, ft11, ft10
	-[0x80003330]:csrrs a7, fflags, zero
	-[0x80003334]:sh t6, 1050(a5)
Current Store : [0x80003338] : sh a7, 1052(a5) -- Store: [0x800079b0]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003344]:flt.h t6, ft11, ft10
	-[0x80003348]:csrrs a7, fflags, zero
	-[0x8000334c]:sh t6, 1060(a5)
Current Store : [0x80003350] : sh a7, 1062(a5) -- Store: [0x800079ba]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000335c]:flt.h t6, ft11, ft10
	-[0x80003360]:csrrs a7, fflags, zero
	-[0x80003364]:sh t6, 1070(a5)
Current Store : [0x80003368] : sh a7, 1072(a5) -- Store: [0x800079c4]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003374]:flt.h t6, ft11, ft10
	-[0x80003378]:csrrs a7, fflags, zero
	-[0x8000337c]:sh t6, 1080(a5)
Current Store : [0x80003380] : sh a7, 1082(a5) -- Store: [0x800079ce]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000338c]:flt.h t6, ft11, ft10
	-[0x80003390]:csrrs a7, fflags, zero
	-[0x80003394]:sh t6, 1090(a5)
Current Store : [0x80003398] : sh a7, 1092(a5) -- Store: [0x800079d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033a4]:flt.h t6, ft11, ft10
	-[0x800033a8]:csrrs a7, fflags, zero
	-[0x800033ac]:sh t6, 1100(a5)
Current Store : [0x800033b0] : sh a7, 1102(a5) -- Store: [0x800079e2]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033bc]:flt.h t6, ft11, ft10
	-[0x800033c0]:csrrs a7, fflags, zero
	-[0x800033c4]:sh t6, 1110(a5)
Current Store : [0x800033c8] : sh a7, 1112(a5) -- Store: [0x800079ec]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033d4]:flt.h t6, ft11, ft10
	-[0x800033d8]:csrrs a7, fflags, zero
	-[0x800033dc]:sh t6, 1120(a5)
Current Store : [0x800033e0] : sh a7, 1122(a5) -- Store: [0x800079f6]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033ec]:flt.h t6, ft11, ft10
	-[0x800033f0]:csrrs a7, fflags, zero
	-[0x800033f4]:sh t6, 1130(a5)
Current Store : [0x800033f8] : sh a7, 1132(a5) -- Store: [0x80007a00]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003404]:flt.h t6, ft11, ft10
	-[0x80003408]:csrrs a7, fflags, zero
	-[0x8000340c]:sh t6, 1140(a5)
Current Store : [0x80003410] : sh a7, 1142(a5) -- Store: [0x80007a0a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000341c]:flt.h t6, ft11, ft10
	-[0x80003420]:csrrs a7, fflags, zero
	-[0x80003424]:sh t6, 1150(a5)
Current Store : [0x80003428] : sh a7, 1152(a5) -- Store: [0x80007a14]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003434]:flt.h t6, ft11, ft10
	-[0x80003438]:csrrs a7, fflags, zero
	-[0x8000343c]:sh t6, 1160(a5)
Current Store : [0x80003440] : sh a7, 1162(a5) -- Store: [0x80007a1e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000344c]:flt.h t6, ft11, ft10
	-[0x80003450]:csrrs a7, fflags, zero
	-[0x80003454]:sh t6, 1170(a5)
Current Store : [0x80003458] : sh a7, 1172(a5) -- Store: [0x80007a28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003464]:flt.h t6, ft11, ft10
	-[0x80003468]:csrrs a7, fflags, zero
	-[0x8000346c]:sh t6, 1180(a5)
Current Store : [0x80003470] : sh a7, 1182(a5) -- Store: [0x80007a32]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000347c]:flt.h t6, ft11, ft10
	-[0x80003480]:csrrs a7, fflags, zero
	-[0x80003484]:sh t6, 1190(a5)
Current Store : [0x80003488] : sh a7, 1192(a5) -- Store: [0x80007a3c]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003494]:flt.h t6, ft11, ft10
	-[0x80003498]:csrrs a7, fflags, zero
	-[0x8000349c]:sh t6, 1200(a5)
Current Store : [0x800034a0] : sh a7, 1202(a5) -- Store: [0x80007a46]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034ac]:flt.h t6, ft11, ft10
	-[0x800034b0]:csrrs a7, fflags, zero
	-[0x800034b4]:sh t6, 1210(a5)
Current Store : [0x800034b8] : sh a7, 1212(a5) -- Store: [0x80007a50]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034c4]:flt.h t6, ft11, ft10
	-[0x800034c8]:csrrs a7, fflags, zero
	-[0x800034cc]:sh t6, 1220(a5)
Current Store : [0x800034d0] : sh a7, 1222(a5) -- Store: [0x80007a5a]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034dc]:flt.h t6, ft11, ft10
	-[0x800034e0]:csrrs a7, fflags, zero
	-[0x800034e4]:sh t6, 1230(a5)
Current Store : [0x800034e8] : sh a7, 1232(a5) -- Store: [0x80007a64]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034f4]:flt.h t6, ft11, ft10
	-[0x800034f8]:csrrs a7, fflags, zero
	-[0x800034fc]:sh t6, 1240(a5)
Current Store : [0x80003500] : sh a7, 1242(a5) -- Store: [0x80007a6e]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000350c]:flt.h t6, ft11, ft10
	-[0x80003510]:csrrs a7, fflags, zero
	-[0x80003514]:sh t6, 1250(a5)
Current Store : [0x80003518] : sh a7, 1252(a5) -- Store: [0x80007a78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003524]:flt.h t6, ft11, ft10
	-[0x80003528]:csrrs a7, fflags, zero
	-[0x8000352c]:sh t6, 1260(a5)
Current Store : [0x80003530] : sh a7, 1262(a5) -- Store: [0x80007a82]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000353c]:flt.h t6, ft11, ft10
	-[0x80003540]:csrrs a7, fflags, zero
	-[0x80003544]:sh t6, 1270(a5)
Current Store : [0x80003548] : sh a7, 1272(a5) -- Store: [0x80007a8c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003554]:flt.h t6, ft11, ft10
	-[0x80003558]:csrrs a7, fflags, zero
	-[0x8000355c]:sh t6, 1280(a5)
Current Store : [0x80003560] : sh a7, 1282(a5) -- Store: [0x80007a96]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000356c]:flt.h t6, ft11, ft10
	-[0x80003570]:csrrs a7, fflags, zero
	-[0x80003574]:sh t6, 1290(a5)
Current Store : [0x80003578] : sh a7, 1292(a5) -- Store: [0x80007aa0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003584]:flt.h t6, ft11, ft10
	-[0x80003588]:csrrs a7, fflags, zero
	-[0x8000358c]:sh t6, 1300(a5)
Current Store : [0x80003590] : sh a7, 1302(a5) -- Store: [0x80007aaa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000359c]:flt.h t6, ft11, ft10
	-[0x800035a0]:csrrs a7, fflags, zero
	-[0x800035a4]:sh t6, 1310(a5)
Current Store : [0x800035a8] : sh a7, 1312(a5) -- Store: [0x80007ab4]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035b4]:flt.h t6, ft11, ft10
	-[0x800035b8]:csrrs a7, fflags, zero
	-[0x800035bc]:sh t6, 1320(a5)
Current Store : [0x800035c0] : sh a7, 1322(a5) -- Store: [0x80007abe]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035cc]:flt.h t6, ft11, ft10
	-[0x800035d0]:csrrs a7, fflags, zero
	-[0x800035d4]:sh t6, 1330(a5)
Current Store : [0x800035d8] : sh a7, 1332(a5) -- Store: [0x80007ac8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035e4]:flt.h t6, ft11, ft10
	-[0x800035e8]:csrrs a7, fflags, zero
	-[0x800035ec]:sh t6, 1340(a5)
Current Store : [0x800035f0] : sh a7, 1342(a5) -- Store: [0x80007ad2]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035fc]:flt.h t6, ft11, ft10
	-[0x80003600]:csrrs a7, fflags, zero
	-[0x80003604]:sh t6, 1350(a5)
Current Store : [0x80003608] : sh a7, 1352(a5) -- Store: [0x80007adc]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003614]:flt.h t6, ft11, ft10
	-[0x80003618]:csrrs a7, fflags, zero
	-[0x8000361c]:sh t6, 1360(a5)
Current Store : [0x80003620] : sh a7, 1362(a5) -- Store: [0x80007ae6]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000362c]:flt.h t6, ft11, ft10
	-[0x80003630]:csrrs a7, fflags, zero
	-[0x80003634]:sh t6, 1370(a5)
Current Store : [0x80003638] : sh a7, 1372(a5) -- Store: [0x80007af0]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003644]:flt.h t6, ft11, ft10
	-[0x80003648]:csrrs a7, fflags, zero
	-[0x8000364c]:sh t6, 1380(a5)
Current Store : [0x80003650] : sh a7, 1382(a5) -- Store: [0x80007afa]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000365c]:flt.h t6, ft11, ft10
	-[0x80003660]:csrrs a7, fflags, zero
	-[0x80003664]:sh t6, 1390(a5)
Current Store : [0x80003668] : sh a7, 1392(a5) -- Store: [0x80007b04]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003674]:flt.h t6, ft11, ft10
	-[0x80003678]:csrrs a7, fflags, zero
	-[0x8000367c]:sh t6, 1400(a5)
Current Store : [0x80003680] : sh a7, 1402(a5) -- Store: [0x80007b0e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000368c]:flt.h t6, ft11, ft10
	-[0x80003690]:csrrs a7, fflags, zero
	-[0x80003694]:sh t6, 1410(a5)
Current Store : [0x80003698] : sh a7, 1412(a5) -- Store: [0x80007b18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036a4]:flt.h t6, ft11, ft10
	-[0x800036a8]:csrrs a7, fflags, zero
	-[0x800036ac]:sh t6, 1420(a5)
Current Store : [0x800036b0] : sh a7, 1422(a5) -- Store: [0x80007b22]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036bc]:flt.h t6, ft11, ft10
	-[0x800036c0]:csrrs a7, fflags, zero
	-[0x800036c4]:sh t6, 1430(a5)
Current Store : [0x800036c8] : sh a7, 1432(a5) -- Store: [0x80007b2c]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036d4]:flt.h t6, ft11, ft10
	-[0x800036d8]:csrrs a7, fflags, zero
	-[0x800036dc]:sh t6, 1440(a5)
Current Store : [0x800036e0] : sh a7, 1442(a5) -- Store: [0x80007b36]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036ec]:flt.h t6, ft11, ft10
	-[0x800036f0]:csrrs a7, fflags, zero
	-[0x800036f4]:sh t6, 1450(a5)
Current Store : [0x800036f8] : sh a7, 1452(a5) -- Store: [0x80007b40]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003704]:flt.h t6, ft11, ft10
	-[0x80003708]:csrrs a7, fflags, zero
	-[0x8000370c]:sh t6, 1460(a5)
Current Store : [0x80003710] : sh a7, 1462(a5) -- Store: [0x80007b4a]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000371c]:flt.h t6, ft11, ft10
	-[0x80003720]:csrrs a7, fflags, zero
	-[0x80003724]:sh t6, 1470(a5)
Current Store : [0x80003728] : sh a7, 1472(a5) -- Store: [0x80007b54]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003734]:flt.h t6, ft11, ft10
	-[0x80003738]:csrrs a7, fflags, zero
	-[0x8000373c]:sh t6, 1480(a5)
Current Store : [0x80003740] : sh a7, 1482(a5) -- Store: [0x80007b5e]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000374c]:flt.h t6, ft11, ft10
	-[0x80003750]:csrrs a7, fflags, zero
	-[0x80003754]:sh t6, 1490(a5)
Current Store : [0x80003758] : sh a7, 1492(a5) -- Store: [0x80007b68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003764]:flt.h t6, ft11, ft10
	-[0x80003768]:csrrs a7, fflags, zero
	-[0x8000376c]:sh t6, 1500(a5)
Current Store : [0x80003770] : sh a7, 1502(a5) -- Store: [0x80007b72]:0x0000000000000010




Last Coverpoint : ['opcode : flt.h', 'rd : x31', 'rs1 : f31', 'rs2 : f30', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000377c]:flt.h t6, ft11, ft10
	-[0x80003780]:csrrs a7, fflags, zero
	-[0x80003784]:sh t6, 1510(a5)
Current Store : [0x80003788] : sh a7, 1512(a5) -- Store: [0x80007b7c]:0x0000000000000010




Last Coverpoint : ['opcode : flt.h', 'rd : x31', 'rs1 : f31', 'rs2 : f30', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003794]:flt.h t6, ft11, ft10
	-[0x80003798]:csrrs a7, fflags, zero
	-[0x8000379c]:sh t6, 1520(a5)
Current Store : [0x800037a0] : sh a7, 1522(a5) -- Store: [0x80007b86]:0x0000000000000010





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

|s.no|            signature             |                                                                                               coverpoints                                                                                                |                                                     code                                                      |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80005b04]<br>0x0000000000000000|- opcode : flt.h<br> - rd : x3<br> - rs1 : f13<br> - rs2 : f24<br> - rs1 != rs2<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br> |[0x80000120]:flt.h gp, fa3, fs8<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh gp, 0(a5)<br>      |
|   2|[0x80005b0e]<br>0x0000000000000000|- rd : x5<br> - rs1 : f4<br> - rs2 : f4<br> - rs1 == rs2<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                        |[0x80000138]:flt.h t0, ft4, ft4<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh t0, 10(a5)<br>     |
|   3|[0x80005b18]<br>0x0000000000000001|- rd : x23<br> - rs1 : f22<br> - rs2 : f6<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                       |[0x80000150]:flt.h s7, fs6, ft6<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh s7, 20(a5)<br>     |
|   4|[0x80005b22]<br>0x0000000000000000|- rd : x24<br> - rs1 : f27<br> - rs2 : f14<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                      |[0x80000168]:flt.h s8, fs11, fa4<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sh s8, 30(a5)<br>    |
|   5|[0x80005b2c]<br>0x0000000000000000|- rd : x26<br> - rs1 : f6<br> - rs2 : f1<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                        |[0x80000180]:flt.h s10, ft6, ft1<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sh s10, 40(a5)<br>   |
|   6|[0x80005b36]<br>0x0000000000000000|- rd : x19<br> - rs1 : f12<br> - rs2 : f9<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                       |[0x80000198]:flt.h s3, fa2, fs1<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sh s3, 50(a5)<br>     |
|   7|[0x80005b40]<br>0x0000000000000000|- rd : x1<br> - rs1 : f7<br> - rs2 : f27<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                        |[0x800001b0]:flt.h ra, ft7, fs11<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sh ra, 60(a5)<br>    |
|   8|[0x80005b74]<br>0x0000000000000000|- rd : x17<br> - rs1 : f30<br> - rs2 : f25<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                      |[0x800001d4]:flt.h a7, ft10, fs9<br> [0x800001d8]:csrrs s5, fflags, zero<br> [0x800001dc]:sh a7, 0(s3)<br>     |
|   9|[0x80005b84]<br>0x0000000000000000|- rd : x2<br> - rs1 : f9<br> - rs2 : f0<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                         |[0x800001f8]:flt.h sp, fs1, ft0<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sh sp, 0(a5)<br>      |
|  10|[0x80005b8e]<br>0x0000000000000000|- rd : x7<br> - rs1 : f5<br> - rs2 : f16<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                        |[0x80000210]:flt.h t2, ft5, fa6<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sh t2, 10(a5)<br>     |
|  11|[0x80005b98]<br>0x0000000000000001|- rd : x31<br> - rs1 : f8<br> - rs2 : f31<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                       |[0x80000228]:flt.h t6, fs0, ft11<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sh t6, 20(a5)<br>    |
|  12|[0x80005ba2]<br>0x0000000000000000|- rd : x28<br> - rs1 : f20<br> - rs2 : f19<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                      |[0x80000240]:flt.h t3, fs4, fs3<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh t3, 30(a5)<br>     |
|  13|[0x80005bac]<br>0x0000000000000001|- rd : x14<br> - rs1 : f28<br> - rs2 : f13<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                      |[0x80000258]:flt.h a4, ft8, fa3<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sh a4, 40(a5)<br>     |
|  14|[0x80005bb6]<br>0x0000000000000001|- rd : x20<br> - rs1 : f0<br> - rs2 : f10<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                       |[0x80000270]:flt.h s4, ft0, fa0<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sh s4, 50(a5)<br>     |
|  15|[0x80005be4]<br>0x0000000000000001|- rd : x15<br> - rs1 : f14<br> - rs2 : f2<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                       |[0x80000294]:flt.h a5, fa4, ft2<br> [0x80000298]:csrrs s5, fflags, zero<br> [0x8000029c]:sh a5, 0(s3)<br>      |
|  16|[0x80005bf4]<br>0x0000000000000001|- rd : x12<br> - rs1 : f23<br> - rs2 : f29<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                      |[0x800002b8]:flt.h a2, fs7, ft9<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sh a2, 0(a5)<br>      |
|  17|[0x80005bfe]<br>0x0000000000000001|- rd : x25<br> - rs1 : f11<br> - rs2 : f18<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                      |[0x800002d0]:flt.h s9, fa1, fs2<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sh s9, 10(a5)<br>     |
|  18|[0x80005c08]<br>0x0000000000000001|- rd : x30<br> - rs1 : f2<br> - rs2 : f20<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                       |[0x800002e8]:flt.h t5, ft2, fs4<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sh t5, 20(a5)<br>     |
|  19|[0x80005c24]<br>0x0000000000000001|- rd : x16<br> - rs1 : f24<br> - rs2 : f23<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                      |[0x8000030c]:flt.h a6, fs8, fs7<br> [0x80000310]:csrrs s5, fflags, zero<br> [0x80000314]:sh a6, 0(s3)<br>      |
|  20|[0x80005c34]<br>0x0000000000000001|- rd : x27<br> - rs1 : f25<br> - rs2 : f8<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                       |[0x80000330]:flt.h s11, fs9, fs0<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sh s11, 0(a5)<br>    |
|  21|[0x80005c3e]<br>0x0000000000000001|- rd : x29<br> - rs1 : f26<br> - rs2 : f11<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                      |[0x80000348]:flt.h t4, fs10, fa1<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh t4, 10(a5)<br>    |
|  22|[0x80005c48]<br>0x0000000000000001|- rd : x4<br> - rs1 : f31<br> - rs2 : f7<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                        |[0x80000360]:flt.h tp, ft11, ft7<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh tp, 20(a5)<br>    |
|  23|[0x80005c52]<br>0x0000000000000001|- rd : x10<br> - rs1 : f1<br> - rs2 : f30<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                       |[0x80000378]:flt.h a0, ft1, ft10<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh a0, 30(a5)<br>    |
|  24|[0x80005c5c]<br>0x0000000000000000|- rd : x0<br> - rs1 : f15<br> - rs2 : f17<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                       |[0x80000390]:flt.h zero, fa5, fa7<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sh zero, 40(a5)<br> |
|  25|[0x80005c66]<br>0x0000000000000001|- rd : x6<br> - rs1 : f16<br> - rs2 : f21<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                       |[0x800003a8]:flt.h t1, fa6, fs5<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sh t1, 50(a5)<br>     |
|  26|[0x80005c70]<br>0x0000000000000000|- rd : x8<br> - rs1 : f18<br> - rs2 : f28<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                       |[0x800003c0]:flt.h fp, fs2, ft8<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh fp, 60(a5)<br>     |
|  27|[0x80005c7a]<br>0x0000000000000000|- rd : x11<br> - rs1 : f3<br> - rs2 : f5<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                        |[0x800003d8]:flt.h a1, ft3, ft5<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh a1, 70(a5)<br>     |
|  28|[0x80005c84]<br>0x0000000000000000|- rd : x9<br> - rs1 : f29<br> - rs2 : f12<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                       |[0x800003f0]:flt.h s1, ft9, fa2<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh s1, 80(a5)<br>     |
|  29|[0x80005c8e]<br>0x0000000000000000|- rd : x18<br> - rs1 : f21<br> - rs2 : f15<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                      |[0x80000408]:flt.h s2, fs5, fa5<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh s2, 90(a5)<br>     |
|  30|[0x80005c98]<br>0x0000000000000000|- rd : x22<br> - rs1 : f17<br> - rs2 : f22<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                      |[0x80000420]:flt.h s6, fa7, fs6<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sh s6, 100(a5)<br>    |
|  31|[0x80005ca2]<br>0x0000000000000000|- rd : x21<br> - rs1 : f19<br> - rs2 : f26<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                      |[0x80000438]:flt.h s5, fs3, fs10<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sh s5, 110(a5)<br>   |
|  32|[0x80005cac]<br>0x0000000000000000|- rd : x13<br> - rs1 : f10<br> - rs2 : f3<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                       |[0x80000450]:flt.h a3, fa0, ft3<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sh a3, 120(a5)<br>    |
|  33|[0x80005cb6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000468]:flt.h t6, ft11, ft10<br> [0x8000046c]:csrrs a7, fflags, zero<br> [0x80000470]:sh t6, 130(a5)<br>  |
|  34|[0x80005cc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000480]:flt.h t6, ft11, ft10<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:sh t6, 140(a5)<br>  |
|  35|[0x80005cca]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000498]:flt.h t6, ft11, ft10<br> [0x8000049c]:csrrs a7, fflags, zero<br> [0x800004a0]:sh t6, 150(a5)<br>  |
|  36|[0x80005cd4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800004b0]:flt.h t6, ft11, ft10<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:sh t6, 160(a5)<br>  |
|  37|[0x80005cde]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800004c8]:flt.h t6, ft11, ft10<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:sh t6, 170(a5)<br>  |
|  38|[0x80005ce8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800004e0]:flt.h t6, ft11, ft10<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:sh t6, 180(a5)<br>  |
|  39|[0x80005cf2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800004f8]:flt.h t6, ft11, ft10<br> [0x800004fc]:csrrs a7, fflags, zero<br> [0x80000500]:sh t6, 190(a5)<br>  |
|  40|[0x80005cfc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000510]:flt.h t6, ft11, ft10<br> [0x80000514]:csrrs a7, fflags, zero<br> [0x80000518]:sh t6, 200(a5)<br>  |
|  41|[0x80005d06]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000528]:flt.h t6, ft11, ft10<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:sh t6, 210(a5)<br>  |
|  42|[0x80005d10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000540]:flt.h t6, ft11, ft10<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:sh t6, 220(a5)<br>  |
|  43|[0x80005d1a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000558]:flt.h t6, ft11, ft10<br> [0x8000055c]:csrrs a7, fflags, zero<br> [0x80000560]:sh t6, 230(a5)<br>  |
|  44|[0x80005d24]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80000570]:flt.h t6, ft11, ft10<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:sh t6, 240(a5)<br>  |
|  45|[0x80005d2e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000588]:flt.h t6, ft11, ft10<br> [0x8000058c]:csrrs a7, fflags, zero<br> [0x80000590]:sh t6, 250(a5)<br>  |
|  46|[0x80005d38]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800005a0]:flt.h t6, ft11, ft10<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:sh t6, 260(a5)<br>  |
|  47|[0x80005d42]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800005b8]:flt.h t6, ft11, ft10<br> [0x800005bc]:csrrs a7, fflags, zero<br> [0x800005c0]:sh t6, 270(a5)<br>  |
|  48|[0x80005d4c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800005d0]:flt.h t6, ft11, ft10<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:sh t6, 280(a5)<br>  |
|  49|[0x80005d56]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800005e8]:flt.h t6, ft11, ft10<br> [0x800005ec]:csrrs a7, fflags, zero<br> [0x800005f0]:sh t6, 290(a5)<br>  |
|  50|[0x80005d60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000600]:flt.h t6, ft11, ft10<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:sh t6, 300(a5)<br>  |
|  51|[0x80005d6a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000618]:flt.h t6, ft11, ft10<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:sh t6, 310(a5)<br>  |
|  52|[0x80005d74]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80000630]:flt.h t6, ft11, ft10<br> [0x80000634]:csrrs a7, fflags, zero<br> [0x80000638]:sh t6, 320(a5)<br>  |
|  53|[0x80005d7e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000648]:flt.h t6, ft11, ft10<br> [0x8000064c]:csrrs a7, fflags, zero<br> [0x80000650]:sh t6, 330(a5)<br>  |
|  54|[0x80005d88]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80000660]:flt.h t6, ft11, ft10<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:sh t6, 340(a5)<br>  |
|  55|[0x80005d92]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80000678]:flt.h t6, ft11, ft10<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:sh t6, 350(a5)<br>  |
|  56|[0x80005d9c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000690]:flt.h t6, ft11, ft10<br> [0x80000694]:csrrs a7, fflags, zero<br> [0x80000698]:sh t6, 360(a5)<br>  |
|  57|[0x80005da6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800006a8]:flt.h t6, ft11, ft10<br> [0x800006ac]:csrrs a7, fflags, zero<br> [0x800006b0]:sh t6, 370(a5)<br>  |
|  58|[0x80005db0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800006c0]:flt.h t6, ft11, ft10<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:sh t6, 380(a5)<br>  |
|  59|[0x80005dba]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800006d8]:flt.h t6, ft11, ft10<br> [0x800006dc]:csrrs a7, fflags, zero<br> [0x800006e0]:sh t6, 390(a5)<br>  |
|  60|[0x80005dc4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800006f0]:flt.h t6, ft11, ft10<br> [0x800006f4]:csrrs a7, fflags, zero<br> [0x800006f8]:sh t6, 400(a5)<br>  |
|  61|[0x80005dce]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000708]:flt.h t6, ft11, ft10<br> [0x8000070c]:csrrs a7, fflags, zero<br> [0x80000710]:sh t6, 410(a5)<br>  |
|  62|[0x80005dd8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80000720]:flt.h t6, ft11, ft10<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:sh t6, 420(a5)<br>  |
|  63|[0x80005de2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000738]:flt.h t6, ft11, ft10<br> [0x8000073c]:csrrs a7, fflags, zero<br> [0x80000740]:sh t6, 430(a5)<br>  |
|  64|[0x80005dec]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000750]:flt.h t6, ft11, ft10<br> [0x80000754]:csrrs a7, fflags, zero<br> [0x80000758]:sh t6, 440(a5)<br>  |
|  65|[0x80005df6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000768]:flt.h t6, ft11, ft10<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:sh t6, 450(a5)<br>  |
|  66|[0x80005e00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000780]:flt.h t6, ft11, ft10<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:sh t6, 460(a5)<br>  |
|  67|[0x80005e0a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000798]:flt.h t6, ft11, ft10<br> [0x8000079c]:csrrs a7, fflags, zero<br> [0x800007a0]:sh t6, 470(a5)<br>  |
|  68|[0x80005e14]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800007b0]:flt.h t6, ft11, ft10<br> [0x800007b4]:csrrs a7, fflags, zero<br> [0x800007b8]:sh t6, 480(a5)<br>  |
|  69|[0x80005e1e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x800007c8]:flt.h t6, ft11, ft10<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:sh t6, 490(a5)<br>  |
|  70|[0x80005e28]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800007e0]:flt.h t6, ft11, ft10<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:sh t6, 500(a5)<br>  |
|  71|[0x80005e32]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800007f8]:flt.h t6, ft11, ft10<br> [0x800007fc]:csrrs a7, fflags, zero<br> [0x80000800]:sh t6, 510(a5)<br>  |
|  72|[0x80005e3c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000810]:flt.h t6, ft11, ft10<br> [0x80000814]:csrrs a7, fflags, zero<br> [0x80000818]:sh t6, 520(a5)<br>  |
|  73|[0x80005e46]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000828]:flt.h t6, ft11, ft10<br> [0x8000082c]:csrrs a7, fflags, zero<br> [0x80000830]:sh t6, 530(a5)<br>  |
|  74|[0x80005e50]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000840]:flt.h t6, ft11, ft10<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:sh t6, 540(a5)<br>  |
|  75|[0x80005e5a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000858]:flt.h t6, ft11, ft10<br> [0x8000085c]:csrrs a7, fflags, zero<br> [0x80000860]:sh t6, 550(a5)<br>  |
|  76|[0x80005e64]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80000870]:flt.h t6, ft11, ft10<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:sh t6, 560(a5)<br>  |
|  77|[0x80005e6e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000888]:flt.h t6, ft11, ft10<br> [0x8000088c]:csrrs a7, fflags, zero<br> [0x80000890]:sh t6, 570(a5)<br>  |
|  78|[0x80005e78]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800008a0]:flt.h t6, ft11, ft10<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:sh t6, 580(a5)<br>  |
|  79|[0x80005e82]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x800008b8]:flt.h t6, ft11, ft10<br> [0x800008bc]:csrrs a7, fflags, zero<br> [0x800008c0]:sh t6, 590(a5)<br>  |
|  80|[0x80005e8c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800008d0]:flt.h t6, ft11, ft10<br> [0x800008d4]:csrrs a7, fflags, zero<br> [0x800008d8]:sh t6, 600(a5)<br>  |
|  81|[0x80005e96]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800008e8]:flt.h t6, ft11, ft10<br> [0x800008ec]:csrrs a7, fflags, zero<br> [0x800008f0]:sh t6, 610(a5)<br>  |
|  82|[0x80005ea0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000900]:flt.h t6, ft11, ft10<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:sh t6, 620(a5)<br>  |
|  83|[0x80005eaa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000918]:flt.h t6, ft11, ft10<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:sh t6, 630(a5)<br>  |
|  84|[0x80005eb4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000930]:flt.h t6, ft11, ft10<br> [0x80000934]:csrrs a7, fflags, zero<br> [0x80000938]:sh t6, 640(a5)<br>  |
|  85|[0x80005ebe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000948]:flt.h t6, ft11, ft10<br> [0x8000094c]:csrrs a7, fflags, zero<br> [0x80000950]:sh t6, 650(a5)<br>  |
|  86|[0x80005ec8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80000960]:flt.h t6, ft11, ft10<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:sh t6, 660(a5)<br>  |
|  87|[0x80005ed2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000978]:flt.h t6, ft11, ft10<br> [0x8000097c]:csrrs a7, fflags, zero<br> [0x80000980]:sh t6, 670(a5)<br>  |
|  88|[0x80005edc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000990]:flt.h t6, ft11, ft10<br> [0x80000994]:csrrs a7, fflags, zero<br> [0x80000998]:sh t6, 680(a5)<br>  |
|  89|[0x80005ee6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800009a8]:flt.h t6, ft11, ft10<br> [0x800009ac]:csrrs a7, fflags, zero<br> [0x800009b0]:sh t6, 690(a5)<br>  |
|  90|[0x80005ef0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800009c0]:flt.h t6, ft11, ft10<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:sh t6, 700(a5)<br>  |
|  91|[0x80005efa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800009d8]:flt.h t6, ft11, ft10<br> [0x800009dc]:csrrs a7, fflags, zero<br> [0x800009e0]:sh t6, 710(a5)<br>  |
|  92|[0x80005f04]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800009f0]:flt.h t6, ft11, ft10<br> [0x800009f4]:csrrs a7, fflags, zero<br> [0x800009f8]:sh t6, 720(a5)<br>  |
|  93|[0x80005f0e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a08]:flt.h t6, ft11, ft10<br> [0x80000a0c]:csrrs a7, fflags, zero<br> [0x80000a10]:sh t6, 730(a5)<br>  |
|  94|[0x80005f18]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a20]:flt.h t6, ft11, ft10<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:sh t6, 740(a5)<br>  |
|  95|[0x80005f22]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a38]:flt.h t6, ft11, ft10<br> [0x80000a3c]:csrrs a7, fflags, zero<br> [0x80000a40]:sh t6, 750(a5)<br>  |
|  96|[0x80005f2c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a50]:flt.h t6, ft11, ft10<br> [0x80000a54]:csrrs a7, fflags, zero<br> [0x80000a58]:sh t6, 760(a5)<br>  |
|  97|[0x80005f36]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a68]:flt.h t6, ft11, ft10<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:sh t6, 770(a5)<br>  |
|  98|[0x80005f40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a80]:flt.h t6, ft11, ft10<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:sh t6, 780(a5)<br>  |
|  99|[0x80005f4a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a98]:flt.h t6, ft11, ft10<br> [0x80000a9c]:csrrs a7, fflags, zero<br> [0x80000aa0]:sh t6, 790(a5)<br>  |
| 100|[0x80005f54]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ab0]:flt.h t6, ft11, ft10<br> [0x80000ab4]:csrrs a7, fflags, zero<br> [0x80000ab8]:sh t6, 800(a5)<br>  |
| 101|[0x80005f5e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ac8]:flt.h t6, ft11, ft10<br> [0x80000acc]:csrrs a7, fflags, zero<br> [0x80000ad0]:sh t6, 810(a5)<br>  |
| 102|[0x80005f68]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ae0]:flt.h t6, ft11, ft10<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:sh t6, 820(a5)<br>  |
| 103|[0x80005f72]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80000af8]:flt.h t6, ft11, ft10<br> [0x80000afc]:csrrs a7, fflags, zero<br> [0x80000b00]:sh t6, 830(a5)<br>  |
| 104|[0x80005f7c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b10]:flt.h t6, ft11, ft10<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:sh t6, 840(a5)<br>  |
| 105|[0x80005f86]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b28]:flt.h t6, ft11, ft10<br> [0x80000b2c]:csrrs a7, fflags, zero<br> [0x80000b30]:sh t6, 850(a5)<br>  |
| 106|[0x80005f90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b40]:flt.h t6, ft11, ft10<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:sh t6, 860(a5)<br>  |
| 107|[0x80005f9a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b58]:flt.h t6, ft11, ft10<br> [0x80000b5c]:csrrs a7, fflags, zero<br> [0x80000b60]:sh t6, 870(a5)<br>  |
| 108|[0x80005fa4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000b70]:flt.h t6, ft11, ft10<br> [0x80000b74]:csrrs a7, fflags, zero<br> [0x80000b78]:sh t6, 880(a5)<br>  |
| 109|[0x80005fae]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000b88]:flt.h t6, ft11, ft10<br> [0x80000b8c]:csrrs a7, fflags, zero<br> [0x80000b90]:sh t6, 890(a5)<br>  |
| 110|[0x80005fb8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ba0]:flt.h t6, ft11, ft10<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:sh t6, 900(a5)<br>  |
| 111|[0x80005fc2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000bb8]:flt.h t6, ft11, ft10<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:sh t6, 910(a5)<br>  |
| 112|[0x80005fcc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000bd0]:flt.h t6, ft11, ft10<br> [0x80000bd4]:csrrs a7, fflags, zero<br> [0x80000bd8]:sh t6, 920(a5)<br>  |
| 113|[0x80005fd6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000be8]:flt.h t6, ft11, ft10<br> [0x80000bec]:csrrs a7, fflags, zero<br> [0x80000bf0]:sh t6, 930(a5)<br>  |
| 114|[0x80005fe0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000c00]:flt.h t6, ft11, ft10<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:sh t6, 940(a5)<br>  |
| 115|[0x80005fea]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000c18]:flt.h t6, ft11, ft10<br> [0x80000c1c]:csrrs a7, fflags, zero<br> [0x80000c20]:sh t6, 950(a5)<br>  |
| 116|[0x80005ff4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80000c30]:flt.h t6, ft11, ft10<br> [0x80000c34]:csrrs a7, fflags, zero<br> [0x80000c38]:sh t6, 960(a5)<br>  |
| 117|[0x80005ffe]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c48]:flt.h t6, ft11, ft10<br> [0x80000c4c]:csrrs a7, fflags, zero<br> [0x80000c50]:sh t6, 970(a5)<br>  |
| 118|[0x80006008]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c60]:flt.h t6, ft11, ft10<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:sh t6, 980(a5)<br>  |
| 119|[0x80006012]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c78]:flt.h t6, ft11, ft10<br> [0x80000c7c]:csrrs a7, fflags, zero<br> [0x80000c80]:sh t6, 990(a5)<br>  |
| 120|[0x8000601c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c90]:flt.h t6, ft11, ft10<br> [0x80000c94]:csrrs a7, fflags, zero<br> [0x80000c98]:sh t6, 1000(a5)<br> |
| 121|[0x80006026]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ca8]:flt.h t6, ft11, ft10<br> [0x80000cac]:csrrs a7, fflags, zero<br> [0x80000cb0]:sh t6, 1010(a5)<br> |
| 122|[0x80006030]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000cc0]:flt.h t6, ft11, ft10<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:sh t6, 1020(a5)<br> |
| 123|[0x8000603a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000cd8]:flt.h t6, ft11, ft10<br> [0x80000cdc]:csrrs a7, fflags, zero<br> [0x80000ce0]:sh t6, 1030(a5)<br> |
| 124|[0x80006044]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80000cf0]:flt.h t6, ft11, ft10<br> [0x80000cf4]:csrrs a7, fflags, zero<br> [0x80000cf8]:sh t6, 1040(a5)<br> |
| 125|[0x8000604e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d08]:flt.h t6, ft11, ft10<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:sh t6, 1050(a5)<br> |
| 126|[0x80006058]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d20]:flt.h t6, ft11, ft10<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:sh t6, 1060(a5)<br> |
| 127|[0x80006062]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d38]:flt.h t6, ft11, ft10<br> [0x80000d3c]:csrrs a7, fflags, zero<br> [0x80000d40]:sh t6, 1070(a5)<br> |
| 128|[0x8000606c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d50]:flt.h t6, ft11, ft10<br> [0x80000d54]:csrrs a7, fflags, zero<br> [0x80000d58]:sh t6, 1080(a5)<br> |
| 129|[0x80006076]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d68]:flt.h t6, ft11, ft10<br> [0x80000d6c]:csrrs a7, fflags, zero<br> [0x80000d70]:sh t6, 1090(a5)<br> |
| 130|[0x80006080]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d80]:flt.h t6, ft11, ft10<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:sh t6, 1100(a5)<br> |
| 131|[0x8000608a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d98]:flt.h t6, ft11, ft10<br> [0x80000d9c]:csrrs a7, fflags, zero<br> [0x80000da0]:sh t6, 1110(a5)<br> |
| 132|[0x80006094]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000db0]:flt.h t6, ft11, ft10<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:sh t6, 1120(a5)<br> |
| 133|[0x8000609e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000dc8]:flt.h t6, ft11, ft10<br> [0x80000dcc]:csrrs a7, fflags, zero<br> [0x80000dd0]:sh t6, 1130(a5)<br> |
| 134|[0x800060a8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80000de0]:flt.h t6, ft11, ft10<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:sh t6, 1140(a5)<br> |
| 135|[0x800060b2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000df8]:flt.h t6, ft11, ft10<br> [0x80000dfc]:csrrs a7, fflags, zero<br> [0x80000e00]:sh t6, 1150(a5)<br> |
| 136|[0x800060bc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e10]:flt.h t6, ft11, ft10<br> [0x80000e14]:csrrs a7, fflags, zero<br> [0x80000e18]:sh t6, 1160(a5)<br> |
| 137|[0x800060c6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e28]:flt.h t6, ft11, ft10<br> [0x80000e2c]:csrrs a7, fflags, zero<br> [0x80000e30]:sh t6, 1170(a5)<br> |
| 138|[0x800060d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000e40]:flt.h t6, ft11, ft10<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:sh t6, 1180(a5)<br> |
| 139|[0x800060da]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000e58]:flt.h t6, ft11, ft10<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:sh t6, 1190(a5)<br> |
| 140|[0x800060e4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80000e70]:flt.h t6, ft11, ft10<br> [0x80000e74]:csrrs a7, fflags, zero<br> [0x80000e78]:sh t6, 1200(a5)<br> |
| 141|[0x800060ee]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e88]:flt.h t6, ft11, ft10<br> [0x80000e8c]:csrrs a7, fflags, zero<br> [0x80000e90]:sh t6, 1210(a5)<br> |
| 142|[0x800060f8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ea0]:flt.h t6, ft11, ft10<br> [0x80000ea4]:csrrs a7, fflags, zero<br> [0x80000ea8]:sh t6, 1220(a5)<br> |
| 143|[0x80006102]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000eb8]:flt.h t6, ft11, ft10<br> [0x80000ebc]:csrrs a7, fflags, zero<br> [0x80000ec0]:sh t6, 1230(a5)<br> |
| 144|[0x8000610c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ed0]:flt.h t6, ft11, ft10<br> [0x80000ed4]:csrrs a7, fflags, zero<br> [0x80000ed8]:sh t6, 1240(a5)<br> |
| 145|[0x80006116]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ee8]:flt.h t6, ft11, ft10<br> [0x80000eec]:csrrs a7, fflags, zero<br> [0x80000ef0]:sh t6, 1250(a5)<br> |
| 146|[0x80006120]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f00]:flt.h t6, ft11, ft10<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:sh t6, 1260(a5)<br> |
| 147|[0x8000612a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f18]:flt.h t6, ft11, ft10<br> [0x80000f1c]:csrrs a7, fflags, zero<br> [0x80000f20]:sh t6, 1270(a5)<br> |
| 148|[0x80006134]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f30]:flt.h t6, ft11, ft10<br> [0x80000f34]:csrrs a7, fflags, zero<br> [0x80000f38]:sh t6, 1280(a5)<br> |
| 149|[0x8000613e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f48]:flt.h t6, ft11, ft10<br> [0x80000f4c]:csrrs a7, fflags, zero<br> [0x80000f50]:sh t6, 1290(a5)<br> |
| 150|[0x80006148]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f60]:flt.h t6, ft11, ft10<br> [0x80000f64]:csrrs a7, fflags, zero<br> [0x80000f68]:sh t6, 1300(a5)<br> |
| 151|[0x80006152]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f78]:flt.h t6, ft11, ft10<br> [0x80000f7c]:csrrs a7, fflags, zero<br> [0x80000f80]:sh t6, 1310(a5)<br> |
| 152|[0x8000615c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f90]:flt.h t6, ft11, ft10<br> [0x80000f94]:csrrs a7, fflags, zero<br> [0x80000f98]:sh t6, 1320(a5)<br> |
| 153|[0x80006166]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fa8]:flt.h t6, ft11, ft10<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:sh t6, 1330(a5)<br> |
| 154|[0x80006170]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fc0]:flt.h t6, ft11, ft10<br> [0x80000fc4]:csrrs a7, fflags, zero<br> [0x80000fc8]:sh t6, 1340(a5)<br> |
| 155|[0x8000617a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fd8]:flt.h t6, ft11, ft10<br> [0x80000fdc]:csrrs a7, fflags, zero<br> [0x80000fe0]:sh t6, 1350(a5)<br> |
| 156|[0x80006184]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80000ff0]:flt.h t6, ft11, ft10<br> [0x80000ff4]:csrrs a7, fflags, zero<br> [0x80000ff8]:sh t6, 1360(a5)<br> |
| 157|[0x8000618e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001008]:flt.h t6, ft11, ft10<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:sh t6, 1370(a5)<br> |
| 158|[0x80006198]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001020]:flt.h t6, ft11, ft10<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:sh t6, 1380(a5)<br> |
| 159|[0x800061a2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001038]:flt.h t6, ft11, ft10<br> [0x8000103c]:csrrs a7, fflags, zero<br> [0x80001040]:sh t6, 1390(a5)<br> |
| 160|[0x800061ac]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001050]:flt.h t6, ft11, ft10<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:sh t6, 1400(a5)<br> |
| 161|[0x800061b6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001068]:flt.h t6, ft11, ft10<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:sh t6, 1410(a5)<br> |
| 162|[0x800061c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001080]:flt.h t6, ft11, ft10<br> [0x80001084]:csrrs a7, fflags, zero<br> [0x80001088]:sh t6, 1420(a5)<br> |
| 163|[0x800061ca]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001098]:flt.h t6, ft11, ft10<br> [0x8000109c]:csrrs a7, fflags, zero<br> [0x800010a0]:sh t6, 1430(a5)<br> |
| 164|[0x800061d4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800010b0]:flt.h t6, ft11, ft10<br> [0x800010b4]:csrrs a7, fflags, zero<br> [0x800010b8]:sh t6, 1440(a5)<br> |
| 165|[0x800061de]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x800010c8]:flt.h t6, ft11, ft10<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:sh t6, 1450(a5)<br> |
| 166|[0x800061e8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800010e0]:flt.h t6, ft11, ft10<br> [0x800010e4]:csrrs a7, fflags, zero<br> [0x800010e8]:sh t6, 1460(a5)<br> |
| 167|[0x800061f2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800010f8]:flt.h t6, ft11, ft10<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:sh t6, 1470(a5)<br> |
| 168|[0x800061fc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001110]:flt.h t6, ft11, ft10<br> [0x80001114]:csrrs a7, fflags, zero<br> [0x80001118]:sh t6, 1480(a5)<br> |
| 169|[0x80006206]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001128]:flt.h t6, ft11, ft10<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:sh t6, 1490(a5)<br> |
| 170|[0x80006210]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001140]:flt.h t6, ft11, ft10<br> [0x80001144]:csrrs a7, fflags, zero<br> [0x80001148]:sh t6, 1500(a5)<br> |
| 171|[0x8000621a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001158]:flt.h t6, ft11, ft10<br> [0x8000115c]:csrrs a7, fflags, zero<br> [0x80001160]:sh t6, 1510(a5)<br> |
| 172|[0x80006224]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80001170]:flt.h t6, ft11, ft10<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:sh t6, 1520(a5)<br> |
| 173|[0x8000622e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001188]:flt.h t6, ft11, ft10<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:sh t6, 1530(a5)<br> |
| 174|[0x80006238]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800011a0]:flt.h t6, ft11, ft10<br> [0x800011a4]:csrrs a7, fflags, zero<br> [0x800011a8]:sh t6, 1540(a5)<br> |
| 175|[0x80006242]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x800011b8]:flt.h t6, ft11, ft10<br> [0x800011bc]:csrrs a7, fflags, zero<br> [0x800011c0]:sh t6, 1550(a5)<br> |
| 176|[0x8000624c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800011d0]:flt.h t6, ft11, ft10<br> [0x800011d4]:csrrs a7, fflags, zero<br> [0x800011d8]:sh t6, 1560(a5)<br> |
| 177|[0x80006256]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800011e8]:flt.h t6, ft11, ft10<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:sh t6, 1570(a5)<br> |
| 178|[0x80006260]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001200]:flt.h t6, ft11, ft10<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:sh t6, 1580(a5)<br> |
| 179|[0x8000626a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001218]:flt.h t6, ft11, ft10<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:sh t6, 1590(a5)<br> |
| 180|[0x80006274]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001230]:flt.h t6, ft11, ft10<br> [0x80001234]:csrrs a7, fflags, zero<br> [0x80001238]:sh t6, 1600(a5)<br> |
| 181|[0x8000627e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001248]:flt.h t6, ft11, ft10<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:sh t6, 1610(a5)<br> |
| 182|[0x80006288]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001260]:flt.h t6, ft11, ft10<br> [0x80001264]:csrrs a7, fflags, zero<br> [0x80001268]:sh t6, 1620(a5)<br> |
| 183|[0x80006292]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001278]:flt.h t6, ft11, ft10<br> [0x8000127c]:csrrs a7, fflags, zero<br> [0x80001280]:sh t6, 1630(a5)<br> |
| 184|[0x8000629c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001290]:flt.h t6, ft11, ft10<br> [0x80001294]:csrrs a7, fflags, zero<br> [0x80001298]:sh t6, 1640(a5)<br> |
| 185|[0x800062a6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800012a8]:flt.h t6, ft11, ft10<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:sh t6, 1650(a5)<br> |
| 186|[0x800062b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800012c0]:flt.h t6, ft11, ft10<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:sh t6, 1660(a5)<br> |
| 187|[0x800062ba]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800012d8]:flt.h t6, ft11, ft10<br> [0x800012dc]:csrrs a7, fflags, zero<br> [0x800012e0]:sh t6, 1670(a5)<br> |
| 188|[0x800062c4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800012f0]:flt.h t6, ft11, ft10<br> [0x800012f4]:csrrs a7, fflags, zero<br> [0x800012f8]:sh t6, 1680(a5)<br> |
| 189|[0x800062ce]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001308]:flt.h t6, ft11, ft10<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:sh t6, 1690(a5)<br> |
| 190|[0x800062d8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001320]:flt.h t6, ft11, ft10<br> [0x80001324]:csrrs a7, fflags, zero<br> [0x80001328]:sh t6, 1700(a5)<br> |
| 191|[0x800062e2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001338]:flt.h t6, ft11, ft10<br> [0x8000133c]:csrrs a7, fflags, zero<br> [0x80001340]:sh t6, 1710(a5)<br> |
| 192|[0x800062ec]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001350]:flt.h t6, ft11, ft10<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:sh t6, 1720(a5)<br> |
| 193|[0x800062f6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001368]:flt.h t6, ft11, ft10<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:sh t6, 1730(a5)<br> |
| 194|[0x80006300]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001380]:flt.h t6, ft11, ft10<br> [0x80001384]:csrrs a7, fflags, zero<br> [0x80001388]:sh t6, 1740(a5)<br> |
| 195|[0x8000630a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001398]:flt.h t6, ft11, ft10<br> [0x8000139c]:csrrs a7, fflags, zero<br> [0x800013a0]:sh t6, 1750(a5)<br> |
| 196|[0x80006314]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x800013b0]:flt.h t6, ft11, ft10<br> [0x800013b4]:csrrs a7, fflags, zero<br> [0x800013b8]:sh t6, 1760(a5)<br> |
| 197|[0x8000631e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800013c8]:flt.h t6, ft11, ft10<br> [0x800013cc]:csrrs a7, fflags, zero<br> [0x800013d0]:sh t6, 1770(a5)<br> |
| 198|[0x80006328]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800013e0]:flt.h t6, ft11, ft10<br> [0x800013e4]:csrrs a7, fflags, zero<br> [0x800013e8]:sh t6, 1780(a5)<br> |
| 199|[0x80006332]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x800013f8]:flt.h t6, ft11, ft10<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:sh t6, 1790(a5)<br> |
| 200|[0x8000633c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001410]:flt.h t6, ft11, ft10<br> [0x80001414]:csrrs a7, fflags, zero<br> [0x80001418]:sh t6, 1800(a5)<br> |
| 201|[0x80006346]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001428]:flt.h t6, ft11, ft10<br> [0x8000142c]:csrrs a7, fflags, zero<br> [0x80001430]:sh t6, 1810(a5)<br> |
| 202|[0x80006350]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001440]:flt.h t6, ft11, ft10<br> [0x80001444]:csrrs a7, fflags, zero<br> [0x80001448]:sh t6, 1820(a5)<br> |
| 203|[0x8000635a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001458]:flt.h t6, ft11, ft10<br> [0x8000145c]:csrrs a7, fflags, zero<br> [0x80001460]:sh t6, 1830(a5)<br> |
| 204|[0x80006364]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001470]:flt.h t6, ft11, ft10<br> [0x80001474]:csrrs a7, fflags, zero<br> [0x80001478]:sh t6, 1840(a5)<br> |
| 205|[0x8000636e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001488]:flt.h t6, ft11, ft10<br> [0x8000148c]:csrrs a7, fflags, zero<br> [0x80001490]:sh t6, 1850(a5)<br> |
| 206|[0x80006378]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800014a0]:flt.h t6, ft11, ft10<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:sh t6, 1860(a5)<br> |
| 207|[0x80006382]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800014b8]:flt.h t6, ft11, ft10<br> [0x800014bc]:csrrs a7, fflags, zero<br> [0x800014c0]:sh t6, 1870(a5)<br> |
| 208|[0x8000638c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800014d0]:flt.h t6, ft11, ft10<br> [0x800014d4]:csrrs a7, fflags, zero<br> [0x800014d8]:sh t6, 1880(a5)<br> |
| 209|[0x80006396]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800014e8]:flt.h t6, ft11, ft10<br> [0x800014ec]:csrrs a7, fflags, zero<br> [0x800014f0]:sh t6, 1890(a5)<br> |
| 210|[0x800063a0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001500]:flt.h t6, ft11, ft10<br> [0x80001504]:csrrs a7, fflags, zero<br> [0x80001508]:sh t6, 1900(a5)<br> |
| 211|[0x800063aa]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001518]:flt.h t6, ft11, ft10<br> [0x8000151c]:csrrs a7, fflags, zero<br> [0x80001520]:sh t6, 1910(a5)<br> |
| 212|[0x800063b4]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80001530]:flt.h t6, ft11, ft10<br> [0x80001534]:csrrs a7, fflags, zero<br> [0x80001538]:sh t6, 1920(a5)<br> |
| 213|[0x800063be]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001548]:flt.h t6, ft11, ft10<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:sh t6, 1930(a5)<br> |
| 214|[0x800063c8]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001560]:flt.h t6, ft11, ft10<br> [0x80001564]:csrrs a7, fflags, zero<br> [0x80001568]:sh t6, 1940(a5)<br> |
| 215|[0x800063d2]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001578]:flt.h t6, ft11, ft10<br> [0x8000157c]:csrrs a7, fflags, zero<br> [0x80001580]:sh t6, 1950(a5)<br> |
| 216|[0x800063dc]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001590]:flt.h t6, ft11, ft10<br> [0x80001594]:csrrs a7, fflags, zero<br> [0x80001598]:sh t6, 1960(a5)<br> |
| 217|[0x800063e6]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800015a8]:flt.h t6, ft11, ft10<br> [0x800015ac]:csrrs a7, fflags, zero<br> [0x800015b0]:sh t6, 1970(a5)<br> |
| 218|[0x800063f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800015c0]:flt.h t6, ft11, ft10<br> [0x800015c4]:csrrs a7, fflags, zero<br> [0x800015c8]:sh t6, 1980(a5)<br> |
| 219|[0x800063fa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800015d8]:flt.h t6, ft11, ft10<br> [0x800015dc]:csrrs a7, fflags, zero<br> [0x800015e0]:sh t6, 1990(a5)<br> |
| 220|[0x80006404]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x800015f0]:flt.h t6, ft11, ft10<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:sh t6, 2000(a5)<br> |
| 221|[0x8000640e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001608]:flt.h t6, ft11, ft10<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:sh t6, 2010(a5)<br> |
| 222|[0x80006418]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80001620]:flt.h t6, ft11, ft10<br> [0x80001624]:csrrs a7, fflags, zero<br> [0x80001628]:sh t6, 2020(a5)<br> |
| 223|[0x800068e4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80001640]:flt.h t6, ft11, ft10<br> [0x80001644]:csrrs a7, fflags, zero<br> [0x80001648]:sh t6, 0(a5)<br>    |
| 224|[0x800068ee]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001658]:flt.h t6, ft11, ft10<br> [0x8000165c]:csrrs a7, fflags, zero<br> [0x80001660]:sh t6, 10(a5)<br>   |
| 225|[0x800068f8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001670]:flt.h t6, ft11, ft10<br> [0x80001674]:csrrs a7, fflags, zero<br> [0x80001678]:sh t6, 20(a5)<br>   |
| 226|[0x80006902]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001688]:flt.h t6, ft11, ft10<br> [0x8000168c]:csrrs a7, fflags, zero<br> [0x80001690]:sh t6, 30(a5)<br>   |
| 227|[0x8000690c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800016a0]:flt.h t6, ft11, ft10<br> [0x800016a4]:csrrs a7, fflags, zero<br> [0x800016a8]:sh t6, 40(a5)<br>   |
| 228|[0x80006916]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800016b8]:flt.h t6, ft11, ft10<br> [0x800016bc]:csrrs a7, fflags, zero<br> [0x800016c0]:sh t6, 50(a5)<br>   |
| 229|[0x80006920]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800016d0]:flt.h t6, ft11, ft10<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:sh t6, 60(a5)<br>   |
| 230|[0x8000692a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800016e8]:flt.h t6, ft11, ft10<br> [0x800016ec]:csrrs a7, fflags, zero<br> [0x800016f0]:sh t6, 70(a5)<br>   |
| 231|[0x80006934]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001700]:flt.h t6, ft11, ft10<br> [0x80001704]:csrrs a7, fflags, zero<br> [0x80001708]:sh t6, 80(a5)<br>   |
| 232|[0x8000693e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001718]:flt.h t6, ft11, ft10<br> [0x8000171c]:csrrs a7, fflags, zero<br> [0x80001720]:sh t6, 90(a5)<br>   |
| 233|[0x80006948]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001730]:flt.h t6, ft11, ft10<br> [0x80001734]:csrrs a7, fflags, zero<br> [0x80001738]:sh t6, 100(a5)<br>  |
| 234|[0x80006952]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001748]:flt.h t6, ft11, ft10<br> [0x8000174c]:csrrs a7, fflags, zero<br> [0x80001750]:sh t6, 110(a5)<br>  |
| 235|[0x8000695c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001760]:flt.h t6, ft11, ft10<br> [0x80001764]:csrrs a7, fflags, zero<br> [0x80001768]:sh t6, 120(a5)<br>  |
| 236|[0x80006966]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80001778]:flt.h t6, ft11, ft10<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:sh t6, 130(a5)<br>  |
| 237|[0x80006970]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001790]:flt.h t6, ft11, ft10<br> [0x80001794]:csrrs a7, fflags, zero<br> [0x80001798]:sh t6, 140(a5)<br>  |
| 238|[0x8000697a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800017a8]:flt.h t6, ft11, ft10<br> [0x800017ac]:csrrs a7, fflags, zero<br> [0x800017b0]:sh t6, 150(a5)<br>  |
| 239|[0x80006984]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800017c0]:flt.h t6, ft11, ft10<br> [0x800017c4]:csrrs a7, fflags, zero<br> [0x800017c8]:sh t6, 160(a5)<br>  |
| 240|[0x8000698e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800017d8]:flt.h t6, ft11, ft10<br> [0x800017dc]:csrrs a7, fflags, zero<br> [0x800017e0]:sh t6, 170(a5)<br>  |
| 241|[0x80006998]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800017f0]:flt.h t6, ft11, ft10<br> [0x800017f4]:csrrs a7, fflags, zero<br> [0x800017f8]:sh t6, 180(a5)<br>  |
| 242|[0x800069a2]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001808]:flt.h t6, ft11, ft10<br> [0x8000180c]:csrrs a7, fflags, zero<br> [0x80001810]:sh t6, 190(a5)<br>  |
| 243|[0x800069ac]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001820]:flt.h t6, ft11, ft10<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:sh t6, 200(a5)<br>  |
| 244|[0x800069b6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80001838]:flt.h t6, ft11, ft10<br> [0x8000183c]:csrrs a7, fflags, zero<br> [0x80001840]:sh t6, 210(a5)<br>  |
| 245|[0x800069c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001850]:flt.h t6, ft11, ft10<br> [0x80001854]:csrrs a7, fflags, zero<br> [0x80001858]:sh t6, 220(a5)<br>  |
| 246|[0x800069ca]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80001868]:flt.h t6, ft11, ft10<br> [0x8000186c]:csrrs a7, fflags, zero<br> [0x80001870]:sh t6, 230(a5)<br>  |
| 247|[0x800069d4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80001880]:flt.h t6, ft11, ft10<br> [0x80001884]:csrrs a7, fflags, zero<br> [0x80001888]:sh t6, 240(a5)<br>  |
| 248|[0x800069de]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001898]:flt.h t6, ft11, ft10<br> [0x8000189c]:csrrs a7, fflags, zero<br> [0x800018a0]:sh t6, 250(a5)<br>  |
| 249|[0x800069e8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800018b0]:flt.h t6, ft11, ft10<br> [0x800018b4]:csrrs a7, fflags, zero<br> [0x800018b8]:sh t6, 260(a5)<br>  |
| 250|[0x800069f2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800018c8]:flt.h t6, ft11, ft10<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:sh t6, 270(a5)<br>  |
| 251|[0x800069fc]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800018e0]:flt.h t6, ft11, ft10<br> [0x800018e4]:csrrs a7, fflags, zero<br> [0x800018e8]:sh t6, 280(a5)<br>  |
| 252|[0x80006a06]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800018f8]:flt.h t6, ft11, ft10<br> [0x800018fc]:csrrs a7, fflags, zero<br> [0x80001900]:sh t6, 290(a5)<br>  |
| 253|[0x80006a10]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001910]:flt.h t6, ft11, ft10<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:sh t6, 300(a5)<br>  |
| 254|[0x80006a1a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001928]:flt.h t6, ft11, ft10<br> [0x8000192c]:csrrs a7, fflags, zero<br> [0x80001930]:sh t6, 310(a5)<br>  |
| 255|[0x80006a24]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001940]:flt.h t6, ft11, ft10<br> [0x80001944]:csrrs a7, fflags, zero<br> [0x80001948]:sh t6, 320(a5)<br>  |
| 256|[0x80006a2e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001958]:flt.h t6, ft11, ft10<br> [0x8000195c]:csrrs a7, fflags, zero<br> [0x80001960]:sh t6, 330(a5)<br>  |
| 257|[0x80006a38]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001970]:flt.h t6, ft11, ft10<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:sh t6, 340(a5)<br>  |
| 258|[0x80006a42]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001988]:flt.h t6, ft11, ft10<br> [0x8000198c]:csrrs a7, fflags, zero<br> [0x80001990]:sh t6, 350(a5)<br>  |
| 259|[0x80006a4c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800019a0]:flt.h t6, ft11, ft10<br> [0x800019a4]:csrrs a7, fflags, zero<br> [0x800019a8]:sh t6, 360(a5)<br>  |
| 260|[0x80006a56]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800019b8]:flt.h t6, ft11, ft10<br> [0x800019bc]:csrrs a7, fflags, zero<br> [0x800019c0]:sh t6, 370(a5)<br>  |
| 261|[0x80006a60]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x800019d0]:flt.h t6, ft11, ft10<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:sh t6, 380(a5)<br>  |
| 262|[0x80006a6a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800019e8]:flt.h t6, ft11, ft10<br> [0x800019ec]:csrrs a7, fflags, zero<br> [0x800019f0]:sh t6, 390(a5)<br>  |
| 263|[0x80006a74]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a00]:flt.h t6, ft11, ft10<br> [0x80001a04]:csrrs a7, fflags, zero<br> [0x80001a08]:sh t6, 400(a5)<br>  |
| 264|[0x80006a7e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a18]:flt.h t6, ft11, ft10<br> [0x80001a1c]:csrrs a7, fflags, zero<br> [0x80001a20]:sh t6, 410(a5)<br>  |
| 265|[0x80006a88]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a30]:flt.h t6, ft11, ft10<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:sh t6, 420(a5)<br>  |
| 266|[0x80006a92]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a48]:flt.h t6, ft11, ft10<br> [0x80001a4c]:csrrs a7, fflags, zero<br> [0x80001a50]:sh t6, 430(a5)<br>  |
| 267|[0x80006a9c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a60]:flt.h t6, ft11, ft10<br> [0x80001a64]:csrrs a7, fflags, zero<br> [0x80001a68]:sh t6, 440(a5)<br>  |
| 268|[0x80006aa6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a78]:flt.h t6, ft11, ft10<br> [0x80001a7c]:csrrs a7, fflags, zero<br> [0x80001a80]:sh t6, 450(a5)<br>  |
| 269|[0x80006ab0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a90]:flt.h t6, ft11, ft10<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:sh t6, 460(a5)<br>  |
| 270|[0x80006aba]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80001aa8]:flt.h t6, ft11, ft10<br> [0x80001aac]:csrrs a7, fflags, zero<br> [0x80001ab0]:sh t6, 470(a5)<br>  |
| 271|[0x80006ac4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ac0]:flt.h t6, ft11, ft10<br> [0x80001ac4]:csrrs a7, fflags, zero<br> [0x80001ac8]:sh t6, 480(a5)<br>  |
| 272|[0x80006ace]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ad8]:flt.h t6, ft11, ft10<br> [0x80001adc]:csrrs a7, fflags, zero<br> [0x80001ae0]:sh t6, 490(a5)<br>  |
| 273|[0x80006ad8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001af0]:flt.h t6, ft11, ft10<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:sh t6, 500(a5)<br>  |
| 274|[0x80006ae2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b08]:flt.h t6, ft11, ft10<br> [0x80001b0c]:csrrs a7, fflags, zero<br> [0x80001b10]:sh t6, 510(a5)<br>  |
| 275|[0x80006aec]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b20]:flt.h t6, ft11, ft10<br> [0x80001b24]:csrrs a7, fflags, zero<br> [0x80001b28]:sh t6, 520(a5)<br>  |
| 276|[0x80006af6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001b38]:flt.h t6, ft11, ft10<br> [0x80001b3c]:csrrs a7, fflags, zero<br> [0x80001b40]:sh t6, 530(a5)<br>  |
| 277|[0x80006b00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001b50]:flt.h t6, ft11, ft10<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:sh t6, 540(a5)<br>  |
| 278|[0x80006b0a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b68]:flt.h t6, ft11, ft10<br> [0x80001b6c]:csrrs a7, fflags, zero<br> [0x80001b70]:sh t6, 550(a5)<br>  |
| 279|[0x80006b14]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b80]:flt.h t6, ft11, ft10<br> [0x80001b84]:csrrs a7, fflags, zero<br> [0x80001b88]:sh t6, 560(a5)<br>  |
| 280|[0x80006b1e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b98]:flt.h t6, ft11, ft10<br> [0x80001b9c]:csrrs a7, fflags, zero<br> [0x80001ba0]:sh t6, 570(a5)<br>  |
| 281|[0x80006b28]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001bb0]:flt.h t6, ft11, ft10<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:sh t6, 580(a5)<br>  |
| 282|[0x80006b32]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001bc8]:flt.h t6, ft11, ft10<br> [0x80001bcc]:csrrs a7, fflags, zero<br> [0x80001bd0]:sh t6, 590(a5)<br>  |
| 283|[0x80006b3c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001be0]:flt.h t6, ft11, ft10<br> [0x80001be4]:csrrs a7, fflags, zero<br> [0x80001be8]:sh t6, 600(a5)<br>  |
| 284|[0x80006b46]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80001bf8]:flt.h t6, ft11, ft10<br> [0x80001bfc]:csrrs a7, fflags, zero<br> [0x80001c00]:sh t6, 610(a5)<br>  |
| 285|[0x80006b50]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c10]:flt.h t6, ft11, ft10<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:sh t6, 620(a5)<br>  |
| 286|[0x80006b5a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c28]:flt.h t6, ft11, ft10<br> [0x80001c2c]:csrrs a7, fflags, zero<br> [0x80001c30]:sh t6, 630(a5)<br>  |
| 287|[0x80006b64]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c40]:flt.h t6, ft11, ft10<br> [0x80001c44]:csrrs a7, fflags, zero<br> [0x80001c48]:sh t6, 640(a5)<br>  |
| 288|[0x80006b6e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c58]:flt.h t6, ft11, ft10<br> [0x80001c5c]:csrrs a7, fflags, zero<br> [0x80001c60]:sh t6, 650(a5)<br>  |
| 289|[0x80006b78]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c70]:flt.h t6, ft11, ft10<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:sh t6, 660(a5)<br>  |
| 290|[0x80006b82]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c88]:flt.h t6, ft11, ft10<br> [0x80001c8c]:csrrs a7, fflags, zero<br> [0x80001c90]:sh t6, 670(a5)<br>  |
| 291|[0x80006b8c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ca0]:flt.h t6, ft11, ft10<br> [0x80001ca4]:csrrs a7, fflags, zero<br> [0x80001ca8]:sh t6, 680(a5)<br>  |
| 292|[0x80006b96]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80001cb8]:flt.h t6, ft11, ft10<br> [0x80001cbc]:csrrs a7, fflags, zero<br> [0x80001cc0]:sh t6, 690(a5)<br>  |
| 293|[0x80006ba0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001cd0]:flt.h t6, ft11, ft10<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:sh t6, 700(a5)<br>  |
| 294|[0x80006baa]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ce8]:flt.h t6, ft11, ft10<br> [0x80001cec]:csrrs a7, fflags, zero<br> [0x80001cf0]:sh t6, 710(a5)<br>  |
| 295|[0x80006bb4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d00]:flt.h t6, ft11, ft10<br> [0x80001d04]:csrrs a7, fflags, zero<br> [0x80001d08]:sh t6, 720(a5)<br>  |
| 296|[0x80006bbe]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d18]:flt.h t6, ft11, ft10<br> [0x80001d1c]:csrrs a7, fflags, zero<br> [0x80001d20]:sh t6, 730(a5)<br>  |
| 297|[0x80006bc8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d30]:flt.h t6, ft11, ft10<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:sh t6, 740(a5)<br>  |
| 298|[0x80006bd2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d48]:flt.h t6, ft11, ft10<br> [0x80001d4c]:csrrs a7, fflags, zero<br> [0x80001d50]:sh t6, 750(a5)<br>  |
| 299|[0x80006bdc]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d60]:flt.h t6, ft11, ft10<br> [0x80001d64]:csrrs a7, fflags, zero<br> [0x80001d68]:sh t6, 760(a5)<br>  |
| 300|[0x80006be6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001d78]:flt.h t6, ft11, ft10<br> [0x80001d7c]:csrrs a7, fflags, zero<br> [0x80001d80]:sh t6, 770(a5)<br>  |
| 301|[0x80006bf0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001d90]:flt.h t6, ft11, ft10<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:sh t6, 780(a5)<br>  |
| 302|[0x80006bfa]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001da8]:flt.h t6, ft11, ft10<br> [0x80001dac]:csrrs a7, fflags, zero<br> [0x80001db0]:sh t6, 790(a5)<br>  |
| 303|[0x80006c04]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001dc0]:flt.h t6, ft11, ft10<br> [0x80001dc4]:csrrs a7, fflags, zero<br> [0x80001dc8]:sh t6, 800(a5)<br>  |
| 304|[0x80006c0e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001dd8]:flt.h t6, ft11, ft10<br> [0x80001ddc]:csrrs a7, fflags, zero<br> [0x80001de0]:sh t6, 810(a5)<br>  |
| 305|[0x80006c18]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001df0]:flt.h t6, ft11, ft10<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:sh t6, 820(a5)<br>  |
| 306|[0x80006c22]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001e08]:flt.h t6, ft11, ft10<br> [0x80001e0c]:csrrs a7, fflags, zero<br> [0x80001e10]:sh t6, 830(a5)<br>  |
| 307|[0x80006c2c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001e20]:flt.h t6, ft11, ft10<br> [0x80001e24]:csrrs a7, fflags, zero<br> [0x80001e28]:sh t6, 840(a5)<br>  |
| 308|[0x80006c36]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80001e38]:flt.h t6, ft11, ft10<br> [0x80001e3c]:csrrs a7, fflags, zero<br> [0x80001e40]:sh t6, 850(a5)<br>  |
| 309|[0x80006c40]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e50]:flt.h t6, ft11, ft10<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:sh t6, 860(a5)<br>  |
| 310|[0x80006c4a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e68]:flt.h t6, ft11, ft10<br> [0x80001e6c]:csrrs a7, fflags, zero<br> [0x80001e70]:sh t6, 870(a5)<br>  |
| 311|[0x80006c54]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e80]:flt.h t6, ft11, ft10<br> [0x80001e84]:csrrs a7, fflags, zero<br> [0x80001e88]:sh t6, 880(a5)<br>  |
| 312|[0x80006c5e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e98]:flt.h t6, ft11, ft10<br> [0x80001e9c]:csrrs a7, fflags, zero<br> [0x80001ea0]:sh t6, 890(a5)<br>  |
| 313|[0x80006c68]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001eb0]:flt.h t6, ft11, ft10<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:sh t6, 900(a5)<br>  |
| 314|[0x80006c72]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ec8]:flt.h t6, ft11, ft10<br> [0x80001ecc]:csrrs a7, fflags, zero<br> [0x80001ed0]:sh t6, 910(a5)<br>  |
| 315|[0x80006c7c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ee0]:flt.h t6, ft11, ft10<br> [0x80001ee4]:csrrs a7, fflags, zero<br> [0x80001ee8]:sh t6, 920(a5)<br>  |
| 316|[0x80006c86]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ef8]:flt.h t6, ft11, ft10<br> [0x80001efc]:csrrs a7, fflags, zero<br> [0x80001f00]:sh t6, 930(a5)<br>  |
| 317|[0x80006c90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f10]:flt.h t6, ft11, ft10<br> [0x80001f14]:csrrs a7, fflags, zero<br> [0x80001f18]:sh t6, 940(a5)<br>  |
| 318|[0x80006c9a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f28]:flt.h t6, ft11, ft10<br> [0x80001f2c]:csrrs a7, fflags, zero<br> [0x80001f30]:sh t6, 950(a5)<br>  |
| 319|[0x80006ca4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f40]:flt.h t6, ft11, ft10<br> [0x80001f44]:csrrs a7, fflags, zero<br> [0x80001f48]:sh t6, 960(a5)<br>  |
| 320|[0x80006cae]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f58]:flt.h t6, ft11, ft10<br> [0x80001f5c]:csrrs a7, fflags, zero<br> [0x80001f60]:sh t6, 970(a5)<br>  |
| 321|[0x80006cb8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f70]:flt.h t6, ft11, ft10<br> [0x80001f74]:csrrs a7, fflags, zero<br> [0x80001f78]:sh t6, 980(a5)<br>  |
| 322|[0x80006cc2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f88]:flt.h t6, ft11, ft10<br> [0x80001f8c]:csrrs a7, fflags, zero<br> [0x80001f90]:sh t6, 990(a5)<br>  |
| 323|[0x80006ccc]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001fa0]:flt.h t6, ft11, ft10<br> [0x80001fa4]:csrrs a7, fflags, zero<br> [0x80001fa8]:sh t6, 1000(a5)<br> |
| 324|[0x80006cd6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001fb8]:flt.h t6, ft11, ft10<br> [0x80001fbc]:csrrs a7, fflags, zero<br> [0x80001fc0]:sh t6, 1010(a5)<br> |
| 325|[0x80006ce0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80001fd0]:flt.h t6, ft11, ft10<br> [0x80001fd4]:csrrs a7, fflags, zero<br> [0x80001fd8]:sh t6, 1020(a5)<br> |
| 326|[0x80006cea]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80001fe8]:flt.h t6, ft11, ft10<br> [0x80001fec]:csrrs a7, fflags, zero<br> [0x80001ff0]:sh t6, 1030(a5)<br> |
| 327|[0x80006cf4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002000]:flt.h t6, ft11, ft10<br> [0x80002004]:csrrs a7, fflags, zero<br> [0x80002008]:sh t6, 1040(a5)<br> |
| 328|[0x80006cfe]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002018]:flt.h t6, ft11, ft10<br> [0x8000201c]:csrrs a7, fflags, zero<br> [0x80002020]:sh t6, 1050(a5)<br> |
| 329|[0x80006d08]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002030]:flt.h t6, ft11, ft10<br> [0x80002034]:csrrs a7, fflags, zero<br> [0x80002038]:sh t6, 1060(a5)<br> |
| 330|[0x80006d12]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002048]:flt.h t6, ft11, ft10<br> [0x8000204c]:csrrs a7, fflags, zero<br> [0x80002050]:sh t6, 1070(a5)<br> |
| 331|[0x80006d1c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002060]:flt.h t6, ft11, ft10<br> [0x80002064]:csrrs a7, fflags, zero<br> [0x80002068]:sh t6, 1080(a5)<br> |
| 332|[0x80006d26]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80002078]:flt.h t6, ft11, ft10<br> [0x8000207c]:csrrs a7, fflags, zero<br> [0x80002080]:sh t6, 1090(a5)<br> |
| 333|[0x80006d30]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002090]:flt.h t6, ft11, ft10<br> [0x80002094]:csrrs a7, fflags, zero<br> [0x80002098]:sh t6, 1100(a5)<br> |
| 334|[0x80006d3a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800020a8]:flt.h t6, ft11, ft10<br> [0x800020ac]:csrrs a7, fflags, zero<br> [0x800020b0]:sh t6, 1110(a5)<br> |
| 335|[0x80006d44]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800020c0]:flt.h t6, ft11, ft10<br> [0x800020c4]:csrrs a7, fflags, zero<br> [0x800020c8]:sh t6, 1120(a5)<br> |
| 336|[0x80006d4e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800020d8]:flt.h t6, ft11, ft10<br> [0x800020dc]:csrrs a7, fflags, zero<br> [0x800020e0]:sh t6, 1130(a5)<br> |
| 337|[0x80006d58]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800020f0]:flt.h t6, ft11, ft10<br> [0x800020f4]:csrrs a7, fflags, zero<br> [0x800020f8]:sh t6, 1140(a5)<br> |
| 338|[0x80006d62]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002108]:flt.h t6, ft11, ft10<br> [0x8000210c]:csrrs a7, fflags, zero<br> [0x80002110]:sh t6, 1150(a5)<br> |
| 339|[0x80006d6c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002120]:flt.h t6, ft11, ft10<br> [0x80002124]:csrrs a7, fflags, zero<br> [0x80002128]:sh t6, 1160(a5)<br> |
| 340|[0x80006d76]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80002138]:flt.h t6, ft11, ft10<br> [0x8000213c]:csrrs a7, fflags, zero<br> [0x80002140]:sh t6, 1170(a5)<br> |
| 341|[0x80006d80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002150]:flt.h t6, ft11, ft10<br> [0x80002154]:csrrs a7, fflags, zero<br> [0x80002158]:sh t6, 1180(a5)<br> |
| 342|[0x80006d8a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80002168]:flt.h t6, ft11, ft10<br> [0x8000216c]:csrrs a7, fflags, zero<br> [0x80002170]:sh t6, 1190(a5)<br> |
| 343|[0x80006d94]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002180]:flt.h t6, ft11, ft10<br> [0x80002184]:csrrs a7, fflags, zero<br> [0x80002188]:sh t6, 1200(a5)<br> |
| 344|[0x80006d9e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002198]:flt.h t6, ft11, ft10<br> [0x8000219c]:csrrs a7, fflags, zero<br> [0x800021a0]:sh t6, 1210(a5)<br> |
| 345|[0x80006da8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800021b0]:flt.h t6, ft11, ft10<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:sh t6, 1220(a5)<br> |
| 346|[0x80006db2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800021c8]:flt.h t6, ft11, ft10<br> [0x800021cc]:csrrs a7, fflags, zero<br> [0x800021d0]:sh t6, 1230(a5)<br> |
| 347|[0x80006dbc]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800021e0]:flt.h t6, ft11, ft10<br> [0x800021e4]:csrrs a7, fflags, zero<br> [0x800021e8]:sh t6, 1240(a5)<br> |
| 348|[0x80006dc6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800021f8]:flt.h t6, ft11, ft10<br> [0x800021fc]:csrrs a7, fflags, zero<br> [0x80002200]:sh t6, 1250(a5)<br> |
| 349|[0x80006dd0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002210]:flt.h t6, ft11, ft10<br> [0x80002214]:csrrs a7, fflags, zero<br> [0x80002218]:sh t6, 1260(a5)<br> |
| 350|[0x80006dda]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80002228]:flt.h t6, ft11, ft10<br> [0x8000222c]:csrrs a7, fflags, zero<br> [0x80002230]:sh t6, 1270(a5)<br> |
| 351|[0x80006de4]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002240]:flt.h t6, ft11, ft10<br> [0x80002244]:csrrs a7, fflags, zero<br> [0x80002248]:sh t6, 1280(a5)<br> |
| 352|[0x80006dee]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002258]:flt.h t6, ft11, ft10<br> [0x8000225c]:csrrs a7, fflags, zero<br> [0x80002260]:sh t6, 1290(a5)<br> |
| 353|[0x80006df8]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002270]:flt.h t6, ft11, ft10<br> [0x80002274]:csrrs a7, fflags, zero<br> [0x80002278]:sh t6, 1300(a5)<br> |
| 354|[0x80006e02]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002288]:flt.h t6, ft11, ft10<br> [0x8000228c]:csrrs a7, fflags, zero<br> [0x80002290]:sh t6, 1310(a5)<br> |
| 355|[0x80006e0c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800022a0]:flt.h t6, ft11, ft10<br> [0x800022a4]:csrrs a7, fflags, zero<br> [0x800022a8]:sh t6, 1320(a5)<br> |
| 356|[0x80006e16]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800022b8]:flt.h t6, ft11, ft10<br> [0x800022bc]:csrrs a7, fflags, zero<br> [0x800022c0]:sh t6, 1330(a5)<br> |
| 357|[0x80006e20]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x800022d0]:flt.h t6, ft11, ft10<br> [0x800022d4]:csrrs a7, fflags, zero<br> [0x800022d8]:sh t6, 1340(a5)<br> |
| 358|[0x80006e2a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800022e8]:flt.h t6, ft11, ft10<br> [0x800022ec]:csrrs a7, fflags, zero<br> [0x800022f0]:sh t6, 1350(a5)<br> |
| 359|[0x80006e34]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002300]:flt.h t6, ft11, ft10<br> [0x80002304]:csrrs a7, fflags, zero<br> [0x80002308]:sh t6, 1360(a5)<br> |
| 360|[0x80006e3e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002318]:flt.h t6, ft11, ft10<br> [0x8000231c]:csrrs a7, fflags, zero<br> [0x80002320]:sh t6, 1370(a5)<br> |
| 361|[0x80006e48]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002330]:flt.h t6, ft11, ft10<br> [0x80002334]:csrrs a7, fflags, zero<br> [0x80002338]:sh t6, 1380(a5)<br> |
| 362|[0x80006e52]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002348]:flt.h t6, ft11, ft10<br> [0x8000234c]:csrrs a7, fflags, zero<br> [0x80002350]:sh t6, 1390(a5)<br> |
| 363|[0x80006e5c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002360]:flt.h t6, ft11, ft10<br> [0x80002364]:csrrs a7, fflags, zero<br> [0x80002368]:sh t6, 1400(a5)<br> |
| 364|[0x80006e66]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80002378]:flt.h t6, ft11, ft10<br> [0x8000237c]:csrrs a7, fflags, zero<br> [0x80002380]:sh t6, 1410(a5)<br> |
| 365|[0x80006e70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002390]:flt.h t6, ft11, ft10<br> [0x80002394]:csrrs a7, fflags, zero<br> [0x80002398]:sh t6, 1420(a5)<br> |
| 366|[0x80006e7a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800023a8]:flt.h t6, ft11, ft10<br> [0x800023ac]:csrrs a7, fflags, zero<br> [0x800023b0]:sh t6, 1430(a5)<br> |
| 367|[0x80006e84]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x800023c0]:flt.h t6, ft11, ft10<br> [0x800023c4]:csrrs a7, fflags, zero<br> [0x800023c8]:sh t6, 1440(a5)<br> |
| 368|[0x80006e8e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800023d8]:flt.h t6, ft11, ft10<br> [0x800023dc]:csrrs a7, fflags, zero<br> [0x800023e0]:sh t6, 1450(a5)<br> |
| 369|[0x80006e98]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800023f0]:flt.h t6, ft11, ft10<br> [0x800023f4]:csrrs a7, fflags, zero<br> [0x800023f8]:sh t6, 1460(a5)<br> |
| 370|[0x80006ea2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002408]:flt.h t6, ft11, ft10<br> [0x8000240c]:csrrs a7, fflags, zero<br> [0x80002410]:sh t6, 1470(a5)<br> |
| 371|[0x80006eac]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002420]:flt.h t6, ft11, ft10<br> [0x80002424]:csrrs a7, fflags, zero<br> [0x80002428]:sh t6, 1480(a5)<br> |
| 372|[0x80006eb6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002438]:flt.h t6, ft11, ft10<br> [0x8000243c]:csrrs a7, fflags, zero<br> [0x80002440]:sh t6, 1490(a5)<br> |
| 373|[0x80006ec0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002450]:flt.h t6, ft11, ft10<br> [0x80002454]:csrrs a7, fflags, zero<br> [0x80002458]:sh t6, 1500(a5)<br> |
| 374|[0x80006eca]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80002468]:flt.h t6, ft11, ft10<br> [0x8000246c]:csrrs a7, fflags, zero<br> [0x80002470]:sh t6, 1510(a5)<br> |
| 375|[0x80006ed4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002480]:flt.h t6, ft11, ft10<br> [0x80002484]:csrrs a7, fflags, zero<br> [0x80002488]:sh t6, 1520(a5)<br> |
| 376|[0x80006ede]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002498]:flt.h t6, ft11, ft10<br> [0x8000249c]:csrrs a7, fflags, zero<br> [0x800024a0]:sh t6, 1530(a5)<br> |
| 377|[0x80006ee8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800024b0]:flt.h t6, ft11, ft10<br> [0x800024b4]:csrrs a7, fflags, zero<br> [0x800024b8]:sh t6, 1540(a5)<br> |
| 378|[0x80006ef2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800024c8]:flt.h t6, ft11, ft10<br> [0x800024cc]:csrrs a7, fflags, zero<br> [0x800024d0]:sh t6, 1550(a5)<br> |
| 379|[0x80006efc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800024e0]:flt.h t6, ft11, ft10<br> [0x800024e4]:csrrs a7, fflags, zero<br> [0x800024e8]:sh t6, 1560(a5)<br> |
| 380|[0x80006f06]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800024f8]:flt.h t6, ft11, ft10<br> [0x800024fc]:csrrs a7, fflags, zero<br> [0x80002500]:sh t6, 1570(a5)<br> |
| 381|[0x80006f10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002510]:flt.h t6, ft11, ft10<br> [0x80002514]:csrrs a7, fflags, zero<br> [0x80002518]:sh t6, 1580(a5)<br> |
| 382|[0x80006f1a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002528]:flt.h t6, ft11, ft10<br> [0x8000252c]:csrrs a7, fflags, zero<br> [0x80002530]:sh t6, 1590(a5)<br> |
| 383|[0x80006f24]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002540]:flt.h t6, ft11, ft10<br> [0x80002544]:csrrs a7, fflags, zero<br> [0x80002548]:sh t6, 1600(a5)<br> |
| 384|[0x80006f2e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002558]:flt.h t6, ft11, ft10<br> [0x8000255c]:csrrs a7, fflags, zero<br> [0x80002560]:sh t6, 1610(a5)<br> |
| 385|[0x80006f38]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002570]:flt.h t6, ft11, ft10<br> [0x80002574]:csrrs a7, fflags, zero<br> [0x80002578]:sh t6, 1620(a5)<br> |
| 386|[0x80006f42]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002588]:flt.h t6, ft11, ft10<br> [0x8000258c]:csrrs a7, fflags, zero<br> [0x80002590]:sh t6, 1630(a5)<br> |
| 387|[0x80006f4c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800025a0]:flt.h t6, ft11, ft10<br> [0x800025a4]:csrrs a7, fflags, zero<br> [0x800025a8]:sh t6, 1640(a5)<br> |
| 388|[0x80006f56]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x800025b8]:flt.h t6, ft11, ft10<br> [0x800025bc]:csrrs a7, fflags, zero<br> [0x800025c0]:sh t6, 1650(a5)<br> |
| 389|[0x80006f60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800025d0]:flt.h t6, ft11, ft10<br> [0x800025d4]:csrrs a7, fflags, zero<br> [0x800025d8]:sh t6, 1660(a5)<br> |
| 390|[0x80006f6a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800025e8]:flt.h t6, ft11, ft10<br> [0x800025ec]:csrrs a7, fflags, zero<br> [0x800025f0]:sh t6, 1670(a5)<br> |
| 391|[0x80006f74]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002600]:flt.h t6, ft11, ft10<br> [0x80002604]:csrrs a7, fflags, zero<br> [0x80002608]:sh t6, 1680(a5)<br> |
| 392|[0x80006f7e]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002618]:flt.h t6, ft11, ft10<br> [0x8000261c]:csrrs a7, fflags, zero<br> [0x80002620]:sh t6, 1690(a5)<br> |
| 393|[0x80006f88]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002630]:flt.h t6, ft11, ft10<br> [0x80002634]:csrrs a7, fflags, zero<br> [0x80002638]:sh t6, 1700(a5)<br> |
| 394|[0x80006f92]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002648]:flt.h t6, ft11, ft10<br> [0x8000264c]:csrrs a7, fflags, zero<br> [0x80002650]:sh t6, 1710(a5)<br> |
| 395|[0x80006f9c]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002660]:flt.h t6, ft11, ft10<br> [0x80002664]:csrrs a7, fflags, zero<br> [0x80002668]:sh t6, 1720(a5)<br> |
| 396|[0x80006fa6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002678]:flt.h t6, ft11, ft10<br> [0x8000267c]:csrrs a7, fflags, zero<br> [0x80002680]:sh t6, 1730(a5)<br> |
| 397|[0x80006fb0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002690]:flt.h t6, ft11, ft10<br> [0x80002694]:csrrs a7, fflags, zero<br> [0x80002698]:sh t6, 1740(a5)<br> |
| 398|[0x80006fba]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800026a8]:flt.h t6, ft11, ft10<br> [0x800026ac]:csrrs a7, fflags, zero<br> [0x800026b0]:sh t6, 1750(a5)<br> |
| 399|[0x80006fc4]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800026c0]:flt.h t6, ft11, ft10<br> [0x800026c4]:csrrs a7, fflags, zero<br> [0x800026c8]:sh t6, 1760(a5)<br> |
| 400|[0x80006fce]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800026d8]:flt.h t6, ft11, ft10<br> [0x800026dc]:csrrs a7, fflags, zero<br> [0x800026e0]:sh t6, 1770(a5)<br> |
| 401|[0x80006fd8]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800026f0]:flt.h t6, ft11, ft10<br> [0x800026f4]:csrrs a7, fflags, zero<br> [0x800026f8]:sh t6, 1780(a5)<br> |
| 402|[0x80006fe2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002708]:flt.h t6, ft11, ft10<br> [0x8000270c]:csrrs a7, fflags, zero<br> [0x80002710]:sh t6, 1790(a5)<br> |
| 403|[0x80006fec]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002720]:flt.h t6, ft11, ft10<br> [0x80002724]:csrrs a7, fflags, zero<br> [0x80002728]:sh t6, 1800(a5)<br> |
| 404|[0x80006ff6]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80002738]:flt.h t6, ft11, ft10<br> [0x8000273c]:csrrs a7, fflags, zero<br> [0x80002740]:sh t6, 1810(a5)<br> |
| 405|[0x80007000]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002750]:flt.h t6, ft11, ft10<br> [0x80002754]:csrrs a7, fflags, zero<br> [0x80002758]:sh t6, 1820(a5)<br> |
| 406|[0x8000700a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002768]:flt.h t6, ft11, ft10<br> [0x8000276c]:csrrs a7, fflags, zero<br> [0x80002770]:sh t6, 1830(a5)<br> |
| 407|[0x80007014]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002780]:flt.h t6, ft11, ft10<br> [0x80002784]:csrrs a7, fflags, zero<br> [0x80002788]:sh t6, 1840(a5)<br> |
| 408|[0x8000701e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002798]:flt.h t6, ft11, ft10<br> [0x8000279c]:csrrs a7, fflags, zero<br> [0x800027a0]:sh t6, 1850(a5)<br> |
| 409|[0x80007028]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800027b0]:flt.h t6, ft11, ft10<br> [0x800027b4]:csrrs a7, fflags, zero<br> [0x800027b8]:sh t6, 1860(a5)<br> |
| 410|[0x80007032]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800027c8]:flt.h t6, ft11, ft10<br> [0x800027cc]:csrrs a7, fflags, zero<br> [0x800027d0]:sh t6, 1870(a5)<br> |
| 411|[0x8000703c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800027e0]:flt.h t6, ft11, ft10<br> [0x800027e4]:csrrs a7, fflags, zero<br> [0x800027e8]:sh t6, 1880(a5)<br> |
| 412|[0x80007046]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x800027f8]:flt.h t6, ft11, ft10<br> [0x800027fc]:csrrs a7, fflags, zero<br> [0x80002800]:sh t6, 1890(a5)<br> |
| 413|[0x80007050]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002810]:flt.h t6, ft11, ft10<br> [0x80002814]:csrrs a7, fflags, zero<br> [0x80002818]:sh t6, 1900(a5)<br> |
| 414|[0x8000705a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80002828]:flt.h t6, ft11, ft10<br> [0x8000282c]:csrrs a7, fflags, zero<br> [0x80002830]:sh t6, 1910(a5)<br> |
| 415|[0x80007064]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002840]:flt.h t6, ft11, ft10<br> [0x80002844]:csrrs a7, fflags, zero<br> [0x80002848]:sh t6, 1920(a5)<br> |
| 416|[0x8000706e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002858]:flt.h t6, ft11, ft10<br> [0x8000285c]:csrrs a7, fflags, zero<br> [0x80002860]:sh t6, 1930(a5)<br> |
| 417|[0x80007078]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002870]:flt.h t6, ft11, ft10<br> [0x80002874]:csrrs a7, fflags, zero<br> [0x80002878]:sh t6, 1940(a5)<br> |
| 418|[0x80007082]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002888]:flt.h t6, ft11, ft10<br> [0x8000288c]:csrrs a7, fflags, zero<br> [0x80002890]:sh t6, 1950(a5)<br> |
| 419|[0x8000708c]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800028a0]:flt.h t6, ft11, ft10<br> [0x800028a4]:csrrs a7, fflags, zero<br> [0x800028a8]:sh t6, 1960(a5)<br> |
| 420|[0x80007096]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800028b8]:flt.h t6, ft11, ft10<br> [0x800028bc]:csrrs a7, fflags, zero<br> [0x800028c0]:sh t6, 1970(a5)<br> |
| 421|[0x800070a0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800028d0]:flt.h t6, ft11, ft10<br> [0x800028d4]:csrrs a7, fflags, zero<br> [0x800028d8]:sh t6, 1980(a5)<br> |
| 422|[0x800070aa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800028e8]:flt.h t6, ft11, ft10<br> [0x800028ec]:csrrs a7, fflags, zero<br> [0x800028f0]:sh t6, 1990(a5)<br> |
| 423|[0x800070b4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002900]:flt.h t6, ft11, ft10<br> [0x80002904]:csrrs a7, fflags, zero<br> [0x80002908]:sh t6, 2000(a5)<br> |
| 424|[0x800070be]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002918]:flt.h t6, ft11, ft10<br> [0x8000291c]:csrrs a7, fflags, zero<br> [0x80002920]:sh t6, 2010(a5)<br> |
| 425|[0x800070c8]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002930]:flt.h t6, ft11, ft10<br> [0x80002934]:csrrs a7, fflags, zero<br> [0x80002938]:sh t6, 2020(a5)<br> |
| 426|[0x80007594]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002950]:flt.h t6, ft11, ft10<br> [0x80002954]:csrrs a7, fflags, zero<br> [0x80002958]:sh t6, 0(a5)<br>    |
| 427|[0x8000759e]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002968]:flt.h t6, ft11, ft10<br> [0x8000296c]:csrrs a7, fflags, zero<br> [0x80002970]:sh t6, 10(a5)<br>   |
| 428|[0x800075a8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80002980]:flt.h t6, ft11, ft10<br> [0x80002984]:csrrs a7, fflags, zero<br> [0x80002988]:sh t6, 20(a5)<br>   |
| 429|[0x800075b2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002998]:flt.h t6, ft11, ft10<br> [0x8000299c]:csrrs a7, fflags, zero<br> [0x800029a0]:sh t6, 30(a5)<br>   |
| 430|[0x800075bc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800029b0]:flt.h t6, ft11, ft10<br> [0x800029b4]:csrrs a7, fflags, zero<br> [0x800029b8]:sh t6, 40(a5)<br>   |
| 431|[0x800075c6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800029c8]:flt.h t6, ft11, ft10<br> [0x800029cc]:csrrs a7, fflags, zero<br> [0x800029d0]:sh t6, 50(a5)<br>   |
| 432|[0x800075d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800029e0]:flt.h t6, ft11, ft10<br> [0x800029e4]:csrrs a7, fflags, zero<br> [0x800029e8]:sh t6, 60(a5)<br>   |
| 433|[0x800075da]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800029f8]:flt.h t6, ft11, ft10<br> [0x800029fc]:csrrs a7, fflags, zero<br> [0x80002a00]:sh t6, 70(a5)<br>   |
| 434|[0x800075e4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a10]:flt.h t6, ft11, ft10<br> [0x80002a14]:csrrs a7, fflags, zero<br> [0x80002a18]:sh t6, 80(a5)<br>   |
| 435|[0x800075ee]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a28]:flt.h t6, ft11, ft10<br> [0x80002a2c]:csrrs a7, fflags, zero<br> [0x80002a30]:sh t6, 90(a5)<br>   |
| 436|[0x800075f8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a40]:flt.h t6, ft11, ft10<br> [0x80002a44]:csrrs a7, fflags, zero<br> [0x80002a48]:sh t6, 100(a5)<br>  |
| 437|[0x80007602]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a58]:flt.h t6, ft11, ft10<br> [0x80002a5c]:csrrs a7, fflags, zero<br> [0x80002a60]:sh t6, 110(a5)<br>  |
| 438|[0x8000760c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a70]:flt.h t6, ft11, ft10<br> [0x80002a74]:csrrs a7, fflags, zero<br> [0x80002a78]:sh t6, 120(a5)<br>  |
| 439|[0x80007616]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a88]:flt.h t6, ft11, ft10<br> [0x80002a8c]:csrrs a7, fflags, zero<br> [0x80002a90]:sh t6, 130(a5)<br>  |
| 440|[0x80007620]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002aa0]:flt.h t6, ft11, ft10<br> [0x80002aa4]:csrrs a7, fflags, zero<br> [0x80002aa8]:sh t6, 140(a5)<br>  |
| 441|[0x8000762a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ab8]:flt.h t6, ft11, ft10<br> [0x80002abc]:csrrs a7, fflags, zero<br> [0x80002ac0]:sh t6, 150(a5)<br>  |
| 442|[0x80007634]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ad0]:flt.h t6, ft11, ft10<br> [0x80002ad4]:csrrs a7, fflags, zero<br> [0x80002ad8]:sh t6, 160(a5)<br>  |
| 443|[0x8000763e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ae8]:flt.h t6, ft11, ft10<br> [0x80002aec]:csrrs a7, fflags, zero<br> [0x80002af0]:sh t6, 170(a5)<br>  |
| 444|[0x80007648]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002b00]:flt.h t6, ft11, ft10<br> [0x80002b04]:csrrs a7, fflags, zero<br> [0x80002b08]:sh t6, 180(a5)<br>  |
| 445|[0x80007652]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002b18]:flt.h t6, ft11, ft10<br> [0x80002b1c]:csrrs a7, fflags, zero<br> [0x80002b20]:sh t6, 190(a5)<br>  |
| 446|[0x8000765c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b30]:flt.h t6, ft11, ft10<br> [0x80002b34]:csrrs a7, fflags, zero<br> [0x80002b38]:sh t6, 200(a5)<br>  |
| 447|[0x80007666]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b48]:flt.h t6, ft11, ft10<br> [0x80002b4c]:csrrs a7, fflags, zero<br> [0x80002b50]:sh t6, 210(a5)<br>  |
| 448|[0x80007670]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b60]:flt.h t6, ft11, ft10<br> [0x80002b64]:csrrs a7, fflags, zero<br> [0x80002b68]:sh t6, 220(a5)<br>  |
| 449|[0x8000767a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b78]:flt.h t6, ft11, ft10<br> [0x80002b7c]:csrrs a7, fflags, zero<br> [0x80002b80]:sh t6, 230(a5)<br>  |
| 450|[0x80007684]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002b90]:flt.h t6, ft11, ft10<br> [0x80002b94]:csrrs a7, fflags, zero<br> [0x80002b98]:sh t6, 240(a5)<br>  |
| 451|[0x8000768e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002ba8]:flt.h t6, ft11, ft10<br> [0x80002bac]:csrrs a7, fflags, zero<br> [0x80002bb0]:sh t6, 250(a5)<br>  |
| 452|[0x80007698]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80002bc0]:flt.h t6, ft11, ft10<br> [0x80002bc4]:csrrs a7, fflags, zero<br> [0x80002bc8]:sh t6, 260(a5)<br>  |
| 453|[0x800076a2]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002bd8]:flt.h t6, ft11, ft10<br> [0x80002bdc]:csrrs a7, fflags, zero<br> [0x80002be0]:sh t6, 270(a5)<br>  |
| 454|[0x800076ac]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002bf0]:flt.h t6, ft11, ft10<br> [0x80002bf4]:csrrs a7, fflags, zero<br> [0x80002bf8]:sh t6, 280(a5)<br>  |
| 455|[0x800076b6]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c08]:flt.h t6, ft11, ft10<br> [0x80002c0c]:csrrs a7, fflags, zero<br> [0x80002c10]:sh t6, 290(a5)<br>  |
| 456|[0x800076c0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c20]:flt.h t6, ft11, ft10<br> [0x80002c24]:csrrs a7, fflags, zero<br> [0x80002c28]:sh t6, 300(a5)<br>  |
| 457|[0x800076ca]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c38]:flt.h t6, ft11, ft10<br> [0x80002c3c]:csrrs a7, fflags, zero<br> [0x80002c40]:sh t6, 310(a5)<br>  |
| 458|[0x800076d4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c50]:flt.h t6, ft11, ft10<br> [0x80002c54]:csrrs a7, fflags, zero<br> [0x80002c58]:sh t6, 320(a5)<br>  |
| 459|[0x800076de]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c68]:flt.h t6, ft11, ft10<br> [0x80002c6c]:csrrs a7, fflags, zero<br> [0x80002c70]:sh t6, 330(a5)<br>  |
| 460|[0x800076e8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c80]:flt.h t6, ft11, ft10<br> [0x80002c84]:csrrs a7, fflags, zero<br> [0x80002c88]:sh t6, 340(a5)<br>  |
| 461|[0x800076f2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c98]:flt.h t6, ft11, ft10<br> [0x80002c9c]:csrrs a7, fflags, zero<br> [0x80002ca0]:sh t6, 350(a5)<br>  |
| 462|[0x800076fc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cb0]:flt.h t6, ft11, ft10<br> [0x80002cb4]:csrrs a7, fflags, zero<br> [0x80002cb8]:sh t6, 360(a5)<br>  |
| 463|[0x80007706]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cc8]:flt.h t6, ft11, ft10<br> [0x80002ccc]:csrrs a7, fflags, zero<br> [0x80002cd0]:sh t6, 370(a5)<br>  |
| 464|[0x80007710]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ce0]:flt.h t6, ft11, ft10<br> [0x80002ce4]:csrrs a7, fflags, zero<br> [0x80002ce8]:sh t6, 380(a5)<br>  |
| 465|[0x8000771a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cf8]:flt.h t6, ft11, ft10<br> [0x80002cfc]:csrrs a7, fflags, zero<br> [0x80002d00]:sh t6, 390(a5)<br>  |
| 466|[0x80007724]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d10]:flt.h t6, ft11, ft10<br> [0x80002d14]:csrrs a7, fflags, zero<br> [0x80002d18]:sh t6, 400(a5)<br>  |
| 467|[0x8000772e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d28]:flt.h t6, ft11, ft10<br> [0x80002d2c]:csrrs a7, fflags, zero<br> [0x80002d30]:sh t6, 410(a5)<br>  |
| 468|[0x80007738]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002d40]:flt.h t6, ft11, ft10<br> [0x80002d44]:csrrs a7, fflags, zero<br> [0x80002d48]:sh t6, 420(a5)<br>  |
| 469|[0x80007742]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002d58]:flt.h t6, ft11, ft10<br> [0x80002d5c]:csrrs a7, fflags, zero<br> [0x80002d60]:sh t6, 430(a5)<br>  |
| 470|[0x8000774c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d70]:flt.h t6, ft11, ft10<br> [0x80002d74]:csrrs a7, fflags, zero<br> [0x80002d78]:sh t6, 440(a5)<br>  |
| 471|[0x80007756]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d88]:flt.h t6, ft11, ft10<br> [0x80002d8c]:csrrs a7, fflags, zero<br> [0x80002d90]:sh t6, 450(a5)<br>  |
| 472|[0x80007760]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002da0]:flt.h t6, ft11, ft10<br> [0x80002da4]:csrrs a7, fflags, zero<br> [0x80002da8]:sh t6, 460(a5)<br>  |
| 473|[0x8000776a]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002db8]:flt.h t6, ft11, ft10<br> [0x80002dbc]:csrrs a7, fflags, zero<br> [0x80002dc0]:sh t6, 470(a5)<br>  |
| 474|[0x80007774]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002dd0]:flt.h t6, ft11, ft10<br> [0x80002dd4]:csrrs a7, fflags, zero<br> [0x80002dd8]:sh t6, 480(a5)<br>  |
| 475|[0x8000777e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002de8]:flt.h t6, ft11, ft10<br> [0x80002dec]:csrrs a7, fflags, zero<br> [0x80002df0]:sh t6, 490(a5)<br>  |
| 476|[0x80007788]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80002e00]:flt.h t6, ft11, ft10<br> [0x80002e04]:csrrs a7, fflags, zero<br> [0x80002e08]:sh t6, 500(a5)<br>  |
| 477|[0x80007792]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e18]:flt.h t6, ft11, ft10<br> [0x80002e1c]:csrrs a7, fflags, zero<br> [0x80002e20]:sh t6, 510(a5)<br>  |
| 478|[0x8000779c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e30]:flt.h t6, ft11, ft10<br> [0x80002e34]:csrrs a7, fflags, zero<br> [0x80002e38]:sh t6, 520(a5)<br>  |
| 479|[0x800077a6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e48]:flt.h t6, ft11, ft10<br> [0x80002e4c]:csrrs a7, fflags, zero<br> [0x80002e50]:sh t6, 530(a5)<br>  |
| 480|[0x800077b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e60]:flt.h t6, ft11, ft10<br> [0x80002e64]:csrrs a7, fflags, zero<br> [0x80002e68]:sh t6, 540(a5)<br>  |
| 481|[0x800077ba]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e78]:flt.h t6, ft11, ft10<br> [0x80002e7c]:csrrs a7, fflags, zero<br> [0x80002e80]:sh t6, 550(a5)<br>  |
| 482|[0x800077c4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e90]:flt.h t6, ft11, ft10<br> [0x80002e94]:csrrs a7, fflags, zero<br> [0x80002e98]:sh t6, 560(a5)<br>  |
| 483|[0x800077ce]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ea8]:flt.h t6, ft11, ft10<br> [0x80002eac]:csrrs a7, fflags, zero<br> [0x80002eb0]:sh t6, 570(a5)<br>  |
| 484|[0x800077d8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ec0]:flt.h t6, ft11, ft10<br> [0x80002ec4]:csrrs a7, fflags, zero<br> [0x80002ec8]:sh t6, 580(a5)<br>  |
| 485|[0x800077e2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ed8]:flt.h t6, ft11, ft10<br> [0x80002edc]:csrrs a7, fflags, zero<br> [0x80002ee0]:sh t6, 590(a5)<br>  |
| 486|[0x800077ec]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ef0]:flt.h t6, ft11, ft10<br> [0x80002ef4]:csrrs a7, fflags, zero<br> [0x80002ef8]:sh t6, 600(a5)<br>  |
| 487|[0x800077f6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f08]:flt.h t6, ft11, ft10<br> [0x80002f0c]:csrrs a7, fflags, zero<br> [0x80002f10]:sh t6, 610(a5)<br>  |
| 488|[0x80007800]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f20]:flt.h t6, ft11, ft10<br> [0x80002f24]:csrrs a7, fflags, zero<br> [0x80002f28]:sh t6, 620(a5)<br>  |
| 489|[0x8000780a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f38]:flt.h t6, ft11, ft10<br> [0x80002f3c]:csrrs a7, fflags, zero<br> [0x80002f40]:sh t6, 630(a5)<br>  |
| 490|[0x80007814]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f50]:flt.h t6, ft11, ft10<br> [0x80002f54]:csrrs a7, fflags, zero<br> [0x80002f58]:sh t6, 640(a5)<br>  |
| 491|[0x8000781e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f68]:flt.h t6, ft11, ft10<br> [0x80002f6c]:csrrs a7, fflags, zero<br> [0x80002f70]:sh t6, 650(a5)<br>  |
| 492|[0x80007828]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002f80]:flt.h t6, ft11, ft10<br> [0x80002f84]:csrrs a7, fflags, zero<br> [0x80002f88]:sh t6, 660(a5)<br>  |
| 493|[0x80007832]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80002f98]:flt.h t6, ft11, ft10<br> [0x80002f9c]:csrrs a7, fflags, zero<br> [0x80002fa0]:sh t6, 670(a5)<br>  |
| 494|[0x8000783c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fb0]:flt.h t6, ft11, ft10<br> [0x80002fb4]:csrrs a7, fflags, zero<br> [0x80002fb8]:sh t6, 680(a5)<br>  |
| 495|[0x80007846]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fc8]:flt.h t6, ft11, ft10<br> [0x80002fcc]:csrrs a7, fflags, zero<br> [0x80002fd0]:sh t6, 690(a5)<br>  |
| 496|[0x80007850]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fe0]:flt.h t6, ft11, ft10<br> [0x80002fe4]:csrrs a7, fflags, zero<br> [0x80002fe8]:sh t6, 700(a5)<br>  |
| 497|[0x8000785a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ff8]:flt.h t6, ft11, ft10<br> [0x80002ffc]:csrrs a7, fflags, zero<br> [0x80003000]:sh t6, 710(a5)<br>  |
| 498|[0x80007864]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003010]:flt.h t6, ft11, ft10<br> [0x80003014]:csrrs a7, fflags, zero<br> [0x80003018]:sh t6, 720(a5)<br>  |
| 499|[0x8000786e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003028]:flt.h t6, ft11, ft10<br> [0x8000302c]:csrrs a7, fflags, zero<br> [0x80003030]:sh t6, 730(a5)<br>  |
| 500|[0x80007878]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80003040]:flt.h t6, ft11, ft10<br> [0x80003044]:csrrs a7, fflags, zero<br> [0x80003048]:sh t6, 740(a5)<br>  |
| 501|[0x80007882]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003058]:flt.h t6, ft11, ft10<br> [0x8000305c]:csrrs a7, fflags, zero<br> [0x80003060]:sh t6, 750(a5)<br>  |
| 502|[0x8000788c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003070]:flt.h t6, ft11, ft10<br> [0x80003074]:csrrs a7, fflags, zero<br> [0x80003078]:sh t6, 760(a5)<br>  |
| 503|[0x80007896]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003088]:flt.h t6, ft11, ft10<br> [0x8000308c]:csrrs a7, fflags, zero<br> [0x80003090]:sh t6, 770(a5)<br>  |
| 504|[0x800078a0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800030a0]:flt.h t6, ft11, ft10<br> [0x800030a4]:csrrs a7, fflags, zero<br> [0x800030a8]:sh t6, 780(a5)<br>  |
| 505|[0x800078aa]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800030b8]:flt.h t6, ft11, ft10<br> [0x800030bc]:csrrs a7, fflags, zero<br> [0x800030c0]:sh t6, 790(a5)<br>  |
| 506|[0x800078b4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800030d0]:flt.h t6, ft11, ft10<br> [0x800030d4]:csrrs a7, fflags, zero<br> [0x800030d8]:sh t6, 800(a5)<br>  |
| 507|[0x800078be]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800030e8]:flt.h t6, ft11, ft10<br> [0x800030ec]:csrrs a7, fflags, zero<br> [0x800030f0]:sh t6, 810(a5)<br>  |
| 508|[0x800078c8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80003100]:flt.h t6, ft11, ft10<br> [0x80003104]:csrrs a7, fflags, zero<br> [0x80003108]:sh t6, 820(a5)<br>  |
| 509|[0x800078d2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000311c]:flt.h t6, ft11, ft10<br> [0x80003120]:csrrs a7, fflags, zero<br> [0x80003124]:sh t6, 830(a5)<br>  |
| 510|[0x800078dc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80003134]:flt.h t6, ft11, ft10<br> [0x80003138]:csrrs a7, fflags, zero<br> [0x8000313c]:sh t6, 840(a5)<br>  |
| 511|[0x800078e6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x8000314c]:flt.h t6, ft11, ft10<br> [0x80003150]:csrrs a7, fflags, zero<br> [0x80003154]:sh t6, 850(a5)<br>  |
| 512|[0x800078f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x80003164]:flt.h t6, ft11, ft10<br> [0x80003168]:csrrs a7, fflags, zero<br> [0x8000316c]:sh t6, 860(a5)<br>  |
| 513|[0x800078fa]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x8000317c]:flt.h t6, ft11, ft10<br> [0x80003180]:csrrs a7, fflags, zero<br> [0x80003184]:sh t6, 870(a5)<br>  |
| 514|[0x80007904]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003194]:flt.h t6, ft11, ft10<br> [0x80003198]:csrrs a7, fflags, zero<br> [0x8000319c]:sh t6, 880(a5)<br>  |
| 515|[0x8000790e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800031ac]:flt.h t6, ft11, ft10<br> [0x800031b0]:csrrs a7, fflags, zero<br> [0x800031b4]:sh t6, 890(a5)<br>  |
| 516|[0x80007918]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800031c4]:flt.h t6, ft11, ft10<br> [0x800031c8]:csrrs a7, fflags, zero<br> [0x800031cc]:sh t6, 900(a5)<br>  |
| 517|[0x80007922]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800031dc]:flt.h t6, ft11, ft10<br> [0x800031e0]:csrrs a7, fflags, zero<br> [0x800031e4]:sh t6, 910(a5)<br>  |
| 518|[0x8000792c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x800031f4]:flt.h t6, ft11, ft10<br> [0x800031f8]:csrrs a7, fflags, zero<br> [0x800031fc]:sh t6, 920(a5)<br>  |
| 519|[0x80007936]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000320c]:flt.h t6, ft11, ft10<br> [0x80003210]:csrrs a7, fflags, zero<br> [0x80003214]:sh t6, 930(a5)<br>  |
| 520|[0x80007940]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003224]:flt.h t6, ft11, ft10<br> [0x80003228]:csrrs a7, fflags, zero<br> [0x8000322c]:sh t6, 940(a5)<br>  |
| 521|[0x8000794a]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000323c]:flt.h t6, ft11, ft10<br> [0x80003240]:csrrs a7, fflags, zero<br> [0x80003244]:sh t6, 950(a5)<br>  |
| 522|[0x80007954]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003254]:flt.h t6, ft11, ft10<br> [0x80003258]:csrrs a7, fflags, zero<br> [0x8000325c]:sh t6, 960(a5)<br>  |
| 523|[0x8000795e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x8000326c]:flt.h t6, ft11, ft10<br> [0x80003270]:csrrs a7, fflags, zero<br> [0x80003274]:sh t6, 970(a5)<br>  |
| 524|[0x80007968]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80003284]:flt.h t6, ft11, ft10<br> [0x80003288]:csrrs a7, fflags, zero<br> [0x8000328c]:sh t6, 980(a5)<br>  |
| 525|[0x80007972]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000329c]:flt.h t6, ft11, ft10<br> [0x800032a0]:csrrs a7, fflags, zero<br> [0x800032a4]:sh t6, 990(a5)<br>  |
| 526|[0x8000797c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800032b4]:flt.h t6, ft11, ft10<br> [0x800032b8]:csrrs a7, fflags, zero<br> [0x800032bc]:sh t6, 1000(a5)<br> |
| 527|[0x80007986]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800032cc]:flt.h t6, ft11, ft10<br> [0x800032d0]:csrrs a7, fflags, zero<br> [0x800032d4]:sh t6, 1010(a5)<br> |
| 528|[0x80007990]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800032e4]:flt.h t6, ft11, ft10<br> [0x800032e8]:csrrs a7, fflags, zero<br> [0x800032ec]:sh t6, 1020(a5)<br> |
| 529|[0x8000799a]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800032fc]:flt.h t6, ft11, ft10<br> [0x80003300]:csrrs a7, fflags, zero<br> [0x80003304]:sh t6, 1030(a5)<br> |
| 530|[0x800079a4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003314]:flt.h t6, ft11, ft10<br> [0x80003318]:csrrs a7, fflags, zero<br> [0x8000331c]:sh t6, 1040(a5)<br> |
| 531|[0x800079ae]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000332c]:flt.h t6, ft11, ft10<br> [0x80003330]:csrrs a7, fflags, zero<br> [0x80003334]:sh t6, 1050(a5)<br> |
| 532|[0x800079b8]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80003344]:flt.h t6, ft11, ft10<br> [0x80003348]:csrrs a7, fflags, zero<br> [0x8000334c]:sh t6, 1060(a5)<br> |
| 533|[0x800079c2]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000335c]:flt.h t6, ft11, ft10<br> [0x80003360]:csrrs a7, fflags, zero<br> [0x80003364]:sh t6, 1070(a5)<br> |
| 534|[0x800079cc]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x80003374]:flt.h t6, ft11, ft10<br> [0x80003378]:csrrs a7, fflags, zero<br> [0x8000337c]:sh t6, 1080(a5)<br> |
| 535|[0x800079d6]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x8000338c]:flt.h t6, ft11, ft10<br> [0x80003390]:csrrs a7, fflags, zero<br> [0x80003394]:sh t6, 1090(a5)<br> |
| 536|[0x800079e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800033a4]:flt.h t6, ft11, ft10<br> [0x800033a8]:csrrs a7, fflags, zero<br> [0x800033ac]:sh t6, 1100(a5)<br> |
| 537|[0x800079ea]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800033bc]:flt.h t6, ft11, ft10<br> [0x800033c0]:csrrs a7, fflags, zero<br> [0x800033c4]:sh t6, 1110(a5)<br> |
| 538|[0x800079f4]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800033d4]:flt.h t6, ft11, ft10<br> [0x800033d8]:csrrs a7, fflags, zero<br> [0x800033dc]:sh t6, 1120(a5)<br> |
| 539|[0x800079fe]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800033ec]:flt.h t6, ft11, ft10<br> [0x800033f0]:csrrs a7, fflags, zero<br> [0x800033f4]:sh t6, 1130(a5)<br> |
| 540|[0x80007a08]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003404]:flt.h t6, ft11, ft10<br> [0x80003408]:csrrs a7, fflags, zero<br> [0x8000340c]:sh t6, 1140(a5)<br> |
| 541|[0x80007a12]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x8000341c]:flt.h t6, ft11, ft10<br> [0x80003420]:csrrs a7, fflags, zero<br> [0x80003424]:sh t6, 1150(a5)<br> |
| 542|[0x80007a1c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80003434]:flt.h t6, ft11, ft10<br> [0x80003438]:csrrs a7, fflags, zero<br> [0x8000343c]:sh t6, 1160(a5)<br> |
| 543|[0x80007a26]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000344c]:flt.h t6, ft11, ft10<br> [0x80003450]:csrrs a7, fflags, zero<br> [0x80003454]:sh t6, 1170(a5)<br> |
| 544|[0x80007a30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003464]:flt.h t6, ft11, ft10<br> [0x80003468]:csrrs a7, fflags, zero<br> [0x8000346c]:sh t6, 1180(a5)<br> |
| 545|[0x80007a3a]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000347c]:flt.h t6, ft11, ft10<br> [0x80003480]:csrrs a7, fflags, zero<br> [0x80003484]:sh t6, 1190(a5)<br> |
| 546|[0x80007a44]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003494]:flt.h t6, ft11, ft10<br> [0x80003498]:csrrs a7, fflags, zero<br> [0x8000349c]:sh t6, 1200(a5)<br> |
| 547|[0x80007a4e]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800034ac]:flt.h t6, ft11, ft10<br> [0x800034b0]:csrrs a7, fflags, zero<br> [0x800034b4]:sh t6, 1210(a5)<br> |
| 548|[0x80007a58]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x800034c4]:flt.h t6, ft11, ft10<br> [0x800034c8]:csrrs a7, fflags, zero<br> [0x800034cc]:sh t6, 1220(a5)<br> |
| 549|[0x80007a62]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x800034dc]:flt.h t6, ft11, ft10<br> [0x800034e0]:csrrs a7, fflags, zero<br> [0x800034e4]:sh t6, 1230(a5)<br> |
| 550|[0x80007a6c]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x800034f4]:flt.h t6, ft11, ft10<br> [0x800034f8]:csrrs a7, fflags, zero<br> [0x800034fc]:sh t6, 1240(a5)<br> |
| 551|[0x80007a76]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000350c]:flt.h t6, ft11, ft10<br> [0x80003510]:csrrs a7, fflags, zero<br> [0x80003514]:sh t6, 1250(a5)<br> |
| 552|[0x80007a80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003524]:flt.h t6, ft11, ft10<br> [0x80003528]:csrrs a7, fflags, zero<br> [0x8000352c]:sh t6, 1260(a5)<br> |
| 553|[0x80007a8a]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000353c]:flt.h t6, ft11, ft10<br> [0x80003540]:csrrs a7, fflags, zero<br> [0x80003544]:sh t6, 1270(a5)<br> |
| 554|[0x80007a94]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003554]:flt.h t6, ft11, ft10<br> [0x80003558]:csrrs a7, fflags, zero<br> [0x8000355c]:sh t6, 1280(a5)<br> |
| 555|[0x80007a9e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x0f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000356c]:flt.h t6, ft11, ft10<br> [0x80003570]:csrrs a7, fflags, zero<br> [0x80003574]:sh t6, 1290(a5)<br> |
| 556|[0x80007aa8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x155 and rm_val == 1  #nosat<br>                                                                                     |[0x80003584]:flt.h t6, ft11, ft10<br> [0x80003588]:csrrs a7, fflags, zero<br> [0x8000358c]:sh t6, 1300(a5)<br> |
| 557|[0x80007ab2]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000359c]:flt.h t6, ft11, ft10<br> [0x800035a0]:csrrs a7, fflags, zero<br> [0x800035a4]:sh t6, 1310(a5)<br> |
| 558|[0x80007abc]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x255 and rm_val == 1  #nosat<br>                                                                                     |[0x800035b4]:flt.h t6, ft11, ft10<br> [0x800035b8]:csrrs a7, fflags, zero<br> [0x800035bc]:sh t6, 1320(a5)<br> |
| 559|[0x80007ac6]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x201 and rm_val == 1  #nosat<br>                                                                                     |[0x800035cc]:flt.h t6, ft11, ft10<br> [0x800035d0]:csrrs a7, fflags, zero<br> [0x800035d4]:sh t6, 1330(a5)<br> |
| 560|[0x80007ad0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800035e4]:flt.h t6, ft11, ft10<br> [0x800035e8]:csrrs a7, fflags, zero<br> [0x800035ec]:sh t6, 1340(a5)<br> |
| 561|[0x80007ada]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x200 and rm_val == 1  #nosat<br>                                                                                     |[0x800035fc]:flt.h t6, ft11, ft10<br> [0x80003600]:csrrs a7, fflags, zero<br> [0x80003604]:sh t6, 1350(a5)<br> |
| 562|[0x80007ae4]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003614]:flt.h t6, ft11, ft10<br> [0x80003618]:csrrs a7, fflags, zero<br> [0x8000361c]:sh t6, 1360(a5)<br> |
| 563|[0x80007aee]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1f and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000362c]:flt.h t6, ft11, ft10<br> [0x80003630]:csrrs a7, fflags, zero<br> [0x80003634]:sh t6, 1370(a5)<br> |
| 564|[0x80007af8]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x80003644]:flt.h t6, ft11, ft10<br> [0x80003648]:csrrs a7, fflags, zero<br> [0x8000364c]:sh t6, 1380(a5)<br> |
| 565|[0x80007b02]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x1e and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x8000365c]:flt.h t6, ft11, ft10<br> [0x80003660]:csrrs a7, fflags, zero<br> [0x80003664]:sh t6, 1390(a5)<br> |
| 566|[0x80007b0c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x055 and rm_val == 1  #nosat<br>                                                                                     |[0x80003674]:flt.h t6, ft11, ft10<br> [0x80003678]:csrrs a7, fflags, zero<br> [0x8000367c]:sh t6, 1400(a5)<br> |
| 567|[0x80007b16]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000368c]:flt.h t6, ft11, ft10<br> [0x80003690]:csrrs a7, fflags, zero<br> [0x80003694]:sh t6, 1410(a5)<br> |
| 568|[0x80007b20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800036a4]:flt.h t6, ft11, ft10<br> [0x800036a8]:csrrs a7, fflags, zero<br> [0x800036ac]:sh t6, 1420(a5)<br> |
| 569|[0x80007b2a]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x01 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x800036bc]:flt.h t6, ft11, ft10<br> [0x800036c0]:csrrs a7, fflags, zero<br> [0x800036c4]:sh t6, 1430(a5)<br> |
| 570|[0x80007b34]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800036d4]:flt.h t6, ft11, ft10<br> [0x800036d8]:csrrs a7, fflags, zero<br> [0x800036dc]:sh t6, 1440(a5)<br> |
| 571|[0x80007b3e]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x3ff and rm_val == 1  #nosat<br>                                                                                     |[0x800036ec]:flt.h t6, ft11, ft10<br> [0x800036f0]:csrrs a7, fflags, zero<br> [0x800036f4]:sh t6, 1450(a5)<br> |
| 572|[0x80007b48]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x3fe and rm_val == 1  #nosat<br>                                                                                     |[0x80003704]:flt.h t6, ft11, ft10<br> [0x80003708]:csrrs a7, fflags, zero<br> [0x8000370c]:sh t6, 1460(a5)<br> |
| 573|[0x80007b52]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000371c]:flt.h t6, ft11, ft10<br> [0x80003720]:csrrs a7, fflags, zero<br> [0x80003724]:sh t6, 1470(a5)<br> |
| 574|[0x80007b5c]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003734]:flt.h t6, ft11, ft10<br> [0x80003738]:csrrs a7, fflags, zero<br> [0x8000373c]:sh t6, 1480(a5)<br> |
| 575|[0x80007b66]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 0 and fe2 == 0x00 and fm2 == 0x001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000374c]:flt.h t6, ft11, ft10<br> [0x80003750]:csrrs a7, fflags, zero<br> [0x80003754]:sh t6, 1490(a5)<br> |
| 576|[0x80007b70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and fs2 == 1 and fe2 == 0x00 and fm2 == 0x000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003764]:flt.h t6, ft11, ft10<br> [0x80003768]:csrrs a7, fflags, zero<br> [0x8000376c]:sh t6, 1500(a5)<br> |
