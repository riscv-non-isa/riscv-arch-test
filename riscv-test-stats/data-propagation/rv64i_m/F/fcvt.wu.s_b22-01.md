
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x800005e0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '82 dwords')]      |
| COV_LABELS                | fcvt.wu.s_b22      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.wu.s/riscof_work/fcvt.wu.s_b22-01.S/ref.S    |
| Total Number of coverpoints| 109     |
| Total Coverpoints Hit     | 105      |
| Total Signature Updates   | 88      |
| STAT1                     | 40      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 41     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005cc]:fcvt.wu.s t6, ft11, dyn
      [0x800005d0]:csrrs a7, fflags, zero
      [0x800005d4]:sw t6, 240(a5)
 -- Signature Address: 0x80002490 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.wu.s
      - rd : x31
      - rs1 : f31
      - fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x16', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.wu.s a6, ft6, dyn
	-[0x800001d4]:csrrs s5, fflags, zero
	-[0x800001d8]:sw a6, 0(s3)
Current Store : [0x800001dc] : sw s5, 4(s3) -- Store: [0x80002214]:0x0000000000000001




Last Coverpoint : ['rd : x13', 'rs1 : f15', 'fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f4]:fcvt.wu.s a3, fa5, dyn
	-[0x800001f8]:csrrs a7, fflags, zero
	-[0x800001fc]:sw a3, 0(a5)
Current Store : [0x80000200] : sw a7, 4(a5) -- Store: [0x80002224]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000020c]:fcvt.wu.s s1, ft10, dyn
	-[0x80000210]:csrrs a7, fflags, zero
	-[0x80000214]:sw s1, 16(a5)
Current Store : [0x80000218] : sw a7, 20(a5) -- Store: [0x80002234]:0x0000000000000011




Last Coverpoint : ['rd : x0', 'rs1 : f20', 'fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000224]:fcvt.wu.s zero, fs4, dyn
	-[0x80000228]:csrrs a7, fflags, zero
	-[0x8000022c]:sw zero, 32(a5)
Current Store : [0x80000230] : sw a7, 36(a5) -- Store: [0x80002244]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f11', 'fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000023c]:fcvt.wu.s s4, fa1, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:sw s4, 48(a5)
Current Store : [0x80000248] : sw a7, 52(a5) -- Store: [0x80002254]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000254]:fcvt.wu.s t0, ft2, dyn
	-[0x80000258]:csrrs a7, fflags, zero
	-[0x8000025c]:sw t0, 64(a5)
Current Store : [0x80000260] : sw a7, 68(a5) -- Store: [0x80002264]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000026c]:fcvt.wu.s s2, fs6, dyn
	-[0x80000270]:csrrs a7, fflags, zero
	-[0x80000274]:sw s2, 80(a5)
Current Store : [0x80000278] : sw a7, 84(a5) -- Store: [0x80002274]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000284]:fcvt.wu.s s8, ft7, dyn
	-[0x80000288]:csrrs a7, fflags, zero
	-[0x8000028c]:sw s8, 96(a5)
Current Store : [0x80000290] : sw a7, 100(a5) -- Store: [0x80002284]:0x0000000000000011




Last Coverpoint : ['rd : x21', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000029c]:fcvt.wu.s s5, fa7, dyn
	-[0x800002a0]:csrrs a7, fflags, zero
	-[0x800002a4]:sw s5, 112(a5)
Current Store : [0x800002a8] : sw a7, 116(a5) -- Store: [0x80002294]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b4]:fcvt.wu.s t1, ft8, dyn
	-[0x800002b8]:csrrs a7, fflags, zero
	-[0x800002bc]:sw t1, 128(a5)
Current Store : [0x800002c0] : sw a7, 132(a5) -- Store: [0x800022a4]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002cc]:fcvt.wu.s t3, ft11, dyn
	-[0x800002d0]:csrrs a7, fflags, zero
	-[0x800002d4]:sw t3, 144(a5)
Current Store : [0x800002d8] : sw a7, 148(a5) -- Store: [0x800022b4]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e4]:fcvt.wu.s a4, ft4, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:sw a4, 160(a5)
Current Store : [0x800002f0] : sw a7, 164(a5) -- Store: [0x800022c4]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002fc]:fcvt.wu.s t2, ft0, dyn
	-[0x80000300]:csrrs a7, fflags, zero
	-[0x80000304]:sw t2, 176(a5)
Current Store : [0x80000308] : sw a7, 180(a5) -- Store: [0x800022d4]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f19', 'fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000314]:fcvt.wu.s s7, fs3, dyn
	-[0x80000318]:csrrs a7, fflags, zero
	-[0x8000031c]:sw s7, 192(a5)
Current Store : [0x80000320] : sw a7, 196(a5) -- Store: [0x800022e4]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000032c]:fcvt.wu.s a0, fa4, dyn
	-[0x80000330]:csrrs a7, fflags, zero
	-[0x80000334]:sw a0, 208(a5)
Current Store : [0x80000338] : sw a7, 212(a5) -- Store: [0x800022f4]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000344]:fcvt.wu.s fp, fs5, dyn
	-[0x80000348]:csrrs a7, fflags, zero
	-[0x8000034c]:sw fp, 224(a5)
Current Store : [0x80000350] : sw a7, 228(a5) -- Store: [0x80002304]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000035c]:fcvt.wu.s sp, fs0, dyn
	-[0x80000360]:csrrs a7, fflags, zero
	-[0x80000364]:sw sp, 240(a5)
Current Store : [0x80000368] : sw a7, 244(a5) -- Store: [0x80002314]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000374]:fcvt.wu.s s10, fs2, dyn
	-[0x80000378]:csrrs a7, fflags, zero
	-[0x8000037c]:sw s10, 256(a5)
Current Store : [0x80000380] : sw a7, 260(a5) -- Store: [0x80002324]:0x0000000000000011




Last Coverpoint : ['rd : x22', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000038c]:fcvt.wu.s s6, fa2, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:sw s6, 272(a5)
Current Store : [0x80000398] : sw a7, 276(a5) -- Store: [0x80002334]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b0]:fcvt.wu.s a7, fs1, dyn
	-[0x800003b4]:csrrs s5, fflags, zero
	-[0x800003b8]:sw a7, 0(s3)
Current Store : [0x800003bc] : sw s5, 4(s3) -- Store: [0x80002344]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f1', 'fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d4]:fcvt.wu.s gp, ft1, dyn
	-[0x800003d8]:csrrs a7, fflags, zero
	-[0x800003dc]:sw gp, 0(a5)
Current Store : [0x800003e0] : sw a7, 4(a5) -- Store: [0x80002354]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003ec]:fcvt.wu.s s3, fs7, dyn
	-[0x800003f0]:csrrs a7, fflags, zero
	-[0x800003f4]:sw s3, 16(a5)
Current Store : [0x800003f8] : sw a7, 20(a5) -- Store: [0x80002364]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000404]:fcvt.wu.s s9, fs10, dyn
	-[0x80000408]:csrrs a7, fflags, zero
	-[0x8000040c]:sw s9, 32(a5)
Current Store : [0x80000410] : sw a7, 36(a5) -- Store: [0x80002374]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000041c]:fcvt.wu.s t6, fs11, dyn
	-[0x80000420]:csrrs a7, fflags, zero
	-[0x80000424]:sw t6, 48(a5)
Current Store : [0x80000428] : sw a7, 52(a5) -- Store: [0x80002384]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000440]:fcvt.wu.s a5, ft5, dyn
	-[0x80000444]:csrrs s5, fflags, zero
	-[0x80000448]:sw a5, 0(s3)
Current Store : [0x8000044c] : sw s5, 4(s3) -- Store: [0x80002394]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000464]:fcvt.wu.s a2, ft3, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:sw a2, 0(a5)
Current Store : [0x80000470] : sw a7, 4(a5) -- Store: [0x800023a4]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000047c]:fcvt.wu.s tp, fa6, dyn
	-[0x80000480]:csrrs a7, fflags, zero
	-[0x80000484]:sw tp, 16(a5)
Current Store : [0x80000488] : sw a7, 20(a5) -- Store: [0x800023b4]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f24', 'fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000494]:fcvt.wu.s a1, fs8, dyn
	-[0x80000498]:csrrs a7, fflags, zero
	-[0x8000049c]:sw a1, 32(a5)
Current Store : [0x800004a0] : sw a7, 36(a5) -- Store: [0x800023c4]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004ac]:fcvt.wu.s t5, ft9, dyn
	-[0x800004b0]:csrrs a7, fflags, zero
	-[0x800004b4]:sw t5, 48(a5)
Current Store : [0x800004b8] : sw a7, 52(a5) -- Store: [0x800023d4]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c4]:fcvt.wu.s ra, fa0, dyn
	-[0x800004c8]:csrrs a7, fflags, zero
	-[0x800004cc]:sw ra, 64(a5)
Current Store : [0x800004d0] : sw a7, 68(a5) -- Store: [0x800023e4]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004dc]:fcvt.wu.s s11, fs9, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:sw s11, 80(a5)
Current Store : [0x800004e8] : sw a7, 84(a5) -- Store: [0x800023f4]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f4]:fcvt.wu.s t4, fa3, dyn
	-[0x800004f8]:csrrs a7, fflags, zero
	-[0x800004fc]:sw t4, 96(a5)
Current Store : [0x80000500] : sw a7, 100(a5) -- Store: [0x80002404]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fcvt.wu.s t6, ft11, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:sw t6, 112(a5)
Current Store : [0x80000518] : sw a7, 116(a5) -- Store: [0x80002414]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000524]:fcvt.wu.s t6, ft11, dyn
	-[0x80000528]:csrrs a7, fflags, zero
	-[0x8000052c]:sw t6, 128(a5)
Current Store : [0x80000530] : sw a7, 132(a5) -- Store: [0x80002424]:0x0000000000000011




Last Coverpoint : ['fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000053c]:fcvt.wu.s t6, ft11, dyn
	-[0x80000540]:csrrs a7, fflags, zero
	-[0x80000544]:sw t6, 144(a5)
Current Store : [0x80000548] : sw a7, 148(a5) -- Store: [0x80002434]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000554]:fcvt.wu.s t6, ft11, dyn
	-[0x80000558]:csrrs a7, fflags, zero
	-[0x8000055c]:sw t6, 160(a5)
Current Store : [0x80000560] : sw a7, 164(a5) -- Store: [0x80002444]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000056c]:fcvt.wu.s t6, ft11, dyn
	-[0x80000570]:csrrs a7, fflags, zero
	-[0x80000574]:sw t6, 176(a5)
Current Store : [0x80000578] : sw a7, 180(a5) -- Store: [0x80002454]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000584]:fcvt.wu.s t6, ft11, dyn
	-[0x80000588]:csrrs a7, fflags, zero
	-[0x8000058c]:sw t6, 192(a5)
Current Store : [0x80000590] : sw a7, 196(a5) -- Store: [0x80002464]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000059c]:fcvt.wu.s t6, ft11, dyn
	-[0x800005a0]:csrrs a7, fflags, zero
	-[0x800005a4]:sw t6, 208(a5)
Current Store : [0x800005a8] : sw a7, 212(a5) -- Store: [0x80002474]:0x0000000000000011




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fcvt.wu.s t6, ft11, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:sw t6, 224(a5)
Current Store : [0x800005c0] : sw a7, 228(a5) -- Store: [0x80002484]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.wu.s', 'rd : x31', 'rs1 : f31', 'fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005cc]:fcvt.wu.s t6, ft11, dyn
	-[0x800005d0]:csrrs a7, fflags, zero
	-[0x800005d4]:sw t6, 240(a5)
Current Store : [0x800005d8] : sw a7, 244(a5) -- Store: [0x80002494]:0x0000000000000011





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

|s.no|            signature             |                                                           coverpoints                                                            |                                                       code                                                        |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fcvt.wu.s<br> - rd : x16<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x7c and fm1 == 0x4923b8 and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.wu.s a6, ft6, dyn<br> [0x800001d4]:csrrs s5, fflags, zero<br> [0x800001d8]:sw a6, 0(s3)<br>      |
|   2|[0x80002220]<br>0x0000000000000000|- rd : x13<br> - rs1 : f15<br> - fs1 == 1 and fe1 == 0xb6 and fm1 == 0x403ed1 and rm_val == 0  #nosat<br>                         |[0x800001f4]:fcvt.wu.s a3, fa5, dyn<br> [0x800001f8]:csrrs a7, fflags, zero<br> [0x800001fc]:sw a3, 0(a5)<br>      |
|   3|[0x80002230]<br>0x0000000000000000|- rd : x9<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x29 and fm1 == 0x4ad269 and rm_val == 0  #nosat<br>                          |[0x8000020c]:fcvt.wu.s s1, ft10, dyn<br> [0x80000210]:csrrs a7, fflags, zero<br> [0x80000214]:sw s1, 16(a5)<br>    |
|   4|[0x80002240]<br>0x0000000000000000|- rd : x0<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0xa1 and fm1 == 0x0851ba and rm_val == 0  #nosat<br>                          |[0x80000224]:fcvt.wu.s zero, fs4, dyn<br> [0x80000228]:csrrs a7, fflags, zero<br> [0x8000022c]:sw zero, 32(a5)<br> |
|   5|[0x80002250]<br>0xFFFFFFFFFFFFFFFF|- rd : x20<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0xa0 and fm1 == 0x37cfdc and rm_val == 0  #nosat<br>                         |[0x8000023c]:fcvt.wu.s s4, fa1, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:sw s4, 48(a5)<br>     |
|   6|[0x80002260]<br>0xFFFFFFFFFFFFFFFF|- rd : x5<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x9f and fm1 == 0x46450c and rm_val == 0  #nosat<br>                           |[0x80000254]:fcvt.wu.s t0, ft2, dyn<br> [0x80000258]:csrrs a7, fflags, zero<br> [0x8000025c]:sw t0, 64(a5)<br>     |
|   7|[0x80002270]<br>0x0000000000000000|- rd : x18<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x9e and fm1 == 0x283d12 and rm_val == 0  #nosat<br>                         |[0x8000026c]:fcvt.wu.s s2, fs6, dyn<br> [0x80000270]:csrrs a7, fflags, zero<br> [0x80000274]:sw s2, 80(a5)<br>     |
|   8|[0x80002280]<br>0x00000000797C0C00|- rd : x24<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x72f818 and rm_val == 0  #nosat<br>                          |[0x80000284]:fcvt.wu.s s8, ft7, dyn<br> [0x80000288]:csrrs a7, fflags, zero<br> [0x8000028c]:sw s8, 96(a5)<br>     |
|   9|[0x80002290]<br>0x0000000000000000|- rd : x21<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x9c and fm1 == 0x2edddb and rm_val == 0  #nosat<br>                         |[0x8000029c]:fcvt.wu.s s5, fa7, dyn<br> [0x800002a0]:csrrs a7, fflags, zero<br> [0x800002a4]:sw s5, 112(a5)<br>    |
|  10|[0x800022a0]<br>0x0000000000000000|- rd : x6<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x9b and fm1 == 0x26c422 and rm_val == 0  #nosat<br>                          |[0x800002b4]:fcvt.wu.s t1, ft8, dyn<br> [0x800002b8]:csrrs a7, fflags, zero<br> [0x800002bc]:sw t1, 128(a5)<br>    |
|  11|[0x800022b0]<br>0x0000000000000000|- rd : x28<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x9a and fm1 == 0x7872c3 and rm_val == 0  #nosat<br>                         |[0x800002cc]:fcvt.wu.s t3, ft11, dyn<br> [0x800002d0]:csrrs a7, fflags, zero<br> [0x800002d4]:sw t3, 144(a5)<br>   |
|  12|[0x800022c0]<br>0x0000000004893018|- rd : x14<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x99 and fm1 == 0x112603 and rm_val == 0  #nosat<br>                          |[0x800002e4]:fcvt.wu.s a4, ft4, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:sw a4, 160(a5)<br>    |
|  13|[0x800022d0]<br>0x0000000002021384|- rd : x7<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x98 and fm1 == 0x0084e1 and rm_val == 0  #nosat<br>                           |[0x800002fc]:fcvt.wu.s t2, ft0, dyn<br> [0x80000300]:csrrs a7, fflags, zero<br> [0x80000304]:sw t2, 176(a5)<br>    |
|  14|[0x800022e0]<br>0x0000000000000000|- rd : x23<br> - rs1 : f19<br> - fs1 == 1 and fe1 == 0x97 and fm1 == 0x05aa55 and rm_val == 0  #nosat<br>                         |[0x80000314]:fcvt.wu.s s7, fs3, dyn<br> [0x80000318]:csrrs a7, fflags, zero<br> [0x8000031c]:sw s7, 192(a5)<br>    |
|  15|[0x800022f0]<br>0x0000000000CE817E|- rd : x10<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x96 and fm1 == 0x4e817e and rm_val == 0  #nosat<br>                         |[0x8000032c]:fcvt.wu.s a0, fa4, dyn<br> [0x80000330]:csrrs a7, fflags, zero<br> [0x80000334]:sw a0, 208(a5)<br>    |
|  16|[0x80002300]<br>0x00000000007E0A74|- rd : x8<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x95 and fm1 == 0x7c14e9 and rm_val == 0  #nosat<br>                          |[0x80000344]:fcvt.wu.s fp, fs5, dyn<br> [0x80000348]:csrrs a7, fflags, zero<br> [0x8000034c]:sw fp, 224(a5)<br>    |
|  17|[0x80002310]<br>0x00000000003F6FEE|- rd : x2<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x94 and fm1 == 0x7dbfb7 and rm_val == 0  #nosat<br>                           |[0x8000035c]:fcvt.wu.s sp, fs0, dyn<br> [0x80000360]:csrrs a7, fflags, zero<br> [0x80000364]:sw sp, 240(a5)<br>    |
|  18|[0x80002320]<br>0x0000000000000000|- rd : x26<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x93 and fm1 == 0x624882 and rm_val == 0  #nosat<br>                         |[0x80000374]:fcvt.wu.s s10, fs2, dyn<br> [0x80000378]:csrrs a7, fflags, zero<br> [0x8000037c]:sw s10, 256(a5)<br>  |
|  19|[0x80002330]<br>0x0000000000091057|- rd : x22<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x92 and fm1 == 0x11056d and rm_val == 0  #nosat<br>                         |[0x8000038c]:fcvt.wu.s s6, fa2, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:sw s6, 272(a5)<br>    |
|  20|[0x80002340]<br>0x000000000006A5BB|- rd : x17<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x91 and fm1 == 0x54b761 and rm_val == 0  #nosat<br>                          |[0x800003b0]:fcvt.wu.s a7, fs1, dyn<br> [0x800003b4]:csrrs s5, fflags, zero<br> [0x800003b8]:sw a7, 0(s3)<br>      |
|  21|[0x80002350]<br>0x0000000000035F29|- rd : x3<br> - rs1 : f1<br> - fs1 == 0 and fe1 == 0x90 and fm1 == 0x57ca4f and rm_val == 0  #nosat<br>                           |[0x800003d4]:fcvt.wu.s gp, ft1, dyn<br> [0x800003d8]:csrrs a7, fflags, zero<br> [0x800003dc]:sw gp, 0(a5)<br>      |
|  22|[0x80002360]<br>0x00000000000174F3|- rd : x19<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x8f and fm1 == 0x3a7971 and rm_val == 0  #nosat<br>                         |[0x800003ec]:fcvt.wu.s s3, fs7, dyn<br> [0x800003f0]:csrrs a7, fflags, zero<br> [0x800003f4]:sw s3, 16(a5)<br>     |
|  23|[0x80002370]<br>0x000000000000D665|- rd : x25<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x8e and fm1 == 0x56653f and rm_val == 0  #nosat<br>                         |[0x80000404]:fcvt.wu.s s9, fs10, dyn<br> [0x80000408]:csrrs a7, fflags, zero<br> [0x8000040c]:sw s9, 32(a5)<br>    |
|  24|[0x80002380]<br>0x0000000000000000|- rd : x31<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x8d and fm1 == 0x244d9a and rm_val == 0  #nosat<br>                         |[0x8000041c]:fcvt.wu.s t6, fs11, dyn<br> [0x80000420]:csrrs a7, fflags, zero<br> [0x80000424]:sw t6, 48(a5)<br>    |
|  25|[0x80002390]<br>0x0000000000002C36|- rd : x15<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x8c and fm1 == 0x30d877 and rm_val == 0  #nosat<br>                          |[0x80000440]:fcvt.wu.s a5, ft5, dyn<br> [0x80000444]:csrrs s5, fflags, zero<br> [0x80000448]:sw a5, 0(s3)<br>      |
|  26|[0x800023a0]<br>0x00000000000019A7|- rd : x12<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x8b and fm1 == 0x4d3559 and rm_val == 0  #nosat<br>                          |[0x80000464]:fcvt.wu.s a2, ft3, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:sw a2, 0(a5)<br>      |
|  27|[0x800023b0]<br>0x0000000000000EE2|- rd : x4<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x8a and fm1 == 0x6e19c1 and rm_val == 0  #nosat<br>                          |[0x8000047c]:fcvt.wu.s tp, fa6, dyn<br> [0x80000480]:csrrs a7, fflags, zero<br> [0x80000484]:sw tp, 16(a5)<br>     |
|  28|[0x800023c0]<br>0x000000000000042E|- rd : x11<br> - rs1 : f24<br> - fs1 == 0 and fe1 == 0x89 and fm1 == 0x05b406 and rm_val == 0  #nosat<br>                         |[0x80000494]:fcvt.wu.s a1, fs8, dyn<br> [0x80000498]:csrrs a7, fflags, zero<br> [0x8000049c]:sw a1, 32(a5)<br>     |
|  29|[0x800023d0]<br>0x00000000000003FE|- rd : x30<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x88 and fm1 == 0x7f8f2d and rm_val == 0  #nosat<br>                         |[0x800004ac]:fcvt.wu.s t5, ft9, dyn<br> [0x800004b0]:csrrs a7, fflags, zero<br> [0x800004b4]:sw t5, 48(a5)<br>     |
|  30|[0x800023e0]<br>0x0000000000000000|- rd : x1<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x87 and fm1 == 0x79f5e7 and rm_val == 0  #nosat<br>                          |[0x800004c4]:fcvt.wu.s ra, fa0, dyn<br> [0x800004c8]:csrrs a7, fflags, zero<br> [0x800004cc]:sw ra, 64(a5)<br>     |
|  31|[0x800023f0]<br>0x0000000000000000|- rd : x27<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x86 and fm1 == 0x1fffe4 and rm_val == 0  #nosat<br>                         |[0x800004dc]:fcvt.wu.s s11, fs9, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:sw s11, 80(a5)<br>   |
|  32|[0x80002400]<br>0x0000000000000055|- rd : x29<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x85 and fm1 == 0x29f475 and rm_val == 0  #nosat<br>                         |[0x800004f4]:fcvt.wu.s t4, fa3, dyn<br> [0x800004f8]:csrrs a7, fflags, zero<br> [0x800004fc]:sw t4, 96(a5)<br>     |
|  33|[0x80002410]<br>0x0000000000000031|- fs1 == 0 and fe1 == 0x84 and fm1 == 0x42a54b and rm_val == 0  #nosat<br>                                                        |[0x8000050c]:fcvt.wu.s t6, ft11, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:sw t6, 112(a5)<br>   |
|  34|[0x80002420]<br>0x0000000000000013|- fs1 == 0 and fe1 == 0x83 and fm1 == 0x148266 and rm_val == 0  #nosat<br>                                                        |[0x80000524]:fcvt.wu.s t6, ft11, dyn<br> [0x80000528]:csrrs a7, fflags, zero<br> [0x8000052c]:sw t6, 128(a5)<br>   |
|  35|[0x80002430]<br>0x0000000000000000|- fs1 == 1 and fe1 == 0x82 and fm1 == 0x53a4fc and rm_val == 0  #nosat<br>                                                        |[0x8000053c]:fcvt.wu.s t6, ft11, dyn<br> [0x80000540]:csrrs a7, fflags, zero<br> [0x80000544]:sw t6, 144(a5)<br>   |
|  36|[0x80002440]<br>0x0000000000000007|- fs1 == 0 and fe1 == 0x81 and fm1 == 0x696b5c and rm_val == 0  #nosat<br>                                                        |[0x80000554]:fcvt.wu.s t6, ft11, dyn<br> [0x80000558]:csrrs a7, fflags, zero<br> [0x8000055c]:sw t6, 160(a5)<br>   |
|  37|[0x80002450]<br>0x0000000000000004|- fs1 == 0 and fe1 == 0x80 and fm1 == 0x681ae9 and rm_val == 0  #nosat<br>                                                        |[0x8000056c]:fcvt.wu.s t6, ft11, dyn<br> [0x80000570]:csrrs a7, fflags, zero<br> [0x80000574]:sw t6, 176(a5)<br>   |
|  38|[0x80002460]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7f and fm1 == 0x1a616d and rm_val == 0  #nosat<br>                                                        |[0x80000584]:fcvt.wu.s t6, ft11, dyn<br> [0x80000588]:csrrs a7, fflags, zero<br> [0x8000058c]:sw t6, 192(a5)<br>   |
|  39|[0x80002470]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7e and fm1 == 0x49fee5 and rm_val == 0  #nosat<br>                                                        |[0x8000059c]:fcvt.wu.s t6, ft11, dyn<br> [0x800005a0]:csrrs a7, fflags, zero<br> [0x800005a4]:sw t6, 208(a5)<br>   |
|  40|[0x80002480]<br>0x0000000000000000|- fs1 == 0 and fe1 == 0x7d and fm1 == 0x36e5d6 and rm_val == 0  #nosat<br>                                                        |[0x800005b4]:fcvt.wu.s t6, ft11, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:sw t6, 224(a5)<br>   |
