
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a70')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kmsxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmsxda-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 154      |
| STAT1                     | 72      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000764]:KMSXDA t6, t5, t4
      [0x80000768]:csrrs t5, vxsat, zero
      [0x8000076c]:sw t6, 176(ra)
 -- Signature Address: 0x800023b0 Data: 0x237D7637
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -3
      - rs2_h0_val == 0
      - rs1_h1_val == -17
      - rs1_h0_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a4]:KMSXDA t6, t5, t4
      [0x800008a8]:csrrs t5, vxsat, zero
      [0x800008ac]:sw t6, 256(ra)
 -- Signature Address: 0x80002400 Data: 0x23BF6E73
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs1_h0_val == 32767




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:KMSXDA t6, t5, t4
      [0x80000a1c]:csrrs t5, vxsat, zero
      [0x80000a20]:sw t6, 352(ra)
 -- Signature Address: 0x80002460 Data: 0x233DD1C1
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -257
      - rs2_h0_val == -2
      - rs1_h1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:KMSXDA t6, t5, t4
      [0x80000a3c]:csrrs t5, vxsat, zero
      [0x80000a40]:sw t6, 360(ra)
 -- Signature Address: 0x80002468 Data: 0x233D5032
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -129
      - rs2_h0_val == -2
      - rs1_h0_val == -257




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:KMSXDA t6, t5, t4
      [0x80000a58]:csrrs t5, vxsat, zero
      [0x80000a5c]:sw t6, 368(ra)
 -- Signature Address: 0x80002470 Data: 0x232E4831
 -- Redundant Coverpoints hit by the op
      - opcode : kmsxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -1025
      - rs2_h0_val == 8192
      - rs1_h0_val == -1025






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmsxda', 'rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0']
Last Code Sequence : 
	-[0x80000118]:KMSXDA s7, s7, s7
	-[0x8000011c]:csrrs s7, vxsat, zero
	-[0x80000120]:sw s7, 0(t2)
Current Store : [0x80000124] : sw s7, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x16', 'rd : x27', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h1_val == -65', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000138]:KMSXDA s11, a6, a6
	-[0x8000013c]:csrrs a6, vxsat, zero
	-[0x80000140]:sw s11, 8(t2)
Current Store : [0x80000144] : sw a6, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000158]:KMSXDA a4, t4, s10
	-[0x8000015c]:csrrs t4, vxsat, zero
	-[0x80000160]:sw a4, 16(t2)
Current Store : [0x80000164] : sw t4, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rd : x10', 'rs2 == rd != rs1', 'rs2_h1_val == -257', 'rs2_h0_val == -2', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000178]:KMSXDA a0, zero, a0
	-[0x8000017c]:csrrs zero, vxsat, zero
	-[0x80000180]:sw a0, 24(t2)
Current Store : [0x80000184] : sw zero, 28(t2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rd : x2', 'rs1 == rd != rs2', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000198]:KMSXDA sp, sp, fp
	-[0x8000019c]:csrrs sp, vxsat, zero
	-[0x800001a0]:sw sp, 32(t2)
Current Store : [0x800001a4] : sw sp, 36(t2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x28', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h0_val == 64', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800001b8]:KMSXDA t3, a3, s3
	-[0x800001bc]:csrrs a3, vxsat, zero
	-[0x800001c0]:sw t3, 40(t2)
Current Store : [0x800001c4] : sw a3, 44(t2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x5', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs1_h1_val == -1', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001d8]:KMSXDA t0, gp, a7
	-[0x800001dc]:csrrs gp, vxsat, zero
	-[0x800001e0]:sw t0, 48(t2)
Current Store : [0x800001e4] : sw gp, 52(t2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x21', 'rs2_h1_val == 21845', 'rs2_h0_val == -32768', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800001f4]:KMSXDA s5, a4, t6
	-[0x800001f8]:csrrs a4, vxsat, zero
	-[0x800001fc]:sw s5, 56(t2)
Current Store : [0x80000200] : sw a4, 60(t2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x4', 'rs2_h1_val == 32767', 'rs2_h0_val == -2049', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000210]:KMSXDA tp, fp, gp
	-[0x80000214]:csrrs fp, vxsat, zero
	-[0x80000218]:sw tp, 64(t2)
Current Store : [0x8000021c] : sw fp, 68(t2) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x12', 'rs2_h1_val == -16385', 'rs2_h0_val == -17', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000022c]:KMSXDA a2, s1, s9
	-[0x80000230]:csrrs s1, vxsat, zero
	-[0x80000234]:sw a2, 72(t2)
Current Store : [0x80000238] : sw s1, 76(t2) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x20', 'rs2_h1_val == -8193', 'rs2_h0_val == -33', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000248]:KMSXDA s4, a1, s2
	-[0x8000024c]:csrrs a1, vxsat, zero
	-[0x80000250]:sw s4, 80(t2)
Current Store : [0x80000254] : sw a1, 84(t2) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x12', 'rd : x30', 'rs2_h1_val == -4097', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000268]:KMSXDA t5, a0, a2
	-[0x8000026c]:csrrs a0, vxsat, zero
	-[0x80000270]:sw t5, 88(t2)
Current Store : [0x80000274] : sw a0, 92(t2) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x4', 'rd : x18', 'rs2_h1_val == -1025', 'rs2_h0_val == 512', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000284]:KMSXDA s2, s10, tp
	-[0x80000288]:csrrs s10, vxsat, zero
	-[0x8000028c]:sw s2, 96(t2)
Current Store : [0x80000290] : sw s10, 100(t2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x16', 'rs2_h1_val == -513', 'rs2_h0_val == 1024', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800002a4]:KMSXDA a6, tp, t4
	-[0x800002a8]:csrrs tp, vxsat, zero
	-[0x800002ac]:sw a6, 104(t2)
Current Store : [0x800002b0] : sw tp, 108(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x9', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800002c4]:KMSXDA s1, a7, zero
	-[0x800002c8]:csrrs a7, vxsat, zero
	-[0x800002cc]:sw s1, 112(t2)
Current Store : [0x800002d0] : sw a7, 116(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -33', 'rs2_h0_val == -65', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800002e4]:KMSXDA ra, t5, t1
	-[0x800002e8]:csrrs t5, vxsat, zero
	-[0x800002ec]:sw ra, 120(t2)
Current Store : [0x800002f0] : sw t5, 124(t2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x5', 'rd : x11', 'rs2_h1_val == -17', 'rs2_h0_val == 2', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000308]:KMSXDA a1, s3, t0
	-[0x8000030c]:csrrs s3, vxsat, zero
	-[0x80000310]:sw a1, 0(tp)
Current Store : [0x80000314] : sw s3, 4(tp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x30', 'rd : x29', 'rs2_h1_val == -9', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000324]:KMSXDA t4, s5, t5
	-[0x80000328]:csrrs s5, vxsat, zero
	-[0x8000032c]:sw t4, 8(tp)
Current Store : [0x80000330] : sw s5, 12(tp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x9', 'rd : x17', 'rs2_h1_val == -5', 'rs2_h0_val == -5', 'rs1_h1_val == -2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000344]:KMSXDA a7, s11, s1
	-[0x80000348]:csrrs s11, vxsat, zero
	-[0x8000034c]:sw a7, 16(tp)
Current Store : [0x80000350] : sw s11, 20(tp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x7', 'rs2_h1_val == -3', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000360]:KMSXDA t2, a5, ra
	-[0x80000364]:csrrs a5, vxsat, zero
	-[0x80000368]:sw t2, 24(tp)
Current Store : [0x8000036c] : sw a5, 28(tp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x13', 'rs2_h1_val == -2', 'rs2_h0_val == -3', 'rs1_h1_val == -1025', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000380]:KMSXDA a3, s2, a5
	-[0x80000384]:csrrs s2, vxsat, zero
	-[0x80000388]:sw a3, 32(tp)
Current Store : [0x8000038c] : sw s2, 36(tp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x28', 'rd : x3', 'rs2_h1_val == -32768', 'rs2_h0_val == 4096', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x8000039c]:KMSXDA gp, s9, t3
	-[0x800003a0]:csrrs s9, vxsat, zero
	-[0x800003a4]:sw gp, 40(tp)
Current Store : [0x800003a8] : sw s9, 44(tp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x24', 'rs2_h1_val == 16384', 'rs2_h0_val == -9', 'rs1_h1_val == 16', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800003bc]:KMSXDA s8, s4, a1
	-[0x800003c0]:csrrs s4, vxsat, zero
	-[0x800003c4]:sw s8, 48(tp)
Current Store : [0x800003c8] : sw s4, 52(tp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x27', 'rd : x31', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x800003dc]:KMSXDA t6, t3, s11
	-[0x800003e0]:csrrs t3, vxsat, zero
	-[0x800003e4]:sw t6, 56(tp)
Current Store : [0x800003e8] : sw t3, 60(tp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x19', 'rs2_h1_val == 4096', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800003fc]:KMSXDA s3, t0, t2
	-[0x80000400]:csrrs t0, vxsat, zero
	-[0x80000404]:sw s3, 64(tp)
Current Store : [0x80000408] : sw t0, 68(tp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x13', 'rd : x26', 'rs2_h1_val == 2048', 'rs1_h1_val == 4', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000041c]:KMSXDA s10, s8, a3
	-[0x80000420]:csrrs s8, vxsat, zero
	-[0x80000424]:sw s10, 72(tp)
Current Store : [0x80000428] : sw s8, 76(tp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x24', 'rd : x6', 'rs2_h1_val == 1024', 'rs2_h0_val == -1025', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000438]:KMSXDA t1, t6, s8
	-[0x8000043c]:csrrs t6, vxsat, zero
	-[0x80000440]:sw t1, 80(tp)
Current Store : [0x80000444] : sw t6, 84(tp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x14', 'rd : x8', 'rs2_h1_val == 512', 'rs2_h0_val == 2048', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000458]:KMSXDA fp, ra, a4
	-[0x8000045c]:csrrs ra, vxsat, zero
	-[0x80000460]:sw fp, 88(tp)
Current Store : [0x80000464] : sw ra, 92(tp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x25', 'rs2_h1_val == 256', 'rs2_h0_val == 32', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000474]:KMSXDA s9, t2, s4
	-[0x80000478]:csrrs t2, vxsat, zero
	-[0x8000047c]:sw s9, 96(tp)
Current Store : [0x80000480] : sw t2, 100(tp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rd : x22', 'rs2_h1_val == 128', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000494]:KMSXDA s6, a2, sp
	-[0x80000498]:csrrs a2, vxsat, zero
	-[0x8000049c]:sw s6, 104(tp)
Current Store : [0x800004a0] : sw a2, 108(tp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x21', 'rd : x15', 'rs2_h1_val == 64', 'rs1_h1_val == 4096', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004bc]:KMSXDA a5, s6, s5
	-[0x800004c0]:csrrs s6, vxsat, zero
	-[0x800004c4]:sw a5, 0(ra)
Current Store : [0x800004c8] : sw s6, 4(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x0', 'rs2_h0_val == 8192', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004d8]:KMSXDA zero, t1, s6
	-[0x800004dc]:csrrs t1, vxsat, zero
	-[0x800004e0]:sw zero, 8(ra)
Current Store : [0x800004e4] : sw t1, 12(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == 16384', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004f8]:KMSXDA t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 16(ra)
Current Store : [0x80000504] : sw t5, 20(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000510]:KMSXDA t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 24(ra)
Current Store : [0x8000051c] : sw t5, 28(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000530]:KMSXDA t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 32(ra)
Current Store : [0x8000053c] : sw t5, 36(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000550]:KMSXDA t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 40(ra)
Current Store : [0x8000055c] : sw t5, 44(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000570]:KMSXDA t6, t5, t4
	-[0x80000574]:csrrs t5, vxsat, zero
	-[0x80000578]:sw t6, 48(ra)
Current Store : [0x8000057c] : sw t5, 52(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000058c]:KMSXDA t6, t5, t4
	-[0x80000590]:csrrs t5, vxsat, zero
	-[0x80000594]:sw t6, 56(ra)
Current Store : [0x80000598] : sw t5, 60(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == -4097', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800005ac]:KMSXDA t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 64(ra)
Current Store : [0x800005b8] : sw t5, 68(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005cc]:KMSXDA t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 72(ra)
Current Store : [0x800005d8] : sw t5, 76(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -3', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005ec]:KMSXDA t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 80(ra)
Current Store : [0x800005f8] : sw t5, 84(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h1_val == 8', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000060c]:KMSXDA t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 88(ra)
Current Store : [0x80000618] : sw t5, 92(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -8193', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000062c]:KMSXDA t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 96(ra)
Current Store : [0x80000638] : sw t5, 100(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000064c]:KMSXDA t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 104(ra)
Current Store : [0x80000658] : sw t5, 108(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -129', 'rs1_h1_val == -21846', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000066c]:KMSXDA t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 112(ra)
Current Store : [0x80000678] : sw t5, 116(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000068c]:KMSXDA t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 120(ra)
Current Store : [0x80000698] : sw t5, 124(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800006ac]:KMSXDA t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 128(ra)
Current Store : [0x800006b8] : sw t5, 132(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800006c8]:KMSXDA t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 136(ra)
Current Store : [0x800006d4] : sw t5, 140(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800006e8]:KMSXDA t6, t5, t4
	-[0x800006ec]:csrrs t5, vxsat, zero
	-[0x800006f0]:sw t6, 144(ra)
Current Store : [0x800006f4] : sw t5, 148(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000708]:KMSXDA t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 152(ra)
Current Store : [0x80000714] : sw t5, 156(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000728]:KMSXDA t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 160(ra)
Current Store : [0x80000734] : sw t5, 164(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000748]:KMSXDA t6, t5, t4
	-[0x8000074c]:csrrs t5, vxsat, zero
	-[0x80000750]:sw t6, 168(ra)
Current Store : [0x80000754] : sw t5, 172(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -3', 'rs2_h0_val == 0', 'rs1_h1_val == -17', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000764]:KMSXDA t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 176(ra)
Current Store : [0x80000770] : sw t5, 180(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000784]:KMSXDA t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 184(ra)
Current Store : [0x80000790] : sw t5, 188(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800007a4]:KMSXDA t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 192(ra)
Current Store : [0x800007b0] : sw t5, 196(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800007c4]:KMSXDA t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 200(ra)
Current Store : [0x800007d0] : sw t5, 204(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800007e4]:KMSXDA t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 208(ra)
Current Store : [0x800007f0] : sw t5, 212(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000804]:KMSXDA t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 216(ra)
Current Store : [0x80000810] : sw t5, 220(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000824]:KMSXDA t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 224(ra)
Current Store : [0x80000830] : sw t5, 228(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000844]:KMSXDA t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 232(ra)
Current Store : [0x80000850] : sw t5, 236(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000864]:KMSXDA t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 240(ra)
Current Store : [0x80000870] : sw t5, 244(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000884]:KMSXDA t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 248(ra)
Current Store : [0x80000890] : sw t5, 252(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008a4]:KMSXDA t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 256(ra)
Current Store : [0x800008b0] : sw t5, 260(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800008c4]:KMSXDA t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 264(ra)
Current Store : [0x800008d0] : sw t5, 268(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800008e0]:KMSXDA t6, t5, t4
	-[0x800008e4]:csrrs t5, vxsat, zero
	-[0x800008e8]:sw t6, 272(ra)
Current Store : [0x800008ec] : sw t5, 276(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000900]:KMSXDA t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 280(ra)
Current Store : [0x8000090c] : sw t5, 284(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x8000091c]:KMSXDA t6, t5, t4
	-[0x80000920]:csrrs t5, vxsat, zero
	-[0x80000924]:sw t6, 288(ra)
Current Store : [0x80000928] : sw t5, 292(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x8000093c]:KMSXDA t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 296(ra)
Current Store : [0x80000948] : sw t5, 300(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x8000095c]:KMSXDA t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 304(ra)
Current Store : [0x80000968] : sw t5, 308(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000097c]:KMSXDA t6, t5, t4
	-[0x80000980]:csrrs t5, vxsat, zero
	-[0x80000984]:sw t6, 312(ra)
Current Store : [0x80000988] : sw t5, 316(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000099c]:KMSXDA t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 320(ra)
Current Store : [0x800009a8] : sw t5, 324(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h1_val == 2', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800009bc]:KMSXDA t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 328(ra)
Current Store : [0x800009c8] : sw t5, 332(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800009dc]:KMSXDA t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 336(ra)
Current Store : [0x800009e8] : sw t5, 340(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009f8]:KMSXDA t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 344(ra)
Current Store : [0x80000a04] : sw t5, 348(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -257', 'rs2_h0_val == -2', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000a18]:KMSXDA t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 352(ra)
Current Store : [0x80000a24] : sw t5, 356(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -129', 'rs2_h0_val == -2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000a38]:KMSXDA t6, t5, t4
	-[0x80000a3c]:csrrs t5, vxsat, zero
	-[0x80000a40]:sw t6, 360(ra)
Current Store : [0x80000a44] : sw t5, 364(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['opcode : kmsxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -1025', 'rs2_h0_val == 8192', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000a54]:KMSXDA t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 368(ra)
Current Store : [0x80000a60] : sw t5, 372(ra) -- Store: [0x80002474]:0x00000001





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

|s.no|        signature         |                                                                                                               coverpoints                                                                                                                |                                                    code                                                     |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmsxda<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> |[0x80000118]:KMSXDA s7, s7, s7<br> [0x8000011c]:csrrs s7, vxsat, zero<br> [0x80000120]:sw s7, 0(t2)<br>      |
|   2|[0x80002218]<br>0xBB6FA66B|- rs1 : x16<br> - rs2 : x16<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -65<br> - rs1_h1_val == -65<br>                                                                             |[0x80000138]:KMSXDA s11, a6, a6<br> [0x8000013c]:csrrs a6, vxsat, zero<br> [0x80000140]:sw s11, 8(t2)<br>    |
|   3|[0x80002220]<br>0xF56FF7B1|- rs1 : x29<br> - rs2 : x26<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 32<br>                 |[0x80000158]:KMSXDA a4, t4, s10<br> [0x8000015c]:csrrs t4, vxsat, zero<br> [0x80000160]:sw a4, 16(t2)<br>    |
|   4|[0x80002228]<br>0xFEFFFFFE|- rs1 : x0<br> - rs2 : x10<br> - rd : x10<br> - rs2 == rd != rs1<br> - rs2_h1_val == -257<br> - rs2_h0_val == -2<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                          |[0x80000178]:KMSXDA a0, zero, a0<br> [0x8000017c]:csrrs zero, vxsat, zero<br> [0x80000180]:sw a0, 24(t2)<br> |
|   5|[0x80002230]<br>0x00000000|- rs1 : x2<br> - rs2 : x8<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -257<br>                                                                             |[0x80000198]:KMSXDA sp, sp, fp<br> [0x8000019c]:csrrs sp, vxsat, zero<br> [0x800001a0]:sw sp, 32(t2)<br>     |
|   6|[0x80002238]<br>0xDDB7D7C2|- rs1 : x13<br> - rs2 : x19<br> - rd : x28<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h0_val == 64<br> - rs1_h0_val == -1<br>                                                                                                      |[0x800001b8]:KMSXDA t3, a3, s3<br> [0x800001bc]:csrrs a3, vxsat, zero<br> [0x800001c0]:sw t3, 40(t2)<br>     |
|   7|[0x80002240]<br>0x802AABF6|- rs1 : x3<br> - rs2 : x17<br> - rd : x5<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs1_h1_val == -1<br> - rs1_h0_val == 128<br>                                                                            |[0x800001d8]:KMSXDA t0, gp, a7<br> [0x800001dc]:csrrs gp, vxsat, zero<br> [0x800001e0]:sw t0, 48(t2)<br>     |
|   8|[0x80002248]<br>0xBB4035EE|- rs1 : x14<br> - rs2 : x31<br> - rd : x21<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -32768<br> - rs1_h0_val == 512<br>                                                                                                               |[0x800001f4]:KMSXDA s5, a4, t6<br> [0x800001f8]:csrrs a4, vxsat, zero<br> [0x800001fc]:sw s5, 56(t2)<br>     |
|   9|[0x80002250]<br>0xAFDDB7D1|- rs1 : x8<br> - rs2 : x3<br> - rd : x4<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -2049<br> - rs1_h0_val == 8192<br>                                                                                                                  |[0x80000210]:KMSXDA tp, fp, gp<br> [0x80000214]:csrrs fp, vxsat, zero<br> [0x80000218]:sw tp, 64(t2)<br>     |
|  10|[0x80002258]<br>0xDDBFFC96|- rs1 : x9<br> - rs2 : x25<br> - rd : x12<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -17<br> - rs1_h1_val == -17<br>                                                                                                                  |[0x8000022c]:KMSXDA a2, s1, s9<br> [0x80000230]:csrrs s1, vxsat, zero<br> [0x80000234]:sw a2, 72(t2)<br>     |
|  11|[0x80002260]<br>0xB855C3DD|- rs1 : x11<br> - rs2 : x18<br> - rd : x20<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -33<br> - rs1_h0_val == 1024<br>                                                                                                                 |[0x80000248]:KMSXDA s4, a1, s2<br> [0x8000024c]:csrrs a1, vxsat, zero<br> [0x80000250]:sw s4, 80(t2)<br>     |
|  12|[0x80002268]<br>0xF76E34D3|- rs1 : x10<br> - rs2 : x12<br> - rd : x30<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -129<br>                                                                                                                                         |[0x80000268]:KMSXDA t5, a0, a2<br> [0x8000026c]:csrrs a0, vxsat, zero<br> [0x80000270]:sw t5, 88(t2)<br>     |
|  13|[0x80002270]<br>0xDF0001DF|- rs1 : x26<br> - rs2 : x4<br> - rd : x18<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 512<br> - rs1_h1_val == -33<br>                                                                                                                   |[0x80000284]:KMSXDA s2, s10, tp<br> [0x80000288]:csrrs s10, vxsat, zero<br> [0x8000028c]:sw s2, 96(t2)<br>   |
|  14|[0x80002278]<br>0xFF5582AA|- rs1 : x4<br> - rs2 : x29<br> - rd : x16<br> - rs2_h1_val == -513<br> - rs2_h0_val == 1024<br> - rs1_h0_val == -21846<br>                                                                                                                |[0x800002a4]:KMSXDA a6, tp, t4<br> [0x800002a8]:csrrs tp, vxsat, zero<br> [0x800002ac]:sw a6, 104(t2)<br>    |
|  15|[0x80002280]<br>0x00000000|- rs1 : x17<br> - rs2 : x0<br> - rd : x9<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -257<br>                                                                                                                         |[0x800002c4]:KMSXDA s1, a7, zero<br> [0x800002c8]:csrrs a7, vxsat, zero<br> [0x800002cc]:sw s1, 112(t2)<br>  |
|  16|[0x80002288]<br>0xFF0E3DA6|- rs1 : x30<br> - rs2 : x6<br> - rd : x1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -33<br> - rs2_h0_val == -65<br> - rs1_h1_val == 32767<br>                                                                            |[0x800002e4]:KMSXDA ra, t5, t1<br> [0x800002e8]:csrrs t5, vxsat, zero<br> [0x800002ec]:sw ra, 120(t2)<br>    |
|  17|[0x80002290]<br>0x00044202|- rs1 : x19<br> - rs2 : x5<br> - rd : x11<br> - rs2_h1_val == -17<br> - rs2_h0_val == 2<br> - rs1_h0_val == 16384<br>                                                                                                                     |[0x80000308]:KMSXDA a1, s3, t0<br> [0x8000030c]:csrrs s3, vxsat, zero<br> [0x80000310]:sw a1, 0(tp)<br>      |
|  18|[0x80002298]<br>0xFDF9C3FA|- rs1 : x21<br> - rs2 : x30<br> - rd : x29<br> - rs2_h1_val == -9<br> - rs1_h1_val == -9<br>                                                                                                                                              |[0x80000324]:KMSXDA t4, s5, t5<br> [0x80000328]:csrrs s5, vxsat, zero<br> [0x8000032c]:sw t4, 8(tp)<br>      |
|  19|[0x800022a0]<br>0xFFFFFF51|- rs1 : x27<br> - rs2 : x9<br> - rd : x17<br> - rs2_h1_val == -5<br> - rs2_h0_val == -5<br> - rs1_h1_val == -2<br> - rs1_h0_val == -33<br>                                                                                                |[0x80000344]:KMSXDA a7, s11, s1<br> [0x80000348]:csrrs s11, vxsat, zero<br> [0x8000034c]:sw a7, 16(tp)<br>   |
|  20|[0x800022a8]<br>0x80000000|- rs1 : x15<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == -3<br> - rs1_h0_val == 64<br>                                                                                                                                                |[0x80000360]:KMSXDA t2, a5, ra<br> [0x80000364]:csrrs a5, vxsat, zero<br> [0x80000368]:sw t2, 24(tp)<br>     |
|  21|[0x800022b0]<br>0xFFFFE3FB|- rs1 : x18<br> - rs2 : x15<br> - rd : x13<br> - rs2_h1_val == -2<br> - rs2_h0_val == -3<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -2049<br>                                                                                          |[0x80000380]:KMSXDA a3, s2, a5<br> [0x80000384]:csrrs s2, vxsat, zero<br> [0x80000388]:sw a3, 32(tp)<br>     |
|  22|[0x800022b8]<br>0x7FFFFFFF|- rs1 : x25<br> - rs2 : x28<br> - rd : x3<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 21845<br>                                                                                                               |[0x8000039c]:KMSXDA gp, s9, t3<br> [0x800003a0]:csrrs s9, vxsat, zero<br> [0x800003a4]:sw gp, 40(tp)<br>     |
|  23|[0x800022c0]<br>0xDB819C8D|- rs1 : x20<br> - rs2 : x11<br> - rd : x24<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -9<br> - rs1_h1_val == 16<br> - rs1_h0_val == -17<br>                                                                                            |[0x800003bc]:KMSXDA s8, s4, a1<br> [0x800003c0]:csrrs s4, vxsat, zero<br> [0x800003c4]:sw s8, 48(tp)<br>     |
|  24|[0x800022c8]<br>0x4D559FBA|- rs1 : x28<br> - rs2 : x27<br> - rd : x31<br> - rs2_h1_val == 8192<br>                                                                                                                                                                   |[0x800003dc]:KMSXDA t6, t3, s11<br> [0x800003e0]:csrrs t3, vxsat, zero<br> [0x800003e4]:sw t6, 56(tp)<br>    |
|  25|[0x800022d0]<br>0x00004FFC|- rs1 : x5<br> - rs2 : x7<br> - rd : x19<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -2049<br>                                                                                                                                           |[0x800003fc]:KMSXDA s3, t0, t2<br> [0x80000400]:csrrs t0, vxsat, zero<br> [0x80000404]:sw s3, 64(tp)<br>     |
|  26|[0x800022d8]<br>0x008007E4|- rs1 : x24<br> - rs2 : x13<br> - rd : x26<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 4<br> - rs1_h0_val == -4097<br>                                                                                                                   |[0x8000041c]:KMSXDA s10, s8, a3<br> [0x80000420]:csrrs s8, vxsat, zero<br> [0x80000424]:sw s10, 72(tp)<br>   |
|  27|[0x800022e0]<br>0xFFD7F9BE|- rs1 : x31<br> - rs2 : x24<br> - rd : x6<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -513<br>                                                                                                                 |[0x80000438]:KMSXDA t1, t6, s8<br> [0x8000043c]:csrrs t6, vxsat, zero<br> [0x80000440]:sw t1, 80(tp)<br>     |
|  28|[0x800022e8]<br>0x00880A00|- rs1 : x1<br> - rs2 : x14<br> - rd : x8<br> - rs2_h1_val == 512<br> - rs2_h0_val == 2048<br> - rs1_h0_val == -16385<br>                                                                                                                  |[0x80000458]:KMSXDA fp, ra, a4<br> [0x8000045c]:csrrs ra, vxsat, zero<br> [0x80000460]:sw fp, 88(tp)<br>     |
|  29|[0x800022f0]<br>0xFFE80021|- rs1 : x7<br> - rs2 : x20<br> - rd : x25<br> - rs2_h1_val == 256<br> - rs2_h0_val == 32<br> - rs1_h1_val == -16385<br>                                                                                                                   |[0x80000474]:KMSXDA s9, t2, s4<br> [0x80000478]:csrrs t2, vxsat, zero<br> [0x8000047c]:sw s9, 96(tp)<br>     |
|  30|[0x800022f8]<br>0x6DF5724A|- rs1 : x12<br> - rs2 : x2<br> - rd : x22<br> - rs2_h1_val == 128<br> - rs1_h0_val == -5<br>                                                                                                                                              |[0x80000494]:KMSXDA s6, a2, sp<br> [0x80000498]:csrrs a2, vxsat, zero<br> [0x8000049c]:sw s6, 104(tp)<br>    |
|  31|[0x80002300]<br>0x0003903D|- rs1 : x22<br> - rs2 : x21<br> - rd : x15<br> - rs2_h1_val == 64<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -513<br>                                                                                                                   |[0x800004bc]:KMSXDA a5, s6, s5<br> [0x800004c0]:csrrs s6, vxsat, zero<br> [0x800004c4]:sw a5, 0(ra)<br>      |
|  32|[0x80002308]<br>0x00000000|- rs1 : x6<br> - rs2 : x22<br> - rd : x0<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -1025<br>                                                                                                                                           |[0x800004d8]:KMSXDA zero, t1, s6<br> [0x800004dc]:csrrs t1, vxsat, zero<br> [0x800004e0]:sw zero, 8(ra)<br>  |
|  33|[0x80002310]<br>0x15555F40|- rs2_h0_val == -21846<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -129<br>                                                                                                                                                             |[0x800004f8]:KMSXDA t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 16(ra)<br>     |
|  34|[0x80002318]<br>0x15551DBA|- rs1_h0_val == -65<br>                                                                                                                                                                                                                   |[0x80000510]:KMSXDA t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 24(ra)<br>     |
|  35|[0x80002320]<br>0x1555ADE4|- rs1_h0_val == -9<br>                                                                                                                                                                                                                    |[0x80000530]:KMSXDA t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 32(ra)<br>     |
|  36|[0x80002328]<br>0x1559AE49|- rs2_h0_val == 128<br> - rs1_h0_val == -3<br>                                                                                                                                                                                            |[0x80000550]:KMSXDA t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 40(ra)<br>     |
|  37|[0x80002330]<br>0x1559AEAD|- rs1_h0_val == -2<br>                                                                                                                                                                                                                    |[0x80000570]:KMSXDA t6, t5, t4<br> [0x80000574]:csrrs t5, vxsat, zero<br> [0x80000578]:sw t6, 48(ra)<br>     |
|  38|[0x80002338]<br>0x155A7C8C|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                  |[0x8000058c]:KMSXDA t6, t5, t4<br> [0x80000590]:csrrs t5, vxsat, zero<br> [0x80000594]:sw t6, 56(ra)<br>     |
|  39|[0x80002340]<br>0x14D9E48B|- rs2_h1_val == 16<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 2048<br>                                                                                                                                                                 |[0x800005ac]:KMSXDA t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 64(ra)<br>     |
|  40|[0x80002348]<br>0x14C440B5|- rs1_h0_val == 256<br>                                                                                                                                                                                                                   |[0x800005cc]:KMSXDA t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 72(ra)<br>     |
|  41|[0x80002350]<br>0x14B9962D|- rs2_h0_val == 8<br> - rs1_h1_val == -3<br> - rs1_h0_val == 32<br>                                                                                                                                                                       |[0x800005ec]:KMSXDA t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 80(ra)<br>     |
|  42|[0x80002358]<br>0x14B98635|- rs2_h0_val == -513<br> - rs1_h1_val == 8<br> - rs1_h0_val == 16<br>                                                                                                                                                                     |[0x8000060c]:KMSXDA t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 88(ra)<br>     |
|  43|[0x80002360]<br>0x14B8263A|- rs1_h1_val == -8193<br> - rs1_h0_val == 8<br>                                                                                                                                                                                           |[0x8000062c]:KMSXDA t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 96(ra)<br>     |
|  44|[0x80002368]<br>0x14A8269A|- rs1_h0_val == 4<br>                                                                                                                                                                                                                     |[0x8000064c]:KMSXDA t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 104(ra)<br>    |
|  45|[0x80002370]<br>0x147D2640|- rs2_h1_val == 2<br> - rs2_h0_val == -129<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 2<br>                                                                                                                                           |[0x8000066c]:KMSXDA t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 112(ra)<br>    |
|  46|[0x80002378]<br>0x147D1E49|- rs1_h0_val == 1<br>                                                                                                                                                                                                                     |[0x8000068c]:KMSXDA t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 120(ra)<br>    |
|  47|[0x80002380]<br>0x147D4E1C|- rs2_h1_val == 8<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                           |[0x800006ac]:KMSXDA t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 128(ra)<br>    |
|  48|[0x80002388]<br>0x247D8E12|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                 |[0x800006c8]:KMSXDA t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 136(ra)<br>    |
|  49|[0x80002390]<br>0x237D8C12|- rs2_h0_val == 256<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                         |[0x800006e8]:KMSXDA t6, t5, t4<br> [0x800006ec]:csrrs t5, vxsat, zero<br> [0x800006f0]:sw t6, 144(ra)<br>    |
|  50|[0x80002398]<br>0x237D8C86|- rs2_h0_val == 16<br> - rs1_h1_val == -5<br>                                                                                                                                                                                             |[0x80000708]:KMSXDA t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 152(ra)<br>    |
|  51|[0x800023a0]<br>0x237D8609|- rs2_h0_val == 4<br> - rs1_h1_val == 512<br>                                                                                                                                                                                             |[0x80000728]:KMSXDA t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 160(ra)<br>    |
|  52|[0x800023a8]<br>0x237D8E3A|- rs2_h0_val == 1<br>                                                                                                                                                                                                                     |[0x80000748]:KMSXDA t6, t5, t4<br> [0x8000074c]:csrrs t5, vxsat, zero<br> [0x80000750]:sw t6, 168(ra)<br>    |
|  53|[0x800023b8]<br>0x237D7536|- rs2_h0_val == -1<br>                                                                                                                                                                                                                    |[0x80000784]:KMSXDA t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 184(ra)<br>    |
|  54|[0x800023c0]<br>0x237E752F|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                 |[0x800007a4]:KMSXDA t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 192(ra)<br>    |
|  55|[0x800023c8]<br>0x237FB528|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                |[0x800007c4]:KMSXDA t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 200(ra)<br>    |
|  56|[0x800023d0]<br>0x2387D546|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                  |[0x800007e4]:KMSXDA t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 208(ra)<br>    |
|  57|[0x800023d8]<br>0x23C81946|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                  |[0x80000804]:KMSXDA t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 216(ra)<br>    |
|  58|[0x800023e0]<br>0x23C6C402|- rs2_h1_val == 4<br>                                                                                                                                                                                                                     |[0x80000824]:KMSXDA t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 224(ra)<br>    |
|  59|[0x800023e8]<br>0x23C6EF82|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                  |[0x80000844]:KMSXDA t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 232(ra)<br>    |
|  60|[0x800023f0]<br>0x23BE6F93|- rs2_h1_val == 1<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                           |[0x80000864]:KMSXDA t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 240(ra)<br>    |
|  61|[0x800023f8]<br>0x23BF6E93|- rs1_h1_val == 256<br>                                                                                                                                                                                                                   |[0x80000884]:KMSXDA t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 248(ra)<br>    |
|  62|[0x80002408]<br>0x23DF8173|- rs1_h1_val == 128<br>                                                                                                                                                                                                                   |[0x800008c4]:KMSXDA t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 264(ra)<br>    |
|  63|[0x80002410]<br>0x23DF854B|- rs2_h1_val == -1<br>                                                                                                                                                                                                                    |[0x800008e0]:KMSXDA t6, t5, t4<br> [0x800008e4]:csrrs t5, vxsat, zero<br> [0x800008e8]:sw t6, 272(ra)<br>    |
|  64|[0x80002418]<br>0x23DF8201|- rs1_h1_val == 64<br>                                                                                                                                                                                                                    |[0x80000900]:KMSXDA t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 280(ra)<br>    |
|  65|[0x80002420]<br>0x23E12CAA|- rs1_h1_val == 32<br>                                                                                                                                                                                                                    |[0x8000091c]:KMSXDA t6, t5, t4<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sw t6, 288(ra)<br>    |
|  66|[0x80002428]<br>0x23E14206|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                 |[0x8000093c]:KMSXDA t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 296(ra)<br>    |
|  67|[0x80002430]<br>0x2361001D|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                |[0x8000095c]:KMSXDA t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 304(ra)<br>    |
|  68|[0x80002438]<br>0x2350CB9C|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                 |[0x8000097c]:KMSXDA t6, t5, t4<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sw t6, 312(ra)<br>    |
|  69|[0x80002440]<br>0x2348AA95|- rs2_h0_val == -257<br>                                                                                                                                                                                                                  |[0x8000099c]:KMSXDA t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 320(ra)<br>    |
|  70|[0x80002448]<br>0x23388A1A|- rs2_h1_val == -129<br> - rs1_h1_val == 2<br> - rs1_h0_val == -8193<br>                                                                                                                                                                  |[0x800009bc]:KMSXDA t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 328(ra)<br>    |
|  71|[0x80002450]<br>0x233ACA9B|- rs1_h1_val == 1<br>                                                                                                                                                                                                                     |[0x800009dc]:KMSXDA t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 336(ra)<br>    |
|  72|[0x80002458]<br>0x233DCABE|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                |[0x800009f8]:KMSXDA t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 344(ra)<br>    |
