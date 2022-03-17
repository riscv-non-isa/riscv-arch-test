
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000880')]      |
| SIG_REGION                | [('0x80002210', '0x80002430', '136 words')]      |
| COV_LABELS                | smulx8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smulx8-01.S    |
| Total Number of coverpoints| 275     |
| Total Coverpoints Hit     | 269      |
| Total Signature Updates   | 136      |
| STAT1                     | 66      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 68     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000065c]:SMULX8 t5, t6, t4
      [0x80000660]:sw t5, 184(ra)
 -- Signature Address: 0x80002390 Data: 0x2000803F
 -- Redundant Coverpoints hit by the op
      - opcode : smulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b3_val == 1
      - rs2_b2_val == 16
      - rs1_b2_val == -86
      - rs1_b1_val == 0
      - rs1_b0_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000838]:SMULX8 t5, t6, t4
      [0x8000083c]:sw t5, 320(ra)
 -- Signature Address: 0x80002418 Data: 0x2000803F
 -- Redundant Coverpoints hit by the op
      - opcode : smulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == -3
      - rs2_b1_val == -2
      - rs2_b0_val == 64
      - rs1_b3_val == 4
      - rs1_b1_val == 85
      - rs1_b0_val == 8






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smulx8', 'rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b3_val == 1', 'rs2_b2_val == 16', 'rs2_b1_val == -5', 'rs1_b3_val == 1', 'rs1_b2_val == 16', 'rs1_b1_val == -5']
Last Code Sequence : 
	-[0x80000110]:SMULX8 s8, s8, s8
	-[0x80000114]:sw s8, 0(gp)
Current Store : [0x80000118] : sw s9, 4(gp) -- Store: [0x80002214]:0x00100010




Last Coverpoint : ['rs1 : x1', 'rs2 : x1', 'rd : x28', 'rs1 == rs2 != rd', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == -3', 'rs2_b1_val == -2', 'rs2_b0_val == 64', 'rs1_b2_val == -3', 'rs1_b1_val == -2', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x8000012c]:SMULX8 t3, ra, ra
	-[0x80000130]:sw t3, 8(gp)
Current Store : [0x80000134] : sw t4, 12(gp) -- Store: [0x8000221c]:0xFFF1FFF1




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b2_val == 2', 'rs2_b0_val == 127', 'rs1_b2_val == 8', 'rs1_b1_val == 4', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000148]:SMULX8 s2, s11, t1
	-[0x8000014c]:sw s2, 16(gp)
Current Store : [0x80000150] : sw s3, 20(gp) -- Store: [0x80002224]:0xFFF201F8




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs2_b3_val == -65', 'rs2_b2_val == -86', 'rs2_b1_val == -86', 'rs2_b0_val == -86', 'rs1_b3_val == -65', 'rs1_b2_val == 85']
Last Code Sequence : 
	-[0x80000164]:SMULX8 fp, t6, fp
	-[0x80000168]:sw fp, 24(gp)
Current Store : [0x8000016c] : sw s1, 28(gp) -- Store: [0x8000222c]:0x15D6EA6B




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x16', 'rs1 == rd != rs2', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b3_val == 4', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x80000180]:SMULX8 a6, a6, a4
	-[0x80000184]:sw a6, 32(gp)
Current Store : [0x80000188] : sw a7, 36(gp) -- Store: [0x80002234]:0xFFE8FC00




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x12', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b3_val == 127', 'rs2_b1_val == -1', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x8000019c]:SMULX8 a2, sp, a6
	-[0x800001a0]:sw a2, 40(gp)
Current Store : [0x800001a4] : sw a3, 44(gp) -- Store: [0x8000223c]:0xFFB80477




Last Coverpoint : ['rs1 : x9', 'rs2 : x21', 'rd : x30', 'rs1_b0_val == -128', 'rs2_b2_val == -2', 'rs1_b3_val == 127', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x800001b8]:SMULX8 t5, s1, s5
	-[0x800001bc]:sw t5, 48(gp)
Current Store : [0x800001c0] : sw t6, 52(gp) -- Store: [0x80002244]:0xFF02FFE2




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x26', 'rs2_b3_val == -2', 'rs2_b0_val == 4', 'rs1_b3_val == 16', 'rs1_b2_val == 64', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x800001d4]:SMULX8 s10, t1, t2
	-[0x800001d8]:sw s10, 56(gp)
Current Store : [0x800001dc] : sw s11, 60(gp) -- Store: [0x8000224c]:0x0090FF80




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x14', 'rs2_b3_val == 4', 'rs1_b3_val == 8', 'rs1_b2_val == -65', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800001f0]:SMULX8 a4, t5, s1
	-[0x800001f4]:sw a4, 64(gp)
Current Store : [0x800001f8] : sw a5, 68(gp) -- Store: [0x80002254]:0xFFF0FEFC




Last Coverpoint : ['rs1 : x21', 'rs2 : x15', 'rd : x4', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b3_val == -5', 'rs2_b2_val == 64', 'rs2_b1_val == 1', 'rs2_b0_val == -9', 'rs1_b3_val == -17']
Last Code Sequence : 
	-[0x8000020c]:SMULX8 tp, s5, a5
	-[0x80000210]:sw tp, 72(gp)
Current Store : [0x80000214] : sw t0, 76(gp) -- Store: [0x8000225c]:0xFBC00014




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x22', 'rs2_b3_val == -86', 'rs2_b2_val == 32', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x80000228]:SMULX8 s6, a2, t6
	-[0x8000022c]:sw s6, 80(gp)
Current Store : [0x80000230] : sw s7, 84(gp) -- Store: [0x80002264]:0xF7E00306




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x6', 'rs2_b3_val == 85', 'rs1_b3_val == -86', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x8000024c]:SMULX8 t1, t2, sp
	-[0x80000250]:sw t1, 0(ra)
Current Store : [0x80000254] : sw t2, 4(ra) -- Store: [0x8000226c]:0xFDFC01A9




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x20', 'rs2_b3_val == -33', 'rs2_b2_val == -5', 'rs2_b1_val == 2', 'rs2_b0_val == 0', 'rs1_b3_val == -33', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x80000268]:SMULX8 s4, a0, t0
	-[0x8000026c]:sw s4, 8(ra)
Current Store : [0x80000270] : sw s5, 12(ra) -- Store: [0x80002274]:0x00A5FF19




Last Coverpoint : ['rs1 : x26', 'rs2 : x17', 'rd : x10', 'rs2_b3_val == -17', 'rs2_b2_val == 0', 'rs2_b0_val == -3', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000284]:SMULX8 a0, s10, a7
	-[0x80000288]:sw a0, 16(ra)
Current Store : [0x8000028c] : sw a1, 20(ra) -- Store: [0x8000227c]:0x0000FBC0




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x2', 'rs2_b3_val == 0', 'rs2_b1_val == 0', 'rs1_b3_val == -128']
Last Code Sequence : 
	-[0x800002a0]:SMULX8 sp, gp, zero
	-[0x800002a4]:sw sp, 24(ra)
Current Store : [0x800002a8] : sw gp, 28(ra) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rs2_b3_val == -3', 'rs1_b3_val == -9', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x800002bc]:SMULX8 a6, s7, s4
	-[0x800002c0]:sw a6, 32(ra)
Current Store : [0x800002c4] : sw a7, 36(ra) -- Store: [0x8000228c]:0x00120012




Last Coverpoint : ['rs1 : x5', 'rs2 : x25', 'rs2_b3_val == -128', 'rs2_b1_val == 127']
Last Code Sequence : 
	-[0x800002d8]:SMULX8 t3, t0, s9
	-[0x800002dc]:sw t3, 40(ra)
Current Store : [0x800002e0] : sw t4, 44(ra) -- Store: [0x80002294]:0x0031E080




Last Coverpoint : ['rs1 : x14', 'rs2 : x28', 'rs2_b3_val == 64', 'rs2_b2_val == 8', 'rs2_b0_val == -5', 'rs1_b2_val == -128']
Last Code Sequence : 
	-[0x800002f4]:SMULX8 t1, a4, t3
	-[0x800002f8]:sw t1, 48(ra)
Current Store : [0x800002fc] : sw t2, 52(ra) -- Store: [0x8000229c]:0x0038E000




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rs2_b3_val == 32', 'rs2_b1_val == -128', 'rs1_b3_val == -2', 'rs1_b1_val == -65', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000310]:SMULX8 fp, s2, t5
	-[0x80000314]:sw fp, 56(ra)
Current Store : [0x80000318] : sw s1, 60(ra) -- Store: [0x800022a4]:0x00000060




Last Coverpoint : ['rs1 : x17', 'rs2 : x13', 'rs2_b3_val == 16', 'rs1_b3_val == 64', 'rs1_b2_val == 2', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x8000032c]:SMULX8 a0, a7, a3
	-[0x80000330]:sw a0, 64(ra)
Current Store : [0x80000334] : sw a1, 68(ra) -- Store: [0x800022ac]:0x08000020




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rs2_b3_val == 8', 'rs1_b1_val == -86', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000348]:SMULX8 t1, s6, gp
	-[0x8000034c]:sw t1, 72(ra)
Current Store : [0x80000350] : sw t2, 76(ra) -- Store: [0x800022b4]:0xFFD8FFC8




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rs2_b3_val == 2', 'rs2_b1_val == -33', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000364]:SMULX8 a0, s3, s6
	-[0x80000368]:sw a0, 80(ra)
Current Store : [0x8000036c] : sw a1, 84(ra) -- Store: [0x800022bc]:0x07E00040




Last Coverpoint : ['rs1 : x13', 'rs2 : x27']
Last Code Sequence : 
	-[0x80000380]:SMULX8 t3, a3, s11
	-[0x80000384]:sw t3, 88(ra)
Current Store : [0x80000388] : sw t4, 92(ra) -- Store: [0x800022c4]:0x00120000




Last Coverpoint : ['rs1 : x28', 'rs2 : x11', 'rs2_b3_val == -1', 'rs1_b3_val == 32', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x8000039c]:SMULX8 a6, t3, a1
	-[0x800003a0]:sw a6, 96(ra)
Current Store : [0x800003a4] : sw a7, 100(ra) -- Store: [0x800022cc]:0x00C00008




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rs2_b2_val == 85', 'rs2_b1_val == 8', 'rs1_b2_val == 0', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800003b8]:SMULX8 s4, a5, s7
	-[0x800003bc]:sw s4, 104(ra)
Current Store : [0x800003c0] : sw s5, 108(ra) -- Store: [0x800022d4]:0xFCAE0000




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rs2_b2_val == 127', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x800003dc]:SMULX8 s4, a1, t4
	-[0x800003e0]:sw s4, 0(ra)
Current Store : [0x800003e4] : sw s5, 4(ra) -- Store: [0x800022dc]:0xEFA1FE86




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rs2_b2_val == -65', 'rs2_b0_val == -128']
Last Code Sequence : 
	-[0x800003f8]:SMULX8 s6, s4, s3
	-[0x800003fc]:sw s6, 8(ra)
Current Store : [0x80000400] : sw s7, 12(ra) -- Store: [0x800022e4]:0xFFBFFE86




Last Coverpoint : ['rs1 : x8', 'rs2 : x26', 'rs1_b2_val == -33']
Last Code Sequence : 
	-[0x80000414]:SMULX8 tp, fp, s10
	-[0x80000418]:sw tp, 16(ra)
Current Store : [0x8000041c] : sw t0, 20(ra) -- Store: [0x800022ec]:0x0000FF5B




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rs2_b0_val == -33', 'rs1_b2_val == -17', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000430]:SMULX8 s2, s9, tp
	-[0x80000434]:sw s2, 24(ra)
Current Store : [0x80000438] : sw s3, 28(ra) -- Store: [0x800022f4]:0xFF40FFAB




Last Coverpoint : ['rs1 : x4', 'rs2 : x12']
Last Code Sequence : 
	-[0x80000448]:SMULX8 s4, tp, a2
	-[0x8000044c]:sw s4, 32(ra)
Current Store : [0x80000450] : sw s5, 36(ra) -- Store: [0x800022fc]:0xFFD6000C




Last Coverpoint : ['rs1 : x0', 'rs2 : x18', 'rs2_b1_val == 4', 'rs2_b0_val == 85', 'rs1_b3_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x80000464]:SMULX8 t5, zero, s2
	-[0x80000468]:sw t5, 40(ra)
Current Store : [0x8000046c] : sw t6, 44(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rs1_b2_val == 4', 'rs1_b1_val == 16', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000480]:SMULX8 a2, t4, a0
	-[0x80000484]:sw a2, 48(ra)
Current Store : [0x80000488] : sw a3, 52(ra) -- Store: [0x8000230c]:0x084001FC




Last Coverpoint : ['rs2_b2_val == -1', 'rs2_b1_val == 64', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x8000049c]:SMULX8 t5, t6, t4
	-[0x800004a0]:sw t5, 56(ra)
Current Store : [0x800004a4] : sw t6, 60(ra) -- Store: [0x80002314]:0xFFE00006




Last Coverpoint : ['rs1_b2_val == -1']
Last Code Sequence : 
	-[0x800004b8]:SMULX8 t5, t6, t4
	-[0x800004bc]:sw t5, 64(ra)
Current Store : [0x800004c0] : sw t6, 68(ra) -- Store: [0x8000231c]:0x00020006




Last Coverpoint : ['rs1_b1_val == -33', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x800004d4]:SMULX8 t5, t6, t4
	-[0x800004d8]:sw t5, 72(ra)
Current Store : [0x800004dc] : sw t6, 76(ra) -- Store: [0x80002324]:0xFF56FFF8




Last Coverpoint : ['rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800004f0]:SMULX8 t5, t6, t4
	-[0x800004f4]:sw t5, 80(ra)
Current Store : [0x800004f8] : sw t6, 84(ra) -- Store: [0x8000232c]:0x0000FFEB




Last Coverpoint : ['rs2_b2_val == 4', 'rs2_b1_val == -65', 'rs2_b0_val == 32', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x8000050c]:SMULX8 t5, t6, t4
	-[0x80000510]:sw t5, 88(ra)
Current Store : [0x80000514] : sw t6, 92(ra) -- Store: [0x80002334]:0x0080FFFD




Last Coverpoint : ['rs2_b1_val == -17', 'rs1_b1_val == 64', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000528]:SMULX8 t5, t6, t4
	-[0x8000052c]:sw t5, 96(ra)
Current Store : [0x80000530] : sw t6, 100(ra) -- Store: [0x8000233c]:0xFD80FFE7




Last Coverpoint : ['rs2_b2_val == -17', 'rs2_b1_val == 16', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000544]:SMULX8 t5, t6, t4
	-[0x80000548]:sw t5, 104(ra)
Current Store : [0x8000054c] : sw t6, 108(ra) -- Store: [0x80002344]:0xFFEF00BD




Last Coverpoint : ['rs2_b1_val == 32', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000560]:SMULX8 t5, t6, t4
	-[0x80000564]:sw t5, 112(ra)
Current Store : [0x80000568] : sw t6, 116(ra) -- Store: [0x8000234c]:0xFF60001C




Last Coverpoint : ['rs2_b1_val == 85']
Last Code Sequence : 
	-[0x8000057c]:SMULX8 t5, t6, t4
	-[0x80000580]:sw t5, 120(ra)
Current Store : [0x80000584] : sw t6, 124(ra) -- Store: [0x80002354]:0xFFCF14EB




Last Coverpoint : ['rs2_b2_val == -33', 'rs2_b1_val == -9']
Last Code Sequence : 
	-[0x80000598]:SMULX8 t5, t6, t4
	-[0x8000059c]:sw t5, 128(ra)
Current Store : [0x800005a0] : sw t6, 132(ra) -- Store: [0x8000235c]:0x01290011




Last Coverpoint : ['rs2_b1_val == -3']
Last Code Sequence : 
	-[0x800005b4]:SMULX8 t5, t6, t4
	-[0x800005b8]:sw t5, 136(ra)
Current Store : [0x800005bc] : sw t6, 140(ra) -- Store: [0x80002364]:0x02801080




Last Coverpoint : ['rs2_b2_val == -9']
Last Code Sequence : 
	-[0x800005d0]:SMULX8 t5, t6, t4
	-[0x800005d4]:sw t5, 144(ra)
Current Store : [0x800005d8] : sw t6, 148(ra) -- Store: [0x8000236c]:0xFFB8000A




Last Coverpoint : ['rs2_b0_val == -65']
Last Code Sequence : 
	-[0x800005ec]:SMULX8 t5, t6, t4
	-[0x800005f0]:sw t5, 152(ra)
Current Store : [0x800005f4] : sw t6, 156(ra) -- Store: [0x80002374]:0xFFC8FFB8




Last Coverpoint : ['rs2_b0_val == -17', 'rs1_b2_val == -86']
Last Code Sequence : 
	-[0x80000608]:SMULX8 t5, t6, t4
	-[0x8000060c]:sw t5, 160(ra)
Current Store : [0x80000610] : sw t6, 164(ra) -- Store: [0x8000237c]:0x008800AC




Last Coverpoint : ['rs2_b0_val == -2']
Last Code Sequence : 
	-[0x80000624]:SMULX8 t5, t6, t4
	-[0x80000628]:sw t5, 168(ra)
Current Store : [0x8000062c] : sw t6, 172(ra) -- Store: [0x80002384]:0xFF80FFCF




Last Coverpoint : ['rs2_b0_val == 16', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x80000640]:SMULX8 t5, t6, t4
	-[0x80000644]:sw t5, 176(ra)
Current Store : [0x80000648] : sw t6, 180(ra) -- Store: [0x8000238c]:0xEAC00000




Last Coverpoint : ['opcode : smulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b3_val == 1', 'rs2_b2_val == 16', 'rs1_b2_val == -86', 'rs1_b1_val == 0', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000065c]:SMULX8 t5, t6, t4
	-[0x80000660]:sw t5, 184(ra)
Current Store : [0x80000664] : sw t6, 188(ra) -- Store: [0x80002394]:0xFF60FFAA




Last Coverpoint : ['rs2_b0_val == 8', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80000678]:SMULX8 t5, t6, t4
	-[0x8000067c]:sw t5, 192(ra)
Current Store : [0x80000680] : sw t6, 196(ra) -- Store: [0x8000239c]:0x00140046




Last Coverpoint : ['rs1_b1_val == -1']
Last Code Sequence : 
	-[0x80000694]:SMULX8 t5, t6, t4
	-[0x80000698]:sw t5, 200(ra)
Current Store : [0x8000069c] : sw t6, 204(ra) -- Store: [0x800023a4]:0x00180024




Last Coverpoint : ['rs2_b0_val == 2']
Last Code Sequence : 
	-[0x800006b0]:SMULX8 t5, t6, t4
	-[0x800006b4]:sw t5, 208(ra)
Current Store : [0x800006b8] : sw t6, 212(ra) -- Store: [0x800023ac]:0xFE020010




Last Coverpoint : ['rs2_b0_val == 1']
Last Code Sequence : 
	-[0x800006cc]:SMULX8 t5, t6, t4
	-[0x800006d0]:sw t5, 216(ra)
Current Store : [0x800006d4] : sw t6, 220(ra) -- Store: [0x800023b4]:0xFFE80080




Last Coverpoint : ['rs1_b0_val == 127']
Last Code Sequence : 
	-[0x800006e8]:SMULX8 t5, t6, t4
	-[0x800006ec]:sw t5, 224(ra)
Current Store : [0x800006f0] : sw t6, 228(ra) -- Store: [0x800023bc]:0x05B6000C




Last Coverpoint : ['rs2_b0_val == -1']
Last Code Sequence : 
	-[0x80000704]:SMULX8 t5, t6, t4
	-[0x80000708]:sw t5, 232(ra)
Current Store : [0x8000070c] : sw t6, 236(ra) -- Store: [0x800023c4]:0x00000046




Last Coverpoint : ['rs1_b0_val == -9']
Last Code Sequence : 
	-[0x80000720]:SMULX8 t5, t6, t4
	-[0x80000724]:sw t5, 240(ra)
Current Store : [0x80000728] : sw t6, 244(ra) -- Store: [0x800023cc]:0xF8001000




Last Coverpoint : ['rs1_b0_val == -2']
Last Code Sequence : 
	-[0x8000073c]:SMULX8 t5, t6, t4
	-[0x80000740]:sw t5, 248(ra)
Current Store : [0x80000744] : sw t6, 252(ra) -- Store: [0x800023d4]:0x00220200




Last Coverpoint : ['rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000758]:SMULX8 t5, t6, t4
	-[0x8000075c]:sw t5, 256(ra)
Current Store : [0x80000760] : sw t6, 260(ra) -- Store: [0x800023dc]:0x01000000




Last Coverpoint : ['rs1_b3_val == -3']
Last Code Sequence : 
	-[0x80000774]:SMULX8 t5, t6, t4
	-[0x80000778]:sw t5, 264(ra)
Current Store : [0x8000077c] : sw t6, 268(ra) -- Store: [0x800023e4]:0xFF40FFAF




Last Coverpoint : ['rs2_b2_val == -128']
Last Code Sequence : 
	-[0x80000790]:SMULX8 t5, t6, t4
	-[0x80000794]:sw t5, 272(ra)
Current Store : [0x80000798] : sw t6, 276(ra) -- Store: [0x800023ec]:0xC080017A




Last Coverpoint : ['rs1_b3_val == 2']
Last Code Sequence : 
	-[0x800007ac]:SMULX8 t5, t6, t4
	-[0x800007b0]:sw t5, 280(ra)
Current Store : [0x800007b4] : sw t6, 284(ra) -- Store: [0x800023f4]:0x0080FF40




Last Coverpoint : ['rs1_b3_val == -1']
Last Code Sequence : 
	-[0x800007c8]:SMULX8 t5, t6, t4
	-[0x800007cc]:sw t5, 288(ra)
Current Store : [0x800007d0] : sw t6, 292(ra) -- Store: [0x800023fc]:0xFFE02A2B




Last Coverpoint : ['rs2_b2_val == 1']
Last Code Sequence : 
	-[0x800007e4]:SMULX8 t5, t6, t4
	-[0x800007e8]:sw t5, 296(ra)
Current Store : [0x800007ec] : sw t6, 300(ra) -- Store: [0x80002404]:0xFFFD03F0




Last Coverpoint : ['rs1_b2_val == 127']
Last Code Sequence : 
	-[0x80000800]:SMULX8 t5, t6, t4
	-[0x80000804]:sw t5, 304(ra)
Current Store : [0x80000808] : sw t6, 308(ra) -- Store: [0x8000240c]:0xFFFA0379




Last Coverpoint : ['rs1_b2_val == -5']
Last Code Sequence : 
	-[0x8000081c]:SMULX8 t5, t6, t4
	-[0x80000820]:sw t5, 312(ra)
Current Store : [0x80000824] : sw t6, 316(ra) -- Store: [0x80002414]:0x0010FFFB




Last Coverpoint : ['opcode : smulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == -3', 'rs2_b1_val == -2', 'rs2_b0_val == 64', 'rs1_b3_val == 4', 'rs1_b1_val == 85', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000838]:SMULX8 t5, t6, t4
	-[0x8000083c]:sw t5, 320(ra)
Current Store : [0x80000840] : sw t6, 324(ra) -- Store: [0x8000241c]:0xFFF4002D




Last Coverpoint : ['rs2_b3_val == -9']
Last Code Sequence : 
	-[0x80000854]:SMULX8 t5, t6, t4
	-[0x80000858]:sw t5, 328(ra)
Current Store : [0x8000085c] : sw t6, 332(ra) -- Store: [0x80002424]:0x0100FF70




Last Coverpoint : ['rs1_b2_val == -2']
Last Code Sequence : 
	-[0x80000870]:SMULX8 t5, t6, t4
	-[0x80000874]:sw t5, 336(ra)
Current Store : [0x80000878] : sw t6, 340(ra) -- Store: [0x8000242c]:0xFFE00082





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

|s.no|        signature         |                                                                                                                                                                                                                                                          coverpoints                                                                                                                                                                                                                                                           |                                code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0110FBFA|- opcode : smulx8<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b3_val == 1<br> - rs2_b2_val == 16<br> - rs2_b1_val == -5<br> - rs1_b3_val == 1<br> - rs1_b2_val == 16<br> - rs1_b1_val == -5<br> |[0x80000110]:SMULX8 s8, s8, s8<br> [0x80000114]:sw s8, 0(gp)<br>    |
|   2|[0x80002218]<br>0xDDB7D5BF|- rs1 : x1<br> - rs2 : x1<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b2_val == -3<br> - rs2_b1_val == -2<br> - rs2_b0_val == 64<br> - rs1_b2_val == -3<br> - rs1_b1_val == -2<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                   |[0x8000012c]:SMULX8 t3, ra, ra<br> [0x80000130]:sw t3, 8(gp)<br>    |
|   3|[0x80002220]<br>0xDF56FF76|- rs1 : x27<br> - rs2 : x6<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val<br> - rs2_b2_val == 2<br> - rs2_b0_val == 127<br> - rs1_b2_val == 8<br> - rs1_b1_val == 4<br> - rs1_b0_val == 0<br>                                                                                                         |[0x80000148]:SMULX8 s2, s11, t1<br> [0x8000014c]:sw s2, 16(gp)<br>  |
|   4|[0x80002228]<br>0xBFAAAAAA|- rs1 : x31<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b3_val == -65<br> - rs2_b2_val == -86<br> - rs2_b1_val == -86<br> - rs2_b0_val == -86<br> - rs1_b3_val == -65<br> - rs1_b2_val == 85<br>                                                                                                                                                                                      |[0x80000164]:SMULX8 fp, t6, fp<br> [0x80000168]:sw fp, 24(gp)<br>   |
|   5|[0x80002230]<br>0x0410FDF6|- rs1 : x16<br> - rs2 : x14<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b3_val == 4<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                              |[0x80000180]:SMULX8 a6, a6, a4<br> [0x80000184]:sw a6, 32(gp)<br>   |
|   6|[0x80002238]<br>0xD5BFDDB7|- rs1 : x2<br> - rs2 : x16<br> - rd : x12<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 127<br> - rs2_b1_val == -1<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x8000019c]:SMULX8 a2, sp, a6<br> [0x800001a0]:sw a2, 40(gp)<br>   |
|   7|[0x80002240]<br>0xF76DF56F|- rs1 : x9<br> - rs2 : x21<br> - rd : x30<br> - rs1_b0_val == -128<br> - rs2_b2_val == -2<br> - rs1_b3_val == 127<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800001b8]:SMULX8 t5, s1, s5<br> [0x800001bc]:sw t5, 48(gp)<br>   |
|   8|[0x80002248]<br>0x76DF56FF|- rs1 : x6<br> - rs2 : x7<br> - rd : x26<br> - rs2_b3_val == -2<br> - rs2_b0_val == 4<br> - rs1_b3_val == 16<br> - rs1_b2_val == 64<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x800001d4]:SMULX8 s10, t1, t2<br> [0x800001d8]:sw s10, 56(gp)<br> |
|   9|[0x80002250]<br>0xC0FA3FC0|- rs1 : x30<br> - rs2 : x9<br> - rd : x14<br> - rs2_b3_val == 4<br> - rs1_b3_val == 8<br> - rs1_b2_val == -65<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800001f0]:SMULX8 a4, t5, s1<br> [0x800001f4]:sw a4, 64(gp)<br>   |
|  10|[0x80002258]<br>0xBFDDB7D5|- rs1 : x21<br> - rs2 : x15<br> - rd : x4<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == -5<br> - rs2_b2_val == 64<br> - rs2_b1_val == 1<br> - rs2_b0_val == -9<br> - rs1_b3_val == -17<br>                                                                                                                                                                                                                                                                                |[0x8000020c]:SMULX8 tp, s5, a5<br> [0x80000210]:sw tp, 72(gp)<br>   |
|  11|[0x80002260]<br>0x6DF56FF7|- rs1 : x12<br> - rs2 : x31<br> - rd : x22<br> - rs2_b3_val == -86<br> - rs2_b2_val == 32<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000228]:SMULX8 s6, a2, t6<br> [0x8000022c]:sw s6, 80(gp)<br>   |
|  12|[0x80002268]<br>0x1040F908|- rs1 : x7<br> - rs2 : x2<br> - rd : x6<br> - rs2_b3_val == 85<br> - rs1_b3_val == -86<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000024c]:SMULX8 t1, t2, sp<br> [0x80000250]:sw t1, 0(ra)<br>    |
|  13|[0x80002270]<br>0xB7D5BFDD|- rs1 : x10<br> - rs2 : x5<br> - rd : x20<br> - rs2_b3_val == -33<br> - rs2_b2_val == -5<br> - rs2_b1_val == 2<br> - rs2_b0_val == 0<br> - rs1_b3_val == -33<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000268]:SMULX8 s4, a0, t0<br> [0x8000026c]:sw s4, 8(ra)<br>    |
|  14|[0x80002278]<br>0xDF077FF6|- rs1 : x26<br> - rs2 : x17<br> - rd : x10<br> - rs2_b3_val == -17<br> - rs2_b2_val == 0<br> - rs2_b0_val == -3<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000284]:SMULX8 a0, s10, a7<br> [0x80000288]:sw a0, 16(ra)<br>  |
|  15|[0x80002280]<br>0x5506FF03|- rs1 : x3<br> - rs2 : x0<br> - rd : x2<br> - rs2_b3_val == 0<br> - rs2_b1_val == 0<br> - rs1_b3_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800002a0]:SMULX8 sp, gp, zero<br> [0x800002a4]:sw sp, 24(ra)<br> |
|  16|[0x80002288]<br>0x7F09FF03|- rs1 : x23<br> - rs2 : x20<br> - rs2_b3_val == -3<br> - rs1_b3_val == -9<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800002bc]:SMULX8 a6, s7, s4<br> [0x800002c0]:sw a6, 32(ra)<br>   |
|  17|[0x80002290]<br>0xDDB7D5BF|- rs1 : x5<br> - rs2 : x25<br> - rs2_b3_val == -128<br> - rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800002d8]:SMULX8 t3, t0, s9<br> [0x800002dc]:sw t3, 40(ra)<br>   |
|  18|[0x80002298]<br>0x1040F908|- rs1 : x14<br> - rs2 : x28<br> - rs2_b3_val == 64<br> - rs2_b2_val == 8<br> - rs2_b0_val == -5<br> - rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800002f4]:SMULX8 t1, a4, t3<br> [0x800002f8]:sw t1, 48(ra)<br>   |
|  19|[0x800022a0]<br>0xBFAAAAAA|- rs1 : x18<br> - rs2 : x30<br> - rs2_b3_val == 32<br> - rs2_b1_val == -128<br> - rs1_b3_val == -2<br> - rs1_b1_val == -65<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x80000310]:SMULX8 fp, s2, t5<br> [0x80000314]:sw fp, 56(ra)<br>   |
|  20|[0x800022a8]<br>0xDF077FF6|- rs1 : x17<br> - rs2 : x13<br> - rs2_b3_val == 16<br> - rs1_b3_val == 64<br> - rs1_b2_val == 2<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000032c]:SMULX8 a0, a7, a3<br> [0x80000330]:sw a0, 64(ra)<br>   |
|  21|[0x800022b0]<br>0x1040F908|- rs1 : x22<br> - rs2 : x3<br> - rs2_b3_val == 8<br> - rs1_b1_val == -86<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000348]:SMULX8 t1, s6, gp<br> [0x8000034c]:sw t1, 72(ra)<br>   |
|  22|[0x800022b8]<br>0xDF077FF6|- rs1 : x19<br> - rs2 : x22<br> - rs2_b3_val == 2<br> - rs2_b1_val == -33<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000364]:SMULX8 a0, s3, s6<br> [0x80000368]:sw a0, 80(ra)<br>   |
|  23|[0x800022c0]<br>0x400809FB|- rs1 : x13<br> - rs2 : x27<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000380]:SMULX8 t3, a3, s11<br> [0x80000384]:sw t3, 88(ra)<br>  |
|  24|[0x800022c8]<br>0x7F09FF03|- rs1 : x28<br> - rs2 : x11<br> - rs2_b3_val == -1<br> - rs1_b3_val == 32<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000039c]:SMULX8 a6, t3, a1<br> [0x800003a0]:sw a6, 96(ra)<br>   |
|  25|[0x800022d0]<br>0xFDFEFF06|- rs1 : x15<br> - rs2 : x23<br> - rs2_b2_val == 85<br> - rs2_b1_val == 8<br> - rs1_b2_val == 0<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003b8]:SMULX8 s4, a5, s7<br> [0x800003bc]:sw s4, 104(ra)<br>  |
|  26|[0x800022d8]<br>0xFDFEFF06|- rs1 : x11<br> - rs2 : x29<br> - rs2_b2_val == 127<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800003dc]:SMULX8 s4, a1, t4<br> [0x800003e0]:sw s4, 0(ra)<br>    |
|  27|[0x800022e0]<br>0x0220DF40|- rs1 : x20<br> - rs2 : x19<br> - rs2_b2_val == -65<br> - rs2_b0_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003f8]:SMULX8 s6, s4, s3<br> [0x800003fc]:sw s6, 8(ra)<br>    |
|  28|[0x800022e8]<br>0xBFDDB7D5|- rs1 : x8<br> - rs2 : x26<br> - rs1_b2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000414]:SMULX8 tp, fp, s10<br> [0x80000418]:sw tp, 16(ra)<br>  |
|  29|[0x800022f0]<br>0xFE03BF01|- rs1 : x25<br> - rs2 : x4<br> - rs2_b0_val == -33<br> - rs1_b2_val == -17<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000430]:SMULX8 s2, s9, tp<br> [0x80000434]:sw s2, 24(ra)<br>   |
|  30|[0x800022f8]<br>0x01FAFE3F|- rs1 : x4<br> - rs2 : x12<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000448]:SMULX8 s4, tp, a2<br> [0x8000044c]:sw s4, 32(ra)<br>   |
|  31|[0x80002300]<br>0x2000803F|- rs1 : x0<br> - rs2 : x18<br> - rs2_b1_val == 4<br> - rs2_b0_val == 85<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000464]:SMULX8 t5, zero, s2<br> [0x80000468]:sw t5, 40(ra)<br> |
|  32|[0x80002308]<br>0xFCF98000|- rs1 : x29<br> - rs2 : x10<br> - rs1_b2_val == 4<br> - rs1_b1_val == 16<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000480]:SMULX8 a2, t4, a0<br> [0x80000484]:sw a2, 48(ra)<br>   |
|  33|[0x80002310]<br>0x2000803F|- rs2_b2_val == -1<br> - rs2_b1_val == 64<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000049c]:SMULX8 t5, t6, t4<br> [0x800004a0]:sw t5, 56(ra)<br>   |
|  34|[0x80002318]<br>0x2000803F|- rs1_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800004b8]:SMULX8 t5, t6, t4<br> [0x800004bc]:sw t5, 64(ra)<br>   |
|  35|[0x80002320]<br>0x2000803F|- rs1_b1_val == -33<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800004d4]:SMULX8 t5, t6, t4<br> [0x800004d8]:sw t5, 72(ra)<br>   |
|  36|[0x80002328]<br>0x2000803F|- rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800004f0]:SMULX8 t5, t6, t4<br> [0x800004f4]:sw t5, 80(ra)<br>   |
|  37|[0x80002330]<br>0x2000803F|- rs2_b2_val == 4<br> - rs2_b1_val == -65<br> - rs2_b0_val == 32<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000050c]:SMULX8 t5, t6, t4<br> [0x80000510]:sw t5, 88(ra)<br>   |
|  38|[0x80002338]<br>0x2000803F|- rs2_b1_val == -17<br> - rs1_b1_val == 64<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000528]:SMULX8 t5, t6, t4<br> [0x8000052c]:sw t5, 96(ra)<br>   |
|  39|[0x80002340]<br>0x2000803F|- rs2_b2_val == -17<br> - rs2_b1_val == 16<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000544]:SMULX8 t5, t6, t4<br> [0x80000548]:sw t5, 104(ra)<br>  |
|  40|[0x80002348]<br>0x2000803F|- rs2_b1_val == 32<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000560]:SMULX8 t5, t6, t4<br> [0x80000564]:sw t5, 112(ra)<br>  |
|  41|[0x80002350]<br>0x2000803F|- rs2_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000057c]:SMULX8 t5, t6, t4<br> [0x80000580]:sw t5, 120(ra)<br>  |
|  42|[0x80002358]<br>0x2000803F|- rs2_b2_val == -33<br> - rs2_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000598]:SMULX8 t5, t6, t4<br> [0x8000059c]:sw t5, 128(ra)<br>  |
|  43|[0x80002360]<br>0x2000803F|- rs2_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800005b4]:SMULX8 t5, t6, t4<br> [0x800005b8]:sw t5, 136(ra)<br>  |
|  44|[0x80002368]<br>0x2000803F|- rs2_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800005d0]:SMULX8 t5, t6, t4<br> [0x800005d4]:sw t5, 144(ra)<br>  |
|  45|[0x80002370]<br>0x2000803F|- rs2_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800005ec]:SMULX8 t5, t6, t4<br> [0x800005f0]:sw t5, 152(ra)<br>  |
|  46|[0x80002378]<br>0x2000803F|- rs2_b0_val == -17<br> - rs1_b2_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000608]:SMULX8 t5, t6, t4<br> [0x8000060c]:sw t5, 160(ra)<br>  |
|  47|[0x80002380]<br>0x2000803F|- rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000624]:SMULX8 t5, t6, t4<br> [0x80000628]:sw t5, 168(ra)<br>  |
|  48|[0x80002388]<br>0x2000803F|- rs2_b0_val == 16<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000640]:SMULX8 t5, t6, t4<br> [0x80000644]:sw t5, 176(ra)<br>  |
|  49|[0x80002398]<br>0x2000803F|- rs2_b0_val == 8<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000678]:SMULX8 t5, t6, t4<br> [0x8000067c]:sw t5, 192(ra)<br>  |
|  50|[0x800023a0]<br>0x2000803F|- rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000694]:SMULX8 t5, t6, t4<br> [0x80000698]:sw t5, 200(ra)<br>  |
|  51|[0x800023a8]<br>0x2000803F|- rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006b0]:SMULX8 t5, t6, t4<br> [0x800006b4]:sw t5, 208(ra)<br>  |
|  52|[0x800023b0]<br>0x2000803F|- rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006cc]:SMULX8 t5, t6, t4<br> [0x800006d0]:sw t5, 216(ra)<br>  |
|  53|[0x800023b8]<br>0x2000803F|- rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006e8]:SMULX8 t5, t6, t4<br> [0x800006ec]:sw t5, 224(ra)<br>  |
|  54|[0x800023c0]<br>0x2000803F|- rs2_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000704]:SMULX8 t5, t6, t4<br> [0x80000708]:sw t5, 232(ra)<br>  |
|  55|[0x800023c8]<br>0x2000803F|- rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000720]:SMULX8 t5, t6, t4<br> [0x80000724]:sw t5, 240(ra)<br>  |
|  56|[0x800023d0]<br>0x2000803F|- rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000073c]:SMULX8 t5, t6, t4<br> [0x80000740]:sw t5, 248(ra)<br>  |
|  57|[0x800023d8]<br>0x2000803F|- rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000758]:SMULX8 t5, t6, t4<br> [0x8000075c]:sw t5, 256(ra)<br>  |
|  58|[0x800023e0]<br>0x2000803F|- rs1_b3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000774]:SMULX8 t5, t6, t4<br> [0x80000778]:sw t5, 264(ra)<br>  |
|  59|[0x800023e8]<br>0x2000803F|- rs2_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000790]:SMULX8 t5, t6, t4<br> [0x80000794]:sw t5, 272(ra)<br>  |
|  60|[0x800023f0]<br>0x2000803F|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800007ac]:SMULX8 t5, t6, t4<br> [0x800007b0]:sw t5, 280(ra)<br>  |
|  61|[0x800023f8]<br>0x2000803F|- rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800007c8]:SMULX8 t5, t6, t4<br> [0x800007cc]:sw t5, 288(ra)<br>  |
|  62|[0x80002400]<br>0x2000803F|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800007e4]:SMULX8 t5, t6, t4<br> [0x800007e8]:sw t5, 296(ra)<br>  |
|  63|[0x80002408]<br>0x2000803F|- rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000800]:SMULX8 t5, t6, t4<br> [0x80000804]:sw t5, 304(ra)<br>  |
|  64|[0x80002410]<br>0x2000803F|- rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000081c]:SMULX8 t5, t6, t4<br> [0x80000820]:sw t5, 312(ra)<br>  |
|  65|[0x80002420]<br>0x2000803F|- rs2_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000854]:SMULX8 t5, t6, t4<br> [0x80000858]:sw t5, 328(ra)<br>  |
|  66|[0x80002428]<br>0x2000803F|- rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000870]:SMULX8 t5, t6, t4<br> [0x80000874]:sw t5, 336(ra)<br>  |
