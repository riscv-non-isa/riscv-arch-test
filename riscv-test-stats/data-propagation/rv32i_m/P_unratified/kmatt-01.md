
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ac0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | kmatt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmatt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 162      |
| STAT1                     | 76      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000650]:KMATT t6, t5, t4
      [0x80000654]:csrrs t5, vxsat, zero
      [0x80000658]:sw t6, 112(ra)
 -- Signature Address: 0x80002370 Data: 0xFEAADF02
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == 16384
      - rs1_h1_val == 16
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000860]:KMATT t6, t5, t4
      [0x80000864]:csrrs t5, vxsat, zero
      [0x80000868]:sw t6, 248(ra)
 -- Signature Address: 0x800023f8 Data: 0xD1B3611A
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 8
      - rs1_h1_val == -33
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d8]:KMATT t6, t5, t4
      [0x800008dc]:csrrs t5, vxsat, zero
      [0x800008e0]:sw t6, 280(ra)
 -- Signature Address: 0x80002418 Data: 0xD1B20A1A
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a68]:KMATT t6, t5, t4
      [0x80000a6c]:csrrs t5, vxsat, zero
      [0x80000a70]:sw t6, 384(ra)
 -- Signature Address: 0x80002480 Data: 0xC1852CF1
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -16385
      - rs2_h0_val == -21846
      - rs1_h0_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa8]:KMATT t6, t5, t4
      [0x80000aac]:csrrs t5, vxsat, zero
      [0x80000ab0]:sw t6, 400(ra)
 -- Signature Address: 0x80002490 Data: 0xC1852DA2
 -- Redundant Coverpoints hit by the op
      - opcode : kmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 64
      - rs2_h0_val == -5






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmatt', 'rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -33', 'rs2_h0_val == 32', 'rs1_h1_val == -33', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000118]:KMATT s11, s11, s11
	-[0x8000011c]:csrrs s11, vxsat, zero
	-[0x80000120]:sw s11, 0(s1)
Current Store : [0x80000124] : sw s11, 4(s1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x29', 'rs1 == rs2 != rd', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -3', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000138]:KMATT t4, s4, s4
	-[0x8000013c]:csrrs s4, vxsat, zero
	-[0x80000140]:sw t4, 8(s1)
Current Store : [0x80000144] : sw s4, 12(s1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x16', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -2049', 'rs1_h1_val == -1', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000158]:KMATT a6, s10, t6
	-[0x8000015c]:csrrs s10, vxsat, zero
	-[0x80000160]:sw a6, 16(s1)
Current Store : [0x80000164] : sw s10, 20(s1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x11', 'rd : x11', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000178]:KMATT a1, a5, a1
	-[0x8000017c]:csrrs a5, vxsat, zero
	-[0x80000180]:sw a1, 24(s1)
Current Store : [0x80000184] : sw a5, 28(s1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x3', 'rs1 == rd != rs2', 'rs2_h0_val == -33', 'rs1_h1_val == 1024', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000198]:KMATT gp, gp, t2
	-[0x8000019c]:csrrs gp, vxsat, zero
	-[0x800001a0]:sw gp, 32(s1)
Current Store : [0x800001a4] : sw gp, 36(s1) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x2', 'rd : x17', 'rs2_h0_val == 16384', 'rs1_h1_val == -21846', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001b0]:KMATT a7, a3, sp
	-[0x800001b4]:csrrs a3, vxsat, zero
	-[0x800001b8]:sw a7, 40(s1)
Current Store : [0x800001bc] : sw a3, 44(s1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x30', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -32768', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800001cc]:KMATT t5, fp, s5
	-[0x800001d0]:csrrs fp, vxsat, zero
	-[0x800001d4]:sw t5, 48(s1)
Current Store : [0x800001d8] : sw fp, 52(s1) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x31', 'rs2_h1_val == 32767', 'rs2_h0_val == -21846', 'rs1_h1_val == 0', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800001ec]:KMATT t6, t3, a5
	-[0x800001f0]:csrrs t3, vxsat, zero
	-[0x800001f4]:sw t6, 56(s1)
Current Store : [0x800001f8] : sw t3, 60(s1) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x22', 'rd : x0', 'rs2_h1_val == -16385', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x8000020c]:KMATT zero, t0, s6
	-[0x80000210]:csrrs t0, vxsat, zero
	-[0x80000214]:sw zero, 64(s1)
Current Store : [0x80000218] : sw t0, 68(s1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x19', 'rd : x10', 'rs2_h1_val == -8193', 'rs1_h1_val == -5', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000022c]:KMATT a0, ra, s3
	-[0x80000230]:csrrs ra, vxsat, zero
	-[0x80000234]:sw a0, 72(s1)
Current Store : [0x80000238] : sw ra, 76(s1) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x20', 'rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80000248]:KMATT s4, t1, a0
	-[0x8000024c]:csrrs t1, vxsat, zero
	-[0x80000250]:sw s4, 80(s1)
Current Store : [0x80000254] : sw t1, 84(s1) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x18', 'rd : x8', 'rs2_h1_val == -2049', 'rs2_h0_val == 21845', 'rs1_h1_val == -3', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000268]:KMATT fp, sp, s2
	-[0x8000026c]:csrrs sp, vxsat, zero
	-[0x80000270]:sw fp, 88(s1)
Current Store : [0x80000274] : sw sp, 92(s1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x25', 'rd : x21', 'rs2_h1_val == -1025', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000280]:KMATT s5, a0, s9
	-[0x80000284]:csrrs a0, vxsat, zero
	-[0x80000288]:sw s5, 96(s1)
Current Store : [0x8000028c] : sw a0, 100(s1) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x14', 'rs2_h1_val == -513', 'rs2_h0_val == 0', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000029c]:KMATT a4, tp, t4
	-[0x800002a0]:csrrs tp, vxsat, zero
	-[0x800002a4]:sw a4, 104(s1)
Current Store : [0x800002a8] : sw tp, 108(s1) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x8', 'rd : x13', 'rs2_h1_val == -257', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800002c0]:KMATT a3, s5, fp
	-[0x800002c4]:csrrs s5, vxsat, zero
	-[0x800002c8]:sw a3, 0(t1)
Current Store : [0x800002cc] : sw s5, 4(t1) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x9', 'rd : x22', 'rs2_h1_val == -129', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800002e0]:KMATT s6, t4, s1
	-[0x800002e4]:csrrs t4, vxsat, zero
	-[0x800002e8]:sw s6, 8(t1)
Current Store : [0x800002ec] : sw t4, 12(t1) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x28', 'rd : x26', 'rs2_h1_val == -65', 'rs2_h0_val == 64', 'rs1_h1_val == -32768', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000300]:KMATT s10, s1, t3
	-[0x80000304]:csrrs s1, vxsat, zero
	-[0x80000308]:sw s10, 16(t1)
Current Store : [0x8000030c] : sw s1, 20(t1) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x13', 'rd : x1', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000320]:KMATT ra, t6, a3
	-[0x80000324]:csrrs t6, vxsat, zero
	-[0x80000328]:sw ra, 24(t1)
Current Store : [0x8000032c] : sw t6, 28(t1) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x1', 'rd : x5', 'rs2_h1_val == -9', 'rs2_h0_val == -1025', 'rs1_h1_val == -129', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000340]:KMATT t0, a6, ra
	-[0x80000344]:csrrs a6, vxsat, zero
	-[0x80000348]:sw t0, 32(t1)
Current Store : [0x8000034c] : sw a6, 36(t1) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rd : x23', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x8000035c]:KMATT s7, s6, gp
	-[0x80000360]:csrrs s6, vxsat, zero
	-[0x80000364]:sw s7, 40(t1)
Current Store : [0x80000368] : sw s6, 44(t1) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x18', 'rs2_h1_val == 0', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000037c]:KMATT s2, t2, zero
	-[0x80000380]:csrrs t2, vxsat, zero
	-[0x80000384]:sw s2, 48(t1)
Current Store : [0x80000388] : sw t2, 52(t1) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x19', 'rs2_h1_val == -2', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x8000039c]:KMATT s3, s2, a7
	-[0x800003a0]:csrrs s2, vxsat, zero
	-[0x800003a4]:sw s3, 56(t1)
Current Store : [0x800003a8] : sw s2, 60(t1) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x12', 'rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800003b8]:KMATT a2, s3, tp
	-[0x800003bc]:csrrs s3, vxsat, zero
	-[0x800003c0]:sw a2, 64(t1)
Current Store : [0x800003c4] : sw s3, 68(t1) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x14', 'rd : x15', 'rs2_h1_val == 16384', 'rs2_h0_val == 1024', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800003d4]:KMATT a5, t5, a4
	-[0x800003d8]:csrrs t5, vxsat, zero
	-[0x800003dc]:sw a5, 72(t1)
Current Store : [0x800003e0] : sw t5, 76(t1) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x12', 'rd : x25', 'rs2_h1_val == 8192', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800003f4]:KMATT s9, a7, a2
	-[0x800003f8]:csrrs a7, vxsat, zero
	-[0x800003fc]:sw s9, 80(t1)
Current Store : [0x80000400] : sw a7, 84(t1) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x7', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000410]:KMATT t2, s7, t0
	-[0x80000414]:csrrs s7, vxsat, zero
	-[0x80000418]:sw t2, 88(t1)
Current Store : [0x8000041c] : sw s7, 92(t1) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x4', 'rs2_h1_val == 2048', 'rs1_h1_val == 512', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000042c]:KMATT tp, s9, s10
	-[0x80000430]:csrrs s9, vxsat, zero
	-[0x80000434]:sw tp, 96(t1)
Current Store : [0x80000438] : sw s9, 100(t1) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x23', 'rd : x28', 'rs2_h1_val == 1024', 'rs2_h0_val == 4096', 'rs1_h1_val == 8', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000448]:KMATT t3, a2, s7
	-[0x8000044c]:csrrs a2, vxsat, zero
	-[0x80000450]:sw t3, 104(t1)
Current Store : [0x80000454] : sw a2, 108(t1) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x16', 'rd : x2', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x80000468]:KMATT sp, s8, a6
	-[0x8000046c]:csrrs s8, vxsat, zero
	-[0x80000470]:sw sp, 112(t1)
Current Store : [0x80000474] : sw s8, 116(t1) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x24', 'rd : x9', 'rs2_h1_val == 256', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000488]:KMATT s1, a1, s8
	-[0x8000048c]:csrrs a1, vxsat, zero
	-[0x80000490]:sw s1, 120(t1)
Current Store : [0x80000494] : sw a1, 124(t1) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x30', 'rd : x6', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800004a8]:KMATT t1, a4, t5
	-[0x800004ac]:csrrs a4, vxsat, zero
	-[0x800004b0]:sw t1, 0(ra)
Current Store : [0x800004b4] : sw a4, 4(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x6', 'rd : x24', 'rs2_h1_val == 64', 'rs2_h0_val == -5', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800004c8]:KMATT s8, zero, t1
	-[0x800004cc]:csrrs zero, vxsat, zero
	-[0x800004d0]:sw s8, 8(ra)
Current Store : [0x800004d4] : sw zero, 12(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800004e4]:KMATT t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 16(ra)
Current Store : [0x800004f0] : sw t5, 20(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000504]:KMATT t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 24(ra)
Current Store : [0x80000510] : sw t5, 28(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000524]:KMATT t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 32(ra)
Current Store : [0x80000530] : sw t5, 36(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000540]:KMATT t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 40(ra)
Current Store : [0x8000054c] : sw t5, 44(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000560]:KMATT t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 48(ra)
Current Store : [0x8000056c] : sw t5, 52(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000057c]:KMATT t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 56(ra)
Current Store : [0x80000588] : sw t5, 60(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000059c]:KMATT t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 64(ra)
Current Store : [0x800005a8] : sw t5, 68(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h1_val == 4', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005bc]:KMATT t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 72(ra)
Current Store : [0x800005c8] : sw t5, 76(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800005d8]:KMATT t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 80(ra)
Current Store : [0x800005e4] : sw t5, 84(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005f8]:KMATT t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 88(ra)
Current Store : [0x80000604] : sw t5, 92(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000618]:KMATT t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 96(ra)
Current Store : [0x80000624] : sw t5, 100(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000638]:KMATT t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 104(ra)
Current Store : [0x80000644] : sw t5, 108(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 16384', 'rs1_h1_val == 16', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000650]:KMATT t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 112(ra)
Current Store : [0x8000065c] : sw t5, 116(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000670]:KMATT t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 120(ra)
Current Store : [0x8000067c] : sw t5, 124(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000690]:KMATT t6, t5, t4
	-[0x80000694]:csrrs t5, vxsat, zero
	-[0x80000698]:sw t6, 128(ra)
Current Store : [0x8000069c] : sw t5, 132(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -513', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800006b0]:KMATT t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 136(ra)
Current Store : [0x800006bc] : sw t5, 140(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == -65', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800006d0]:KMATT t6, t5, t4
	-[0x800006d4]:csrrs t5, vxsat, zero
	-[0x800006d8]:sw t6, 144(ra)
Current Store : [0x800006dc] : sw t5, 148(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800006f0]:KMATT t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 152(ra)
Current Store : [0x800006fc] : sw t5, 156(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000710]:KMATT t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 160(ra)
Current Store : [0x8000071c] : sw t5, 164(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000730]:KMATT t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 168(ra)
Current Store : [0x8000073c] : sw t5, 172(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000074c]:KMATT t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 176(ra)
Current Store : [0x80000758] : sw t5, 180(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000076c]:KMATT t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 184(ra)
Current Store : [0x80000778] : sw t5, 188(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x8000078c]:KMATT t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 192(ra)
Current Store : [0x80000798] : sw t5, 196(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007a8]:KMATT t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 200(ra)
Current Store : [0x800007b4] : sw t5, 204(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800007c8]:KMATT t6, t5, t4
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sw t6, 208(ra)
Current Store : [0x800007d4] : sw t5, 212(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800007e8]:KMATT t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 216(ra)
Current Store : [0x800007f4] : sw t5, 220(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000804]:KMATT t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 224(ra)
Current Store : [0x80000810] : sw t5, 228(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000820]:KMATT t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 232(ra)
Current Store : [0x8000082c] : sw t5, 236(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000840]:KMATT t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 240(ra)
Current Store : [0x8000084c] : sw t5, 244(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 8', 'rs1_h1_val == -33', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000860]:KMATT t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 248(ra)
Current Store : [0x8000086c] : sw t5, 252(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000880]:KMATT t6, t5, t4
	-[0x80000884]:csrrs t5, vxsat, zero
	-[0x80000888]:sw t6, 256(ra)
Current Store : [0x8000088c] : sw t5, 260(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008a0]:KMATT t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 264(ra)
Current Store : [0x800008ac] : sw t5, 268(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800008bc]:KMATT t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 272(ra)
Current Store : [0x800008c8] : sw t5, 276(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800008d8]:KMATT t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 280(ra)
Current Store : [0x800008e4] : sw t5, 284(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800008f4]:KMATT t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 288(ra)
Current Store : [0x80000900] : sw t5, 292(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000910]:KMATT t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 296(ra)
Current Store : [0x8000091c] : sw t5, 300(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000930]:KMATT t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 304(ra)
Current Store : [0x8000093c] : sw t5, 308(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000950]:KMATT t6, t5, t4
	-[0x80000954]:csrrs t5, vxsat, zero
	-[0x80000958]:sw t6, 312(ra)
Current Store : [0x8000095c] : sw t5, 316(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000970]:KMATT t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 320(ra)
Current Store : [0x8000097c] : sw t5, 324(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000990]:KMATT t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 328(ra)
Current Store : [0x8000099c] : sw t5, 332(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009b0]:KMATT t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 336(ra)
Current Store : [0x800009bc] : sw t5, 340(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800009cc]:KMATT t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 344(ra)
Current Store : [0x800009d8] : sw t5, 348(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800009ec]:KMATT t6, t5, t4
	-[0x800009f0]:csrrs t5, vxsat, zero
	-[0x800009f4]:sw t6, 352(ra)
Current Store : [0x800009f8] : sw t5, 356(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000a0c]:KMATT t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 360(ra)
Current Store : [0x80000a18] : sw t5, 364(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000a2c]:KMATT t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 368(ra)
Current Store : [0x80000a38] : sw t5, 372(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000a48]:KMATT t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 376(ra)
Current Store : [0x80000a54] : sw t5, 380(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -16385', 'rs2_h0_val == -21846', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000a68]:KMATT t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 384(ra)
Current Store : [0x80000a74] : sw t5, 388(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs2_h1_val == -3']
Last Code Sequence : 
	-[0x80000a88]:KMATT t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 392(ra)
Current Store : [0x80000a94] : sw t5, 396(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['opcode : kmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 64', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000aa8]:KMATT t6, t5, t4
	-[0x80000aac]:csrrs t5, vxsat, zero
	-[0x80000ab0]:sw t6, 400(ra)
Current Store : [0x80000ab4] : sw t5, 404(ra) -- Store: [0x80002494]:0x00000001





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

|s.no|        signature         |                                                                                                                                                              coverpoints                                                                                                                                                              |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmatt<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -33<br> - rs2_h0_val == 32<br> - rs1_h1_val == -33<br> - rs1_h0_val == 32<br> |[0x80000118]:KMATT s11, s11, s11<br> [0x8000011c]:csrrs s11, vxsat, zero<br> [0x80000120]:sw s11, 0(s1)<br> |
|   2|[0x80002218]<br>0xEEDBEAEF|- rs1 : x20<br> - rs2 : x20<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -3<br> - rs1_h0_val == -3<br>                                                                                                                                                                            |[0x80000138]:KMATT t4, s4, s4<br> [0x8000013c]:csrrs s4, vxsat, zero<br> [0x80000140]:sw t4, 8(s1)<br>      |
|   3|[0x80002220]<br>0x7D5BFDD6|- rs1 : x26<br> - rs2 : x31<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8<br>                      |[0x80000158]:KMATT a6, s10, t6<br> [0x8000015c]:csrrs s10, vxsat, zero<br> [0x80000160]:sw a6, 16(s1)<br>   |
|   4|[0x80002228]<br>0x6AAA4009|- rs1 : x15<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                       |[0x80000178]:KMATT a1, a5, a1<br> [0x8000017c]:csrrs a5, vxsat, zero<br> [0x80000180]:sw a1, 24(s1)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x3<br> - rs2 : x7<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs2_h0_val == -33<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -33<br>                                                                                                                                                                                            |[0x80000198]:KMATT gp, gp, t2<br> [0x8000019c]:csrrs gp, vxsat, zero<br> [0x800001a0]:sw gp, 32(s1)<br>     |
|   6|[0x80002238]<br>0xBEACFEEB|- rs1 : x13<br> - rs2 : x2<br> - rd : x17<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                            |[0x800001b0]:KMATT a7, a3, sp<br> [0x800001b4]:csrrs a3, vxsat, zero<br> [0x800001b8]:sw a7, 40(s1)<br>     |
|   7|[0x80002240]<br>0xF4C3456F|- rs1 : x8<br> - rs2 : x21<br> - rd : x30<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 2048<br>                                                                                                                                                                   |[0x800001cc]:KMATT t5, fp, s5<br> [0x800001d0]:csrrs fp, vxsat, zero<br> [0x800001d4]:sw t5, 48(s1)<br>     |
|   8|[0x80002248]<br>0x0005F7FF|- rs1 : x28<br> - rs2 : x15<br> - rd : x31<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 0<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                     |[0x800001ec]:KMATT t6, t3, a5<br> [0x800001f0]:csrrs t3, vxsat, zero<br> [0x800001f4]:sw t6, 56(s1)<br>     |
|   9|[0x80002250]<br>0x00000000|- rs1 : x5<br> - rs2 : x22<br> - rd : x0<br> - rs2_h1_val == -16385<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                        |[0x8000020c]:KMATT zero, t0, s6<br> [0x80000210]:csrrs t0, vxsat, zero<br> [0x80000214]:sw zero, 64(s1)<br> |
|  10|[0x80002258]<br>0x0000A205|- rs1 : x1<br> - rs2 : x19<br> - rd : x10<br> - rs2_h1_val == -8193<br> - rs1_h1_val == -5<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                   |[0x8000022c]:KMATT a0, ra, s3<br> [0x80000230]:csrrs ra, vxsat, zero<br> [0x80000234]:sw a0, 72(s1)<br>     |
|  11|[0x80002260]<br>0x00005005|- rs1 : x6<br> - rs2 : x10<br> - rd : x20<br> - rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                |[0x80000248]:KMATT s4, t1, a0<br> [0x8000024c]:csrrs t1, vxsat, zero<br> [0x80000250]:sw s4, 80(s1)<br>     |
|  12|[0x80002268]<br>0x00001803|- rs1 : x2<br> - rs2 : x18<br> - rd : x8<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -3<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                       |[0x80000268]:KMATT fp, sp, s2<br> [0x8000026c]:csrrs sp, vxsat, zero<br> [0x80000270]:sw fp, 88(s1)<br>     |
|  13|[0x80002270]<br>0xAAAA8401|- rs1 : x10<br> - rs2 : x25<br> - rd : x21<br> - rs2_h1_val == -1025<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                       |[0x80000280]:KMATT s5, a0, s9<br> [0x80000284]:csrrs a0, vxsat, zero<br> [0x80000288]:sw s5, 96(s1)<br>     |
|  14|[0x80002278]<br>0xF570197E|- rs1 : x4<br> - rs2 : x29<br> - rd : x14<br> - rs2_h1_val == -513<br> - rs2_h0_val == 0<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                   |[0x8000029c]:KMATT a4, tp, t4<br> [0x800002a0]:csrrs tp, vxsat, zero<br> [0x800002a4]:sw a4, 104(s1)<br>    |
|  15|[0x80002280]<br>0xFFBFC101|- rs1 : x21<br> - rs2 : x8<br> - rd : x13<br> - rs2_h1_val == -257<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                           |[0x800002c0]:KMATT a3, s5, fp<br> [0x800002c4]:csrrs s5, vxsat, zero<br> [0x800002c8]:sw a3, 0(t1)<br>      |
|  16|[0x80002288]<br>0xBFFFAF33|- rs1 : x29<br> - rs2 : x9<br> - rd : x22<br> - rs2_h1_val == -129<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                          |[0x800002e0]:KMATT s6, t4, s1<br> [0x800002e4]:csrrs t4, vxsat, zero<br> [0x800002e8]:sw s6, 8(t1)<br>      |
|  17|[0x80002290]<br>0x00208000|- rs1 : x9<br> - rs2 : x28<br> - rd : x26<br> - rs2_h1_val == -65<br> - rs2_h0_val == 64<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                      |[0x80000300]:KMATT s10, s1, t3<br> [0x80000304]:csrrs s1, vxsat, zero<br> [0x80000308]:sw s10, 16(t1)<br>   |
|  18|[0x80002298]<br>0x000000AA|- rs1 : x31<br> - rs2 : x13<br> - rd : x1<br> - rs2_h1_val == -17<br> - rs2_h0_val == -65<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                |[0x80000320]:KMATT ra, t6, a3<br> [0x80000324]:csrrs t6, vxsat, zero<br> [0x80000328]:sw ra, 24(t1)<br>     |
|  19|[0x800022a0]<br>0x00000489|- rs1 : x16<br> - rs2 : x1<br> - rd : x5<br> - rs2_h1_val == -9<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -129<br> - rs1_h0_val == -5<br>                                                                                                                                                                                          |[0x80000340]:KMATT t0, a6, ra<br> [0x80000344]:csrrs a6, vxsat, zero<br> [0x80000348]:sw t0, 32(t1)<br>     |
|  20|[0x800022a8]<br>0xB6FABA80|- rs1 : x22<br> - rs2 : x3<br> - rd : x23<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                   |[0x8000035c]:KMATT s7, s6, gp<br> [0x80000360]:csrrs s6, vxsat, zero<br> [0x80000364]:sw s7, 40(t1)<br>     |
|  21|[0x800022b0]<br>0xF7FF5555|- rs1 : x7<br> - rs2 : x0<br> - rd : x18<br> - rs2_h1_val == 0<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                          |[0x8000037c]:KMATT s2, t2, zero<br> [0x80000380]:csrrs t2, vxsat, zero<br> [0x80000384]:sw s2, 48(t1)<br>   |
|  22|[0x800022b8]<br>0xDFFFFFDD|- rs1 : x18<br> - rs2 : x17<br> - rd : x19<br> - rs2_h1_val == -2<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                           |[0x8000039c]:KMATT s3, s2, a7<br> [0x800003a0]:csrrs s2, vxsat, zero<br> [0x800003a4]:sw s3, 56(t1)<br>     |
|  23|[0x800022c0]<br>0x006ADDB7|- rs1 : x19<br> - rs2 : x4<br> - rd : x12<br> - rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                               |[0x800003b8]:KMATT a2, s3, tp<br> [0x800003bc]:csrrs s3, vxsat, zero<br> [0x800003c0]:sw a2, 64(t1)<br>     |
|  24|[0x800022c8]<br>0x7FFD6AAA|- rs1 : x30<br> - rs2 : x14<br> - rd : x15<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                            |[0x800003d4]:KMATT a5, t5, a4<br> [0x800003d8]:csrrs t5, vxsat, zero<br> [0x800003dc]:sw a5, 72(t1)<br>     |
|  25|[0x800022d0]<br>0xFBEF2000|- rs1 : x17<br> - rs2 : x12<br> - rd : x25<br> - rs2_h1_val == 8192<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                         |[0x800003f4]:KMATT s9, a7, a2<br> [0x800003f8]:csrrs a7, vxsat, zero<br> [0x800003fc]:sw s9, 80(t1)<br>     |
|  26|[0x800022d8]<br>0x04000000|- rs1 : x23<br> - rs2 : x5<br> - rd : x7<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                  |[0x80000410]:KMATT t2, s7, t0<br> [0x80000414]:csrrs s7, vxsat, zero<br> [0x80000418]:sw t2, 88(t1)<br>     |
|  27|[0x800022e0]<br>0x8010C000|- rs1 : x25<br> - rs2 : x26<br> - rd : x4<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 512<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                |[0x8000042c]:KMATT tp, s9, s10<br> [0x80000430]:csrrs s9, vxsat, zero<br> [0x80000434]:sw tp, 96(t1)<br>    |
|  28|[0x800022e8]<br>0xFFBF2040|- rs1 : x12<br> - rs2 : x23<br> - rd : x28<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 8<br> - rs1_h0_val == 128<br>                                                                                                                                                                                         |[0x80000448]:KMATT t3, a2, s7<br> [0x8000044c]:csrrs a2, vxsat, zero<br> [0x80000450]:sw t3, 104(t1)<br>    |
|  29|[0x800022f0]<br>0xFFFFF400|- rs1 : x24<br> - rs2 : x16<br> - rd : x2<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                  |[0x80000468]:KMATT sp, s8, a6<br> [0x8000046c]:csrrs s8, vxsat, zero<br> [0x80000470]:sw sp, 112(t1)<br>    |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x9<br> - rs2_h1_val == 256<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                                                                        |[0x80000488]:KMATT s1, a1, s8<br> [0x8000048c]:csrrs a1, vxsat, zero<br> [0x80000490]:sw s1, 120(t1)<br>    |
|  31|[0x80002300]<br>0x80000000|- rs1 : x14<br> - rs2 : x30<br> - rd : x6<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                  |[0x800004a8]:KMATT t1, a4, t5<br> [0x800004ac]:csrrs a4, vxsat, zero<br> [0x800004b0]:sw t1, 0(ra)<br>      |
|  32|[0x80002308]<br>0x0100EFFF|- rs1 : x0<br> - rs2 : x6<br> - rd : x24<br> - rs2_h1_val == 64<br> - rs2_h0_val == -5<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                       |[0x800004c8]:KMATT s8, zero, t1<br> [0x800004cc]:csrrs zero, vxsat, zero<br> [0x800004d0]:sw s8, 8(ra)<br>  |
|  33|[0x80002310]<br>0x00000060|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                 |[0x800004e4]:KMATT t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 16(ra)<br>     |
|  34|[0x80002318]<br>0x00000088|- rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                              |[0x80000504]:KMATT t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 24(ra)<br>     |
|  35|[0x80002320]<br>0x000000E8|- rs2_h0_val == -257<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                      |[0x80000524]:KMATT t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 32(ra)<br>     |
|  36|[0x80002328]<br>0x000028F2|- rs2_h0_val == 8192<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                      |[0x80000540]:KMATT t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 40(ra)<br>     |
|  37|[0x80002330]<br>0x00002892|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                |[0x80000560]:KMATT t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 48(ra)<br>     |
|  38|[0x80002338]<br>0x0000285C|- rs2_h0_val == 8<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                         |[0x8000057c]:KMATT t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 56(ra)<br>     |
|  39|[0x80002340]<br>0x0000491D|- rs2_h0_val == -9<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                         |[0x8000059c]:KMATT t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 64(ra)<br>     |
|  40|[0x80002348]<br>0x0000891D|- rs2_h0_val == 256<br> - rs1_h1_val == 4<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                   |[0x800005bc]:KMATT t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 72(ra)<br>     |
|  41|[0x80002350]<br>0x0000891D|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x800005d8]:KMATT t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 80(ra)<br>     |
|  42|[0x80002358]<br>0x00008857|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                 |[0x800005f8]:KMATT t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 88(ra)<br>     |
|  43|[0x80002360]<br>0xFEAADF02|- rs1_h1_val == 21845<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                        |[0x80000618]:KMATT t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 96(ra)<br>     |
|  44|[0x80002368]<br>0xFEAEDF02|- rs2_h1_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                           |[0x80000638]:KMATT t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 104(ra)<br>    |
|  45|[0x80002378]<br>0xFEAADFE2|- rs2_h0_val == -1<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                          |[0x80000670]:KMATT t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 120(ra)<br>    |
|  46|[0x80002380]<br>0xFEAEDFDA|- rs2_h1_val == 8<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                        |[0x80000690]:KMATT t6, t5, t4<br> [0x80000694]:csrrs t5, vxsat, zero<br> [0x80000698]:sw t6, 128(ra)<br>    |
|  47|[0x80002388]<br>0xFEAEDBD6|- rs2_h1_val == 4<br> - rs2_h0_val == -513<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                |[0x800006b0]:KMATT t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 136(ra)<br>    |
|  48|[0x80002390]<br>0xFEAEDB54|- rs2_h1_val == 2<br> - rs1_h1_val == -65<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                |[0x800006d0]:KMATT t6, t5, t4<br> [0x800006d4]:csrrs t5, vxsat, zero<br> [0x800006d8]:sw t6, 144(ra)<br>    |
|  49|[0x80002398]<br>0xFEAEDB4C|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x800006f0]:KMATT t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 152(ra)<br>    |
|  50|[0x800023a0]<br>0xFEB0DB4C|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                 |[0x80000710]:KMATT t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 160(ra)<br>    |
|  51|[0x800023a8]<br>0xFEB0CB44|- rs2_h0_val == 2048<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                      |[0x80000730]:KMATT t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 168(ra)<br>    |
|  52|[0x800023b0]<br>0xFEB0EB44|- rs1_h0_val == -32768<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                     |[0x8000074c]:KMATT t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 176(ra)<br>    |
|  53|[0x800023b8]<br>0xFEB0E63F|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                |[0x8000076c]:KMATT t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 184(ra)<br>    |
|  54|[0x800023c0]<br>0xDEB1263F|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                 |[0x8000078c]:KMATT t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 192(ra)<br>    |
|  55|[0x800023c8]<br>0xDEB12612|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                  |[0x800007a8]:KMATT t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 200(ra)<br>    |
|  56|[0x800023d0]<br>0xCEB0E612|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                             |[0x800007c8]:KMATT t6, t5, t4<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sw t6, 208(ra)<br>    |
|  57|[0x800023d8]<br>0xCEB30623|- rs2_h0_val == -129<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                     |[0x800007e8]:KMATT t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 216(ra)<br>    |
|  58|[0x800023e0]<br>0xCFB32624|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                              |[0x80000804]:KMATT t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 224(ra)<br>    |
|  59|[0x800023e8]<br>0xD1B36E25|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                              |[0x80000820]:KMATT t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 232(ra)<br>    |
|  60|[0x800023f0]<br>0xD1B36222|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                              |[0x80000840]:KMATT t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 240(ra)<br>    |
|  61|[0x80002400]<br>0xD1B3211A|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                 |[0x80000880]:KMATT t6, t5, t4<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sw t6, 256(ra)<br>    |
|  62|[0x80002408]<br>0xD1B2011A|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                               |[0x800008a0]:KMATT t6, t5, t4<br> [0x800008a4]:csrrs t5, vxsat, zero<br> [0x800008a8]:sw t6, 264(ra)<br>    |
|  63|[0x80002410]<br>0xD1B20A1A|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                |[0x800008bc]:KMATT t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 272(ra)<br>    |
|  64|[0x80002420]<br>0xD1A2099A|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                |[0x800008f4]:KMATT t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 288(ra)<br>    |
|  65|[0x80002428]<br>0xD1A2499B|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                 |[0x80000910]:KMATT t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 296(ra)<br>    |
|  66|[0x80002430]<br>0xD1B2499B|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                 |[0x80000930]:KMATT t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 304(ra)<br>    |
|  67|[0x80002438]<br>0xD1A79EDB|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                 |[0x80000950]:KMATT t6, t5, t4<br> [0x80000954]:csrrs t5, vxsat, zero<br> [0x80000958]:sw t6, 312(ra)<br>    |
|  68|[0x80002440]<br>0xD1A79CCB|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                              |[0x80000970]:KMATT t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 320(ra)<br>    |
|  69|[0x80002448]<br>0xD1975D0C|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                             |[0x80000990]:KMATT t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 328(ra)<br>    |
|  70|[0x80002450]<br>0xD1975CFB|- rs2_h0_val == -8193<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                    |[0x800009b0]:KMATT t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 336(ra)<br>    |
|  71|[0x80002458]<br>0xD1973CF9|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                  |[0x800009cc]:KMATT t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 344(ra)<br>    |
|  72|[0x80002460]<br>0xD1973CF9|- rs2_h0_val == -17<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                      |[0x800009ec]:KMATT t6, t5, t4<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sw t6, 352(ra)<br>    |
|  73|[0x80002468]<br>0xD1873CF9|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                             |[0x80000a0c]:KMATT t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 360(ra)<br>    |
|  74|[0x80002470]<br>0xD1873CF0|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x80000a2c]:KMATT t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 368(ra)<br>    |
|  75|[0x80002478]<br>0xD1852CF0|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                               |[0x80000a48]:KMATT t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 376(ra)<br>    |
|  76|[0x80002488]<br>0xC1852CE2|- rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a88]:KMATT t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 392(ra)<br>    |
