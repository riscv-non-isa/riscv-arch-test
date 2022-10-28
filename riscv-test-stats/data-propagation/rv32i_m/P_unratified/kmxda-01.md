
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000aa0')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | kmxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmxda-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 158      |
| STAT1                     | 75      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 79     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a28]:KMXDA t6, t5, t4
      [0x80000a2c]:csrrs t5, vxsat, zero
      [0x80000a30]:sw t6, 360(ra)
 -- Signature Address: 0x80002468 Data: 0xFFFCBFFA
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a48]:KMXDA t6, t5, t4
      [0x80000a4c]:csrrs t5, vxsat, zero
      [0x80000a50]:sw t6, 368(ra)
 -- Signature Address: 0x80002470 Data: 0x00000102
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -129
      - rs2_h0_val == 4
      - rs1_h1_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a68]:KMXDA t6, t5, t4
      [0x80000a6c]:csrrs t5, vxsat, zero
      [0x80000a70]:sw t6, 376(ra)
 -- Signature Address: 0x80002478 Data: 0xFEAA56B1
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs1_h1_val == 1
      - rs1_h0_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a88]:KMXDA t6, t5, t4
      [0x80000a8c]:csrrs t5, vxsat, zero
      [0x80000a90]:sw t6, 384(ra)
 -- Signature Address: 0x80002480 Data: 0xFDFFA403
 -- Redundant Coverpoints hit by the op
      - opcode : kmxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -1025
      - rs2_h0_val == -2
      - rs1_h1_val == -4097
      - rs1_h0_val == 32767






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmxda', 'rs1 : x15', 'rs2 : x15', 'rd : x15', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -8193', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000118]:KMXDA a5, a5, a5
	-[0x8000011c]:csrrs a5, vxsat, zero
	-[0x80000120]:sw a5, 0(tp)
Current Store : [0x80000124] : sw a5, 4(tp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -129', 'rs2_h0_val == 4', 'rs1_h1_val == -129', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000138]:KMXDA a7, a3, a3
	-[0x8000013c]:csrrs a3, vxsat, zero
	-[0x80000140]:sw a7, 8(tp)
Current Store : [0x80000144] : sw a3, 12(tp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x3', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 8', 'rs2_h0_val == 512', 'rs1_h1_val == -257', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000158]:KMXDA gp, fp, a2
	-[0x8000015c]:csrrs fp, vxsat, zero
	-[0x80000160]:sw gp, 16(tp)
Current Store : [0x80000164] : sw fp, 20(tp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -1', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000174]:KMXDA a6, t2, a6
	-[0x80000178]:csrrs t2, vxsat, zero
	-[0x8000017c]:sw a6, 24(tp)
Current Store : [0x80000180] : sw t2, 28(tp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x2', 'rs1 == rd != rs2', 'rs2_h1_val == 32767', 'rs2_h0_val == -2', 'rs1_h1_val == -2049', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000194]:KMXDA sp, sp, t0
	-[0x80000198]:csrrs sp, vxsat, zero
	-[0x8000019c]:sw sp, 32(tp)
Current Store : [0x800001a0] : sw sp, 36(tp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x23', 'rd : x10', 'rs2_h1_val == 32', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800001b4]:KMXDA a0, s8, s7
	-[0x800001b8]:csrrs s8, vxsat, zero
	-[0x800001bc]:sw a0, 40(tp)
Current Store : [0x800001c0] : sw s8, 44(tp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x24', 'rd : x19', 'rs2_h1_val == -21846', 'rs2_h0_val == 8', 'rs1_h1_val == 21845', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800001d4]:KMXDA s3, a2, s8
	-[0x800001d8]:csrrs a2, vxsat, zero
	-[0x800001dc]:sw s3, 48(tp)
Current Store : [0x800001e0] : sw a2, 52(tp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x0', 'rs2_h1_val == 21845', 'rs1_h1_val == 1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800001f4]:KMXDA zero, s11, t5
	-[0x800001f8]:csrrs s11, vxsat, zero
	-[0x800001fc]:sw zero, 56(tp)
Current Store : [0x80000200] : sw s11, 60(tp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rd : x18', 'rs2_h1_val == -16385', 'rs1_h1_val == 1024', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000214]:KMXDA s2, a0, a1
	-[0x80000218]:csrrs a0, vxsat, zero
	-[0x8000021c]:sw s2, 64(tp)
Current Store : [0x80000220] : sw a0, 68(tp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x25', 'rs2_h1_val == -8193', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000234]:KMXDA s9, gp, s10
	-[0x80000238]:csrrs gp, vxsat, zero
	-[0x8000023c]:sw s9, 72(tp)
Current Store : [0x80000240] : sw gp, 76(tp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x20', 'rs2_h1_val == -4097', 'rs2_h0_val == -33', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000254]:KMXDA s4, zero, t4
	-[0x80000258]:csrrs zero, vxsat, zero
	-[0x8000025c]:sw s4, 80(tp)
Current Store : [0x80000260] : sw zero, 84(tp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x27', 'rd : x6', 'rs2_h1_val == -2049', 'rs1_h1_val == -21846', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000270]:KMXDA t1, ra, s11
	-[0x80000274]:csrrs ra, vxsat, zero
	-[0x80000278]:sw t1, 88(tp)
Current Store : [0x8000027c] : sw ra, 92(tp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x0', 'rd : x14', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -4097', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000290]:KMXDA a4, t1, zero
	-[0x80000294]:csrrs t1, vxsat, zero
	-[0x80000298]:sw a4, 96(tp)
Current Store : [0x8000029c] : sw t1, 100(tp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x23', 'rs2_h1_val == -513', 'rs2_h0_val == 64', 'rs1_h1_val == -16385', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800002b0]:KMXDA s7, s2, a7
	-[0x800002b4]:csrrs s2, vxsat, zero
	-[0x800002b8]:sw s7, 104(tp)
Current Store : [0x800002bc] : sw s2, 108(tp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x25', 'rd : x5', 'rs2_h1_val == -257', 'rs2_h0_val == -17', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800002d0]:KMXDA t0, s6, s9
	-[0x800002d4]:csrrs s6, vxsat, zero
	-[0x800002d8]:sw t0, 112(tp)
Current Store : [0x800002dc] : sw s6, 116(tp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rd : x24', 'rs2_h1_val == -65', 'rs1_h1_val == 256', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800002f0]:KMXDA s8, s10, s3
	-[0x800002f4]:csrrs s10, vxsat, zero
	-[0x800002f8]:sw s8, 120(tp)
Current Store : [0x800002fc] : sw s10, 124(tp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x12', 'rs2_h1_val == -33', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000310]:KMXDA a2, a4, s5
	-[0x80000314]:csrrs a4, vxsat, zero
	-[0x80000318]:sw a2, 128(tp)
Current Store : [0x8000031c] : sw a4, 132(tp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x28', 'rd : x4', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000334]:KMXDA tp, a1, t3
	-[0x80000338]:csrrs a1, vxsat, zero
	-[0x8000033c]:sw tp, 0(gp)
Current Store : [0x80000340] : sw a1, 4(gp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x14', 'rd : x8', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80000354]:KMXDA fp, s7, a4
	-[0x80000358]:csrrs s7, vxsat, zero
	-[0x8000035c]:sw fp, 8(gp)
Current Store : [0x80000360] : sw s7, 12(gp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rd : x13', 'rs2_h1_val == -5', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000374]:KMXDA a3, s1, s2
	-[0x80000378]:csrrs s1, vxsat, zero
	-[0x8000037c]:sw a3, 16(gp)
Current Store : [0x80000380] : sw s1, 20(gp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x11', 'rs2_h1_val == -3', 'rs2_h0_val == 4096', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000038c]:KMXDA a1, t5, t1
	-[0x80000390]:csrrs t5, vxsat, zero
	-[0x80000394]:sw a1, 24(gp)
Current Store : [0x80000398] : sw t5, 28(gp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x9', 'rd : x26', 'rs2_h1_val == -2', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800003a8]:KMXDA s10, t4, s1
	-[0x800003ac]:csrrs t4, vxsat, zero
	-[0x800003b0]:sw s10, 32(gp)
Current Store : [0x800003b4] : sw t4, 36(gp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x7', 'rd : x22', 'rs2_h1_val == -32768', 'rs2_h0_val == 256', 'rs1_h1_val == 2', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800003c8]:KMXDA s6, tp, t2
	-[0x800003cc]:csrrs tp, vxsat, zero
	-[0x800003d0]:sw s6, 40(gp)
Current Store : [0x800003d4] : sw tp, 44(gp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x9', 'rs2_h1_val == 16384', 'rs1_h1_val == -17', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800003e8]:KMXDA s1, t3, s4
	-[0x800003ec]:csrrs t3, vxsat, zero
	-[0x800003f0]:sw s1, 48(gp)
Current Store : [0x800003f4] : sw t3, 52(gp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x2', 'rd : x27', 'rs2_h1_val == 8192', 'rs2_h0_val == -1025', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000408]:KMXDA s11, t0, sp
	-[0x8000040c]:csrrs t0, vxsat, zero
	-[0x80000410]:sw s11, 56(gp)
Current Store : [0x80000414] : sw t0, 60(gp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x10', 'rd : x30', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000424]:KMXDA t5, s9, a0
	-[0x80000428]:csrrs s9, vxsat, zero
	-[0x8000042c]:sw t5, 64(gp)
Current Store : [0x80000430] : sw s9, 68(gp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x4', 'rd : x31', 'rs2_h1_val == 2048', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000440]:KMXDA t6, a6, tp
	-[0x80000444]:csrrs a6, vxsat, zero
	-[0x80000448]:sw t6, 72(gp)
Current Store : [0x8000044c] : sw a6, 76(gp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x29', 'rs2_h1_val == 1024', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000045c]:KMXDA t4, s3, s6
	-[0x80000460]:csrrs s3, vxsat, zero
	-[0x80000464]:sw t4, 80(gp)
Current Store : [0x80000468] : sw s3, 84(gp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x31', 'rd : x1', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x8000047c]:KMXDA ra, s5, t6
	-[0x80000480]:csrrs s5, vxsat, zero
	-[0x80000484]:sw ra, 88(gp)
Current Store : [0x80000488] : sw s5, 92(gp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x21', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x8000049c]:KMXDA s5, a7, ra
	-[0x800004a0]:csrrs a7, vxsat, zero
	-[0x800004a4]:sw s5, 96(gp)
Current Store : [0x800004a8] : sw a7, 100(gp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x3', 'rd : x28', 'rs2_h1_val == 128', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800004c4]:KMXDA t3, s4, gp
	-[0x800004c8]:csrrs s4, vxsat, zero
	-[0x800004cc]:sw t3, 0(ra)
Current Store : [0x800004d0] : sw s4, 4(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x7', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800004e4]:KMXDA t2, t6, fp
	-[0x800004e8]:csrrs t6, vxsat, zero
	-[0x800004ec]:sw t2, 8(ra)
Current Store : [0x800004f0] : sw t6, 12(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == 512', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000504]:KMXDA t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 16(ra)
Current Store : [0x80000510] : sw t5, 20(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h1_val == 8192', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000524]:KMXDA t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 24(ra)
Current Store : [0x80000530] : sw t5, 28(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -8193', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000544]:KMXDA t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 32(ra)
Current Store : [0x80000550] : sw t5, 36(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000560]:KMXDA t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 40(ra)
Current Store : [0x8000056c] : sw t5, 44(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x8000057c]:KMXDA t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 48(ra)
Current Store : [0x80000588] : sw t5, 52(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h1_val == -5', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000598]:KMXDA t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 56(ra)
Current Store : [0x800005a4] : sw t5, 60(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -513', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005b8]:KMXDA t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 64(ra)
Current Store : [0x800005c4] : sw t5, 68(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_h1_val == -1', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005d8]:KMXDA t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 72(ra)
Current Store : [0x800005e4] : sw t5, 76(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005f8]:KMXDA t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 80(ra)
Current Store : [0x80000604] : sw t5, 84(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000618]:KMXDA t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 88(ra)
Current Store : [0x80000624] : sw t5, 92(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000638]:KMXDA t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 96(ra)
Current Store : [0x80000644] : sw t5, 100(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000654]:KMXDA t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 104(ra)
Current Store : [0x80000660] : sw t5, 108(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x8000066c]:KMXDA t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 112(ra)
Current Store : [0x80000678] : sw t5, 116(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x8000068c]:KMXDA t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 120(ra)
Current Store : [0x80000698] : sw t5, 124(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800006ac]:KMXDA t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 128(ra)
Current Store : [0x800006b8] : sw t5, 132(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800006cc]:KMXDA t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 136(ra)
Current Store : [0x800006d8] : sw t5, 140(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800006ec]:KMXDA t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 144(ra)
Current Store : [0x800006f8] : sw t5, 148(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x8000070c]:KMXDA t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 152(ra)
Current Store : [0x80000718] : sw t5, 156(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1025', 'rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000728]:KMXDA t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 160(ra)
Current Store : [0x80000734] : sw t5, 164(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000744]:KMXDA t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 168(ra)
Current Store : [0x80000750] : sw t5, 172(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000764]:KMXDA t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 176(ra)
Current Store : [0x80000770] : sw t5, 180(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000784]:KMXDA t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 184(ra)
Current Store : [0x80000790] : sw t5, 188(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800007a4]:KMXDA t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 192(ra)
Current Store : [0x800007b0] : sw t5, 196(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800007c4]:KMXDA t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 200(ra)
Current Store : [0x800007d0] : sw t5, 204(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800007e4]:KMXDA t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 208(ra)
Current Store : [0x800007f0] : sw t5, 212(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000804]:KMXDA t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 216(ra)
Current Store : [0x80000810] : sw t5, 220(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000824]:KMXDA t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 224(ra)
Current Store : [0x80000830] : sw t5, 228(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000840]:KMXDA t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 232(ra)
Current Store : [0x8000084c] : sw t5, 236(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000860]:KMXDA t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 240(ra)
Current Store : [0x8000086c] : sw t5, 244(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000880]:KMXDA t6, t5, t4
	-[0x80000884]:csrrs t5, vxsat, zero
	-[0x80000888]:sw t6, 248(ra)
Current Store : [0x8000088c] : sw t5, 252(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008a0]:KMXDA t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 256(ra)
Current Store : [0x800008ac] : sw t5, 260(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008c0]:KMXDA t6, t5, t4
	-[0x800008c4]:csrrs t5, vxsat, zero
	-[0x800008c8]:sw t6, 264(ra)
Current Store : [0x800008cc] : sw t5, 268(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800008dc]:KMXDA t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 272(ra)
Current Store : [0x800008e8] : sw t5, 276(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x800008f8]:KMXDA t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 280(ra)
Current Store : [0x80000904] : sw t5, 284(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000918]:KMXDA t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 288(ra)
Current Store : [0x80000924] : sw t5, 292(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000934]:KMXDA t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 296(ra)
Current Store : [0x80000940] : sw t5, 300(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000954]:KMXDA t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 304(ra)
Current Store : [0x80000960] : sw t5, 308(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000970]:KMXDA t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 312(ra)
Current Store : [0x8000097c] : sw t5, 316(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x8000098c]:KMXDA t6, t5, t4
	-[0x80000990]:csrrs t5, vxsat, zero
	-[0x80000994]:sw t6, 320(ra)
Current Store : [0x80000998] : sw t5, 324(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009ac]:KMXDA t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 328(ra)
Current Store : [0x800009b8] : sw t5, 332(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800009cc]:KMXDA t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 336(ra)
Current Store : [0x800009d8] : sw t5, 340(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800009ec]:KMXDA t6, t5, t4
	-[0x800009f0]:csrrs t5, vxsat, zero
	-[0x800009f4]:sw t6, 344(ra)
Current Store : [0x800009f8] : sw t5, 348(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000a0c]:KMXDA t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 352(ra)
Current Store : [0x80000a18] : sw t5, 356(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000a28]:KMXDA t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 360(ra)
Current Store : [0x80000a34] : sw t5, 364(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -129', 'rs2_h0_val == 4', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000a48]:KMXDA t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 368(ra)
Current Store : [0x80000a54] : sw t5, 372(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000a68]:KMXDA t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 376(ra)
Current Store : [0x80000a74] : sw t5, 380(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['opcode : kmxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -1025', 'rs2_h0_val == -2', 'rs1_h1_val == -4097', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000a88]:KMXDA t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 384(ra)
Current Store : [0x80000a94] : sw t5, 388(ra) -- Store: [0x80002484]:0x00000000





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

|s.no|        signature         |                                                                                                                                                              coverpoints                                                                                                                                                              |                                                     code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmxda<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -8193<br> - rs1_h0_val == -8193<br>                                           |[0x80000118]:KMXDA a5, a5, a5<br> [0x8000011c]:csrrs a5, vxsat, zero<br> [0x80000120]:sw a5, 0(tp)<br>        |
|   2|[0x80002218]<br>0xFFFFFBF8|- rs1 : x13<br> - rs2 : x13<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == 4<br> - rs1_h1_val == -129<br> - rs1_h0_val == 4<br>                                                                                    |[0x80000138]:KMXDA a7, a3, a3<br> [0x8000013c]:csrrs a3, vxsat, zero<br> [0x80000140]:sw a7, 8(tp)<br>        |
|   3|[0x80002220]<br>0xFFFDFDE8|- rs1 : x8<br> - rs2 : x12<br> - rd : x3<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 8<br> - rs2_h0_val == 512<br> - rs1_h1_val == -257<br> - rs1_h0_val == -3<br> |[0x80000158]:KMXDA gp, fp, a2<br> [0x8000015c]:csrrs fp, vxsat, zero<br> [0x80000160]:sw gp, 16(tp)<br>       |
|   4|[0x80002228]<br>0xFFFEFFF9|- rs1 : x7<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -1<br> - rs1_h0_val == 16384<br>                                                                                                                                  |[0x80000174]:KMXDA a6, t2, a6<br> [0x80000178]:csrrs t2, vxsat, zero<br> [0x8000017c]:sw a6, 24(tp)<br>       |
|   5|[0x80002230]<br>0x00000000|- rs1 : x2<br> - rs2 : x5<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -2<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -2<br>                                                                                                                                                                   |[0x80000194]:KMXDA sp, sp, t0<br> [0x80000198]:csrrs sp, vxsat, zero<br> [0x8000019c]:sw sp, 32(tp)<br>       |
|   6|[0x80002238]<br>0x0007FFFC|- rs1 : x24<br> - rs2 : x23<br> - rd : x10<br> - rs2_h1_val == 32<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                            |[0x800001b4]:KMXDA a0, s8, s7<br> [0x800001b8]:csrrs s8, vxsat, zero<br> [0x800001bc]:sw a0, 40(tp)<br>       |
|   7|[0x80002240]<br>0xFD57FAA8|- rs1 : x12<br> - rs2 : x24<br> - rd : x19<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 8<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                     |[0x800001d4]:KMXDA s3, a2, s8<br> [0x800001d8]:csrrs a2, vxsat, zero<br> [0x800001dc]:sw s3, 48(tp)<br>       |
|   8|[0x80002248]<br>0x00000000|- rs1 : x27<br> - rs2 : x30<br> - rd : x0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 1<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                |[0x800001f4]:KMXDA zero, s11, t5<br> [0x800001f8]:csrrs s11, vxsat, zero<br> [0x800001fc]:sw zero, 56(tp)<br> |
|   9|[0x80002250]<br>0xFFFF8FFE|- rs1 : x10<br> - rs2 : x11<br> - rd : x18<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                               |[0x80000214]:KMXDA s2, a0, a1<br> [0x80000218]:csrrs a0, vxsat, zero<br> [0x8000021c]:sw s2, 64(tp)<br>       |
|  10|[0x80002258]<br>0xFFFB5BFB|- rs1 : x3<br> - rs2 : x26<br> - rd : x25<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                       |[0x80000234]:KMXDA s9, gp, s10<br> [0x80000238]:csrrs gp, vxsat, zero<br> [0x8000023c]:sw s9, 72(tp)<br>      |
|  11|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x20<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -33<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                            |[0x80000254]:KMXDA s4, zero, t4<br> [0x80000258]:csrrs zero, vxsat, zero<br> [0x8000025c]:sw s4, 80(tp)<br>   |
|  12|[0x80002268]<br>0xFF809AAC|- rs1 : x1<br> - rs2 : x27<br> - rd : x6<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                             |[0x80000270]:KMXDA t1, ra, s11<br> [0x80000274]:csrrs ra, vxsat, zero<br> [0x80000278]:sw t1, 88(tp)<br>      |
|  13|[0x80002270]<br>0x00000000|- rs1 : x6<br> - rs2 : x0<br> - rd : x14<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                           |[0x80000290]:KMXDA a4, t1, zero<br> [0x80000294]:csrrs t1, vxsat, zero<br> [0x80000298]:sw a4, 96(tp)<br>     |
|  14|[0x80002278]<br>0xFFF001C1|- rs1 : x18<br> - rs2 : x17<br> - rd : x23<br> - rs2_h1_val == -513<br> - rs2_h0_val == 64<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -1<br>                                                                                                                                                                                       |[0x800002b0]:KMXDA s7, s2, a7<br> [0x800002b4]:csrrs s2, vxsat, zero<br> [0x800002b8]:sw s7, 104(tp)<br>      |
|  15|[0x80002280]<br>0x00008A12|- rs1 : x22<br> - rs2 : x25<br> - rd : x5<br> - rs2_h1_val == -257<br> - rs2_h0_val == -17<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                |[0x800002d0]:KMXDA t0, s6, s9<br> [0x800002d4]:csrrs s6, vxsat, zero<br> [0x800002d8]:sw t0, 112(tp)<br>      |
|  16|[0x80002288]<br>0xFFFFBE80|- rs1 : x26<br> - rs2 : x19<br> - rd : x24<br> - rs2_h1_val == -65<br> - rs1_h1_val == 256<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                 |[0x800002f0]:KMXDA s8, s10, s3<br> [0x800002f4]:csrrs s10, vxsat, zero<br> [0x800002f8]:sw s8, 120(tp)<br>    |
|  17|[0x80002290]<br>0xFFFE37C7|- rs1 : x14<br> - rs2 : x21<br> - rd : x12<br> - rs2_h1_val == -33<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                          |[0x80000310]:KMXDA a2, a4, s5<br> [0x80000314]:csrrs a4, vxsat, zero<br> [0x80000318]:sw a2, 128(tp)<br>      |
|  18|[0x80002298]<br>0xFFFF0081|- rs1 : x11<br> - rs2 : x28<br> - rd : x4<br> - rs2_h1_val == -17<br> - rs2_h0_val == -65<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                  |[0x80000334]:KMXDA tp, a1, t3<br> [0x80000338]:csrrs a1, vxsat, zero<br> [0x8000033c]:sw tp, 0(gp)<br>        |
|  19|[0x800022a0]<br>0xFFFF2001|- rs1 : x23<br> - rs2 : x14<br> - rd : x8<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                   |[0x80000354]:KMXDA fp, s7, a4<br> [0x80000358]:csrrs s7, vxsat, zero<br> [0x8000035c]:sw fp, 8(gp)<br>        |
|  20|[0x800022a8]<br>0x00008B86|- rs1 : x9<br> - rs2 : x18<br> - rd : x13<br> - rs2_h1_val == -5<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                          |[0x80000374]:KMXDA a3, s1, s2<br> [0x80000378]:csrrs s1, vxsat, zero<br> [0x8000037c]:sw a3, 16(gp)<br>       |
|  21|[0x800022b0]<br>0xFFFDC000|- rs1 : x30<br> - rs2 : x6<br> - rd : x11<br> - rs2_h1_val == -3<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                  |[0x8000038c]:KMXDA a1, t5, t1<br> [0x80000390]:csrrs t5, vxsat, zero<br> [0x80000394]:sw a1, 24(gp)<br>       |
|  22|[0x800022b8]<br>0xFEFFDFF2|- rs1 : x29<br> - rs2 : x9<br> - rd : x26<br> - rs2_h1_val == -2<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                          |[0x800003a8]:KMXDA s10, t4, s1<br> [0x800003ac]:csrrs t4, vxsat, zero<br> [0x800003b0]:sw s10, 32(gp)<br>     |
|  23|[0x800022c0]<br>0xFE000200|- rs1 : x4<br> - rs2 : x7<br> - rd : x22<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 256<br> - rs1_h1_val == 2<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                         |[0x800003c8]:KMXDA s6, tp, t2<br> [0x800003cc]:csrrs tp, vxsat, zero<br> [0x800003d0]:sw s6, 40(gp)<br>       |
|  24|[0x800022c8]<br>0xFFEFC231|- rs1 : x28<br> - rs2 : x20<br> - rd : x9<br> - rs2_h1_val == 16384<br> - rs1_h1_val == -17<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                |[0x800003e8]:KMXDA s1, t3, s4<br> [0x800003ec]:csrrs t3, vxsat, zero<br> [0x800003f0]:sw s1, 48(gp)<br>       |
|  25|[0x800022d0]<br>0xFFFF4802|- rs1 : x5<br> - rs2 : x2<br> - rd : x27<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                 |[0x80000408]:KMXDA s11, t0, sp<br> [0x8000040c]:csrrs t0, vxsat, zero<br> [0x80000410]:sw s11, 56(gp)<br>     |
|  26|[0x800022d8]<br>0xFBFFFFE4|- rs1 : x25<br> - rs2 : x10<br> - rd : x30<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                |[0x80000424]:KMXDA t5, s9, a0<br> [0x80000428]:csrrs s9, vxsat, zero<br> [0x8000042c]:sw t5, 64(gp)<br>       |
|  27|[0x800022e0]<br>0x04040000|- rs1 : x16<br> - rs2 : x4<br> - rd : x31<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                       |[0x80000440]:KMXDA t6, a6, tp<br> [0x80000444]:csrrs a6, vxsat, zero<br> [0x80000448]:sw t6, 72(gp)<br>       |
|  28|[0x800022e8]<br>0xFFBFFC00|- rs1 : x19<br> - rs2 : x22<br> - rd : x29<br> - rs2_h1_val == 1024<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                      |[0x8000045c]:KMXDA t4, s3, s6<br> [0x80000460]:csrrs s3, vxsat, zero<br> [0x80000464]:sw t4, 80(gp)<br>       |
|  29|[0x800022f0]<br>0x0000FFBE|- rs1 : x21<br> - rs2 : x31<br> - rd : x1<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                  |[0x8000047c]:KMXDA ra, s5, t6<br> [0x80000480]:csrrs s5, vxsat, zero<br> [0x80000484]:sw ra, 88(gp)<br>       |
|  30|[0x800022f8]<br>0x00004088|- rs1 : x17<br> - rs2 : x1<br> - rd : x21<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                  |[0x8000049c]:KMXDA s5, a7, ra<br> [0x800004a0]:csrrs a7, vxsat, zero<br> [0x800004a4]:sw s5, 96(gp)<br>       |
|  31|[0x80002300]<br>0xFFFDFE80|- rs1 : x20<br> - rs2 : x3<br> - rd : x28<br> - rs2_h1_val == 128<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                         |[0x800004c4]:KMXDA t3, s4, gp<br> [0x800004c8]:csrrs s4, vxsat, zero<br> [0x800004cc]:sw t3, 0(ra)<br>        |
|  32|[0x80002308]<br>0xFFA815A2|- rs1 : x31<br> - rs2 : x8<br> - rd : x7<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                  |[0x800004e4]:KMXDA t2, t6, fp<br> [0x800004e8]:csrrs t6, vxsat, zero<br> [0x800004ec]:sw t2, 8(ra)<br>        |
|  33|[0x80002310]<br>0x009FAA0B|- rs2_h0_val == 21845<br> - rs1_h1_val == 512<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                              |[0x80000504]:KMXDA t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 16(ra)<br>       |
|  34|[0x80002318]<br>0xFFC20011|- rs2_h0_val == -513<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                              |[0x80000524]:KMXDA t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 24(ra)<br>       |
|  35|[0x80002320]<br>0xFFFC6010|- rs1_h1_val == -8193<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                       |[0x80000544]:KMXDA t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 32(ra)<br>       |
|  36|[0x80002328]<br>0xEAAD0000|- rs2_h0_val == 16384<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                       |[0x80000560]:KMXDA t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 40(ra)<br>       |
|  37|[0x80002330]<br>0x04010441|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                               |[0x8000057c]:KMXDA t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 48(ra)<br>       |
|  38|[0x80002338]<br>0x00AAAA00|- rs1_h1_val == -5<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                         |[0x80000598]:KMXDA t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 56(ra)<br>       |
|  39|[0x80002340]<br>0xFFB7FC00|- rs1_h1_val == -513<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                       |[0x800005b8]:KMXDA t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 64(ra)<br>       |
|  40|[0x80002348]<br>0xFFFFC021|- rs1_h1_val == -1<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                          |[0x800005d8]:KMXDA t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 72(ra)<br>       |
|  41|[0x80002350]<br>0x0007FF60|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                 |[0x800005f8]:KMXDA t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 80(ra)<br>       |
|  42|[0x80002358]<br>0x000003D0|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                  |[0x80000618]:KMXDA t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 88(ra)<br>       |
|  43|[0x80002360]<br>0x00081281|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                               |[0x80000638]:KMXDA t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 96(ra)<br>       |
|  44|[0x80002368]<br>0x00000000|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                              |[0x80000654]:KMXDA t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 104(ra)<br>      |
|  45|[0x80002370]<br>0xFFF00000|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                 |[0x8000066c]:KMXDA t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 112(ra)<br>      |
|  46|[0x80002378]<br>0x00004090|- rs2_h1_val == 16<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                          |[0x8000068c]:KMXDA t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 120(ra)<br>      |
|  47|[0x80002380]<br>0xFFFFA00E|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                  |[0x800006ac]:KMXDA t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 128(ra)<br>      |
|  48|[0x80002388]<br>0x000020FF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                  |[0x800006cc]:KMXDA t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 136(ra)<br>      |
|  49|[0x80002390]<br>0x00013FFB|- rs2_h1_val == 1<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                           |[0x800006ec]:KMXDA t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 144(ra)<br>      |
|  50|[0x80002398]<br>0xFF7F0201|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                 |[0x8000070c]:KMXDA t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 152(ra)<br>      |
|  51|[0x800023a0]<br>0x00022008|- rs2_h1_val == -1025<br> - rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                   |[0x80000728]:KMXDA t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 160(ra)<br>      |
|  52|[0x800023a8]<br>0x00083000|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                               |[0x80000744]:KMXDA t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 168(ra)<br>      |
|  53|[0x800023b0]<br>0x00088800|- rs2_h0_val == 128<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                         |[0x80000764]:KMXDA t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 176(ra)<br>      |
|  54|[0x800023b8]<br>0x00003FE8|- rs2_h0_val == 32<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                       |[0x80000784]:KMXDA t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 184(ra)<br>      |
|  55|[0x800023c0]<br>0x00000A70|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                 |[0x800007a4]:KMXDA t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 192(ra)<br>      |
|  56|[0x800023c8]<br>0xEAAAD558|- rs2_h0_val == 2<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                       |[0x800007c4]:KMXDA t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 200(ra)<br>      |
|  57|[0x800023d0]<br>0x0001BF06|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x800007e4]:KMXDA t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 208(ra)<br>      |
|  58|[0x800023d8]<br>0x0052AB5C|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                              |[0x80000804]:KMXDA t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 216(ra)<br>      |
|  59|[0x800023e0]<br>0x00000FF2|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                              |[0x80000824]:KMXDA t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 224(ra)<br>      |
|  60|[0x800023e8]<br>0xFFFFF700|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                 |[0x80000840]:KMXDA t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 232(ra)<br>      |
|  61|[0x800023f0]<br>0xFFF7EF40|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                 |[0x80000860]:KMXDA t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 240(ra)<br>      |
|  62|[0x800023f8]<br>0x00091041|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                             |[0x80000880]:KMXDA t6, t5, t4<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sw t6, 248(ra)<br>      |
|  63|[0x80002400]<br>0xFFFFD082|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                               |[0x800008a0]:KMXDA t6, t5, t4<br> [0x800008a4]:csrrs t5, vxsat, zero<br> [0x800008a8]:sw t6, 256(ra)<br>      |
|  64|[0x80002408]<br>0xFFFFF600|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                               |[0x800008c0]:KMXDA t6, t5, t4<br> [0x800008c4]:csrrs t5, vxsat, zero<br> [0x800008c8]:sw t6, 264(ra)<br>      |
|  65|[0x80002410]<br>0xFFFF8000|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                |[0x800008dc]:KMXDA t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 272(ra)<br>      |
|  66|[0x80002418]<br>0xFAAAA005|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                 |[0x800008f8]:KMXDA t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 280(ra)<br>      |
|  67|[0x80002420]<br>0x00015598|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                             |[0x80000918]:KMXDA t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 288(ra)<br>      |
|  68|[0x80002428]<br>0xFFFF3FE0|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                 |[0x80000934]:KMXDA t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 296(ra)<br>      |
|  69|[0x80002430]<br>0x0001FFD2|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                              |[0x80000954]:KMXDA t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 304(ra)<br>      |
|  70|[0x80002438]<br>0xFFFE5FF8|- rs1_h0_val == -32768<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                       |[0x80000970]:KMXDA t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 312(ra)<br>      |
|  71|[0x80002440]<br>0x08018005|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                             |[0x8000098c]:KMXDA t6, t5, t4<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sw t6, 320(ra)<br>      |
|  72|[0x80002448]<br>0x00292A7A|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                              |[0x800009ac]:KMXDA t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 328(ra)<br>      |
|  73|[0x80002450]<br>0x00017FF7|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                             |[0x800009cc]:KMXDA t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 336(ra)<br>      |
|  74|[0x80002458]<br>0xFFFEC009|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                 |[0x800009ec]:KMXDA t6, t5, t4<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sw t6, 344(ra)<br>      |
|  75|[0x80002460]<br>0xFFFFD1FA|- rs2_h0_val == -2049<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                        |[0x80000a0c]:KMXDA t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 352(ra)<br>      |
