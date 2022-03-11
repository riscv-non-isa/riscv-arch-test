
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x800005f0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '82 dwords')]      |
| COV_LABELS                | fcvt.w.s_b22      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.w.s/riscof_work/fcvt.w.s_b22-01.S/ref.S    |
| Total Number of coverpoints| 109     |
| Total Coverpoints Hit     | 105      |
| Total Signature Updates   | 89      |
| STAT1                     | 40      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 41     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:fcvt.w.s t6, ft11, dyn
      [0x800005dc]:csrrs a7, fflags, zero
      [0x800005e0]:sw t6, 304(a5)
 -- Signature Address: 0x80002490 Data: 0xFFFFFFFFFFFFFF60
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.w.s
      - rd : x31
      - rs1 : f31
      - fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x4', 'rs1 : f25', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.w.s tp, fs9, dyn
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw tp, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002214]:0x0000000000000001




Last Coverpoint : ['rd : x6', 'rs1 : f3', 'fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e8]:fcvt.w.s t1, ft3, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw t1, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002224]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000200]:fcvt.w.s fp, fs6, dyn
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw fp, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002234]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f2', 'fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000224]:fcvt.w.s a6, ft2, dyn
	-[0x80000228]:csrrs s5, fflags, zero
	-[0x8000022c]:sw a6, 0(s3)
Current Store : [0x80000230] : sw s5, 4(s3) -- Store: [0x80002244]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f4', 'fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000248]:fcvt.w.s s2, ft4, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:sw s2, 0(a5)
Current Store : [0x80000254] : sw a7, 4(a5) -- Store: [0x80002254]:0x0000000000000011




Last Coverpoint : ['rd : x21', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000260]:fcvt.w.s s5, fa6, dyn
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw s5, 16(a5)
Current Store : [0x8000026c] : sw a7, 20(a5) -- Store: [0x80002264]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000278]:fcvt.w.s a1, ft7, dyn
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw a1, 32(a5)
Current Store : [0x80000284] : sw a7, 36(a5) -- Store: [0x80002274]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000290]:fcvt.w.s s11, fa4, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw s11, 48(a5)
Current Store : [0x8000029c] : sw a7, 52(a5) -- Store: [0x80002284]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a8]:fcvt.w.s t5, fs1, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:sw t5, 64(a5)
Current Store : [0x800002b4] : sw a7, 68(a5) -- Store: [0x80002294]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c0]:fcvt.w.s t0, fs2, dyn
	-[0x800002c4]:csrrs a7, fflags, zero
	-[0x800002c8]:sw t0, 80(a5)
Current Store : [0x800002cc] : sw a7, 84(a5) -- Store: [0x800022a4]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fcvt.w.s a5, fs4, dyn
	-[0x800002e8]:csrrs s5, fflags, zero
	-[0x800002ec]:sw a5, 0(s3)
Current Store : [0x800002f0] : sw s5, 4(s3) -- Store: [0x800022b4]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000308]:fcvt.w.s a4, ft8, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw a4, 0(a5)
Current Store : [0x80000314] : sw a7, 4(a5) -- Store: [0x800022c4]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000320]:fcvt.w.s ra, fa3, dyn
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw ra, 16(a5)
Current Store : [0x8000032c] : sw a7, 20(a5) -- Store: [0x800022d4]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000338]:fcvt.w.s gp, ft5, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:sw gp, 32(a5)
Current Store : [0x80000344] : sw a7, 36(a5) -- Store: [0x800022e4]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000350]:fcvt.w.s t2, fs8, dyn
	-[0x80000354]:csrrs a7, fflags, zero
	-[0x80000358]:sw t2, 48(a5)
Current Store : [0x8000035c] : sw a7, 52(a5) -- Store: [0x800022f4]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000368]:fcvt.w.s a3, fa2, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw a3, 64(a5)
Current Store : [0x80000374] : sw a7, 68(a5) -- Store: [0x80002304]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000380]:fcvt.w.s s10, fs10, dyn
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:sw s10, 80(a5)
Current Store : [0x8000038c] : sw a7, 84(a5) -- Store: [0x80002314]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000398]:fcvt.w.s t4, ft10, dyn
	-[0x8000039c]:csrrs a7, fflags, zero
	-[0x800003a0]:sw t4, 96(a5)
Current Store : [0x800003a4] : sw a7, 100(a5) -- Store: [0x80002324]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b0]:fcvt.w.s s4, ft0, dyn
	-[0x800003b4]:csrrs a7, fflags, zero
	-[0x800003b8]:sw s4, 112(a5)
Current Store : [0x800003bc] : sw a7, 116(a5) -- Store: [0x80002334]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c8]:fcvt.w.s t3, fs3, dyn
	-[0x800003cc]:csrrs a7, fflags, zero
	-[0x800003d0]:sw t3, 128(a5)
Current Store : [0x800003d4] : sw a7, 132(a5) -- Store: [0x80002344]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003ec]:fcvt.w.s a7, fs7, dyn
	-[0x800003f0]:csrrs s5, fflags, zero
	-[0x800003f4]:sw a7, 0(s3)
Current Store : [0x800003f8] : sw s5, 4(s3) -- Store: [0x80002354]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000410]:fcvt.w.s a2, fa7, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:sw a2, 0(a5)
Current Store : [0x8000041c] : sw a7, 4(a5) -- Store: [0x80002364]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000428]:fcvt.w.s sp, fs5, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw sp, 16(a5)
Current Store : [0x80000434] : sw a7, 20(a5) -- Store: [0x80002374]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000440]:fcvt.w.s s1, fs11, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw s1, 32(a5)
Current Store : [0x8000044c] : sw a7, 36(a5) -- Store: [0x80002384]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000458]:fcvt.w.s s3, fa1, dyn
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw s3, 48(a5)
Current Store : [0x80000464] : sw a7, 52(a5) -- Store: [0x80002394]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000470]:fcvt.w.s s6, fa5, dyn
	-[0x80000474]:csrrs a7, fflags, zero
	-[0x80000478]:sw s6, 64(a5)
Current Store : [0x8000047c] : sw a7, 68(a5) -- Store: [0x800023a4]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000488]:fcvt.w.s s7, ft9, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:sw s7, 80(a5)
Current Store : [0x80000494] : sw a7, 84(a5) -- Store: [0x800023b4]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fcvt.w.s t6, fs0, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw t6, 96(a5)
Current Store : [0x800004ac] : sw a7, 100(a5) -- Store: [0x800023c4]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fcvt.w.s s9, ft1, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:sw s9, 112(a5)
Current Store : [0x800004c4] : sw a7, 116(a5) -- Store: [0x800023d4]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d0]:fcvt.w.s a0, fa0, dyn
	-[0x800004d4]:csrrs a7, fflags, zero
	-[0x800004d8]:sw a0, 128(a5)
Current Store : [0x800004dc] : sw a7, 132(a5) -- Store: [0x800023e4]:0x0000000000000011




Last Coverpoint : ['rd : x0', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e8]:fcvt.w.s zero, ft11, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:sw zero, 144(a5)
Current Store : [0x800004f4] : sw a7, 148(a5) -- Store: [0x800023f4]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000500]:fcvt.w.s s8, ft6, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:sw s8, 160(a5)
Current Store : [0x8000050c] : sw a7, 164(a5) -- Store: [0x80002404]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000518]:fcvt.w.s t6, ft11, dyn
	-[0x8000051c]:csrrs a7, fflags, zero
	-[0x80000520]:sw t6, 176(a5)
Current Store : [0x80000524] : sw a7, 180(a5) -- Store: [0x80002414]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000530]:fcvt.w.s t6, ft11, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:sw t6, 192(a5)
Current Store : [0x8000053c] : sw a7, 196(a5) -- Store: [0x80002424]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000548]:fcvt.w.s t6, ft11, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:sw t6, 208(a5)
Current Store : [0x80000554] : sw a7, 212(a5) -- Store: [0x80002434]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fcvt.w.s t6, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:sw t6, 224(a5)
Current Store : [0x8000056c] : sw a7, 228(a5) -- Store: [0x80002444]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000578]:fcvt.w.s t6, ft11, dyn
	-[0x8000057c]:csrrs a7, fflags, zero
	-[0x80000580]:sw t6, 240(a5)
Current Store : [0x80000584] : sw a7, 244(a5) -- Store: [0x80002454]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000590]:fcvt.w.s t6, ft11, dyn
	-[0x80000594]:csrrs a7, fflags, zero
	-[0x80000598]:sw t6, 256(a5)
Current Store : [0x8000059c] : sw a7, 260(a5) -- Store: [0x80002464]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fcvt.w.s t6, ft11, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:sw t6, 272(a5)
Current Store : [0x800005b4] : sw a7, 276(a5) -- Store: [0x80002474]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fcvt.w.s t6, ft11, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:sw t6, 288(a5)
Current Store : [0x800005cc] : sw a7, 292(a5) -- Store: [0x80002484]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.w.s', 'rd : x31', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fcvt.w.s t6, ft11, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:sw t6, 304(a5)
Current Store : [0x800005e4] : sw a7, 308(a5) -- Store: [0x80002494]:0x0000000000000011





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

|s.no|            signature             |                                                           coverpoints                                                           |                                                        code                                                        |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fcvt.w.s<br> - rd : x4<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.w.s tp, fs9, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw tp, 0(a5)<br>        |
|   2|[0x80002220]<br>0xFFFFFFFF80000000|- rd : x6<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat<br>                          |[0x800001e8]:fcvt.w.s t1, ft3, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw t1, 16(a5)<br>       |
|   3|[0x80002230]<br>0x0000000000000000|- rd : x8<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat<br>                         |[0x80000200]:fcvt.w.s fp, fs6, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw fp, 32(a5)<br>       |
|   4|[0x80002240]<br>0xFFFFFFFF80000000|- rd : x16<br> - rs1 : f2<br> - fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat<br>                         |[0x80000224]:fcvt.w.s a6, ft2, dyn<br> [0x80000228]:csrrs s5, fflags, zero<br> [0x8000022c]:sw a6, 0(s3)<br>        |
|   5|[0x80002250]<br>0x000000007FFFFFFF|- rd : x18<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat<br>                         |[0x80000248]:fcvt.w.s s2, ft4, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:sw s2, 0(a5)<br>        |
|   6|[0x80002260]<br>0x000000007FFFFFFF|- rd : x21<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat<br>                        |[0x80000260]:fcvt.w.s s5, fa6, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw s5, 16(a5)<br>       |
|   7|[0x80002270]<br>0xFFFFFFFF80000000|- rd : x11<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat<br>                         |[0x80000278]:fcvt.w.s a1, ft7, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw a1, 32(a5)<br>       |
|   8|[0x80002280]<br>0x00000000797C0C00|- rd : x27<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat<br>                        |[0x80000290]:fcvt.w.s s11, fa4, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw s11, 48(a5)<br>     |
|   9|[0x80002290]<br>0xFFFFFFFFD4488940|- rd : x30<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat<br>                         |[0x800002a8]:fcvt.w.s t5, fs1, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:sw t5, 64(a5)<br>       |
|  10|[0x800022a0]<br>0xFFFFFFFFEB277BC0|- rd : x5<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat<br>                         |[0x800002c0]:fcvt.w.s t0, fs2, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:sw t0, 80(a5)<br>       |
|  11|[0x800022b0]<br>0xFFFFFFFFF078D3D0|- rd : x15<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat<br>                        |[0x800002e4]:fcvt.w.s a5, fs4, dyn<br> [0x800002e8]:csrrs s5, fflags, zero<br> [0x800002ec]:sw a5, 0(s3)<br>        |
|  12|[0x800022c0]<br>0x0000000004893018|- rd : x14<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat<br>                        |[0x80000308]:fcvt.w.s a4, ft8, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw a4, 0(a5)<br>        |
|  13|[0x800022d0]<br>0x0000000002021384|- rd : x1<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat<br>                         |[0x80000320]:fcvt.w.s ra, fa3, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw ra, 16(a5)<br>       |
|  14|[0x800022e0]<br>0xFFFFFFFFFEF4AB56|- rd : x3<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat<br>                          |[0x80000338]:fcvt.w.s gp, ft5, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:sw gp, 32(a5)<br>       |
|  15|[0x800022f0]<br>0x0000000000CE817E|- rd : x7<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat<br>                         |[0x80000350]:fcvt.w.s t2, fs8, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:sw t2, 48(a5)<br>       |
|  16|[0x80002300]<br>0x00000000007E0A74|- rd : x13<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat<br>                        |[0x80000368]:fcvt.w.s a3, fa2, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw a3, 64(a5)<br>       |
|  17|[0x80002310]<br>0x00000000003F6FEE|- rd : x26<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat<br>                        |[0x80000380]:fcvt.w.s s10, fs10, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:sw s10, 80(a5)<br>    |
|  18|[0x80002320]<br>0xFFFFFFFFFFE3B6F0|- rd : x29<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat<br>                        |[0x80000398]:fcvt.w.s t4, ft10, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:sw t4, 96(a5)<br>      |
|  19|[0x80002330]<br>0x0000000000091057|- rd : x20<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat<br>                         |[0x800003b0]:fcvt.w.s s4, ft0, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:sw s4, 112(a5)<br>      |
|  20|[0x80002340]<br>0x000000000006A5BB|- rd : x28<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat<br>                        |[0x800003c8]:fcvt.w.s t3, fs3, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:sw t3, 128(a5)<br>      |
|  21|[0x80002350]<br>0x0000000000035F29|- rd : x17<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat<br>                        |[0x800003ec]:fcvt.w.s a7, fs7, dyn<br> [0x800003f0]:csrrs s5, fflags, zero<br> [0x800003f4]:sw a7, 0(s3)<br>        |
|  22|[0x80002360]<br>0x00000000000174F3|- rd : x12<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat<br>                        |[0x80000410]:fcvt.w.s a2, fa7, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:sw a2, 0(a5)<br>        |
|  23|[0x80002370]<br>0x000000000000D665|- rd : x2<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat<br>                         |[0x80000428]:fcvt.w.s sp, fs5, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw sp, 16(a5)<br>       |
|  24|[0x80002380]<br>0xFFFFFFFFFFFFADD9|- rd : x9<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat<br>                         |[0x80000440]:fcvt.w.s s1, fs11, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw s1, 32(a5)<br>      |
|  25|[0x80002390]<br>0x0000000000002C36|- rd : x19<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat<br>                        |[0x80000458]:fcvt.w.s s3, fa1, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw s3, 48(a5)<br>       |
|  26|[0x800023a0]<br>0x00000000000019A7|- rd : x22<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat<br>                        |[0x80000470]:fcvt.w.s s6, fa5, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:sw s6, 64(a5)<br>       |
|  27|[0x800023b0]<br>0x0000000000000EE2|- rd : x23<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat<br>                        |[0x80000488]:fcvt.w.s s7, ft9, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:sw s7, 80(a5)<br>       |
|  28|[0x800023c0]<br>0x000000000000042E|- rd : x31<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat<br>                         |[0x800004a0]:fcvt.w.s t6, fs0, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw t6, 96(a5)<br>       |
|  29|[0x800023d0]<br>0x00000000000003FE|- rd : x25<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat<br>                         |[0x800004b8]:fcvt.w.s s9, ft1, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:sw s9, 112(a5)<br>      |
|  30|[0x800023e0]<br>0xFFFFFFFFFFFFFE0C|- rd : x10<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat<br>                        |[0x800004d0]:fcvt.w.s a0, fa0, dyn<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:sw a0, 128(a5)<br>      |
|  31|[0x800023f0]<br>0x0000000000000000|- rd : x0<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat<br>                         |[0x800004e8]:fcvt.w.s zero, ft11, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:sw zero, 144(a5)<br> |
|  32|[0x80002400]<br>0x0000000000000055|- rd : x24<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat<br>                         |[0x80000500]:fcvt.w.s s8, ft6, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:sw s8, 160(a5)<br>      |
|  33|[0x80002410]<br>0x0000000000000031|- fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat<br>                                                       |[0x80000518]:fcvt.w.s t6, ft11, dyn<br> [0x8000051c]:csrrs a7, fflags, zero<br> [0x80000520]:sw t6, 176(a5)<br>     |
|  34|[0x80002420]<br>0x0000000000000013|- fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat<br>                                                       |[0x80000530]:fcvt.w.s t6, ft11, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:sw t6, 192(a5)<br>     |
|  35|[0x80002430]<br>0xFFFFFFFFFFFFFFF3|- fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat<br>                                                       |[0x80000548]:fcvt.w.s t6, ft11, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:sw t6, 208(a5)<br>     |
|  36|[0x80002440]<br>0x0000000000000007|- fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat<br>                                                       |[0x80000560]:fcvt.w.s t6, ft11, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:sw t6, 224(a5)<br>     |
|  37|[0x80002450]<br>0x0000000000000004|- fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat<br>                                                       |[0x80000578]:fcvt.w.s t6, ft11, dyn<br> [0x8000057c]:csrrs a7, fflags, zero<br> [0x80000580]:sw t6, 240(a5)<br>     |
|  38|[0x80002460]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat<br>                                                       |[0x80000590]:fcvt.w.s t6, ft11, dyn<br> [0x80000594]:csrrs a7, fflags, zero<br> [0x80000598]:sw t6, 256(a5)<br>     |
|  39|[0x80002470]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat<br>                                                       |[0x800005a8]:fcvt.w.s t6, ft11, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:sw t6, 272(a5)<br>     |
|  40|[0x80002480]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat<br>                                                       |[0x800005c0]:fcvt.w.s t6, ft11, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:sw t6, 288(a5)<br>     |
