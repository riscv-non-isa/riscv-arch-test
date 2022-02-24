
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800007d0')]      |
| SIG_REGION                | [('0x80002310', '0x800025a0', '82 dwords')]      |
| COV_LABELS                | fcvt.w.d_b22      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.w.d_b22-01.S/ref.S    |
| Total Number of coverpoints| 109     |
| Total Coverpoints Hit     | 105      |
| Total Signature Updates   | 82      |
| STAT1                     | 40      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 41     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c0]:fcvt.w.d a1, fa0, dyn
      [0x800007c4]:csrrs a7, fflags, zero
      [0x800007c8]:sd a1, 224(a5)
 -- Signature Address: 0x80002590 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.w.d
      - rd : x11
      - rs1 : f10
      - fs1 == 0 and fe1 == 0x3ca and fm1 == 0x30e08ceb506f6 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.w.d', 'rd : x14', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08577924770d3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.w.d a4, ft5, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:sd a4, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000001




Last Coverpoint : ['rd : x21', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x5ca and fm1 == 0xf871c6ee84270 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.w.d s5, ft2, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:sd s5, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000011




Last Coverpoint : ['rd : x0', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x3ca and fm1 == 0x30e08ceb506f6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.w.d zero, fs4, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:sd zero, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f0', 'fs1 == 1 and fe1 == 0x421 and fm1 == 0x2a96d71097999 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.w.d s7, ft0, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:sd s7, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x420 and fm1 == 0xc5ec6c6880007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.w.d a3, fa4, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:sd a3, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f6', 'fs1 == 1 and fe1 == 0x41f and fm1 == 0x1ce80265039f6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.w.d s2, ft6, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:sd s2, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x41e and fm1 == 0xe9b7e5fc9eba4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.w.d t0, fa1, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:sd t0, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f13', 'fs1 == 1 and fe1 == 0x41d and fm1 == 0x9136562694646 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.w.d a0, fa3, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:sd a0, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x41c and fm1 == 0x14b91dae98554 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.w.d t5, fs11, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:sd t5, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x41b and fm1 == 0x889261270dee2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.w.d t4, fs10, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:sd t4, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x41a and fm1 == 0x9b4f3d167533a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fcvt.w.d gp, ft7, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:sd gp, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800023b8]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x419 and fm1 == 0x7f21608208d09 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fcvt.w.d s6, fs7, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:sd s6, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x800023c8]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x418 and fm1 == 0x3d06169b1dcbf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fcvt.w.d t2, ft10, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:sd t2, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x800023d8]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x417 and fm1 == 0x396bad798c9cf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fcvt.w.d t1, fs9, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:sd t1, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x800023e8]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x416 and fm1 == 0x807dad814d575 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fcvt.w.d t6, fs6, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:sd t6, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x800023f8]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x415 and fm1 == 0x95a4da7298c66 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fcvt.w.d s11, fa5, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:sd s11, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80002408]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x414 and fm1 == 0x785036f9fb997 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fcvt.w.d a1, fs3, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:sd a1, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80002418]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x413 and fm1 == 0x8c8a1aaac3142 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fcvt.w.d s1, fs1, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:sd s1, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80002428]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x412 and fm1 == 0x3d7c9e5f0307e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fcvt.w.d a2, ft9, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:sd a2, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80002438]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x411 and fm1 == 0x5dbbb894deab4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000058c]:fcvt.w.d a5, fs8, dyn
	-[0x80000590]:csrrs s5, fflags, zero
	-[0x80000594]:sd a5, 0(s3)
Current Store : [0x80000598] : sd s5, 8(s3) -- Store: [0x80002448]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x410 and fm1 == 0xe8dacf0e58650 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fcvt.w.d s9, fs5, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:sd s9, 0(a5)
Current Store : [0x800005bc] : sd a7, 8(a5) -- Store: [0x80002458]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x40f and fm1 == 0x224c03c53d0e3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fcvt.w.d s4, ft11, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:sd s4, 16(a5)
Current Store : [0x800005d4] : sd a7, 24(a5) -- Store: [0x80002468]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x40e and fm1 == 0x953b00b54aa22 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fcvt.w.d s3, ft4, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:sd s3, 32(a5)
Current Store : [0x800005ec] : sd a7, 40(a5) -- Store: [0x80002478]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x40d and fm1 == 0x9d02f708cc1b6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000604]:fcvt.w.d a6, ft8, dyn
	-[0x80000608]:csrrs s5, fflags, zero
	-[0x8000060c]:sd a6, 0(s3)
Current Store : [0x80000610] : sd s5, 8(s3) -- Store: [0x80002488]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x40c and fm1 == 0x3d480fb7f6f5d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fcvt.w.d fp, ft1, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:sd fp, 0(a5)
Current Store : [0x80000634] : sd a7, 8(a5) -- Store: [0x80002498]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x40b and fm1 == 0xc491074f942cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000064c]:fcvt.w.d a7, fs2, dyn
	-[0x80000650]:csrrs s5, fflags, zero
	-[0x80000654]:sd a7, 0(s3)
Current Store : [0x80000658] : sd s5, 8(s3) -- Store: [0x800024a8]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x40a and fm1 == 0x5cd28a96ec2b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000670]:fcvt.w.d s8, fa0, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:sd s8, 0(a5)
Current Store : [0x8000067c] : sd a7, 8(a5) -- Store: [0x800024b8]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x409 and fm1 == 0xaf9492cb7362c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fcvt.w.d tp, fa6, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:sd tp, 16(a5)
Current Store : [0x80000694] : sd a7, 24(a5) -- Store: [0x800024c8]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x408 and fm1 == 0x43277acca7f0d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fcvt.w.d s10, fa2, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:sd s10, 32(a5)
Current Store : [0x800006ac] : sd a7, 40(a5) -- Store: [0x800024d8]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x407 and fm1 == 0x489b36bd7f503 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fcvt.w.d sp, fa7, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:sd sp, 48(a5)
Current Store : [0x800006c4] : sd a7, 56(a5) -- Store: [0x800024e8]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x406 and fm1 == 0x5ae6a9a6ab329 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d0]:fcvt.w.d ra, fs0, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:sd ra, 64(a5)
Current Store : [0x800006dc] : sd a7, 72(a5) -- Store: [0x800024f8]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x405 and fm1 == 0xdc3386b9f15c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fcvt.w.d t3, ft3, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:sd t3, 80(a5)
Current Store : [0x800006f4] : sd a7, 88(a5) -- Store: [0x80002508]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x404 and fm1 == 0x5c74eff1e5bef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fcvt.w.d a1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:sd a1, 96(a5)
Current Store : [0x8000070c] : sd a7, 104(a5) -- Store: [0x80002518]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x403 and fm1 == 0xf3ebcf3d06f86 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000718]:fcvt.w.d a1, fa0, dyn
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:sd a1, 112(a5)
Current Store : [0x80000724] : sd a7, 120(a5) -- Store: [0x80002528]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x402 and fm1 == 0x137a953e8eb43 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000730]:fcvt.w.d a1, fa0, dyn
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:sd a1, 128(a5)
Current Store : [0x8000073c] : sd a7, 136(a5) -- Store: [0x80002538]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x401 and fm1 == 0x854a908ceac39 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000748]:fcvt.w.d a1, fa0, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:sd a1, 144(a5)
Current Store : [0x80000754] : sd a7, 152(a5) -- Store: [0x80002548]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x400 and fm1 == 0xcf84ba749f9c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fcvt.w.d a1, fa0, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:sd a1, 160(a5)
Current Store : [0x8000076c] : sd a7, 168(a5) -- Store: [0x80002558]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xd2d6b7dc59a3a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000778]:fcvt.w.d a1, fa0, dyn
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:sd a1, 176(a5)
Current Store : [0x80000784] : sd a7, 184(a5) -- Store: [0x80002568]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x3fe and fm1 == 0x766ba34c2da80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fcvt.w.d a1, fa0, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:sd a1, 192(a5)
Current Store : [0x8000079c] : sd a7, 200(a5) -- Store: [0x80002578]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3fd and fm1 == 0x93fdc7b89296c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fcvt.w.d a1, fa0, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:sd a1, 208(a5)
Current Store : [0x800007b4] : sd a7, 216(a5) -- Store: [0x80002588]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.w.d', 'rd : x11', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x3ca and fm1 == 0x30e08ceb506f6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fcvt.w.d a1, fa0, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:sd a1, 224(a5)
Current Store : [0x800007cc] : sd a7, 232(a5) -- Store: [0x80002598]:0x0000000000000011





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

|s.no|            signature             |                                                               coverpoints                                                               |                                                       code                                                       |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000000000000|- opcode : fcvt.w.d<br> - rd : x14<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08577924770d3 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.w.d a4, ft5, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:sd a4, 0(a5)<br>      |
|   2|[0x80002320]<br>0x000000007FFFFFFF|- rd : x21<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x5ca and fm1 == 0xf871c6ee84270 and rm_val == 0  #nosat<br>                         |[0x800003d0]:fcvt.w.d s5, ft2, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:sd s5, 16(a5)<br>     |
|   3|[0x80002330]<br>0x0000000000000000|- rd : x0<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x3ca and fm1 == 0x30e08ceb506f6 and rm_val == 0  #nosat<br>                         |[0x800003e8]:fcvt.w.d zero, fs4, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:sd zero, 32(a5)<br> |
|   4|[0x80002340]<br>0xFFFFFFFF80000000|- rd : x23<br> - rs1 : f0<br> - fs1 == 1 and fe1 == 0x421 and fm1 == 0x2a96d71097999 and rm_val == 0  #nosat<br>                         |[0x80000400]:fcvt.w.d s7, ft0, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:sd s7, 48(a5)<br>     |
|   5|[0x80002350]<br>0x000000007FFFFFFF|- rd : x13<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x420 and fm1 == 0xc5ec6c6880007 and rm_val == 0  #nosat<br>                        |[0x80000418]:fcvt.w.d a3, fa4, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:sd a3, 64(a5)<br>     |
|   6|[0x80002360]<br>0xFFFFFFFF80000000|- rd : x18<br> - rs1 : f6<br> - fs1 == 1 and fe1 == 0x41f and fm1 == 0x1ce80265039f6 and rm_val == 0  #nosat<br>                         |[0x80000430]:fcvt.w.d s2, ft6, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:sd s2, 80(a5)<br>     |
|   7|[0x80002370]<br>0xFFFFFFFF80000000|- rd : x5<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x41e and fm1 == 0xe9b7e5fc9eba4 and rm_val == 0  #nosat<br>                         |[0x80000448]:fcvt.w.d t0, fa1, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:sd t0, 96(a5)<br>     |
|   8|[0x80002380]<br>0xFFFFFFFF9BB26A76|- rd : x10<br> - rs1 : f13<br> - fs1 == 1 and fe1 == 0x41d and fm1 == 0x9136562694646 and rm_val == 0  #nosat<br>                        |[0x80000460]:fcvt.w.d a0, fa3, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:sd a0, 112(a5)<br>    |
|   9|[0x80002390]<br>0x00000000229723B6|- rd : x30<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x41c and fm1 == 0x14b91dae98554 and rm_val == 0  #nosat<br>                        |[0x80000478]:fcvt.w.d t5, fs11, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:sd t5, 128(a5)<br>   |
|  10|[0x800023a0]<br>0xFFFFFFFFE776D9EE|- rd : x29<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x41b and fm1 == 0x889261270dee2 and rm_val == 0  #nosat<br>                        |[0x80000490]:fcvt.w.d t4, fs10, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:sd t4, 144(a5)<br>   |
|  11|[0x800023b0]<br>0xFFFFFFFFF3258617|- rd : x3<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x41a and fm1 == 0x9b4f3d167533a and rm_val == 0  #nosat<br>                          |[0x800004a8]:fcvt.w.d gp, ft7, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:sd gp, 160(a5)<br>    |
|  12|[0x800023c0]<br>0x0000000005FC8582|- rd : x22<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x419 and fm1 == 0x7f21608208d09 and rm_val == 0  #nosat<br>                        |[0x800004c0]:fcvt.w.d s6, fs7, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:sd s6, 176(a5)<br>    |
|  13|[0x800023d0]<br>0x00000000027A0C2D|- rd : x7<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x418 and fm1 == 0x3d06169b1dcbf and rm_val == 0  #nosat<br>                         |[0x800004d8]:fcvt.w.d t2, ft10, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:sd t2, 192(a5)<br>   |
|  14|[0x800023e0]<br>0xFFFFFFFFFEC69453|- rd : x6<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x417 and fm1 == 0x396bad798c9cf and rm_val == 0  #nosat<br>                         |[0x800004f0]:fcvt.w.d t1, fs9, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:sd t1, 208(a5)<br>    |
|  15|[0x800023f0]<br>0x0000000000C03ED7|- rd : x31<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x416 and fm1 == 0x807dad814d575 and rm_val == 0  #nosat<br>                        |[0x80000508]:fcvt.w.d t6, fs6, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:sd t6, 224(a5)<br>    |
|  16|[0x80002400]<br>0x0000000000656937|- rd : x27<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x415 and fm1 == 0x95a4da7298c66 and rm_val == 0  #nosat<br>                        |[0x80000520]:fcvt.w.d s11, fa5, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:sd s11, 240(a5)<br>  |
|  17|[0x80002410]<br>0x00000000002F0A07|- rd : x11<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x414 and fm1 == 0x785036f9fb997 and rm_val == 0  #nosat<br>                        |[0x80000538]:fcvt.w.d a1, fs3, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:sd a1, 256(a5)<br>    |
|  18|[0x80002420]<br>0x000000000018C8A2|- rd : x9<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x413 and fm1 == 0x8c8a1aaac3142 and rm_val == 0  #nosat<br>                          |[0x80000550]:fcvt.w.d s1, fs1, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:sd s1, 272(a5)<br>    |
|  19|[0x80002430]<br>0x000000000009EBE5|- rd : x12<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x412 and fm1 == 0x3d7c9e5f0307e and rm_val == 0  #nosat<br>                        |[0x80000568]:fcvt.w.d a2, ft9, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:sd a2, 288(a5)<br>    |
|  20|[0x80002440]<br>0xFFFFFFFFFFFA8911|- rd : x15<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x411 and fm1 == 0x5dbbb894deab4 and rm_val == 0  #nosat<br>                        |[0x8000058c]:fcvt.w.d a5, fs8, dyn<br> [0x80000590]:csrrs s5, fflags, zero<br> [0x80000594]:sd a5, 0(s3)<br>      |
|  21|[0x80002450]<br>0x000000000003D1B6|- rd : x25<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x410 and fm1 == 0xe8dacf0e58650 and rm_val == 0  #nosat<br>                        |[0x800005b0]:fcvt.w.d s9, fs5, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:sd s9, 0(a5)<br>      |
|  22|[0x80002460]<br>0x000000000001224C|- rd : x20<br> - rs1 : f31<br> - fs1 == 0 and fe1 == 0x40f and fm1 == 0x224c03c53d0e3 and rm_val == 0  #nosat<br>                        |[0x800005c8]:fcvt.w.d s4, ft11, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:sd s4, 16(a5)<br>    |
|  23|[0x80002470]<br>0x000000000000CA9E|- rd : x19<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x40e and fm1 == 0x953b00b54aa22 and rm_val == 0  #nosat<br>                         |[0x800005e0]:fcvt.w.d s3, ft4, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:sd s3, 32(a5)<br>     |
|  24|[0x80002480]<br>0x0000000000006741|- rd : x16<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x40d and fm1 == 0x9d02f708cc1b6 and rm_val == 0  #nosat<br>                        |[0x80000604]:fcvt.w.d a6, ft8, dyn<br> [0x80000608]:csrrs s5, fflags, zero<br> [0x8000060c]:sd a6, 0(s3)<br>      |
|  25|[0x80002490]<br>0xFFFFFFFFFFFFD857|- rd : x8<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x40c and fm1 == 0x3d480fb7f6f5d and rm_val == 0  #nosat<br>                          |[0x80000628]:fcvt.w.d fp, ft1, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:sd fp, 0(a5)<br>      |
|  26|[0x800024a0]<br>0xFFFFFFFFFFFFE3B7|- rd : x17<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x40b and fm1 == 0xc491074f942cb and rm_val == 0  #nosat<br>                        |[0x8000064c]:fcvt.w.d a7, fs2, dyn<br> [0x80000650]:csrrs s5, fflags, zero<br> [0x80000654]:sd a7, 0(s3)<br>      |
|  27|[0x800024b0]<br>0x0000000000000AE7|- rd : x24<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x40a and fm1 == 0x5cd28a96ec2b3 and rm_val == 0  #nosat<br>                        |[0x80000670]:fcvt.w.d s8, fa0, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:sd s8, 0(a5)<br>      |
|  28|[0x800024c0]<br>0x00000000000006BE|- rd : x4<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x409 and fm1 == 0xaf9492cb7362c and rm_val == 0  #nosat<br>                         |[0x80000688]:fcvt.w.d tp, fa6, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:sd tp, 16(a5)<br>     |
|  29|[0x800024d0]<br>0x0000000000000286|- rd : x26<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x408 and fm1 == 0x43277acca7f0d and rm_val == 0  #nosat<br>                        |[0x800006a0]:fcvt.w.d s10, fa2, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:sd s10, 32(a5)<br>   |
|  30|[0x800024e0]<br>0xFFFFFFFFFFFFFEB7|- rd : x2<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x407 and fm1 == 0x489b36bd7f503 and rm_val == 0  #nosat<br>                         |[0x800006b8]:fcvt.w.d sp, fa7, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:sd sp, 48(a5)<br>     |
|  31|[0x800024f0]<br>0x00000000000000AD|- rd : x1<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x406 and fm1 == 0x5ae6a9a6ab329 and rm_val == 0  #nosat<br>                          |[0x800006d0]:fcvt.w.d ra, fs0, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:sd ra, 64(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000077|- rd : x28<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x405 and fm1 == 0xdc3386b9f15c4 and rm_val == 0  #nosat<br>                         |[0x800006e8]:fcvt.w.d t3, ft3, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:sd t3, 80(a5)<br>     |
|  33|[0x80002510]<br>0x000000000000002C|- fs1 == 0 and fe1 == 0x404 and fm1 == 0x5c74eff1e5bef and rm_val == 0  #nosat<br>                                                       |[0x80000700]:fcvt.w.d a1, fa0, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:sd a1, 96(a5)<br>     |
|  34|[0x80002520]<br>0xFFFFFFFFFFFFFFE1|- fs1 == 1 and fe1 == 0x403 and fm1 == 0xf3ebcf3d06f86 and rm_val == 0  #nosat<br>                                                       |[0x80000718]:fcvt.w.d a1, fa0, dyn<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:sd a1, 112(a5)<br>    |
|  35|[0x80002530]<br>0x0000000000000009|- fs1 == 0 and fe1 == 0x402 and fm1 == 0x137a953e8eb43 and rm_val == 0  #nosat<br>                                                       |[0x80000730]:fcvt.w.d a1, fa0, dyn<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:sd a1, 128(a5)<br>    |
|  36|[0x80002540]<br>0x0000000000000006|- fs1 == 0 and fe1 == 0x401 and fm1 == 0x854a908ceac39 and rm_val == 0  #nosat<br>                                                       |[0x80000748]:fcvt.w.d a1, fa0, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:sd a1, 144(a5)<br>    |
|  37|[0x80002550]<br>0x0000000000000004|- fs1 == 0 and fe1 == 0x400 and fm1 == 0xcf84ba749f9c5 and rm_val == 0  #nosat<br>                                                       |[0x80000760]:fcvt.w.d a1, fa0, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:sd a1, 160(a5)<br>    |
|  38|[0x80002560]<br>0x0000000000000002|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xd2d6b7dc59a3a and rm_val == 0  #nosat<br>                                                       |[0x80000778]:fcvt.w.d a1, fa0, dyn<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:sd a1, 176(a5)<br>    |
|  39|[0x80002570]<br>0xFFFFFFFFFFFFFFFF|- fs1 == 1 and fe1 == 0x3fe and fm1 == 0x766ba34c2da80 and rm_val == 0  #nosat<br>                                                       |[0x80000790]:fcvt.w.d a1, fa0, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:sd a1, 192(a5)<br>    |
|  40|[0x80002580]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x3fd and fm1 == 0x93fdc7b89296c and rm_val == 0  #nosat<br>                                                       |[0x800007a8]:fcvt.w.d a1, fa0, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:sd a1, 208(a5)<br>    |
