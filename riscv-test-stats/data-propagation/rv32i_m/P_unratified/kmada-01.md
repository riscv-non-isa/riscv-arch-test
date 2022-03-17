
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ad0')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | kmada      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmada-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 160      |
| STAT1                     | 75      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 80     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:KMADA t6, t5, t4
      [0x80000a3c]:csrrs t5, vxsat, zero
      [0x80000a40]:sw t6, 352(ra)
 -- Signature Address: 0x80002468 Data: 0x2892EEB8
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -3
      - rs2_h0_val == -16385
      - rs1_h1_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a58]:KMADA t6, t5, t4
      [0x80000a5c]:csrrs t5, vxsat, zero
      [0x80000a60]:sw t6, 360(ra)
 -- Signature Address: 0x80002470 Data: 0x450490F1
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs2_h0_val == 1024
      - rs1_h1_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a78]:KMADA t6, t5, t4
      [0x80000a7c]:csrrs t5, vxsat, zero
      [0x80000a80]:sw t6, 368(ra)
 -- Signature Address: 0x80002478 Data: 0x450491C6
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -65
      - rs1_h1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a98]:KMADA t6, t5, t4
      [0x80000a9c]:csrrs t5, vxsat, zero
      [0x80000aa0]:sw t6, 376(ra)
 -- Signature Address: 0x80002480 Data: 0x4404516C
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs1_h1_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ab4]:KMADA t6, t5, t4
      [0x80000ab8]:csrrs t5, vxsat, zero
      [0x80000abc]:sw t6, 384(ra)
 -- Signature Address: 0x80002488 Data: 0x4408976C
 -- Redundant Coverpoints hit by the op
      - opcode : kmada
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 256
      - rs1_h0_val == -17






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmada', 'rs1 : x8', 'rs2 : x8', 'rd : x8', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -3', 'rs2_h0_val == -16385', 'rs1_h1_val == -3', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000118]:KMADA fp, fp, fp
	-[0x8000011c]:csrrs fp, vxsat, zero
	-[0x80000120]:sw fp, 0(gp)
Current Store : [0x80000124] : sw fp, 4(gp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 1024', 'rs1_h1_val == 21845', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000138]:KMADA s9, s5, s5
	-[0x8000013c]:csrrs s5, vxsat, zero
	-[0x80000140]:sw s9, 8(gp)
Current Store : [0x80000144] : sw s5, 12(gp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x1', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -2', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000158]:KMADA s1, s9, ra
	-[0x8000015c]:csrrs s9, vxsat, zero
	-[0x80000160]:sw s1, 16(gp)
Current Store : [0x80000164] : sw s9, 20(gp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000178]:KMADA a2, a3, a2
	-[0x8000017c]:csrrs a3, vxsat, zero
	-[0x80000180]:sw a2, 24(gp)
Current Store : [0x80000184] : sw a3, 28(gp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x29', 'rd : x5', 'rs1 == rd != rs2', 'rs2_h1_val == 64', 'rs2_h0_val == -1025', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000198]:KMADA t0, t0, t4
	-[0x8000019c]:csrrs t0, vxsat, zero
	-[0x800001a0]:sw t0, 32(gp)
Current Store : [0x800001a4] : sw t0, 36(gp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x14', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -129', 'rs2_h0_val == 8192', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800001b4]:KMADA a4, s2, t6
	-[0x800001b8]:csrrs s2, vxsat, zero
	-[0x800001bc]:sw a4, 40(gp)
Current Store : [0x800001c0] : sw s2, 44(gp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x10', 'rs2_h1_val == -21846', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800001d0]:KMADA a0, a7, s4
	-[0x800001d4]:csrrs a7, vxsat, zero
	-[0x800001d8]:sw a0, 48(gp)
Current Store : [0x800001dc] : sw a7, 52(gp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x10', 'rd : x11', 'rs2_h1_val == 32767', 'rs2_h0_val == 2', 'rs1_h1_val == -513', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800001f0]:KMADA a1, ra, a0
	-[0x800001f4]:csrrs ra, vxsat, zero
	-[0x800001f8]:sw a1, 56(gp)
Current Store : [0x800001fc] : sw ra, 60(gp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x16', 'rd : x13', 'rs2_h1_val == -16385', 'rs1_h1_val == -2049', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000210]:KMADA a3, tp, a6
	-[0x80000214]:csrrs tp, vxsat, zero
	-[0x80000218]:sw a3, 64(gp)
Current Store : [0x8000021c] : sw tp, 68(gp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rd : x6', 'rs2_h1_val == -8193', 'rs2_h0_val == -32768', 'rs1_h1_val == -17', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000022c]:KMADA t1, a0, tp
	-[0x80000230]:csrrs a0, vxsat, zero
	-[0x80000234]:sw t1, 72(gp)
Current Store : [0x80000238] : sw a0, 76(gp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x27', 'rd : x28', 'rs2_h1_val == -4097', 'rs2_h0_val == 256', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000024c]:KMADA t3, t6, s11
	-[0x80000250]:csrrs t6, vxsat, zero
	-[0x80000254]:sw t3, 80(gp)
Current Store : [0x80000258] : sw t6, 84(gp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x15', 'rd : x7', 'rs2_h1_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000026c]:KMADA t2, s1, a5
	-[0x80000270]:csrrs s1, vxsat, zero
	-[0x80000274]:sw t2, 88(gp)
Current Store : [0x80000278] : sw s1, 92(gp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x24', 'rs2_h1_val == -1025', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000028c]:KMADA s8, t3, sp
	-[0x80000290]:csrrs t3, vxsat, zero
	-[0x80000294]:sw s8, 96(gp)
Current Store : [0x80000298] : sw t3, 100(gp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x1', 'rs2_h1_val == -513', 'rs2_h0_val == 0', 'rs1_h1_val == 4096', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800002a8]:KMADA ra, t1, s6
	-[0x800002ac]:csrrs t1, vxsat, zero
	-[0x800002b0]:sw ra, 104(gp)
Current Store : [0x800002b4] : sw t1, 108(gp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x17', 'rd : x27', 'rs2_h1_val == -257', 'rs1_h1_val == 128', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800002c8]:KMADA s11, s4, a7
	-[0x800002cc]:csrrs s4, vxsat, zero
	-[0x800002d0]:sw s11, 112(gp)
Current Store : [0x800002d4] : sw s4, 116(gp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x0', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x800002e8]:KMADA zero, a1, s7
	-[0x800002ec]:csrrs a1, vxsat, zero
	-[0x800002f0]:sw zero, 120(gp)
Current Store : [0x800002f4] : sw a1, 124(gp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x7', 'rd : x15', 'rs1_h0_val == -32768', 'rs2_h1_val == -33', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x8000030c]:KMADA a5, t4, t2
	-[0x80000310]:csrrs t4, vxsat, zero
	-[0x80000314]:sw a5, 0(ra)
Current Store : [0x80000318] : sw t4, 4(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x6', 'rd : x26', 'rs2_h1_val == -17', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x8000032c]:KMADA s10, a5, t1
	-[0x80000330]:csrrs a5, vxsat, zero
	-[0x80000334]:sw s10, 8(ra)
Current Store : [0x80000338] : sw a5, 12(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x11', 'rd : x18', 'rs2_h1_val == -9', 'rs2_h0_val == -257', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000034c]:KMADA s2, t2, a1
	-[0x80000350]:csrrs t2, vxsat, zero
	-[0x80000354]:sw s2, 16(ra)
Current Store : [0x80000358] : sw t2, 20(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x19', 'rd : x4', 'rs2_h1_val == -5', 'rs2_h0_val == 128', 'rs1_h1_val == -9', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000036c]:KMADA tp, gp, s3
	-[0x80000370]:csrrs gp, vxsat, zero
	-[0x80000374]:sw tp, 24(ra)
Current Store : [0x80000378] : sw gp, 28(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x14', 'rd : x17', 'rs2_h1_val == -2', 'rs2_h0_val == 32', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000038c]:KMADA a7, s3, a4
	-[0x80000390]:csrrs s3, vxsat, zero
	-[0x80000394]:sw a7, 32(ra)
Current Store : [0x80000398] : sw s3, 36(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x19', 'rs2_h1_val == -32768', 'rs2_h0_val == -21846', 'rs1_h1_val == -16385', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800003ac]:KMADA s3, t5, s10
	-[0x800003b0]:csrrs t5, vxsat, zero
	-[0x800003b4]:sw s3, 40(ra)
Current Store : [0x800003b8] : sw t5, 44(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x2', 'rs2_h1_val == 0', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800003cc]:KMADA sp, s7, zero
	-[0x800003d0]:csrrs s7, vxsat, zero
	-[0x800003d4]:sw sp, 48(ra)
Current Store : [0x800003d8] : sw s7, 52(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rd : x21', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x800003ec]:KMADA s5, s8, s1
	-[0x800003f0]:csrrs s8, vxsat, zero
	-[0x800003f4]:sw s5, 56(ra)
Current Store : [0x800003f8] : sw s8, 60(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x24', 'rd : x20', 'rs2_h1_val == 4096', 'rs2_h0_val == 32767', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000040c]:KMADA s4, a4, s8
	-[0x80000410]:csrrs a4, vxsat, zero
	-[0x80000414]:sw s4, 64(ra)
Current Store : [0x80000418] : sw a4, 68(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x5', 'rd : x22', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x8000042c]:KMADA s6, a6, t0
	-[0x80000430]:csrrs a6, vxsat, zero
	-[0x80000434]:sw s6, 72(ra)
Current Store : [0x80000438] : sw a6, 76(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x25', 'rd : x30', 'rs2_h1_val == 1024', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000044c]:KMADA t5, s6, s9
	-[0x80000450]:csrrs s6, vxsat, zero
	-[0x80000454]:sw t5, 80(ra)
Current Store : [0x80000458] : sw s6, 84(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x13', 'rd : x16', 'rs2_h1_val == 512', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000468]:KMADA a6, sp, a3
	-[0x8000046c]:csrrs sp, vxsat, zero
	-[0x80000470]:sw a6, 88(ra)
Current Store : [0x80000474] : sw sp, 92(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x28', 'rd : x3', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80000484]:KMADA gp, zero, t3
	-[0x80000488]:csrrs zero, vxsat, zero
	-[0x8000048c]:sw gp, 96(ra)
Current Store : [0x80000490] : sw zero, 100(ra) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x30', 'rd : x29', 'rs2_h1_val == 128', 'rs2_h0_val == -2049', 'rs1_h1_val == -21846', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800004a4]:KMADA t4, s10, t5
	-[0x800004a8]:csrrs s10, vxsat, zero
	-[0x800004ac]:sw t4, 104(ra)
Current Store : [0x800004b0] : sw s10, 108(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x18', 'rd : x31', 'rs2_h1_val == 32', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800004c4]:KMADA t6, a2, s2
	-[0x800004c8]:csrrs a2, vxsat, zero
	-[0x800004cc]:sw t6, 112(ra)
Current Store : [0x800004d0] : sw a2, 116(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x3', 'rd : x23', 'rs2_h1_val == 1', 'rs1_h1_val == 16', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004ec]:KMADA s7, s11, gp
	-[0x800004f0]:csrrs s11, vxsat, zero
	-[0x800004f4]:sw s7, 0(ra)
Current Store : [0x800004f8] : sw s11, 4(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x8000050c]:KMADA t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 8(ra)
Current Store : [0x80000518] : sw t5, 12(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000052c]:KMADA t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 16(ra)
Current Store : [0x80000538] : sw t5, 20(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000054c]:KMADA t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 24(ra)
Current Store : [0x80000558] : sw t5, 28(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x8000056c]:KMADA t6, t5, t4
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 32(ra)
Current Store : [0x80000578] : sw t5, 36(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000588]:KMADA t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 40(ra)
Current Store : [0x80000594] : sw t5, 44(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800005a4]:KMADA t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 48(ra)
Current Store : [0x800005b0] : sw t5, 52(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h1_val == -1', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800005c0]:KMADA t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 56(ra)
Current Store : [0x800005cc] : sw t5, 60(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800005e0]:KMADA t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 64(ra)
Current Store : [0x800005ec] : sw t5, 68(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005fc]:KMADA t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 72(ra)
Current Store : [0x80000608] : sw t5, 76(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000618]:KMADA t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 80(ra)
Current Store : [0x80000624] : sw t5, 84(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h1_val == -33', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000638]:KMADA t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 88(ra)
Current Store : [0x80000644] : sw t5, 92(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000658]:KMADA t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 96(ra)
Current Store : [0x80000664] : sw t5, 100(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000678]:KMADA t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 104(ra)
Current Store : [0x80000684] : sw t5, 108(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000698]:KMADA t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 112(ra)
Current Store : [0x800006a4] : sw t5, 116(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800006b8]:KMADA t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 120(ra)
Current Store : [0x800006c4] : sw t5, 124(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800006d8]:KMADA t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 128(ra)
Current Store : [0x800006e4] : sw t5, 132(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800006f8]:KMADA t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 136(ra)
Current Store : [0x80000704] : sw t5, 140(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000714]:KMADA t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 144(ra)
Current Store : [0x80000720] : sw t5, 148(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000734]:KMADA t6, t5, t4
	-[0x80000738]:csrrs t5, vxsat, zero
	-[0x8000073c]:sw t6, 152(ra)
Current Store : [0x80000740] : sw t5, 156(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000754]:KMADA t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 160(ra)
Current Store : [0x80000760] : sw t5, 164(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000774]:KMADA t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 168(ra)
Current Store : [0x80000780] : sw t5, 172(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000794]:KMADA t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 176(ra)
Current Store : [0x800007a0] : sw t5, 180(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800007b0]:KMADA t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 184(ra)
Current Store : [0x800007bc] : sw t5, 188(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16384', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800007d0]:KMADA t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 192(ra)
Current Store : [0x800007dc] : sw t5, 196(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007f0]:KMADA t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 200(ra)
Current Store : [0x800007fc] : sw t5, 204(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000810]:KMADA t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 208(ra)
Current Store : [0x8000081c] : sw t5, 212(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000830]:KMADA t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 216(ra)
Current Store : [0x8000083c] : sw t5, 220(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000084c]:KMADA t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 224(ra)
Current Store : [0x80000858] : sw t5, 228(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000864]:KMADA t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 232(ra)
Current Store : [0x80000870] : sw t5, 236(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000884]:KMADA t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 240(ra)
Current Store : [0x80000890] : sw t5, 244(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800008a4]:KMADA t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 248(ra)
Current Store : [0x800008b0] : sw t5, 252(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008c4]:KMADA t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 256(ra)
Current Store : [0x800008d0] : sw t5, 260(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008e4]:KMADA t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 264(ra)
Current Store : [0x800008f0] : sw t5, 268(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000900]:KMADA t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 272(ra)
Current Store : [0x8000090c] : sw t5, 276(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x8000091c]:KMADA t6, t5, t4
	-[0x80000920]:csrrs t5, vxsat, zero
	-[0x80000924]:sw t6, 280(ra)
Current Store : [0x80000928] : sw t5, 284(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x8000093c]:KMADA t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 288(ra)
Current Store : [0x80000948] : sw t5, 292(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x8000095c]:KMADA t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 296(ra)
Current Store : [0x80000968] : sw t5, 300(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x8000097c]:KMADA t6, t5, t4
	-[0x80000980]:csrrs t5, vxsat, zero
	-[0x80000984]:sw t6, 304(ra)
Current Store : [0x80000988] : sw t5, 308(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000099c]:KMADA t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 312(ra)
Current Store : [0x800009a8] : sw t5, 316(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800009bc]:KMADA t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 320(ra)
Current Store : [0x800009c8] : sw t5, 324(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x800009dc]:KMADA t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 328(ra)
Current Store : [0x800009e8] : sw t5, 332(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800009fc]:KMADA t6, t5, t4
	-[0x80000a00]:csrrs t5, vxsat, zero
	-[0x80000a04]:sw t6, 336(ra)
Current Store : [0x80000a08] : sw t5, 340(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000a1c]:KMADA t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 344(ra)
Current Store : [0x80000a28] : sw t5, 348(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -3', 'rs2_h0_val == -16385', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000a38]:KMADA t6, t5, t4
	-[0x80000a3c]:csrrs t5, vxsat, zero
	-[0x80000a40]:sw t6, 352(ra)
Current Store : [0x80000a44] : sw t5, 356(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 1024', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000a58]:KMADA t6, t5, t4
	-[0x80000a5c]:csrrs t5, vxsat, zero
	-[0x80000a60]:sw t6, 360(ra)
Current Store : [0x80000a64] : sw t5, 364(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -65', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000a78]:KMADA t6, t5, t4
	-[0x80000a7c]:csrrs t5, vxsat, zero
	-[0x80000a80]:sw t6, 368(ra)
Current Store : [0x80000a84] : sw t5, 372(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 16384', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000a98]:KMADA t6, t5, t4
	-[0x80000a9c]:csrrs t5, vxsat, zero
	-[0x80000aa0]:sw t6, 376(ra)
Current Store : [0x80000aa4] : sw t5, 380(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : kmada', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 256', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000ab4]:KMADA t6, t5, t4
	-[0x80000ab8]:csrrs t5, vxsat, zero
	-[0x80000abc]:sw t6, 384(ra)
Current Store : [0x80000ac0] : sw t5, 388(ra) -- Store: [0x8000248c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                               coverpoints                                                                                                                                                                |                                                    code                                                     |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmada<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -3<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -3<br> - rs1_h0_val == -16385<br> |[0x80000118]:KMADA fp, fp, fp<br> [0x8000011c]:csrrs fp, vxsat, zero<br> [0x80000120]:sw fp, 0(gp)<br>       |
|   2|[0x80002218]<br>0x0A403C37|- rs1 : x21<br> - rs2 : x21<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 1024<br>                                                                               |[0x80000138]:KMADA s9, s5, s5<br> [0x8000013c]:csrrs s5, vxsat, zero<br> [0x80000140]:sw s9, 8(gp)<br>       |
|   3|[0x80002220]<br>0xADFEE5A0|- rs1 : x25<br> - rs2 : x1<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2<br> - rs1_h1_val == -5<br>                                                    |[0x80000158]:KMADA s1, s9, ra<br> [0x8000015c]:csrrs s9, vxsat, zero<br> [0x80000160]:sw s1, 16(gp)<br>      |
|   4|[0x80002228]<br>0xFFFA0006|- rs1 : x13<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h0_val == -9<br>                                                                                                                                                                                                      |[0x80000178]:KMADA a2, a3, a2<br> [0x8000017c]:csrrs a3, vxsat, zero<br> [0x80000180]:sw a2, 24(gp)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x5<br> - rs2 : x29<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs2_h1_val == 64<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                            |[0x80000198]:KMADA t0, t0, t4<br> [0x8000019c]:csrrs t0, vxsat, zero<br> [0x800001a0]:sw t0, 32(gp)<br>      |
|   6|[0x80002238]<br>0xF54FDC77|- rs1 : x18<br> - rs2 : x31<br> - rd : x14<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -257<br>                                                                                                                                                                         |[0x800001b4]:KMADA a4, s2, t6<br> [0x800001b8]:csrrs s2, vxsat, zero<br> [0x800001bc]:sw a4, 40(gp)<br>      |
|   7|[0x80002240]<br>0x0041ACAE|- rs1 : x17<br> - rs2 : x20<br> - rd : x10<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                                                        |[0x800001d0]:KMADA a0, a7, s4<br> [0x800001d4]:csrrs a7, vxsat, zero<br> [0x800001d8]:sw a0, 48(gp)<br>      |
|   8|[0x80002248]<br>0xAA7F3D90|- rs1 : x1<br> - rs2 : x10<br> - rd : x11<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 2<br> - rs1_h1_val == -513<br> - rs1_h0_val == 16<br>                                                                                                                                                                                             |[0x800001f0]:KMADA a1, ra, a0<br> [0x800001f4]:csrrs ra, vxsat, zero<br> [0x800001f8]:sw a1, 56(gp)<br>      |
|   9|[0x80002250]<br>0x02004825|- rs1 : x4<br> - rs2 : x16<br> - rd : x13<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                 |[0x80000210]:KMADA a3, tp, a6<br> [0x80000214]:csrrs tp, vxsat, zero<br> [0x80000218]:sw a3, 64(gp)<br>      |
|  10|[0x80002258]<br>0x80000000|- rs1 : x10<br> - rs2 : x4<br> - rd : x6<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -17<br> - rs1_h0_val == 64<br>                                                                                                                                                                                          |[0x8000022c]:KMADA t1, a0, tp<br> [0x80000230]:csrrs a0, vxsat, zero<br> [0x80000234]:sw t1, 72(gp)<br>      |
|  11|[0x80002260]<br>0xDDA814BF|- rs1 : x31<br> - rs2 : x27<br> - rd : x28<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 256<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                  |[0x8000024c]:KMADA t3, t6, s11<br> [0x80000250]:csrrs t6, vxsat, zero<br> [0x80000254]:sw t3, 80(gp)<br>     |
|  12|[0x80002268]<br>0xB7FC1706|- rs1 : x9<br> - rs2 : x15<br> - rd : x7<br> - rs2_h1_val == -2049<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                          |[0x8000026c]:KMADA t2, s1, a5<br> [0x80000270]:csrrs s1, vxsat, zero<br> [0x80000274]:sw t2, 88(gp)<br>      |
|  13|[0x80002270]<br>0xDB7D6C89|- rs1 : x28<br> - rs2 : x2<br> - rd : x24<br> - rs2_h1_val == -1025<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                          |[0x8000028c]:KMADA s8, t3, sp<br> [0x80000290]:csrrs t3, vxsat, zero<br> [0x80000294]:sw s8, 96(gp)<br>      |
|  14|[0x80002278]<br>0xFFDFF000|- rs1 : x6<br> - rs2 : x22<br> - rd : x1<br> - rs2_h1_val == -513<br> - rs2_h0_val == 0<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                            |[0x800002a8]:KMADA ra, t1, s6<br> [0x800002ac]:csrrs t1, vxsat, zero<br> [0x800002b0]:sw ra, 104(gp)<br>     |
|  15|[0x80002280]<br>0xEBFE5081|- rs1 : x20<br> - rs2 : x17<br> - rd : x27<br> - rs2_h1_val == -257<br> - rs1_h1_val == 128<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                 |[0x800002c8]:KMADA s11, s4, a7<br> [0x800002cc]:csrrs s4, vxsat, zero<br> [0x800002d0]:sw s11, 112(gp)<br>   |
|  16|[0x80002288]<br>0x00000000|- rs1 : x11<br> - rs2 : x23<br> - rd : x0<br> - rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                     |[0x800002e8]:KMADA zero, a1, s7<br> [0x800002ec]:csrrs a1, vxsat, zero<br> [0x800002f0]:sw zero, 120(gp)<br> |
|  17|[0x80002290]<br>0xF8407F57|- rs1 : x29<br> - rs2 : x7<br> - rd : x15<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -33<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                 |[0x8000030c]:KMADA a5, t4, t2<br> [0x80000310]:csrrs t4, vxsat, zero<br> [0x80000314]:sw a5, 0(ra)<br>       |
|  18|[0x80002298]<br>0x76DF5A75|- rs1 : x15<br> - rs2 : x6<br> - rd : x26<br> - rs2_h1_val == -17<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                               |[0x8000032c]:KMADA s10, a5, t1<br> [0x80000330]:csrrs a5, vxsat, zero<br> [0x80000334]:sw s10, 8(ra)<br>     |
|  19|[0x800022a0]<br>0x00080913|- rs1 : x7<br> - rs2 : x11<br> - rd : x18<br> - rs2_h1_val == -9<br> - rs2_h0_val == -257<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                      |[0x8000034c]:KMADA s2, t2, a1<br> [0x80000350]:csrrs t2, vxsat, zero<br> [0x80000354]:sw s2, 16(ra)<br>      |
|  20|[0x800022a8]<br>0xDFFF7FAD|- rs1 : x3<br> - rs2 : x19<br> - rd : x4<br> - rs2_h1_val == -5<br> - rs2_h0_val == 128<br> - rs1_h1_val == -9<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                 |[0x8000036c]:KMADA tp, gp, s3<br> [0x80000370]:csrrs gp, vxsat, zero<br> [0x80000374]:sw tp, 24(ra)<br>      |
|  21|[0x800022b0]<br>0xFEFEFF3F|- rs1 : x19<br> - rs2 : x14<br> - rd : x17<br> - rs2_h1_val == -2<br> - rs2_h0_val == 32<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                     |[0x8000038c]:KMADA a7, s3, a4<br> [0x80000390]:csrrs s3, vxsat, zero<br> [0x80000394]:sw a7, 32(ra)<br>      |
|  22|[0x800022b8]<br>0x3C72B8E5|- rs1 : x30<br> - rs2 : x26<br> - rd : x19<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                |[0x800003ac]:KMADA s3, t5, s10<br> [0x800003b0]:csrrs t5, vxsat, zero<br> [0x800003b4]:sw s3, 40(ra)<br>     |
|  23|[0x800022c0]<br>0xFBFFFFF7|- rs1 : x23<br> - rs2 : x0<br> - rd : x2<br> - rs2_h1_val == 0<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                              |[0x800003cc]:KMADA sp, s7, zero<br> [0x800003d0]:csrrs s7, vxsat, zero<br> [0x800003d4]:sw sp, 48(ra)<br>    |
|  24|[0x800022c8]<br>0x0000A006|- rs1 : x24<br> - rs2 : x9<br> - rd : x21<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                    |[0x800003ec]:KMADA s5, s8, s1<br> [0x800003f0]:csrrs s8, vxsat, zero<br> [0x800003f4]:sw s5, 56(ra)<br>      |
|  25|[0x800022d0]<br>0xFEFF0202|- rs1 : x14<br> - rs2 : x24<br> - rd : x20<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 32767<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                |[0x8000040c]:KMADA s4, a4, s8<br> [0x80000410]:csrrs a4, vxsat, zero<br> [0x80000414]:sw s4, 64(ra)<br>      |
|  26|[0x800022d8]<br>0xFDFEC050|- rs1 : x16<br> - rs2 : x5<br> - rd : x22<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                    |[0x8000042c]:KMADA s6, a6, t0<br> [0x80000430]:csrrs a6, vxsat, zero<br> [0x80000434]:sw s6, 72(ra)<br>      |
|  27|[0x800022e0]<br>0xFFFFA801|- rs1 : x22<br> - rs2 : x25<br> - rd : x30<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                          |[0x8000044c]:KMADA t5, s6, s9<br> [0x80000450]:csrrs s6, vxsat, zero<br> [0x80000454]:sw t5, 80(ra)<br>      |
|  28|[0x800022e8]<br>0x00000001|- rs1 : x2<br> - rs2 : x13<br> - rd : x16<br> - rs2_h1_val == 512<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                         |[0x80000468]:KMADA a6, sp, a3<br> [0x8000046c]:csrrs sp, vxsat, zero<br> [0x80000470]:sw a6, 88(ra)<br>      |
|  29|[0x800022f0]<br>0x00000001|- rs1 : x0<br> - rs2 : x28<br> - rd : x3<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                      |[0x80000484]:KMADA gp, zero, t3<br> [0x80000488]:csrrs zero, vxsat, zero<br> [0x8000048c]:sw gp, 96(ra)<br>  |
|  30|[0x800022f8]<br>0xFFD54D00|- rs1 : x26<br> - rs2 : x30<br> - rd : x29<br> - rs2_h1_val == 128<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 1<br>                                                                                                                                                                                         |[0x800004a4]:KMADA t4, s10, t5<br> [0x800004a8]:csrrs s10, vxsat, zero<br> [0x800004ac]:sw t4, 104(ra)<br>   |
|  31|[0x80002300]<br>0xFFFDFFAB|- rs1 : x12<br> - rs2 : x18<br> - rd : x31<br> - rs2_h1_val == 32<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                           |[0x800004c4]:KMADA t6, a2, s2<br> [0x800004c8]:csrrs a2, vxsat, zero<br> [0x800004cc]:sw t6, 112(ra)<br>     |
|  32|[0x80002308]<br>0xFFEFC052|- rs1 : x27<br> - rs2 : x3<br> - rd : x23<br> - rs2_h1_val == 1<br> - rs1_h1_val == 16<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                        |[0x800004ec]:KMADA s7, s11, gp<br> [0x800004f0]:csrrs s11, vxsat, zero<br> [0x800004f4]:sw s7, 0(ra)<br>     |
|  33|[0x80002310]<br>0xFFFDEC71|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                   |[0x8000050c]:KMADA t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 8(ra)<br>       |
|  34|[0x80002318]<br>0xFFFDAC24|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                    |[0x8000052c]:KMADA t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 16(ra)<br>      |
|  35|[0x80002320]<br>0xFFFDAB97|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                    |[0x8000054c]:KMADA t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 24(ra)<br>      |
|  36|[0x80002328]<br>0xFFFDA699|- rs2_h0_val == -1<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                             |[0x8000056c]:KMADA t6, t5, t4<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 32(ra)<br>      |
|  37|[0x80002330]<br>0xFFFEA6A1|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                 |[0x80000588]:KMADA t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 40(ra)<br>      |
|  38|[0x80002338]<br>0xF553E68D|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                  |[0x800005a4]:KMADA t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 48(ra)<br>      |
|  39|[0x80002340]<br>0xF453D684|- rs2_h0_val == -4097<br> - rs1_h1_val == -1<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                 |[0x800005c0]:KMADA t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 56(ra)<br>      |
|  40|[0x80002348]<br>0xF452CC04|- rs2_h0_val == -33<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                          |[0x800005e0]:KMADA t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 64(ra)<br>      |
|  41|[0x80002350]<br>0xF492CC04|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                   |[0x800005fc]:KMADA t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 72(ra)<br>      |
|  42|[0x80002358]<br>0xF414CC04|- rs1_h1_val == 64<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                            |[0x80000618]:KMADA t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 80(ra)<br>      |
|  43|[0x80002360]<br>0xF4054FA5|- rs2_h0_val == -8193<br> - rs1_h1_val == -33<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                 |[0x80000638]:KMADA t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 88(ra)<br>      |
|  44|[0x80002368]<br>0xF4154F99|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                    |[0x80000658]:KMADA t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 96(ra)<br>      |
|  45|[0x80002370]<br>0xF429CF91|- rs1_h1_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                          |[0x80000678]:KMADA t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 104(ra)<br>     |
|  46|[0x80002378]<br>0xF429BD60|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                     |[0x80000698]:KMADA t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 112(ra)<br>     |
|  47|[0x80002380]<br>0xFC299C5E|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                     |[0x800006b8]:KMADA t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 120(ra)<br>     |
|  48|[0x80002388]<br>0xFC29141E|- rs2_h1_val == 16<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                            |[0x800006d8]:KMADA t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 128(ra)<br>     |
|  49|[0x80002390]<br>0xFC2917FA|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                     |[0x800006f8]:KMADA t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 136(ra)<br>     |
|  50|[0x80002398]<br>0xFC08D7F2|- rs2_h1_val == 4<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                           |[0x80000714]:KMADA t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 144(ra)<br>     |
|  51|[0x800023a0]<br>0xFC0858F7|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                    |[0x80000734]:KMADA t6, t5, t4<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sw t6, 152(ra)<br>     |
|  52|[0x800023a8]<br>0xFB88592A|- rs2_h0_val == -3<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                            |[0x80000754]:KMADA t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 160(ra)<br>     |
|  53|[0x800023b0]<br>0xFB859E82|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                   |[0x80000774]:KMADA t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 168(ra)<br>     |
|  54|[0x800023b8]<br>0xF7855DC2|- rs2_h0_val == 64<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x80000794]:KMADA t6, t5, t4<br> [0x80000798]:csrrs t5, vxsat, zero<br> [0x8000079c]:sw t6, 176(ra)<br>     |
|  55|[0x800023c0]<br>0xF7875DA2|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                    |[0x800007b0]:KMADA t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 184(ra)<br>     |
|  56|[0x800023c8]<br>0xF78CDD9A|- rs2_h1_val == 16384<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                           |[0x800007d0]:KMADA t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 192(ra)<br>     |
|  57|[0x800023d0]<br>0xF79CDDBE|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                     |[0x800007f0]:KMADA t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 200(ra)<br>     |
|  58|[0x800023d8]<br>0xF79CDD99|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                     |[0x80000810]:KMADA t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 208(ra)<br>     |
|  59|[0x800023e0]<br>0xF89E8647|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                 |[0x80000830]:KMADA t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 216(ra)<br>     |
|  60|[0x800023e8]<br>0xF89DA641|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                 |[0x8000084c]:KMADA t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 224(ra)<br>     |
|  61|[0x800023f0]<br>0xF8BDC742|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                  |[0x80000864]:KMADA t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 232(ra)<br>     |
|  62|[0x800023f8]<br>0x0E139488|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                  |[0x80000884]:KMADA t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 240(ra)<br>     |
|  63|[0x80002400]<br>0x0E114888|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                   |[0x800008a4]:KMADA t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 248(ra)<br>     |
|  64|[0x80002408]<br>0x0E316088|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                  |[0x800008c4]:KMADA t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 256(ra)<br>     |
|  65|[0x80002410]<br>0x0E380728|- rs1_h1_val == 1024<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                        |[0x800008e4]:KMADA t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 264(ra)<br>     |
|  66|[0x80002418]<br>0x0E3A0768|- rs2_h1_val == 2<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                              |[0x80000900]:KMADA t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 272(ra)<br>     |
|  67|[0x80002420]<br>0x0E39B153|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                    |[0x8000091c]:KMADA t6, t5, t4<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sw t6, 280(ra)<br>     |
|  68|[0x80002428]<br>0x0E645BD3|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                 |[0x8000093c]:KMADA t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 288(ra)<br>     |
|  69|[0x80002430]<br>0x0E645B91|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                     |[0x8000095c]:KMADA t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 296(ra)<br>     |
|  70|[0x80002438]<br>0x0E84670E|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                     |[0x8000097c]:KMADA t6, t5, t4<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sw t6, 304(ra)<br>     |
|  71|[0x80002440]<br>0x0E8C878F|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                     |[0x8000099c]:KMADA t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 312(ra)<br>     |
|  72|[0x80002448]<br>0x0E8C8BB9|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                  |[0x800009bc]:KMADA t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 320(ra)<br>     |
|  73|[0x80002450]<br>0x068D1FFB|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                   |[0x800009dc]:KMADA t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 328(ra)<br>     |
|  74|[0x80002458]<br>0x088D43FC|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                 |[0x800009fc]:KMADA t6, t5, t4<br> [0x80000a00]:csrrs t5, vxsat, zero<br> [0x80000a04]:sw t6, 336(ra)<br>     |
|  75|[0x80002460]<br>0x08926EB2|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                   |[0x80000a1c]:KMADA t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 344(ra)<br>     |
