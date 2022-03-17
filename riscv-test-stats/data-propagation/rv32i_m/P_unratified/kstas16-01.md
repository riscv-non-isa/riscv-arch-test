
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a30')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | kstas16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kstas16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 150      |
| STAT1                     | 71      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 75     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000099c]:KSTAS16 t6, t5, t4
      [0x800009a0]:csrrs t5, vxsat, zero
      [0x800009a4]:sw t6, 320(ra)
 -- Signature Address: 0x80002440 Data: 0x04001FFF
 -- Redundant Coverpoints hit by the op
      - opcode : kstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 1024
      - rs1_h1_val == 0
      - rs1_h0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d8]:KSTAS16 t6, t5, t4
      [0x800009dc]:csrrs t5, vxsat, zero
      [0x800009e0]:sw t6, 336(ra)
 -- Signature Address: 0x80002450 Data: 0xFFF6BFF8
 -- Redundant Coverpoints hit by the op
      - opcode : kstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -5
      - rs1_h1_val == -5
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f4]:KSTAS16 t6, t5, t4
      [0x800009f8]:csrrs t5, vxsat, zero
      [0x800009fc]:sw t6, 344(ra)
 -- Signature Address: 0x80002458 Data: 0xEFFB0006
 -- Redundant Coverpoints hit by the op
      - opcode : kstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -4097
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a14]:KSTAS16 t6, t5, t4
      [0x80000a18]:csrrs t5, vxsat, zero
      [0x80000a1c]:sw t6, 352(ra)
 -- Signature Address: 0x80002460 Data: 0x10085956
 -- Redundant Coverpoints hit by the op
      - opcode : kstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 4096
      - rs2_h0_val == -21846
      - rs1_h1_val == 8
      - rs1_h0_val == 1024






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstas16', 'rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 512', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000118]:KSTAS16 s7, s7, s7
	-[0x8000011c]:csrrs s7, vxsat, zero
	-[0x80000120]:sw s7, 0(gp)
Current Store : [0x80000124] : sw s7, 4(gp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x26', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -5', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000138]:KSTAS16 s10, s11, s11
	-[0x8000013c]:csrrs s11, vxsat, zero
	-[0x80000140]:sw s10, 8(gp)
Current Store : [0x80000144] : sw s11, 12(gp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x11', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -32768', 'rs2_h0_val == -33', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000158]:KSTAS16 sp, a7, a1
	-[0x8000015c]:csrrs a7, vxsat, zero
	-[0x80000160]:sw sp, 16(gp)
Current Store : [0x80000164] : sw a7, 20(gp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs2_h1_val == 256', 'rs2_h0_val == 4096', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000174]:KSTAS16 t0, t6, t0
	-[0x80000178]:csrrs t6, vxsat, zero
	-[0x8000017c]:sw t0, 24(gp)
Current Store : [0x80000180] : sw t6, 28(gp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x30', 'rs1 == rd != rs2', 'rs2_h1_val == 4', 'rs2_h0_val == -2049', 'rs1_h1_val == 1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000194]:KSTAS16 t5, t5, s2
	-[0x80000198]:csrrs t5, vxsat, zero
	-[0x8000019c]:sw t5, 32(gp)
Current Store : [0x800001a0] : sw t5, 36(gp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x24', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -16385', 'rs2_h0_val == -16385', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800001b4]:KSTAS16 s8, s1, a4
	-[0x800001b8]:csrrs s1, vxsat, zero
	-[0x800001bc]:sw s8, 40(gp)
Current Store : [0x800001c0] : sw s1, 44(gp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x22', 'rs2_h1_val == -21846', 'rs2_h0_val == 8192', 'rs1_h1_val == -8193', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800001cc]:KSTAS16 s6, tp, s10
	-[0x800001d0]:csrrs tp, vxsat, zero
	-[0x800001d4]:sw s6, 48(gp)
Current Store : [0x800001d8] : sw tp, 52(gp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x19', 'rd : x25', 'rs2_h1_val == 21845', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800001ec]:KSTAS16 s9, t4, s3
	-[0x800001f0]:csrrs t4, vxsat, zero
	-[0x800001f4]:sw s9, 56(gp)
Current Store : [0x800001f8] : sw t4, 60(gp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x1', 'rs2_h1_val == 32767', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000020c]:KSTAS16 ra, a6, t5
	-[0x80000210]:csrrs a6, vxsat, zero
	-[0x80000214]:sw ra, 64(gp)
Current Store : [0x80000218] : sw a6, 68(gp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x6', 'rd : x16', 'rs2_h1_val == -8193', 'rs2_h0_val == 21845', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000022c]:KSTAS16 a6, s3, t1
	-[0x80000230]:csrrs s3, vxsat, zero
	-[0x80000234]:sw a6, 72(gp)
Current Store : [0x80000238] : sw s3, 76(gp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x6', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000248]:KSTAS16 t1, t2, zero
	-[0x8000024c]:csrrs t2, vxsat, zero
	-[0x80000250]:sw t1, 80(gp)
Current Store : [0x80000254] : sw t2, 84(gp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x21', 'rd : x20', 'rs2_h1_val == -2049', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000268]:KSTAS16 s4, t1, s5
	-[0x8000026c]:csrrs t1, vxsat, zero
	-[0x80000270]:sw s4, 88(gp)
Current Store : [0x80000274] : sw t1, 92(gp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rd : x11', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -1025', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000288]:KSTAS16 a1, s9, t4
	-[0x8000028c]:csrrs s9, vxsat, zero
	-[0x80000290]:sw a1, 96(gp)
Current Store : [0x80000294] : sw s9, 100(gp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x8', 'rd : x15', 'rs2_h1_val == -513', 'rs2_h0_val == -3', 'rs1_h1_val == 8192', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800002a8]:KSTAS16 a5, s2, fp
	-[0x800002ac]:csrrs s2, vxsat, zero
	-[0x800002b0]:sw a5, 104(gp)
Current Store : [0x800002b4] : sw s2, 108(gp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x22', 'rd : x12', 'rs2_h1_val == -257', 'rs2_h0_val == -1025', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800002c8]:KSTAS16 a2, a0, s6
	-[0x800002cc]:csrrs a0, vxsat, zero
	-[0x800002d0]:sw a2, 112(gp)
Current Store : [0x800002d4] : sw a0, 116(gp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x20', 'rd : x7', 'rs2_h1_val == -129', 'rs1_h1_val == 21845', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800002ec]:KSTAS16 t2, t0, s4
	-[0x800002f0]:csrrs t0, vxsat, zero
	-[0x800002f4]:sw t2, 0(t1)
Current Store : [0x800002f8] : sw t0, 4(t1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x25', 'rd : x19', 'rs2_h1_val == -65', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x8000030c]:KSTAS16 s3, gp, s9
	-[0x80000310]:csrrs gp, vxsat, zero
	-[0x80000314]:sw s3, 8(t1)
Current Store : [0x80000318] : sw gp, 12(t1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x4', 'rd : x17', 'rs2_h1_val == -33', 'rs2_h0_val == -65', 'rs1_h1_val == -65', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000032c]:KSTAS16 a7, a5, tp
	-[0x80000330]:csrrs a5, vxsat, zero
	-[0x80000334]:sw a7, 16(t1)
Current Store : [0x80000338] : sw a5, 20(t1) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x10', 'rd : x21', 'rs2_h1_val == -17', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000034c]:KSTAS16 s5, a2, a0
	-[0x80000350]:csrrs a2, vxsat, zero
	-[0x80000354]:sw s5, 24(t1)
Current Store : [0x80000358] : sw a2, 28(t1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x16', 'rd : x18', 'rs2_h1_val == -9', 'rs2_h0_val == 512', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000368]:KSTAS16 s2, t3, a6
	-[0x8000036c]:csrrs t3, vxsat, zero
	-[0x80000370]:sw s2, 32(t1)
Current Store : [0x80000374] : sw t3, 36(t1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x10', 'rs2_h1_val == -3', 'rs2_h0_val == 16384', 'rs1_h1_val == -2', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000384]:KSTAS16 a0, a1, sp
	-[0x80000388]:csrrs a1, vxsat, zero
	-[0x8000038c]:sw a0, 40(t1)
Current Store : [0x80000390] : sw a1, 44(t1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x1', 'rd : x9', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x800003a0]:KSTAS16 s1, a3, ra
	-[0x800003a4]:csrrs a3, vxsat, zero
	-[0x800003a8]:sw s1, 48(t1)
Current Store : [0x800003ac] : sw a3, 52(t1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x13', 'rd : x8', 'rs2_h1_val == 16384', 'rs2_h0_val == 2048', 'rs1_h1_val == 1024', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800003c0]:KSTAS16 fp, ra, a3
	-[0x800003c4]:csrrs ra, vxsat, zero
	-[0x800003c8]:sw fp, 56(t1)
Current Store : [0x800003cc] : sw ra, 60(t1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x31', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x800003e0]:KSTAS16 t6, s10, t3
	-[0x800003e4]:csrrs s10, vxsat, zero
	-[0x800003e8]:sw t6, 64(t1)
Current Store : [0x800003ec] : sw s10, 68(t1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x27', 'rs2_h1_val == 4096', 'rs2_h0_val == -21846', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000400]:KSTAS16 s11, zero, a5
	-[0x80000404]:csrrs zero, vxsat, zero
	-[0x80000408]:sw s11, 72(t1)
Current Store : [0x8000040c] : sw zero, 76(t1) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x3', 'rs2_h1_val == 2048', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x8000041c]:KSTAS16 gp, s5, a7
	-[0x80000420]:csrrs s5, vxsat, zero
	-[0x80000424]:sw gp, 80(t1)
Current Store : [0x80000428] : sw s5, 84(t1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x14', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x8000043c]:KSTAS16 a4, s4, s1
	-[0x80000440]:csrrs s4, vxsat, zero
	-[0x80000444]:sw a4, 88(t1)
Current Store : [0x80000448] : sw s4, 92(t1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x0', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000458]:KSTAS16 zero, a4, t6
	-[0x8000045c]:csrrs a4, vxsat, zero
	-[0x80000460]:sw zero, 96(t1)
Current Store : [0x80000464] : sw a4, 100(t1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x7', 'rd : x29', 'rs2_h1_val == 64', 'rs1_h1_val == -1025', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000478]:KSTAS16 t4, sp, t2
	-[0x8000047c]:csrrs sp, vxsat, zero
	-[0x80000480]:sw t4, 104(t1)
Current Store : [0x80000484] : sw sp, 108(t1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rd : x13', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000494]:KSTAS16 a3, s6, a2
	-[0x80000498]:csrrs s6, vxsat, zero
	-[0x8000049c]:sw a3, 112(t1)
Current Store : [0x800004a0] : sw s6, 116(t1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x3', 'rd : x4', 'rs2_h1_val == 16', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800004bc]:KSTAS16 tp, s8, gp
	-[0x800004c0]:csrrs s8, vxsat, zero
	-[0x800004c4]:sw tp, 0(ra)
Current Store : [0x800004c8] : sw s8, 4(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x24', 'rd : x28', 'rs2_h1_val == 8', 'rs2_h0_val == 1024', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800004dc]:KSTAS16 t3, fp, s8
	-[0x800004e0]:csrrs fp, vxsat, zero
	-[0x800004e4]:sw t3, 8(ra)
Current Store : [0x800004e8] : sw fp, 12(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == 256', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004fc]:KSTAS16 t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 16(ra)
Current Store : [0x80000508] : sw t5, 20(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == 2', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000051c]:KSTAS16 t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 24(ra)
Current Store : [0x80000528] : sw t5, 28(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -257']
Last Code Sequence : 
	-[0x8000053c]:KSTAS16 t6, t5, t4
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 32(ra)
Current Store : [0x80000548] : sw t5, 36(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 32', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000055c]:KSTAS16 t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 40(ra)
Current Store : [0x80000568] : sw t5, 44(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x8000057c]:KSTAS16 t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 48(ra)
Current Store : [0x80000588] : sw t5, 52(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h1_val == -4097', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x8000059c]:KSTAS16 t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 56(ra)
Current Store : [0x800005a8] : sw t5, 60(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800005bc]:KSTAS16 t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 64(ra)
Current Store : [0x800005c8] : sw t5, 68(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005dc]:KSTAS16 t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 72(ra)
Current Store : [0x800005e8] : sw t5, 76(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800005fc]:KSTAS16 t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 80(ra)
Current Store : [0x80000608] : sw t5, 84(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000614]:KSTAS16 t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 88(ra)
Current Store : [0x80000620] : sw t5, 92(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -21846', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000634]:KSTAS16 t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 96(ra)
Current Store : [0x80000640] : sw t5, 100(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000654]:KSTAS16 t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 104(ra)
Current Store : [0x80000660] : sw t5, 108(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000674]:KSTAS16 t6, t5, t4
	-[0x80000678]:csrrs t5, vxsat, zero
	-[0x8000067c]:sw t6, 112(ra)
Current Store : [0x80000680] : sw t5, 116(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000694]:KSTAS16 t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 120(ra)
Current Store : [0x800006a0] : sw t5, 124(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == -129', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800006b4]:KSTAS16 t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 128(ra)
Current Store : [0x800006c0] : sw t5, 132(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800006d4]:KSTAS16 t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 136(ra)
Current Store : [0x800006e0] : sw t5, 140(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800006f4]:KSTAS16 t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 144(ra)
Current Store : [0x80000700] : sw t5, 148(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000714]:KSTAS16 t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 152(ra)
Current Store : [0x80000720] : sw t5, 156(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000730]:KSTAS16 t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 160(ra)
Current Store : [0x8000073c] : sw t5, 164(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000750]:KSTAS16 t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 168(ra)
Current Store : [0x8000075c] : sw t5, 172(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 16', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000770]:KSTAS16 t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 176(ra)
Current Store : [0x8000077c] : sw t5, 180(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000790]:KSTAS16 t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 184(ra)
Current Store : [0x8000079c] : sw t5, 188(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800007b0]:KSTAS16 t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 192(ra)
Current Store : [0x800007bc] : sw t5, 196(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800007d0]:KSTAS16 t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 200(ra)
Current Store : [0x800007dc] : sw t5, 204(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800007ec]:KSTAS16 t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 208(ra)
Current Store : [0x800007f8] : sw t5, 212(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000080c]:KSTAS16 t6, t5, t4
	-[0x80000810]:csrrs t5, vxsat, zero
	-[0x80000814]:sw t6, 216(ra)
Current Store : [0x80000818] : sw t5, 220(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == -33', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000082c]:KSTAS16 t6, t5, t4
	-[0x80000830]:csrrs t5, vxsat, zero
	-[0x80000834]:sw t6, 224(ra)
Current Store : [0x80000838] : sw t5, 228(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000084c]:KSTAS16 t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 232(ra)
Current Store : [0x80000858] : sw t5, 236(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000086c]:KSTAS16 t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 240(ra)
Current Store : [0x80000878] : sw t5, 244(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x8000088c]:KSTAS16 t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 248(ra)
Current Store : [0x80000898] : sw t5, 252(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800008a8]:KSTAS16 t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 256(ra)
Current Store : [0x800008b4] : sw t5, 260(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800008c8]:KSTAS16 t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 264(ra)
Current Store : [0x800008d4] : sw t5, 268(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800008e4]:KSTAS16 t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 272(ra)
Current Store : [0x800008f0] : sw t5, 276(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000904]:KSTAS16 t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 280(ra)
Current Store : [0x80000910] : sw t5, 284(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000920]:KSTAS16 t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 288(ra)
Current Store : [0x8000092c] : sw t5, 292(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000940]:KSTAS16 t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 296(ra)
Current Store : [0x8000094c] : sw t5, 300(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000960]:KSTAS16 t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 304(ra)
Current Store : [0x8000096c] : sw t5, 308(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000980]:KSTAS16 t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 312(ra)
Current Store : [0x8000098c] : sw t5, 316(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['opcode : kstas16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 1024', 'rs1_h1_val == 0', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x8000099c]:KSTAS16 t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 320(ra)
Current Store : [0x800009a8] : sw t5, 324(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009b8]:KSTAS16 t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 328(ra)
Current Store : [0x800009c4] : sw t5, 332(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['opcode : kstas16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -5', 'rs1_h1_val == -5', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800009d8]:KSTAS16 t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 336(ra)
Current Store : [0x800009e4] : sw t5, 340(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['opcode : kstas16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -4097', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800009f4]:KSTAS16 t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 344(ra)
Current Store : [0x80000a00] : sw t5, 348(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kstas16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 4096', 'rs2_h0_val == -21846', 'rs1_h1_val == 8', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000a14]:KSTAS16 t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 352(ra)
Current Store : [0x80000a20] : sw t5, 356(ra) -- Store: [0x80002464]:0x00000001





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

|s.no|        signature         |                                                                                                                                        coverpoints                                                                                                                                        |                                                      code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kstas16<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 512<br> - rs1_h1_val == 512<br> |[0x80000118]:KSTAS16 s7, s7, s7<br> [0x8000011c]:csrrs s7, vxsat, zero<br> [0x80000120]:sw s7, 0(gp)<br>        |
|   2|[0x80002218]<br>0xFFF60000|- rs1 : x27<br> - rs2 : x27<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -5<br> - rs1_h1_val == -5<br>                                                                                        |[0x80000138]:KSTAS16 s10, s11, s11<br> [0x8000013c]:csrrs s11, vxsat, zero<br> [0x80000140]:sw s10, 8(gp)<br>   |
|   3|[0x80002220]<br>0x8200FFE0|- rs1 : x17<br> - rs2 : x11<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -33<br> - rs1_h0_val == -65<br>               |[0x80000158]:KSTAS16 sp, a7, a1<br> [0x8000015c]:csrrs a7, vxsat, zero<br> [0x80000160]:sw sp, 16(gp)<br>       |
|   4|[0x80002228]<br>0x7FFFF007|- rs1 : x31<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_h1_val == 256<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 32767<br>                                                                                                                                             |[0x80000174]:KSTAS16 t0, t6, t0<br> [0x80000178]:csrrs t6, vxsat, zero<br> [0x8000017c]:sw t0, 24(gp)<br>       |
|   5|[0x80002230]<br>0x00000001|- rs1 : x30<br> - rs2 : x18<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_h1_val == 4<br> - rs2_h0_val == -2049<br> - rs1_h1_val == 1<br> - rs1_h0_val == -2049<br>                                                                                                                      |[0x80000194]:KSTAS16 t5, t5, s2<br> [0x80000198]:csrrs t5, vxsat, zero<br> [0x8000019c]:sw t5, 32(gp)<br>       |
|   6|[0x80002238]<br>0xBFF84081|- rs1 : x9<br> - rs2 : x14<br> - rd : x24<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -16385<br> - rs1_h0_val == 128<br>                                                                                                                        |[0x800001b4]:KSTAS16 s8, s1, a4<br> [0x800001b8]:csrrs s1, vxsat, zero<br> [0x800001bc]:sw s8, 40(gp)<br>       |
|   7|[0x80002240]<br>0x8AA9F000|- rs1 : x4<br> - rs2 : x26<br> - rd : x22<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 4096<br>                                                                                                                                       |[0x800001cc]:KSTAS16 s6, tp, s10<br> [0x800001d0]:csrrs tp, vxsat, zero<br> [0x800001d4]:sw s6, 48(gp)<br>      |
|   8|[0x80002248]<br>0x7FFF0004|- rs1 : x29<br> - rs2 : x19<br> - rd : x25<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                         |[0x800001ec]:KSTAS16 s9, t4, s3<br> [0x800001f0]:csrrs t4, vxsat, zero<br> [0x800001f4]:sw s9, 56(gp)<br>       |
|   9|[0x80002250]<br>0x7FFF0000|- rs1 : x16<br> - rs2 : x30<br> - rd : x1<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                           |[0x8000020c]:KSTAS16 ra, a6, t5<br> [0x80000210]:csrrs a6, vxsat, zero<br> [0x80000214]:sw ra, 64(gp)<br>       |
|  10|[0x80002258]<br>0x1FFFAACB|- rs1 : x19<br> - rs2 : x6<br> - rd : x16<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 32<br>                                                                                                                                                                   |[0x8000022c]:KSTAS16 a6, s3, t1<br> [0x80000230]:csrrs s3, vxsat, zero<br> [0x80000234]:sw a6, 72(gp)<br>       |
|  11|[0x80002260]<br>0xFFFC0000|- rs1 : x7<br> - rs2 : x0<br> - rd : x6<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                              |[0x80000248]:KSTAS16 t1, t2, zero<br> [0x8000024c]:csrrs t2, vxsat, zero<br> [0x80000250]:sw t1, 80(gp)<br>     |
|  12|[0x80002268]<br>0xF7F80901|- rs1 : x6<br> - rs2 : x21<br> - rd : x20<br> - rs2_h1_val == -2049<br> - rs1_h0_val == 256<br>                                                                                                                                                                                            |[0x80000268]:KSTAS16 s4, t1, s5<br> [0x8000026c]:csrrs t1, vxsat, zero<br> [0x80000270]:sw s4, 88(gp)<br>       |
|  13|[0x80002270]<br>0xFC08C000|- rs1 : x25<br> - rs2 : x29<br> - rd : x11<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1025<br> - rs1_h0_val == -1<br>                                                                                                                                                    |[0x80000288]:KSTAS16 a1, s9, t4<br> [0x8000028c]:csrrs s9, vxsat, zero<br> [0x80000290]:sw a1, 96(gp)<br>       |
|  14|[0x80002278]<br>0x1DFFFFFE|- rs1 : x18<br> - rs2 : x8<br> - rd : x15<br> - rs2_h1_val == -513<br> - rs2_h0_val == -3<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -5<br>                                                                                                                                              |[0x800002a8]:KSTAS16 a5, s2, fp<br> [0x800002ac]:csrrs s2, vxsat, zero<br> [0x800002b0]:sw a5, 104(gp)<br>      |
|  15|[0x80002280]<br>0x3EFE5956|- rs1 : x10<br> - rs2 : x22<br> - rd : x12<br> - rs2_h1_val == -257<br> - rs2_h0_val == -1025<br> - rs1_h0_val == 21845<br>                                                                                                                                                                |[0x800002c8]:KSTAS16 a2, a0, s6<br> [0x800002cc]:csrrs a0, vxsat, zero<br> [0x800002d0]:sw a2, 112(gp)<br>      |
|  16|[0x80002288]<br>0x54D44004|- rs1 : x5<br> - rs2 : x20<br> - rd : x7<br> - rs2_h1_val == -129<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 16384<br>                                                                                                                                                                  |[0x800002ec]:KSTAS16 t2, t0, s4<br> [0x800002f0]:csrrs t0, vxsat, zero<br> [0x800002f4]:sw t2, 0(t1)<br>        |
|  17|[0x80002290]<br>0xFFC73FF6|- rs1 : x3<br> - rs2 : x25<br> - rd : x19<br> - rs2_h1_val == -65<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                |[0x8000030c]:KSTAS16 s3, gp, s9<br> [0x80000310]:csrrs gp, vxsat, zero<br> [0x80000314]:sw s3, 8(t1)<br>        |
|  18|[0x80002298]<br>0xFF9E7FFF|- rs1 : x15<br> - rs2 : x4<br> - rd : x17<br> - rs2_h1_val == -33<br> - rs2_h0_val == -65<br> - rs1_h1_val == -65<br> - rs1_h0_val == 32767<br>                                                                                                                                            |[0x8000032c]:KSTAS16 a7, a5, tp<br> [0x80000330]:csrrs a5, vxsat, zero<br> [0x80000334]:sw a7, 16(t1)<br>       |
|  19|[0x800022a0]<br>0xFFEB2000|- rs1 : x12<br> - rs2 : x10<br> - rd : x21<br> - rs2_h1_val == -17<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                           |[0x8000034c]:KSTAS16 s5, a2, a0<br> [0x80000350]:csrrs a2, vxsat, zero<br> [0x80000354]:sw s5, 24(t1)<br>       |
|  20|[0x800022a8]<br>0x0007BE00|- rs1 : x28<br> - rs2 : x16<br> - rd : x18<br> - rs2_h1_val == -9<br> - rs2_h0_val == 512<br> - rs1_h1_val == 16<br>                                                                                                                                                                       |[0x80000368]:KSTAS16 s2, t3, a6<br> [0x8000036c]:csrrs t3, vxsat, zero<br> [0x80000370]:sw s2, 32(t1)<br>       |
|  21|[0x800022b0]<br>0xFFFBC040|- rs1 : x11<br> - rs2 : x2<br> - rd : x10<br> - rs2_h1_val == -3<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -2<br> - rs1_h0_val == 64<br>                                                                                                                                               |[0x80000384]:KSTAS16 a0, a1, sp<br> [0x80000388]:csrrs a1, vxsat, zero<br> [0x8000038c]:sw a0, 40(t1)<br>       |
|  22|[0x800022b8]<br>0x000EBFF9|- rs1 : x13<br> - rs2 : x1<br> - rd : x9<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                        |[0x800003a0]:KSTAS16 s1, a3, ra<br> [0x800003a4]:csrrs a3, vxsat, zero<br> [0x800003a8]:sw s1, 48(t1)<br>       |
|  23|[0x800022c0]<br>0x4400D7FF|- rs1 : x1<br> - rs2 : x13<br> - rd : x8<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -8193<br>                                                                                                                                         |[0x800003c0]:KSTAS16 fp, ra, a3<br> [0x800003c4]:csrrs ra, vxsat, zero<br> [0x800003c8]:sw fp, 56(t1)<br>       |
|  24|[0x800022c8]<br>0x1FFA7FFF|- rs1 : x26<br> - rs2 : x28<br> - rd : x31<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 8192<br>                                                                                                                                                                            |[0x800003e0]:KSTAS16 t6, s10, t3<br> [0x800003e4]:csrrs s10, vxsat, zero<br> [0x800003e8]:sw t6, 64(t1)<br>     |
|  25|[0x800022d0]<br>0x10005556|- rs1 : x0<br> - rs2 : x15<br> - rd : x27<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 0<br>                                                                                                                                                                    |[0x80000400]:KSTAS16 s11, zero, a5<br> [0x80000404]:csrrs zero, vxsat, zero<br> [0x80000408]:sw s11, 72(t1)<br> |
|  26|[0x800022d8]<br>0x0A002001|- rs1 : x21<br> - rs2 : x17<br> - rd : x3<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                           |[0x8000041c]:KSTAS16 gp, s5, a7<br> [0x80000420]:csrrs s5, vxsat, zero<br> [0x80000424]:sw gp, 80(t1)<br>       |
|  27|[0x800022e0]<br>0x5955BFF9|- rs1 : x20<br> - rs2 : x9<br> - rd : x14<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                     |[0x8000043c]:KSTAS16 a4, s4, s1<br> [0x80000440]:csrrs s4, vxsat, zero<br> [0x80000444]:sw a4, 88(t1)<br>       |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x14<br> - rs2 : x31<br> - rd : x0<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                      |[0x80000458]:KSTAS16 zero, a4, t6<br> [0x8000045c]:csrrs a4, vxsat, zero<br> [0x80000460]:sw zero, 96(t1)<br>   |
|  29|[0x800022f0]<br>0xFC3FAAAD|- rs1 : x2<br> - rs2 : x7<br> - rd : x29<br> - rs2_h1_val == 64<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -21846<br>                                                                                                                                                                   |[0x80000478]:KSTAS16 t4, sp, t2<br> [0x8000047c]:csrrs sp, vxsat, zero<br> [0x80000480]:sw t4, 104(t1)<br>      |
|  30|[0x800022f8]<br>0x0420C801|- rs1 : x22<br> - rs2 : x12<br> - rd : x13<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                      |[0x80000494]:KSTAS16 a3, s6, a2<br> [0x80000498]:csrrs s6, vxsat, zero<br> [0x8000049c]:sw a3, 112(t1)<br>      |
|  31|[0x80002300]<br>0xC00FFFFE|- rs1 : x24<br> - rs2 : x3<br> - rd : x4<br> - rs2_h1_val == 16<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                             |[0x800004bc]:KSTAS16 tp, s8, gp<br> [0x800004c0]:csrrs s8, vxsat, zero<br> [0x800004c4]:sw tp, 0(ra)<br>        |
|  32|[0x80002308]<br>0x00487BFF|- rs1 : x8<br> - rs2 : x24<br> - rd : x28<br> - rs2_h1_val == 8<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 64<br>                                                                                                                                                                        |[0x800004dc]:KSTAS16 t3, fp, s8<br> [0x800004e0]:csrrs fp, vxsat, zero<br> [0x800004e4]:sw t3, 8(ra)<br>        |
|  33|[0x80002310]<br>0xFFFFFBFD|- rs2_h0_val == 2<br> - rs1_h1_val == 256<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                    |[0x800004fc]:KSTAS16 t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 16(ra)<br>       |
|  34|[0x80002318]<br>0x0022FDF7|- rs2_h0_val == 8<br> - rs1_h1_val == 2<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                       |[0x8000051c]:KSTAS16 t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 24(ra)<br>       |
|  35|[0x80002320]<br>0x5557A9AA|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                   |[0x8000053c]:KSTAS16 t6, t5, t4<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 32(ra)<br>       |
|  36|[0x80002328]<br>0x0022FF86|- rs2_h1_val == 2<br> - rs1_h1_val == 32<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                      |[0x8000055c]:KSTAS16 t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 40(ra)<br>       |
|  37|[0x80002330]<br>0xFFFFFFD7|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                    |[0x8000057c]:KSTAS16 t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 48(ra)<br>       |
|  38|[0x80002338]<br>0xEEFEFF6F|- rs2_h0_val == 128<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                  |[0x8000059c]:KSTAS16 t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 56(ra)<br>       |
|  39|[0x80002340]<br>0xFF79FFF3|- rs2_h0_val == 4<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                               |[0x800005bc]:KSTAS16 t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 64(ra)<br>       |
|  40|[0x80002348]<br>0x0BFF03FE|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                     |[0x800005dc]:KSTAS16 t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 72(ra)<br>       |
|  41|[0x80002350]<br>0x1009FFF5|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                     |[0x800005fc]:KSTAS16 t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 80(ra)<br>       |
|  42|[0x80002358]<br>0x00212000|- rs2_h1_val == 1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                             |[0x80000614]:KSTAS16 t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 88(ra)<br>       |
|  43|[0x80002360]<br>0xA2A90400|- rs1_h1_val == -21846<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                        |[0x80000634]:KSTAS16 t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 96(ra)<br>       |
|  44|[0x80002368]<br>0x003B0221|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                    |[0x80000654]:KSTAS16 t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 104(ra)<br>      |
|  45|[0x80002370]<br>0x01FD0021|- rs2_h0_val == -17<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                             |[0x80000674]:KSTAS16 t6, t5, t4<br> [0x80000678]:csrrs t5, vxsat, zero<br> [0x8000067c]:sw t6, 112(ra)<br>      |
|  46|[0x80002378]<br>0x0076FF08|- rs2_h0_val == 256<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                              |[0x80000694]:KSTAS16 t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 120(ra)<br>      |
|  47|[0x80002380]<br>0xFF75FFC4|- rs2_h0_val == 64<br> - rs1_h1_val == -129<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                      |[0x800006b4]:KSTAS16 t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 128(ra)<br>      |
|  48|[0x80002388]<br>0x0FFFFFFF|- rs2_h1_val == -4097<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                            |[0x800006d4]:KSTAS16 t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 136(ra)<br>      |
|  49|[0x80002390]<br>0x00037FFF|- rs2_h0_val == -5<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                              |[0x800006f4]:KSTAS16 t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 144(ra)<br>      |
|  50|[0x80002398]<br>0x000FC001|- rs2_h0_val == -2<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                          |[0x80000714]:KSTAS16 t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 152(ra)<br>      |
|  51|[0x800023a0]<br>0x7FFF7FFF|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                 |[0x80000730]:KSTAS16 t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 160(ra)<br>      |
|  52|[0x800023a8]<br>0x0880FFDF|- rs2_h0_val == 32<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                            |[0x80000750]:KSTAS16 t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 168(ra)<br>      |
|  53|[0x800023b0]<br>0xFFF65545|- rs2_h1_val == -1<br> - rs2_h0_val == 16<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                       |[0x80000770]:KSTAS16 t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 176(ra)<br>      |
|  54|[0x800023b8]<br>0xFF01BFFE|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                      |[0x80000790]:KSTAS16 t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 184(ra)<br>      |
|  55|[0x800023c0]<br>0x00080801|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                     |[0x800007b0]:KSTAS16 t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 192(ra)<br>      |
|  56|[0x800023c8]<br>0x3FF9FFFE|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                      |[0x800007d0]:KSTAS16 t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 200(ra)<br>      |
|  57|[0x800023d0]<br>0x80000FFA|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                  |[0x800007ec]:KSTAS16 t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 208(ra)<br>      |
|  58|[0x800023d8]<br>0xF5FE0015|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                   |[0x8000080c]:KSTAS16 t6, t5, t4<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sw t6, 216(ra)<br>      |
|  59|[0x800023e0]<br>0xDFDE0409|- rs2_h0_val == -9<br> - rs1_h1_val == -33<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                    |[0x8000082c]:KSTAS16 t6, t5, t4<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sw t6, 224(ra)<br>      |
|  60|[0x800023e8]<br>0xF7EE2801|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                    |[0x8000084c]:KSTAS16 t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 232(ra)<br>      |
|  61|[0x800023f0]<br>0x8000F400|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                  |[0x8000086c]:KSTAS16 t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 240(ra)<br>      |
|  62|[0x800023f8]<br>0x3FFC07FA|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                     |[0x8000088c]:KSTAS16 t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 248(ra)<br>      |
|  63|[0x80002400]<br>0x8080AFFF|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                 |[0x800008a8]:KSTAS16 t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 256(ra)<br>      |
|  64|[0x80002408]<br>0x20004200|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                   |[0x800008c8]:KSTAS16 t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 264(ra)<br>      |
|  65|[0x80002410]<br>0x55D5AFFF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                    |[0x800008e4]:KSTAS16 t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 272(ra)<br>      |
|  66|[0x80002418]<br>0xFFF58000|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                  |[0x80000904]:KSTAS16 t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 280(ra)<br>      |
|  67|[0x80002420]<br>0x01041FF7|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                      |[0x80000920]:KSTAS16 t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 288(ra)<br>      |
|  68|[0x80002428]<br>0xBBFE00FB|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                   |[0x80000940]:KSTAS16 t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 296(ra)<br>      |
|  69|[0x80002430]<br>0x3FF60079|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                   |[0x80000960]:KSTAS16 t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 304(ra)<br>      |
|  70|[0x80002438]<br>0xFDFE0079|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                   |[0x80000980]:KSTAS16 t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 312(ra)<br>      |
|  71|[0x80002448]<br>0x01F9800A|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                 |[0x800009b8]:KSTAS16 t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 328(ra)<br>      |
