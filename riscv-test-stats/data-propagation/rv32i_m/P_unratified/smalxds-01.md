
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | smalxds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalxds-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 150      |
| STAT1                     | 70      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 75     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d8]:SMALXDS t5, t6, t4
      [0x800006dc]:sw t5, 240(gp)
 -- Signature Address: 0x800023c8 Data: 0xFDFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalxds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == 0
      - rs1_h1_val == 1024
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000088c]:SMALXDS t5, t6, t4
      [0x80000890]:sw t5, 368(gp)
 -- Signature Address: 0x80002448 Data: 0xFDFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalxds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -1025
      - rs2_h0_val == -2
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a8]:SMALXDS t5, t6, t4
      [0x800008ac]:sw t5, 376(gp)
 -- Signature Address: 0x80002450 Data: 0xFDFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalxds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -32768
      - rs1_h1_val == -32768
      - rs1_h0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c0]:SMALXDS t5, t6, t4
      [0x800008c4]:sw t5, 384(gp)
 -- Signature Address: 0x80002458 Data: 0xFDFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalxds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -1025
      - rs2_h0_val == -1
      - rs1_h1_val == -16385
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d4]:SMALXDS t5, t6, t4
      [0x800008d8]:sw t5, 392(gp)
 -- Signature Address: 0x80002460 Data: 0xFDFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalxds
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 8192
      - rs1_h1_val == 8192
      - rs1_h0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalxds', 'rs1 : x4', 'rs2 : x4', 'rd : x4', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -1', 'rs2_h0_val == 32767', 'rs1_h1_val == -1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000010c]:SMALXDS tp, tp, tp
	-[0x80000110]:sw tp, 0(ra)
Current Store : [0x80000114] : sw t0, 4(ra) -- Store: [0x80002214]:0x800000F8




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x26', 'rs1 == rs2 != rd', 'rs2_h1_val == -32768', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000128]:SMALXDS s10, t6, t6
	-[0x8000012c]:sw s10, 8(ra)
Current Store : [0x80000130] : sw s11, 12(ra) -- Store: [0x8000221c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x2', 'rs2 : x29', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 2048', 'rs2_h0_val == -513', 'rs1_h1_val == -3', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000140]:SMALXDS t1, sp, t4
	-[0x80000144]:sw t1, 16(ra)
Current Store : [0x80000148] : sw t2, 20(ra) -- Store: [0x80002224]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 128', 'rs2_h0_val == -1025', 'rs1_h1_val == 2', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000015c]:SMALXDS t3, a7, t3
	-[0x80000160]:sw t3, 24(ra)
Current Store : [0x80000164] : sw t4, 28(ra) -- Store: [0x8000222c]:0x0800FDFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x30', 'rs1 == rd != rs2', 'rs2_h1_val == 8', 'rs2_h0_val == -8193', 'rs1_h1_val == 16384', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000178]:SMALXDS t5, t5, s4
	-[0x8000017c]:sw t5, 32(ra)
Current Store : [0x80000180] : sw t6, 36(ra) -- Store: [0x80002234]:0x80000009




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x22', 'rs2_h1_val == 256', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000194]:SMALXDS s6, a5, a7
	-[0x80000198]:sw s6, 40(ra)
Current Store : [0x8000019c] : sw s7, 44(ra) -- Store: [0x8000223c]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x24', 'rs2 : x16', 'rd : x10', 'rs2_h1_val == -21846', 'rs1_h1_val == -513', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800001b0]:SMALXDS a0, s8, a6
	-[0x800001b4]:sw a0, 48(ra)
Current Store : [0x800001b8] : sw a1, 52(ra) -- Store: [0x80002244]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x18', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800001c8]:SMALXDS s2, a4, a1
	-[0x800001cc]:sw s2, 56(ra)
Current Store : [0x800001d0] : sw s3, 60(ra) -- Store: [0x8000224c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x9', 'rs2 : x22', 'rd : x20', 'rs2_h1_val == 32767', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800001e4]:SMALXDS s4, s1, s6
	-[0x800001e8]:sw s4, 64(ra)
Current Store : [0x800001ec] : sw s5, 68(ra) -- Store: [0x80002254]:0xDBEADFED




Last Coverpoint : ['rs1 : x5', 'rs2 : x27', 'rd : x14', 'rs2_h1_val == -16385', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000200]:SMALXDS a4, t0, s11
	-[0x80000204]:sw a4, 72(ra)
Current Store : [0x80000208] : sw a5, 76(ra) -- Store: [0x8000225c]:0xC0000009




Last Coverpoint : ['rs1 : x27', 'rs2 : x5', 'rd : x8', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -8193', 'rs2_h0_val == -16385', 'rs1_h1_val == 21845', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000021c]:SMALXDS fp, s11, t0
	-[0x80000220]:sw fp, 80(ra)
Current Store : [0x80000224] : sw s1, 84(ra) -- Store: [0x80002264]:0x80000040




Last Coverpoint : ['rs1 : x25', 'rs2 : x24', 'rd : x12', 'rs2_h1_val == -4097', 'rs2_h0_val == -33', 'rs1_h1_val == -1025', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000023c]:SMALXDS a2, s9, s8
	-[0x80000240]:sw a2, 0(ra)
Current Store : [0x80000244] : sw a3, 4(ra) -- Store: [0x8000226c]:0xEADFEEDB




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rd : x24', 'rs2_h1_val == -2049', 'rs1_h1_val == -2', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000258]:SMALXDS s8, s10, s3
	-[0x8000025c]:sw s8, 8(ra)
Current Store : [0x80000260] : sw s9, 12(ra) -- Store: [0x80002274]:0xFBFF1000




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rd : x2', 'rs2_h1_val == -1025', 'rs2_h0_val == -1', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000274]:SMALXDS sp, zero, s2
	-[0x80000278]:sw sp, 16(ra)
Current Store : [0x8000027c] : sw gp, 20(ra) -- Store: [0x8000227c]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x28', 'rs2 : x30', 'rd : x16', 'rs2_h1_val == -513', 'rs2_h0_val == -17', 'rs1_h1_val == -33', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000290]:SMALXDS a6, t3, t5
	-[0x80000294]:sw a6, 24(ra)
Current Store : [0x80000298] : sw a7, 28(ra) -- Store: [0x80002284]:0x01000080




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rs2_h1_val == -257', 'rs1_h1_val == 512', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800002ac]:SMALXDS a4, a2, a3
	-[0x800002b0]:sw a4, 32(ra)
Current Store : [0x800002b4] : sw a5, 36(ra) -- Store: [0x8000228c]:0xC0000009




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rs2_h1_val == -129', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800002c8]:SMALXDS a6, s6, a0
	-[0x800002cc]:sw a6, 40(ra)
Current Store : [0x800002d0] : sw a7, 44(ra) -- Store: [0x80002294]:0x01000080




Last Coverpoint : ['rs1 : x23', 'rs2 : x9', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x800002e4]:SMALXDS s2, s7, s1
	-[0x800002e8]:sw s2, 48(ra)
Current Store : [0x800002ec] : sw s3, 52(ra) -- Store: [0x8000229c]:0xF7FF0003




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rs2_h1_val == -33', 'rs2_h0_val == 512', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000300]:SMALXDS a0, s3, fp
	-[0x80000304]:sw a0, 56(ra)
Current Store : [0x80000308] : sw a1, 60(ra) -- Store: [0x800022a4]:0x55550006




Last Coverpoint : ['rs1 : x20', 'rs2 : x3', 'rs1_h0_val == -32768', 'rs2_h1_val == -17', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000318]:SMALXDS fp, s4, gp
	-[0x8000031c]:sw fp, 64(ra)
Current Store : [0x80000320] : sw s1, 68(ra) -- Store: [0x800022ac]:0xFFBFBFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x14', 'rs2_h1_val == -9', 'rs2_h0_val == -5', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000334]:SMALXDS s2, gp, a4
	-[0x80000338]:sw s2, 72(ra)
Current Store : [0x8000033c] : sw s3, 76(ra) -- Store: [0x800022b4]:0x00070100




Last Coverpoint : ['rs1 : x10', 'rs2 : x21', 'rs2_h1_val == -5', 'rs2_h0_val == 32', 'rs1_h1_val == 8192', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000350]:SMALXDS tp, a0, s5
	-[0x80000354]:sw tp, 80(ra)
Current Store : [0x80000358] : sw t0, 84(ra) -- Store: [0x800022bc]:0xDFFFC000




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rs2_h1_val == -3', 'rs2_h0_val == 256', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x8000036c]:SMALXDS sp, a1, s10
	-[0x80000370]:sw sp, 88(ra)
Current Store : [0x80000374] : sw gp, 92(ra) -- Store: [0x800022c4]:0xFBFFFFFB




Last Coverpoint : ['rs1 : x8', 'rs2 : x15', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x80000388]:SMALXDS a6, fp, a5
	-[0x8000038c]:sw a6, 96(ra)
Current Store : [0x80000390] : sw a7, 100(ra) -- Store: [0x800022cc]:0x01000080




Last Coverpoint : ['rs1 : x13', 'rs2 : x7', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x800003a4]:SMALXDS a2, a3, t2
	-[0x800003a8]:sw a2, 104(ra)
Current Store : [0x800003ac] : sw a3, 108(ra) -- Store: [0x800022d4]:0xFFFF0009




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x800003c4]:SMALXDS t1, t4, zero
	-[0x800003c8]:sw t1, 0(gp)
Current Store : [0x800003cc] : sw t2, 4(gp) -- Store: [0x800022dc]:0x40007FFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x1', 'rs2_h1_val == 4096', 'rs2_h0_val == 21845', 'rs1_h1_val == -5', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800003e0]:SMALXDS s4, t1, ra
	-[0x800003e4]:sw s4, 8(gp)
Current Store : [0x800003e8] : sw s5, 12(gp) -- Store: [0x800022e4]:0xFFFB0020




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rs2_h1_val == 1024', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800003fc]:SMALXDS a4, s2, t1
	-[0x80000400]:sw a4, 16(gp)
Current Store : [0x80000404] : sw a5, 20(gp) -- Store: [0x800022ec]:0xFFFEBFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rs2_h1_val == 512', 'rs2_h0_val == 1', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000418]:SMALXDS t3, a6, s9
	-[0x8000041c]:sw t3, 24(gp)
Current Store : [0x80000420] : sw t4, 28(gp) -- Store: [0x800022f4]:0x20000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rs2_h1_val == 64', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000434]:SMALXDS s10, ra, s7
	-[0x80000438]:sw s10, 32(gp)
Current Store : [0x8000043c] : sw s11, 36(gp) -- Store: [0x800022fc]:0x55550800




Last Coverpoint : ['rs1 : x21', 'rs2 : x2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000450]:SMALXDS a2, s5, sp
	-[0x80000454]:sw a2, 40(gp)
Current Store : [0x80000458] : sw a3, 44(gp) -- Store: [0x80002304]:0xFFFF0009




Last Coverpoint : ['rs1 : x7', 'rs2 : x12', 'rs1_h1_val == 4096', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000046c]:SMALXDS fp, t2, a2
	-[0x80000470]:sw fp, 48(gp)
Current Store : [0x80000474] : sw s1, 52(gp) -- Store: [0x8000230c]:0xFFBFBFFF




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000488]:SMALXDS t5, t6, t4
	-[0x8000048c]:sw t5, 56(gp)
Current Store : [0x80000490] : sw t6, 60(gp) -- Store: [0x80002314]:0x0200FFEF




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800004a0]:SMALXDS t5, t6, t4
	-[0x800004a4]:sw t5, 64(gp)
Current Store : [0x800004a8] : sw t6, 68(gp) -- Store: [0x8000231c]:0xFF7FFFFE




Last Coverpoint : ['rs1_h1_val == -21846', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800004b8]:SMALXDS t5, t6, t4
	-[0x800004bc]:sw t5, 72(gp)
Current Store : [0x800004c0] : sw t6, 76(gp) -- Store: [0x80002324]:0xAAAA4001




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h1_val == 2048', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800004d4]:SMALXDS t5, t6, t4
	-[0x800004d8]:sw t5, 80(gp)
Current Store : [0x800004dc] : sw t6, 84(gp) -- Store: [0x8000232c]:0x08000400




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800004f0]:SMALXDS t5, t6, t4
	-[0x800004f4]:sw t5, 88(gp)
Current Store : [0x800004f8] : sw t6, 92(gp) -- Store: [0x80002334]:0x00030200




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000508]:SMALXDS t5, t6, t4
	-[0x8000050c]:sw t5, 96(gp)
Current Store : [0x80000510] : sw t6, 100(gp) -- Store: [0x8000233c]:0xFFFC0080




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == 16', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000524]:SMALXDS t5, t6, t4
	-[0x80000528]:sw t5, 104(gp)
Current Store : [0x8000052c] : sw t6, 108(gp) -- Store: [0x80002344]:0x00090020




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000540]:SMALXDS t5, t6, t4
	-[0x80000544]:sw t5, 112(gp)
Current Store : [0x80000548] : sw t6, 116(gp) -- Store: [0x8000234c]:0x7FFF000F




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000055c]:SMALXDS t5, t6, t4
	-[0x80000560]:sw t5, 120(gp)
Current Store : [0x80000564] : sw t6, 124(gp) -- Store: [0x80002354]:0xFFFB0008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000578]:SMALXDS t5, t6, t4
	-[0x8000057c]:sw t5, 128(gp)
Current Store : [0x80000580] : sw t6, 132(gp) -- Store: [0x8000235c]:0xF7FF0004




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000590]:SMALXDS t5, t6, t4
	-[0x80000594]:sw t5, 136(gp)
Current Store : [0x80000598] : sw t6, 140(gp) -- Store: [0x80002364]:0x20000002




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005ac]:SMALXDS t5, t6, t4
	-[0x800005b0]:sw t5, 144(gp)
Current Store : [0x800005b4] : sw t6, 148(gp) -- Store: [0x8000236c]:0x02000001




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800005c8]:SMALXDS t5, t6, t4
	-[0x800005cc]:sw t5, 152(gp)
Current Store : [0x800005d0] : sw t6, 156(gp) -- Store: [0x80002374]:0x1000FFFF




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == -4097', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800005e4]:SMALXDS t5, t6, t4
	-[0x800005e8]:sw t5, 160(gp)
Current Store : [0x800005ec] : sw t6, 164(gp) -- Store: [0x8000237c]:0xEFFFBFFF




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 4', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000600]:SMALXDS t5, t6, t4
	-[0x80000604]:sw t5, 168(gp)
Current Store : [0x80000608] : sw t6, 172(gp) -- Store: [0x80002384]:0x00200004




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x8000061c]:SMALXDS t5, t6, t4
	-[0x80000620]:sw t5, 176(gp)
Current Store : [0x80000624] : sw t6, 180(gp) -- Store: [0x8000238c]:0xFFF9FFDF




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000634]:SMALXDS t5, t6, t4
	-[0x80000638]:sw t5, 184(gp)
Current Store : [0x8000063c] : sw t6, 188(gp) -- Store: [0x80002394]:0xFFDF3FFF




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000648]:SMALXDS t5, t6, t4
	-[0x8000064c]:sw t5, 192(gp)
Current Store : [0x80000650] : sw t6, 196(gp) -- Store: [0x8000239c]:0xFFF64000




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -8193', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000660]:SMALXDS t5, t6, t4
	-[0x80000664]:sw t5, 200(gp)
Current Store : [0x80000668] : sw t6, 204(gp) -- Store: [0x800023a4]:0xDFFFF7FF




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000674]:SMALXDS t5, t6, t4
	-[0x80000678]:sw t5, 208(gp)
Current Store : [0x8000067c] : sw t6, 212(gp) -- Store: [0x800023ac]:0x0020C000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000690]:SMALXDS t5, t6, t4
	-[0x80000694]:sw t5, 216(gp)
Current Store : [0x80000698] : sw t6, 220(gp) -- Store: [0x800023b4]:0xBFFF0009




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800006a8]:SMALXDS t5, t6, t4
	-[0x800006ac]:sw t5, 224(gp)
Current Store : [0x800006b0] : sw t6, 228(gp) -- Store: [0x800023bc]:0xFFF61000




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800006c4]:SMALXDS t5, t6, t4
	-[0x800006c8]:sw t5, 232(gp)
Current Store : [0x800006cc] : sw t6, 236(gp) -- Store: [0x800023c4]:0x04000080




Last Coverpoint : ['opcode : smalxds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 0', 'rs1_h1_val == 1024', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800006d8]:SMALXDS t5, t6, t4
	-[0x800006dc]:sw t5, 240(gp)
Current Store : [0x800006e0] : sw t6, 244(gp) -- Store: [0x800023cc]:0x04002000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800006f4]:SMALXDS t5, t6, t4
	-[0x800006f8]:sw t5, 248(gp)
Current Store : [0x800006fc] : sw t6, 252(gp) -- Store: [0x800023d4]:0xFFFEFFDF




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000710]:SMALXDS t5, t6, t4
	-[0x80000714]:sw t5, 256(gp)
Current Store : [0x80000718] : sw t6, 260(gp) -- Store: [0x800023dc]:0xFFBFDFFF




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000728]:SMALXDS t5, t6, t4
	-[0x8000072c]:sw t5, 264(gp)
Current Store : [0x80000730] : sw t6, 268(gp) -- Store: [0x800023e4]:0xFFEF4000




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000744]:SMALXDS t5, t6, t4
	-[0x80000748]:sw t5, 272(gp)
Current Store : [0x8000074c] : sw t6, 276(gp) -- Store: [0x800023ec]:0x3FFF5555




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000760]:SMALXDS t5, t6, t4
	-[0x80000764]:sw t5, 280(gp)
Current Store : [0x80000768] : sw t6, 284(gp) -- Store: [0x800023f4]:0x1000FF7F




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x8000077c]:SMALXDS t5, t6, t4
	-[0x80000780]:sw t5, 288(gp)
Current Store : [0x80000784] : sw t6, 292(gp) -- Store: [0x800023fc]:0xAAAAFFF9




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000794]:SMALXDS t5, t6, t4
	-[0x80000798]:sw t5, 296(gp)
Current Store : [0x8000079c] : sw t6, 300(gp) -- Store: [0x80002404]:0x00808000




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800007b0]:SMALXDS t5, t6, t4
	-[0x800007b4]:sw t5, 304(gp)
Current Store : [0x800007b8] : sw t6, 308(gp) -- Store: [0x8000240c]:0x00400006




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800007cc]:SMALXDS t5, t6, t4
	-[0x800007d0]:sw t5, 312(gp)
Current Store : [0x800007d4] : sw t6, 316(gp) -- Store: [0x80002414]:0x00100800




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800007e8]:SMALXDS t5, t6, t4
	-[0x800007ec]:sw t5, 320(gp)
Current Store : [0x800007f0] : sw t6, 324(gp) -- Store: [0x8000241c]:0x0008FEFF




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000804]:SMALXDS t5, t6, t4
	-[0x80000808]:sw t5, 328(gp)
Current Store : [0x8000080c] : sw t6, 332(gp) -- Store: [0x80002424]:0x0004FFFA




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000820]:SMALXDS t5, t6, t4
	-[0x80000824]:sw t5, 336(gp)
Current Store : [0x80000828] : sw t6, 340(gp) -- Store: [0x8000242c]:0x0001FFFB




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000083c]:SMALXDS t5, t6, t4
	-[0x80000840]:sw t5, 344(gp)
Current Store : [0x80000844] : sw t6, 348(gp) -- Store: [0x80002434]:0xFDFF0001




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000858]:SMALXDS t5, t6, t4
	-[0x8000085c]:sw t5, 352(gp)
Current Store : [0x80000860] : sw t6, 356(gp) -- Store: [0x8000243c]:0x7FFF7FFF




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000870]:SMALXDS t5, t6, t4
	-[0x80000874]:sw t5, 360(gp)
Current Store : [0x80000878] : sw t6, 364(gp) -- Store: [0x80002444]:0xFEFFF7FF




Last Coverpoint : ['opcode : smalxds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -1025', 'rs2_h0_val == -2', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x8000088c]:SMALXDS t5, t6, t4
	-[0x80000890]:sw t5, 368(gp)
Current Store : [0x80000894] : sw t6, 372(gp) -- Store: [0x8000244c]:0x0000FFFA




Last Coverpoint : ['opcode : smalxds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -32768', 'rs1_h1_val == -32768', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800008a8]:SMALXDS t5, t6, t4
	-[0x800008ac]:sw t5, 376(gp)
Current Store : [0x800008b0] : sw t6, 380(gp) -- Store: [0x80002454]:0x8000DFFF




Last Coverpoint : ['opcode : smalxds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -1025', 'rs2_h0_val == -1', 'rs1_h1_val == -16385', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800008c0]:SMALXDS t5, t6, t4
	-[0x800008c4]:sw t5, 384(gp)
Current Store : [0x800008c8] : sw t6, 388(gp) -- Store: [0x8000245c]:0xBFFF2000




Last Coverpoint : ['opcode : smalxds', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8192', 'rs1_h1_val == 8192', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800008d4]:SMALXDS t5, t6, t4
	-[0x800008d8]:sw t5, 392(gp)
Current Store : [0x800008dc] : sw t6, 396(gp) -- Store: [0x80002464]:0x20000000





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

|s.no|        signature         |                                                                                                                                                                coverpoints                                                                                                                                                                |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFF7FFF|- opcode : smalxds<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1<br> - rs2_h0_val == 32767<br> - rs1_h1_val == -1<br> - rs1_h0_val == 32767<br>  |[0x8000010c]:SMALXDS tp, tp, tp<br> [0x80000110]:sw tp, 0(ra)<br>    |
|   2|[0x80002218]<br>0x76DF56FF|- rs1 : x31<br> - rs2 : x31<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                |[0x80000128]:SMALXDS s10, t6, t6<br> [0x8000012c]:sw s10, 8(ra)<br>  |
|   3|[0x80002220]<br>0x80002000|- rs1 : x2<br> - rs2 : x29<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -513<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8192<br> |[0x80000140]:SMALXDS t1, sp, t4<br> [0x80000144]:sw t1, 16(ra)<br>   |
|   4|[0x80002228]<br>0x0080FBFF|- rs1 : x17<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 128<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 2<br> - rs1_h0_val == -4097<br>                                                                                    |[0x8000015c]:SMALXDS t3, a7, t3<br> [0x80000160]:sw t3, 24(ra)<br>   |
|   5|[0x80002230]<br>0x4000DFFF|- rs1 : x30<br> - rs2 : x20<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_h1_val == 8<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -8193<br>                                                                                                                                                                  |[0x80000178]:SMALXDS t5, t5, s4<br> [0x8000017c]:sw t5, 32(ra)<br>   |
|   6|[0x80002238]<br>0x6DF56FF7|- rs1 : x15<br> - rs2 : x17<br> - rd : x22<br> - rs2_h1_val == 256<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                             |[0x80000194]:SMALXDS s6, a5, a7<br> [0x80000198]:sw s6, 40(ra)<br>   |
|   7|[0x80002240]<br>0x56FF76DF|- rs1 : x24<br> - rs2 : x16<br> - rd : x10<br> - rs2_h1_val == -21846<br> - rs1_h1_val == -513<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                |[0x800001b0]:SMALXDS a0, s8, a6<br> [0x800001b4]:sw a0, 48(ra)<br>   |
|   8|[0x80002248]<br>0xDF56FF76|- rs1 : x14<br> - rs2 : x11<br> - rd : x18<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                   |[0x800001c8]:SMALXDS s2, a4, a1<br> [0x800001cc]:sw s2, 56(ra)<br>   |
|   9|[0x80002250]<br>0x0008DFFF|- rs1 : x9<br> - rs2 : x22<br> - rd : x20<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                             |[0x800001e4]:SMALXDS s4, s1, s6<br> [0x800001e8]:sw s4, 64(ra)<br>   |
|  10|[0x80002258]<br>0x0100C000|- rs1 : x5<br> - rs2 : x27<br> - rd : x14<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -9<br>                                                                                                                                                                                                                                            |[0x80000200]:SMALXDS a4, t0, s11<br> [0x80000204]:sw a4, 72(ra)<br>  |
|  11|[0x80002260]<br>0x5BFDDB7D|- rs1 : x27<br> - rs2 : x5<br> - rd : x8<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 2048<br>                                                                                                                                               |[0x8000021c]:SMALXDS fp, s11, t0<br> [0x80000220]:sw fp, 80(ra)<br>  |
|  12|[0x80002268]<br>0xD5BFDDB7|- rs1 : x25<br> - rs2 : x24<br> - rd : x12<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -33<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                        |[0x8000023c]:SMALXDS a2, s9, s8<br> [0x80000240]:sw a2, 0(ra)<br>    |
|  13|[0x80002270]<br>0xEFFFFFDF|- rs1 : x26<br> - rs2 : x19<br> - rd : x24<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -2<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                 |[0x80000258]:SMALXDS s8, s10, s3<br> [0x8000025c]:sw s8, 8(ra)<br>   |
|  14|[0x80002278]<br>0xFFFD2000|- rs1 : x0<br> - rs2 : x18<br> - rd : x2<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -1<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                  |[0x80000274]:SMALXDS sp, zero, s2<br> [0x80000278]:sw sp, 16(ra)<br> |
|  15|[0x80002280]<br>0xAAAAFFFA|- rs1 : x28<br> - rs2 : x30<br> - rd : x16<br> - rs2_h1_val == -513<br> - rs2_h0_val == -17<br> - rs1_h1_val == -33<br> - rs1_h0_val == -3<br>                                                                                                                                                                                             |[0x80000290]:SMALXDS a6, t3, t5<br> [0x80000294]:sw a6, 24(ra)<br>   |
|  16|[0x80002288]<br>0x0100C000|- rs1 : x12<br> - rs2 : x13<br> - rs2_h1_val == -257<br> - rs1_h1_val == 512<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                  |[0x800002ac]:SMALXDS a4, a2, a3<br> [0x800002b0]:sw a4, 32(ra)<br>   |
|  17|[0x80002290]<br>0xAAAAFFFA|- rs1 : x22<br> - rs2 : x10<br> - rs2_h1_val == -129<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                         |[0x800002c8]:SMALXDS a6, s6, a0<br> [0x800002cc]:sw a6, 40(ra)<br>   |
|  18|[0x80002298]<br>0xFBFFFFFF|- rs1 : x23<br> - rs2 : x9<br> - rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                     |[0x800002e4]:SMALXDS s2, s7, s1<br> [0x800002e8]:sw s2, 48(ra)<br>   |
|  19|[0x800022a0]<br>0xFF7FFFFC|- rs1 : x19<br> - rs2 : x8<br> - rs2_h1_val == -33<br> - rs2_h0_val == 512<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                     |[0x80000300]:SMALXDS a0, s3, fp<br> [0x80000304]:sw a0, 56(ra)<br>   |
|  20|[0x800022a8]<br>0xFFDF0200|- rs1 : x20<br> - rs2 : x3<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -17<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                |[0x80000318]:SMALXDS fp, s4, gp<br> [0x8000031c]:sw fp, 64(ra)<br>   |
|  21|[0x800022b0]<br>0xFBFFFFFF|- rs1 : x3<br> - rs2 : x14<br> - rs2_h1_val == -9<br> - rs2_h0_val == -5<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                        |[0x80000334]:SMALXDS s2, gp, a4<br> [0x80000338]:sw s2, 72(ra)<br>   |
|  22|[0x800022b8]<br>0xFFFF7FFF|- rs1 : x10<br> - rs2 : x21<br> - rs2_h1_val == -5<br> - rs2_h0_val == 32<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                           |[0x80000350]:SMALXDS tp, a0, s5<br> [0x80000354]:sw tp, 80(ra)<br>   |
|  23|[0x800022c0]<br>0xFFFD2000|- rs1 : x11<br> - rs2 : x26<br> - rs2_h1_val == -3<br> - rs2_h0_val == 256<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                    |[0x8000036c]:SMALXDS sp, a1, s10<br> [0x80000370]:sw sp, 88(ra)<br>  |
|  24|[0x800022c8]<br>0xAAAAFFFA|- rs1 : x8<br> - rs2 : x15<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                      |[0x80000388]:SMALXDS a6, fp, a5<br> [0x8000038c]:sw a6, 96(ra)<br>   |
|  25|[0x800022d0]<br>0x0200FDFF|- rs1 : x13<br> - rs2 : x7<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                   |[0x800003a4]:SMALXDS a2, a3, t2<br> [0x800003a8]:sw a2, 104(ra)<br>  |
|  26|[0x800022d8]<br>0x80002000|- rs1 : x29<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                                                                 |[0x800003c4]:SMALXDS t1, t4, zero<br> [0x800003c8]:sw t1, 0(gp)<br>  |
|  27|[0x800022e0]<br>0xF7FF8000|- rs1 : x6<br> - rs2 : x1<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -5<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                             |[0x800003e0]:SMALXDS s4, t1, ra<br> [0x800003e4]:sw s4, 8(gp)<br>    |
|  28|[0x800022e8]<br>0xFFF7FFFB|- rs1 : x18<br> - rs2 : x6<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                           |[0x800003fc]:SMALXDS a4, s2, t1<br> [0x80000400]:sw a4, 16(gp)<br>   |
|  29|[0x800022f0]<br>0xFFDFFFFD|- rs1 : x16<br> - rs2 : x25<br> - rs2_h1_val == 512<br> - rs2_h0_val == 1<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                       |[0x80000418]:SMALXDS t3, a6, s9<br> [0x8000041c]:sw t3, 24(gp)<br>   |
|  30|[0x800022f8]<br>0xFFFD0100|- rs1 : x1<br> - rs2 : x23<br> - rs2_h1_val == 64<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                              |[0x80000434]:SMALXDS s10, ra, s7<br> [0x80000438]:sw s10, 32(gp)<br> |
|  31|[0x80002300]<br>0x0200FDFF|- rs1 : x21<br> - rs2 : x2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                    |[0x80000450]:SMALXDS a2, s5, sp<br> [0x80000454]:sw a2, 40(gp)<br>   |
|  32|[0x80002308]<br>0xFFFD0005|- rs1 : x7<br> - rs2 : x12<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                            |[0x8000046c]:SMALXDS fp, t2, a2<br> [0x80000470]:sw fp, 48(gp)<br>   |
|  33|[0x80002310]<br>0xFDFFFFEF|- rs2_h0_val == -129<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                           |[0x80000488]:SMALXDS t5, t6, t4<br> [0x8000048c]:sw t5, 56(gp)<br>   |
|  34|[0x80002318]<br>0xFDFFFFEF|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                     |[0x800004a0]:SMALXDS t5, t6, t4<br> [0x800004a4]:sw t5, 64(gp)<br>   |
|  35|[0x80002320]<br>0xFDFFFFEF|- rs1_h1_val == -21846<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                       |[0x800004b8]:SMALXDS t5, t6, t4<br> [0x800004bc]:sw t5, 72(gp)<br>   |
|  36|[0x80002328]<br>0xFDFFFFEF|- rs2_h0_val == -4097<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                |[0x800004d4]:SMALXDS t5, t6, t4<br> [0x800004d8]:sw t5, 80(gp)<br>   |
|  37|[0x80002330]<br>0xFDFFFFEF|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                    |[0x800004f0]:SMALXDS t5, t6, t4<br> [0x800004f4]:sw t5, 88(gp)<br>   |
|  38|[0x80002338]<br>0xFDFFFFEF|- rs2_h0_val == 8<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                              |[0x80000508]:SMALXDS t5, t6, t4<br> [0x8000050c]:sw t5, 96(gp)<br>   |
|  39|[0x80002340]<br>0xFDFFFFEF|- rs2_h1_val == 16<br> - rs2_h0_val == 16<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                       |[0x80000524]:SMALXDS t5, t6, t4<br> [0x80000528]:sw t5, 104(gp)<br>  |
|  40|[0x80002348]<br>0xFDFFFFEF|- rs2_h0_val == -21846<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                          |[0x80000540]:SMALXDS t5, t6, t4<br> [0x80000544]:sw t5, 112(gp)<br>  |
|  41|[0x80002350]<br>0xFDFFFFEF|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                      |[0x8000055c]:SMALXDS t5, t6, t4<br> [0x80000560]:sw t5, 120(gp)<br>  |
|  42|[0x80002358]<br>0xFDFFFFEF|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000578]:SMALXDS t5, t6, t4<br> [0x8000057c]:sw t5, 128(gp)<br>  |
|  43|[0x80002360]<br>0xFDFFFFEF|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x80000590]:SMALXDS t5, t6, t4<br> [0x80000594]:sw t5, 136(gp)<br>  |
|  44|[0x80002368]<br>0xFDFFFFEF|- rs2_h0_val == -2<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                               |[0x800005ac]:SMALXDS t5, t6, t4<br> [0x800005b0]:sw t5, 144(gp)<br>  |
|  45|[0x80002370]<br>0xFDFFFFEF|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                     |[0x800005c8]:SMALXDS t5, t6, t4<br> [0x800005cc]:sw t5, 152(gp)<br>  |
|  46|[0x80002378]<br>0xFDFFFFEF|- rs2_h1_val == 32<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                |[0x800005e4]:SMALXDS t5, t6, t4<br> [0x800005e8]:sw t5, 160(gp)<br>  |
|  47|[0x80002380]<br>0xFDFFFFEF|- rs2_h1_val == 4<br> - rs2_h0_val == 4<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                         |[0x80000600]:SMALXDS t5, t6, t4<br> [0x80000604]:sw t5, 168(gp)<br>  |
|  48|[0x80002388]<br>0xFDFFFFEF|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                     |[0x8000061c]:SMALXDS t5, t6, t4<br> [0x80000620]:sw t5, 176(gp)<br>  |
|  49|[0x80002390]<br>0xFDFFFFEF|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                 |[0x80000634]:SMALXDS t5, t6, t4<br> [0x80000638]:sw t5, 184(gp)<br>  |
|  50|[0x80002398]<br>0xFDFFFFEF|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                  |[0x80000648]:SMALXDS t5, t6, t4<br> [0x8000064c]:sw t5, 192(gp)<br>  |
|  51|[0x800023a0]<br>0xFDFFFFEF|- rs2_h0_val == 8192<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                               |[0x80000660]:SMALXDS t5, t6, t4<br> [0x80000664]:sw t5, 200(gp)<br>  |
|  52|[0x800023a8]<br>0xFDFFFFEF|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x80000674]:SMALXDS t5, t6, t4<br> [0x80000678]:sw t5, 208(gp)<br>  |
|  53|[0x800023b0]<br>0xFDFFFFEF|- rs2_h0_val == 2048<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                        |[0x80000690]:SMALXDS t5, t6, t4<br> [0x80000694]:sw t5, 216(gp)<br>  |
|  54|[0x800023b8]<br>0xFDFFFFEF|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x800006a8]:SMALXDS t5, t6, t4<br> [0x800006ac]:sw t5, 224(gp)<br>  |
|  55|[0x800023c0]<br>0xFDFFFFEF|- rs2_h0_val == 2<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                             |[0x800006c4]:SMALXDS t5, t6, t4<br> [0x800006c8]:sw t5, 232(gp)<br>  |
|  56|[0x800023d0]<br>0xFDFFFFEF|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                  |[0x800006f4]:SMALXDS t5, t6, t4<br> [0x800006f8]:sw t5, 248(gp)<br>  |
|  57|[0x800023d8]<br>0xFDFFFFEF|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                    |[0x80000710]:SMALXDS t5, t6, t4<br> [0x80000714]:sw t5, 256(gp)<br>  |
|  58|[0x800023e0]<br>0xFDFFFFEF|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                    |[0x80000728]:SMALXDS t5, t6, t4<br> [0x8000072c]:sw t5, 264(gp)<br>  |
|  59|[0x800023e8]<br>0xFDFFFFEF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                  |[0x80000744]:SMALXDS t5, t6, t4<br> [0x80000748]:sw t5, 272(gp)<br>  |
|  60|[0x800023f0]<br>0xFDFFFFEF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x80000760]:SMALXDS t5, t6, t4<br> [0x80000764]:sw t5, 280(gp)<br>  |
|  61|[0x800023f8]<br>0xFDFFFFEF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x8000077c]:SMALXDS t5, t6, t4<br> [0x80000780]:sw t5, 288(gp)<br>  |
|  62|[0x80002400]<br>0xFDFFFFEF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x80000794]:SMALXDS t5, t6, t4<br> [0x80000798]:sw t5, 296(gp)<br>  |
|  63|[0x80002408]<br>0xFDFFFFEF|- rs2_h1_val == 8192<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                            |[0x800007b0]:SMALXDS t5, t6, t4<br> [0x800007b4]:sw t5, 304(gp)<br>  |
|  64|[0x80002410]<br>0xFDFFFFEF|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                     |[0x800007cc]:SMALXDS t5, t6, t4<br> [0x800007d0]:sw t5, 312(gp)<br>  |
|  65|[0x80002418]<br>0xFDFFFFEF|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                      |[0x800007e8]:SMALXDS t5, t6, t4<br> [0x800007ec]:sw t5, 320(gp)<br>  |
|  66|[0x80002420]<br>0xFDFFFFEF|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000804]:SMALXDS t5, t6, t4<br> [0x80000808]:sw t5, 328(gp)<br>  |
|  67|[0x80002428]<br>0xFDFFFFEF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000820]:SMALXDS t5, t6, t4<br> [0x80000824]:sw t5, 336(gp)<br>  |
|  68|[0x80002430]<br>0xFDFFFFEF|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                   |[0x8000083c]:SMALXDS t5, t6, t4<br> [0x80000840]:sw t5, 344(gp)<br>  |
|  69|[0x80002438]<br>0xFDFFFFEF|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                    |[0x80000858]:SMALXDS t5, t6, t4<br> [0x8000085c]:sw t5, 352(gp)<br>  |
|  70|[0x80002440]<br>0xFDFFFFEF|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                   |[0x80000870]:SMALXDS t5, t6, t4<br> [0x80000874]:sw t5, 360(gp)<br>  |
