
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000520')]      |
| SIG_REGION                | [('0x80002210', '0x80002420', '66 dwords')]      |
| COV_LABELS                | fcvt.l.s_b1      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.l.s/riscof_work/fcvt.l.s_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
| Total Signature Updates   | 72      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000050c]:fcvt.l.s t6, ft11, dyn
      [0x80000510]:csrrs a7, fflags, zero
      [0x80000514]:sw t6, 144(a5)
 -- Signature Address: 0x80002410 Data: 0x7FFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x16', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.l.s a6, ft5, dyn
	-[0x800001d4]:csrrs s5, fflags, zero
	-[0x800001d8]:sw a6, 0(s3)
Current Store : [0x800001dc] : sw s5, 4(s3) -- Store: [0x80002214]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f20']
Last Code Sequence : 
	-[0x800001f4]:fcvt.l.s ra, fs4, dyn
	-[0x800001f8]:csrrs a7, fflags, zero
	-[0x800001fc]:sw ra, 0(a5)
Current Store : [0x80000200] : sw a7, 4(a5) -- Store: [0x80002224]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f27']
Last Code Sequence : 
	-[0x8000020c]:fcvt.l.s t0, fs11, dyn
	-[0x80000210]:csrrs a7, fflags, zero
	-[0x80000214]:sw t0, 16(a5)
Current Store : [0x80000218] : sw a7, 20(a5) -- Store: [0x80002234]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000224]:fcvt.l.s s4, ft6, dyn
	-[0x80000228]:csrrs a7, fflags, zero
	-[0x8000022c]:sw s4, 32(a5)
Current Store : [0x80000230] : sw a7, 36(a5) -- Store: [0x80002244]:0x0000000000000010




Last Coverpoint : ['rd : x12', 'rs1 : f25']
Last Code Sequence : 
	-[0x8000023c]:fcvt.l.s a2, fs9, dyn
	-[0x80000240]:csrrs a7, fflags, zero
	-[0x80000244]:sw a2, 48(a5)
Current Store : [0x80000248] : sw a7, 52(a5) -- Store: [0x80002254]:0x0000000000000010




Last Coverpoint : ['rd : x3', 'rs1 : f15']
Last Code Sequence : 
	-[0x80000254]:fcvt.l.s gp, fa5, dyn
	-[0x80000258]:csrrs a7, fflags, zero
	-[0x8000025c]:sw gp, 64(a5)
Current Store : [0x80000260] : sw a7, 68(a5) -- Store: [0x80002264]:0x0000000000000010




Last Coverpoint : ['rd : x17', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000278]:fcvt.l.s a7, ft7, dyn
	-[0x8000027c]:csrrs s5, fflags, zero
	-[0x80000280]:sw a7, 0(s3)
Current Store : [0x80000284] : sw s5, 4(s3) -- Store: [0x80002274]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f14']
Last Code Sequence : 
	-[0x8000029c]:fcvt.l.s s6, fa4, dyn
	-[0x800002a0]:csrrs a7, fflags, zero
	-[0x800002a4]:sw s6, 0(a5)
Current Store : [0x800002a8] : sw a7, 4(a5) -- Store: [0x80002284]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f17']
Last Code Sequence : 
	-[0x800002b4]:fcvt.l.s t1, fa7, dyn
	-[0x800002b8]:csrrs a7, fflags, zero
	-[0x800002bc]:sw t1, 16(a5)
Current Store : [0x800002c0] : sw a7, 20(a5) -- Store: [0x80002294]:0x0000000000000010




Last Coverpoint : ['rd : x21', 'rs1 : f12']
Last Code Sequence : 
	-[0x800002cc]:fcvt.l.s s5, fa2, dyn
	-[0x800002d0]:csrrs a7, fflags, zero
	-[0x800002d4]:sw s5, 32(a5)
Current Store : [0x800002d8] : sw a7, 36(a5) -- Store: [0x800022a4]:0x0000000000000010




Last Coverpoint : ['rd : x10', 'rs1 : f2']
Last Code Sequence : 
	-[0x800002e4]:fcvt.l.s a0, ft2, dyn
	-[0x800002e8]:csrrs a7, fflags, zero
	-[0x800002ec]:sw a0, 48(a5)
Current Store : [0x800002f0] : sw a7, 52(a5) -- Store: [0x800022b4]:0x0000000000000010




Last Coverpoint : ['rd : x28', 'rs1 : f0']
Last Code Sequence : 
	-[0x800002fc]:fcvt.l.s t3, ft0, dyn
	-[0x80000300]:csrrs a7, fflags, zero
	-[0x80000304]:sw t3, 64(a5)
Current Store : [0x80000308] : sw a7, 68(a5) -- Store: [0x800022c4]:0x0000000000000010




Last Coverpoint : ['rd : x0', 'rs1 : f28']
Last Code Sequence : 
	-[0x80000314]:fcvt.l.s zero, ft8, dyn
	-[0x80000318]:csrrs a7, fflags, zero
	-[0x8000031c]:sw zero, 80(a5)
Current Store : [0x80000320] : sw a7, 84(a5) -- Store: [0x800022d4]:0x0000000000000010




Last Coverpoint : ['rd : x18', 'rs1 : f3']
Last Code Sequence : 
	-[0x8000032c]:fcvt.l.s s2, ft3, dyn
	-[0x80000330]:csrrs a7, fflags, zero
	-[0x80000334]:sw s2, 96(a5)
Current Store : [0x80000338] : sw a7, 100(a5) -- Store: [0x800022e4]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000344]:fcvt.l.s tp, ft9, dyn
	-[0x80000348]:csrrs a7, fflags, zero
	-[0x8000034c]:sw tp, 112(a5)
Current Store : [0x80000350] : sw a7, 116(a5) -- Store: [0x800022f4]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f18']
Last Code Sequence : 
	-[0x8000035c]:fcvt.l.s s7, fs2, dyn
	-[0x80000360]:csrrs a7, fflags, zero
	-[0x80000364]:sw s7, 128(a5)
Current Store : [0x80000368] : sw a7, 132(a5) -- Store: [0x80002304]:0x0000000000000011




Last Coverpoint : ['rd : x19', 'rs1 : f23']
Last Code Sequence : 
	-[0x80000374]:fcvt.l.s s3, fs7, dyn
	-[0x80000378]:csrrs a7, fflags, zero
	-[0x8000037c]:sw s3, 144(a5)
Current Store : [0x80000380] : sw a7, 148(a5) -- Store: [0x80002314]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f30']
Last Code Sequence : 
	-[0x8000038c]:fcvt.l.s t4, ft10, dyn
	-[0x80000390]:csrrs a7, fflags, zero
	-[0x80000394]:sw t4, 160(a5)
Current Store : [0x80000398] : sw a7, 164(a5) -- Store: [0x80002324]:0x0000000000000011




Last Coverpoint : ['rd : x27', 'rs1 : f11']
Last Code Sequence : 
	-[0x800003a4]:fcvt.l.s s11, fa1, dyn
	-[0x800003a8]:csrrs a7, fflags, zero
	-[0x800003ac]:sw s11, 176(a5)
Current Store : [0x800003b0] : sw a7, 180(a5) -- Store: [0x80002334]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f9']
Last Code Sequence : 
	-[0x800003bc]:fcvt.l.s a1, fs1, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:sw a1, 192(a5)
Current Store : [0x800003c8] : sw a7, 196(a5) -- Store: [0x80002344]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f4']
Last Code Sequence : 
	-[0x800003d4]:fcvt.l.s s8, ft4, dyn
	-[0x800003d8]:csrrs a7, fflags, zero
	-[0x800003dc]:sw s8, 208(a5)
Current Store : [0x800003e0] : sw a7, 212(a5) -- Store: [0x80002354]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f13']
Last Code Sequence : 
	-[0x800003ec]:fcvt.l.s sp, fa3, dyn
	-[0x800003f0]:csrrs a7, fflags, zero
	-[0x800003f4]:sw sp, 224(a5)
Current Store : [0x800003f8] : sw a7, 228(a5) -- Store: [0x80002364]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000410]:fcvt.l.s a5, fa6, dyn
	-[0x80000414]:csrrs s5, fflags, zero
	-[0x80000418]:sw a5, 0(s3)
Current Store : [0x8000041c] : sw s5, 4(s3) -- Store: [0x80002374]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f21']
Last Code Sequence : 
	-[0x80000434]:fcvt.l.s a4, fs5, dyn
	-[0x80000438]:csrrs a7, fflags, zero
	-[0x8000043c]:sw a4, 0(a5)
Current Store : [0x80000440] : sw a7, 4(a5) -- Store: [0x80002384]:0x0000000000000011




Last Coverpoint : ['rd : x25', 'rs1 : f24']
Last Code Sequence : 
	-[0x8000044c]:fcvt.l.s s9, fs8, dyn
	-[0x80000450]:csrrs a7, fflags, zero
	-[0x80000454]:sw s9, 16(a5)
Current Store : [0x80000458] : sw a7, 20(a5) -- Store: [0x80002394]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000464]:fcvt.l.s t2, ft11, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:sw t2, 32(a5)
Current Store : [0x80000470] : sw a7, 36(a5) -- Store: [0x800023a4]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f10']
Last Code Sequence : 
	-[0x8000047c]:fcvt.l.s s1, fa0, dyn
	-[0x80000480]:csrrs a7, fflags, zero
	-[0x80000484]:sw s1, 48(a5)
Current Store : [0x80000488] : sw a7, 52(a5) -- Store: [0x800023b4]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000494]:fcvt.l.s s10, fs6, dyn
	-[0x80000498]:csrrs a7, fflags, zero
	-[0x8000049c]:sw s10, 64(a5)
Current Store : [0x800004a0] : sw a7, 68(a5) -- Store: [0x800023c4]:0x0000000000000011




Last Coverpoint : ['rd : x30', 'rs1 : f26']
Last Code Sequence : 
	-[0x800004ac]:fcvt.l.s t5, fs10, dyn
	-[0x800004b0]:csrrs a7, fflags, zero
	-[0x800004b4]:sw t5, 80(a5)
Current Store : [0x800004b8] : sw a7, 84(a5) -- Store: [0x800023d4]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f1']
Last Code Sequence : 
	-[0x800004c4]:fcvt.l.s a3, ft1, dyn
	-[0x800004c8]:csrrs a7, fflags, zero
	-[0x800004cc]:sw a3, 96(a5)
Current Store : [0x800004d0] : sw a7, 100(a5) -- Store: [0x800023e4]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f19']
Last Code Sequence : 
	-[0x800004dc]:fcvt.l.s t6, fs3, dyn
	-[0x800004e0]:csrrs a7, fflags, zero
	-[0x800004e4]:sw t6, 112(a5)
Current Store : [0x800004e8] : sw a7, 116(a5) -- Store: [0x800023f4]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f8']
Last Code Sequence : 
	-[0x800004f4]:fcvt.l.s fp, fs0, dyn
	-[0x800004f8]:csrrs a7, fflags, zero
	-[0x800004fc]:sw fp, 128(a5)
Current Store : [0x80000500] : sw a7, 132(a5) -- Store: [0x80002404]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fcvt.l.s t6, ft11, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:sw t6, 144(a5)
Current Store : [0x80000518] : sw a7, 148(a5) -- Store: [0x80002414]:0x0000000000000011





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         coverpoints                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |                                                       code                                                       |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fcvt.l.s<br> - rd : x16<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and rm_val == 0  #nosat<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br> |[0x800001d0]:fcvt.l.s a6, ft5, dyn<br> [0x800001d4]:csrrs s5, fflags, zero<br> [0x800001d8]:sw a6, 0(s3)<br>      |
|   2|[0x80002220]<br>0xFFFFFFFFFFFFFFFF|- rd : x1<br> - rs1 : f20<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800001f4]:fcvt.l.s ra, fs4, dyn<br> [0x800001f8]:csrrs a7, fflags, zero<br> [0x800001fc]:sw ra, 0(a5)<br>      |
|   3|[0x80002230]<br>0x0000000000000001|- rd : x5<br> - rs1 : f27<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000020c]:fcvt.l.s t0, fs11, dyn<br> [0x80000210]:csrrs a7, fflags, zero<br> [0x80000214]:sw t0, 16(a5)<br>    |
|   4|[0x80002240]<br>0x7FFFFFFFFFFFFFFF|- rd : x20<br> - rs1 : f6<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000224]:fcvt.l.s s4, ft6, dyn<br> [0x80000228]:csrrs a7, fflags, zero<br> [0x8000022c]:sw s4, 32(a5)<br>     |
|   5|[0x80002250]<br>0x7FFFFFFFFFFFFFFF|- rd : x12<br> - rs1 : f25<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000023c]:fcvt.l.s a2, fs9, dyn<br> [0x80000240]:csrrs a7, fflags, zero<br> [0x80000244]:sw a2, 48(a5)<br>     |
|   6|[0x80002260]<br>0x7FFFFFFFFFFFFFFF|- rd : x3<br> - rs1 : f15<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000254]:fcvt.l.s gp, fa5, dyn<br> [0x80000258]:csrrs a7, fflags, zero<br> [0x8000025c]:sw gp, 64(a5)<br>     |
|   7|[0x80002270]<br>0x7FFFFFFFFFFFFFFF|- rd : x17<br> - rs1 : f7<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000278]:fcvt.l.s a7, ft7, dyn<br> [0x8000027c]:csrrs s5, fflags, zero<br> [0x80000280]:sw a7, 0(s3)<br>      |
|   8|[0x80002280]<br>0x7FFFFFFFFFFFFFFF|- rd : x22<br> - rs1 : f14<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000029c]:fcvt.l.s s6, fa4, dyn<br> [0x800002a0]:csrrs a7, fflags, zero<br> [0x800002a4]:sw s6, 0(a5)<br>      |
|   9|[0x80002290]<br>0x7FFFFFFFFFFFFFFF|- rd : x6<br> - rs1 : f17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002b4]:fcvt.l.s t1, fa7, dyn<br> [0x800002b8]:csrrs a7, fflags, zero<br> [0x800002bc]:sw t1, 16(a5)<br>     |
|  10|[0x800022a0]<br>0x8000000000000000|- rd : x21<br> - rs1 : f12<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800002cc]:fcvt.l.s s5, fa2, dyn<br> [0x800002d0]:csrrs a7, fflags, zero<br> [0x800002d4]:sw s5, 32(a5)<br>     |
|  11|[0x800022b0]<br>0x7FFFFFFFFFFFFFFF|- rd : x10<br> - rs1 : f2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002e4]:fcvt.l.s a0, ft2, dyn<br> [0x800002e8]:csrrs a7, fflags, zero<br> [0x800002ec]:sw a0, 48(a5)<br>     |
|  12|[0x800022c0]<br>0x8000000000000000|- rd : x28<br> - rs1 : f0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002fc]:fcvt.l.s t3, ft0, dyn<br> [0x80000300]:csrrs a7, fflags, zero<br> [0x80000304]:sw t3, 64(a5)<br>     |
|  13|[0x800022d0]<br>0x0000000000000000|- rd : x0<br> - rs1 : f28<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000314]:fcvt.l.s zero, ft8, dyn<br> [0x80000318]:csrrs a7, fflags, zero<br> [0x8000031c]:sw zero, 80(a5)<br> |
|  14|[0x800022e0]<br>0x0000000000000000|- rd : x18<br> - rs1 : f3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000032c]:fcvt.l.s s2, ft3, dyn<br> [0x80000330]:csrrs a7, fflags, zero<br> [0x80000334]:sw s2, 96(a5)<br>     |
|  15|[0x800022f0]<br>0x0000000000000000|- rd : x4<br> - rs1 : f29<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000344]:fcvt.l.s tp, ft9, dyn<br> [0x80000348]:csrrs a7, fflags, zero<br> [0x8000034c]:sw tp, 112(a5)<br>    |
|  16|[0x80002300]<br>0x0000000000000000|- rd : x23<br> - rs1 : f18<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000035c]:fcvt.l.s s7, fs2, dyn<br> [0x80000360]:csrrs a7, fflags, zero<br> [0x80000364]:sw s7, 128(a5)<br>    |
|  17|[0x80002310]<br>0x0000000000000000|- rd : x19<br> - rs1 : f23<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000374]:fcvt.l.s s3, fs7, dyn<br> [0x80000378]:csrrs a7, fflags, zero<br> [0x8000037c]:sw s3, 144(a5)<br>    |
|  18|[0x80002320]<br>0x0000000000000000|- rd : x29<br> - rs1 : f30<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000038c]:fcvt.l.s t4, ft10, dyn<br> [0x80000390]:csrrs a7, fflags, zero<br> [0x80000394]:sw t4, 160(a5)<br>   |
|  19|[0x80002330]<br>0x0000000000000000|- rd : x27<br> - rs1 : f11<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003a4]:fcvt.l.s s11, fa1, dyn<br> [0x800003a8]:csrrs a7, fflags, zero<br> [0x800003ac]:sw s11, 176(a5)<br>  |
|  20|[0x80002340]<br>0x0000000000000000|- rd : x11<br> - rs1 : f9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800003bc]:fcvt.l.s a1, fs1, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:sw a1, 192(a5)<br>    |
|  21|[0x80002350]<br>0x0000000000000000|- rd : x24<br> - rs1 : f4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800003d4]:fcvt.l.s s8, ft4, dyn<br> [0x800003d8]:csrrs a7, fflags, zero<br> [0x800003dc]:sw s8, 208(a5)<br>    |
|  22|[0x80002360]<br>0x0000000000000000|- rd : x2<br> - rs1 : f13<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800003ec]:fcvt.l.s sp, fa3, dyn<br> [0x800003f0]:csrrs a7, fflags, zero<br> [0x800003f4]:sw sp, 224(a5)<br>    |
|  23|[0x80002370]<br>0x0000000000000000|- rd : x15<br> - rs1 : f16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000410]:fcvt.l.s a5, fa6, dyn<br> [0x80000414]:csrrs s5, fflags, zero<br> [0x80000418]:sw a5, 0(s3)<br>      |
|  24|[0x80002380]<br>0x0000000000000000|- rd : x14<br> - rs1 : f21<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000434]:fcvt.l.s a4, fs5, dyn<br> [0x80000438]:csrrs a7, fflags, zero<br> [0x8000043c]:sw a4, 0(a5)<br>      |
|  25|[0x80002390]<br>0x0000000000000000|- rd : x25<br> - rs1 : f24<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000044c]:fcvt.l.s s9, fs8, dyn<br> [0x80000450]:csrrs a7, fflags, zero<br> [0x80000454]:sw s9, 16(a5)<br>     |
|  26|[0x800023a0]<br>0x0000000000000000|- rd : x7<br> - rs1 : f31<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000464]:fcvt.l.s t2, ft11, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:sw t2, 32(a5)<br>    |
|  27|[0x800023b0]<br>0x0000000000000000|- rd : x9<br> - rs1 : f10<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000047c]:fcvt.l.s s1, fa0, dyn<br> [0x80000480]:csrrs a7, fflags, zero<br> [0x80000484]:sw s1, 48(a5)<br>     |
|  28|[0x800023c0]<br>0x0000000000000000|- rd : x26<br> - rs1 : f22<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000494]:fcvt.l.s s10, fs6, dyn<br> [0x80000498]:csrrs a7, fflags, zero<br> [0x8000049c]:sw s10, 64(a5)<br>   |
|  29|[0x800023d0]<br>0x0000000000000000|- rd : x30<br> - rs1 : f26<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800004ac]:fcvt.l.s t5, fs10, dyn<br> [0x800004b0]:csrrs a7, fflags, zero<br> [0x800004b4]:sw t5, 80(a5)<br>    |
|  30|[0x800023e0]<br>0x0000000000000000|- rd : x13<br> - rs1 : f1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004c4]:fcvt.l.s a3, ft1, dyn<br> [0x800004c8]:csrrs a7, fflags, zero<br> [0x800004cc]:sw a3, 96(a5)<br>     |
|  31|[0x800023f0]<br>0x0000000000000000|- rd : x31<br> - rs1 : f19<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800004dc]:fcvt.l.s t6, fs3, dyn<br> [0x800004e0]:csrrs a7, fflags, zero<br> [0x800004e4]:sw t6, 112(a5)<br>    |
|  32|[0x80002400]<br>0x0000000000000000|- rd : x8<br> - rs1 : f8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800004f4]:fcvt.l.s fp, fs0, dyn<br> [0x800004f8]:csrrs a7, fflags, zero<br> [0x800004fc]:sw fp, 128(a5)<br>    |
