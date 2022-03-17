
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009b0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | umulx16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umulx16-01.S    |
| Total Number of coverpoints| 239     |
| Total Coverpoints Hit     | 233      |
| Total Signature Updates   | 162      |
| STAT1                     | 80      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000600]:UMULX16 t5, t6, t4
      [0x80000604]:sw t5, 104(ra)
 -- Signature Address: 0x80002380 Data: 0x00200011
 -- Redundant Coverpoints hit by the op
      - opcode : umulx16
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 65535
      - rs1_h0_val == 16






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : umulx16', 'rs1 : x16', 'rs2 : x16', 'rd : x16', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32768', 'rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x8000010c]:UMULX16 a6, a6, a6
	-[0x80000110]:sw a6, 0(gp)
Current Store : [0x80000114] : sw a7, 4(gp) -- Store: [0x80002214]:0x00068000




Last Coverpoint : ['rs1 : x5', 'rs2 : x5', 'rd : x14', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000124]:UMULX16 a4, t0, t0
	-[0x80000128]:sw a4, 8(gp)
Current Store : [0x8000012c] : sw a5, 12(gp) -- Store: [0x8000221c]:0x0000009A




Last Coverpoint : ['rs1 : x1', 'rs2 : x2', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 256', 'rs2_h0_val == 512', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000140]:UMULX16 s10, ra, sp
	-[0x80000144]:sw s10, 16(gp)
Current Store : [0x80000148] : sw s11, 20(gp) -- Store: [0x80002224]:0x00002400




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x24', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 43690', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x8000015c]:UMULX16 s8, sp, s8
	-[0x80000160]:sw s8, 24(gp)
Current Store : [0x80000164] : sw s9, 28(gp) -- Store: [0x8000222c]:0x0000010E




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x18', 'rs1 == rd != rs2', 'rs2_h1_val == 21845', 'rs1_h1_val == 65519', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000178]:UMULX16 s2, s2, s11
	-[0x8000017c]:sw s2, 32(gp)
Current Store : [0x80000180] : sw s3, 36(gp) -- Store: [0x80002234]:0x000DFF12




Last Coverpoint : ['rs1 : x26', 'rs2 : x21', 'rd : x30', 'rs2_h1_val == 32767', 'rs2_h0_val == 65535', 'rs1_h1_val == 65407', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000194]:UMULX16 t5, s10, s5
	-[0x80000198]:sw t5, 40(gp)
Current Store : [0x8000019c] : sw t6, 44(gp) -- Store: [0x8000223c]:0xFF7E0081




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x6', 'rs2_h1_val == 49151', 'rs1_h1_val == 63487', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800001ac]:UMULX16 t1, s9, tp
	-[0x800001b0]:sw t1, 48(gp)
Current Store : [0x800001b4] : sw t2, 52(gp) -- Store: [0x80002244]:0x0004D7FB




Last Coverpoint : ['rs1 : x24', 'rs2 : x29', 'rd : x22', 'rs2_h1_val == 57343', 'rs2_h0_val == 32767', 'rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x800001c8]:UMULX16 s6, s8, t4
	-[0x800001cc]:sw s6, 56(gp)
Current Store : [0x800001d0] : sw s7, 60(gp) -- Store: [0x8000224c]:0x7FFE0002




Last Coverpoint : ['rs1 : x8', 'rs2 : x20', 'rd : x12', 'rs2_h1_val == 61439', 'rs2_h0_val == 64511', 'rs1_h1_val == 65503', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x800001e4]:UMULX16 a2, fp, s4
	-[0x800001e8]:sw a2, 64(gp)
Current Store : [0x800001ec] : sw a3, 68(gp) -- Store: [0x80002254]:0xFBDE8421




Last Coverpoint : ['rs1 : x28', 'rs2 : x7', 'rd : x10', 'rs2_h1_val == 63487']
Last Code Sequence : 
	-[0x80000208]:UMULX16 a0, t3, t2
	-[0x8000020c]:sw a0, 0(ra)
Current Store : [0x80000210] : sw a1, 4(ra) -- Store: [0x8000225c]:0x0000006E




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x28', 'rs2_h1_val == 64511', 'rs2_h0_val == 65531', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000220]:UMULX16 t3, t4, t1
	-[0x80000224]:sw t3, 8(ra)
Current Store : [0x80000228] : sw t4, 12(ra) -- Store: [0x80002264]:0xF7FA2805




Last Coverpoint : ['rs1 : x0', 'rs2 : x28', 'rd : x8', 'rs1_h0_val == 0', 'rs2_h1_val == 65023', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x8000023c]:UMULX16 fp, zero, t3
	-[0x80000240]:sw fp, 16(ra)
Current Store : [0x80000244] : sw s1, 20(ra) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x20', 'rs2_h1_val == 65279', 'rs2_h0_val == 16', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x80000258]:UMULX16 s4, gp, s10
	-[0x8000025c]:sw s4, 24(ra)
Current Store : [0x80000260] : sw s5, 28(ra) -- Store: [0x80002274]:0x000FFFD0




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x2', 'rs2_h1_val == 65407', 'rs2_h0_val == 21845', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000274]:UMULX16 sp, a2, s9
	-[0x80000278]:sw sp, 32(ra)
Current Store : [0x8000027c] : sw gp, 36(ra) -- Store: [0x8000227c]:0x0004AAA6




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x4', 'rs2_h1_val == 65471', 'rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x80000290]:UMULX16 tp, s6, a3
	-[0x80000294]:sw tp, 40(ra)
Current Store : [0x80000298] : sw t0, 44(ra) -- Store: [0x80002284]:0x77FE9001




Last Coverpoint : ['rs1 : x15', 'rs2 : x3', 'rs2_h1_val == 65503', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800002ac]:UMULX16 s10, a5, gp
	-[0x800002b0]:sw s10, 48(ra)
Current Store : [0x800002b4] : sw s11, 52(ra) -- Store: [0x8000228c]:0x00001C00




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rs2_h1_val == 65519', 'rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x800002c4]:UMULX16 s4, a4, t6
	-[0x800002c8]:sw s4, 56(ra)
Current Store : [0x800002cc] : sw s5, 60(ra) -- Store: [0x80002294]:0x00060000




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rs2_h1_val == 65527', 'rs2_h0_val == 57343', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800002e0]:UMULX16 s4, t1, a5
	-[0x800002e4]:sw s4, 64(ra)
Current Store : [0x800002e8] : sw s5, 68(ra) -- Store: [0x8000229c]:0x000DFFF0




Last Coverpoint : ['rs1 : x31', 'rs2 : x9', 'rs2_h1_val == 65531', 'rs2_h0_val == 8192', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x800002f4]:UMULX16 a0, t6, s1
	-[0x800002f8]:sw a0, 72(ra)
Current Store : [0x800002fc] : sw a1, 76(ra) -- Store: [0x800022a4]:0x1F7FE000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rs2_h1_val == 65533', 'rs2_h0_val == 2', 'rs1_h1_val == 4', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000310]:UMULX16 s8, s5, a1
	-[0x80000314]:sw s8, 80(ra)
Current Store : [0x80000318] : sw s9, 84(ra) -- Store: [0x800022ac]:0x00000008




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rs2_h1_val == 65534', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000328]:UMULX16 a4, t5, a7
	-[0x8000032c]:sw a4, 88(ra)
Current Store : [0x80000330] : sw a5, 92(ra) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x1', 'rs2_h1_val == 16384', 'rs2_h0_val == 65279', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000034c]:UMULX16 t1, s7, ra
	-[0x80000350]:sw t1, 0(a5)
Current Store : [0x80000354] : sw t2, 4(a5) -- Store: [0x800022bc]:0xFEDE2121




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rs2_h1_val == 8192', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000368]:UMULX16 s10, t2, s6
	-[0x8000036c]:sw s10, 8(a5)
Current Store : [0x80000370] : sw s11, 12(a5) -- Store: [0x800022c4]:0x00000031




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rs2_h1_val == 4096', 'rs2_h0_val == 65533', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000384]:UMULX16 t1, s4, a2
	-[0x80000388]:sw t1, 16(a5)
Current Store : [0x8000038c] : sw t2, 20(a5) -- Store: [0x800022cc]:0xFFEC0033




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rs2_h1_val == 2048', 'rs2_h0_val == 4096', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x8000039c]:UMULX16 sp, tp, s3
	-[0x800003a0]:sw sp, 24(a5)
Current Store : [0x800003a4] : sw gp, 28(a5) -- Store: [0x800022d4]:0x05555000




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rs2_h1_val == 0']
Last Code Sequence : 
	-[0x800003b8]:UMULX16 a2, s3, zero
	-[0x800003bc]:sw a2, 32(a5)
Current Store : [0x800003c0] : sw a3, 36(a5) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x800003d4]:UMULX16 sp, a1, s7
	-[0x800003d8]:sw sp, 40(a5)
Current Store : [0x800003dc] : sw gp, 44(a5) -- Store: [0x800022e4]:0x00000021




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rs2_h1_val == 128', 'rs2_h0_val == 49151', 'rs1_h1_val == 64', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800003f0]:UMULX16 s6, a3, a0
	-[0x800003f4]:sw s6, 48(a5)
Current Store : [0x800003f8] : sw s7, 52(a5) -- Store: [0x800022ec]:0x002FFFC0




Last Coverpoint : ['rs1 : x10', 'rs2 : x8', 'rs2_h1_val == 64', 'rs1_h1_val == 49151', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x8000040c]:UMULX16 s6, a0, fp
	-[0x80000410]:sw s6, 56(a5)
Current Store : [0x80000414] : sw s7, 60(a5) -- Store: [0x800022f4]:0x017FFE00




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000428]:UMULX16 tp, a7, t5
	-[0x8000042c]:sw tp, 64(a5)
Current Store : [0x80000430] : sw t0, 68(a5) -- Store: [0x800022fc]:0x000000BB




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000444]:UMULX16 t3, s1, s2
	-[0x80000448]:sw t3, 72(a5)
Current Store : [0x8000044c] : sw t4, 76(a5) -- Store: [0x80002304]:0x000FFFD0




Last Coverpoint : ['rs1 : x27', 'rs2 : x14', 'rs2_h1_val == 8', 'rs2_h0_val == 65527']
Last Code Sequence : 
	-[0x80000460]:UMULX16 a2, s11, a4
	-[0x80000464]:sw a2, 80(a5)
Current Store : [0x80000468] : sw a3, 84(a5) -- Store: [0x8000230c]:0xFFF50012




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 4', 'rs1_h1_val == 32767', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x8000047c]:UMULX16 t5, t6, t4
	-[0x80000480]:sw t5, 88(a5)
Current Store : [0x80000484] : sw t6, 92(a5) -- Store: [0x80002314]:0x0001FFFC




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004a0]:UMULX16 t5, t6, t4
	-[0x800004a4]:sw t5, 0(ra)
Current Store : [0x800004a8] : sw t6, 4(ra) -- Store: [0x8000231c]:0xEFFC3003




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x800004bc]:UMULX16 t5, t6, t4
	-[0x800004c0]:sw t5, 8(ra)
Current Store : [0x800004c4] : sw t6, 12(ra) -- Store: [0x80002324]:0x00002C00




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004d4]:UMULX16 t5, t6, t4
	-[0x800004d8]:sw t5, 16(ra)
Current Store : [0x800004dc] : sw t6, 20(ra) -- Store: [0x8000232c]:0x0012FEBD




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800004ec]:UMULX16 t5, t6, t4
	-[0x800004f0]:sw t5, 24(ra)
Current Store : [0x800004f4] : sw t6, 28(ra) -- Store: [0x80002334]:0x00006000




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000508]:UMULX16 t5, t6, t4
	-[0x8000050c]:sw t5, 32(ra)
Current Store : [0x80000510] : sw t6, 36(ra) -- Store: [0x8000233c]:0x00020000




Last Coverpoint : ['rs2_h0_val == 61439', 'rs1_h1_val == 8192', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000524]:UMULX16 t5, t6, t4
	-[0x80000528]:sw t5, 40(ra)
Current Store : [0x8000052c] : sw t6, 44(ra) -- Store: [0x80002344]:0x1DFFE000




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000540]:UMULX16 t5, t6, t4
	-[0x80000544]:sw t5, 48(ra)
Current Store : [0x80000548] : sw t6, 52(ra) -- Store: [0x8000234c]:0x00000500




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000558]:UMULX16 t5, t6, t4
	-[0x8000055c]:sw t5, 56(ra)
Current Store : [0x80000560] : sw t6, 60(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000574]:UMULX16 t5, t6, t4
	-[0x80000578]:sw t5, 64(ra)
Current Store : [0x8000057c] : sw t6, 68(ra) -- Store: [0x8000235c]:0xDFE22021




Last Coverpoint : ['rs2_h0_val == 65519', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000590]:UMULX16 t5, t6, t4
	-[0x80000594]:sw t5, 72(ra)
Current Store : [0x80000598] : sw t6, 76(ra) -- Store: [0x80002364]:0x7FF78000




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005ac]:UMULX16 t5, t6, t4
	-[0x800005b0]:sw t5, 80(ra)
Current Store : [0x800005b4] : sw t6, 84(ra) -- Store: [0x8000236c]:0x00000070




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800005c8]:UMULX16 t5, t6, t4
	-[0x800005cc]:sw t5, 88(ra)
Current Store : [0x800005d0] : sw t6, 92(ra) -- Store: [0x80002374]:0x005FFF80




Last Coverpoint : ['rs2_h1_val == 65535']
Last Code Sequence : 
	-[0x800005e4]:UMULX16 t5, t6, t4
	-[0x800005e8]:sw t5, 96(ra)
Current Store : [0x800005ec] : sw t6, 100(ra) -- Store: [0x8000237c]:0x00400000




Last Coverpoint : ['opcode : umulx16', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 65535', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000600]:UMULX16 t5, t6, t4
	-[0x80000604]:sw t5, 104(ra)
Current Store : [0x80000608] : sw t6, 108(ra) -- Store: [0x80002384]:0x0011FFEE




Last Coverpoint : ['rs2_h0_val == 43690']
Last Code Sequence : 
	-[0x80000618]:UMULX16 t5, t6, t4
	-[0x8000061c]:sw t5, 112(ra)
Current Store : [0x80000620] : sw t6, 116(ra) -- Store: [0x8000238c]:0x0009FFF6




Last Coverpoint : ['rs2_h0_val == 63487', 'rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x80000634]:UMULX16 t5, t6, t4
	-[0x80000638]:sw t5, 120(ra)
Current Store : [0x8000063c] : sw t6, 124(ra) -- Store: [0x80002394]:0xF60E0A01




Last Coverpoint : ['rs2_h0_val == 65023', 'rs1_h1_val == 65279', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000650]:UMULX16 t5, t6, t4
	-[0x80000654]:sw t5, 128(ra)
Current Store : [0x80000658] : sw t6, 132(ra) -- Store: [0x8000239c]:0xFD000301




Last Coverpoint : ['rs2_h0_val == 65407']
Last Code Sequence : 
	-[0x8000066c]:UMULX16 t5, t6, t4
	-[0x80000670]:sw t5, 136(ra)
Current Store : [0x80000674] : sw t6, 140(ra) -- Store: [0x800023a4]:0x7FBE8081




Last Coverpoint : ['rs2_h0_val == 65471']
Last Code Sequence : 
	-[0x80000688]:UMULX16 t5, t6, t4
	-[0x8000068c]:sw t5, 144(ra)
Current Store : [0x80000690] : sw t6, 148(ra) -- Store: [0x800023ac]:0x0011FB6E




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800006a4]:UMULX16 t5, t6, t4
	-[0x800006a8]:sw t5, 152(ra)
Current Store : [0x800006ac] : sw t6, 156(ra) -- Store: [0x800023b4]:0x00001200




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800006c0]:UMULX16 t5, t6, t4
	-[0x800006c4]:sw t5, 160(ra)
Current Store : [0x800006c8] : sw t6, 164(ra) -- Store: [0x800023bc]:0x003DFFC0




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800006d8]:UMULX16 t5, t6, t4
	-[0x800006dc]:sw t5, 168(ra)
Current Store : [0x800006e0] : sw t6, 172(ra) -- Store: [0x800023c4]:0x00000200




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == 43690', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x800006f4]:UMULX16 t5, t6, t4
	-[0x800006f8]:sw t5, 176(ra)
Current Store : [0x800006fc] : sw t6, 180(ra) -- Store: [0x800023cc]:0x00055550




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000710]:UMULX16 t5, t6, t4
	-[0x80000714]:sw t5, 184(ra)
Current Store : [0x80000718] : sw t6, 188(ra) -- Store: [0x800023d4]:0x0000EFFF




Last Coverpoint : ['rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000728]:UMULX16 t5, t6, t4
	-[0x8000072c]:sw t5, 192(ra)
Current Store : [0x80000730] : sw t6, 196(ra) -- Store: [0x800023dc]:0xD8FE2801




Last Coverpoint : ['rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x80000744]:UMULX16 t5, t6, t4
	-[0x80000748]:sw t5, 200(ra)
Current Store : [0x8000074c] : sw t6, 204(ra) -- Store: [0x800023e4]:0xFFB60249




Last Coverpoint : ['rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x80000760]:UMULX16 t5, t6, t4
	-[0x80000764]:sw t5, 208(ra)
Current Store : [0x80000768] : sw t6, 212(ra) -- Store: [0x800023ec]:0xDFF72009




Last Coverpoint : ['rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x8000077c]:UMULX16 t5, t6, t4
	-[0x80000780]:sw t5, 216(ra)
Current Store : [0x80000784] : sw t6, 220(ra) -- Store: [0x800023f4]:0x003FFEC0




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000798]:UMULX16 t5, t6, t4
	-[0x8000079c]:sw t5, 224(ra)
Current Store : [0x800007a0] : sw t6, 228(ra) -- Store: [0x800023fc]:0x00030000




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800007b4]:UMULX16 t5, t6, t4
	-[0x800007b8]:sw t5, 232(ra)
Current Store : [0x800007bc] : sw t6, 236(ra) -- Store: [0x80002404]:0x0EFFF000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800007d0]:UMULX16 t5, t6, t4
	-[0x800007d4]:sw t5, 240(ra)
Current Store : [0x800007d8] : sw t6, 244(ra) -- Store: [0x8000240c]:0x06FFF800




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800007ec]:UMULX16 t5, t6, t4
	-[0x800007f0]:sw t5, 248(ra)
Current Store : [0x800007f4] : sw t6, 252(ra) -- Store: [0x80002414]:0x00040000




Last Coverpoint : ['rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x80000804]:UMULX16 t5, t6, t4
	-[0x80000808]:sw t5, 256(ra)
Current Store : [0x8000080c] : sw t6, 260(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000820]:UMULX16 t5, t6, t4
	-[0x80000824]:sw t5, 264(ra)
Current Store : [0x80000828] : sw t6, 268(ra) -- Store: [0x80002424]:0x00FBFF00




Last Coverpoint : ['rs1_h1_val == 32', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x8000083c]:UMULX16 t5, t6, t4
	-[0x80000840]:sw t5, 272(ra)
Current Store : [0x80000844] : sw t6, 276(ra) -- Store: [0x8000242c]:0x001FFFA0




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000858]:UMULX16 t5, t6, t4
	-[0x8000085c]:sw t5, 280(ra)
Current Store : [0x80000860] : sw t6, 284(ra) -- Store: [0x80002434]:0x00000800




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000874]:UMULX16 t5, t6, t4
	-[0x80000878]:sw t5, 288(ra)
Current Store : [0x8000087c] : sw t6, 292(ra) -- Store: [0x8000243c]:0x0000000B




Last Coverpoint : ['rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x80000890]:UMULX16 t5, t6, t4
	-[0x80000894]:sw t5, 296(ra)
Current Store : [0x80000898] : sw t6, 300(ra) -- Store: [0x80002444]:0x0002FFFD




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008ac]:UMULX16 t5, t6, t4
	-[0x800008b0]:sw t5, 304(ra)
Current Store : [0x800008b4] : sw t6, 308(ra) -- Store: [0x8000244c]:0x001FFEE0




Last Coverpoint : ['rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x800008c8]:UMULX16 t5, t6, t4
	-[0x800008cc]:sw t5, 312(ra)
Current Store : [0x800008d0] : sw t6, 316(ra) -- Store: [0x80002454]:0x3FFFC000




Last Coverpoint : ['rs2_h0_val == 65503']
Last Code Sequence : 
	-[0x800008e4]:UMULX16 t5, t6, t4
	-[0x800008e8]:sw t5, 320(ra)
Current Store : [0x800008ec] : sw t6, 324(ra) -- Store: [0x8000245c]:0x01FFBE00




Last Coverpoint : ['rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000900]:UMULX16 t5, t6, t4
	-[0x80000904]:sw t5, 328(ra)
Current Store : [0x80000908] : sw t6, 332(ra) -- Store: [0x80002464]:0xFF7A0285




Last Coverpoint : ['rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x8000091c]:UMULX16 t5, t6, t4
	-[0x80000920]:sw t5, 336(ra)
Current Store : [0x80000924] : sw t6, 340(ra) -- Store: [0x8000246c]:0x00001200




Last Coverpoint : ['rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000938]:UMULX16 t5, t6, t4
	-[0x8000093c]:sw t5, 344(ra)
Current Store : [0x80000940] : sw t6, 348(ra) -- Store: [0x80002474]:0x00000200




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000950]:UMULX16 t5, t6, t4
	-[0x80000954]:sw t5, 352(ra)
Current Store : [0x80000958] : sw t6, 356(ra) -- Store: [0x8000247c]:0x00018000




Last Coverpoint : ['rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x8000096c]:UMULX16 t5, t6, t4
	-[0x80000970]:sw t5, 360(ra)
Current Store : [0x80000974] : sw t6, 364(ra) -- Store: [0x80002484]:0x00002400




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000988]:UMULX16 t5, t6, t4
	-[0x8000098c]:sw t5, 368(ra)
Current Store : [0x80000990] : sw t6, 372(ra) -- Store: [0x8000248c]:0x00000060




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800009a4]:UMULX16 t5, t6, t4
	-[0x800009a8]:sw t5, 376(ra)
Current Store : [0x800009ac] : sw t6, 380(ra) -- Store: [0x80002494]:0x0008FFE5





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

|s.no|        signature         |                                                                                                                                        coverpoints                                                                                                                                        |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x8000000D|- opcode : umulx16<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32768<br> - rs1_h1_val == 32768<br> |[0x8000010c]:UMULX16 a6, a6, a6<br> [0x80000110]:sw a6, 0(gp)<br>    |
|   2|[0x80002218]<br>0xF56FF76D|- rs1 : x5<br> - rs2 : x5<br> - rd : x14<br> - rs1 == rs2 != rd<br>                                                                                                                                                                                                                        |[0x80000124]:UMULX16 a4, t0, t0<br> [0x80000128]:sw a4, 8(gp)<br>    |
|   3|[0x80002220]<br>0x76DF56FF|- rs1 : x1<br> - rs2 : x2<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 256<br> - rs2_h0_val == 512<br> - rs1_h0_val == 512<br>                                                    |[0x80000140]:UMULX16 s10, ra, sp<br> [0x80000144]:sw s10, 16(gp)<br> |
|   4|[0x80002228]<br>0xAAAA000F|- rs1 : x2<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h0_val == 65519<br>                                                                                              |[0x8000015c]:UMULX16 s8, sp, s8<br> [0x80000160]:sw s8, 24(gp)<br>   |
|   5|[0x80002230]<br>0xFFEFEFFF|- rs1 : x18<br> - rs2 : x27<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 61439<br>                                                                                                                                        |[0x80000178]:UMULX16 s2, s2, s11<br> [0x8000017c]:sw s2, 32(gp)<br>  |
|   6|[0x80002238]<br>0xF76DF56F|- rs1 : x26<br> - rs2 : x21<br> - rd : x30<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 65535<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 65471<br>                                                                                                                                     |[0x80000194]:UMULX16 t5, s10, s5<br> [0x80000198]:sw t5, 40(gp)<br>  |
|   7|[0x80002240]<br>0x80002000|- rs1 : x25<br> - rs2 : x4<br> - rd : x6<br> - rs2_h1_val == 49151<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 16384<br>                                                                                                                                                                 |[0x800001ac]:UMULX16 t1, s9, tp<br> [0x800001b0]:sw t1, 48(gp)<br>   |
|   8|[0x80002248]<br>0x6DF56FF7|- rs1 : x24<br> - rs2 : x29<br> - rd : x22<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 65534<br>                                                                                                                                                               |[0x800001c8]:UMULX16 s6, s8, t4<br> [0x800001cc]:sw s6, 56(gp)<br>   |
|   9|[0x80002250]<br>0xD5BFDDB7|- rs1 : x8<br> - rs2 : x20<br> - rd : x12<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 64511<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 65503<br>                                                                                                                                      |[0x800001e4]:UMULX16 a2, fp, s4<br> [0x800001e8]:sw a2, 64(gp)<br>   |
|  10|[0x80002258]<br>0x56FF76DF|- rs1 : x28<br> - rs2 : x7<br> - rd : x10<br> - rs2_h1_val == 63487<br>                                                                                                                                                                                                                    |[0x80000208]:UMULX16 a0, t3, t2<br> [0x8000020c]:sw a0, 0(ra)<br>    |
|  11|[0x80002260]<br>0x000B000F|- rs1 : x29<br> - rs2 : x6<br> - rd : x28<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 65531<br> - rs1_h0_val == 32768<br>                                                                                                                                                                |[0x80000220]:UMULX16 t3, t4, t1<br> [0x80000224]:sw t3, 8(ra)<br>    |
|  12|[0x80002268]<br>0xFFDFFFDF|- rs1 : x0<br> - rs2 : x28<br> - rd : x8<br> - rs1_h0_val == 0<br> - rs2_h1_val == 65023<br> - rs1_h1_val == 0<br>                                                                                                                                                                         |[0x8000023c]:UMULX16 fp, zero, t3<br> [0x80000240]:sw fp, 16(ra)<br> |
|  13|[0x80002270]<br>0xEFFFFBFF|- rs1 : x3<br> - rs2 : x26<br> - rd : x20<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 16<br> - rs1_h1_val == 65533<br>                                                                                                                                                                   |[0x80000258]:UMULX16 s4, gp, s10<br> [0x8000025c]:sw s4, 24(ra)<br>  |
|  14|[0x80002278]<br>0x0012FFEF|- rs1 : x12<br> - rs2 : x25<br> - rd : x2<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 65535<br>                                                                                                                                                                |[0x80000274]:UMULX16 sp, a2, s9<br> [0x80000278]:sw sp, 32(ra)<br>   |
|  15|[0x80002280]<br>0xBFFF0005|- rs1 : x22<br> - rs2 : x13<br> - rd : x4<br> - rs2_h1_val == 65471<br> - rs1_h1_val == 61439<br>                                                                                                                                                                                          |[0x80000290]:UMULX16 tp, s6, a3<br> [0x80000294]:sw tp, 40(ra)<br>   |
|  16|[0x80002288]<br>0xFEFF0010|- rs1 : x15<br> - rs2 : x3<br> - rs2_h1_val == 65503<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                          |[0x800002ac]:UMULX16 s10, a5, gp<br> [0x800002b0]:sw s10, 48(ra)<br> |
|  17|[0x80002290]<br>0xEFFFFBFF|- rs1 : x14<br> - rs2 : x31<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 32768<br>                                                                                                                                                                                                        |[0x800002c4]:UMULX16 s4, a4, t6<br> [0x800002c8]:sw s4, 56(ra)<br>   |
|  18|[0x80002298]<br>0xEFFFFBFF|- rs1 : x6<br> - rs2 : x15<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 16<br>                                                                                                                                                                                  |[0x800002e0]:UMULX16 s4, t1, a5<br> [0x800002e4]:sw s4, 64(ra)<br>   |
|  19|[0x800022a0]<br>0x56FF76DF|- rs1 : x31<br> - rs2 : x9<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                |[0x800002f4]:UMULX16 a0, t6, s1<br> [0x800002f8]:sw a0, 72(ra)<br>   |
|  20|[0x800022a8]<br>0xFFFE000A|- rs1 : x21<br> - rs2 : x11<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 2<br> - rs1_h1_val == 4<br> - rs1_h0_val == 64511<br>                                                                                                                                                            |[0x80000310]:UMULX16 s8, s5, a1<br> [0x80000314]:sw s8, 80(ra)<br>   |
|  21|[0x800022b0]<br>0x000CFFDF|- rs1 : x30<br> - rs2 : x17<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                            |[0x80000328]:UMULX16 a4, t5, a7<br> [0x8000032c]:sw a4, 88(ra)<br>   |
|  22|[0x800022b8]<br>0x00100200|- rs1 : x23<br> - rs2 : x1<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 65279<br> - rs1_h0_val == 32767<br>                                                                                                                                                                               |[0x8000034c]:UMULX16 t1, s7, ra<br> [0x80000350]:sw t1, 0(a5)<br>    |
|  23|[0x800022c0]<br>0xFEFF0010|- rs1 : x7<br> - rs2 : x22<br> - rs2_h1_val == 8192<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                            |[0x80000368]:UMULX16 s10, t2, s6<br> [0x8000036c]:sw s10, 8(a5)<br>  |
|  24|[0x800022c8]<br>0x00100200|- rs1 : x20<br> - rs2 : x12<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 65533<br> - rs1_h0_val == 2<br>                                                                                                                                                                                   |[0x80000384]:UMULX16 t1, s4, a2<br> [0x80000388]:sw t1, 16(a5)<br>   |
|  25|[0x800022d0]<br>0x0012FFEF|- rs1 : x4<br> - rs2 : x19<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                 |[0x8000039c]:UMULX16 sp, tp, s3<br> [0x800003a0]:sw sp, 24(a5)<br>   |
|  26|[0x800022d8]<br>0x1000FFFD|- rs1 : x19<br> - rs2 : x0<br> - rs2_h1_val == 0<br>                                                                                                                                                                                                                                       |[0x800003b8]:UMULX16 a2, s3, zero<br> [0x800003bc]:sw a2, 32(a5)<br> |
|  27|[0x800022e0]<br>0x0012FFEF|- rs1 : x11<br> - rs2 : x23<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                    |[0x800003d4]:UMULX16 sp, a1, s7<br> [0x800003d8]:sw sp, 40(a5)<br>   |
|  28|[0x800022e8]<br>0x20000007|- rs1 : x13<br> - rs2 : x10<br> - rs2_h1_val == 128<br> - rs2_h0_val == 49151<br> - rs1_h1_val == 64<br> - rs1_h0_val == 1024<br>                                                                                                                                                          |[0x800003f0]:UMULX16 s6, a3, a0<br> [0x800003f4]:sw s6, 48(a5)<br>   |
|  29|[0x800022f0]<br>0x20000007|- rs1 : x10<br> - rs2 : x8<br> - rs2_h1_val == 64<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                  |[0x8000040c]:UMULX16 s6, a0, fp<br> [0x80000410]:sw s6, 56(a5)<br>   |
|  30|[0x800022f8]<br>0x55557FFF|- rs1 : x17<br> - rs2 : x30<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                     |[0x80000428]:UMULX16 tp, a7, t5<br> [0x8000042c]:sw tp, 64(a5)<br>   |
|  31|[0x80002300]<br>0xFDFF000C|- rs1 : x9<br> - rs2 : x18<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                      |[0x80000444]:UMULX16 t3, s1, s2<br> [0x80000448]:sw t3, 72(a5)<br>   |
|  32|[0x80002308]<br>0x1000FFFD|- rs1 : x27<br> - rs2 : x14<br> - rs2_h1_val == 8<br> - rs2_h0_val == 65527<br>                                                                                                                                                                                                            |[0x80000460]:UMULX16 a2, s11, a4<br> [0x80000464]:sw a2, 80(a5)<br>  |
|  33|[0x80002310]<br>0x00200011|- rs2_h1_val == 4<br> - rs2_h0_val == 4<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                            |[0x8000047c]:UMULX16 t5, t6, t4<br> [0x80000480]:sw t5, 88(a5)<br>   |
|  34|[0x80002318]<br>0x00200011|- rs2_h1_val == 2<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                               |[0x800004a0]:UMULX16 t5, t6, t4<br> [0x800004a4]:sw t5, 0(ra)<br>    |
|  35|[0x80002320]<br>0x00200011|- rs2_h0_val == 1024<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                         |[0x800004bc]:UMULX16 t5, t6, t4<br> [0x800004c0]:sw t5, 8(ra)<br>    |
|  36|[0x80002328]<br>0x00200011|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                   |[0x800004d4]:UMULX16 t5, t6, t4<br> [0x800004d8]:sw t5, 16(ra)<br>   |
|  37|[0x80002330]<br>0x00200011|- rs2_h0_val == 2048<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                          |[0x800004ec]:UMULX16 t5, t6, t4<br> [0x800004f0]:sw t5, 24(ra)<br>   |
|  38|[0x80002338]<br>0x00200011|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x80000508]:UMULX16 t5, t6, t4<br> [0x8000050c]:sw t5, 32(ra)<br>   |
|  39|[0x80002340]<br>0x00200011|- rs2_h0_val == 61439<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                 |[0x80000524]:UMULX16 t5, t6, t4<br> [0x80000528]:sw t5, 40(ra)<br>   |
|  40|[0x80002348]<br>0x00200011|- rs2_h0_val == 128<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                             |[0x80000540]:UMULX16 t5, t6, t4<br> [0x80000544]:sw t5, 48(ra)<br>   |
|  41|[0x80002350]<br>0x00200011|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                     |[0x80000558]:UMULX16 t5, t6, t4<br> [0x8000055c]:sw t5, 56(ra)<br>   |
|  42|[0x80002358]<br>0x00200011|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                      |[0x80000574]:UMULX16 t5, t6, t4<br> [0x80000578]:sw t5, 64(ra)<br>   |
|  43|[0x80002360]<br>0x00200011|- rs2_h0_val == 65519<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                            |[0x80000590]:UMULX16 t5, t6, t4<br> [0x80000594]:sw t5, 72(ra)<br>   |
|  44|[0x80002368]<br>0x00200011|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                      |[0x800005ac]:UMULX16 t5, t6, t4<br> [0x800005b0]:sw t5, 80(ra)<br>   |
|  45|[0x80002370]<br>0x00200011|- rs2_h1_val == 1<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                              |[0x800005c8]:UMULX16 t5, t6, t4<br> [0x800005cc]:sw t5, 88(ra)<br>   |
|  46|[0x80002378]<br>0x00200011|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                                  |[0x800005e4]:UMULX16 t5, t6, t4<br> [0x800005e8]:sw t5, 96(ra)<br>   |
|  47|[0x80002388]<br>0x00200011|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                                  |[0x80000618]:UMULX16 t5, t6, t4<br> [0x8000061c]:sw t5, 112(ra)<br>  |
|  48|[0x80002390]<br>0x00200011|- rs2_h0_val == 63487<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                        |[0x80000634]:UMULX16 t5, t6, t4<br> [0x80000638]:sw t5, 120(ra)<br>  |
|  49|[0x80002398]<br>0x00200011|- rs2_h0_val == 65023<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                              |[0x80000650]:UMULX16 t5, t6, t4<br> [0x80000654]:sw t5, 128(ra)<br>  |
|  50|[0x800023a0]<br>0x00200011|- rs2_h0_val == 65407<br>                                                                                                                                                                                                                                                                  |[0x8000066c]:UMULX16 t5, t6, t4<br> [0x80000670]:sw t5, 136(ra)<br>  |
|  51|[0x800023a8]<br>0x00200011|- rs2_h0_val == 65471<br>                                                                                                                                                                                                                                                                  |[0x80000688]:UMULX16 t5, t6, t4<br> [0x8000068c]:sw t5, 144(ra)<br>  |
|  52|[0x800023b0]<br>0x00200011|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                    |[0x800006a4]:UMULX16 t5, t6, t4<br> [0x800006a8]:sw t5, 152(ra)<br>  |
|  53|[0x800023b8]<br>0x00200011|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                     |[0x800006c0]:UMULX16 t5, t6, t4<br> [0x800006c4]:sw t5, 160(ra)<br>  |
|  54|[0x800023c0]<br>0x00200011|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                     |[0x800006d8]:UMULX16 t5, t6, t4<br> [0x800006dc]:sw t5, 168(ra)<br>  |
|  55|[0x800023c8]<br>0x00200011|- rs2_h0_val == 8<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                  |[0x800006f4]:UMULX16 t5, t6, t4<br> [0x800006f8]:sw t5, 176(ra)<br>  |
|  56|[0x800023d0]<br>0x00200011|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                      |[0x80000710]:UMULX16 t5, t6, t4<br> [0x80000714]:sw t5, 184(ra)<br>  |
|  57|[0x800023d8]<br>0x00200011|- rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                  |[0x80000728]:UMULX16 t5, t6, t4<br> [0x8000072c]:sw t5, 192(ra)<br>  |
|  58|[0x800023e0]<br>0x00200011|- rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                  |[0x80000744]:UMULX16 t5, t6, t4<br> [0x80000748]:sw t5, 200(ra)<br>  |
|  59|[0x800023e8]<br>0x00200011|- rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                  |[0x80000760]:UMULX16 t5, t6, t4<br> [0x80000764]:sw t5, 208(ra)<br>  |
|  60|[0x800023f0]<br>0x00200011|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                  |[0x8000077c]:UMULX16 t5, t6, t4<br> [0x80000780]:sw t5, 216(ra)<br>  |
|  61|[0x800023f8]<br>0x00200011|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                  |[0x80000798]:UMULX16 t5, t6, t4<br> [0x8000079c]:sw t5, 224(ra)<br>  |
|  62|[0x80002400]<br>0x00200011|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                   |[0x800007b4]:UMULX16 t5, t6, t4<br> [0x800007b8]:sw t5, 232(ra)<br>  |
|  63|[0x80002408]<br>0x00200011|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                   |[0x800007d0]:UMULX16 t5, t6, t4<br> [0x800007d4]:sw t5, 240(ra)<br>  |
|  64|[0x80002410]<br>0x00200011|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                    |[0x800007ec]:UMULX16 t5, t6, t4<br> [0x800007f0]:sw t5, 248(ra)<br>  |
|  65|[0x80002418]<br>0x00200011|- rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                                  |[0x80000804]:UMULX16 t5, t6, t4<br> [0x80000808]:sw t5, 256(ra)<br>  |
|  66|[0x80002420]<br>0x00200011|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                    |[0x80000820]:UMULX16 t5, t6, t4<br> [0x80000824]:sw t5, 264(ra)<br>  |
|  67|[0x80002428]<br>0x00200011|- rs1_h1_val == 32<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                           |[0x8000083c]:UMULX16 t5, t6, t4<br> [0x80000840]:sw t5, 272(ra)<br>  |
|  68|[0x80002430]<br>0x00200011|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                      |[0x80000858]:UMULX16 t5, t6, t4<br> [0x8000085c]:sw t5, 280(ra)<br>  |
|  69|[0x80002438]<br>0x00200011|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                      |[0x80000874]:UMULX16 t5, t6, t4<br> [0x80000878]:sw t5, 288(ra)<br>  |
|  70|[0x80002440]<br>0x00200011|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                  |[0x80000890]:UMULX16 t5, t6, t4<br> [0x80000894]:sw t5, 296(ra)<br>  |
|  71|[0x80002448]<br>0x00200011|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                  |[0x800008ac]:UMULX16 t5, t6, t4<br> [0x800008b0]:sw t5, 304(ra)<br>  |
|  72|[0x80002450]<br>0x00200011|- rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                  |[0x800008c8]:UMULX16 t5, t6, t4<br> [0x800008cc]:sw t5, 312(ra)<br>  |
|  73|[0x80002458]<br>0x00200011|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                  |[0x800008e4]:UMULX16 t5, t6, t4<br> [0x800008e8]:sw t5, 320(ra)<br>  |
|  74|[0x80002460]<br>0x00200011|- rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                  |[0x80000900]:UMULX16 t5, t6, t4<br> [0x80000904]:sw t5, 328(ra)<br>  |
|  75|[0x80002468]<br>0x00200011|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                  |[0x8000091c]:UMULX16 t5, t6, t4<br> [0x80000920]:sw t5, 336(ra)<br>  |
|  76|[0x80002470]<br>0x00200011|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                  |[0x80000938]:UMULX16 t5, t6, t4<br> [0x8000093c]:sw t5, 344(ra)<br>  |
|  77|[0x80002478]<br>0x00200011|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                  |[0x80000950]:UMULX16 t5, t6, t4<br> [0x80000954]:sw t5, 352(ra)<br>  |
|  78|[0x80002480]<br>0x00200011|- rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                  |[0x8000096c]:UMULX16 t5, t6, t4<br> [0x80000970]:sw t5, 360(ra)<br>  |
|  79|[0x80002488]<br>0x00200011|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                      |[0x80000988]:UMULX16 t5, t6, t4<br> [0x8000098c]:sw t5, 368(ra)<br>  |
|  80|[0x80002490]<br>0x00200011|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                   |[0x800009a4]:UMULX16 t5, t6, t4<br> [0x800009a8]:sw t5, 376(ra)<br>  |
