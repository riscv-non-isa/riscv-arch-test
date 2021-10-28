
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80003a60')]      |
| SIG_REGION                | [('0x80007610', '0x80009a30', '1156 dwords')]      |
| COV_LABELS                | d_flt_b1      |
| TEST_NAME                 | /scratch/rv64d/temp/riscof_work/d_flt_b1-01.S/ref.S    |
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
      [0x80003a30]:flt.d a2, fa0, fa1
      [0x80003a34]:csrrs a7, fflags, zero
      [0x80003a38]:sd a2, 576(a5)
 -- Signature Address: 0x80009a10 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : flt.d
      - rd : x12
      - rs1 : f10
      - rs2 : f11
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003a48]:flt.d a2, fa0, fa1
      [0x80003a4c]:csrrs a7, fflags, zero
      [0x80003a50]:sd a2, 592(a5)
 -- Signature Address: 0x80009a20 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : flt.d
      - rd : x12
      - rs1 : f10
      - rs2 : f11
      - rs1 != rs2
      - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : flt.d', 'rd : x20', 'rs1 : f30', 'rs2 : f6', 'rs1 != rs2', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003b8]:flt.d s4, ft10, ft6
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd s4, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80007618]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f1', 'rs2 : f1', 'rs1 == rs2', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003d0]:flt.d t3, ft1, ft1
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:sd t3, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80007628]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f27', 'rs2 : f31', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800003e8]:flt.d s11, fs11, ft11
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:sd s11, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80007638]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f25', 'rs2 : f0', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000400]:flt.d s5, fs9, ft0
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:sd s5, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80007648]:0x0000000000000010




Last Coverpoint : ['rd : x24', 'rs1 : f6', 'rs2 : f24', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000418]:flt.d s8, ft6, fs8
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:sd s8, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80007658]:0x0000000000000010




Last Coverpoint : ['rd : x9', 'rs1 : f26', 'rs2 : f4', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000430]:flt.d s1, fs10, ft4
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd s1, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80007668]:0x0000000000000010




Last Coverpoint : ['rd : x0', 'rs1 : f12', 'rs2 : f21', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000448]:flt.d zero, fa2, fs5
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:sd zero, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80007678]:0x0000000000000010




Last Coverpoint : ['rd : x13', 'rs1 : f13', 'rs2 : f25', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000460]:flt.d a3, fa3, fs9
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:sd a3, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80007688]:0x0000000000000010




Last Coverpoint : ['rd : x29', 'rs1 : f24', 'rs2 : f2', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000478]:flt.d t4, fs8, ft2
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd t4, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80007698]:0x0000000000000010




Last Coverpoint : ['rd : x12', 'rs1 : f23', 'rs2 : f9', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000490]:flt.d a2, fs7, fs1
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd a2, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800076a8]:0x0000000000000010




Last Coverpoint : ['rd : x7', 'rs1 : f4', 'rs2 : f22', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004a8]:flt.d t2, ft4, fs6
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:sd t2, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800076b8]:0x0000000000000010




Last Coverpoint : ['rd : x26', 'rs1 : f5', 'rs2 : f10', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004c0]:flt.d s10, ft5, fa0
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:sd s10, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x800076c8]:0x0000000000000010




Last Coverpoint : ['rd : x31', 'rs1 : f16', 'rs2 : f26', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004d8]:flt.d t6, fa6, fs10
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd t6, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x800076d8]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f9', 'rs2 : f14', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004f0]:flt.d t5, fs1, fa4
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd t5, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x800076e8]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f8', 'rs2 : f19', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000508]:flt.d s6, fs0, fs3
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:sd s6, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x800076f8]:0x0000000000000010




Last Coverpoint : ['rd : x10', 'rs1 : f18', 'rs2 : f20', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000520]:flt.d a0, fs2, fs4
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:sd a0, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80007708]:0x0000000000000010




Last Coverpoint : ['rd : x19', 'rs1 : f28', 'rs2 : f29', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000538]:flt.d s3, ft8, ft9
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:sd s3, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80007718]:0x0000000000000010




Last Coverpoint : ['rd : x8', 'rs1 : f10', 'rs2 : f5', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000550]:flt.d fp, fa0, ft5
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd fp, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80007728]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f15', 'rs2 : f18', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000568]:flt.d t1, fa5, fs2
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd t1, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80007738]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f17', 'rs2 : f15', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000580]:flt.d s9, fa7, fa5
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:sd s9, 304(a5)
Current Store : [0x8000058c] : sd a7, 312(a5) -- Store: [0x80007748]:0x0000000000000010




Last Coverpoint : ['rd : x4', 'rs1 : f14', 'rs2 : f8', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000598]:flt.d tp, fa4, fs0
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:sd tp, 320(a5)
Current Store : [0x800005a4] : sd a7, 328(a5) -- Store: [0x80007758]:0x0000000000000010




Last Coverpoint : ['rd : x14', 'rs1 : f21', 'rs2 : f7', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005b0]:flt.d a4, fs5, ft7
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:sd a4, 336(a5)
Current Store : [0x800005bc] : sd a7, 344(a5) -- Store: [0x80007768]:0x0000000000000010




Last Coverpoint : ['rd : x17', 'rs1 : f3', 'rs2 : f12', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005d4]:flt.d a7, ft3, fa2
	-[0x800005d8]:csrrs s5, fflags, zero
	-[0x800005dc]:sd a7, 0(s3)
Current Store : [0x800005e0] : sd s5, 8(s3) -- Store: [0x80007778]:0x0000000000000010




Last Coverpoint : ['rd : x23', 'rs1 : f22', 'rs2 : f27', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005f8]:flt.d s7, fs6, fs11
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:sd s7, 0(a5)
Current Store : [0x80000604] : sd a7, 8(a5) -- Store: [0x80007788]:0x0000000000000010




Last Coverpoint : ['rd : x2', 'rs1 : f0', 'rs2 : f11', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000610]:flt.d sp, ft0, fa1
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:sd sp, 16(a5)
Current Store : [0x8000061c] : sd a7, 24(a5) -- Store: [0x80007798]:0x0000000000000010




Last Coverpoint : ['rd : x1', 'rs1 : f19', 'rs2 : f30', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000628]:flt.d ra, fs3, ft10
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd ra, 32(a5)
Current Store : [0x80000634] : sd a7, 40(a5) -- Store: [0x800077a8]:0x0000000000000010




Last Coverpoint : ['rd : x15', 'rs1 : f29', 'rs2 : f13', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000064c]:flt.d a5, ft9, fa3
	-[0x80000650]:csrrs s5, fflags, zero
	-[0x80000654]:sd a5, 0(s3)
Current Store : [0x80000658] : sd s5, 8(s3) -- Store: [0x800077b8]:0x0000000000000010




Last Coverpoint : ['rd : x11', 'rs1 : f20', 'rs2 : f3', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000670]:flt.d a1, fs4, ft3
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:sd a1, 0(a5)
Current Store : [0x8000067c] : sd a7, 8(a5) -- Store: [0x800077c8]:0x0000000000000010




Last Coverpoint : ['rd : x5', 'rs1 : f11', 'rs2 : f17', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000688]:flt.d t0, fa1, fa7
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:sd t0, 16(a5)
Current Store : [0x80000694] : sd a7, 24(a5) -- Store: [0x800077d8]:0x0000000000000010




Last Coverpoint : ['rd : x18', 'rs1 : f2', 'rs2 : f16', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006a0]:flt.d s2, ft2, fa6
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:sd s2, 32(a5)
Current Store : [0x800006ac] : sd a7, 40(a5) -- Store: [0x800077e8]:0x0000000000000010




Last Coverpoint : ['rd : x3', 'rs1 : f7', 'rs2 : f28', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006b8]:flt.d gp, ft7, ft8
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd gp, 48(a5)
Current Store : [0x800006c4] : sd a7, 56(a5) -- Store: [0x800077f8]:0x0000000000000010




Last Coverpoint : ['rd : x16', 'rs1 : f31', 'rs2 : f23', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006dc]:flt.d a6, ft11, fs7
	-[0x800006e0]:csrrs s5, fflags, zero
	-[0x800006e4]:sd a6, 0(s3)
Current Store : [0x800006e8] : sd s5, 8(s3) -- Store: [0x80007808]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000700]:flt.d a2, fa0, fa1
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:sd a2, 0(a5)
Current Store : [0x8000070c] : sd a7, 8(a5) -- Store: [0x80007818]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000718]:flt.d a2, fa0, fa1
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:sd a2, 16(a5)
Current Store : [0x80000724] : sd a7, 24(a5) -- Store: [0x80007828]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000730]:flt.d a2, fa0, fa1
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:sd a2, 32(a5)
Current Store : [0x8000073c] : sd a7, 40(a5) -- Store: [0x80007838]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000748]:flt.d a2, fa0, fa1
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:sd a2, 48(a5)
Current Store : [0x80000754] : sd a7, 56(a5) -- Store: [0x80007848]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000760]:flt.d a2, fa0, fa1
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:sd a2, 64(a5)
Current Store : [0x8000076c] : sd a7, 72(a5) -- Store: [0x80007858]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000778]:flt.d a2, fa0, fa1
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:sd a2, 80(a5)
Current Store : [0x80000784] : sd a7, 88(a5) -- Store: [0x80007868]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000790]:flt.d a2, fa0, fa1
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:sd a2, 96(a5)
Current Store : [0x8000079c] : sd a7, 104(a5) -- Store: [0x80007878]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007a8]:flt.d a2, fa0, fa1
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:sd a2, 112(a5)
Current Store : [0x800007b4] : sd a7, 120(a5) -- Store: [0x80007888]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007c0]:flt.d a2, fa0, fa1
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:sd a2, 128(a5)
Current Store : [0x800007cc] : sd a7, 136(a5) -- Store: [0x80007898]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007d8]:flt.d a2, fa0, fa1
	-[0x800007dc]:csrrs a7, fflags, zero
	-[0x800007e0]:sd a2, 144(a5)
Current Store : [0x800007e4] : sd a7, 152(a5) -- Store: [0x800078a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007f0]:flt.d a2, fa0, fa1
	-[0x800007f4]:csrrs a7, fflags, zero
	-[0x800007f8]:sd a2, 160(a5)
Current Store : [0x800007fc] : sd a7, 168(a5) -- Store: [0x800078b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000808]:flt.d a2, fa0, fa1
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:sd a2, 176(a5)
Current Store : [0x80000814] : sd a7, 184(a5) -- Store: [0x800078c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000820]:flt.d a2, fa0, fa1
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:sd a2, 192(a5)
Current Store : [0x8000082c] : sd a7, 200(a5) -- Store: [0x800078d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000838]:flt.d a2, fa0, fa1
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:sd a2, 208(a5)
Current Store : [0x80000844] : sd a7, 216(a5) -- Store: [0x800078e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000850]:flt.d a2, fa0, fa1
	-[0x80000854]:csrrs a7, fflags, zero
	-[0x80000858]:sd a2, 224(a5)
Current Store : [0x8000085c] : sd a7, 232(a5) -- Store: [0x800078f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000868]:flt.d a2, fa0, fa1
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:sd a2, 240(a5)
Current Store : [0x80000874] : sd a7, 248(a5) -- Store: [0x80007908]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000880]:flt.d a2, fa0, fa1
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:sd a2, 256(a5)
Current Store : [0x8000088c] : sd a7, 264(a5) -- Store: [0x80007918]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000898]:flt.d a2, fa0, fa1
	-[0x8000089c]:csrrs a7, fflags, zero
	-[0x800008a0]:sd a2, 272(a5)
Current Store : [0x800008a4] : sd a7, 280(a5) -- Store: [0x80007928]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008b0]:flt.d a2, fa0, fa1
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:sd a2, 288(a5)
Current Store : [0x800008bc] : sd a7, 296(a5) -- Store: [0x80007938]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008c8]:flt.d a2, fa0, fa1
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:sd a2, 304(a5)
Current Store : [0x800008d4] : sd a7, 312(a5) -- Store: [0x80007948]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008e0]:flt.d a2, fa0, fa1
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:sd a2, 320(a5)
Current Store : [0x800008ec] : sd a7, 328(a5) -- Store: [0x80007958]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008f8]:flt.d a2, fa0, fa1
	-[0x800008fc]:csrrs a7, fflags, zero
	-[0x80000900]:sd a2, 336(a5)
Current Store : [0x80000904] : sd a7, 344(a5) -- Store: [0x80007968]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000910]:flt.d a2, fa0, fa1
	-[0x80000914]:csrrs a7, fflags, zero
	-[0x80000918]:sd a2, 352(a5)
Current Store : [0x8000091c] : sd a7, 360(a5) -- Store: [0x80007978]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000928]:flt.d a2, fa0, fa1
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:sd a2, 368(a5)
Current Store : [0x80000934] : sd a7, 376(a5) -- Store: [0x80007988]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000940]:flt.d a2, fa0, fa1
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:sd a2, 384(a5)
Current Store : [0x8000094c] : sd a7, 392(a5) -- Store: [0x80007998]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000958]:flt.d a2, fa0, fa1
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:sd a2, 400(a5)
Current Store : [0x80000964] : sd a7, 408(a5) -- Store: [0x800079a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000970]:flt.d a2, fa0, fa1
	-[0x80000974]:csrrs a7, fflags, zero
	-[0x80000978]:sd a2, 416(a5)
Current Store : [0x8000097c] : sd a7, 424(a5) -- Store: [0x800079b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000988]:flt.d a2, fa0, fa1
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:sd a2, 432(a5)
Current Store : [0x80000994] : sd a7, 440(a5) -- Store: [0x800079c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009a0]:flt.d a2, fa0, fa1
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:sd a2, 448(a5)
Current Store : [0x800009ac] : sd a7, 456(a5) -- Store: [0x800079d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009b8]:flt.d a2, fa0, fa1
	-[0x800009bc]:csrrs a7, fflags, zero
	-[0x800009c0]:sd a2, 464(a5)
Current Store : [0x800009c4] : sd a7, 472(a5) -- Store: [0x800079e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009d0]:flt.d a2, fa0, fa1
	-[0x800009d4]:csrrs a7, fflags, zero
	-[0x800009d8]:sd a2, 480(a5)
Current Store : [0x800009dc] : sd a7, 488(a5) -- Store: [0x800079f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009e8]:flt.d a2, fa0, fa1
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:sd a2, 496(a5)
Current Store : [0x800009f4] : sd a7, 504(a5) -- Store: [0x80007a08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a00]:flt.d a2, fa0, fa1
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:sd a2, 512(a5)
Current Store : [0x80000a0c] : sd a7, 520(a5) -- Store: [0x80007a18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a18]:flt.d a2, fa0, fa1
	-[0x80000a1c]:csrrs a7, fflags, zero
	-[0x80000a20]:sd a2, 528(a5)
Current Store : [0x80000a24] : sd a7, 536(a5) -- Store: [0x80007a28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a30]:flt.d a2, fa0, fa1
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:sd a2, 544(a5)
Current Store : [0x80000a3c] : sd a7, 552(a5) -- Store: [0x80007a38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a48]:flt.d a2, fa0, fa1
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:sd a2, 560(a5)
Current Store : [0x80000a54] : sd a7, 568(a5) -- Store: [0x80007a48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a60]:flt.d a2, fa0, fa1
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:sd a2, 576(a5)
Current Store : [0x80000a6c] : sd a7, 584(a5) -- Store: [0x80007a58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a78]:flt.d a2, fa0, fa1
	-[0x80000a7c]:csrrs a7, fflags, zero
	-[0x80000a80]:sd a2, 592(a5)
Current Store : [0x80000a84] : sd a7, 600(a5) -- Store: [0x80007a68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a90]:flt.d a2, fa0, fa1
	-[0x80000a94]:csrrs a7, fflags, zero
	-[0x80000a98]:sd a2, 608(a5)
Current Store : [0x80000a9c] : sd a7, 616(a5) -- Store: [0x80007a78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:flt.d a2, fa0, fa1
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:sd a2, 624(a5)
Current Store : [0x80000ab4] : sd a7, 632(a5) -- Store: [0x80007a88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:flt.d a2, fa0, fa1
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:sd a2, 640(a5)
Current Store : [0x80000acc] : sd a7, 648(a5) -- Store: [0x80007a98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:flt.d a2, fa0, fa1
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:sd a2, 656(a5)
Current Store : [0x80000ae4] : sd a7, 664(a5) -- Store: [0x80007aa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000af0]:flt.d a2, fa0, fa1
	-[0x80000af4]:csrrs a7, fflags, zero
	-[0x80000af8]:sd a2, 672(a5)
Current Store : [0x80000afc] : sd a7, 680(a5) -- Store: [0x80007ab8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b08]:flt.d a2, fa0, fa1
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:sd a2, 688(a5)
Current Store : [0x80000b14] : sd a7, 696(a5) -- Store: [0x80007ac8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b20]:flt.d a2, fa0, fa1
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:sd a2, 704(a5)
Current Store : [0x80000b2c] : sd a7, 712(a5) -- Store: [0x80007ad8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b38]:flt.d a2, fa0, fa1
	-[0x80000b3c]:csrrs a7, fflags, zero
	-[0x80000b40]:sd a2, 720(a5)
Current Store : [0x80000b44] : sd a7, 728(a5) -- Store: [0x80007ae8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b50]:flt.d a2, fa0, fa1
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:sd a2, 736(a5)
Current Store : [0x80000b5c] : sd a7, 744(a5) -- Store: [0x80007af8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b68]:flt.d a2, fa0, fa1
	-[0x80000b6c]:csrrs a7, fflags, zero
	-[0x80000b70]:sd a2, 752(a5)
Current Store : [0x80000b74] : sd a7, 760(a5) -- Store: [0x80007b08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b80]:flt.d a2, fa0, fa1
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:sd a2, 768(a5)
Current Store : [0x80000b8c] : sd a7, 776(a5) -- Store: [0x80007b18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b98]:flt.d a2, fa0, fa1
	-[0x80000b9c]:csrrs a7, fflags, zero
	-[0x80000ba0]:sd a2, 784(a5)
Current Store : [0x80000ba4] : sd a7, 792(a5) -- Store: [0x80007b28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bb0]:flt.d a2, fa0, fa1
	-[0x80000bb4]:csrrs a7, fflags, zero
	-[0x80000bb8]:sd a2, 800(a5)
Current Store : [0x80000bbc] : sd a7, 808(a5) -- Store: [0x80007b38]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bc8]:flt.d a2, fa0, fa1
	-[0x80000bcc]:csrrs a7, fflags, zero
	-[0x80000bd0]:sd a2, 816(a5)
Current Store : [0x80000bd4] : sd a7, 824(a5) -- Store: [0x80007b48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000be0]:flt.d a2, fa0, fa1
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:sd a2, 832(a5)
Current Store : [0x80000bec] : sd a7, 840(a5) -- Store: [0x80007b58]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:flt.d a2, fa0, fa1
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:sd a2, 848(a5)
Current Store : [0x80000c04] : sd a7, 856(a5) -- Store: [0x80007b68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c10]:flt.d a2, fa0, fa1
	-[0x80000c14]:csrrs a7, fflags, zero
	-[0x80000c18]:sd a2, 864(a5)
Current Store : [0x80000c1c] : sd a7, 872(a5) -- Store: [0x80007b78]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c28]:flt.d a2, fa0, fa1
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:sd a2, 880(a5)
Current Store : [0x80000c34] : sd a7, 888(a5) -- Store: [0x80007b88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c40]:flt.d a2, fa0, fa1
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:sd a2, 896(a5)
Current Store : [0x80000c4c] : sd a7, 904(a5) -- Store: [0x80007b98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c58]:flt.d a2, fa0, fa1
	-[0x80000c5c]:csrrs a7, fflags, zero
	-[0x80000c60]:sd a2, 912(a5)
Current Store : [0x80000c64] : sd a7, 920(a5) -- Store: [0x80007ba8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c70]:flt.d a2, fa0, fa1
	-[0x80000c74]:csrrs a7, fflags, zero
	-[0x80000c78]:sd a2, 928(a5)
Current Store : [0x80000c7c] : sd a7, 936(a5) -- Store: [0x80007bb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c88]:flt.d a2, fa0, fa1
	-[0x80000c8c]:csrrs a7, fflags, zero
	-[0x80000c90]:sd a2, 944(a5)
Current Store : [0x80000c94] : sd a7, 952(a5) -- Store: [0x80007bc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:flt.d a2, fa0, fa1
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:sd a2, 960(a5)
Current Store : [0x80000cac] : sd a7, 968(a5) -- Store: [0x80007bd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cb8]:flt.d a2, fa0, fa1
	-[0x80000cbc]:csrrs a7, fflags, zero
	-[0x80000cc0]:sd a2, 976(a5)
Current Store : [0x80000cc4] : sd a7, 984(a5) -- Store: [0x80007be8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:flt.d a2, fa0, fa1
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:sd a2, 992(a5)
Current Store : [0x80000cdc] : sd a7, 1000(a5) -- Store: [0x80007bf8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ce8]:flt.d a2, fa0, fa1
	-[0x80000cec]:csrrs a7, fflags, zero
	-[0x80000cf0]:sd a2, 1008(a5)
Current Store : [0x80000cf4] : sd a7, 1016(a5) -- Store: [0x80007c08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d00]:flt.d a2, fa0, fa1
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:sd a2, 1024(a5)
Current Store : [0x80000d0c] : sd a7, 1032(a5) -- Store: [0x80007c18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d18]:flt.d a2, fa0, fa1
	-[0x80000d1c]:csrrs a7, fflags, zero
	-[0x80000d20]:sd a2, 1040(a5)
Current Store : [0x80000d24] : sd a7, 1048(a5) -- Store: [0x80007c28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d30]:flt.d a2, fa0, fa1
	-[0x80000d34]:csrrs a7, fflags, zero
	-[0x80000d38]:sd a2, 1056(a5)
Current Store : [0x80000d3c] : sd a7, 1064(a5) -- Store: [0x80007c38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d48]:flt.d a2, fa0, fa1
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:sd a2, 1072(a5)
Current Store : [0x80000d54] : sd a7, 1080(a5) -- Store: [0x80007c48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d60]:flt.d a2, fa0, fa1
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:sd a2, 1088(a5)
Current Store : [0x80000d6c] : sd a7, 1096(a5) -- Store: [0x80007c58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d78]:flt.d a2, fa0, fa1
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:sd a2, 1104(a5)
Current Store : [0x80000d84] : sd a7, 1112(a5) -- Store: [0x80007c68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d90]:flt.d a2, fa0, fa1
	-[0x80000d94]:csrrs a7, fflags, zero
	-[0x80000d98]:sd a2, 1120(a5)
Current Store : [0x80000d9c] : sd a7, 1128(a5) -- Store: [0x80007c78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000da8]:flt.d a2, fa0, fa1
	-[0x80000dac]:csrrs a7, fflags, zero
	-[0x80000db0]:sd a2, 1136(a5)
Current Store : [0x80000db4] : sd a7, 1144(a5) -- Store: [0x80007c88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:flt.d a2, fa0, fa1
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:sd a2, 1152(a5)
Current Store : [0x80000dcc] : sd a7, 1160(a5) -- Store: [0x80007c98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000dd8]:flt.d a2, fa0, fa1
	-[0x80000ddc]:csrrs a7, fflags, zero
	-[0x80000de0]:sd a2, 1168(a5)
Current Store : [0x80000de4] : sd a7, 1176(a5) -- Store: [0x80007ca8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000df0]:flt.d a2, fa0, fa1
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:sd a2, 1184(a5)
Current Store : [0x80000dfc] : sd a7, 1192(a5) -- Store: [0x80007cb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e08]:flt.d a2, fa0, fa1
	-[0x80000e0c]:csrrs a7, fflags, zero
	-[0x80000e10]:sd a2, 1200(a5)
Current Store : [0x80000e14] : sd a7, 1208(a5) -- Store: [0x80007cc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e20]:flt.d a2, fa0, fa1
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:sd a2, 1216(a5)
Current Store : [0x80000e2c] : sd a7, 1224(a5) -- Store: [0x80007cd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e38]:flt.d a2, fa0, fa1
	-[0x80000e3c]:csrrs a7, fflags, zero
	-[0x80000e40]:sd a2, 1232(a5)
Current Store : [0x80000e44] : sd a7, 1240(a5) -- Store: [0x80007ce8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e50]:flt.d a2, fa0, fa1
	-[0x80000e54]:csrrs a7, fflags, zero
	-[0x80000e58]:sd a2, 1248(a5)
Current Store : [0x80000e5c] : sd a7, 1256(a5) -- Store: [0x80007cf8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e68]:flt.d a2, fa0, fa1
	-[0x80000e6c]:csrrs a7, fflags, zero
	-[0x80000e70]:sd a2, 1264(a5)
Current Store : [0x80000e74] : sd a7, 1272(a5) -- Store: [0x80007d08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e80]:flt.d a2, fa0, fa1
	-[0x80000e84]:csrrs a7, fflags, zero
	-[0x80000e88]:sd a2, 1280(a5)
Current Store : [0x80000e8c] : sd a7, 1288(a5) -- Store: [0x80007d18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e98]:flt.d a2, fa0, fa1
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:sd a2, 1296(a5)
Current Store : [0x80000ea4] : sd a7, 1304(a5) -- Store: [0x80007d28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000eb0]:flt.d a2, fa0, fa1
	-[0x80000eb4]:csrrs a7, fflags, zero
	-[0x80000eb8]:sd a2, 1312(a5)
Current Store : [0x80000ebc] : sd a7, 1320(a5) -- Store: [0x80007d38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:flt.d a2, fa0, fa1
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:sd a2, 1328(a5)
Current Store : [0x80000ed4] : sd a7, 1336(a5) -- Store: [0x80007d48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ee0]:flt.d a2, fa0, fa1
	-[0x80000ee4]:csrrs a7, fflags, zero
	-[0x80000ee8]:sd a2, 1344(a5)
Current Store : [0x80000eec] : sd a7, 1352(a5) -- Store: [0x80007d58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ef8]:flt.d a2, fa0, fa1
	-[0x80000efc]:csrrs a7, fflags, zero
	-[0x80000f00]:sd a2, 1360(a5)
Current Store : [0x80000f04] : sd a7, 1368(a5) -- Store: [0x80007d68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f10]:flt.d a2, fa0, fa1
	-[0x80000f14]:csrrs a7, fflags, zero
	-[0x80000f18]:sd a2, 1376(a5)
Current Store : [0x80000f1c] : sd a7, 1384(a5) -- Store: [0x80007d78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f28]:flt.d a2, fa0, fa1
	-[0x80000f2c]:csrrs a7, fflags, zero
	-[0x80000f30]:sd a2, 1392(a5)
Current Store : [0x80000f34] : sd a7, 1400(a5) -- Store: [0x80007d88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f40]:flt.d a2, fa0, fa1
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:sd a2, 1408(a5)
Current Store : [0x80000f4c] : sd a7, 1416(a5) -- Store: [0x80007d98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f58]:flt.d a2, fa0, fa1
	-[0x80000f5c]:csrrs a7, fflags, zero
	-[0x80000f60]:sd a2, 1424(a5)
Current Store : [0x80000f64] : sd a7, 1432(a5) -- Store: [0x80007da8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f70]:flt.d a2, fa0, fa1
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:sd a2, 1440(a5)
Current Store : [0x80000f7c] : sd a7, 1448(a5) -- Store: [0x80007db8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f88]:flt.d a2, fa0, fa1
	-[0x80000f8c]:csrrs a7, fflags, zero
	-[0x80000f90]:sd a2, 1456(a5)
Current Store : [0x80000f94] : sd a7, 1464(a5) -- Store: [0x80007dc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fa0]:flt.d a2, fa0, fa1
	-[0x80000fa4]:csrrs a7, fflags, zero
	-[0x80000fa8]:sd a2, 1472(a5)
Current Store : [0x80000fac] : sd a7, 1480(a5) -- Store: [0x80007dd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fb8]:flt.d a2, fa0, fa1
	-[0x80000fbc]:csrrs a7, fflags, zero
	-[0x80000fc0]:sd a2, 1488(a5)
Current Store : [0x80000fc4] : sd a7, 1496(a5) -- Store: [0x80007de8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fd0]:flt.d a2, fa0, fa1
	-[0x80000fd4]:csrrs a7, fflags, zero
	-[0x80000fd8]:sd a2, 1504(a5)
Current Store : [0x80000fdc] : sd a7, 1512(a5) -- Store: [0x80007df8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fec]:flt.d a2, fa0, fa1
	-[0x80000ff0]:csrrs a7, fflags, zero
	-[0x80000ff4]:sd a2, 1520(a5)
Current Store : [0x80000ff8] : sd a7, 1528(a5) -- Store: [0x80007e08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001004]:flt.d a2, fa0, fa1
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:sd a2, 1536(a5)
Current Store : [0x80001010] : sd a7, 1544(a5) -- Store: [0x80007e18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000101c]:flt.d a2, fa0, fa1
	-[0x80001020]:csrrs a7, fflags, zero
	-[0x80001024]:sd a2, 1552(a5)
Current Store : [0x80001028] : sd a7, 1560(a5) -- Store: [0x80007e28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001034]:flt.d a2, fa0, fa1
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:sd a2, 1568(a5)
Current Store : [0x80001040] : sd a7, 1576(a5) -- Store: [0x80007e38]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000104c]:flt.d a2, fa0, fa1
	-[0x80001050]:csrrs a7, fflags, zero
	-[0x80001054]:sd a2, 1584(a5)
Current Store : [0x80001058] : sd a7, 1592(a5) -- Store: [0x80007e48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001064]:flt.d a2, fa0, fa1
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:sd a2, 1600(a5)
Current Store : [0x80001070] : sd a7, 1608(a5) -- Store: [0x80007e58]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000107c]:flt.d a2, fa0, fa1
	-[0x80001080]:csrrs a7, fflags, zero
	-[0x80001084]:sd a2, 1616(a5)
Current Store : [0x80001088] : sd a7, 1624(a5) -- Store: [0x80007e68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001094]:flt.d a2, fa0, fa1
	-[0x80001098]:csrrs a7, fflags, zero
	-[0x8000109c]:sd a2, 1632(a5)
Current Store : [0x800010a0] : sd a7, 1640(a5) -- Store: [0x80007e78]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010ac]:flt.d a2, fa0, fa1
	-[0x800010b0]:csrrs a7, fflags, zero
	-[0x800010b4]:sd a2, 1648(a5)
Current Store : [0x800010b8] : sd a7, 1656(a5) -- Store: [0x80007e88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c4]:flt.d a2, fa0, fa1
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:sd a2, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80007e98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010dc]:flt.d a2, fa0, fa1
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:sd a2, 1680(a5)
Current Store : [0x800010e8] : sd a7, 1688(a5) -- Store: [0x80007ea8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010f4]:flt.d a2, fa0, fa1
	-[0x800010f8]:csrrs a7, fflags, zero
	-[0x800010fc]:sd a2, 1696(a5)
Current Store : [0x80001100] : sd a7, 1704(a5) -- Store: [0x80007eb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000110c]:flt.d a2, fa0, fa1
	-[0x80001110]:csrrs a7, fflags, zero
	-[0x80001114]:sd a2, 1712(a5)
Current Store : [0x80001118] : sd a7, 1720(a5) -- Store: [0x80007ec8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001124]:flt.d a2, fa0, fa1
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:sd a2, 1728(a5)
Current Store : [0x80001130] : sd a7, 1736(a5) -- Store: [0x80007ed8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000113c]:flt.d a2, fa0, fa1
	-[0x80001140]:csrrs a7, fflags, zero
	-[0x80001144]:sd a2, 1744(a5)
Current Store : [0x80001148] : sd a7, 1752(a5) -- Store: [0x80007ee8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001154]:flt.d a2, fa0, fa1
	-[0x80001158]:csrrs a7, fflags, zero
	-[0x8000115c]:sd a2, 1760(a5)
Current Store : [0x80001160] : sd a7, 1768(a5) -- Store: [0x80007ef8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000116c]:flt.d a2, fa0, fa1
	-[0x80001170]:csrrs a7, fflags, zero
	-[0x80001174]:sd a2, 1776(a5)
Current Store : [0x80001178] : sd a7, 1784(a5) -- Store: [0x80007f08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001184]:flt.d a2, fa0, fa1
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:sd a2, 1792(a5)
Current Store : [0x80001190] : sd a7, 1800(a5) -- Store: [0x80007f18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000119c]:flt.d a2, fa0, fa1
	-[0x800011a0]:csrrs a7, fflags, zero
	-[0x800011a4]:sd a2, 1808(a5)
Current Store : [0x800011a8] : sd a7, 1816(a5) -- Store: [0x80007f28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011b4]:flt.d a2, fa0, fa1
	-[0x800011b8]:csrrs a7, fflags, zero
	-[0x800011bc]:sd a2, 1824(a5)
Current Store : [0x800011c0] : sd a7, 1832(a5) -- Store: [0x80007f38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011cc]:flt.d a2, fa0, fa1
	-[0x800011d0]:csrrs a7, fflags, zero
	-[0x800011d4]:sd a2, 1840(a5)
Current Store : [0x800011d8] : sd a7, 1848(a5) -- Store: [0x80007f48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011e4]:flt.d a2, fa0, fa1
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:sd a2, 1856(a5)
Current Store : [0x800011f0] : sd a7, 1864(a5) -- Store: [0x80007f58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011fc]:flt.d a2, fa0, fa1
	-[0x80001200]:csrrs a7, fflags, zero
	-[0x80001204]:sd a2, 1872(a5)
Current Store : [0x80001208] : sd a7, 1880(a5) -- Store: [0x80007f68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001214]:flt.d a2, fa0, fa1
	-[0x80001218]:csrrs a7, fflags, zero
	-[0x8000121c]:sd a2, 1888(a5)
Current Store : [0x80001220] : sd a7, 1896(a5) -- Store: [0x80007f78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000122c]:flt.d a2, fa0, fa1
	-[0x80001230]:csrrs a7, fflags, zero
	-[0x80001234]:sd a2, 1904(a5)
Current Store : [0x80001238] : sd a7, 1912(a5) -- Store: [0x80007f88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001244]:flt.d a2, fa0, fa1
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:sd a2, 1920(a5)
Current Store : [0x80001250] : sd a7, 1928(a5) -- Store: [0x80007f98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000125c]:flt.d a2, fa0, fa1
	-[0x80001260]:csrrs a7, fflags, zero
	-[0x80001264]:sd a2, 1936(a5)
Current Store : [0x80001268] : sd a7, 1944(a5) -- Store: [0x80007fa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001274]:flt.d a2, fa0, fa1
	-[0x80001278]:csrrs a7, fflags, zero
	-[0x8000127c]:sd a2, 1952(a5)
Current Store : [0x80001280] : sd a7, 1960(a5) -- Store: [0x80007fb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000128c]:flt.d a2, fa0, fa1
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:sd a2, 1968(a5)
Current Store : [0x80001298] : sd a7, 1976(a5) -- Store: [0x80007fc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012a4]:flt.d a2, fa0, fa1
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:sd a2, 1984(a5)
Current Store : [0x800012b0] : sd a7, 1992(a5) -- Store: [0x80007fd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012bc]:flt.d a2, fa0, fa1
	-[0x800012c0]:csrrs a7, fflags, zero
	-[0x800012c4]:sd a2, 2000(a5)
Current Store : [0x800012c8] : sd a7, 2008(a5) -- Store: [0x80007fe8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012d4]:flt.d a2, fa0, fa1
	-[0x800012d8]:csrrs a7, fflags, zero
	-[0x800012dc]:sd a2, 2016(a5)
Current Store : [0x800012e0] : sd a7, 2024(a5) -- Store: [0x80007ff8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012f4]:flt.d a2, fa0, fa1
	-[0x800012f8]:csrrs a7, fflags, zero
	-[0x800012fc]:sd a2, 0(a5)
Current Store : [0x80001300] : sd a7, 8(a5) -- Store: [0x80008008]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000130c]:flt.d a2, fa0, fa1
	-[0x80001310]:csrrs a7, fflags, zero
	-[0x80001314]:sd a2, 16(a5)
Current Store : [0x80001318] : sd a7, 24(a5) -- Store: [0x80008018]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001324]:flt.d a2, fa0, fa1
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:sd a2, 32(a5)
Current Store : [0x80001330] : sd a7, 40(a5) -- Store: [0x80008028]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000133c]:flt.d a2, fa0, fa1
	-[0x80001340]:csrrs a7, fflags, zero
	-[0x80001344]:sd a2, 48(a5)
Current Store : [0x80001348] : sd a7, 56(a5) -- Store: [0x80008038]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001354]:flt.d a2, fa0, fa1
	-[0x80001358]:csrrs a7, fflags, zero
	-[0x8000135c]:sd a2, 64(a5)
Current Store : [0x80001360] : sd a7, 72(a5) -- Store: [0x80008048]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000136c]:flt.d a2, fa0, fa1
	-[0x80001370]:csrrs a7, fflags, zero
	-[0x80001374]:sd a2, 80(a5)
Current Store : [0x80001378] : sd a7, 88(a5) -- Store: [0x80008058]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001384]:flt.d a2, fa0, fa1
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:sd a2, 96(a5)
Current Store : [0x80001390] : sd a7, 104(a5) -- Store: [0x80008068]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000139c]:flt.d a2, fa0, fa1
	-[0x800013a0]:csrrs a7, fflags, zero
	-[0x800013a4]:sd a2, 112(a5)
Current Store : [0x800013a8] : sd a7, 120(a5) -- Store: [0x80008078]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013b4]:flt.d a2, fa0, fa1
	-[0x800013b8]:csrrs a7, fflags, zero
	-[0x800013bc]:sd a2, 128(a5)
Current Store : [0x800013c0] : sd a7, 136(a5) -- Store: [0x80008088]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013cc]:flt.d a2, fa0, fa1
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:sd a2, 144(a5)
Current Store : [0x800013d8] : sd a7, 152(a5) -- Store: [0x80008098]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013e4]:flt.d a2, fa0, fa1
	-[0x800013e8]:csrrs a7, fflags, zero
	-[0x800013ec]:sd a2, 160(a5)
Current Store : [0x800013f0] : sd a7, 168(a5) -- Store: [0x800080a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013fc]:flt.d a2, fa0, fa1
	-[0x80001400]:csrrs a7, fflags, zero
	-[0x80001404]:sd a2, 176(a5)
Current Store : [0x80001408] : sd a7, 184(a5) -- Store: [0x800080b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001414]:flt.d a2, fa0, fa1
	-[0x80001418]:csrrs a7, fflags, zero
	-[0x8000141c]:sd a2, 192(a5)
Current Store : [0x80001420] : sd a7, 200(a5) -- Store: [0x800080c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000142c]:flt.d a2, fa0, fa1
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:sd a2, 208(a5)
Current Store : [0x80001438] : sd a7, 216(a5) -- Store: [0x800080d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001444]:flt.d a2, fa0, fa1
	-[0x80001448]:csrrs a7, fflags, zero
	-[0x8000144c]:sd a2, 224(a5)
Current Store : [0x80001450] : sd a7, 232(a5) -- Store: [0x800080e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000145c]:flt.d a2, fa0, fa1
	-[0x80001460]:csrrs a7, fflags, zero
	-[0x80001464]:sd a2, 240(a5)
Current Store : [0x80001468] : sd a7, 248(a5) -- Store: [0x800080f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001474]:flt.d a2, fa0, fa1
	-[0x80001478]:csrrs a7, fflags, zero
	-[0x8000147c]:sd a2, 256(a5)
Current Store : [0x80001480] : sd a7, 264(a5) -- Store: [0x80008108]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000148c]:flt.d a2, fa0, fa1
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:sd a2, 272(a5)
Current Store : [0x80001498] : sd a7, 280(a5) -- Store: [0x80008118]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014a4]:flt.d a2, fa0, fa1
	-[0x800014a8]:csrrs a7, fflags, zero
	-[0x800014ac]:sd a2, 288(a5)
Current Store : [0x800014b0] : sd a7, 296(a5) -- Store: [0x80008128]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014bc]:flt.d a2, fa0, fa1
	-[0x800014c0]:csrrs a7, fflags, zero
	-[0x800014c4]:sd a2, 304(a5)
Current Store : [0x800014c8] : sd a7, 312(a5) -- Store: [0x80008138]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014d4]:flt.d a2, fa0, fa1
	-[0x800014d8]:csrrs a7, fflags, zero
	-[0x800014dc]:sd a2, 320(a5)
Current Store : [0x800014e0] : sd a7, 328(a5) -- Store: [0x80008148]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014ec]:flt.d a2, fa0, fa1
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:sd a2, 336(a5)
Current Store : [0x800014f8] : sd a7, 344(a5) -- Store: [0x80008158]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001504]:flt.d a2, fa0, fa1
	-[0x80001508]:csrrs a7, fflags, zero
	-[0x8000150c]:sd a2, 352(a5)
Current Store : [0x80001510] : sd a7, 360(a5) -- Store: [0x80008168]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000151c]:flt.d a2, fa0, fa1
	-[0x80001520]:csrrs a7, fflags, zero
	-[0x80001524]:sd a2, 368(a5)
Current Store : [0x80001528] : sd a7, 376(a5) -- Store: [0x80008178]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001534]:flt.d a2, fa0, fa1
	-[0x80001538]:csrrs a7, fflags, zero
	-[0x8000153c]:sd a2, 384(a5)
Current Store : [0x80001540] : sd a7, 392(a5) -- Store: [0x80008188]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000154c]:flt.d a2, fa0, fa1
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:sd a2, 400(a5)
Current Store : [0x80001558] : sd a7, 408(a5) -- Store: [0x80008198]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001564]:flt.d a2, fa0, fa1
	-[0x80001568]:csrrs a7, fflags, zero
	-[0x8000156c]:sd a2, 416(a5)
Current Store : [0x80001570] : sd a7, 424(a5) -- Store: [0x800081a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000157c]:flt.d a2, fa0, fa1
	-[0x80001580]:csrrs a7, fflags, zero
	-[0x80001584]:sd a2, 432(a5)
Current Store : [0x80001588] : sd a7, 440(a5) -- Store: [0x800081b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001594]:flt.d a2, fa0, fa1
	-[0x80001598]:csrrs a7, fflags, zero
	-[0x8000159c]:sd a2, 448(a5)
Current Store : [0x800015a0] : sd a7, 456(a5) -- Store: [0x800081c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015ac]:flt.d a2, fa0, fa1
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:sd a2, 464(a5)
Current Store : [0x800015b8] : sd a7, 472(a5) -- Store: [0x800081d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015c4]:flt.d a2, fa0, fa1
	-[0x800015c8]:csrrs a7, fflags, zero
	-[0x800015cc]:sd a2, 480(a5)
Current Store : [0x800015d0] : sd a7, 488(a5) -- Store: [0x800081e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015dc]:flt.d a2, fa0, fa1
	-[0x800015e0]:csrrs a7, fflags, zero
	-[0x800015e4]:sd a2, 496(a5)
Current Store : [0x800015e8] : sd a7, 504(a5) -- Store: [0x800081f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015f4]:flt.d a2, fa0, fa1
	-[0x800015f8]:csrrs a7, fflags, zero
	-[0x800015fc]:sd a2, 512(a5)
Current Store : [0x80001600] : sd a7, 520(a5) -- Store: [0x80008208]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000160c]:flt.d a2, fa0, fa1
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:sd a2, 528(a5)
Current Store : [0x80001618] : sd a7, 536(a5) -- Store: [0x80008218]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001624]:flt.d a2, fa0, fa1
	-[0x80001628]:csrrs a7, fflags, zero
	-[0x8000162c]:sd a2, 544(a5)
Current Store : [0x80001630] : sd a7, 552(a5) -- Store: [0x80008228]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000163c]:flt.d a2, fa0, fa1
	-[0x80001640]:csrrs a7, fflags, zero
	-[0x80001644]:sd a2, 560(a5)
Current Store : [0x80001648] : sd a7, 568(a5) -- Store: [0x80008238]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001654]:flt.d a2, fa0, fa1
	-[0x80001658]:csrrs a7, fflags, zero
	-[0x8000165c]:sd a2, 576(a5)
Current Store : [0x80001660] : sd a7, 584(a5) -- Store: [0x80008248]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000166c]:flt.d a2, fa0, fa1
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:sd a2, 592(a5)
Current Store : [0x80001678] : sd a7, 600(a5) -- Store: [0x80008258]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001684]:flt.d a2, fa0, fa1
	-[0x80001688]:csrrs a7, fflags, zero
	-[0x8000168c]:sd a2, 608(a5)
Current Store : [0x80001690] : sd a7, 616(a5) -- Store: [0x80008268]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000169c]:flt.d a2, fa0, fa1
	-[0x800016a0]:csrrs a7, fflags, zero
	-[0x800016a4]:sd a2, 624(a5)
Current Store : [0x800016a8] : sd a7, 632(a5) -- Store: [0x80008278]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016b4]:flt.d a2, fa0, fa1
	-[0x800016b8]:csrrs a7, fflags, zero
	-[0x800016bc]:sd a2, 640(a5)
Current Store : [0x800016c0] : sd a7, 648(a5) -- Store: [0x80008288]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016cc]:flt.d a2, fa0, fa1
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:sd a2, 656(a5)
Current Store : [0x800016d8] : sd a7, 664(a5) -- Store: [0x80008298]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016e4]:flt.d a2, fa0, fa1
	-[0x800016e8]:csrrs a7, fflags, zero
	-[0x800016ec]:sd a2, 672(a5)
Current Store : [0x800016f0] : sd a7, 680(a5) -- Store: [0x800082a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016fc]:flt.d a2, fa0, fa1
	-[0x80001700]:csrrs a7, fflags, zero
	-[0x80001704]:sd a2, 688(a5)
Current Store : [0x80001708] : sd a7, 696(a5) -- Store: [0x800082b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001714]:flt.d a2, fa0, fa1
	-[0x80001718]:csrrs a7, fflags, zero
	-[0x8000171c]:sd a2, 704(a5)
Current Store : [0x80001720] : sd a7, 712(a5) -- Store: [0x800082c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000172c]:flt.d a2, fa0, fa1
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:sd a2, 720(a5)
Current Store : [0x80001738] : sd a7, 728(a5) -- Store: [0x800082d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001744]:flt.d a2, fa0, fa1
	-[0x80001748]:csrrs a7, fflags, zero
	-[0x8000174c]:sd a2, 736(a5)
Current Store : [0x80001750] : sd a7, 744(a5) -- Store: [0x800082e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000175c]:flt.d a2, fa0, fa1
	-[0x80001760]:csrrs a7, fflags, zero
	-[0x80001764]:sd a2, 752(a5)
Current Store : [0x80001768] : sd a7, 760(a5) -- Store: [0x800082f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001774]:flt.d a2, fa0, fa1
	-[0x80001778]:csrrs a7, fflags, zero
	-[0x8000177c]:sd a2, 768(a5)
Current Store : [0x80001780] : sd a7, 776(a5) -- Store: [0x80008308]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000178c]:flt.d a2, fa0, fa1
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:sd a2, 784(a5)
Current Store : [0x80001798] : sd a7, 792(a5) -- Store: [0x80008318]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017a4]:flt.d a2, fa0, fa1
	-[0x800017a8]:csrrs a7, fflags, zero
	-[0x800017ac]:sd a2, 800(a5)
Current Store : [0x800017b0] : sd a7, 808(a5) -- Store: [0x80008328]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017bc]:flt.d a2, fa0, fa1
	-[0x800017c0]:csrrs a7, fflags, zero
	-[0x800017c4]:sd a2, 816(a5)
Current Store : [0x800017c8] : sd a7, 824(a5) -- Store: [0x80008338]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017d4]:flt.d a2, fa0, fa1
	-[0x800017d8]:csrrs a7, fflags, zero
	-[0x800017dc]:sd a2, 832(a5)
Current Store : [0x800017e0] : sd a7, 840(a5) -- Store: [0x80008348]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017ec]:flt.d a2, fa0, fa1
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:sd a2, 848(a5)
Current Store : [0x800017f8] : sd a7, 856(a5) -- Store: [0x80008358]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001804]:flt.d a2, fa0, fa1
	-[0x80001808]:csrrs a7, fflags, zero
	-[0x8000180c]:sd a2, 864(a5)
Current Store : [0x80001810] : sd a7, 872(a5) -- Store: [0x80008368]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000181c]:flt.d a2, fa0, fa1
	-[0x80001820]:csrrs a7, fflags, zero
	-[0x80001824]:sd a2, 880(a5)
Current Store : [0x80001828] : sd a7, 888(a5) -- Store: [0x80008378]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001834]:flt.d a2, fa0, fa1
	-[0x80001838]:csrrs a7, fflags, zero
	-[0x8000183c]:sd a2, 896(a5)
Current Store : [0x80001840] : sd a7, 904(a5) -- Store: [0x80008388]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000184c]:flt.d a2, fa0, fa1
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:sd a2, 912(a5)
Current Store : [0x80001858] : sd a7, 920(a5) -- Store: [0x80008398]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001864]:flt.d a2, fa0, fa1
	-[0x80001868]:csrrs a7, fflags, zero
	-[0x8000186c]:sd a2, 928(a5)
Current Store : [0x80001870] : sd a7, 936(a5) -- Store: [0x800083a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000187c]:flt.d a2, fa0, fa1
	-[0x80001880]:csrrs a7, fflags, zero
	-[0x80001884]:sd a2, 944(a5)
Current Store : [0x80001888] : sd a7, 952(a5) -- Store: [0x800083b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001894]:flt.d a2, fa0, fa1
	-[0x80001898]:csrrs a7, fflags, zero
	-[0x8000189c]:sd a2, 960(a5)
Current Store : [0x800018a0] : sd a7, 968(a5) -- Store: [0x800083c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018ac]:flt.d a2, fa0, fa1
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:sd a2, 976(a5)
Current Store : [0x800018b8] : sd a7, 984(a5) -- Store: [0x800083d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018c4]:flt.d a2, fa0, fa1
	-[0x800018c8]:csrrs a7, fflags, zero
	-[0x800018cc]:sd a2, 992(a5)
Current Store : [0x800018d0] : sd a7, 1000(a5) -- Store: [0x800083e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018dc]:flt.d a2, fa0, fa1
	-[0x800018e0]:csrrs a7, fflags, zero
	-[0x800018e4]:sd a2, 1008(a5)
Current Store : [0x800018e8] : sd a7, 1016(a5) -- Store: [0x800083f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800018f4]:flt.d a2, fa0, fa1
	-[0x800018f8]:csrrs a7, fflags, zero
	-[0x800018fc]:sd a2, 1024(a5)
Current Store : [0x80001900] : sd a7, 1032(a5) -- Store: [0x80008408]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000190c]:flt.d a2, fa0, fa1
	-[0x80001910]:csrrs a7, fflags, zero
	-[0x80001914]:sd a2, 1040(a5)
Current Store : [0x80001918] : sd a7, 1048(a5) -- Store: [0x80008418]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001924]:flt.d a2, fa0, fa1
	-[0x80001928]:csrrs a7, fflags, zero
	-[0x8000192c]:sd a2, 1056(a5)
Current Store : [0x80001930] : sd a7, 1064(a5) -- Store: [0x80008428]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000193c]:flt.d a2, fa0, fa1
	-[0x80001940]:csrrs a7, fflags, zero
	-[0x80001944]:sd a2, 1072(a5)
Current Store : [0x80001948] : sd a7, 1080(a5) -- Store: [0x80008438]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001954]:flt.d a2, fa0, fa1
	-[0x80001958]:csrrs a7, fflags, zero
	-[0x8000195c]:sd a2, 1088(a5)
Current Store : [0x80001960] : sd a7, 1096(a5) -- Store: [0x80008448]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000196c]:flt.d a2, fa0, fa1
	-[0x80001970]:csrrs a7, fflags, zero
	-[0x80001974]:sd a2, 1104(a5)
Current Store : [0x80001978] : sd a7, 1112(a5) -- Store: [0x80008458]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001984]:flt.d a2, fa0, fa1
	-[0x80001988]:csrrs a7, fflags, zero
	-[0x8000198c]:sd a2, 1120(a5)
Current Store : [0x80001990] : sd a7, 1128(a5) -- Store: [0x80008468]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000199c]:flt.d a2, fa0, fa1
	-[0x800019a0]:csrrs a7, fflags, zero
	-[0x800019a4]:sd a2, 1136(a5)
Current Store : [0x800019a8] : sd a7, 1144(a5) -- Store: [0x80008478]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019b4]:flt.d a2, fa0, fa1
	-[0x800019b8]:csrrs a7, fflags, zero
	-[0x800019bc]:sd a2, 1152(a5)
Current Store : [0x800019c0] : sd a7, 1160(a5) -- Store: [0x80008488]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019cc]:flt.d a2, fa0, fa1
	-[0x800019d0]:csrrs a7, fflags, zero
	-[0x800019d4]:sd a2, 1168(a5)
Current Store : [0x800019d8] : sd a7, 1176(a5) -- Store: [0x80008498]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019e4]:flt.d a2, fa0, fa1
	-[0x800019e8]:csrrs a7, fflags, zero
	-[0x800019ec]:sd a2, 1184(a5)
Current Store : [0x800019f0] : sd a7, 1192(a5) -- Store: [0x800084a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800019fc]:flt.d a2, fa0, fa1
	-[0x80001a00]:csrrs a7, fflags, zero
	-[0x80001a04]:sd a2, 1200(a5)
Current Store : [0x80001a08] : sd a7, 1208(a5) -- Store: [0x800084b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a14]:flt.d a2, fa0, fa1
	-[0x80001a18]:csrrs a7, fflags, zero
	-[0x80001a1c]:sd a2, 1216(a5)
Current Store : [0x80001a20] : sd a7, 1224(a5) -- Store: [0x800084c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a2c]:flt.d a2, fa0, fa1
	-[0x80001a30]:csrrs a7, fflags, zero
	-[0x80001a34]:sd a2, 1232(a5)
Current Store : [0x80001a38] : sd a7, 1240(a5) -- Store: [0x800084d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a44]:flt.d a2, fa0, fa1
	-[0x80001a48]:csrrs a7, fflags, zero
	-[0x80001a4c]:sd a2, 1248(a5)
Current Store : [0x80001a50] : sd a7, 1256(a5) -- Store: [0x800084e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a5c]:flt.d a2, fa0, fa1
	-[0x80001a60]:csrrs a7, fflags, zero
	-[0x80001a64]:sd a2, 1264(a5)
Current Store : [0x80001a68] : sd a7, 1272(a5) -- Store: [0x800084f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a74]:flt.d a2, fa0, fa1
	-[0x80001a78]:csrrs a7, fflags, zero
	-[0x80001a7c]:sd a2, 1280(a5)
Current Store : [0x80001a80] : sd a7, 1288(a5) -- Store: [0x80008508]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a8c]:flt.d a2, fa0, fa1
	-[0x80001a90]:csrrs a7, fflags, zero
	-[0x80001a94]:sd a2, 1296(a5)
Current Store : [0x80001a98] : sd a7, 1304(a5) -- Store: [0x80008518]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001aa4]:flt.d a2, fa0, fa1
	-[0x80001aa8]:csrrs a7, fflags, zero
	-[0x80001aac]:sd a2, 1312(a5)
Current Store : [0x80001ab0] : sd a7, 1320(a5) -- Store: [0x80008528]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001abc]:flt.d a2, fa0, fa1
	-[0x80001ac0]:csrrs a7, fflags, zero
	-[0x80001ac4]:sd a2, 1328(a5)
Current Store : [0x80001ac8] : sd a7, 1336(a5) -- Store: [0x80008538]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ad4]:flt.d a2, fa0, fa1
	-[0x80001ad8]:csrrs a7, fflags, zero
	-[0x80001adc]:sd a2, 1344(a5)
Current Store : [0x80001ae0] : sd a7, 1352(a5) -- Store: [0x80008548]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001aec]:flt.d a2, fa0, fa1
	-[0x80001af0]:csrrs a7, fflags, zero
	-[0x80001af4]:sd a2, 1360(a5)
Current Store : [0x80001af8] : sd a7, 1368(a5) -- Store: [0x80008558]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b04]:flt.d a2, fa0, fa1
	-[0x80001b08]:csrrs a7, fflags, zero
	-[0x80001b0c]:sd a2, 1376(a5)
Current Store : [0x80001b10] : sd a7, 1384(a5) -- Store: [0x80008568]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b1c]:flt.d a2, fa0, fa1
	-[0x80001b20]:csrrs a7, fflags, zero
	-[0x80001b24]:sd a2, 1392(a5)
Current Store : [0x80001b28] : sd a7, 1400(a5) -- Store: [0x80008578]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b34]:flt.d a2, fa0, fa1
	-[0x80001b38]:csrrs a7, fflags, zero
	-[0x80001b3c]:sd a2, 1408(a5)
Current Store : [0x80001b40] : sd a7, 1416(a5) -- Store: [0x80008588]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b4c]:flt.d a2, fa0, fa1
	-[0x80001b50]:csrrs a7, fflags, zero
	-[0x80001b54]:sd a2, 1424(a5)
Current Store : [0x80001b58] : sd a7, 1432(a5) -- Store: [0x80008598]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b64]:flt.d a2, fa0, fa1
	-[0x80001b68]:csrrs a7, fflags, zero
	-[0x80001b6c]:sd a2, 1440(a5)
Current Store : [0x80001b70] : sd a7, 1448(a5) -- Store: [0x800085a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b7c]:flt.d a2, fa0, fa1
	-[0x80001b80]:csrrs a7, fflags, zero
	-[0x80001b84]:sd a2, 1456(a5)
Current Store : [0x80001b88] : sd a7, 1464(a5) -- Store: [0x800085b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001b94]:flt.d a2, fa0, fa1
	-[0x80001b98]:csrrs a7, fflags, zero
	-[0x80001b9c]:sd a2, 1472(a5)
Current Store : [0x80001ba0] : sd a7, 1480(a5) -- Store: [0x800085c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bac]:flt.d a2, fa0, fa1
	-[0x80001bb0]:csrrs a7, fflags, zero
	-[0x80001bb4]:sd a2, 1488(a5)
Current Store : [0x80001bb8] : sd a7, 1496(a5) -- Store: [0x800085d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bc4]:flt.d a2, fa0, fa1
	-[0x80001bc8]:csrrs a7, fflags, zero
	-[0x80001bcc]:sd a2, 1504(a5)
Current Store : [0x80001bd0] : sd a7, 1512(a5) -- Store: [0x800085e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001be0]:flt.d a2, fa0, fa1
	-[0x80001be4]:csrrs a7, fflags, zero
	-[0x80001be8]:sd a2, 1520(a5)
Current Store : [0x80001bec] : sd a7, 1528(a5) -- Store: [0x800085f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001bf8]:flt.d a2, fa0, fa1
	-[0x80001bfc]:csrrs a7, fflags, zero
	-[0x80001c00]:sd a2, 1536(a5)
Current Store : [0x80001c04] : sd a7, 1544(a5) -- Store: [0x80008608]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c10]:flt.d a2, fa0, fa1
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:sd a2, 1552(a5)
Current Store : [0x80001c1c] : sd a7, 1560(a5) -- Store: [0x80008618]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c28]:flt.d a2, fa0, fa1
	-[0x80001c2c]:csrrs a7, fflags, zero
	-[0x80001c30]:sd a2, 1568(a5)
Current Store : [0x80001c34] : sd a7, 1576(a5) -- Store: [0x80008628]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c40]:flt.d a2, fa0, fa1
	-[0x80001c44]:csrrs a7, fflags, zero
	-[0x80001c48]:sd a2, 1584(a5)
Current Store : [0x80001c4c] : sd a7, 1592(a5) -- Store: [0x80008638]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c58]:flt.d a2, fa0, fa1
	-[0x80001c5c]:csrrs a7, fflags, zero
	-[0x80001c60]:sd a2, 1600(a5)
Current Store : [0x80001c64] : sd a7, 1608(a5) -- Store: [0x80008648]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c70]:flt.d a2, fa0, fa1
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:sd a2, 1616(a5)
Current Store : [0x80001c7c] : sd a7, 1624(a5) -- Store: [0x80008658]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001c88]:flt.d a2, fa0, fa1
	-[0x80001c8c]:csrrs a7, fflags, zero
	-[0x80001c90]:sd a2, 1632(a5)
Current Store : [0x80001c94] : sd a7, 1640(a5) -- Store: [0x80008668]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ca0]:flt.d a2, fa0, fa1
	-[0x80001ca4]:csrrs a7, fflags, zero
	-[0x80001ca8]:sd a2, 1648(a5)
Current Store : [0x80001cac] : sd a7, 1656(a5) -- Store: [0x80008678]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001cb8]:flt.d a2, fa0, fa1
	-[0x80001cbc]:csrrs a7, fflags, zero
	-[0x80001cc0]:sd a2, 1664(a5)
Current Store : [0x80001cc4] : sd a7, 1672(a5) -- Store: [0x80008688]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:flt.d a2, fa0, fa1
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:sd a2, 1680(a5)
Current Store : [0x80001cdc] : sd a7, 1688(a5) -- Store: [0x80008698]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ce8]:flt.d a2, fa0, fa1
	-[0x80001cec]:csrrs a7, fflags, zero
	-[0x80001cf0]:sd a2, 1696(a5)
Current Store : [0x80001cf4] : sd a7, 1704(a5) -- Store: [0x800086a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d00]:flt.d a2, fa0, fa1
	-[0x80001d04]:csrrs a7, fflags, zero
	-[0x80001d08]:sd a2, 1712(a5)
Current Store : [0x80001d0c] : sd a7, 1720(a5) -- Store: [0x800086b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d18]:flt.d a2, fa0, fa1
	-[0x80001d1c]:csrrs a7, fflags, zero
	-[0x80001d20]:sd a2, 1728(a5)
Current Store : [0x80001d24] : sd a7, 1736(a5) -- Store: [0x800086c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d30]:flt.d a2, fa0, fa1
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:sd a2, 1744(a5)
Current Store : [0x80001d3c] : sd a7, 1752(a5) -- Store: [0x800086d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d48]:flt.d a2, fa0, fa1
	-[0x80001d4c]:csrrs a7, fflags, zero
	-[0x80001d50]:sd a2, 1760(a5)
Current Store : [0x80001d54] : sd a7, 1768(a5) -- Store: [0x800086e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d60]:flt.d a2, fa0, fa1
	-[0x80001d64]:csrrs a7, fflags, zero
	-[0x80001d68]:sd a2, 1776(a5)
Current Store : [0x80001d6c] : sd a7, 1784(a5) -- Store: [0x800086f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d78]:flt.d a2, fa0, fa1
	-[0x80001d7c]:csrrs a7, fflags, zero
	-[0x80001d80]:sd a2, 1792(a5)
Current Store : [0x80001d84] : sd a7, 1800(a5) -- Store: [0x80008708]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001d90]:flt.d a2, fa0, fa1
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:sd a2, 1808(a5)
Current Store : [0x80001d9c] : sd a7, 1816(a5) -- Store: [0x80008718]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001da8]:flt.d a2, fa0, fa1
	-[0x80001dac]:csrrs a7, fflags, zero
	-[0x80001db0]:sd a2, 1824(a5)
Current Store : [0x80001db4] : sd a7, 1832(a5) -- Store: [0x80008728]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001dc0]:flt.d a2, fa0, fa1
	-[0x80001dc4]:csrrs a7, fflags, zero
	-[0x80001dc8]:sd a2, 1840(a5)
Current Store : [0x80001dcc] : sd a7, 1848(a5) -- Store: [0x80008738]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001dd8]:flt.d a2, fa0, fa1
	-[0x80001ddc]:csrrs a7, fflags, zero
	-[0x80001de0]:sd a2, 1856(a5)
Current Store : [0x80001de4] : sd a7, 1864(a5) -- Store: [0x80008748]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001df0]:flt.d a2, fa0, fa1
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:sd a2, 1872(a5)
Current Store : [0x80001dfc] : sd a7, 1880(a5) -- Store: [0x80008758]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e08]:flt.d a2, fa0, fa1
	-[0x80001e0c]:csrrs a7, fflags, zero
	-[0x80001e10]:sd a2, 1888(a5)
Current Store : [0x80001e14] : sd a7, 1896(a5) -- Store: [0x80008768]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e20]:flt.d a2, fa0, fa1
	-[0x80001e24]:csrrs a7, fflags, zero
	-[0x80001e28]:sd a2, 1904(a5)
Current Store : [0x80001e2c] : sd a7, 1912(a5) -- Store: [0x80008778]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e38]:flt.d a2, fa0, fa1
	-[0x80001e3c]:csrrs a7, fflags, zero
	-[0x80001e40]:sd a2, 1920(a5)
Current Store : [0x80001e44] : sd a7, 1928(a5) -- Store: [0x80008788]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e50]:flt.d a2, fa0, fa1
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:sd a2, 1936(a5)
Current Store : [0x80001e5c] : sd a7, 1944(a5) -- Store: [0x80008798]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e68]:flt.d a2, fa0, fa1
	-[0x80001e6c]:csrrs a7, fflags, zero
	-[0x80001e70]:sd a2, 1952(a5)
Current Store : [0x80001e74] : sd a7, 1960(a5) -- Store: [0x800087a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e80]:flt.d a2, fa0, fa1
	-[0x80001e84]:csrrs a7, fflags, zero
	-[0x80001e88]:sd a2, 1968(a5)
Current Store : [0x80001e8c] : sd a7, 1976(a5) -- Store: [0x800087b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001e98]:flt.d a2, fa0, fa1
	-[0x80001e9c]:csrrs a7, fflags, zero
	-[0x80001ea0]:sd a2, 1984(a5)
Current Store : [0x80001ea4] : sd a7, 1992(a5) -- Store: [0x800087c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:flt.d a2, fa0, fa1
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:sd a2, 2000(a5)
Current Store : [0x80001ebc] : sd a7, 2008(a5) -- Store: [0x800087d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ec8]:flt.d a2, fa0, fa1
	-[0x80001ecc]:csrrs a7, fflags, zero
	-[0x80001ed0]:sd a2, 2016(a5)
Current Store : [0x80001ed4] : sd a7, 2024(a5) -- Store: [0x800087e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ee8]:flt.d a2, fa0, fa1
	-[0x80001eec]:csrrs a7, fflags, zero
	-[0x80001ef0]:sd a2, 0(a5)
Current Store : [0x80001ef4] : sd a7, 8(a5) -- Store: [0x800087f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f00]:flt.d a2, fa0, fa1
	-[0x80001f04]:csrrs a7, fflags, zero
	-[0x80001f08]:sd a2, 16(a5)
Current Store : [0x80001f0c] : sd a7, 24(a5) -- Store: [0x80008808]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f18]:flt.d a2, fa0, fa1
	-[0x80001f1c]:csrrs a7, fflags, zero
	-[0x80001f20]:sd a2, 32(a5)
Current Store : [0x80001f24] : sd a7, 40(a5) -- Store: [0x80008818]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f30]:flt.d a2, fa0, fa1
	-[0x80001f34]:csrrs a7, fflags, zero
	-[0x80001f38]:sd a2, 48(a5)
Current Store : [0x80001f3c] : sd a7, 56(a5) -- Store: [0x80008828]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f48]:flt.d a2, fa0, fa1
	-[0x80001f4c]:csrrs a7, fflags, zero
	-[0x80001f50]:sd a2, 64(a5)
Current Store : [0x80001f54] : sd a7, 72(a5) -- Store: [0x80008838]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f60]:flt.d a2, fa0, fa1
	-[0x80001f64]:csrrs a7, fflags, zero
	-[0x80001f68]:sd a2, 80(a5)
Current Store : [0x80001f6c] : sd a7, 88(a5) -- Store: [0x80008848]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f78]:flt.d a2, fa0, fa1
	-[0x80001f7c]:csrrs a7, fflags, zero
	-[0x80001f80]:sd a2, 96(a5)
Current Store : [0x80001f84] : sd a7, 104(a5) -- Store: [0x80008858]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001f90]:flt.d a2, fa0, fa1
	-[0x80001f94]:csrrs a7, fflags, zero
	-[0x80001f98]:sd a2, 112(a5)
Current Store : [0x80001f9c] : sd a7, 120(a5) -- Store: [0x80008868]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fa8]:flt.d a2, fa0, fa1
	-[0x80001fac]:csrrs a7, fflags, zero
	-[0x80001fb0]:sd a2, 128(a5)
Current Store : [0x80001fb4] : sd a7, 136(a5) -- Store: [0x80008878]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fc0]:flt.d a2, fa0, fa1
	-[0x80001fc4]:csrrs a7, fflags, zero
	-[0x80001fc8]:sd a2, 144(a5)
Current Store : [0x80001fcc] : sd a7, 152(a5) -- Store: [0x80008888]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001fd8]:flt.d a2, fa0, fa1
	-[0x80001fdc]:csrrs a7, fflags, zero
	-[0x80001fe0]:sd a2, 160(a5)
Current Store : [0x80001fe4] : sd a7, 168(a5) -- Store: [0x80008898]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001ff0]:flt.d a2, fa0, fa1
	-[0x80001ff4]:csrrs a7, fflags, zero
	-[0x80001ff8]:sd a2, 176(a5)
Current Store : [0x80001ffc] : sd a7, 184(a5) -- Store: [0x800088a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002008]:flt.d a2, fa0, fa1
	-[0x8000200c]:csrrs a7, fflags, zero
	-[0x80002010]:sd a2, 192(a5)
Current Store : [0x80002014] : sd a7, 200(a5) -- Store: [0x800088b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002020]:flt.d a2, fa0, fa1
	-[0x80002024]:csrrs a7, fflags, zero
	-[0x80002028]:sd a2, 208(a5)
Current Store : [0x8000202c] : sd a7, 216(a5) -- Store: [0x800088c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002038]:flt.d a2, fa0, fa1
	-[0x8000203c]:csrrs a7, fflags, zero
	-[0x80002040]:sd a2, 224(a5)
Current Store : [0x80002044] : sd a7, 232(a5) -- Store: [0x800088d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002050]:flt.d a2, fa0, fa1
	-[0x80002054]:csrrs a7, fflags, zero
	-[0x80002058]:sd a2, 240(a5)
Current Store : [0x8000205c] : sd a7, 248(a5) -- Store: [0x800088e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002068]:flt.d a2, fa0, fa1
	-[0x8000206c]:csrrs a7, fflags, zero
	-[0x80002070]:sd a2, 256(a5)
Current Store : [0x80002074] : sd a7, 264(a5) -- Store: [0x800088f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002080]:flt.d a2, fa0, fa1
	-[0x80002084]:csrrs a7, fflags, zero
	-[0x80002088]:sd a2, 272(a5)
Current Store : [0x8000208c] : sd a7, 280(a5) -- Store: [0x80008908]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002098]:flt.d a2, fa0, fa1
	-[0x8000209c]:csrrs a7, fflags, zero
	-[0x800020a0]:sd a2, 288(a5)
Current Store : [0x800020a4] : sd a7, 296(a5) -- Store: [0x80008918]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020b0]:flt.d a2, fa0, fa1
	-[0x800020b4]:csrrs a7, fflags, zero
	-[0x800020b8]:sd a2, 304(a5)
Current Store : [0x800020bc] : sd a7, 312(a5) -- Store: [0x80008928]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020c8]:flt.d a2, fa0, fa1
	-[0x800020cc]:csrrs a7, fflags, zero
	-[0x800020d0]:sd a2, 320(a5)
Current Store : [0x800020d4] : sd a7, 328(a5) -- Store: [0x80008938]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020e0]:flt.d a2, fa0, fa1
	-[0x800020e4]:csrrs a7, fflags, zero
	-[0x800020e8]:sd a2, 336(a5)
Current Store : [0x800020ec] : sd a7, 344(a5) -- Store: [0x80008948]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800020f8]:flt.d a2, fa0, fa1
	-[0x800020fc]:csrrs a7, fflags, zero
	-[0x80002100]:sd a2, 352(a5)
Current Store : [0x80002104] : sd a7, 360(a5) -- Store: [0x80008958]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002110]:flt.d a2, fa0, fa1
	-[0x80002114]:csrrs a7, fflags, zero
	-[0x80002118]:sd a2, 368(a5)
Current Store : [0x8000211c] : sd a7, 376(a5) -- Store: [0x80008968]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002128]:flt.d a2, fa0, fa1
	-[0x8000212c]:csrrs a7, fflags, zero
	-[0x80002130]:sd a2, 384(a5)
Current Store : [0x80002134] : sd a7, 392(a5) -- Store: [0x80008978]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002140]:flt.d a2, fa0, fa1
	-[0x80002144]:csrrs a7, fflags, zero
	-[0x80002148]:sd a2, 400(a5)
Current Store : [0x8000214c] : sd a7, 408(a5) -- Store: [0x80008988]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002158]:flt.d a2, fa0, fa1
	-[0x8000215c]:csrrs a7, fflags, zero
	-[0x80002160]:sd a2, 416(a5)
Current Store : [0x80002164] : sd a7, 424(a5) -- Store: [0x80008998]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002170]:flt.d a2, fa0, fa1
	-[0x80002174]:csrrs a7, fflags, zero
	-[0x80002178]:sd a2, 432(a5)
Current Store : [0x8000217c] : sd a7, 440(a5) -- Store: [0x800089a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002188]:flt.d a2, fa0, fa1
	-[0x8000218c]:csrrs a7, fflags, zero
	-[0x80002190]:sd a2, 448(a5)
Current Store : [0x80002194] : sd a7, 456(a5) -- Store: [0x800089b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021a0]:flt.d a2, fa0, fa1
	-[0x800021a4]:csrrs a7, fflags, zero
	-[0x800021a8]:sd a2, 464(a5)
Current Store : [0x800021ac] : sd a7, 472(a5) -- Store: [0x800089c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021b8]:flt.d a2, fa0, fa1
	-[0x800021bc]:csrrs a7, fflags, zero
	-[0x800021c0]:sd a2, 480(a5)
Current Store : [0x800021c4] : sd a7, 488(a5) -- Store: [0x800089d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021d0]:flt.d a2, fa0, fa1
	-[0x800021d4]:csrrs a7, fflags, zero
	-[0x800021d8]:sd a2, 496(a5)
Current Store : [0x800021dc] : sd a7, 504(a5) -- Store: [0x800089e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800021e8]:flt.d a2, fa0, fa1
	-[0x800021ec]:csrrs a7, fflags, zero
	-[0x800021f0]:sd a2, 512(a5)
Current Store : [0x800021f4] : sd a7, 520(a5) -- Store: [0x800089f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002200]:flt.d a2, fa0, fa1
	-[0x80002204]:csrrs a7, fflags, zero
	-[0x80002208]:sd a2, 528(a5)
Current Store : [0x8000220c] : sd a7, 536(a5) -- Store: [0x80008a08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002218]:flt.d a2, fa0, fa1
	-[0x8000221c]:csrrs a7, fflags, zero
	-[0x80002220]:sd a2, 544(a5)
Current Store : [0x80002224] : sd a7, 552(a5) -- Store: [0x80008a18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002230]:flt.d a2, fa0, fa1
	-[0x80002234]:csrrs a7, fflags, zero
	-[0x80002238]:sd a2, 560(a5)
Current Store : [0x8000223c] : sd a7, 568(a5) -- Store: [0x80008a28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002248]:flt.d a2, fa0, fa1
	-[0x8000224c]:csrrs a7, fflags, zero
	-[0x80002250]:sd a2, 576(a5)
Current Store : [0x80002254] : sd a7, 584(a5) -- Store: [0x80008a38]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002260]:flt.d a2, fa0, fa1
	-[0x80002264]:csrrs a7, fflags, zero
	-[0x80002268]:sd a2, 592(a5)
Current Store : [0x8000226c] : sd a7, 600(a5) -- Store: [0x80008a48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002278]:flt.d a2, fa0, fa1
	-[0x8000227c]:csrrs a7, fflags, zero
	-[0x80002280]:sd a2, 608(a5)
Current Store : [0x80002284] : sd a7, 616(a5) -- Store: [0x80008a58]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002290]:flt.d a2, fa0, fa1
	-[0x80002294]:csrrs a7, fflags, zero
	-[0x80002298]:sd a2, 624(a5)
Current Store : [0x8000229c] : sd a7, 632(a5) -- Store: [0x80008a68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022a8]:flt.d a2, fa0, fa1
	-[0x800022ac]:csrrs a7, fflags, zero
	-[0x800022b0]:sd a2, 640(a5)
Current Store : [0x800022b4] : sd a7, 648(a5) -- Store: [0x80008a78]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022c0]:flt.d a2, fa0, fa1
	-[0x800022c4]:csrrs a7, fflags, zero
	-[0x800022c8]:sd a2, 656(a5)
Current Store : [0x800022cc] : sd a7, 664(a5) -- Store: [0x80008a88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022d8]:flt.d a2, fa0, fa1
	-[0x800022dc]:csrrs a7, fflags, zero
	-[0x800022e0]:sd a2, 672(a5)
Current Store : [0x800022e4] : sd a7, 680(a5) -- Store: [0x80008a98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800022f0]:flt.d a2, fa0, fa1
	-[0x800022f4]:csrrs a7, fflags, zero
	-[0x800022f8]:sd a2, 688(a5)
Current Store : [0x800022fc] : sd a7, 696(a5) -- Store: [0x80008aa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002308]:flt.d a2, fa0, fa1
	-[0x8000230c]:csrrs a7, fflags, zero
	-[0x80002310]:sd a2, 704(a5)
Current Store : [0x80002314] : sd a7, 712(a5) -- Store: [0x80008ab8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002320]:flt.d a2, fa0, fa1
	-[0x80002324]:csrrs a7, fflags, zero
	-[0x80002328]:sd a2, 720(a5)
Current Store : [0x8000232c] : sd a7, 728(a5) -- Store: [0x80008ac8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002338]:flt.d a2, fa0, fa1
	-[0x8000233c]:csrrs a7, fflags, zero
	-[0x80002340]:sd a2, 736(a5)
Current Store : [0x80002344] : sd a7, 744(a5) -- Store: [0x80008ad8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002350]:flt.d a2, fa0, fa1
	-[0x80002354]:csrrs a7, fflags, zero
	-[0x80002358]:sd a2, 752(a5)
Current Store : [0x8000235c] : sd a7, 760(a5) -- Store: [0x80008ae8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002368]:flt.d a2, fa0, fa1
	-[0x8000236c]:csrrs a7, fflags, zero
	-[0x80002370]:sd a2, 768(a5)
Current Store : [0x80002374] : sd a7, 776(a5) -- Store: [0x80008af8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002380]:flt.d a2, fa0, fa1
	-[0x80002384]:csrrs a7, fflags, zero
	-[0x80002388]:sd a2, 784(a5)
Current Store : [0x8000238c] : sd a7, 792(a5) -- Store: [0x80008b08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002398]:flt.d a2, fa0, fa1
	-[0x8000239c]:csrrs a7, fflags, zero
	-[0x800023a0]:sd a2, 800(a5)
Current Store : [0x800023a4] : sd a7, 808(a5) -- Store: [0x80008b18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023b0]:flt.d a2, fa0, fa1
	-[0x800023b4]:csrrs a7, fflags, zero
	-[0x800023b8]:sd a2, 816(a5)
Current Store : [0x800023bc] : sd a7, 824(a5) -- Store: [0x80008b28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023c8]:flt.d a2, fa0, fa1
	-[0x800023cc]:csrrs a7, fflags, zero
	-[0x800023d0]:sd a2, 832(a5)
Current Store : [0x800023d4] : sd a7, 840(a5) -- Store: [0x80008b38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023e0]:flt.d a2, fa0, fa1
	-[0x800023e4]:csrrs a7, fflags, zero
	-[0x800023e8]:sd a2, 848(a5)
Current Store : [0x800023ec] : sd a7, 856(a5) -- Store: [0x80008b48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800023f8]:flt.d a2, fa0, fa1
	-[0x800023fc]:csrrs a7, fflags, zero
	-[0x80002400]:sd a2, 864(a5)
Current Store : [0x80002404] : sd a7, 872(a5) -- Store: [0x80008b58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002410]:flt.d a2, fa0, fa1
	-[0x80002414]:csrrs a7, fflags, zero
	-[0x80002418]:sd a2, 880(a5)
Current Store : [0x8000241c] : sd a7, 888(a5) -- Store: [0x80008b68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002428]:flt.d a2, fa0, fa1
	-[0x8000242c]:csrrs a7, fflags, zero
	-[0x80002430]:sd a2, 896(a5)
Current Store : [0x80002434] : sd a7, 904(a5) -- Store: [0x80008b78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002440]:flt.d a2, fa0, fa1
	-[0x80002444]:csrrs a7, fflags, zero
	-[0x80002448]:sd a2, 912(a5)
Current Store : [0x8000244c] : sd a7, 920(a5) -- Store: [0x80008b88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002458]:flt.d a2, fa0, fa1
	-[0x8000245c]:csrrs a7, fflags, zero
	-[0x80002460]:sd a2, 928(a5)
Current Store : [0x80002464] : sd a7, 936(a5) -- Store: [0x80008b98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002470]:flt.d a2, fa0, fa1
	-[0x80002474]:csrrs a7, fflags, zero
	-[0x80002478]:sd a2, 944(a5)
Current Store : [0x8000247c] : sd a7, 952(a5) -- Store: [0x80008ba8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002488]:flt.d a2, fa0, fa1
	-[0x8000248c]:csrrs a7, fflags, zero
	-[0x80002490]:sd a2, 960(a5)
Current Store : [0x80002494] : sd a7, 968(a5) -- Store: [0x80008bb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024a0]:flt.d a2, fa0, fa1
	-[0x800024a4]:csrrs a7, fflags, zero
	-[0x800024a8]:sd a2, 976(a5)
Current Store : [0x800024ac] : sd a7, 984(a5) -- Store: [0x80008bc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024b8]:flt.d a2, fa0, fa1
	-[0x800024bc]:csrrs a7, fflags, zero
	-[0x800024c0]:sd a2, 992(a5)
Current Store : [0x800024c4] : sd a7, 1000(a5) -- Store: [0x80008bd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024d0]:flt.d a2, fa0, fa1
	-[0x800024d4]:csrrs a7, fflags, zero
	-[0x800024d8]:sd a2, 1008(a5)
Current Store : [0x800024dc] : sd a7, 1016(a5) -- Store: [0x80008be8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800024e8]:flt.d a2, fa0, fa1
	-[0x800024ec]:csrrs a7, fflags, zero
	-[0x800024f0]:sd a2, 1024(a5)
Current Store : [0x800024f4] : sd a7, 1032(a5) -- Store: [0x80008bf8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002500]:flt.d a2, fa0, fa1
	-[0x80002504]:csrrs a7, fflags, zero
	-[0x80002508]:sd a2, 1040(a5)
Current Store : [0x8000250c] : sd a7, 1048(a5) -- Store: [0x80008c08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002518]:flt.d a2, fa0, fa1
	-[0x8000251c]:csrrs a7, fflags, zero
	-[0x80002520]:sd a2, 1056(a5)
Current Store : [0x80002524] : sd a7, 1064(a5) -- Store: [0x80008c18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002530]:flt.d a2, fa0, fa1
	-[0x80002534]:csrrs a7, fflags, zero
	-[0x80002538]:sd a2, 1072(a5)
Current Store : [0x8000253c] : sd a7, 1080(a5) -- Store: [0x80008c28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002548]:flt.d a2, fa0, fa1
	-[0x8000254c]:csrrs a7, fflags, zero
	-[0x80002550]:sd a2, 1088(a5)
Current Store : [0x80002554] : sd a7, 1096(a5) -- Store: [0x80008c38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002560]:flt.d a2, fa0, fa1
	-[0x80002564]:csrrs a7, fflags, zero
	-[0x80002568]:sd a2, 1104(a5)
Current Store : [0x8000256c] : sd a7, 1112(a5) -- Store: [0x80008c48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002578]:flt.d a2, fa0, fa1
	-[0x8000257c]:csrrs a7, fflags, zero
	-[0x80002580]:sd a2, 1120(a5)
Current Store : [0x80002584] : sd a7, 1128(a5) -- Store: [0x80008c58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002590]:flt.d a2, fa0, fa1
	-[0x80002594]:csrrs a7, fflags, zero
	-[0x80002598]:sd a2, 1136(a5)
Current Store : [0x8000259c] : sd a7, 1144(a5) -- Store: [0x80008c68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025a8]:flt.d a2, fa0, fa1
	-[0x800025ac]:csrrs a7, fflags, zero
	-[0x800025b0]:sd a2, 1152(a5)
Current Store : [0x800025b4] : sd a7, 1160(a5) -- Store: [0x80008c78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025c0]:flt.d a2, fa0, fa1
	-[0x800025c4]:csrrs a7, fflags, zero
	-[0x800025c8]:sd a2, 1168(a5)
Current Store : [0x800025cc] : sd a7, 1176(a5) -- Store: [0x80008c88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025d8]:flt.d a2, fa0, fa1
	-[0x800025dc]:csrrs a7, fflags, zero
	-[0x800025e0]:sd a2, 1184(a5)
Current Store : [0x800025e4] : sd a7, 1192(a5) -- Store: [0x80008c98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800025f0]:flt.d a2, fa0, fa1
	-[0x800025f4]:csrrs a7, fflags, zero
	-[0x800025f8]:sd a2, 1200(a5)
Current Store : [0x800025fc] : sd a7, 1208(a5) -- Store: [0x80008ca8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002608]:flt.d a2, fa0, fa1
	-[0x8000260c]:csrrs a7, fflags, zero
	-[0x80002610]:sd a2, 1216(a5)
Current Store : [0x80002614] : sd a7, 1224(a5) -- Store: [0x80008cb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002620]:flt.d a2, fa0, fa1
	-[0x80002624]:csrrs a7, fflags, zero
	-[0x80002628]:sd a2, 1232(a5)
Current Store : [0x8000262c] : sd a7, 1240(a5) -- Store: [0x80008cc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002638]:flt.d a2, fa0, fa1
	-[0x8000263c]:csrrs a7, fflags, zero
	-[0x80002640]:sd a2, 1248(a5)
Current Store : [0x80002644] : sd a7, 1256(a5) -- Store: [0x80008cd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002650]:flt.d a2, fa0, fa1
	-[0x80002654]:csrrs a7, fflags, zero
	-[0x80002658]:sd a2, 1264(a5)
Current Store : [0x8000265c] : sd a7, 1272(a5) -- Store: [0x80008ce8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002668]:flt.d a2, fa0, fa1
	-[0x8000266c]:csrrs a7, fflags, zero
	-[0x80002670]:sd a2, 1280(a5)
Current Store : [0x80002674] : sd a7, 1288(a5) -- Store: [0x80008cf8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002680]:flt.d a2, fa0, fa1
	-[0x80002684]:csrrs a7, fflags, zero
	-[0x80002688]:sd a2, 1296(a5)
Current Store : [0x8000268c] : sd a7, 1304(a5) -- Store: [0x80008d08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002698]:flt.d a2, fa0, fa1
	-[0x8000269c]:csrrs a7, fflags, zero
	-[0x800026a0]:sd a2, 1312(a5)
Current Store : [0x800026a4] : sd a7, 1320(a5) -- Store: [0x80008d18]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026b0]:flt.d a2, fa0, fa1
	-[0x800026b4]:csrrs a7, fflags, zero
	-[0x800026b8]:sd a2, 1328(a5)
Current Store : [0x800026bc] : sd a7, 1336(a5) -- Store: [0x80008d28]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026c8]:flt.d a2, fa0, fa1
	-[0x800026cc]:csrrs a7, fflags, zero
	-[0x800026d0]:sd a2, 1344(a5)
Current Store : [0x800026d4] : sd a7, 1352(a5) -- Store: [0x80008d38]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026e0]:flt.d a2, fa0, fa1
	-[0x800026e4]:csrrs a7, fflags, zero
	-[0x800026e8]:sd a2, 1360(a5)
Current Store : [0x800026ec] : sd a7, 1368(a5) -- Store: [0x80008d48]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800026f8]:flt.d a2, fa0, fa1
	-[0x800026fc]:csrrs a7, fflags, zero
	-[0x80002700]:sd a2, 1376(a5)
Current Store : [0x80002704] : sd a7, 1384(a5) -- Store: [0x80008d58]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002710]:flt.d a2, fa0, fa1
	-[0x80002714]:csrrs a7, fflags, zero
	-[0x80002718]:sd a2, 1392(a5)
Current Store : [0x8000271c] : sd a7, 1400(a5) -- Store: [0x80008d68]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002728]:flt.d a2, fa0, fa1
	-[0x8000272c]:csrrs a7, fflags, zero
	-[0x80002730]:sd a2, 1408(a5)
Current Store : [0x80002734] : sd a7, 1416(a5) -- Store: [0x80008d78]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002740]:flt.d a2, fa0, fa1
	-[0x80002744]:csrrs a7, fflags, zero
	-[0x80002748]:sd a2, 1424(a5)
Current Store : [0x8000274c] : sd a7, 1432(a5) -- Store: [0x80008d88]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002758]:flt.d a2, fa0, fa1
	-[0x8000275c]:csrrs a7, fflags, zero
	-[0x80002760]:sd a2, 1440(a5)
Current Store : [0x80002764] : sd a7, 1448(a5) -- Store: [0x80008d98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002770]:flt.d a2, fa0, fa1
	-[0x80002774]:csrrs a7, fflags, zero
	-[0x80002778]:sd a2, 1456(a5)
Current Store : [0x8000277c] : sd a7, 1464(a5) -- Store: [0x80008da8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002788]:flt.d a2, fa0, fa1
	-[0x8000278c]:csrrs a7, fflags, zero
	-[0x80002790]:sd a2, 1472(a5)
Current Store : [0x80002794] : sd a7, 1480(a5) -- Store: [0x80008db8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027a0]:flt.d a2, fa0, fa1
	-[0x800027a4]:csrrs a7, fflags, zero
	-[0x800027a8]:sd a2, 1488(a5)
Current Store : [0x800027ac] : sd a7, 1496(a5) -- Store: [0x80008dc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027b8]:flt.d a2, fa0, fa1
	-[0x800027bc]:csrrs a7, fflags, zero
	-[0x800027c0]:sd a2, 1504(a5)
Current Store : [0x800027c4] : sd a7, 1512(a5) -- Store: [0x80008dd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027d4]:flt.d a2, fa0, fa1
	-[0x800027d8]:csrrs a7, fflags, zero
	-[0x800027dc]:sd a2, 1520(a5)
Current Store : [0x800027e0] : sd a7, 1528(a5) -- Store: [0x80008de8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800027ec]:flt.d a2, fa0, fa1
	-[0x800027f0]:csrrs a7, fflags, zero
	-[0x800027f4]:sd a2, 1536(a5)
Current Store : [0x800027f8] : sd a7, 1544(a5) -- Store: [0x80008df8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002804]:flt.d a2, fa0, fa1
	-[0x80002808]:csrrs a7, fflags, zero
	-[0x8000280c]:sd a2, 1552(a5)
Current Store : [0x80002810] : sd a7, 1560(a5) -- Store: [0x80008e08]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000281c]:flt.d a2, fa0, fa1
	-[0x80002820]:csrrs a7, fflags, zero
	-[0x80002824]:sd a2, 1568(a5)
Current Store : [0x80002828] : sd a7, 1576(a5) -- Store: [0x80008e18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002834]:flt.d a2, fa0, fa1
	-[0x80002838]:csrrs a7, fflags, zero
	-[0x8000283c]:sd a2, 1584(a5)
Current Store : [0x80002840] : sd a7, 1592(a5) -- Store: [0x80008e28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000284c]:flt.d a2, fa0, fa1
	-[0x80002850]:csrrs a7, fflags, zero
	-[0x80002854]:sd a2, 1600(a5)
Current Store : [0x80002858] : sd a7, 1608(a5) -- Store: [0x80008e38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002864]:flt.d a2, fa0, fa1
	-[0x80002868]:csrrs a7, fflags, zero
	-[0x8000286c]:sd a2, 1616(a5)
Current Store : [0x80002870] : sd a7, 1624(a5) -- Store: [0x80008e48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000287c]:flt.d a2, fa0, fa1
	-[0x80002880]:csrrs a7, fflags, zero
	-[0x80002884]:sd a2, 1632(a5)
Current Store : [0x80002888] : sd a7, 1640(a5) -- Store: [0x80008e58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002894]:flt.d a2, fa0, fa1
	-[0x80002898]:csrrs a7, fflags, zero
	-[0x8000289c]:sd a2, 1648(a5)
Current Store : [0x800028a0] : sd a7, 1656(a5) -- Store: [0x80008e68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028ac]:flt.d a2, fa0, fa1
	-[0x800028b0]:csrrs a7, fflags, zero
	-[0x800028b4]:sd a2, 1664(a5)
Current Store : [0x800028b8] : sd a7, 1672(a5) -- Store: [0x80008e78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028c4]:flt.d a2, fa0, fa1
	-[0x800028c8]:csrrs a7, fflags, zero
	-[0x800028cc]:sd a2, 1680(a5)
Current Store : [0x800028d0] : sd a7, 1688(a5) -- Store: [0x80008e88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028dc]:flt.d a2, fa0, fa1
	-[0x800028e0]:csrrs a7, fflags, zero
	-[0x800028e4]:sd a2, 1696(a5)
Current Store : [0x800028e8] : sd a7, 1704(a5) -- Store: [0x80008e98]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800028f4]:flt.d a2, fa0, fa1
	-[0x800028f8]:csrrs a7, fflags, zero
	-[0x800028fc]:sd a2, 1712(a5)
Current Store : [0x80002900] : sd a7, 1720(a5) -- Store: [0x80008ea8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000290c]:flt.d a2, fa0, fa1
	-[0x80002910]:csrrs a7, fflags, zero
	-[0x80002914]:sd a2, 1728(a5)
Current Store : [0x80002918] : sd a7, 1736(a5) -- Store: [0x80008eb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002924]:flt.d a2, fa0, fa1
	-[0x80002928]:csrrs a7, fflags, zero
	-[0x8000292c]:sd a2, 1744(a5)
Current Store : [0x80002930] : sd a7, 1752(a5) -- Store: [0x80008ec8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000293c]:flt.d a2, fa0, fa1
	-[0x80002940]:csrrs a7, fflags, zero
	-[0x80002944]:sd a2, 1760(a5)
Current Store : [0x80002948] : sd a7, 1768(a5) -- Store: [0x80008ed8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002954]:flt.d a2, fa0, fa1
	-[0x80002958]:csrrs a7, fflags, zero
	-[0x8000295c]:sd a2, 1776(a5)
Current Store : [0x80002960] : sd a7, 1784(a5) -- Store: [0x80008ee8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000296c]:flt.d a2, fa0, fa1
	-[0x80002970]:csrrs a7, fflags, zero
	-[0x80002974]:sd a2, 1792(a5)
Current Store : [0x80002978] : sd a7, 1800(a5) -- Store: [0x80008ef8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002984]:flt.d a2, fa0, fa1
	-[0x80002988]:csrrs a7, fflags, zero
	-[0x8000298c]:sd a2, 1808(a5)
Current Store : [0x80002990] : sd a7, 1816(a5) -- Store: [0x80008f08]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000299c]:flt.d a2, fa0, fa1
	-[0x800029a0]:csrrs a7, fflags, zero
	-[0x800029a4]:sd a2, 1824(a5)
Current Store : [0x800029a8] : sd a7, 1832(a5) -- Store: [0x80008f18]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029b4]:flt.d a2, fa0, fa1
	-[0x800029b8]:csrrs a7, fflags, zero
	-[0x800029bc]:sd a2, 1840(a5)
Current Store : [0x800029c0] : sd a7, 1848(a5) -- Store: [0x80008f28]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029cc]:flt.d a2, fa0, fa1
	-[0x800029d0]:csrrs a7, fflags, zero
	-[0x800029d4]:sd a2, 1856(a5)
Current Store : [0x800029d8] : sd a7, 1864(a5) -- Store: [0x80008f38]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029e4]:flt.d a2, fa0, fa1
	-[0x800029e8]:csrrs a7, fflags, zero
	-[0x800029ec]:sd a2, 1872(a5)
Current Store : [0x800029f0] : sd a7, 1880(a5) -- Store: [0x80008f48]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800029fc]:flt.d a2, fa0, fa1
	-[0x80002a00]:csrrs a7, fflags, zero
	-[0x80002a04]:sd a2, 1888(a5)
Current Store : [0x80002a08] : sd a7, 1896(a5) -- Store: [0x80008f58]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a14]:flt.d a2, fa0, fa1
	-[0x80002a18]:csrrs a7, fflags, zero
	-[0x80002a1c]:sd a2, 1904(a5)
Current Store : [0x80002a20] : sd a7, 1912(a5) -- Store: [0x80008f68]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a2c]:flt.d a2, fa0, fa1
	-[0x80002a30]:csrrs a7, fflags, zero
	-[0x80002a34]:sd a2, 1920(a5)
Current Store : [0x80002a38] : sd a7, 1928(a5) -- Store: [0x80008f78]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a44]:flt.d a2, fa0, fa1
	-[0x80002a48]:csrrs a7, fflags, zero
	-[0x80002a4c]:sd a2, 1936(a5)
Current Store : [0x80002a50] : sd a7, 1944(a5) -- Store: [0x80008f88]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a5c]:flt.d a2, fa0, fa1
	-[0x80002a60]:csrrs a7, fflags, zero
	-[0x80002a64]:sd a2, 1952(a5)
Current Store : [0x80002a68] : sd a7, 1960(a5) -- Store: [0x80008f98]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a74]:flt.d a2, fa0, fa1
	-[0x80002a78]:csrrs a7, fflags, zero
	-[0x80002a7c]:sd a2, 1968(a5)
Current Store : [0x80002a80] : sd a7, 1976(a5) -- Store: [0x80008fa8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002a8c]:flt.d a2, fa0, fa1
	-[0x80002a90]:csrrs a7, fflags, zero
	-[0x80002a94]:sd a2, 1984(a5)
Current Store : [0x80002a98] : sd a7, 1992(a5) -- Store: [0x80008fb8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002aa4]:flt.d a2, fa0, fa1
	-[0x80002aa8]:csrrs a7, fflags, zero
	-[0x80002aac]:sd a2, 2000(a5)
Current Store : [0x80002ab0] : sd a7, 2008(a5) -- Store: [0x80008fc8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002abc]:flt.d a2, fa0, fa1
	-[0x80002ac0]:csrrs a7, fflags, zero
	-[0x80002ac4]:sd a2, 2016(a5)
Current Store : [0x80002ac8] : sd a7, 2024(a5) -- Store: [0x80008fd8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002adc]:flt.d a2, fa0, fa1
	-[0x80002ae0]:csrrs a7, fflags, zero
	-[0x80002ae4]:sd a2, 0(a5)
Current Store : [0x80002ae8] : sd a7, 8(a5) -- Store: [0x80008fe8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002af4]:flt.d a2, fa0, fa1
	-[0x80002af8]:csrrs a7, fflags, zero
	-[0x80002afc]:sd a2, 16(a5)
Current Store : [0x80002b00] : sd a7, 24(a5) -- Store: [0x80008ff8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b0c]:flt.d a2, fa0, fa1
	-[0x80002b10]:csrrs a7, fflags, zero
	-[0x80002b14]:sd a2, 32(a5)
Current Store : [0x80002b18] : sd a7, 40(a5) -- Store: [0x80009008]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b24]:flt.d a2, fa0, fa1
	-[0x80002b28]:csrrs a7, fflags, zero
	-[0x80002b2c]:sd a2, 48(a5)
Current Store : [0x80002b30] : sd a7, 56(a5) -- Store: [0x80009018]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b3c]:flt.d a2, fa0, fa1
	-[0x80002b40]:csrrs a7, fflags, zero
	-[0x80002b44]:sd a2, 64(a5)
Current Store : [0x80002b48] : sd a7, 72(a5) -- Store: [0x80009028]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b54]:flt.d a2, fa0, fa1
	-[0x80002b58]:csrrs a7, fflags, zero
	-[0x80002b5c]:sd a2, 80(a5)
Current Store : [0x80002b60] : sd a7, 88(a5) -- Store: [0x80009038]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b6c]:flt.d a2, fa0, fa1
	-[0x80002b70]:csrrs a7, fflags, zero
	-[0x80002b74]:sd a2, 96(a5)
Current Store : [0x80002b78] : sd a7, 104(a5) -- Store: [0x80009048]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b84]:flt.d a2, fa0, fa1
	-[0x80002b88]:csrrs a7, fflags, zero
	-[0x80002b8c]:sd a2, 112(a5)
Current Store : [0x80002b90] : sd a7, 120(a5) -- Store: [0x80009058]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002b9c]:flt.d a2, fa0, fa1
	-[0x80002ba0]:csrrs a7, fflags, zero
	-[0x80002ba4]:sd a2, 128(a5)
Current Store : [0x80002ba8] : sd a7, 136(a5) -- Store: [0x80009068]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bb4]:flt.d a2, fa0, fa1
	-[0x80002bb8]:csrrs a7, fflags, zero
	-[0x80002bbc]:sd a2, 144(a5)
Current Store : [0x80002bc0] : sd a7, 152(a5) -- Store: [0x80009078]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bcc]:flt.d a2, fa0, fa1
	-[0x80002bd0]:csrrs a7, fflags, zero
	-[0x80002bd4]:sd a2, 160(a5)
Current Store : [0x80002bd8] : sd a7, 168(a5) -- Store: [0x80009088]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002be4]:flt.d a2, fa0, fa1
	-[0x80002be8]:csrrs a7, fflags, zero
	-[0x80002bec]:sd a2, 176(a5)
Current Store : [0x80002bf0] : sd a7, 184(a5) -- Store: [0x80009098]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002bfc]:flt.d a2, fa0, fa1
	-[0x80002c00]:csrrs a7, fflags, zero
	-[0x80002c04]:sd a2, 192(a5)
Current Store : [0x80002c08] : sd a7, 200(a5) -- Store: [0x800090a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c14]:flt.d a2, fa0, fa1
	-[0x80002c18]:csrrs a7, fflags, zero
	-[0x80002c1c]:sd a2, 208(a5)
Current Store : [0x80002c20] : sd a7, 216(a5) -- Store: [0x800090b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c2c]:flt.d a2, fa0, fa1
	-[0x80002c30]:csrrs a7, fflags, zero
	-[0x80002c34]:sd a2, 224(a5)
Current Store : [0x80002c38] : sd a7, 232(a5) -- Store: [0x800090c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c44]:flt.d a2, fa0, fa1
	-[0x80002c48]:csrrs a7, fflags, zero
	-[0x80002c4c]:sd a2, 240(a5)
Current Store : [0x80002c50] : sd a7, 248(a5) -- Store: [0x800090d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c5c]:flt.d a2, fa0, fa1
	-[0x80002c60]:csrrs a7, fflags, zero
	-[0x80002c64]:sd a2, 256(a5)
Current Store : [0x80002c68] : sd a7, 264(a5) -- Store: [0x800090e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c74]:flt.d a2, fa0, fa1
	-[0x80002c78]:csrrs a7, fflags, zero
	-[0x80002c7c]:sd a2, 272(a5)
Current Store : [0x80002c80] : sd a7, 280(a5) -- Store: [0x800090f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002c8c]:flt.d a2, fa0, fa1
	-[0x80002c90]:csrrs a7, fflags, zero
	-[0x80002c94]:sd a2, 288(a5)
Current Store : [0x80002c98] : sd a7, 296(a5) -- Store: [0x80009108]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ca4]:flt.d a2, fa0, fa1
	-[0x80002ca8]:csrrs a7, fflags, zero
	-[0x80002cac]:sd a2, 304(a5)
Current Store : [0x80002cb0] : sd a7, 312(a5) -- Store: [0x80009118]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cbc]:flt.d a2, fa0, fa1
	-[0x80002cc0]:csrrs a7, fflags, zero
	-[0x80002cc4]:sd a2, 320(a5)
Current Store : [0x80002cc8] : sd a7, 328(a5) -- Store: [0x80009128]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cd4]:flt.d a2, fa0, fa1
	-[0x80002cd8]:csrrs a7, fflags, zero
	-[0x80002cdc]:sd a2, 336(a5)
Current Store : [0x80002ce0] : sd a7, 344(a5) -- Store: [0x80009138]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002cec]:flt.d a2, fa0, fa1
	-[0x80002cf0]:csrrs a7, fflags, zero
	-[0x80002cf4]:sd a2, 352(a5)
Current Store : [0x80002cf8] : sd a7, 360(a5) -- Store: [0x80009148]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d04]:flt.d a2, fa0, fa1
	-[0x80002d08]:csrrs a7, fflags, zero
	-[0x80002d0c]:sd a2, 368(a5)
Current Store : [0x80002d10] : sd a7, 376(a5) -- Store: [0x80009158]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d1c]:flt.d a2, fa0, fa1
	-[0x80002d20]:csrrs a7, fflags, zero
	-[0x80002d24]:sd a2, 384(a5)
Current Store : [0x80002d28] : sd a7, 392(a5) -- Store: [0x80009168]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d34]:flt.d a2, fa0, fa1
	-[0x80002d38]:csrrs a7, fflags, zero
	-[0x80002d3c]:sd a2, 400(a5)
Current Store : [0x80002d40] : sd a7, 408(a5) -- Store: [0x80009178]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d4c]:flt.d a2, fa0, fa1
	-[0x80002d50]:csrrs a7, fflags, zero
	-[0x80002d54]:sd a2, 416(a5)
Current Store : [0x80002d58] : sd a7, 424(a5) -- Store: [0x80009188]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d64]:flt.d a2, fa0, fa1
	-[0x80002d68]:csrrs a7, fflags, zero
	-[0x80002d6c]:sd a2, 432(a5)
Current Store : [0x80002d70] : sd a7, 440(a5) -- Store: [0x80009198]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d7c]:flt.d a2, fa0, fa1
	-[0x80002d80]:csrrs a7, fflags, zero
	-[0x80002d84]:sd a2, 448(a5)
Current Store : [0x80002d88] : sd a7, 456(a5) -- Store: [0x800091a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002d94]:flt.d a2, fa0, fa1
	-[0x80002d98]:csrrs a7, fflags, zero
	-[0x80002d9c]:sd a2, 464(a5)
Current Store : [0x80002da0] : sd a7, 472(a5) -- Store: [0x800091b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002dac]:flt.d a2, fa0, fa1
	-[0x80002db0]:csrrs a7, fflags, zero
	-[0x80002db4]:sd a2, 480(a5)
Current Store : [0x80002db8] : sd a7, 488(a5) -- Store: [0x800091c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002dc4]:flt.d a2, fa0, fa1
	-[0x80002dc8]:csrrs a7, fflags, zero
	-[0x80002dcc]:sd a2, 496(a5)
Current Store : [0x80002dd0] : sd a7, 504(a5) -- Store: [0x800091d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ddc]:flt.d a2, fa0, fa1
	-[0x80002de0]:csrrs a7, fflags, zero
	-[0x80002de4]:sd a2, 512(a5)
Current Store : [0x80002de8] : sd a7, 520(a5) -- Store: [0x800091e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002df4]:flt.d a2, fa0, fa1
	-[0x80002df8]:csrrs a7, fflags, zero
	-[0x80002dfc]:sd a2, 528(a5)
Current Store : [0x80002e00] : sd a7, 536(a5) -- Store: [0x800091f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e0c]:flt.d a2, fa0, fa1
	-[0x80002e10]:csrrs a7, fflags, zero
	-[0x80002e14]:sd a2, 544(a5)
Current Store : [0x80002e18] : sd a7, 552(a5) -- Store: [0x80009208]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e24]:flt.d a2, fa0, fa1
	-[0x80002e28]:csrrs a7, fflags, zero
	-[0x80002e2c]:sd a2, 560(a5)
Current Store : [0x80002e30] : sd a7, 568(a5) -- Store: [0x80009218]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e3c]:flt.d a2, fa0, fa1
	-[0x80002e40]:csrrs a7, fflags, zero
	-[0x80002e44]:sd a2, 576(a5)
Current Store : [0x80002e48] : sd a7, 584(a5) -- Store: [0x80009228]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e54]:flt.d a2, fa0, fa1
	-[0x80002e58]:csrrs a7, fflags, zero
	-[0x80002e5c]:sd a2, 592(a5)
Current Store : [0x80002e60] : sd a7, 600(a5) -- Store: [0x80009238]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e6c]:flt.d a2, fa0, fa1
	-[0x80002e70]:csrrs a7, fflags, zero
	-[0x80002e74]:sd a2, 608(a5)
Current Store : [0x80002e78] : sd a7, 616(a5) -- Store: [0x80009248]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e84]:flt.d a2, fa0, fa1
	-[0x80002e88]:csrrs a7, fflags, zero
	-[0x80002e8c]:sd a2, 624(a5)
Current Store : [0x80002e90] : sd a7, 632(a5) -- Store: [0x80009258]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002e9c]:flt.d a2, fa0, fa1
	-[0x80002ea0]:csrrs a7, fflags, zero
	-[0x80002ea4]:sd a2, 640(a5)
Current Store : [0x80002ea8] : sd a7, 648(a5) -- Store: [0x80009268]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002eb4]:flt.d a2, fa0, fa1
	-[0x80002eb8]:csrrs a7, fflags, zero
	-[0x80002ebc]:sd a2, 656(a5)
Current Store : [0x80002ec0] : sd a7, 664(a5) -- Store: [0x80009278]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ecc]:flt.d a2, fa0, fa1
	-[0x80002ed0]:csrrs a7, fflags, zero
	-[0x80002ed4]:sd a2, 672(a5)
Current Store : [0x80002ed8] : sd a7, 680(a5) -- Store: [0x80009288]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002ee4]:flt.d a2, fa0, fa1
	-[0x80002ee8]:csrrs a7, fflags, zero
	-[0x80002eec]:sd a2, 688(a5)
Current Store : [0x80002ef0] : sd a7, 696(a5) -- Store: [0x80009298]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002efc]:flt.d a2, fa0, fa1
	-[0x80002f00]:csrrs a7, fflags, zero
	-[0x80002f04]:sd a2, 704(a5)
Current Store : [0x80002f08] : sd a7, 712(a5) -- Store: [0x800092a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f14]:flt.d a2, fa0, fa1
	-[0x80002f18]:csrrs a7, fflags, zero
	-[0x80002f1c]:sd a2, 720(a5)
Current Store : [0x80002f20] : sd a7, 728(a5) -- Store: [0x800092b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f2c]:flt.d a2, fa0, fa1
	-[0x80002f30]:csrrs a7, fflags, zero
	-[0x80002f34]:sd a2, 736(a5)
Current Store : [0x80002f38] : sd a7, 744(a5) -- Store: [0x800092c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f44]:flt.d a2, fa0, fa1
	-[0x80002f48]:csrrs a7, fflags, zero
	-[0x80002f4c]:sd a2, 752(a5)
Current Store : [0x80002f50] : sd a7, 760(a5) -- Store: [0x800092d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f5c]:flt.d a2, fa0, fa1
	-[0x80002f60]:csrrs a7, fflags, zero
	-[0x80002f64]:sd a2, 768(a5)
Current Store : [0x80002f68] : sd a7, 776(a5) -- Store: [0x800092e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f74]:flt.d a2, fa0, fa1
	-[0x80002f78]:csrrs a7, fflags, zero
	-[0x80002f7c]:sd a2, 784(a5)
Current Store : [0x80002f80] : sd a7, 792(a5) -- Store: [0x800092f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002f8c]:flt.d a2, fa0, fa1
	-[0x80002f90]:csrrs a7, fflags, zero
	-[0x80002f94]:sd a2, 800(a5)
Current Store : [0x80002f98] : sd a7, 808(a5) -- Store: [0x80009308]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fa4]:flt.d a2, fa0, fa1
	-[0x80002fa8]:csrrs a7, fflags, zero
	-[0x80002fac]:sd a2, 816(a5)
Current Store : [0x80002fb0] : sd a7, 824(a5) -- Store: [0x80009318]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fbc]:flt.d a2, fa0, fa1
	-[0x80002fc0]:csrrs a7, fflags, zero
	-[0x80002fc4]:sd a2, 832(a5)
Current Store : [0x80002fc8] : sd a7, 840(a5) -- Store: [0x80009328]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fd4]:flt.d a2, fa0, fa1
	-[0x80002fd8]:csrrs a7, fflags, zero
	-[0x80002fdc]:sd a2, 848(a5)
Current Store : [0x80002fe0] : sd a7, 856(a5) -- Store: [0x80009338]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80002fec]:flt.d a2, fa0, fa1
	-[0x80002ff0]:csrrs a7, fflags, zero
	-[0x80002ff4]:sd a2, 864(a5)
Current Store : [0x80002ff8] : sd a7, 872(a5) -- Store: [0x80009348]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003004]:flt.d a2, fa0, fa1
	-[0x80003008]:csrrs a7, fflags, zero
	-[0x8000300c]:sd a2, 880(a5)
Current Store : [0x80003010] : sd a7, 888(a5) -- Store: [0x80009358]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000301c]:flt.d a2, fa0, fa1
	-[0x80003020]:csrrs a7, fflags, zero
	-[0x80003024]:sd a2, 896(a5)
Current Store : [0x80003028] : sd a7, 904(a5) -- Store: [0x80009368]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003034]:flt.d a2, fa0, fa1
	-[0x80003038]:csrrs a7, fflags, zero
	-[0x8000303c]:sd a2, 912(a5)
Current Store : [0x80003040] : sd a7, 920(a5) -- Store: [0x80009378]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000304c]:flt.d a2, fa0, fa1
	-[0x80003050]:csrrs a7, fflags, zero
	-[0x80003054]:sd a2, 928(a5)
Current Store : [0x80003058] : sd a7, 936(a5) -- Store: [0x80009388]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003064]:flt.d a2, fa0, fa1
	-[0x80003068]:csrrs a7, fflags, zero
	-[0x8000306c]:sd a2, 944(a5)
Current Store : [0x80003070] : sd a7, 952(a5) -- Store: [0x80009398]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000307c]:flt.d a2, fa0, fa1
	-[0x80003080]:csrrs a7, fflags, zero
	-[0x80003084]:sd a2, 960(a5)
Current Store : [0x80003088] : sd a7, 968(a5) -- Store: [0x800093a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003094]:flt.d a2, fa0, fa1
	-[0x80003098]:csrrs a7, fflags, zero
	-[0x8000309c]:sd a2, 976(a5)
Current Store : [0x800030a0] : sd a7, 984(a5) -- Store: [0x800093b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030ac]:flt.d a2, fa0, fa1
	-[0x800030b0]:csrrs a7, fflags, zero
	-[0x800030b4]:sd a2, 992(a5)
Current Store : [0x800030b8] : sd a7, 1000(a5) -- Store: [0x800093c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030c4]:flt.d a2, fa0, fa1
	-[0x800030c8]:csrrs a7, fflags, zero
	-[0x800030cc]:sd a2, 1008(a5)
Current Store : [0x800030d0] : sd a7, 1016(a5) -- Store: [0x800093d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030dc]:flt.d a2, fa0, fa1
	-[0x800030e0]:csrrs a7, fflags, zero
	-[0x800030e4]:sd a2, 1024(a5)
Current Store : [0x800030e8] : sd a7, 1032(a5) -- Store: [0x800093e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800030f4]:flt.d a2, fa0, fa1
	-[0x800030f8]:csrrs a7, fflags, zero
	-[0x800030fc]:sd a2, 1040(a5)
Current Store : [0x80003100] : sd a7, 1048(a5) -- Store: [0x800093f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000310c]:flt.d a2, fa0, fa1
	-[0x80003110]:csrrs a7, fflags, zero
	-[0x80003114]:sd a2, 1056(a5)
Current Store : [0x80003118] : sd a7, 1064(a5) -- Store: [0x80009408]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003124]:flt.d a2, fa0, fa1
	-[0x80003128]:csrrs a7, fflags, zero
	-[0x8000312c]:sd a2, 1072(a5)
Current Store : [0x80003130] : sd a7, 1080(a5) -- Store: [0x80009418]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000313c]:flt.d a2, fa0, fa1
	-[0x80003140]:csrrs a7, fflags, zero
	-[0x80003144]:sd a2, 1088(a5)
Current Store : [0x80003148] : sd a7, 1096(a5) -- Store: [0x80009428]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003154]:flt.d a2, fa0, fa1
	-[0x80003158]:csrrs a7, fflags, zero
	-[0x8000315c]:sd a2, 1104(a5)
Current Store : [0x80003160] : sd a7, 1112(a5) -- Store: [0x80009438]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000316c]:flt.d a2, fa0, fa1
	-[0x80003170]:csrrs a7, fflags, zero
	-[0x80003174]:sd a2, 1120(a5)
Current Store : [0x80003178] : sd a7, 1128(a5) -- Store: [0x80009448]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003184]:flt.d a2, fa0, fa1
	-[0x80003188]:csrrs a7, fflags, zero
	-[0x8000318c]:sd a2, 1136(a5)
Current Store : [0x80003190] : sd a7, 1144(a5) -- Store: [0x80009458]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000319c]:flt.d a2, fa0, fa1
	-[0x800031a0]:csrrs a7, fflags, zero
	-[0x800031a4]:sd a2, 1152(a5)
Current Store : [0x800031a8] : sd a7, 1160(a5) -- Store: [0x80009468]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031b4]:flt.d a2, fa0, fa1
	-[0x800031b8]:csrrs a7, fflags, zero
	-[0x800031bc]:sd a2, 1168(a5)
Current Store : [0x800031c0] : sd a7, 1176(a5) -- Store: [0x80009478]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031cc]:flt.d a2, fa0, fa1
	-[0x800031d0]:csrrs a7, fflags, zero
	-[0x800031d4]:sd a2, 1184(a5)
Current Store : [0x800031d8] : sd a7, 1192(a5) -- Store: [0x80009488]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031e4]:flt.d a2, fa0, fa1
	-[0x800031e8]:csrrs a7, fflags, zero
	-[0x800031ec]:sd a2, 1200(a5)
Current Store : [0x800031f0] : sd a7, 1208(a5) -- Store: [0x80009498]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800031fc]:flt.d a2, fa0, fa1
	-[0x80003200]:csrrs a7, fflags, zero
	-[0x80003204]:sd a2, 1216(a5)
Current Store : [0x80003208] : sd a7, 1224(a5) -- Store: [0x800094a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003214]:flt.d a2, fa0, fa1
	-[0x80003218]:csrrs a7, fflags, zero
	-[0x8000321c]:sd a2, 1232(a5)
Current Store : [0x80003220] : sd a7, 1240(a5) -- Store: [0x800094b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000322c]:flt.d a2, fa0, fa1
	-[0x80003230]:csrrs a7, fflags, zero
	-[0x80003234]:sd a2, 1248(a5)
Current Store : [0x80003238] : sd a7, 1256(a5) -- Store: [0x800094c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003244]:flt.d a2, fa0, fa1
	-[0x80003248]:csrrs a7, fflags, zero
	-[0x8000324c]:sd a2, 1264(a5)
Current Store : [0x80003250] : sd a7, 1272(a5) -- Store: [0x800094d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000325c]:flt.d a2, fa0, fa1
	-[0x80003260]:csrrs a7, fflags, zero
	-[0x80003264]:sd a2, 1280(a5)
Current Store : [0x80003268] : sd a7, 1288(a5) -- Store: [0x800094e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003274]:flt.d a2, fa0, fa1
	-[0x80003278]:csrrs a7, fflags, zero
	-[0x8000327c]:sd a2, 1296(a5)
Current Store : [0x80003280] : sd a7, 1304(a5) -- Store: [0x800094f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000328c]:flt.d a2, fa0, fa1
	-[0x80003290]:csrrs a7, fflags, zero
	-[0x80003294]:sd a2, 1312(a5)
Current Store : [0x80003298] : sd a7, 1320(a5) -- Store: [0x80009508]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032a4]:flt.d a2, fa0, fa1
	-[0x800032a8]:csrrs a7, fflags, zero
	-[0x800032ac]:sd a2, 1328(a5)
Current Store : [0x800032b0] : sd a7, 1336(a5) -- Store: [0x80009518]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032bc]:flt.d a2, fa0, fa1
	-[0x800032c0]:csrrs a7, fflags, zero
	-[0x800032c4]:sd a2, 1344(a5)
Current Store : [0x800032c8] : sd a7, 1352(a5) -- Store: [0x80009528]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032d4]:flt.d a2, fa0, fa1
	-[0x800032d8]:csrrs a7, fflags, zero
	-[0x800032dc]:sd a2, 1360(a5)
Current Store : [0x800032e0] : sd a7, 1368(a5) -- Store: [0x80009538]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800032ec]:flt.d a2, fa0, fa1
	-[0x800032f0]:csrrs a7, fflags, zero
	-[0x800032f4]:sd a2, 1376(a5)
Current Store : [0x800032f8] : sd a7, 1384(a5) -- Store: [0x80009548]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003304]:flt.d a2, fa0, fa1
	-[0x80003308]:csrrs a7, fflags, zero
	-[0x8000330c]:sd a2, 1392(a5)
Current Store : [0x80003310] : sd a7, 1400(a5) -- Store: [0x80009558]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000331c]:flt.d a2, fa0, fa1
	-[0x80003320]:csrrs a7, fflags, zero
	-[0x80003324]:sd a2, 1408(a5)
Current Store : [0x80003328] : sd a7, 1416(a5) -- Store: [0x80009568]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003334]:flt.d a2, fa0, fa1
	-[0x80003338]:csrrs a7, fflags, zero
	-[0x8000333c]:sd a2, 1424(a5)
Current Store : [0x80003340] : sd a7, 1432(a5) -- Store: [0x80009578]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000334c]:flt.d a2, fa0, fa1
	-[0x80003350]:csrrs a7, fflags, zero
	-[0x80003354]:sd a2, 1440(a5)
Current Store : [0x80003358] : sd a7, 1448(a5) -- Store: [0x80009588]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003364]:flt.d a2, fa0, fa1
	-[0x80003368]:csrrs a7, fflags, zero
	-[0x8000336c]:sd a2, 1456(a5)
Current Store : [0x80003370] : sd a7, 1464(a5) -- Store: [0x80009598]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000337c]:flt.d a2, fa0, fa1
	-[0x80003380]:csrrs a7, fflags, zero
	-[0x80003384]:sd a2, 1472(a5)
Current Store : [0x80003388] : sd a7, 1480(a5) -- Store: [0x800095a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003394]:flt.d a2, fa0, fa1
	-[0x80003398]:csrrs a7, fflags, zero
	-[0x8000339c]:sd a2, 1488(a5)
Current Store : [0x800033a0] : sd a7, 1496(a5) -- Store: [0x800095b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033ac]:flt.d a2, fa0, fa1
	-[0x800033b0]:csrrs a7, fflags, zero
	-[0x800033b4]:sd a2, 1504(a5)
Current Store : [0x800033b8] : sd a7, 1512(a5) -- Store: [0x800095c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033c8]:flt.d a2, fa0, fa1
	-[0x800033cc]:csrrs a7, fflags, zero
	-[0x800033d0]:sd a2, 1520(a5)
Current Store : [0x800033d4] : sd a7, 1528(a5) -- Store: [0x800095d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033e0]:flt.d a2, fa0, fa1
	-[0x800033e4]:csrrs a7, fflags, zero
	-[0x800033e8]:sd a2, 1536(a5)
Current Store : [0x800033ec] : sd a7, 1544(a5) -- Store: [0x800095e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800033f8]:flt.d a2, fa0, fa1
	-[0x800033fc]:csrrs a7, fflags, zero
	-[0x80003400]:sd a2, 1552(a5)
Current Store : [0x80003404] : sd a7, 1560(a5) -- Store: [0x800095f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003410]:flt.d a2, fa0, fa1
	-[0x80003414]:csrrs a7, fflags, zero
	-[0x80003418]:sd a2, 1568(a5)
Current Store : [0x8000341c] : sd a7, 1576(a5) -- Store: [0x80009608]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003428]:flt.d a2, fa0, fa1
	-[0x8000342c]:csrrs a7, fflags, zero
	-[0x80003430]:sd a2, 1584(a5)
Current Store : [0x80003434] : sd a7, 1592(a5) -- Store: [0x80009618]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003440]:flt.d a2, fa0, fa1
	-[0x80003444]:csrrs a7, fflags, zero
	-[0x80003448]:sd a2, 1600(a5)
Current Store : [0x8000344c] : sd a7, 1608(a5) -- Store: [0x80009628]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003458]:flt.d a2, fa0, fa1
	-[0x8000345c]:csrrs a7, fflags, zero
	-[0x80003460]:sd a2, 1616(a5)
Current Store : [0x80003464] : sd a7, 1624(a5) -- Store: [0x80009638]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003470]:flt.d a2, fa0, fa1
	-[0x80003474]:csrrs a7, fflags, zero
	-[0x80003478]:sd a2, 1632(a5)
Current Store : [0x8000347c] : sd a7, 1640(a5) -- Store: [0x80009648]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003488]:flt.d a2, fa0, fa1
	-[0x8000348c]:csrrs a7, fflags, zero
	-[0x80003490]:sd a2, 1648(a5)
Current Store : [0x80003494] : sd a7, 1656(a5) -- Store: [0x80009658]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034a0]:flt.d a2, fa0, fa1
	-[0x800034a4]:csrrs a7, fflags, zero
	-[0x800034a8]:sd a2, 1664(a5)
Current Store : [0x800034ac] : sd a7, 1672(a5) -- Store: [0x80009668]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034b8]:flt.d a2, fa0, fa1
	-[0x800034bc]:csrrs a7, fflags, zero
	-[0x800034c0]:sd a2, 1680(a5)
Current Store : [0x800034c4] : sd a7, 1688(a5) -- Store: [0x80009678]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034d0]:flt.d a2, fa0, fa1
	-[0x800034d4]:csrrs a7, fflags, zero
	-[0x800034d8]:sd a2, 1696(a5)
Current Store : [0x800034dc] : sd a7, 1704(a5) -- Store: [0x80009688]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800034e8]:flt.d a2, fa0, fa1
	-[0x800034ec]:csrrs a7, fflags, zero
	-[0x800034f0]:sd a2, 1712(a5)
Current Store : [0x800034f4] : sd a7, 1720(a5) -- Store: [0x80009698]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003500]:flt.d a2, fa0, fa1
	-[0x80003504]:csrrs a7, fflags, zero
	-[0x80003508]:sd a2, 1728(a5)
Current Store : [0x8000350c] : sd a7, 1736(a5) -- Store: [0x800096a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003518]:flt.d a2, fa0, fa1
	-[0x8000351c]:csrrs a7, fflags, zero
	-[0x80003520]:sd a2, 1744(a5)
Current Store : [0x80003524] : sd a7, 1752(a5) -- Store: [0x800096b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003530]:flt.d a2, fa0, fa1
	-[0x80003534]:csrrs a7, fflags, zero
	-[0x80003538]:sd a2, 1760(a5)
Current Store : [0x8000353c] : sd a7, 1768(a5) -- Store: [0x800096c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003548]:flt.d a2, fa0, fa1
	-[0x8000354c]:csrrs a7, fflags, zero
	-[0x80003550]:sd a2, 1776(a5)
Current Store : [0x80003554] : sd a7, 1784(a5) -- Store: [0x800096d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003560]:flt.d a2, fa0, fa1
	-[0x80003564]:csrrs a7, fflags, zero
	-[0x80003568]:sd a2, 1792(a5)
Current Store : [0x8000356c] : sd a7, 1800(a5) -- Store: [0x800096e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003578]:flt.d a2, fa0, fa1
	-[0x8000357c]:csrrs a7, fflags, zero
	-[0x80003580]:sd a2, 1808(a5)
Current Store : [0x80003584] : sd a7, 1816(a5) -- Store: [0x800096f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003590]:flt.d a2, fa0, fa1
	-[0x80003594]:csrrs a7, fflags, zero
	-[0x80003598]:sd a2, 1824(a5)
Current Store : [0x8000359c] : sd a7, 1832(a5) -- Store: [0x80009708]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035a8]:flt.d a2, fa0, fa1
	-[0x800035ac]:csrrs a7, fflags, zero
	-[0x800035b0]:sd a2, 1840(a5)
Current Store : [0x800035b4] : sd a7, 1848(a5) -- Store: [0x80009718]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035c0]:flt.d a2, fa0, fa1
	-[0x800035c4]:csrrs a7, fflags, zero
	-[0x800035c8]:sd a2, 1856(a5)
Current Store : [0x800035cc] : sd a7, 1864(a5) -- Store: [0x80009728]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035d8]:flt.d a2, fa0, fa1
	-[0x800035dc]:csrrs a7, fflags, zero
	-[0x800035e0]:sd a2, 1872(a5)
Current Store : [0x800035e4] : sd a7, 1880(a5) -- Store: [0x80009738]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800035f0]:flt.d a2, fa0, fa1
	-[0x800035f4]:csrrs a7, fflags, zero
	-[0x800035f8]:sd a2, 1888(a5)
Current Store : [0x800035fc] : sd a7, 1896(a5) -- Store: [0x80009748]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003608]:flt.d a2, fa0, fa1
	-[0x8000360c]:csrrs a7, fflags, zero
	-[0x80003610]:sd a2, 1904(a5)
Current Store : [0x80003614] : sd a7, 1912(a5) -- Store: [0x80009758]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003620]:flt.d a2, fa0, fa1
	-[0x80003624]:csrrs a7, fflags, zero
	-[0x80003628]:sd a2, 1920(a5)
Current Store : [0x8000362c] : sd a7, 1928(a5) -- Store: [0x80009768]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003638]:flt.d a2, fa0, fa1
	-[0x8000363c]:csrrs a7, fflags, zero
	-[0x80003640]:sd a2, 1936(a5)
Current Store : [0x80003644] : sd a7, 1944(a5) -- Store: [0x80009778]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003650]:flt.d a2, fa0, fa1
	-[0x80003654]:csrrs a7, fflags, zero
	-[0x80003658]:sd a2, 1952(a5)
Current Store : [0x8000365c] : sd a7, 1960(a5) -- Store: [0x80009788]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003668]:flt.d a2, fa0, fa1
	-[0x8000366c]:csrrs a7, fflags, zero
	-[0x80003670]:sd a2, 1968(a5)
Current Store : [0x80003674] : sd a7, 1976(a5) -- Store: [0x80009798]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003680]:flt.d a2, fa0, fa1
	-[0x80003684]:csrrs a7, fflags, zero
	-[0x80003688]:sd a2, 1984(a5)
Current Store : [0x8000368c] : sd a7, 1992(a5) -- Store: [0x800097a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003698]:flt.d a2, fa0, fa1
	-[0x8000369c]:csrrs a7, fflags, zero
	-[0x800036a0]:sd a2, 2000(a5)
Current Store : [0x800036a4] : sd a7, 2008(a5) -- Store: [0x800097b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036b0]:flt.d a2, fa0, fa1
	-[0x800036b4]:csrrs a7, fflags, zero
	-[0x800036b8]:sd a2, 2016(a5)
Current Store : [0x800036bc] : sd a7, 2024(a5) -- Store: [0x800097c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036d0]:flt.d a2, fa0, fa1
	-[0x800036d4]:csrrs a7, fflags, zero
	-[0x800036d8]:sd a2, 0(a5)
Current Store : [0x800036dc] : sd a7, 8(a5) -- Store: [0x800097d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800036e8]:flt.d a2, fa0, fa1
	-[0x800036ec]:csrrs a7, fflags, zero
	-[0x800036f0]:sd a2, 16(a5)
Current Store : [0x800036f4] : sd a7, 24(a5) -- Store: [0x800097e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003700]:flt.d a2, fa0, fa1
	-[0x80003704]:csrrs a7, fflags, zero
	-[0x80003708]:sd a2, 32(a5)
Current Store : [0x8000370c] : sd a7, 40(a5) -- Store: [0x800097f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003718]:flt.d a2, fa0, fa1
	-[0x8000371c]:csrrs a7, fflags, zero
	-[0x80003720]:sd a2, 48(a5)
Current Store : [0x80003724] : sd a7, 56(a5) -- Store: [0x80009808]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003730]:flt.d a2, fa0, fa1
	-[0x80003734]:csrrs a7, fflags, zero
	-[0x80003738]:sd a2, 64(a5)
Current Store : [0x8000373c] : sd a7, 72(a5) -- Store: [0x80009818]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003748]:flt.d a2, fa0, fa1
	-[0x8000374c]:csrrs a7, fflags, zero
	-[0x80003750]:sd a2, 80(a5)
Current Store : [0x80003754] : sd a7, 88(a5) -- Store: [0x80009828]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003760]:flt.d a2, fa0, fa1
	-[0x80003764]:csrrs a7, fflags, zero
	-[0x80003768]:sd a2, 96(a5)
Current Store : [0x8000376c] : sd a7, 104(a5) -- Store: [0x80009838]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003778]:flt.d a2, fa0, fa1
	-[0x8000377c]:csrrs a7, fflags, zero
	-[0x80003780]:sd a2, 112(a5)
Current Store : [0x80003784] : sd a7, 120(a5) -- Store: [0x80009848]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003790]:flt.d a2, fa0, fa1
	-[0x80003794]:csrrs a7, fflags, zero
	-[0x80003798]:sd a2, 128(a5)
Current Store : [0x8000379c] : sd a7, 136(a5) -- Store: [0x80009858]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800037a8]:flt.d a2, fa0, fa1
	-[0x800037ac]:csrrs a7, fflags, zero
	-[0x800037b0]:sd a2, 144(a5)
Current Store : [0x800037b4] : sd a7, 152(a5) -- Store: [0x80009868]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800037c0]:flt.d a2, fa0, fa1
	-[0x800037c4]:csrrs a7, fflags, zero
	-[0x800037c8]:sd a2, 160(a5)
Current Store : [0x800037cc] : sd a7, 168(a5) -- Store: [0x80009878]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800037d8]:flt.d a2, fa0, fa1
	-[0x800037dc]:csrrs a7, fflags, zero
	-[0x800037e0]:sd a2, 176(a5)
Current Store : [0x800037e4] : sd a7, 184(a5) -- Store: [0x80009888]:0x0000000000000010




Last Coverpoint : ['fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800037f0]:flt.d a2, fa0, fa1
	-[0x800037f4]:csrrs a7, fflags, zero
	-[0x800037f8]:sd a2, 192(a5)
Current Store : [0x800037fc] : sd a7, 200(a5) -- Store: [0x80009898]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003808]:flt.d a2, fa0, fa1
	-[0x8000380c]:csrrs a7, fflags, zero
	-[0x80003810]:sd a2, 208(a5)
Current Store : [0x80003814] : sd a7, 216(a5) -- Store: [0x800098a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003820]:flt.d a2, fa0, fa1
	-[0x80003824]:csrrs a7, fflags, zero
	-[0x80003828]:sd a2, 224(a5)
Current Store : [0x8000382c] : sd a7, 232(a5) -- Store: [0x800098b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003838]:flt.d a2, fa0, fa1
	-[0x8000383c]:csrrs a7, fflags, zero
	-[0x80003840]:sd a2, 240(a5)
Current Store : [0x80003844] : sd a7, 248(a5) -- Store: [0x800098c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003850]:flt.d a2, fa0, fa1
	-[0x80003854]:csrrs a7, fflags, zero
	-[0x80003858]:sd a2, 256(a5)
Current Store : [0x8000385c] : sd a7, 264(a5) -- Store: [0x800098d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003868]:flt.d a2, fa0, fa1
	-[0x8000386c]:csrrs a7, fflags, zero
	-[0x80003870]:sd a2, 272(a5)
Current Store : [0x80003874] : sd a7, 280(a5) -- Store: [0x800098e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003880]:flt.d a2, fa0, fa1
	-[0x80003884]:csrrs a7, fflags, zero
	-[0x80003888]:sd a2, 288(a5)
Current Store : [0x8000388c] : sd a7, 296(a5) -- Store: [0x800098f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003898]:flt.d a2, fa0, fa1
	-[0x8000389c]:csrrs a7, fflags, zero
	-[0x800038a0]:sd a2, 304(a5)
Current Store : [0x800038a4] : sd a7, 312(a5) -- Store: [0x80009908]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800038b0]:flt.d a2, fa0, fa1
	-[0x800038b4]:csrrs a7, fflags, zero
	-[0x800038b8]:sd a2, 320(a5)
Current Store : [0x800038bc] : sd a7, 328(a5) -- Store: [0x80009918]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800038c8]:flt.d a2, fa0, fa1
	-[0x800038cc]:csrrs a7, fflags, zero
	-[0x800038d0]:sd a2, 336(a5)
Current Store : [0x800038d4] : sd a7, 344(a5) -- Store: [0x80009928]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800038e0]:flt.d a2, fa0, fa1
	-[0x800038e4]:csrrs a7, fflags, zero
	-[0x800038e8]:sd a2, 352(a5)
Current Store : [0x800038ec] : sd a7, 360(a5) -- Store: [0x80009938]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800038f8]:flt.d a2, fa0, fa1
	-[0x800038fc]:csrrs a7, fflags, zero
	-[0x80003900]:sd a2, 368(a5)
Current Store : [0x80003904] : sd a7, 376(a5) -- Store: [0x80009948]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003910]:flt.d a2, fa0, fa1
	-[0x80003914]:csrrs a7, fflags, zero
	-[0x80003918]:sd a2, 384(a5)
Current Store : [0x8000391c] : sd a7, 392(a5) -- Store: [0x80009958]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003928]:flt.d a2, fa0, fa1
	-[0x8000392c]:csrrs a7, fflags, zero
	-[0x80003930]:sd a2, 400(a5)
Current Store : [0x80003934] : sd a7, 408(a5) -- Store: [0x80009968]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003940]:flt.d a2, fa0, fa1
	-[0x80003944]:csrrs a7, fflags, zero
	-[0x80003948]:sd a2, 416(a5)
Current Store : [0x8000394c] : sd a7, 424(a5) -- Store: [0x80009978]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003958]:flt.d a2, fa0, fa1
	-[0x8000395c]:csrrs a7, fflags, zero
	-[0x80003960]:sd a2, 432(a5)
Current Store : [0x80003964] : sd a7, 440(a5) -- Store: [0x80009988]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003970]:flt.d a2, fa0, fa1
	-[0x80003974]:csrrs a7, fflags, zero
	-[0x80003978]:sd a2, 448(a5)
Current Store : [0x8000397c] : sd a7, 456(a5) -- Store: [0x80009998]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003988]:flt.d a2, fa0, fa1
	-[0x8000398c]:csrrs a7, fflags, zero
	-[0x80003990]:sd a2, 464(a5)
Current Store : [0x80003994] : sd a7, 472(a5) -- Store: [0x800099a8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800039a0]:flt.d a2, fa0, fa1
	-[0x800039a4]:csrrs a7, fflags, zero
	-[0x800039a8]:sd a2, 480(a5)
Current Store : [0x800039ac] : sd a7, 488(a5) -- Store: [0x800099b8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800039b8]:flt.d a2, fa0, fa1
	-[0x800039bc]:csrrs a7, fflags, zero
	-[0x800039c0]:sd a2, 496(a5)
Current Store : [0x800039c4] : sd a7, 504(a5) -- Store: [0x800099c8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800039d0]:flt.d a2, fa0, fa1
	-[0x800039d4]:csrrs a7, fflags, zero
	-[0x800039d8]:sd a2, 512(a5)
Current Store : [0x800039dc] : sd a7, 520(a5) -- Store: [0x800099d8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800039e8]:flt.d a2, fa0, fa1
	-[0x800039ec]:csrrs a7, fflags, zero
	-[0x800039f0]:sd a2, 528(a5)
Current Store : [0x800039f4] : sd a7, 536(a5) -- Store: [0x800099e8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003a00]:flt.d a2, fa0, fa1
	-[0x80003a04]:csrrs a7, fflags, zero
	-[0x80003a08]:sd a2, 544(a5)
Current Store : [0x80003a0c] : sd a7, 552(a5) -- Store: [0x800099f8]:0x0000000000000010




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003a18]:flt.d a2, fa0, fa1
	-[0x80003a1c]:csrrs a7, fflags, zero
	-[0x80003a20]:sd a2, 560(a5)
Current Store : [0x80003a24] : sd a7, 568(a5) -- Store: [0x80009a08]:0x0000000000000010




Last Coverpoint : ['opcode : flt.d', 'rd : x12', 'rs1 : f10', 'rs2 : f11', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003a30]:flt.d a2, fa0, fa1
	-[0x80003a34]:csrrs a7, fflags, zero
	-[0x80003a38]:sd a2, 576(a5)
Current Store : [0x80003a3c] : sd a7, 584(a5) -- Store: [0x80009a18]:0x0000000000000010




Last Coverpoint : ['opcode : flt.d', 'rd : x12', 'rs1 : f10', 'rs2 : f11', 'rs1 != rs2', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80003a48]:flt.d a2, fa0, fa1
	-[0x80003a4c]:csrrs a7, fflags, zero
	-[0x80003a50]:sd a2, 592(a5)
Current Store : [0x80003a54] : sd a7, 600(a5) -- Store: [0x80009a28]:0x0000000000000010





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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                           |                                                     code                                                      |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80007610]<br>0x0000000000000000|- opcode : flt.d<br> - rd : x20<br> - rs1 : f30<br> - rs2 : f6<br> - rs1 != rs2<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br> |[0x800003b8]:flt.d s4, ft10, ft6<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd s4, 0(a5)<br>     |
|   2|[0x80007620]<br>0x0000000000000000|- rd : x28<br> - rs1 : f1<br> - rs2 : f1<br> - rs1 == rs2<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                       |[0x800003d0]:flt.d t3, ft1, ft1<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:sd t3, 16(a5)<br>     |
|   3|[0x80007630]<br>0x0000000000000001|- rd : x27<br> - rs1 : f27<br> - rs2 : f31<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                      |[0x800003e8]:flt.d s11, fs11, ft11<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:sd s11, 32(a5)<br> |
|   4|[0x80007640]<br>0x0000000000000000|- rd : x21<br> - rs1 : f25<br> - rs2 : f0<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x80000400]:flt.d s5, fs9, ft0<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:sd s5, 48(a5)<br>     |
|   5|[0x80007650]<br>0x0000000000000000|- rd : x24<br> - rs1 : f6<br> - rs2 : f24<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x80000418]:flt.d s8, ft6, fs8<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:sd s8, 64(a5)<br>     |
|   6|[0x80007660]<br>0x0000000000000000|- rd : x9<br> - rs1 : f26<br> - rs2 : f4<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                        |[0x80000430]:flt.d s1, fs10, ft4<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd s1, 80(a5)<br>    |
|   7|[0x80007670]<br>0x0000000000000000|- rd : x0<br> - rs1 : f12<br> - rs2 : f21<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                       |[0x80000448]:flt.d zero, fa2, fs5<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:sd zero, 96(a5)<br> |
|   8|[0x80007680]<br>0x0000000000000000|- rd : x13<br> - rs1 : f13<br> - rs2 : f25<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                      |[0x80000460]:flt.d a3, fa3, fs9<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sd a3, 112(a5)<br>    |
|   9|[0x80007690]<br>0x0000000000000000|- rd : x29<br> - rs1 : f24<br> - rs2 : f2<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                       |[0x80000478]:flt.d t4, fs8, ft2<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd t4, 128(a5)<br>    |
|  10|[0x800076a0]<br>0x0000000000000000|- rd : x12<br> - rs1 : f23<br> - rs2 : f9<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                       |[0x80000490]:flt.d a2, fs7, fs1<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd a2, 144(a5)<br>    |
|  11|[0x800076b0]<br>0x0000000000000001|- rd : x7<br> - rs1 : f4<br> - rs2 : f22<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                        |[0x800004a8]:flt.d t2, ft4, fs6<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:sd t2, 160(a5)<br>    |
|  12|[0x800076c0]<br>0x0000000000000000|- rd : x26<br> - rs1 : f5<br> - rs2 : f10<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                       |[0x800004c0]:flt.d s10, ft5, fa0<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:sd s10, 176(a5)<br>  |
|  13|[0x800076d0]<br>0x0000000000000001|- rd : x31<br> - rs1 : f16<br> - rs2 : f26<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                      |[0x800004d8]:flt.d t6, fa6, fs10<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd t6, 192(a5)<br>   |
|  14|[0x800076e0]<br>0x0000000000000001|- rd : x30<br> - rs1 : f9<br> - rs2 : f14<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                       |[0x800004f0]:flt.d t5, fs1, fa4<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd t5, 208(a5)<br>    |
|  15|[0x800076f0]<br>0x0000000000000001|- rd : x22<br> - rs1 : f8<br> - rs2 : f19<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                       |[0x80000508]:flt.d s6, fs0, fs3<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:sd s6, 224(a5)<br>    |
|  16|[0x80007700]<br>0x0000000000000001|- rd : x10<br> - rs1 : f18<br> - rs2 : f20<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                      |[0x80000520]:flt.d a0, fs2, fs4<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:sd a0, 240(a5)<br>    |
|  17|[0x80007710]<br>0x0000000000000001|- rd : x19<br> - rs1 : f28<br> - rs2 : f29<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                      |[0x80000538]:flt.d s3, ft8, ft9<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:sd s3, 256(a5)<br>    |
|  18|[0x80007720]<br>0x0000000000000001|- rd : x8<br> - rs1 : f10<br> - rs2 : f5<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                        |[0x80000550]:flt.d fp, fa0, ft5<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd fp, 272(a5)<br>    |
|  19|[0x80007730]<br>0x0000000000000001|- rd : x6<br> - rs1 : f15<br> - rs2 : f18<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                       |[0x80000568]:flt.d t1, fa5, fs2<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd t1, 288(a5)<br>    |
|  20|[0x80007740]<br>0x0000000000000001|- rd : x25<br> - rs1 : f17<br> - rs2 : f15<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                      |[0x80000580]:flt.d s9, fa7, fa5<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:sd s9, 304(a5)<br>    |
|  21|[0x80007750]<br>0x0000000000000001|- rd : x4<br> - rs1 : f14<br> - rs2 : f8<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                        |[0x80000598]:flt.d tp, fa4, fs0<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:sd tp, 320(a5)<br>    |
|  22|[0x80007760]<br>0x0000000000000001|- rd : x14<br> - rs1 : f21<br> - rs2 : f7<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x800005b0]:flt.d a4, fs5, ft7<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:sd a4, 336(a5)<br>    |
|  23|[0x80007770]<br>0x0000000000000001|- rd : x17<br> - rs1 : f3<br> - rs2 : f12<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x800005d4]:flt.d a7, ft3, fa2<br> [0x800005d8]:csrrs s5, fflags, zero<br> [0x800005dc]:sd a7, 0(s3)<br>      |
|  24|[0x80007780]<br>0x0000000000000001|- rd : x23<br> - rs1 : f22<br> - rs2 : f27<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                      |[0x800005f8]:flt.d s7, fs6, fs11<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:sd s7, 0(a5)<br>     |
|  25|[0x80007790]<br>0x0000000000000001|- rd : x2<br> - rs1 : f0<br> - rs2 : f11<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                        |[0x80000610]:flt.d sp, ft0, fa1<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:sd sp, 16(a5)<br>     |
|  26|[0x800077a0]<br>0x0000000000000000|- rd : x1<br> - rs1 : f19<br> - rs2 : f30<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                       |[0x80000628]:flt.d ra, fs3, ft10<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd ra, 32(a5)<br>    |
|  27|[0x800077b0]<br>0x0000000000000000|- rd : x15<br> - rs1 : f29<br> - rs2 : f13<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                      |[0x8000064c]:flt.d a5, ft9, fa3<br> [0x80000650]:csrrs s5, fflags, zero<br> [0x80000654]:sd a5, 0(s3)<br>      |
|  28|[0x800077c0]<br>0x0000000000000000|- rd : x11<br> - rs1 : f20<br> - rs2 : f3<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x80000670]:flt.d a1, fs4, ft3<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:sd a1, 0(a5)<br>      |
|  29|[0x800077d0]<br>0x0000000000000000|- rd : x5<br> - rs1 : f11<br> - rs2 : f17<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                       |[0x80000688]:flt.d t0, fa1, fa7<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sd t0, 16(a5)<br>     |
|  30|[0x800077e0]<br>0x0000000000000000|- rd : x18<br> - rs1 : f2<br> - rs2 : f16<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                       |[0x800006a0]:flt.d s2, ft2, fa6<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:sd s2, 32(a5)<br>     |
|  31|[0x800077f0]<br>0x0000000000000000|- rd : x3<br> - rs1 : f7<br> - rs2 : f28<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                        |[0x800006b8]:flt.d gp, ft7, ft8<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd gp, 48(a5)<br>     |
|  32|[0x80007800]<br>0x0000000000000000|- rd : x16<br> - rs1 : f31<br> - rs2 : f23<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                      |[0x800006dc]:flt.d a6, ft11, fs7<br> [0x800006e0]:csrrs s5, fflags, zero<br> [0x800006e4]:sd a6, 0(s3)<br>     |
|  33|[0x80007810]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000700]:flt.d a2, fa0, fa1<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:sd a2, 0(a5)<br>      |
|  34|[0x80007820]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000718]:flt.d a2, fa0, fa1<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:sd a2, 16(a5)<br>     |
|  35|[0x80007830]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000730]:flt.d a2, fa0, fa1<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:sd a2, 32(a5)<br>     |
|  36|[0x80007840]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000748]:flt.d a2, fa0, fa1<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:sd a2, 48(a5)<br>     |
|  37|[0x80007850]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000760]:flt.d a2, fa0, fa1<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:sd a2, 64(a5)<br>     |
|  38|[0x80007860]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000778]:flt.d a2, fa0, fa1<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:sd a2, 80(a5)<br>     |
|  39|[0x80007870]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000790]:flt.d a2, fa0, fa1<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:sd a2, 96(a5)<br>     |
|  40|[0x80007880]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800007a8]:flt.d a2, fa0, fa1<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:sd a2, 112(a5)<br>    |
|  41|[0x80007890]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800007c0]:flt.d a2, fa0, fa1<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:sd a2, 128(a5)<br>    |
|  42|[0x800078a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800007d8]:flt.d a2, fa0, fa1<br> [0x800007dc]:csrrs a7, fflags, zero<br> [0x800007e0]:sd a2, 144(a5)<br>    |
|  43|[0x800078b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800007f0]:flt.d a2, fa0, fa1<br> [0x800007f4]:csrrs a7, fflags, zero<br> [0x800007f8]:sd a2, 160(a5)<br>    |
|  44|[0x800078c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000808]:flt.d a2, fa0, fa1<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:sd a2, 176(a5)<br>    |
|  45|[0x800078d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000820]:flt.d a2, fa0, fa1<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:sd a2, 192(a5)<br>    |
|  46|[0x800078e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000838]:flt.d a2, fa0, fa1<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:sd a2, 208(a5)<br>    |
|  47|[0x800078f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000850]:flt.d a2, fa0, fa1<br> [0x80000854]:csrrs a7, fflags, zero<br> [0x80000858]:sd a2, 224(a5)<br>    |
|  48|[0x80007900]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000868]:flt.d a2, fa0, fa1<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:sd a2, 240(a5)<br>    |
|  49|[0x80007910]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000880]:flt.d a2, fa0, fa1<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:sd a2, 256(a5)<br>    |
|  50|[0x80007920]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000898]:flt.d a2, fa0, fa1<br> [0x8000089c]:csrrs a7, fflags, zero<br> [0x800008a0]:sd a2, 272(a5)<br>    |
|  51|[0x80007930]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800008b0]:flt.d a2, fa0, fa1<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:sd a2, 288(a5)<br>    |
|  52|[0x80007940]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800008c8]:flt.d a2, fa0, fa1<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:sd a2, 304(a5)<br>    |
|  53|[0x80007950]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800008e0]:flt.d a2, fa0, fa1<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:sd a2, 320(a5)<br>    |
|  54|[0x80007960]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800008f8]:flt.d a2, fa0, fa1<br> [0x800008fc]:csrrs a7, fflags, zero<br> [0x80000900]:sd a2, 336(a5)<br>    |
|  55|[0x80007970]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000910]:flt.d a2, fa0, fa1<br> [0x80000914]:csrrs a7, fflags, zero<br> [0x80000918]:sd a2, 352(a5)<br>    |
|  56|[0x80007980]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000928]:flt.d a2, fa0, fa1<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:sd a2, 368(a5)<br>    |
|  57|[0x80007990]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000940]:flt.d a2, fa0, fa1<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:sd a2, 384(a5)<br>    |
|  58|[0x800079a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000958]:flt.d a2, fa0, fa1<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:sd a2, 400(a5)<br>    |
|  59|[0x800079b0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000970]:flt.d a2, fa0, fa1<br> [0x80000974]:csrrs a7, fflags, zero<br> [0x80000978]:sd a2, 416(a5)<br>    |
|  60|[0x800079c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000988]:flt.d a2, fa0, fa1<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:sd a2, 432(a5)<br>    |
|  61|[0x800079d0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800009a0]:flt.d a2, fa0, fa1<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:sd a2, 448(a5)<br>    |
|  62|[0x800079e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800009b8]:flt.d a2, fa0, fa1<br> [0x800009bc]:csrrs a7, fflags, zero<br> [0x800009c0]:sd a2, 464(a5)<br>    |
|  63|[0x800079f0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800009d0]:flt.d a2, fa0, fa1<br> [0x800009d4]:csrrs a7, fflags, zero<br> [0x800009d8]:sd a2, 480(a5)<br>    |
|  64|[0x80007a00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800009e8]:flt.d a2, fa0, fa1<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:sd a2, 496(a5)<br>    |
|  65|[0x80007a10]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a00]:flt.d a2, fa0, fa1<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:sd a2, 512(a5)<br>    |
|  66|[0x80007a20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000a18]:flt.d a2, fa0, fa1<br> [0x80000a1c]:csrrs a7, fflags, zero<br> [0x80000a20]:sd a2, 528(a5)<br>    |
|  67|[0x80007a30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000a30]:flt.d a2, fa0, fa1<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:sd a2, 544(a5)<br>    |
|  68|[0x80007a40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a48]:flt.d a2, fa0, fa1<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:sd a2, 560(a5)<br>    |
|  69|[0x80007a50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a60]:flt.d a2, fa0, fa1<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:sd a2, 576(a5)<br>    |
|  70|[0x80007a60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a78]:flt.d a2, fa0, fa1<br> [0x80000a7c]:csrrs a7, fflags, zero<br> [0x80000a80]:sd a2, 592(a5)<br>    |
|  71|[0x80007a70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000a90]:flt.d a2, fa0, fa1<br> [0x80000a94]:csrrs a7, fflags, zero<br> [0x80000a98]:sd a2, 608(a5)<br>    |
|  72|[0x80007a80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000aa8]:flt.d a2, fa0, fa1<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:sd a2, 624(a5)<br>    |
|  73|[0x80007a90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ac0]:flt.d a2, fa0, fa1<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:sd a2, 640(a5)<br>    |
|  74|[0x80007aa0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ad8]:flt.d a2, fa0, fa1<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:sd a2, 656(a5)<br>    |
|  75|[0x80007ab0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000af0]:flt.d a2, fa0, fa1<br> [0x80000af4]:csrrs a7, fflags, zero<br> [0x80000af8]:sd a2, 672(a5)<br>    |
|  76|[0x80007ac0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b08]:flt.d a2, fa0, fa1<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:sd a2, 688(a5)<br>    |
|  77|[0x80007ad0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b20]:flt.d a2, fa0, fa1<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:sd a2, 704(a5)<br>    |
|  78|[0x80007ae0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b38]:flt.d a2, fa0, fa1<br> [0x80000b3c]:csrrs a7, fflags, zero<br> [0x80000b40]:sd a2, 720(a5)<br>    |
|  79|[0x80007af0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b50]:flt.d a2, fa0, fa1<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:sd a2, 736(a5)<br>    |
|  80|[0x80007b00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b68]:flt.d a2, fa0, fa1<br> [0x80000b6c]:csrrs a7, fflags, zero<br> [0x80000b70]:sd a2, 752(a5)<br>    |
|  81|[0x80007b10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b80]:flt.d a2, fa0, fa1<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:sd a2, 768(a5)<br>    |
|  82|[0x80007b20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000b98]:flt.d a2, fa0, fa1<br> [0x80000b9c]:csrrs a7, fflags, zero<br> [0x80000ba0]:sd a2, 784(a5)<br>    |
|  83|[0x80007b30]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000bb0]:flt.d a2, fa0, fa1<br> [0x80000bb4]:csrrs a7, fflags, zero<br> [0x80000bb8]:sd a2, 800(a5)<br>    |
|  84|[0x80007b40]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000bc8]:flt.d a2, fa0, fa1<br> [0x80000bcc]:csrrs a7, fflags, zero<br> [0x80000bd0]:sd a2, 816(a5)<br>    |
|  85|[0x80007b50]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000be0]:flt.d a2, fa0, fa1<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:sd a2, 832(a5)<br>    |
|  86|[0x80007b60]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000bf8]:flt.d a2, fa0, fa1<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:sd a2, 848(a5)<br>    |
|  87|[0x80007b70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c10]:flt.d a2, fa0, fa1<br> [0x80000c14]:csrrs a7, fflags, zero<br> [0x80000c18]:sd a2, 864(a5)<br>    |
|  88|[0x80007b80]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c28]:flt.d a2, fa0, fa1<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:sd a2, 880(a5)<br>    |
|  89|[0x80007b90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c40]:flt.d a2, fa0, fa1<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:sd a2, 896(a5)<br>    |
|  90|[0x80007ba0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000c58]:flt.d a2, fa0, fa1<br> [0x80000c5c]:csrrs a7, fflags, zero<br> [0x80000c60]:sd a2, 912(a5)<br>    |
|  91|[0x80007bb0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000c70]:flt.d a2, fa0, fa1<br> [0x80000c74]:csrrs a7, fflags, zero<br> [0x80000c78]:sd a2, 928(a5)<br>    |
|  92|[0x80007bc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000c88]:flt.d a2, fa0, fa1<br> [0x80000c8c]:csrrs a7, fflags, zero<br> [0x80000c90]:sd a2, 944(a5)<br>    |
|  93|[0x80007bd0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ca0]:flt.d a2, fa0, fa1<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:sd a2, 960(a5)<br>    |
|  94|[0x80007be0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000cb8]:flt.d a2, fa0, fa1<br> [0x80000cbc]:csrrs a7, fflags, zero<br> [0x80000cc0]:sd a2, 976(a5)<br>    |
|  95|[0x80007bf0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000cd0]:flt.d a2, fa0, fa1<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:sd a2, 992(a5)<br>    |
|  96|[0x80007c00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ce8]:flt.d a2, fa0, fa1<br> [0x80000cec]:csrrs a7, fflags, zero<br> [0x80000cf0]:sd a2, 1008(a5)<br>   |
|  97|[0x80007c10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d00]:flt.d a2, fa0, fa1<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:sd a2, 1024(a5)<br>   |
|  98|[0x80007c20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d18]:flt.d a2, fa0, fa1<br> [0x80000d1c]:csrrs a7, fflags, zero<br> [0x80000d20]:sd a2, 1040(a5)<br>   |
|  99|[0x80007c30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d30]:flt.d a2, fa0, fa1<br> [0x80000d34]:csrrs a7, fflags, zero<br> [0x80000d38]:sd a2, 1056(a5)<br>   |
| 100|[0x80007c40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d48]:flt.d a2, fa0, fa1<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:sd a2, 1072(a5)<br>   |
| 101|[0x80007c50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d60]:flt.d a2, fa0, fa1<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:sd a2, 1088(a5)<br>   |
| 102|[0x80007c60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d78]:flt.d a2, fa0, fa1<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:sd a2, 1104(a5)<br>   |
| 103|[0x80007c70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000d90]:flt.d a2, fa0, fa1<br> [0x80000d94]:csrrs a7, fflags, zero<br> [0x80000d98]:sd a2, 1120(a5)<br>   |
| 104|[0x80007c80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000da8]:flt.d a2, fa0, fa1<br> [0x80000dac]:csrrs a7, fflags, zero<br> [0x80000db0]:sd a2, 1136(a5)<br>   |
| 105|[0x80007c90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000dc0]:flt.d a2, fa0, fa1<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:sd a2, 1152(a5)<br>   |
| 106|[0x80007ca0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000dd8]:flt.d a2, fa0, fa1<br> [0x80000ddc]:csrrs a7, fflags, zero<br> [0x80000de0]:sd a2, 1168(a5)<br>   |
| 107|[0x80007cb0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000df0]:flt.d a2, fa0, fa1<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:sd a2, 1184(a5)<br>   |
| 108|[0x80007cc0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000e08]:flt.d a2, fa0, fa1<br> [0x80000e0c]:csrrs a7, fflags, zero<br> [0x80000e10]:sd a2, 1200(a5)<br>   |
| 109|[0x80007cd0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000e20]:flt.d a2, fa0, fa1<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:sd a2, 1216(a5)<br>   |
| 110|[0x80007ce0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e38]:flt.d a2, fa0, fa1<br> [0x80000e3c]:csrrs a7, fflags, zero<br> [0x80000e40]:sd a2, 1232(a5)<br>   |
| 111|[0x80007cf0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e50]:flt.d a2, fa0, fa1<br> [0x80000e54]:csrrs a7, fflags, zero<br> [0x80000e58]:sd a2, 1248(a5)<br>   |
| 112|[0x80007d00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e68]:flt.d a2, fa0, fa1<br> [0x80000e6c]:csrrs a7, fflags, zero<br> [0x80000e70]:sd a2, 1264(a5)<br>   |
| 113|[0x80007d10]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000e80]:flt.d a2, fa0, fa1<br> [0x80000e84]:csrrs a7, fflags, zero<br> [0x80000e88]:sd a2, 1280(a5)<br>   |
| 114|[0x80007d20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000e98]:flt.d a2, fa0, fa1<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:sd a2, 1296(a5)<br>   |
| 115|[0x80007d30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80000eb0]:flt.d a2, fa0, fa1<br> [0x80000eb4]:csrrs a7, fflags, zero<br> [0x80000eb8]:sd a2, 1312(a5)<br>   |
| 116|[0x80007d40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ec8]:flt.d a2, fa0, fa1<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:sd a2, 1328(a5)<br>   |
| 117|[0x80007d50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ee0]:flt.d a2, fa0, fa1<br> [0x80000ee4]:csrrs a7, fflags, zero<br> [0x80000ee8]:sd a2, 1344(a5)<br>   |
| 118|[0x80007d60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000ef8]:flt.d a2, fa0, fa1<br> [0x80000efc]:csrrs a7, fflags, zero<br> [0x80000f00]:sd a2, 1360(a5)<br>   |
| 119|[0x80007d70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f10]:flt.d a2, fa0, fa1<br> [0x80000f14]:csrrs a7, fflags, zero<br> [0x80000f18]:sd a2, 1376(a5)<br>   |
| 120|[0x80007d80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f28]:flt.d a2, fa0, fa1<br> [0x80000f2c]:csrrs a7, fflags, zero<br> [0x80000f30]:sd a2, 1392(a5)<br>   |
| 121|[0x80007d90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f40]:flt.d a2, fa0, fa1<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:sd a2, 1408(a5)<br>   |
| 122|[0x80007da0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f58]:flt.d a2, fa0, fa1<br> [0x80000f5c]:csrrs a7, fflags, zero<br> [0x80000f60]:sd a2, 1424(a5)<br>   |
| 123|[0x80007db0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f70]:flt.d a2, fa0, fa1<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:sd a2, 1440(a5)<br>   |
| 124|[0x80007dc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000f88]:flt.d a2, fa0, fa1<br> [0x80000f8c]:csrrs a7, fflags, zero<br> [0x80000f90]:sd a2, 1456(a5)<br>   |
| 125|[0x80007dd0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fa0]:flt.d a2, fa0, fa1<br> [0x80000fa4]:csrrs a7, fflags, zero<br> [0x80000fa8]:sd a2, 1472(a5)<br>   |
| 126|[0x80007de0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fb8]:flt.d a2, fa0, fa1<br> [0x80000fbc]:csrrs a7, fflags, zero<br> [0x80000fc0]:sd a2, 1488(a5)<br>   |
| 127|[0x80007df0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fd0]:flt.d a2, fa0, fa1<br> [0x80000fd4]:csrrs a7, fflags, zero<br> [0x80000fd8]:sd a2, 1504(a5)<br>   |
| 128|[0x80007e00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80000fec]:flt.d a2, fa0, fa1<br> [0x80000ff0]:csrrs a7, fflags, zero<br> [0x80000ff4]:sd a2, 1520(a5)<br>   |
| 129|[0x80007e10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001004]:flt.d a2, fa0, fa1<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:sd a2, 1536(a5)<br>   |
| 130|[0x80007e20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000101c]:flt.d a2, fa0, fa1<br> [0x80001020]:csrrs a7, fflags, zero<br> [0x80001024]:sd a2, 1552(a5)<br>   |
| 131|[0x80007e30]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001034]:flt.d a2, fa0, fa1<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:sd a2, 1568(a5)<br>   |
| 132|[0x80007e40]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000104c]:flt.d a2, fa0, fa1<br> [0x80001050]:csrrs a7, fflags, zero<br> [0x80001054]:sd a2, 1584(a5)<br>   |
| 133|[0x80007e50]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001064]:flt.d a2, fa0, fa1<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:sd a2, 1600(a5)<br>   |
| 134|[0x80007e60]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000107c]:flt.d a2, fa0, fa1<br> [0x80001080]:csrrs a7, fflags, zero<br> [0x80001084]:sd a2, 1616(a5)<br>   |
| 135|[0x80007e70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001094]:flt.d a2, fa0, fa1<br> [0x80001098]:csrrs a7, fflags, zero<br> [0x8000109c]:sd a2, 1632(a5)<br>   |
| 136|[0x80007e80]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800010ac]:flt.d a2, fa0, fa1<br> [0x800010b0]:csrrs a7, fflags, zero<br> [0x800010b4]:sd a2, 1648(a5)<br>   |
| 137|[0x80007e90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800010c4]:flt.d a2, fa0, fa1<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:sd a2, 1664(a5)<br>   |
| 138|[0x80007ea0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800010dc]:flt.d a2, fa0, fa1<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:sd a2, 1680(a5)<br>   |
| 139|[0x80007eb0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800010f4]:flt.d a2, fa0, fa1<br> [0x800010f8]:csrrs a7, fflags, zero<br> [0x800010fc]:sd a2, 1696(a5)<br>   |
| 140|[0x80007ec0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000110c]:flt.d a2, fa0, fa1<br> [0x80001110]:csrrs a7, fflags, zero<br> [0x80001114]:sd a2, 1712(a5)<br>   |
| 141|[0x80007ed0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001124]:flt.d a2, fa0, fa1<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:sd a2, 1728(a5)<br>   |
| 142|[0x80007ee0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000113c]:flt.d a2, fa0, fa1<br> [0x80001140]:csrrs a7, fflags, zero<br> [0x80001144]:sd a2, 1744(a5)<br>   |
| 143|[0x80007ef0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001154]:flt.d a2, fa0, fa1<br> [0x80001158]:csrrs a7, fflags, zero<br> [0x8000115c]:sd a2, 1760(a5)<br>   |
| 144|[0x80007f00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000116c]:flt.d a2, fa0, fa1<br> [0x80001170]:csrrs a7, fflags, zero<br> [0x80001174]:sd a2, 1776(a5)<br>   |
| 145|[0x80007f10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001184]:flt.d a2, fa0, fa1<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:sd a2, 1792(a5)<br>   |
| 146|[0x80007f20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000119c]:flt.d a2, fa0, fa1<br> [0x800011a0]:csrrs a7, fflags, zero<br> [0x800011a4]:sd a2, 1808(a5)<br>   |
| 147|[0x80007f30]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800011b4]:flt.d a2, fa0, fa1<br> [0x800011b8]:csrrs a7, fflags, zero<br> [0x800011bc]:sd a2, 1824(a5)<br>   |
| 148|[0x80007f40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800011cc]:flt.d a2, fa0, fa1<br> [0x800011d0]:csrrs a7, fflags, zero<br> [0x800011d4]:sd a2, 1840(a5)<br>   |
| 149|[0x80007f50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800011e4]:flt.d a2, fa0, fa1<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:sd a2, 1856(a5)<br>   |
| 150|[0x80007f60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800011fc]:flt.d a2, fa0, fa1<br> [0x80001200]:csrrs a7, fflags, zero<br> [0x80001204]:sd a2, 1872(a5)<br>   |
| 151|[0x80007f70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001214]:flt.d a2, fa0, fa1<br> [0x80001218]:csrrs a7, fflags, zero<br> [0x8000121c]:sd a2, 1888(a5)<br>   |
| 152|[0x80007f80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000122c]:flt.d a2, fa0, fa1<br> [0x80001230]:csrrs a7, fflags, zero<br> [0x80001234]:sd a2, 1904(a5)<br>   |
| 153|[0x80007f90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001244]:flt.d a2, fa0, fa1<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:sd a2, 1920(a5)<br>   |
| 154|[0x80007fa0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000125c]:flt.d a2, fa0, fa1<br> [0x80001260]:csrrs a7, fflags, zero<br> [0x80001264]:sd a2, 1936(a5)<br>   |
| 155|[0x80007fb0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001274]:flt.d a2, fa0, fa1<br> [0x80001278]:csrrs a7, fflags, zero<br> [0x8000127c]:sd a2, 1952(a5)<br>   |
| 156|[0x80007fc0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000128c]:flt.d a2, fa0, fa1<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:sd a2, 1968(a5)<br>   |
| 157|[0x80007fd0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800012a4]:flt.d a2, fa0, fa1<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:sd a2, 1984(a5)<br>   |
| 158|[0x80007fe0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800012bc]:flt.d a2, fa0, fa1<br> [0x800012c0]:csrrs a7, fflags, zero<br> [0x800012c4]:sd a2, 2000(a5)<br>   |
| 159|[0x80007ff0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800012d4]:flt.d a2, fa0, fa1<br> [0x800012d8]:csrrs a7, fflags, zero<br> [0x800012dc]:sd a2, 2016(a5)<br>   |
| 160|[0x80008000]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800012f4]:flt.d a2, fa0, fa1<br> [0x800012f8]:csrrs a7, fflags, zero<br> [0x800012fc]:sd a2, 0(a5)<br>      |
| 161|[0x80008010]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000130c]:flt.d a2, fa0, fa1<br> [0x80001310]:csrrs a7, fflags, zero<br> [0x80001314]:sd a2, 16(a5)<br>     |
| 162|[0x80008020]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001324]:flt.d a2, fa0, fa1<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:sd a2, 32(a5)<br>     |
| 163|[0x80008030]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000133c]:flt.d a2, fa0, fa1<br> [0x80001340]:csrrs a7, fflags, zero<br> [0x80001344]:sd a2, 48(a5)<br>     |
| 164|[0x80008040]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001354]:flt.d a2, fa0, fa1<br> [0x80001358]:csrrs a7, fflags, zero<br> [0x8000135c]:sd a2, 64(a5)<br>     |
| 165|[0x80008050]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000136c]:flt.d a2, fa0, fa1<br> [0x80001370]:csrrs a7, fflags, zero<br> [0x80001374]:sd a2, 80(a5)<br>     |
| 166|[0x80008060]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001384]:flt.d a2, fa0, fa1<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:sd a2, 96(a5)<br>     |
| 167|[0x80008070]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000139c]:flt.d a2, fa0, fa1<br> [0x800013a0]:csrrs a7, fflags, zero<br> [0x800013a4]:sd a2, 112(a5)<br>    |
| 168|[0x80008080]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800013b4]:flt.d a2, fa0, fa1<br> [0x800013b8]:csrrs a7, fflags, zero<br> [0x800013bc]:sd a2, 128(a5)<br>    |
| 169|[0x80008090]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800013cc]:flt.d a2, fa0, fa1<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:sd a2, 144(a5)<br>    |
| 170|[0x800080a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800013e4]:flt.d a2, fa0, fa1<br> [0x800013e8]:csrrs a7, fflags, zero<br> [0x800013ec]:sd a2, 160(a5)<br>    |
| 171|[0x800080b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800013fc]:flt.d a2, fa0, fa1<br> [0x80001400]:csrrs a7, fflags, zero<br> [0x80001404]:sd a2, 176(a5)<br>    |
| 172|[0x800080c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001414]:flt.d a2, fa0, fa1<br> [0x80001418]:csrrs a7, fflags, zero<br> [0x8000141c]:sd a2, 192(a5)<br>    |
| 173|[0x800080d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000142c]:flt.d a2, fa0, fa1<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:sd a2, 208(a5)<br>    |
| 174|[0x800080e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001444]:flt.d a2, fa0, fa1<br> [0x80001448]:csrrs a7, fflags, zero<br> [0x8000144c]:sd a2, 224(a5)<br>    |
| 175|[0x800080f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000145c]:flt.d a2, fa0, fa1<br> [0x80001460]:csrrs a7, fflags, zero<br> [0x80001464]:sd a2, 240(a5)<br>    |
| 176|[0x80008100]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001474]:flt.d a2, fa0, fa1<br> [0x80001478]:csrrs a7, fflags, zero<br> [0x8000147c]:sd a2, 256(a5)<br>    |
| 177|[0x80008110]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000148c]:flt.d a2, fa0, fa1<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:sd a2, 272(a5)<br>    |
| 178|[0x80008120]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800014a4]:flt.d a2, fa0, fa1<br> [0x800014a8]:csrrs a7, fflags, zero<br> [0x800014ac]:sd a2, 288(a5)<br>    |
| 179|[0x80008130]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800014bc]:flt.d a2, fa0, fa1<br> [0x800014c0]:csrrs a7, fflags, zero<br> [0x800014c4]:sd a2, 304(a5)<br>    |
| 180|[0x80008140]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800014d4]:flt.d a2, fa0, fa1<br> [0x800014d8]:csrrs a7, fflags, zero<br> [0x800014dc]:sd a2, 320(a5)<br>    |
| 181|[0x80008150]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800014ec]:flt.d a2, fa0, fa1<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:sd a2, 336(a5)<br>    |
| 182|[0x80008160]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001504]:flt.d a2, fa0, fa1<br> [0x80001508]:csrrs a7, fflags, zero<br> [0x8000150c]:sd a2, 352(a5)<br>    |
| 183|[0x80008170]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000151c]:flt.d a2, fa0, fa1<br> [0x80001520]:csrrs a7, fflags, zero<br> [0x80001524]:sd a2, 368(a5)<br>    |
| 184|[0x80008180]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001534]:flt.d a2, fa0, fa1<br> [0x80001538]:csrrs a7, fflags, zero<br> [0x8000153c]:sd a2, 384(a5)<br>    |
| 185|[0x80008190]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000154c]:flt.d a2, fa0, fa1<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:sd a2, 400(a5)<br>    |
| 186|[0x800081a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001564]:flt.d a2, fa0, fa1<br> [0x80001568]:csrrs a7, fflags, zero<br> [0x8000156c]:sd a2, 416(a5)<br>    |
| 187|[0x800081b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000157c]:flt.d a2, fa0, fa1<br> [0x80001580]:csrrs a7, fflags, zero<br> [0x80001584]:sd a2, 432(a5)<br>    |
| 188|[0x800081c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001594]:flt.d a2, fa0, fa1<br> [0x80001598]:csrrs a7, fflags, zero<br> [0x8000159c]:sd a2, 448(a5)<br>    |
| 189|[0x800081d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800015ac]:flt.d a2, fa0, fa1<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:sd a2, 464(a5)<br>    |
| 190|[0x800081e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800015c4]:flt.d a2, fa0, fa1<br> [0x800015c8]:csrrs a7, fflags, zero<br> [0x800015cc]:sd a2, 480(a5)<br>    |
| 191|[0x800081f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800015dc]:flt.d a2, fa0, fa1<br> [0x800015e0]:csrrs a7, fflags, zero<br> [0x800015e4]:sd a2, 496(a5)<br>    |
| 192|[0x80008200]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800015f4]:flt.d a2, fa0, fa1<br> [0x800015f8]:csrrs a7, fflags, zero<br> [0x800015fc]:sd a2, 512(a5)<br>    |
| 193|[0x80008210]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000160c]:flt.d a2, fa0, fa1<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:sd a2, 528(a5)<br>    |
| 194|[0x80008220]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001624]:flt.d a2, fa0, fa1<br> [0x80001628]:csrrs a7, fflags, zero<br> [0x8000162c]:sd a2, 544(a5)<br>    |
| 195|[0x80008230]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000163c]:flt.d a2, fa0, fa1<br> [0x80001640]:csrrs a7, fflags, zero<br> [0x80001644]:sd a2, 560(a5)<br>    |
| 196|[0x80008240]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001654]:flt.d a2, fa0, fa1<br> [0x80001658]:csrrs a7, fflags, zero<br> [0x8000165c]:sd a2, 576(a5)<br>    |
| 197|[0x80008250]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000166c]:flt.d a2, fa0, fa1<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:sd a2, 592(a5)<br>    |
| 198|[0x80008260]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001684]:flt.d a2, fa0, fa1<br> [0x80001688]:csrrs a7, fflags, zero<br> [0x8000168c]:sd a2, 608(a5)<br>    |
| 199|[0x80008270]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000169c]:flt.d a2, fa0, fa1<br> [0x800016a0]:csrrs a7, fflags, zero<br> [0x800016a4]:sd a2, 624(a5)<br>    |
| 200|[0x80008280]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800016b4]:flt.d a2, fa0, fa1<br> [0x800016b8]:csrrs a7, fflags, zero<br> [0x800016bc]:sd a2, 640(a5)<br>    |
| 201|[0x80008290]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800016cc]:flt.d a2, fa0, fa1<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:sd a2, 656(a5)<br>    |
| 202|[0x800082a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800016e4]:flt.d a2, fa0, fa1<br> [0x800016e8]:csrrs a7, fflags, zero<br> [0x800016ec]:sd a2, 672(a5)<br>    |
| 203|[0x800082b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800016fc]:flt.d a2, fa0, fa1<br> [0x80001700]:csrrs a7, fflags, zero<br> [0x80001704]:sd a2, 688(a5)<br>    |
| 204|[0x800082c0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001714]:flt.d a2, fa0, fa1<br> [0x80001718]:csrrs a7, fflags, zero<br> [0x8000171c]:sd a2, 704(a5)<br>    |
| 205|[0x800082d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000172c]:flt.d a2, fa0, fa1<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:sd a2, 720(a5)<br>    |
| 206|[0x800082e0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001744]:flt.d a2, fa0, fa1<br> [0x80001748]:csrrs a7, fflags, zero<br> [0x8000174c]:sd a2, 736(a5)<br>    |
| 207|[0x800082f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000175c]:flt.d a2, fa0, fa1<br> [0x80001760]:csrrs a7, fflags, zero<br> [0x80001764]:sd a2, 752(a5)<br>    |
| 208|[0x80008300]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001774]:flt.d a2, fa0, fa1<br> [0x80001778]:csrrs a7, fflags, zero<br> [0x8000177c]:sd a2, 768(a5)<br>    |
| 209|[0x80008310]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000178c]:flt.d a2, fa0, fa1<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:sd a2, 784(a5)<br>    |
| 210|[0x80008320]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800017a4]:flt.d a2, fa0, fa1<br> [0x800017a8]:csrrs a7, fflags, zero<br> [0x800017ac]:sd a2, 800(a5)<br>    |
| 211|[0x80008330]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800017bc]:flt.d a2, fa0, fa1<br> [0x800017c0]:csrrs a7, fflags, zero<br> [0x800017c4]:sd a2, 816(a5)<br>    |
| 212|[0x80008340]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800017d4]:flt.d a2, fa0, fa1<br> [0x800017d8]:csrrs a7, fflags, zero<br> [0x800017dc]:sd a2, 832(a5)<br>    |
| 213|[0x80008350]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800017ec]:flt.d a2, fa0, fa1<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:sd a2, 848(a5)<br>    |
| 214|[0x80008360]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001804]:flt.d a2, fa0, fa1<br> [0x80001808]:csrrs a7, fflags, zero<br> [0x8000180c]:sd a2, 864(a5)<br>    |
| 215|[0x80008370]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000181c]:flt.d a2, fa0, fa1<br> [0x80001820]:csrrs a7, fflags, zero<br> [0x80001824]:sd a2, 880(a5)<br>    |
| 216|[0x80008380]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001834]:flt.d a2, fa0, fa1<br> [0x80001838]:csrrs a7, fflags, zero<br> [0x8000183c]:sd a2, 896(a5)<br>    |
| 217|[0x80008390]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000184c]:flt.d a2, fa0, fa1<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:sd a2, 912(a5)<br>    |
| 218|[0x800083a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001864]:flt.d a2, fa0, fa1<br> [0x80001868]:csrrs a7, fflags, zero<br> [0x8000186c]:sd a2, 928(a5)<br>    |
| 219|[0x800083b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000187c]:flt.d a2, fa0, fa1<br> [0x80001880]:csrrs a7, fflags, zero<br> [0x80001884]:sd a2, 944(a5)<br>    |
| 220|[0x800083c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001894]:flt.d a2, fa0, fa1<br> [0x80001898]:csrrs a7, fflags, zero<br> [0x8000189c]:sd a2, 960(a5)<br>    |
| 221|[0x800083d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800018ac]:flt.d a2, fa0, fa1<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:sd a2, 976(a5)<br>    |
| 222|[0x800083e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800018c4]:flt.d a2, fa0, fa1<br> [0x800018c8]:csrrs a7, fflags, zero<br> [0x800018cc]:sd a2, 992(a5)<br>    |
| 223|[0x800083f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800018dc]:flt.d a2, fa0, fa1<br> [0x800018e0]:csrrs a7, fflags, zero<br> [0x800018e4]:sd a2, 1008(a5)<br>   |
| 224|[0x80008400]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800018f4]:flt.d a2, fa0, fa1<br> [0x800018f8]:csrrs a7, fflags, zero<br> [0x800018fc]:sd a2, 1024(a5)<br>   |
| 225|[0x80008410]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000190c]:flt.d a2, fa0, fa1<br> [0x80001910]:csrrs a7, fflags, zero<br> [0x80001914]:sd a2, 1040(a5)<br>   |
| 226|[0x80008420]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001924]:flt.d a2, fa0, fa1<br> [0x80001928]:csrrs a7, fflags, zero<br> [0x8000192c]:sd a2, 1056(a5)<br>   |
| 227|[0x80008430]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000193c]:flt.d a2, fa0, fa1<br> [0x80001940]:csrrs a7, fflags, zero<br> [0x80001944]:sd a2, 1072(a5)<br>   |
| 228|[0x80008440]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001954]:flt.d a2, fa0, fa1<br> [0x80001958]:csrrs a7, fflags, zero<br> [0x8000195c]:sd a2, 1088(a5)<br>   |
| 229|[0x80008450]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000196c]:flt.d a2, fa0, fa1<br> [0x80001970]:csrrs a7, fflags, zero<br> [0x80001974]:sd a2, 1104(a5)<br>   |
| 230|[0x80008460]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001984]:flt.d a2, fa0, fa1<br> [0x80001988]:csrrs a7, fflags, zero<br> [0x8000198c]:sd a2, 1120(a5)<br>   |
| 231|[0x80008470]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000199c]:flt.d a2, fa0, fa1<br> [0x800019a0]:csrrs a7, fflags, zero<br> [0x800019a4]:sd a2, 1136(a5)<br>   |
| 232|[0x80008480]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800019b4]:flt.d a2, fa0, fa1<br> [0x800019b8]:csrrs a7, fflags, zero<br> [0x800019bc]:sd a2, 1152(a5)<br>   |
| 233|[0x80008490]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800019cc]:flt.d a2, fa0, fa1<br> [0x800019d0]:csrrs a7, fflags, zero<br> [0x800019d4]:sd a2, 1168(a5)<br>   |
| 234|[0x800084a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800019e4]:flt.d a2, fa0, fa1<br> [0x800019e8]:csrrs a7, fflags, zero<br> [0x800019ec]:sd a2, 1184(a5)<br>   |
| 235|[0x800084b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800019fc]:flt.d a2, fa0, fa1<br> [0x80001a00]:csrrs a7, fflags, zero<br> [0x80001a04]:sd a2, 1200(a5)<br>   |
| 236|[0x800084c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a14]:flt.d a2, fa0, fa1<br> [0x80001a18]:csrrs a7, fflags, zero<br> [0x80001a1c]:sd a2, 1216(a5)<br>   |
| 237|[0x800084d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a2c]:flt.d a2, fa0, fa1<br> [0x80001a30]:csrrs a7, fflags, zero<br> [0x80001a34]:sd a2, 1232(a5)<br>   |
| 238|[0x800084e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a44]:flt.d a2, fa0, fa1<br> [0x80001a48]:csrrs a7, fflags, zero<br> [0x80001a4c]:sd a2, 1248(a5)<br>   |
| 239|[0x800084f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a5c]:flt.d a2, fa0, fa1<br> [0x80001a60]:csrrs a7, fflags, zero<br> [0x80001a64]:sd a2, 1264(a5)<br>   |
| 240|[0x80008500]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a74]:flt.d a2, fa0, fa1<br> [0x80001a78]:csrrs a7, fflags, zero<br> [0x80001a7c]:sd a2, 1280(a5)<br>   |
| 241|[0x80008510]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001a8c]:flt.d a2, fa0, fa1<br> [0x80001a90]:csrrs a7, fflags, zero<br> [0x80001a94]:sd a2, 1296(a5)<br>   |
| 242|[0x80008520]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001aa4]:flt.d a2, fa0, fa1<br> [0x80001aa8]:csrrs a7, fflags, zero<br> [0x80001aac]:sd a2, 1312(a5)<br>   |
| 243|[0x80008530]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001abc]:flt.d a2, fa0, fa1<br> [0x80001ac0]:csrrs a7, fflags, zero<br> [0x80001ac4]:sd a2, 1328(a5)<br>   |
| 244|[0x80008540]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ad4]:flt.d a2, fa0, fa1<br> [0x80001ad8]:csrrs a7, fflags, zero<br> [0x80001adc]:sd a2, 1344(a5)<br>   |
| 245|[0x80008550]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001aec]:flt.d a2, fa0, fa1<br> [0x80001af0]:csrrs a7, fflags, zero<br> [0x80001af4]:sd a2, 1360(a5)<br>   |
| 246|[0x80008560]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b04]:flt.d a2, fa0, fa1<br> [0x80001b08]:csrrs a7, fflags, zero<br> [0x80001b0c]:sd a2, 1376(a5)<br>   |
| 247|[0x80008570]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b1c]:flt.d a2, fa0, fa1<br> [0x80001b20]:csrrs a7, fflags, zero<br> [0x80001b24]:sd a2, 1392(a5)<br>   |
| 248|[0x80008580]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b34]:flt.d a2, fa0, fa1<br> [0x80001b38]:csrrs a7, fflags, zero<br> [0x80001b3c]:sd a2, 1408(a5)<br>   |
| 249|[0x80008590]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b4c]:flt.d a2, fa0, fa1<br> [0x80001b50]:csrrs a7, fflags, zero<br> [0x80001b54]:sd a2, 1424(a5)<br>   |
| 250|[0x800085a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b64]:flt.d a2, fa0, fa1<br> [0x80001b68]:csrrs a7, fflags, zero<br> [0x80001b6c]:sd a2, 1440(a5)<br>   |
| 251|[0x800085b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001b7c]:flt.d a2, fa0, fa1<br> [0x80001b80]:csrrs a7, fflags, zero<br> [0x80001b84]:sd a2, 1456(a5)<br>   |
| 252|[0x800085c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001b94]:flt.d a2, fa0, fa1<br> [0x80001b98]:csrrs a7, fflags, zero<br> [0x80001b9c]:sd a2, 1472(a5)<br>   |
| 253|[0x800085d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001bac]:flt.d a2, fa0, fa1<br> [0x80001bb0]:csrrs a7, fflags, zero<br> [0x80001bb4]:sd a2, 1488(a5)<br>   |
| 254|[0x800085e0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001bc4]:flt.d a2, fa0, fa1<br> [0x80001bc8]:csrrs a7, fflags, zero<br> [0x80001bcc]:sd a2, 1504(a5)<br>   |
| 255|[0x800085f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001be0]:flt.d a2, fa0, fa1<br> [0x80001be4]:csrrs a7, fflags, zero<br> [0x80001be8]:sd a2, 1520(a5)<br>   |
| 256|[0x80008600]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001bf8]:flt.d a2, fa0, fa1<br> [0x80001bfc]:csrrs a7, fflags, zero<br> [0x80001c00]:sd a2, 1536(a5)<br>   |
| 257|[0x80008610]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c10]:flt.d a2, fa0, fa1<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:sd a2, 1552(a5)<br>   |
| 258|[0x80008620]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001c28]:flt.d a2, fa0, fa1<br> [0x80001c2c]:csrrs a7, fflags, zero<br> [0x80001c30]:sd a2, 1568(a5)<br>   |
| 259|[0x80008630]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001c40]:flt.d a2, fa0, fa1<br> [0x80001c44]:csrrs a7, fflags, zero<br> [0x80001c48]:sd a2, 1584(a5)<br>   |
| 260|[0x80008640]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c58]:flt.d a2, fa0, fa1<br> [0x80001c5c]:csrrs a7, fflags, zero<br> [0x80001c60]:sd a2, 1600(a5)<br>   |
| 261|[0x80008650]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c70]:flt.d a2, fa0, fa1<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:sd a2, 1616(a5)<br>   |
| 262|[0x80008660]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001c88]:flt.d a2, fa0, fa1<br> [0x80001c8c]:csrrs a7, fflags, zero<br> [0x80001c90]:sd a2, 1632(a5)<br>   |
| 263|[0x80008670]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ca0]:flt.d a2, fa0, fa1<br> [0x80001ca4]:csrrs a7, fflags, zero<br> [0x80001ca8]:sd a2, 1648(a5)<br>   |
| 264|[0x80008680]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001cb8]:flt.d a2, fa0, fa1<br> [0x80001cbc]:csrrs a7, fflags, zero<br> [0x80001cc0]:sd a2, 1664(a5)<br>   |
| 265|[0x80008690]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001cd0]:flt.d a2, fa0, fa1<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:sd a2, 1680(a5)<br>   |
| 266|[0x800086a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ce8]:flt.d a2, fa0, fa1<br> [0x80001cec]:csrrs a7, fflags, zero<br> [0x80001cf0]:sd a2, 1696(a5)<br>   |
| 267|[0x800086b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d00]:flt.d a2, fa0, fa1<br> [0x80001d04]:csrrs a7, fflags, zero<br> [0x80001d08]:sd a2, 1712(a5)<br>   |
| 268|[0x800086c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d18]:flt.d a2, fa0, fa1<br> [0x80001d1c]:csrrs a7, fflags, zero<br> [0x80001d20]:sd a2, 1728(a5)<br>   |
| 269|[0x800086d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d30]:flt.d a2, fa0, fa1<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:sd a2, 1744(a5)<br>   |
| 270|[0x800086e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d48]:flt.d a2, fa0, fa1<br> [0x80001d4c]:csrrs a7, fflags, zero<br> [0x80001d50]:sd a2, 1760(a5)<br>   |
| 271|[0x800086f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d60]:flt.d a2, fa0, fa1<br> [0x80001d64]:csrrs a7, fflags, zero<br> [0x80001d68]:sd a2, 1776(a5)<br>   |
| 272|[0x80008700]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d78]:flt.d a2, fa0, fa1<br> [0x80001d7c]:csrrs a7, fflags, zero<br> [0x80001d80]:sd a2, 1792(a5)<br>   |
| 273|[0x80008710]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001d90]:flt.d a2, fa0, fa1<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:sd a2, 1808(a5)<br>   |
| 274|[0x80008720]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001da8]:flt.d a2, fa0, fa1<br> [0x80001dac]:csrrs a7, fflags, zero<br> [0x80001db0]:sd a2, 1824(a5)<br>   |
| 275|[0x80008730]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001dc0]:flt.d a2, fa0, fa1<br> [0x80001dc4]:csrrs a7, fflags, zero<br> [0x80001dc8]:sd a2, 1840(a5)<br>   |
| 276|[0x80008740]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001dd8]:flt.d a2, fa0, fa1<br> [0x80001ddc]:csrrs a7, fflags, zero<br> [0x80001de0]:sd a2, 1856(a5)<br>   |
| 277|[0x80008750]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001df0]:flt.d a2, fa0, fa1<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:sd a2, 1872(a5)<br>   |
| 278|[0x80008760]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e08]:flt.d a2, fa0, fa1<br> [0x80001e0c]:csrrs a7, fflags, zero<br> [0x80001e10]:sd a2, 1888(a5)<br>   |
| 279|[0x80008770]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e20]:flt.d a2, fa0, fa1<br> [0x80001e24]:csrrs a7, fflags, zero<br> [0x80001e28]:sd a2, 1904(a5)<br>   |
| 280|[0x80008780]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e38]:flt.d a2, fa0, fa1<br> [0x80001e3c]:csrrs a7, fflags, zero<br> [0x80001e40]:sd a2, 1920(a5)<br>   |
| 281|[0x80008790]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e50]:flt.d a2, fa0, fa1<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:sd a2, 1936(a5)<br>   |
| 282|[0x800087a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001e68]:flt.d a2, fa0, fa1<br> [0x80001e6c]:csrrs a7, fflags, zero<br> [0x80001e70]:sd a2, 1952(a5)<br>   |
| 283|[0x800087b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80001e80]:flt.d a2, fa0, fa1<br> [0x80001e84]:csrrs a7, fflags, zero<br> [0x80001e88]:sd a2, 1968(a5)<br>   |
| 284|[0x800087c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001e98]:flt.d a2, fa0, fa1<br> [0x80001e9c]:csrrs a7, fflags, zero<br> [0x80001ea0]:sd a2, 1984(a5)<br>   |
| 285|[0x800087d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80001eb0]:flt.d a2, fa0, fa1<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:sd a2, 2000(a5)<br>   |
| 286|[0x800087e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ec8]:flt.d a2, fa0, fa1<br> [0x80001ecc]:csrrs a7, fflags, zero<br> [0x80001ed0]:sd a2, 2016(a5)<br>   |
| 287|[0x800087f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ee8]:flt.d a2, fa0, fa1<br> [0x80001eec]:csrrs a7, fflags, zero<br> [0x80001ef0]:sd a2, 0(a5)<br>      |
| 288|[0x80008800]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f00]:flt.d a2, fa0, fa1<br> [0x80001f04]:csrrs a7, fflags, zero<br> [0x80001f08]:sd a2, 16(a5)<br>     |
| 289|[0x80008810]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f18]:flt.d a2, fa0, fa1<br> [0x80001f1c]:csrrs a7, fflags, zero<br> [0x80001f20]:sd a2, 32(a5)<br>     |
| 290|[0x80008820]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f30]:flt.d a2, fa0, fa1<br> [0x80001f34]:csrrs a7, fflags, zero<br> [0x80001f38]:sd a2, 48(a5)<br>     |
| 291|[0x80008830]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f48]:flt.d a2, fa0, fa1<br> [0x80001f4c]:csrrs a7, fflags, zero<br> [0x80001f50]:sd a2, 64(a5)<br>     |
| 292|[0x80008840]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f60]:flt.d a2, fa0, fa1<br> [0x80001f64]:csrrs a7, fflags, zero<br> [0x80001f68]:sd a2, 80(a5)<br>     |
| 293|[0x80008850]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f78]:flt.d a2, fa0, fa1<br> [0x80001f7c]:csrrs a7, fflags, zero<br> [0x80001f80]:sd a2, 96(a5)<br>     |
| 294|[0x80008860]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001f90]:flt.d a2, fa0, fa1<br> [0x80001f94]:csrrs a7, fflags, zero<br> [0x80001f98]:sd a2, 112(a5)<br>    |
| 295|[0x80008870]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80001fa8]:flt.d a2, fa0, fa1<br> [0x80001fac]:csrrs a7, fflags, zero<br> [0x80001fb0]:sd a2, 128(a5)<br>    |
| 296|[0x80008880]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001fc0]:flt.d a2, fa0, fa1<br> [0x80001fc4]:csrrs a7, fflags, zero<br> [0x80001fc8]:sd a2, 144(a5)<br>    |
| 297|[0x80008890]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001fd8]:flt.d a2, fa0, fa1<br> [0x80001fdc]:csrrs a7, fflags, zero<br> [0x80001fe0]:sd a2, 160(a5)<br>    |
| 298|[0x800088a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80001ff0]:flt.d a2, fa0, fa1<br> [0x80001ff4]:csrrs a7, fflags, zero<br> [0x80001ff8]:sd a2, 176(a5)<br>    |
| 299|[0x800088b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002008]:flt.d a2, fa0, fa1<br> [0x8000200c]:csrrs a7, fflags, zero<br> [0x80002010]:sd a2, 192(a5)<br>    |
| 300|[0x800088c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002020]:flt.d a2, fa0, fa1<br> [0x80002024]:csrrs a7, fflags, zero<br> [0x80002028]:sd a2, 208(a5)<br>    |
| 301|[0x800088d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002038]:flt.d a2, fa0, fa1<br> [0x8000203c]:csrrs a7, fflags, zero<br> [0x80002040]:sd a2, 224(a5)<br>    |
| 302|[0x800088e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002050]:flt.d a2, fa0, fa1<br> [0x80002054]:csrrs a7, fflags, zero<br> [0x80002058]:sd a2, 240(a5)<br>    |
| 303|[0x800088f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002068]:flt.d a2, fa0, fa1<br> [0x8000206c]:csrrs a7, fflags, zero<br> [0x80002070]:sd a2, 256(a5)<br>    |
| 304|[0x80008900]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002080]:flt.d a2, fa0, fa1<br> [0x80002084]:csrrs a7, fflags, zero<br> [0x80002088]:sd a2, 272(a5)<br>    |
| 305|[0x80008910]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002098]:flt.d a2, fa0, fa1<br> [0x8000209c]:csrrs a7, fflags, zero<br> [0x800020a0]:sd a2, 288(a5)<br>    |
| 306|[0x80008920]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800020b0]:flt.d a2, fa0, fa1<br> [0x800020b4]:csrrs a7, fflags, zero<br> [0x800020b8]:sd a2, 304(a5)<br>    |
| 307|[0x80008930]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800020c8]:flt.d a2, fa0, fa1<br> [0x800020cc]:csrrs a7, fflags, zero<br> [0x800020d0]:sd a2, 320(a5)<br>    |
| 308|[0x80008940]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800020e0]:flt.d a2, fa0, fa1<br> [0x800020e4]:csrrs a7, fflags, zero<br> [0x800020e8]:sd a2, 336(a5)<br>    |
| 309|[0x80008950]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800020f8]:flt.d a2, fa0, fa1<br> [0x800020fc]:csrrs a7, fflags, zero<br> [0x80002100]:sd a2, 352(a5)<br>    |
| 310|[0x80008960]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002110]:flt.d a2, fa0, fa1<br> [0x80002114]:csrrs a7, fflags, zero<br> [0x80002118]:sd a2, 368(a5)<br>    |
| 311|[0x80008970]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002128]:flt.d a2, fa0, fa1<br> [0x8000212c]:csrrs a7, fflags, zero<br> [0x80002130]:sd a2, 384(a5)<br>    |
| 312|[0x80008980]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002140]:flt.d a2, fa0, fa1<br> [0x80002144]:csrrs a7, fflags, zero<br> [0x80002148]:sd a2, 400(a5)<br>    |
| 313|[0x80008990]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002158]:flt.d a2, fa0, fa1<br> [0x8000215c]:csrrs a7, fflags, zero<br> [0x80002160]:sd a2, 416(a5)<br>    |
| 314|[0x800089a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002170]:flt.d a2, fa0, fa1<br> [0x80002174]:csrrs a7, fflags, zero<br> [0x80002178]:sd a2, 432(a5)<br>    |
| 315|[0x800089b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002188]:flt.d a2, fa0, fa1<br> [0x8000218c]:csrrs a7, fflags, zero<br> [0x80002190]:sd a2, 448(a5)<br>    |
| 316|[0x800089c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800021a0]:flt.d a2, fa0, fa1<br> [0x800021a4]:csrrs a7, fflags, zero<br> [0x800021a8]:sd a2, 464(a5)<br>    |
| 317|[0x800089d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800021b8]:flt.d a2, fa0, fa1<br> [0x800021bc]:csrrs a7, fflags, zero<br> [0x800021c0]:sd a2, 480(a5)<br>    |
| 318|[0x800089e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800021d0]:flt.d a2, fa0, fa1<br> [0x800021d4]:csrrs a7, fflags, zero<br> [0x800021d8]:sd a2, 496(a5)<br>    |
| 319|[0x800089f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800021e8]:flt.d a2, fa0, fa1<br> [0x800021ec]:csrrs a7, fflags, zero<br> [0x800021f0]:sd a2, 512(a5)<br>    |
| 320|[0x80008a00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002200]:flt.d a2, fa0, fa1<br> [0x80002204]:csrrs a7, fflags, zero<br> [0x80002208]:sd a2, 528(a5)<br>    |
| 321|[0x80008a10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002218]:flt.d a2, fa0, fa1<br> [0x8000221c]:csrrs a7, fflags, zero<br> [0x80002220]:sd a2, 544(a5)<br>    |
| 322|[0x80008a20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002230]:flt.d a2, fa0, fa1<br> [0x80002234]:csrrs a7, fflags, zero<br> [0x80002238]:sd a2, 560(a5)<br>    |
| 323|[0x80008a30]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002248]:flt.d a2, fa0, fa1<br> [0x8000224c]:csrrs a7, fflags, zero<br> [0x80002250]:sd a2, 576(a5)<br>    |
| 324|[0x80008a40]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002260]:flt.d a2, fa0, fa1<br> [0x80002264]:csrrs a7, fflags, zero<br> [0x80002268]:sd a2, 592(a5)<br>    |
| 325|[0x80008a50]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002278]:flt.d a2, fa0, fa1<br> [0x8000227c]:csrrs a7, fflags, zero<br> [0x80002280]:sd a2, 608(a5)<br>    |
| 326|[0x80008a60]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002290]:flt.d a2, fa0, fa1<br> [0x80002294]:csrrs a7, fflags, zero<br> [0x80002298]:sd a2, 624(a5)<br>    |
| 327|[0x80008a70]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800022a8]:flt.d a2, fa0, fa1<br> [0x800022ac]:csrrs a7, fflags, zero<br> [0x800022b0]:sd a2, 640(a5)<br>    |
| 328|[0x80008a80]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800022c0]:flt.d a2, fa0, fa1<br> [0x800022c4]:csrrs a7, fflags, zero<br> [0x800022c8]:sd a2, 656(a5)<br>    |
| 329|[0x80008a90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800022d8]:flt.d a2, fa0, fa1<br> [0x800022dc]:csrrs a7, fflags, zero<br> [0x800022e0]:sd a2, 672(a5)<br>    |
| 330|[0x80008aa0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800022f0]:flt.d a2, fa0, fa1<br> [0x800022f4]:csrrs a7, fflags, zero<br> [0x800022f8]:sd a2, 688(a5)<br>    |
| 331|[0x80008ab0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002308]:flt.d a2, fa0, fa1<br> [0x8000230c]:csrrs a7, fflags, zero<br> [0x80002310]:sd a2, 704(a5)<br>    |
| 332|[0x80008ac0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002320]:flt.d a2, fa0, fa1<br> [0x80002324]:csrrs a7, fflags, zero<br> [0x80002328]:sd a2, 720(a5)<br>    |
| 333|[0x80008ad0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002338]:flt.d a2, fa0, fa1<br> [0x8000233c]:csrrs a7, fflags, zero<br> [0x80002340]:sd a2, 736(a5)<br>    |
| 334|[0x80008ae0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002350]:flt.d a2, fa0, fa1<br> [0x80002354]:csrrs a7, fflags, zero<br> [0x80002358]:sd a2, 752(a5)<br>    |
| 335|[0x80008af0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002368]:flt.d a2, fa0, fa1<br> [0x8000236c]:csrrs a7, fflags, zero<br> [0x80002370]:sd a2, 768(a5)<br>    |
| 336|[0x80008b00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002380]:flt.d a2, fa0, fa1<br> [0x80002384]:csrrs a7, fflags, zero<br> [0x80002388]:sd a2, 784(a5)<br>    |
| 337|[0x80008b10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002398]:flt.d a2, fa0, fa1<br> [0x8000239c]:csrrs a7, fflags, zero<br> [0x800023a0]:sd a2, 800(a5)<br>    |
| 338|[0x80008b20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800023b0]:flt.d a2, fa0, fa1<br> [0x800023b4]:csrrs a7, fflags, zero<br> [0x800023b8]:sd a2, 816(a5)<br>    |
| 339|[0x80008b30]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800023c8]:flt.d a2, fa0, fa1<br> [0x800023cc]:csrrs a7, fflags, zero<br> [0x800023d0]:sd a2, 832(a5)<br>    |
| 340|[0x80008b40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800023e0]:flt.d a2, fa0, fa1<br> [0x800023e4]:csrrs a7, fflags, zero<br> [0x800023e8]:sd a2, 848(a5)<br>    |
| 341|[0x80008b50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800023f8]:flt.d a2, fa0, fa1<br> [0x800023fc]:csrrs a7, fflags, zero<br> [0x80002400]:sd a2, 864(a5)<br>    |
| 342|[0x80008b60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002410]:flt.d a2, fa0, fa1<br> [0x80002414]:csrrs a7, fflags, zero<br> [0x80002418]:sd a2, 880(a5)<br>    |
| 343|[0x80008b70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002428]:flt.d a2, fa0, fa1<br> [0x8000242c]:csrrs a7, fflags, zero<br> [0x80002430]:sd a2, 896(a5)<br>    |
| 344|[0x80008b80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002440]:flt.d a2, fa0, fa1<br> [0x80002444]:csrrs a7, fflags, zero<br> [0x80002448]:sd a2, 912(a5)<br>    |
| 345|[0x80008b90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002458]:flt.d a2, fa0, fa1<br> [0x8000245c]:csrrs a7, fflags, zero<br> [0x80002460]:sd a2, 928(a5)<br>    |
| 346|[0x80008ba0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002470]:flt.d a2, fa0, fa1<br> [0x80002474]:csrrs a7, fflags, zero<br> [0x80002478]:sd a2, 944(a5)<br>    |
| 347|[0x80008bb0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002488]:flt.d a2, fa0, fa1<br> [0x8000248c]:csrrs a7, fflags, zero<br> [0x80002490]:sd a2, 960(a5)<br>    |
| 348|[0x80008bc0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800024a0]:flt.d a2, fa0, fa1<br> [0x800024a4]:csrrs a7, fflags, zero<br> [0x800024a8]:sd a2, 976(a5)<br>    |
| 349|[0x80008bd0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800024b8]:flt.d a2, fa0, fa1<br> [0x800024bc]:csrrs a7, fflags, zero<br> [0x800024c0]:sd a2, 992(a5)<br>    |
| 350|[0x80008be0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800024d0]:flt.d a2, fa0, fa1<br> [0x800024d4]:csrrs a7, fflags, zero<br> [0x800024d8]:sd a2, 1008(a5)<br>   |
| 351|[0x80008bf0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800024e8]:flt.d a2, fa0, fa1<br> [0x800024ec]:csrrs a7, fflags, zero<br> [0x800024f0]:sd a2, 1024(a5)<br>   |
| 352|[0x80008c00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002500]:flt.d a2, fa0, fa1<br> [0x80002504]:csrrs a7, fflags, zero<br> [0x80002508]:sd a2, 1040(a5)<br>   |
| 353|[0x80008c10]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002518]:flt.d a2, fa0, fa1<br> [0x8000251c]:csrrs a7, fflags, zero<br> [0x80002520]:sd a2, 1056(a5)<br>   |
| 354|[0x80008c20]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002530]:flt.d a2, fa0, fa1<br> [0x80002534]:csrrs a7, fflags, zero<br> [0x80002538]:sd a2, 1072(a5)<br>   |
| 355|[0x80008c30]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002548]:flt.d a2, fa0, fa1<br> [0x8000254c]:csrrs a7, fflags, zero<br> [0x80002550]:sd a2, 1088(a5)<br>   |
| 356|[0x80008c40]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002560]:flt.d a2, fa0, fa1<br> [0x80002564]:csrrs a7, fflags, zero<br> [0x80002568]:sd a2, 1104(a5)<br>   |
| 357|[0x80008c50]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002578]:flt.d a2, fa0, fa1<br> [0x8000257c]:csrrs a7, fflags, zero<br> [0x80002580]:sd a2, 1120(a5)<br>   |
| 358|[0x80008c60]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002590]:flt.d a2, fa0, fa1<br> [0x80002594]:csrrs a7, fflags, zero<br> [0x80002598]:sd a2, 1136(a5)<br>   |
| 359|[0x80008c70]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800025a8]:flt.d a2, fa0, fa1<br> [0x800025ac]:csrrs a7, fflags, zero<br> [0x800025b0]:sd a2, 1152(a5)<br>   |
| 360|[0x80008c80]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800025c0]:flt.d a2, fa0, fa1<br> [0x800025c4]:csrrs a7, fflags, zero<br> [0x800025c8]:sd a2, 1168(a5)<br>   |
| 361|[0x80008c90]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800025d8]:flt.d a2, fa0, fa1<br> [0x800025dc]:csrrs a7, fflags, zero<br> [0x800025e0]:sd a2, 1184(a5)<br>   |
| 362|[0x80008ca0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800025f0]:flt.d a2, fa0, fa1<br> [0x800025f4]:csrrs a7, fflags, zero<br> [0x800025f8]:sd a2, 1200(a5)<br>   |
| 363|[0x80008cb0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002608]:flt.d a2, fa0, fa1<br> [0x8000260c]:csrrs a7, fflags, zero<br> [0x80002610]:sd a2, 1216(a5)<br>   |
| 364|[0x80008cc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002620]:flt.d a2, fa0, fa1<br> [0x80002624]:csrrs a7, fflags, zero<br> [0x80002628]:sd a2, 1232(a5)<br>   |
| 365|[0x80008cd0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002638]:flt.d a2, fa0, fa1<br> [0x8000263c]:csrrs a7, fflags, zero<br> [0x80002640]:sd a2, 1248(a5)<br>   |
| 366|[0x80008ce0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002650]:flt.d a2, fa0, fa1<br> [0x80002654]:csrrs a7, fflags, zero<br> [0x80002658]:sd a2, 1264(a5)<br>   |
| 367|[0x80008cf0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002668]:flt.d a2, fa0, fa1<br> [0x8000266c]:csrrs a7, fflags, zero<br> [0x80002670]:sd a2, 1280(a5)<br>   |
| 368|[0x80008d00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002680]:flt.d a2, fa0, fa1<br> [0x80002684]:csrrs a7, fflags, zero<br> [0x80002688]:sd a2, 1296(a5)<br>   |
| 369|[0x80008d10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002698]:flt.d a2, fa0, fa1<br> [0x8000269c]:csrrs a7, fflags, zero<br> [0x800026a0]:sd a2, 1312(a5)<br>   |
| 370|[0x80008d20]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800026b0]:flt.d a2, fa0, fa1<br> [0x800026b4]:csrrs a7, fflags, zero<br> [0x800026b8]:sd a2, 1328(a5)<br>   |
| 371|[0x80008d30]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800026c8]:flt.d a2, fa0, fa1<br> [0x800026cc]:csrrs a7, fflags, zero<br> [0x800026d0]:sd a2, 1344(a5)<br>   |
| 372|[0x80008d40]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800026e0]:flt.d a2, fa0, fa1<br> [0x800026e4]:csrrs a7, fflags, zero<br> [0x800026e8]:sd a2, 1360(a5)<br>   |
| 373|[0x80008d50]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800026f8]:flt.d a2, fa0, fa1<br> [0x800026fc]:csrrs a7, fflags, zero<br> [0x80002700]:sd a2, 1376(a5)<br>   |
| 374|[0x80008d60]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002710]:flt.d a2, fa0, fa1<br> [0x80002714]:csrrs a7, fflags, zero<br> [0x80002718]:sd a2, 1392(a5)<br>   |
| 375|[0x80008d70]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002728]:flt.d a2, fa0, fa1<br> [0x8000272c]:csrrs a7, fflags, zero<br> [0x80002730]:sd a2, 1408(a5)<br>   |
| 376|[0x80008d80]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002740]:flt.d a2, fa0, fa1<br> [0x80002744]:csrrs a7, fflags, zero<br> [0x80002748]:sd a2, 1424(a5)<br>   |
| 377|[0x80008d90]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002758]:flt.d a2, fa0, fa1<br> [0x8000275c]:csrrs a7, fflags, zero<br> [0x80002760]:sd a2, 1440(a5)<br>   |
| 378|[0x80008da0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002770]:flt.d a2, fa0, fa1<br> [0x80002774]:csrrs a7, fflags, zero<br> [0x80002778]:sd a2, 1456(a5)<br>   |
| 379|[0x80008db0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002788]:flt.d a2, fa0, fa1<br> [0x8000278c]:csrrs a7, fflags, zero<br> [0x80002790]:sd a2, 1472(a5)<br>   |
| 380|[0x80008dc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800027a0]:flt.d a2, fa0, fa1<br> [0x800027a4]:csrrs a7, fflags, zero<br> [0x800027a8]:sd a2, 1488(a5)<br>   |
| 381|[0x80008dd0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800027b8]:flt.d a2, fa0, fa1<br> [0x800027bc]:csrrs a7, fflags, zero<br> [0x800027c0]:sd a2, 1504(a5)<br>   |
| 382|[0x80008de0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800027d4]:flt.d a2, fa0, fa1<br> [0x800027d8]:csrrs a7, fflags, zero<br> [0x800027dc]:sd a2, 1520(a5)<br>   |
| 383|[0x80008df0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800027ec]:flt.d a2, fa0, fa1<br> [0x800027f0]:csrrs a7, fflags, zero<br> [0x800027f4]:sd a2, 1536(a5)<br>   |
| 384|[0x80008e00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002804]:flt.d a2, fa0, fa1<br> [0x80002808]:csrrs a7, fflags, zero<br> [0x8000280c]:sd a2, 1552(a5)<br>   |
| 385|[0x80008e10]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000281c]:flt.d a2, fa0, fa1<br> [0x80002820]:csrrs a7, fflags, zero<br> [0x80002824]:sd a2, 1568(a5)<br>   |
| 386|[0x80008e20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002834]:flt.d a2, fa0, fa1<br> [0x80002838]:csrrs a7, fflags, zero<br> [0x8000283c]:sd a2, 1584(a5)<br>   |
| 387|[0x80008e30]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000284c]:flt.d a2, fa0, fa1<br> [0x80002850]:csrrs a7, fflags, zero<br> [0x80002854]:sd a2, 1600(a5)<br>   |
| 388|[0x80008e40]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002864]:flt.d a2, fa0, fa1<br> [0x80002868]:csrrs a7, fflags, zero<br> [0x8000286c]:sd a2, 1616(a5)<br>   |
| 389|[0x80008e50]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000287c]:flt.d a2, fa0, fa1<br> [0x80002880]:csrrs a7, fflags, zero<br> [0x80002884]:sd a2, 1632(a5)<br>   |
| 390|[0x80008e60]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002894]:flt.d a2, fa0, fa1<br> [0x80002898]:csrrs a7, fflags, zero<br> [0x8000289c]:sd a2, 1648(a5)<br>   |
| 391|[0x80008e70]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800028ac]:flt.d a2, fa0, fa1<br> [0x800028b0]:csrrs a7, fflags, zero<br> [0x800028b4]:sd a2, 1664(a5)<br>   |
| 392|[0x80008e80]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800028c4]:flt.d a2, fa0, fa1<br> [0x800028c8]:csrrs a7, fflags, zero<br> [0x800028cc]:sd a2, 1680(a5)<br>   |
| 393|[0x80008e90]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800028dc]:flt.d a2, fa0, fa1<br> [0x800028e0]:csrrs a7, fflags, zero<br> [0x800028e4]:sd a2, 1696(a5)<br>   |
| 394|[0x80008ea0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800028f4]:flt.d a2, fa0, fa1<br> [0x800028f8]:csrrs a7, fflags, zero<br> [0x800028fc]:sd a2, 1712(a5)<br>   |
| 395|[0x80008eb0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000290c]:flt.d a2, fa0, fa1<br> [0x80002910]:csrrs a7, fflags, zero<br> [0x80002914]:sd a2, 1728(a5)<br>   |
| 396|[0x80008ec0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002924]:flt.d a2, fa0, fa1<br> [0x80002928]:csrrs a7, fflags, zero<br> [0x8000292c]:sd a2, 1744(a5)<br>   |
| 397|[0x80008ed0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000293c]:flt.d a2, fa0, fa1<br> [0x80002940]:csrrs a7, fflags, zero<br> [0x80002944]:sd a2, 1760(a5)<br>   |
| 398|[0x80008ee0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002954]:flt.d a2, fa0, fa1<br> [0x80002958]:csrrs a7, fflags, zero<br> [0x8000295c]:sd a2, 1776(a5)<br>   |
| 399|[0x80008ef0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000296c]:flt.d a2, fa0, fa1<br> [0x80002970]:csrrs a7, fflags, zero<br> [0x80002974]:sd a2, 1792(a5)<br>   |
| 400|[0x80008f00]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002984]:flt.d a2, fa0, fa1<br> [0x80002988]:csrrs a7, fflags, zero<br> [0x8000298c]:sd a2, 1808(a5)<br>   |
| 401|[0x80008f10]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000299c]:flt.d a2, fa0, fa1<br> [0x800029a0]:csrrs a7, fflags, zero<br> [0x800029a4]:sd a2, 1824(a5)<br>   |
| 402|[0x80008f20]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800029b4]:flt.d a2, fa0, fa1<br> [0x800029b8]:csrrs a7, fflags, zero<br> [0x800029bc]:sd a2, 1840(a5)<br>   |
| 403|[0x80008f30]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800029cc]:flt.d a2, fa0, fa1<br> [0x800029d0]:csrrs a7, fflags, zero<br> [0x800029d4]:sd a2, 1856(a5)<br>   |
| 404|[0x80008f40]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800029e4]:flt.d a2, fa0, fa1<br> [0x800029e8]:csrrs a7, fflags, zero<br> [0x800029ec]:sd a2, 1872(a5)<br>   |
| 405|[0x80008f50]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800029fc]:flt.d a2, fa0, fa1<br> [0x80002a00]:csrrs a7, fflags, zero<br> [0x80002a04]:sd a2, 1888(a5)<br>   |
| 406|[0x80008f60]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a14]:flt.d a2, fa0, fa1<br> [0x80002a18]:csrrs a7, fflags, zero<br> [0x80002a1c]:sd a2, 1904(a5)<br>   |
| 407|[0x80008f70]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a2c]:flt.d a2, fa0, fa1<br> [0x80002a30]:csrrs a7, fflags, zero<br> [0x80002a34]:sd a2, 1920(a5)<br>   |
| 408|[0x80008f80]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a44]:flt.d a2, fa0, fa1<br> [0x80002a48]:csrrs a7, fflags, zero<br> [0x80002a4c]:sd a2, 1936(a5)<br>   |
| 409|[0x80008f90]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a5c]:flt.d a2, fa0, fa1<br> [0x80002a60]:csrrs a7, fflags, zero<br> [0x80002a64]:sd a2, 1952(a5)<br>   |
| 410|[0x80008fa0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a74]:flt.d a2, fa0, fa1<br> [0x80002a78]:csrrs a7, fflags, zero<br> [0x80002a7c]:sd a2, 1968(a5)<br>   |
| 411|[0x80008fb0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002a8c]:flt.d a2, fa0, fa1<br> [0x80002a90]:csrrs a7, fflags, zero<br> [0x80002a94]:sd a2, 1984(a5)<br>   |
| 412|[0x80008fc0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002aa4]:flt.d a2, fa0, fa1<br> [0x80002aa8]:csrrs a7, fflags, zero<br> [0x80002aac]:sd a2, 2000(a5)<br>   |
| 413|[0x80008fd0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002abc]:flt.d a2, fa0, fa1<br> [0x80002ac0]:csrrs a7, fflags, zero<br> [0x80002ac4]:sd a2, 2016(a5)<br>   |
| 414|[0x80008fe0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002adc]:flt.d a2, fa0, fa1<br> [0x80002ae0]:csrrs a7, fflags, zero<br> [0x80002ae4]:sd a2, 0(a5)<br>      |
| 415|[0x80008ff0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002af4]:flt.d a2, fa0, fa1<br> [0x80002af8]:csrrs a7, fflags, zero<br> [0x80002afc]:sd a2, 16(a5)<br>     |
| 416|[0x80009000]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b0c]:flt.d a2, fa0, fa1<br> [0x80002b10]:csrrs a7, fflags, zero<br> [0x80002b14]:sd a2, 32(a5)<br>     |
| 417|[0x80009010]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b24]:flt.d a2, fa0, fa1<br> [0x80002b28]:csrrs a7, fflags, zero<br> [0x80002b2c]:sd a2, 48(a5)<br>     |
| 418|[0x80009020]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b3c]:flt.d a2, fa0, fa1<br> [0x80002b40]:csrrs a7, fflags, zero<br> [0x80002b44]:sd a2, 64(a5)<br>     |
| 419|[0x80009030]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b54]:flt.d a2, fa0, fa1<br> [0x80002b58]:csrrs a7, fflags, zero<br> [0x80002b5c]:sd a2, 80(a5)<br>     |
| 420|[0x80009040]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002b6c]:flt.d a2, fa0, fa1<br> [0x80002b70]:csrrs a7, fflags, zero<br> [0x80002b74]:sd a2, 96(a5)<br>     |
| 421|[0x80009050]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002b84]:flt.d a2, fa0, fa1<br> [0x80002b88]:csrrs a7, fflags, zero<br> [0x80002b8c]:sd a2, 112(a5)<br>    |
| 422|[0x80009060]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002b9c]:flt.d a2, fa0, fa1<br> [0x80002ba0]:csrrs a7, fflags, zero<br> [0x80002ba4]:sd a2, 128(a5)<br>    |
| 423|[0x80009070]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002bb4]:flt.d a2, fa0, fa1<br> [0x80002bb8]:csrrs a7, fflags, zero<br> [0x80002bbc]:sd a2, 144(a5)<br>    |
| 424|[0x80009080]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002bcc]:flt.d a2, fa0, fa1<br> [0x80002bd0]:csrrs a7, fflags, zero<br> [0x80002bd4]:sd a2, 160(a5)<br>    |
| 425|[0x80009090]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002be4]:flt.d a2, fa0, fa1<br> [0x80002be8]:csrrs a7, fflags, zero<br> [0x80002bec]:sd a2, 176(a5)<br>    |
| 426|[0x800090a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002bfc]:flt.d a2, fa0, fa1<br> [0x80002c00]:csrrs a7, fflags, zero<br> [0x80002c04]:sd a2, 192(a5)<br>    |
| 427|[0x800090b0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002c14]:flt.d a2, fa0, fa1<br> [0x80002c18]:csrrs a7, fflags, zero<br> [0x80002c1c]:sd a2, 208(a5)<br>    |
| 428|[0x800090c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c2c]:flt.d a2, fa0, fa1<br> [0x80002c30]:csrrs a7, fflags, zero<br> [0x80002c34]:sd a2, 224(a5)<br>    |
| 429|[0x800090d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c44]:flt.d a2, fa0, fa1<br> [0x80002c48]:csrrs a7, fflags, zero<br> [0x80002c4c]:sd a2, 240(a5)<br>    |
| 430|[0x800090e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c5c]:flt.d a2, fa0, fa1<br> [0x80002c60]:csrrs a7, fflags, zero<br> [0x80002c64]:sd a2, 256(a5)<br>    |
| 431|[0x800090f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c74]:flt.d a2, fa0, fa1<br> [0x80002c78]:csrrs a7, fflags, zero<br> [0x80002c7c]:sd a2, 272(a5)<br>    |
| 432|[0x80009100]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002c8c]:flt.d a2, fa0, fa1<br> [0x80002c90]:csrrs a7, fflags, zero<br> [0x80002c94]:sd a2, 288(a5)<br>    |
| 433|[0x80009110]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0xfffffffffffff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ca4]:flt.d a2, fa0, fa1<br> [0x80002ca8]:csrrs a7, fflags, zero<br> [0x80002cac]:sd a2, 304(a5)<br>    |
| 434|[0x80009120]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cbc]:flt.d a2, fa0, fa1<br> [0x80002cc0]:csrrs a7, fflags, zero<br> [0x80002cc4]:sd a2, 320(a5)<br>    |
| 435|[0x80009130]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cd4]:flt.d a2, fa0, fa1<br> [0x80002cd8]:csrrs a7, fflags, zero<br> [0x80002cdc]:sd a2, 336(a5)<br>    |
| 436|[0x80009140]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002cec]:flt.d a2, fa0, fa1<br> [0x80002cf0]:csrrs a7, fflags, zero<br> [0x80002cf4]:sd a2, 352(a5)<br>    |
| 437|[0x80009150]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d04]:flt.d a2, fa0, fa1<br> [0x80002d08]:csrrs a7, fflags, zero<br> [0x80002d0c]:sd a2, 368(a5)<br>    |
| 438|[0x80009160]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d1c]:flt.d a2, fa0, fa1<br> [0x80002d20]:csrrs a7, fflags, zero<br> [0x80002d24]:sd a2, 384(a5)<br>    |
| 439|[0x80009170]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d34]:flt.d a2, fa0, fa1<br> [0x80002d38]:csrrs a7, fflags, zero<br> [0x80002d3c]:sd a2, 400(a5)<br>    |
| 440|[0x80009180]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d4c]:flt.d a2, fa0, fa1<br> [0x80002d50]:csrrs a7, fflags, zero<br> [0x80002d54]:sd a2, 416(a5)<br>    |
| 441|[0x80009190]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d64]:flt.d a2, fa0, fa1<br> [0x80002d68]:csrrs a7, fflags, zero<br> [0x80002d6c]:sd a2, 432(a5)<br>    |
| 442|[0x800091a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d7c]:flt.d a2, fa0, fa1<br> [0x80002d80]:csrrs a7, fflags, zero<br> [0x80002d84]:sd a2, 448(a5)<br>    |
| 443|[0x800091b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002d94]:flt.d a2, fa0, fa1<br> [0x80002d98]:csrrs a7, fflags, zero<br> [0x80002d9c]:sd a2, 464(a5)<br>    |
| 444|[0x800091c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002dac]:flt.d a2, fa0, fa1<br> [0x80002db0]:csrrs a7, fflags, zero<br> [0x80002db4]:sd a2, 480(a5)<br>    |
| 445|[0x800091d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002dc4]:flt.d a2, fa0, fa1<br> [0x80002dc8]:csrrs a7, fflags, zero<br> [0x80002dcc]:sd a2, 496(a5)<br>    |
| 446|[0x800091e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ddc]:flt.d a2, fa0, fa1<br> [0x80002de0]:csrrs a7, fflags, zero<br> [0x80002de4]:sd a2, 512(a5)<br>    |
| 447|[0x800091f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002df4]:flt.d a2, fa0, fa1<br> [0x80002df8]:csrrs a7, fflags, zero<br> [0x80002dfc]:sd a2, 528(a5)<br>    |
| 448|[0x80009200]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e0c]:flt.d a2, fa0, fa1<br> [0x80002e10]:csrrs a7, fflags, zero<br> [0x80002e14]:sd a2, 544(a5)<br>    |
| 449|[0x80009210]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e24]:flt.d a2, fa0, fa1<br> [0x80002e28]:csrrs a7, fflags, zero<br> [0x80002e2c]:sd a2, 560(a5)<br>    |
| 450|[0x80009220]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002e3c]:flt.d a2, fa0, fa1<br> [0x80002e40]:csrrs a7, fflags, zero<br> [0x80002e44]:sd a2, 576(a5)<br>    |
| 451|[0x80009230]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002e54]:flt.d a2, fa0, fa1<br> [0x80002e58]:csrrs a7, fflags, zero<br> [0x80002e5c]:sd a2, 592(a5)<br>    |
| 452|[0x80009240]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e6c]:flt.d a2, fa0, fa1<br> [0x80002e70]:csrrs a7, fflags, zero<br> [0x80002e74]:sd a2, 608(a5)<br>    |
| 453|[0x80009250]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e84]:flt.d a2, fa0, fa1<br> [0x80002e88]:csrrs a7, fflags, zero<br> [0x80002e8c]:sd a2, 624(a5)<br>    |
| 454|[0x80009260]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002e9c]:flt.d a2, fa0, fa1<br> [0x80002ea0]:csrrs a7, fflags, zero<br> [0x80002ea4]:sd a2, 640(a5)<br>    |
| 455|[0x80009270]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002eb4]:flt.d a2, fa0, fa1<br> [0x80002eb8]:csrrs a7, fflags, zero<br> [0x80002ebc]:sd a2, 656(a5)<br>    |
| 456|[0x80009280]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ecc]:flt.d a2, fa0, fa1<br> [0x80002ed0]:csrrs a7, fflags, zero<br> [0x80002ed4]:sd a2, 672(a5)<br>    |
| 457|[0x80009290]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002ee4]:flt.d a2, fa0, fa1<br> [0x80002ee8]:csrrs a7, fflags, zero<br> [0x80002eec]:sd a2, 688(a5)<br>    |
| 458|[0x800092a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002efc]:flt.d a2, fa0, fa1<br> [0x80002f00]:csrrs a7, fflags, zero<br> [0x80002f04]:sd a2, 704(a5)<br>    |
| 459|[0x800092b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f14]:flt.d a2, fa0, fa1<br> [0x80002f18]:csrrs a7, fflags, zero<br> [0x80002f1c]:sd a2, 720(a5)<br>    |
| 460|[0x800092c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f2c]:flt.d a2, fa0, fa1<br> [0x80002f30]:csrrs a7, fflags, zero<br> [0x80002f34]:sd a2, 736(a5)<br>    |
| 461|[0x800092d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f44]:flt.d a2, fa0, fa1<br> [0x80002f48]:csrrs a7, fflags, zero<br> [0x80002f4c]:sd a2, 752(a5)<br>    |
| 462|[0x800092e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f5c]:flt.d a2, fa0, fa1<br> [0x80002f60]:csrrs a7, fflags, zero<br> [0x80002f64]:sd a2, 768(a5)<br>    |
| 463|[0x800092f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f74]:flt.d a2, fa0, fa1<br> [0x80002f78]:csrrs a7, fflags, zero<br> [0x80002f7c]:sd a2, 784(a5)<br>    |
| 464|[0x80009300]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002f8c]:flt.d a2, fa0, fa1<br> [0x80002f90]:csrrs a7, fflags, zero<br> [0x80002f94]:sd a2, 800(a5)<br>    |
| 465|[0x80009310]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fa4]:flt.d a2, fa0, fa1<br> [0x80002fa8]:csrrs a7, fflags, zero<br> [0x80002fac]:sd a2, 816(a5)<br>    |
| 466|[0x80009320]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fbc]:flt.d a2, fa0, fa1<br> [0x80002fc0]:csrrs a7, fflags, zero<br> [0x80002fc4]:sd a2, 832(a5)<br>    |
| 467|[0x80009330]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80002fd4]:flt.d a2, fa0, fa1<br> [0x80002fd8]:csrrs a7, fflags, zero<br> [0x80002fdc]:sd a2, 848(a5)<br>    |
| 468|[0x80009340]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80002fec]:flt.d a2, fa0, fa1<br> [0x80002ff0]:csrrs a7, fflags, zero<br> [0x80002ff4]:sd a2, 864(a5)<br>    |
| 469|[0x80009350]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003004]:flt.d a2, fa0, fa1<br> [0x80003008]:csrrs a7, fflags, zero<br> [0x8000300c]:sd a2, 880(a5)<br>    |
| 470|[0x80009360]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000301c]:flt.d a2, fa0, fa1<br> [0x80003020]:csrrs a7, fflags, zero<br> [0x80003024]:sd a2, 896(a5)<br>    |
| 471|[0x80009370]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003034]:flt.d a2, fa0, fa1<br> [0x80003038]:csrrs a7, fflags, zero<br> [0x8000303c]:sd a2, 912(a5)<br>    |
| 472|[0x80009380]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000304c]:flt.d a2, fa0, fa1<br> [0x80003050]:csrrs a7, fflags, zero<br> [0x80003054]:sd a2, 928(a5)<br>    |
| 473|[0x80009390]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003064]:flt.d a2, fa0, fa1<br> [0x80003068]:csrrs a7, fflags, zero<br> [0x8000306c]:sd a2, 944(a5)<br>    |
| 474|[0x800093a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000307c]:flt.d a2, fa0, fa1<br> [0x80003080]:csrrs a7, fflags, zero<br> [0x80003084]:sd a2, 960(a5)<br>    |
| 475|[0x800093b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003094]:flt.d a2, fa0, fa1<br> [0x80003098]:csrrs a7, fflags, zero<br> [0x8000309c]:sd a2, 976(a5)<br>    |
| 476|[0x800093c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800030ac]:flt.d a2, fa0, fa1<br> [0x800030b0]:csrrs a7, fflags, zero<br> [0x800030b4]:sd a2, 992(a5)<br>    |
| 477|[0x800093d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800030c4]:flt.d a2, fa0, fa1<br> [0x800030c8]:csrrs a7, fflags, zero<br> [0x800030cc]:sd a2, 1008(a5)<br>   |
| 478|[0x800093e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800030dc]:flt.d a2, fa0, fa1<br> [0x800030e0]:csrrs a7, fflags, zero<br> [0x800030e4]:sd a2, 1024(a5)<br>   |
| 479|[0x800093f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800030f4]:flt.d a2, fa0, fa1<br> [0x800030f8]:csrrs a7, fflags, zero<br> [0x800030fc]:sd a2, 1040(a5)<br>   |
| 480|[0x80009400]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000310c]:flt.d a2, fa0, fa1<br> [0x80003110]:csrrs a7, fflags, zero<br> [0x80003114]:sd a2, 1056(a5)<br>   |
| 481|[0x80009410]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003124]:flt.d a2, fa0, fa1<br> [0x80003128]:csrrs a7, fflags, zero<br> [0x8000312c]:sd a2, 1072(a5)<br>   |
| 482|[0x80009420]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000313c]:flt.d a2, fa0, fa1<br> [0x80003140]:csrrs a7, fflags, zero<br> [0x80003144]:sd a2, 1088(a5)<br>   |
| 483|[0x80009430]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003154]:flt.d a2, fa0, fa1<br> [0x80003158]:csrrs a7, fflags, zero<br> [0x8000315c]:sd a2, 1104(a5)<br>   |
| 484|[0x80009440]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000316c]:flt.d a2, fa0, fa1<br> [0x80003170]:csrrs a7, fflags, zero<br> [0x80003174]:sd a2, 1120(a5)<br>   |
| 485|[0x80009450]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003184]:flt.d a2, fa0, fa1<br> [0x80003188]:csrrs a7, fflags, zero<br> [0x8000318c]:sd a2, 1136(a5)<br>   |
| 486|[0x80009460]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000319c]:flt.d a2, fa0, fa1<br> [0x800031a0]:csrrs a7, fflags, zero<br> [0x800031a4]:sd a2, 1152(a5)<br>   |
| 487|[0x80009470]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800031b4]:flt.d a2, fa0, fa1<br> [0x800031b8]:csrrs a7, fflags, zero<br> [0x800031bc]:sd a2, 1168(a5)<br>   |
| 488|[0x80009480]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800031cc]:flt.d a2, fa0, fa1<br> [0x800031d0]:csrrs a7, fflags, zero<br> [0x800031d4]:sd a2, 1184(a5)<br>   |
| 489|[0x80009490]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800031e4]:flt.d a2, fa0, fa1<br> [0x800031e8]:csrrs a7, fflags, zero<br> [0x800031ec]:sd a2, 1200(a5)<br>   |
| 490|[0x800094a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800031fc]:flt.d a2, fa0, fa1<br> [0x80003200]:csrrs a7, fflags, zero<br> [0x80003204]:sd a2, 1216(a5)<br>   |
| 491|[0x800094b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003214]:flt.d a2, fa0, fa1<br> [0x80003218]:csrrs a7, fflags, zero<br> [0x8000321c]:sd a2, 1232(a5)<br>   |
| 492|[0x800094c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x8000322c]:flt.d a2, fa0, fa1<br> [0x80003230]:csrrs a7, fflags, zero<br> [0x80003234]:sd a2, 1248(a5)<br>   |
| 493|[0x800094d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003244]:flt.d a2, fa0, fa1<br> [0x80003248]:csrrs a7, fflags, zero<br> [0x8000324c]:sd a2, 1264(a5)<br>   |
| 494|[0x800094e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x8000325c]:flt.d a2, fa0, fa1<br> [0x80003260]:csrrs a7, fflags, zero<br> [0x80003264]:sd a2, 1280(a5)<br>   |
| 495|[0x800094f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003274]:flt.d a2, fa0, fa1<br> [0x80003278]:csrrs a7, fflags, zero<br> [0x8000327c]:sd a2, 1296(a5)<br>   |
| 496|[0x80009500]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000328c]:flt.d a2, fa0, fa1<br> [0x80003290]:csrrs a7, fflags, zero<br> [0x80003294]:sd a2, 1312(a5)<br>   |
| 497|[0x80009510]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800032a4]:flt.d a2, fa0, fa1<br> [0x800032a8]:csrrs a7, fflags, zero<br> [0x800032ac]:sd a2, 1328(a5)<br>   |
| 498|[0x80009520]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800032bc]:flt.d a2, fa0, fa1<br> [0x800032c0]:csrrs a7, fflags, zero<br> [0x800032c4]:sd a2, 1344(a5)<br>   |
| 499|[0x80009530]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800032d4]:flt.d a2, fa0, fa1<br> [0x800032d8]:csrrs a7, fflags, zero<br> [0x800032dc]:sd a2, 1360(a5)<br>   |
| 500|[0x80009540]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800032ec]:flt.d a2, fa0, fa1<br> [0x800032f0]:csrrs a7, fflags, zero<br> [0x800032f4]:sd a2, 1376(a5)<br>   |
| 501|[0x80009550]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003304]:flt.d a2, fa0, fa1<br> [0x80003308]:csrrs a7, fflags, zero<br> [0x8000330c]:sd a2, 1392(a5)<br>   |
| 502|[0x80009560]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x8000331c]:flt.d a2, fa0, fa1<br> [0x80003320]:csrrs a7, fflags, zero<br> [0x80003324]:sd a2, 1408(a5)<br>   |
| 503|[0x80009570]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003334]:flt.d a2, fa0, fa1<br> [0x80003338]:csrrs a7, fflags, zero<br> [0x8000333c]:sd a2, 1424(a5)<br>   |
| 504|[0x80009580]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000334c]:flt.d a2, fa0, fa1<br> [0x80003350]:csrrs a7, fflags, zero<br> [0x80003354]:sd a2, 1440(a5)<br>   |
| 505|[0x80009590]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003364]:flt.d a2, fa0, fa1<br> [0x80003368]:csrrs a7, fflags, zero<br> [0x8000336c]:sd a2, 1456(a5)<br>   |
| 506|[0x800095a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x8000337c]:flt.d a2, fa0, fa1<br> [0x80003380]:csrrs a7, fflags, zero<br> [0x80003384]:sd a2, 1472(a5)<br>   |
| 507|[0x800095b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003394]:flt.d a2, fa0, fa1<br> [0x80003398]:csrrs a7, fflags, zero<br> [0x8000339c]:sd a2, 1488(a5)<br>   |
| 508|[0x800095c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800033ac]:flt.d a2, fa0, fa1<br> [0x800033b0]:csrrs a7, fflags, zero<br> [0x800033b4]:sd a2, 1504(a5)<br>   |
| 509|[0x800095d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800033c8]:flt.d a2, fa0, fa1<br> [0x800033cc]:csrrs a7, fflags, zero<br> [0x800033d0]:sd a2, 1520(a5)<br>   |
| 510|[0x800095e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800033e0]:flt.d a2, fa0, fa1<br> [0x800033e4]:csrrs a7, fflags, zero<br> [0x800033e8]:sd a2, 1536(a5)<br>   |
| 511|[0x800095f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800033f8]:flt.d a2, fa0, fa1<br> [0x800033fc]:csrrs a7, fflags, zero<br> [0x80003400]:sd a2, 1552(a5)<br>   |
| 512|[0x80009600]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003410]:flt.d a2, fa0, fa1<br> [0x80003414]:csrrs a7, fflags, zero<br> [0x80003418]:sd a2, 1568(a5)<br>   |
| 513|[0x80009610]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003428]:flt.d a2, fa0, fa1<br> [0x8000342c]:csrrs a7, fflags, zero<br> [0x80003430]:sd a2, 1584(a5)<br>   |
| 514|[0x80009620]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003440]:flt.d a2, fa0, fa1<br> [0x80003444]:csrrs a7, fflags, zero<br> [0x80003448]:sd a2, 1600(a5)<br>   |
| 515|[0x80009630]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003458]:flt.d a2, fa0, fa1<br> [0x8000345c]:csrrs a7, fflags, zero<br> [0x80003460]:sd a2, 1616(a5)<br>   |
| 516|[0x80009640]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003470]:flt.d a2, fa0, fa1<br> [0x80003474]:csrrs a7, fflags, zero<br> [0x80003478]:sd a2, 1632(a5)<br>   |
| 517|[0x80009650]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003488]:flt.d a2, fa0, fa1<br> [0x8000348c]:csrrs a7, fflags, zero<br> [0x80003490]:sd a2, 1648(a5)<br>   |
| 518|[0x80009660]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800034a0]:flt.d a2, fa0, fa1<br> [0x800034a4]:csrrs a7, fflags, zero<br> [0x800034a8]:sd a2, 1664(a5)<br>   |
| 519|[0x80009670]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800034b8]:flt.d a2, fa0, fa1<br> [0x800034bc]:csrrs a7, fflags, zero<br> [0x800034c0]:sd a2, 1680(a5)<br>   |
| 520|[0x80009680]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800034d0]:flt.d a2, fa0, fa1<br> [0x800034d4]:csrrs a7, fflags, zero<br> [0x800034d8]:sd a2, 1696(a5)<br>   |
| 521|[0x80009690]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800034e8]:flt.d a2, fa0, fa1<br> [0x800034ec]:csrrs a7, fflags, zero<br> [0x800034f0]:sd a2, 1712(a5)<br>   |
| 522|[0x800096a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003500]:flt.d a2, fa0, fa1<br> [0x80003504]:csrrs a7, fflags, zero<br> [0x80003508]:sd a2, 1728(a5)<br>   |
| 523|[0x800096b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003518]:flt.d a2, fa0, fa1<br> [0x8000351c]:csrrs a7, fflags, zero<br> [0x80003520]:sd a2, 1744(a5)<br>   |
| 524|[0x800096c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003530]:flt.d a2, fa0, fa1<br> [0x80003534]:csrrs a7, fflags, zero<br> [0x80003538]:sd a2, 1760(a5)<br>   |
| 525|[0x800096d0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003548]:flt.d a2, fa0, fa1<br> [0x8000354c]:csrrs a7, fflags, zero<br> [0x80003550]:sd a2, 1776(a5)<br>   |
| 526|[0x800096e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003560]:flt.d a2, fa0, fa1<br> [0x80003564]:csrrs a7, fflags, zero<br> [0x80003568]:sd a2, 1792(a5)<br>   |
| 527|[0x800096f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003578]:flt.d a2, fa0, fa1<br> [0x8000357c]:csrrs a7, fflags, zero<br> [0x80003580]:sd a2, 1808(a5)<br>   |
| 528|[0x80009700]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003590]:flt.d a2, fa0, fa1<br> [0x80003594]:csrrs a7, fflags, zero<br> [0x80003598]:sd a2, 1824(a5)<br>   |
| 529|[0x80009710]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800035a8]:flt.d a2, fa0, fa1<br> [0x800035ac]:csrrs a7, fflags, zero<br> [0x800035b0]:sd a2, 1840(a5)<br>   |
| 530|[0x80009720]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800035c0]:flt.d a2, fa0, fa1<br> [0x800035c4]:csrrs a7, fflags, zero<br> [0x800035c8]:sd a2, 1856(a5)<br>   |
| 531|[0x80009730]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800035d8]:flt.d a2, fa0, fa1<br> [0x800035dc]:csrrs a7, fflags, zero<br> [0x800035e0]:sd a2, 1872(a5)<br>   |
| 532|[0x80009740]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800035f0]:flt.d a2, fa0, fa1<br> [0x800035f4]:csrrs a7, fflags, zero<br> [0x800035f8]:sd a2, 1888(a5)<br>   |
| 533|[0x80009750]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003608]:flt.d a2, fa0, fa1<br> [0x8000360c]:csrrs a7, fflags, zero<br> [0x80003610]:sd a2, 1904(a5)<br>   |
| 534|[0x80009760]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003620]:flt.d a2, fa0, fa1<br> [0x80003624]:csrrs a7, fflags, zero<br> [0x80003628]:sd a2, 1920(a5)<br>   |
| 535|[0x80009770]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003638]:flt.d a2, fa0, fa1<br> [0x8000363c]:csrrs a7, fflags, zero<br> [0x80003640]:sd a2, 1936(a5)<br>   |
| 536|[0x80009780]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003650]:flt.d a2, fa0, fa1<br> [0x80003654]:csrrs a7, fflags, zero<br> [0x80003658]:sd a2, 1952(a5)<br>   |
| 537|[0x80009790]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003668]:flt.d a2, fa0, fa1<br> [0x8000366c]:csrrs a7, fflags, zero<br> [0x80003670]:sd a2, 1968(a5)<br>   |
| 538|[0x800097a0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003680]:flt.d a2, fa0, fa1<br> [0x80003684]:csrrs a7, fflags, zero<br> [0x80003688]:sd a2, 1984(a5)<br>   |
| 539|[0x800097b0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003698]:flt.d a2, fa0, fa1<br> [0x8000369c]:csrrs a7, fflags, zero<br> [0x800036a0]:sd a2, 2000(a5)<br>   |
| 540|[0x800097c0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800036b0]:flt.d a2, fa0, fa1<br> [0x800036b4]:csrrs a7, fflags, zero<br> [0x800036b8]:sd a2, 2016(a5)<br>   |
| 541|[0x800097d0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800036d0]:flt.d a2, fa0, fa1<br> [0x800036d4]:csrrs a7, fflags, zero<br> [0x800036d8]:sd a2, 0(a5)<br>      |
| 542|[0x800097e0]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800036e8]:flt.d a2, fa0, fa1<br> [0x800036ec]:csrrs a7, fflags, zero<br> [0x800036f0]:sd a2, 16(a5)<br>     |
| 543|[0x800097f0]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003700]:flt.d a2, fa0, fa1<br> [0x80003704]:csrrs a7, fflags, zero<br> [0x80003708]:sd a2, 32(a5)<br>     |
| 544|[0x80009800]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003718]:flt.d a2, fa0, fa1<br> [0x8000371c]:csrrs a7, fflags, zero<br> [0x80003720]:sd a2, 48(a5)<br>     |
| 545|[0x80009810]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003730]:flt.d a2, fa0, fa1<br> [0x80003734]:csrrs a7, fflags, zero<br> [0x80003738]:sd a2, 64(a5)<br>     |
| 546|[0x80009820]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003748]:flt.d a2, fa0, fa1<br> [0x8000374c]:csrrs a7, fflags, zero<br> [0x80003750]:sd a2, 80(a5)<br>     |
| 547|[0x80009830]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003760]:flt.d a2, fa0, fa1<br> [0x80003764]:csrrs a7, fflags, zero<br> [0x80003768]:sd a2, 96(a5)<br>     |
| 548|[0x80009840]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003778]:flt.d a2, fa0, fa1<br> [0x8000377c]:csrrs a7, fflags, zero<br> [0x80003780]:sd a2, 112(a5)<br>    |
| 549|[0x80009850]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003790]:flt.d a2, fa0, fa1<br> [0x80003794]:csrrs a7, fflags, zero<br> [0x80003798]:sd a2, 128(a5)<br>    |
| 550|[0x80009860]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800037a8]:flt.d a2, fa0, fa1<br> [0x800037ac]:csrrs a7, fflags, zero<br> [0x800037b0]:sd a2, 144(a5)<br>    |
| 551|[0x80009870]<br>0x0000000000000001|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800037c0]:flt.d a2, fa0, fa1<br> [0x800037c4]:csrrs a7, fflags, zero<br> [0x800037c8]:sd a2, 160(a5)<br>    |
| 552|[0x80009880]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800037d8]:flt.d a2, fa0, fa1<br> [0x800037dc]:csrrs a7, fflags, zero<br> [0x800037e0]:sd a2, 176(a5)<br>    |
| 553|[0x80009890]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800037f0]:flt.d a2, fa0, fa1<br> [0x800037f4]:csrrs a7, fflags, zero<br> [0x800037f8]:sd a2, 192(a5)<br>    |
| 554|[0x800098a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x3f8 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003808]:flt.d a2, fa0, fa1<br> [0x8000380c]:csrrs a7, fflags, zero<br> [0x80003810]:sd a2, 208(a5)<br>    |
| 555|[0x800098b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003820]:flt.d a2, fa0, fa1<br> [0x80003824]:csrrs a7, fflags, zero<br> [0x80003828]:sd a2, 224(a5)<br>    |
| 556|[0x800098c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003838]:flt.d a2, fa0, fa1<br> [0x8000383c]:csrrs a7, fflags, zero<br> [0x80003840]:sd a2, 240(a5)<br>    |
| 557|[0x800098d0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003850]:flt.d a2, fa0, fa1<br> [0x80003854]:csrrs a7, fflags, zero<br> [0x80003858]:sd a2, 256(a5)<br>    |
| 558|[0x800098e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003868]:flt.d a2, fa0, fa1<br> [0x8000386c]:csrrs a7, fflags, zero<br> [0x80003870]:sd a2, 272(a5)<br>    |
| 559|[0x800098f0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003880]:flt.d a2, fa0, fa1<br> [0x80003884]:csrrs a7, fflags, zero<br> [0x80003888]:sd a2, 288(a5)<br>    |
| 560|[0x80009900]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003898]:flt.d a2, fa0, fa1<br> [0x8000389c]:csrrs a7, fflags, zero<br> [0x800038a0]:sd a2, 304(a5)<br>    |
| 561|[0x80009910]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x8000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800038b0]:flt.d a2, fa0, fa1<br> [0x800038b4]:csrrs a7, fflags, zero<br> [0x800038b8]:sd a2, 320(a5)<br>    |
| 562|[0x80009920]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800038c8]:flt.d a2, fa0, fa1<br> [0x800038cc]:csrrs a7, fflags, zero<br> [0x800038d0]:sd a2, 336(a5)<br>    |
| 563|[0x80009930]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x800038e0]:flt.d a2, fa0, fa1<br> [0x800038e4]:csrrs a7, fflags, zero<br> [0x800038e8]:sd a2, 352(a5)<br>    |
| 564|[0x80009940]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800038f8]:flt.d a2, fa0, fa1<br> [0x800038fc]:csrrs a7, fflags, zero<br> [0x80003900]:sd a2, 368(a5)<br>    |
| 565|[0x80009950]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003910]:flt.d a2, fa0, fa1<br> [0x80003914]:csrrs a7, fflags, zero<br> [0x80003918]:sd a2, 384(a5)<br>    |
| 566|[0x80009960]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003928]:flt.d a2, fa0, fa1<br> [0x8000392c]:csrrs a7, fflags, zero<br> [0x80003930]:sd a2, 400(a5)<br>    |
| 567|[0x80009970]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x80003940]:flt.d a2, fa0, fa1<br> [0x80003944]:csrrs a7, fflags, zero<br> [0x80003948]:sd a2, 416(a5)<br>    |
| 568|[0x80009980]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003958]:flt.d a2, fa0, fa1<br> [0x8000395c]:csrrs a7, fflags, zero<br> [0x80003960]:sd a2, 432(a5)<br>    |
| 569|[0x80009990]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003970]:flt.d a2, fa0, fa1<br> [0x80003974]:csrrs a7, fflags, zero<br> [0x80003978]:sd a2, 448(a5)<br>    |
| 570|[0x800099a0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x80003988]:flt.d a2, fa0, fa1<br> [0x8000398c]:csrrs a7, fflags, zero<br> [0x80003990]:sd a2, 464(a5)<br>    |
| 571|[0x800099b0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                                                                     |[0x800039a0]:flt.d a2, fa0, fa1<br> [0x800039a4]:csrrs a7, fflags, zero<br> [0x800039a8]:sd a2, 480(a5)<br>    |
| 572|[0x800099c0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800039b8]:flt.d a2, fa0, fa1<br> [0x800039bc]:csrrs a7, fflags, zero<br> [0x800039c0]:sd a2, 496(a5)<br>    |
| 573|[0x800099d0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000002 and rm_val == 1  #nosat<br>                                                                                     |[0x800039d0]:flt.d a2, fa0, fa1<br> [0x800039d4]:csrrs a7, fflags, zero<br> [0x800039d8]:sd a2, 512(a5)<br>    |
| 574|[0x800099e0]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x800039e8]:flt.d a2, fa0, fa1<br> [0x800039ec]:csrrs a7, fflags, zero<br> [0x800039f0]:sd a2, 528(a5)<br>    |
| 575|[0x800099f0]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000001 and rm_val == 1  #nosat<br>                                                                                     |[0x80003a00]:flt.d a2, fa0, fa1<br> [0x80003a04]:csrrs a7, fflags, zero<br> [0x80003a08]:sd a2, 544(a5)<br>    |
| 576|[0x80009a00]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000000 and rm_val == 1  #nosat<br>                                                                                     |[0x80003a18]:flt.d a2, fa0, fa1<br> [0x80003a1c]:csrrs a7, fflags, zero<br> [0x80003a20]:sd a2, 560(a5)<br>    |
