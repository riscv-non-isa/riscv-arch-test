
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002460', '148 words')]      |
| COV_LABELS                | khmbt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/khmbt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 146      |
| STAT1                     | 69      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 73     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f0]:KHMBT t6, t5, t4
      [0x800004f4]:csrrs t5, vxsat, zero
      [0x800004f8]:sw t6, 112(gp)
 -- Signature Address: 0x80002310 Data: 0xFFFFFFDF
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs2_h0_val == 512
      - rs1_h1_val == 0
      - rs1_h0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000930]:KHMBT t6, t5, t4
      [0x80000934]:csrrs t5, vxsat, zero
      [0x80000938]:sw t6, 392(gp)
 -- Signature Address: 0x80002428 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs1_h1_val == 21845
      - rs1_h0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000968]:KHMBT t6, t5, t4
      [0x8000096c]:csrrs t5, vxsat, zero
      [0x80000970]:sw t6, 408(gp)
 -- Signature Address: 0x80002438 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -33
      - rs2_h0_val == -65
      - rs1_h1_val == -33
      - rs1_h0_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:KHMBT t6, t5, t4
      [0x800009a8]:csrrs t5, vxsat, zero
      [0x800009ac]:sw t6, 424(gp)
 -- Signature Address: 0x80002448 Data: 0xFFFFF555
 -- Redundant Coverpoints hit by the op
      - opcode : khmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -21846
      - rs2_h0_val == -1025
      - rs1_h0_val == 4096






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmbt', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs2_h0_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000114]:KHMBT a4, a4, a4
	-[0x80000118]:csrrs a4, vxsat, zero
	-[0x8000011c]:sw a4, 0(ra)
Current Store : [0x80000120] : sw a4, 4(ra) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x17', 'rd : x21', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -33', 'rs2_h0_val == -65', 'rs1_h1_val == -33', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000134]:KHMBT s5, a7, a7
	-[0x80000138]:csrrs a7, vxsat, zero
	-[0x8000013c]:sw s5, 8(ra)
Current Store : [0x80000140] : sw a7, 12(ra) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x16', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8', 'rs2_h0_val == -513', 'rs1_h1_val == -1025', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000154]:KHMBT a6, s4, sp
	-[0x80000158]:csrrs s4, vxsat, zero
	-[0x8000015c]:sw a6, 16(ra)
Current Store : [0x80000160] : sw s4, 20(ra) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x19', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -17', 'rs2_h0_val == -2', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000174]:KHMBT s3, s8, s3
	-[0x80000178]:csrrs s8, vxsat, zero
	-[0x8000017c]:sw s3, 24(ra)
Current Store : [0x80000180] : sw s8, 28(ra) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x23', 'rs1 == rd != rs2', 'rs2_h1_val == 16384', 'rs2_h0_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000194]:KHMBT s7, s7, t3
	-[0x80000198]:csrrs s7, vxsat, zero
	-[0x8000019c]:sw s7, 32(ra)
Current Store : [0x800001a0] : sw s7, 36(ra) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rd : x31', 'rs2_h1_val == 0', 'rs1_h1_val == -513', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800001b4]:KHMBT t6, t4, zero
	-[0x800001b8]:csrrs t4, vxsat, zero
	-[0x800001bc]:sw t6, 40(ra)
Current Store : [0x800001c0] : sw t4, 44(ra) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x25', 'rd : x26', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 512', 'rs2_h0_val == 512', 'rs1_h1_val == 256', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001d0]:KHMBT s10, sp, s9
	-[0x800001d4]:csrrs sp, vxsat, zero
	-[0x800001d8]:sw s10, 48(ra)
Current Store : [0x800001dc] : sw sp, 52(ra) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -1025', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800001ec]:KHMBT zero, t3, s4
	-[0x800001f0]:csrrs t3, vxsat, zero
	-[0x800001f4]:sw zero, 56(ra)
Current Store : [0x800001f8] : sw t3, 60(ra) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x22', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 128', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000020c]:KHMBT s6, fp, gp
	-[0x80000210]:csrrs fp, vxsat, zero
	-[0x80000214]:sw s6, 64(ra)
Current Store : [0x80000218] : sw fp, 68(ra) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x9', 'rd : x5', 'rs2_h1_val == 32767', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000022c]:KHMBT t0, s3, s1
	-[0x80000230]:csrrs s3, vxsat, zero
	-[0x80000234]:sw t0, 72(ra)
Current Store : [0x80000238] : sw s3, 76(ra) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x7', 'rd : x25', 'rs2_h1_val == -16385', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000024c]:KHMBT s9, a3, t2
	-[0x80000250]:csrrs a3, vxsat, zero
	-[0x80000254]:sw s9, 80(ra)
Current Store : [0x80000258] : sw a3, 84(ra) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x30', 'rs2_h1_val == -8193', 'rs2_h0_val == 2048', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000268]:KHMBT t5, gp, s7
	-[0x8000026c]:csrrs gp, vxsat, zero
	-[0x80000270]:sw t5, 88(ra)
Current Store : [0x80000274] : sw gp, 92(ra) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x31', 'rd : x18', 'rs2_h1_val == -4097', 'rs2_h0_val == -8193', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000288]:KHMBT s2, t1, t6
	-[0x8000028c]:csrrs t1, vxsat, zero
	-[0x80000290]:sw s2, 96(ra)
Current Store : [0x80000294] : sw t1, 100(ra) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x16', 'rd : x20', 'rs2_h1_val == -2049', 'rs2_h0_val == -9', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800002a4]:KHMBT s4, t0, a6
	-[0x800002a8]:csrrs t0, vxsat, zero
	-[0x800002ac]:sw s4, 104(ra)
Current Store : [0x800002b0] : sw t0, 108(ra) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x8', 'rs2_h1_val == -1025', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800002c4]:KHMBT fp, zero, t5
	-[0x800002c8]:csrrs zero, vxsat, zero
	-[0x800002cc]:sw fp, 112(ra)
Current Store : [0x800002d0] : sw zero, 116(ra) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x26', 'rd : x9', 'rs2_h1_val == -513', 'rs2_h0_val == -16385', 'rs1_h1_val == 2', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800002e4]:KHMBT s1, s5, s10
	-[0x800002e8]:csrrs s5, vxsat, zero
	-[0x800002ec]:sw s1, 120(ra)
Current Store : [0x800002f0] : sw s5, 124(ra) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x10', 'rd : x3', 'rs2_h1_val == -257', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000304]:KHMBT gp, a2, a0
	-[0x80000308]:csrrs a2, vxsat, zero
	-[0x8000030c]:sw gp, 128(ra)
Current Store : [0x80000310] : sw a2, 132(ra) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x28', 'rs2_h1_val == -129', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000324]:KHMBT t3, tp, s5
	-[0x80000328]:csrrs tp, vxsat, zero
	-[0x8000032c]:sw t3, 136(ra)
Current Store : [0x80000330] : sw tp, 140(ra) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x24', 'rd : x1', 'rs2_h1_val == -65', 'rs2_h0_val == 32767', 'rs1_h1_val == 4096', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000348]:KHMBT ra, t5, s8
	-[0x8000034c]:csrrs t5, vxsat, zero
	-[0x80000350]:sw ra, 0(gp)
Current Store : [0x80000354] : sw t5, 4(gp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rd : x17', 'rs2_h1_val == -9', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000364]:KHMBT a7, ra, a1
	-[0x80000368]:csrrs ra, vxsat, zero
	-[0x8000036c]:sw a7, 8(gp)
Current Store : [0x80000370] : sw ra, 12(gp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x12', 'rs2_h1_val == -5', 'rs2_h0_val == -1', 'rs1_h1_val == -9', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000384]:KHMBT a2, s6, s2
	-[0x80000388]:csrrs s6, vxsat, zero
	-[0x8000038c]:sw a2, 16(gp)
Current Store : [0x80000390] : sw s6, 20(gp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x13', 'rd : x24', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x800003a4]:KHMBT s8, s11, a3
	-[0x800003a8]:csrrs s11, vxsat, zero
	-[0x800003ac]:sw s8, 24(gp)
Current Store : [0x800003b0] : sw s11, 28(gp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x10', 'rs2_h1_val == -2', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800003c4]:KHMBT a0, s9, tp
	-[0x800003c8]:csrrs s9, vxsat, zero
	-[0x800003cc]:sw a0, 32(gp)
Current Store : [0x800003d0] : sw s9, 36(gp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x5', 'rd : x15', 'rs1_h0_val == -32768', 'rs2_h1_val == -32768', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800003e0]:KHMBT a5, a1, t0
	-[0x800003e4]:csrrs a1, vxsat, zero
	-[0x800003e8]:sw a5, 40(gp)
Current Store : [0x800003ec] : sw a1, 44(gp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x15', 'rd : x6', 'rs2_h1_val == 8192', 'rs2_h0_val == 16384', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800003f8]:KHMBT t1, t2, a5
	-[0x800003fc]:csrrs t2, vxsat, zero
	-[0x80000400]:sw t1, 48(gp)
Current Store : [0x80000404] : sw t2, 52(gp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x13', 'rs2_h1_val == 2048', 'rs2_h0_val == -4097', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000414]:KHMBT a3, s10, ra
	-[0x80000418]:csrrs s10, vxsat, zero
	-[0x8000041c]:sw a3, 56(gp)
Current Store : [0x80000420] : sw s10, 60(gp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x27', 'rd : x29', 'rs2_h1_val == 1024', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000434]:KHMBT t4, a0, s11
	-[0x80000438]:csrrs a0, vxsat, zero
	-[0x8000043c]:sw t4, 64(gp)
Current Store : [0x80000440] : sw a0, 68(gp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x7', 'rs2_h1_val == 256', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000454]:KHMBT t2, a6, fp
	-[0x80000458]:csrrs a6, vxsat, zero
	-[0x8000045c]:sw t2, 72(gp)
Current Store : [0x80000460] : sw a6, 76(gp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rd : x4', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000474]:KHMBT tp, s2, t1
	-[0x80000478]:csrrs s2, vxsat, zero
	-[0x8000047c]:sw tp, 80(gp)
Current Store : [0x80000480] : sw s2, 84(gp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x11', 'rs1_h1_val == 128', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000490]:KHMBT a1, a5, s6
	-[0x80000494]:csrrs a5, vxsat, zero
	-[0x80000498]:sw a1, 88(gp)
Current Store : [0x8000049c] : sw a5, 92(gp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x12', 'rd : x2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004b0]:KHMBT sp, t6, a2
	-[0x800004b4]:csrrs t6, vxsat, zero
	-[0x800004b8]:sw sp, 96(gp)
Current Store : [0x800004bc] : sw t6, 100(gp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x29', 'rd : x27', 'rs1_h1_val == 8192', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004d0]:KHMBT s11, s1, t4
	-[0x800004d4]:csrrs s1, vxsat, zero
	-[0x800004d8]:sw s11, 104(gp)
Current Store : [0x800004dc] : sw s1, 108(gp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['opcode : khmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == 512', 'rs1_h1_val == 0', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004f0]:KHMBT t6, t5, t4
	-[0x800004f4]:csrrs t5, vxsat, zero
	-[0x800004f8]:sw t6, 112(gp)
Current Store : [0x800004fc] : sw t5, 116(gp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000510]:KHMBT t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 120(gp)
Current Store : [0x8000051c] : sw t5, 124(gp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == 8', 'rs1_h1_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000530]:KHMBT t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 128(gp)
Current Store : [0x8000053c] : sw t5, 132(gp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x8000054c]:KHMBT t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 136(gp)
Current Store : [0x80000558] : sw t5, 140(gp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000568]:KHMBT t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 144(gp)
Current Store : [0x80000574] : sw t5, 148(gp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == -5', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000588]:KHMBT t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 152(gp)
Current Store : [0x80000594] : sw t5, 156(gp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005a8]:KHMBT t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 160(gp)
Current Store : [0x800005b4] : sw t5, 164(gp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005c8]:KHMBT t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 168(gp)
Current Store : [0x800005d4] : sw t5, 172(gp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005e8]:KHMBT t6, t5, t4
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 176(gp)
Current Store : [0x800005f4] : sw t5, 180(gp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000608]:KHMBT t6, t5, t4
	-[0x8000060c]:csrrs t5, vxsat, zero
	-[0x80000610]:sw t6, 184(gp)
Current Store : [0x80000614] : sw t5, 188(gp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000624]:KHMBT t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 192(gp)
Current Store : [0x80000630] : sw t5, 196(gp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000644]:KHMBT t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 200(gp)
Current Store : [0x80000650] : sw t5, 204(gp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000664]:KHMBT t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 208(gp)
Current Store : [0x80000670] : sw t5, 212(gp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000684]:KHMBT t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 216(gp)
Current Store : [0x80000690] : sw t5, 220(gp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800006a0]:KHMBT t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 224(gp)
Current Store : [0x800006ac] : sw t5, 228(gp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800006c0]:KHMBT t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 232(gp)
Current Store : [0x800006cc] : sw t5, 236(gp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006e0]:KHMBT t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 240(gp)
Current Store : [0x800006ec] : sw t5, 244(gp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000700]:KHMBT t6, t5, t4
	-[0x80000704]:csrrs t5, vxsat, zero
	-[0x80000708]:sw t6, 248(gp)
Current Store : [0x8000070c] : sw t5, 252(gp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000720]:KHMBT t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 256(gp)
Current Store : [0x8000072c] : sw t5, 260(gp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000740]:KHMBT t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 264(gp)
Current Store : [0x8000074c] : sw t5, 268(gp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000760]:KHMBT t6, t5, t4
	-[0x80000764]:csrrs t5, vxsat, zero
	-[0x80000768]:sw t6, 272(gp)
Current Store : [0x8000076c] : sw t5, 276(gp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == 32767', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000780]:KHMBT t6, t5, t4
	-[0x80000784]:csrrs t5, vxsat, zero
	-[0x80000788]:sw t6, 280(gp)
Current Store : [0x8000078c] : sw t5, 284(gp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800007a0]:KHMBT t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 288(gp)
Current Store : [0x800007ac] : sw t5, 292(gp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800007c0]:KHMBT t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 296(gp)
Current Store : [0x800007cc] : sw t5, 300(gp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800007e0]:KHMBT t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 304(gp)
Current Store : [0x800007ec] : sw t5, 308(gp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800007fc]:KHMBT t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 312(gp)
Current Store : [0x80000808] : sw t5, 316(gp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x8000081c]:KHMBT t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 320(gp)
Current Store : [0x80000828] : sw t5, 324(gp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000083c]:KHMBT t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 328(gp)
Current Store : [0x80000848] : sw t5, 332(gp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000085c]:KHMBT t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 336(gp)
Current Store : [0x80000868] : sw t5, 340(gp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000878]:KHMBT t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 344(gp)
Current Store : [0x80000884] : sw t5, 348(gp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000898]:KHMBT t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 352(gp)
Current Store : [0x800008a4] : sw t5, 356(gp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x800008b8]:KHMBT t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 360(gp)
Current Store : [0x800008c4] : sw t5, 364(gp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800008d8]:KHMBT t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 368(gp)
Current Store : [0x800008e4] : sw t5, 372(gp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800008f4]:KHMBT t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 376(gp)
Current Store : [0x80000900] : sw t5, 380(gp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000914]:KHMBT t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 384(gp)
Current Store : [0x80000920] : sw t5, 388(gp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['opcode : khmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs1_h1_val == 21845', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000930]:KHMBT t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 392(gp)
Current Store : [0x8000093c] : sw t5, 396(gp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000948]:KHMBT t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 400(gp)
Current Store : [0x80000954] : sw t5, 404(gp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : khmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -33', 'rs2_h0_val == -65', 'rs1_h1_val == -33', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000968]:KHMBT t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 408(gp)
Current Store : [0x80000974] : sw t5, 412(gp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4096', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000988]:KHMBT t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 416(gp)
Current Store : [0x80000994] : sw t5, 420(gp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['opcode : khmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -1025', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800009a4]:KHMBT t6, t5, t4
	-[0x800009a8]:csrrs t5, vxsat, zero
	-[0x800009ac]:sw t6, 424(gp)
Current Store : [0x800009b0] : sw t5, 428(gp) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009c4]:KHMBT t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 432(gp)
Current Store : [0x800009d0] : sw t5, 436(gp) -- Store: [0x80002454]:0x00000001





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

|s.no|        signature         |                                                                                                                                           coverpoints                                                                                                                                            |                                                    code                                                     |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : khmbt<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h0_val == 0<br> - rs1_h0_val == 0<br>                                                      |[0x80000114]:KHMBT a4, a4, a4<br> [0x80000118]:csrrs a4, vxsat, zero<br> [0x8000011c]:sw a4, 0(ra)<br>       |
|   2|[0x80002218]<br>0x00000000|- rs1 : x17<br> - rs2 : x17<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -33<br> - rs2_h0_val == -65<br> - rs1_h1_val == -33<br> - rs1_h0_val == -65<br>                                             |[0x80000134]:KHMBT s5, a7, a7<br> [0x80000138]:csrrs a7, vxsat, zero<br> [0x8000013c]:sw s5, 8(ra)<br>       |
|   3|[0x80002220]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x2<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 8<br> - rs2_h0_val == -513<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -3<br> |[0x80000154]:KHMBT a6, s4, sp<br> [0x80000158]:csrrs s4, vxsat, zero<br> [0x8000015c]:sw a6, 16(ra)<br>      |
|   4|[0x80002228]<br>0x00000000|- rs1 : x24<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -17<br> - rs2_h0_val == -2<br> - rs1_h0_val == -1<br>                                                                                                               |[0x80000174]:KHMBT s3, s8, s3<br> [0x80000178]:csrrs s8, vxsat, zero<br> [0x8000017c]:sw s3, 24(ra)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x23<br> - rs2 : x28<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -2049<br> - rs1_h0_val == -2049<br>                                                                                                                                               |[0x80000194]:KHMBT s7, s7, t3<br> [0x80000198]:csrrs s7, vxsat, zero<br> [0x8000019c]:sw s7, 32(ra)<br>      |
|   6|[0x80002238]<br>0x00000000|- rs1 : x29<br> - rs2 : x0<br> - rd : x31<br> - rs2_h1_val == 0<br> - rs1_h1_val == -513<br> - rs1_h0_val == -8193<br>                                                                                                                                                                            |[0x800001b4]:KHMBT t6, t4, zero<br> [0x800001b8]:csrrs t4, vxsat, zero<br> [0x800001bc]:sw t6, 40(ra)<br>    |
|   7|[0x80002240]<br>0x00000080|- rs1 : x2<br> - rs2 : x25<br> - rd : x26<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 512<br> - rs1_h1_val == 256<br> - rs1_h0_val == 8192<br>                                                                                                            |[0x800001d0]:KHMBT s10, sp, s9<br> [0x800001d4]:csrrs sp, vxsat, zero<br> [0x800001d8]:sw s10, 48(ra)<br>    |
|   8|[0x80002248]<br>0x00000000|- rs1 : x28<br> - rs2 : x20<br> - rd : x0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -1025<br> - rs1_h0_val == 4096<br>                                                                                                                               |[0x800001ec]:KHMBT zero, t3, s4<br> [0x800001f0]:csrrs t3, vxsat, zero<br> [0x800001f4]:sw zero, 56(ra)<br>  |
|   9|[0x80002250]<br>0xFFFFFFFC|- rs1 : x8<br> - rs2 : x3<br> - rd : x22<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 128<br> - rs1_h0_val == -5<br>                                                                                                                                     |[0x8000020c]:KHMBT s6, fp, gp<br> [0x80000210]:csrrs fp, vxsat, zero<br> [0x80000214]:sw s6, 64(ra)<br>      |
|  10|[0x80002258]<br>0x00000000|- rs1 : x19<br> - rs2 : x9<br> - rd : x5<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                      |[0x8000022c]:KHMBT t0, s3, s1<br> [0x80000230]:csrrs s3, vxsat, zero<br> [0x80000234]:sw t0, 72(ra)<br>      |
|  11|[0x80002260]<br>0xFFFFFFEF|- rs1 : x13<br> - rs2 : x7<br> - rd : x25<br> - rs2_h1_val == -16385<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                   |[0x8000024c]:KHMBT s9, a3, t2<br> [0x80000250]:csrrs a3, vxsat, zero<br> [0x80000254]:sw s9, 80(ra)<br>      |
|  12|[0x80002268]<br>0xFFFFF7FF|- rs1 : x3<br> - rs2 : x23<br> - rd : x30<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 2048<br>                                                                                                                                                                         |[0x80000268]:KHMBT t5, gp, s7<br> [0x8000026c]:csrrs gp, vxsat, zero<br> [0x80000270]:sw t5, 88(ra)<br>      |
|  13|[0x80002270]<br>0x00000000|- rs1 : x6<br> - rs2 : x31<br> - rd : x18<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 4<br>                                                                                                                                                                           |[0x80000288]:KHMBT s2, t1, t6<br> [0x8000028c]:csrrs t1, vxsat, zero<br> [0x80000290]:sw s2, 96(ra)<br>      |
|  14|[0x80002278]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x16<br> - rd : x20<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -9<br> - rs1_h1_val == 0<br>                                                                                                                                                                              |[0x800002a4]:KHMBT s4, t0, a6<br> [0x800002a8]:csrrs t0, vxsat, zero<br> [0x800002ac]:sw s4, 104(ra)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x0<br> - rs2 : x30<br> - rd : x8<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                   |[0x800002c4]:KHMBT fp, zero, t5<br> [0x800002c8]:csrrs zero, vxsat, zero<br> [0x800002cc]:sw fp, 112(ra)<br> |
|  16|[0x80002288]<br>0xFFFFFFDF|- rs1 : x21<br> - rs2 : x26<br> - rd : x9<br> - rs2_h1_val == -513<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 2<br> - rs1_h0_val == 2048<br>                                                                                                                                                  |[0x800002e4]:KHMBT s1, s5, s10<br> [0x800002e8]:csrrs s5, vxsat, zero<br> [0x800002ec]:sw s1, 120(ra)<br>    |
|  17|[0x80002290]<br>0x00000040|- rs1 : x12<br> - rs2 : x10<br> - rd : x3<br> - rs2_h1_val == -257<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                   |[0x80000304]:KHMBT gp, a2, a0<br> [0x80000308]:csrrs a2, vxsat, zero<br> [0x8000030c]:sw gp, 128(ra)<br>     |
|  18|[0x80002298]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x21<br> - rd : x28<br> - rs2_h1_val == -129<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                 |[0x80000324]:KHMBT t3, tp, s5<br> [0x80000328]:csrrs tp, vxsat, zero<br> [0x8000032c]:sw t3, 136(ra)<br>     |
|  19|[0x800022a0]<br>0xFFFFFFDF|- rs1 : x30<br> - rs2 : x24<br> - rd : x1<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 16384<br>                                                                                                                                                |[0x80000348]:KHMBT ra, t5, s8<br> [0x8000034c]:csrrs t5, vxsat, zero<br> [0x80000350]:sw ra, 0(gp)<br>       |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x1<br> - rs2 : x11<br> - rd : x17<br> - rs2_h1_val == -9<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                        |[0x80000364]:KHMBT a7, ra, a1<br> [0x80000368]:csrrs ra, vxsat, zero<br> [0x8000036c]:sw a7, 8(gp)<br>       |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x12<br> - rs2_h1_val == -5<br> - rs2_h0_val == -1<br> - rs1_h1_val == -9<br> - rs1_h0_val == -33<br>                                                                                                                                                       |[0x80000384]:KHMBT a2, s6, s2<br> [0x80000388]:csrrs s6, vxsat, zero<br> [0x8000038c]:sw a2, 16(gp)<br>      |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x27<br> - rs2 : x13<br> - rd : x24<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                             |[0x800003a4]:KHMBT s8, s11, a3<br> [0x800003a8]:csrrs s11, vxsat, zero<br> [0x800003ac]:sw s8, 24(gp)<br>    |
|  23|[0x800022c0]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x4<br> - rd : x10<br> - rs2_h1_val == -2<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                    |[0x800003c4]:KHMBT a0, s9, tp<br> [0x800003c8]:csrrs s9, vxsat, zero<br> [0x800003cc]:sw a0, 32(gp)<br>      |
|  24|[0x800022c8]<br>0x00007FFF|- rs1 : x11<br> - rs2 : x5<br> - rd : x15<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -32768<br> - rs1_h1_val == 64<br>                                                                                                                                                                        |[0x800003e0]:KHMBT a5, a1, t0<br> [0x800003e4]:csrrs a1, vxsat, zero<br> [0x800003e8]:sw a5, 40(gp)<br>      |
|  25|[0x800022d0]<br>0x00001000|- rs1 : x7<br> - rs2 : x15<br> - rd : x6<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 32<br>                                                                                                                                                                            |[0x800003f8]:KHMBT t1, t2, a5<br> [0x800003fc]:csrrs t2, vxsat, zero<br> [0x80000400]:sw t1, 48(gp)<br>      |
|  26|[0x800022d8]<br>0xFFFFF800|- rs1 : x26<br> - rs2 : x1<br> - rd : x13<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -4097<br> - rs1_h1_val == 512<br>                                                                                                                                                                          |[0x80000414]:KHMBT a3, s10, ra<br> [0x80000418]:csrrs s10, vxsat, zero<br> [0x8000041c]:sw a3, 56(gp)<br>    |
|  27|[0x800022e0]<br>0xFFFFFFDF|- rs1 : x10<br> - rs2 : x27<br> - rd : x29<br> - rs2_h1_val == 1024<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                 |[0x80000434]:KHMBT t4, a0, s11<br> [0x80000438]:csrrs a0, vxsat, zero<br> [0x8000043c]:sw t4, 64(gp)<br>     |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x16<br> - rs2 : x8<br> - rd : x7<br> - rs2_h1_val == 256<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                      |[0x80000454]:KHMBT t2, a6, fp<br> [0x80000458]:csrrs a6, vxsat, zero<br> [0x8000045c]:sw t2, 72(gp)<br>      |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x6<br> - rd : x4<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                              |[0x80000474]:KHMBT tp, s2, t1<br> [0x80000478]:csrrs s2, vxsat, zero<br> [0x8000047c]:sw tp, 80(gp)<br>      |
|  30|[0x800022f8]<br>0xFFFFFFEF|- rs1 : x15<br> - rs2 : x22<br> - rd : x11<br> - rs1_h1_val == 128<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                   |[0x80000490]:KHMBT a1, a5, s6<br> [0x80000494]:csrrs a5, vxsat, zero<br> [0x80000498]:sw a1, 88(gp)<br>      |
|  31|[0x80002300]<br>0x00000020|- rs1 : x31<br> - rs2 : x12<br> - rd : x2<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                            |[0x800004b0]:KHMBT sp, t6, a2<br> [0x800004b4]:csrrs t6, vxsat, zero<br> [0x800004b8]:sw sp, 96(gp)<br>      |
|  32|[0x80002308]<br>0x00000000|- rs1 : x9<br> - rs2 : x29<br> - rd : x27<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                   |[0x800004d0]:KHMBT s11, s1, t4<br> [0x800004d4]:csrrs s1, vxsat, zero<br> [0x800004d8]:sw s11, 104(gp)<br>   |
|  33|[0x80002318]<br>0xFFFFFFEF|- rs2_h0_val == 1024<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                  |[0x80000510]:KHMBT t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 120(gp)<br>     |
|  34|[0x80002320]<br>0xFFFFFFFF|- rs2_h1_val == 64<br> - rs2_h0_val == 8<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                     |[0x80000530]:KHMBT t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 128(gp)<br>     |
|  35|[0x80002328]<br>0xFFFFFFFF|- rs2_h0_val == 8192<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                   |[0x8000054c]:KHMBT t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 136(gp)<br>     |
|  36|[0x80002330]<br>0xFFFFFFFF|- rs1_h1_val == -3<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                   |[0x80000568]:KHMBT t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 144(gp)<br>     |
|  37|[0x80002338]<br>0x000000FF|- rs2_h0_val == -33<br> - rs1_h1_val == -5<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                            |[0x80000588]:KHMBT t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 152(gp)<br>     |
|  38|[0x80002340]<br>0x00000002|- rs2_h0_val == 4<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                     |[0x800005a8]:KHMBT t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 160(gp)<br>     |
|  39|[0x80002348]<br>0xFFFFFFFF|- rs2_h0_val == -17<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                   |[0x800005c8]:KHMBT t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 168(gp)<br>     |
|  40|[0x80002350]<br>0x0000002A|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                            |[0x800005e8]:KHMBT t6, t5, t4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 176(gp)<br>     |
|  41|[0x80002358]<br>0xFFFFFFFB|- rs2_h0_val == -5<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                     |[0x80000608]:KHMBT t6, t5, t4<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 184(gp)<br>     |
|  42|[0x80002360]<br>0xFFFFFFFD|- rs2_h0_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                  |[0x80000624]:KHMBT t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 192(gp)<br>     |
|  43|[0x80002368]<br>0x00000000|- rs2_h1_val == 4<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                       |[0x80000644]:KHMBT t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 200(gp)<br>     |
|  44|[0x80002370]<br>0xFFFFFFFF|- rs1_h1_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                      |[0x80000664]:KHMBT t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 208(gp)<br>     |
|  45|[0x80002378]<br>0x00000000|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                            |[0x80000684]:KHMBT t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 216(gp)<br>     |
|  46|[0x80002380]<br>0x00000000|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                          |[0x800006a0]:KHMBT t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 224(gp)<br>     |
|  47|[0x80002388]<br>0xFFFFFFFF|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                           |[0x800006c0]:KHMBT t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 232(gp)<br>     |
|  48|[0x80002390]<br>0xFFFFFF80|- rs2_h0_val == 32<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                   |[0x800006e0]:KHMBT t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 240(gp)<br>     |
|  49|[0x80002398]<br>0x00000000|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                            |[0x80000700]:KHMBT t6, t5, t4<br> [0x80000704]:csrrs t5, vxsat, zero<br> [0x80000708]:sw t6, 248(gp)<br>     |
|  50|[0x800023a0]<br>0xFFFFFF7F|- rs2_h0_val == 1<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                  |[0x80000720]:KHMBT t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 256(gp)<br>     |
|  51|[0x800023a8]<br>0x00000000|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                        |[0x80000740]:KHMBT t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 264(gp)<br>     |
|  52|[0x800023b0]<br>0x00000000|- rs2_h0_val == -21846<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                              |[0x80000760]:KHMBT t6, t5, t4<br> [0x80000764]:csrrs t5, vxsat, zero<br> [0x80000768]:sw t6, 272(gp)<br>     |
|  53|[0x800023b8]<br>0x00000100|- rs2_h0_val == -129<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                      |[0x80000780]:KHMBT t6, t5, t4<br> [0x80000784]:csrrs t5, vxsat, zero<br> [0x80000788]:sw t6, 280(gp)<br>     |
|  54|[0x800023c0]<br>0x00000000|- rs2_h1_val == -1<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                  |[0x800007a0]:KHMBT t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 288(gp)<br>     |
|  55|[0x800023c8]<br>0x00000000|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                           |[0x800007c0]:KHMBT t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 296(gp)<br>     |
|  56|[0x800023d0]<br>0x00000000|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                            |[0x800007e0]:KHMBT t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 304(gp)<br>     |
|  57|[0x800023d8]<br>0x00000000|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                            |[0x800007fc]:KHMBT t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 312(gp)<br>     |
|  58|[0x800023e0]<br>0xFFFFFFFF|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                            |[0x8000081c]:KHMBT t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 320(gp)<br>     |
|  59|[0x800023e8]<br>0x0000000F|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                         |[0x8000083c]:KHMBT t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 328(gp)<br>     |
|  60|[0x800023f0]<br>0x00000000|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                          |[0x8000085c]:KHMBT t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 336(gp)<br>     |
|  61|[0x800023f8]<br>0xFFFFFFFF|- rs2_h1_val == 2<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                      |[0x80000878]:KHMBT t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 344(gp)<br>     |
|  62|[0x80002400]<br>0xFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                             |[0x80000898]:KHMBT t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 352(gp)<br>     |
|  63|[0x80002408]<br>0xFFFFFFFF|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                         |[0x800008b8]:KHMBT t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 360(gp)<br>     |
|  64|[0x80002410]<br>0xFFFFFFFA|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                        |[0x800008d8]:KHMBT t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 368(gp)<br>     |
|  65|[0x80002418]<br>0xFFFFFFD5|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                             |[0x800008f4]:KHMBT t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 376(gp)<br>     |
|  66|[0x80002420]<br>0x00000006|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                         |[0x80000914]:KHMBT t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 384(gp)<br>     |
|  67|[0x80002430]<br>0xFFFFFFF7|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                             |[0x80000948]:KHMBT t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 400(gp)<br>     |
|  68|[0x80002440]<br>0xFFFFFBFF|- rs2_h1_val == 4096<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                                   |[0x80000988]:KHMBT t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 416(gp)<br>     |
|  69|[0x80002450]<br>0xFFFFFD54|- rs1_h1_val == -16385<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                              |[0x800009c4]:KHMBT t6, t5, t4<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sw t6, 432(gp)<br>     |
