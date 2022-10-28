
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
| COV_LABELS                | kmda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmda-01.S    |
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
      [0x80000598]:KMDA t6, t5, t4
      [0x8000059c]:csrrs t5, vxsat, zero
      [0x800005a0]:sw t6, 160(fp)
 -- Signature Address: 0x80002338 Data: 0xFFFECAAF
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -21846
      - rs2_h0_val == -8193
      - rs1_h0_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f8]:KMDA t6, t5, t4
      [0x800008fc]:csrrs t5, vxsat, zero
      [0x80000900]:sw t6, 384(fp)
 -- Signature Address: 0x80002418 Data: 0xFFFFFFC1
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -9
      - rs1_h1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a50]:KMDA t6, t5, t4
      [0x80000a54]:csrrs t5, vxsat, zero
      [0x80000a58]:sw t6, 472(fp)
 -- Signature Address: 0x80002470 Data: 0x00FDE00A
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -4097
      - rs2_h0_val == -9
      - rs1_h1_val == -4097




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a70]:KMDA t6, t5, t4
      [0x80000a74]:csrrs t5, vxsat, zero
      [0x80000a78]:sw t6, 480(fp)
 -- Signature Address: 0x80002478 Data: 0x007E7FFA
 -- Redundant Coverpoints hit by the op
      - opcode : kmda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs1_h1_val == 512
      - rs1_h0_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmda', 'rs1 : x16', 'rs2 : x16', 'rd : x16', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -129', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000118]:KMDA a6, a6, a6
	-[0x8000011c]:csrrs a6, vxsat, zero
	-[0x80000120]:sw a6, 0(sp)
Current Store : [0x80000124] : sw a6, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x29', 'rs1 == rs2 != rd', 'rs2_h1_val == -4097', 'rs2_h0_val == -9', 'rs1_h1_val == -4097', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000138]:KMDA t4, s4, s4
	-[0x8000013c]:csrrs s4, vxsat, zero
	-[0x80000140]:sw t4, 8(sp)
Current Store : [0x80000144] : sw s4, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 32', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000154]:KMDA a1, fp, a2
	-[0x80000158]:csrrs fp, vxsat, zero
	-[0x8000015c]:sw a1, 16(sp)
Current Store : [0x80000160] : sw fp, 20(sp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x18', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -1', 'rs1_h1_val == 16', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000174]:KMDA s2, tp, s2
	-[0x80000178]:csrrs tp, vxsat, zero
	-[0x8000017c]:sw s2, 24(sp)
Current Store : [0x80000180] : sw tp, 28(sp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x12', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h1_val == 32767', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000194]:KMDA a2, a2, a5
	-[0x80000198]:csrrs a2, vxsat, zero
	-[0x8000019c]:sw a2, 32(sp)
Current Store : [0x800001a0] : sw a2, 36(sp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x28', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 1024', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800001b4]:KMDA t3, s6, fp
	-[0x800001b8]:csrrs s6, vxsat, zero
	-[0x800001bc]:sw t3, 40(sp)
Current Store : [0x800001c0] : sw s6, 44(sp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x31', 'rs2_h1_val == -21846', 'rs2_h0_val == -17', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800001d4]:KMDA t6, a7, t1
	-[0x800001d8]:csrrs a7, vxsat, zero
	-[0x800001dc]:sw t6, 48(sp)
Current Store : [0x800001e0] : sw a7, 52(sp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x24', 'rd : x25', 'rs2_h1_val == 21845', 'rs2_h0_val == 128', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800001f4]:KMDA s9, t6, s8
	-[0x800001f8]:csrrs t6, vxsat, zero
	-[0x800001fc]:sw s9, 56(sp)
Current Store : [0x80000200] : sw t6, 60(sp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x1', 'rs2_h1_val == 32767', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000214]:KMDA ra, s8, s5
	-[0x80000218]:csrrs s8, vxsat, zero
	-[0x8000021c]:sw ra, 64(sp)
Current Store : [0x80000220] : sw s8, 68(sp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x29', 'rd : x30', 'rs2_h1_val == -16385', 'rs1_h1_val == 256', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000230]:KMDA t5, a5, t4
	-[0x80000234]:csrrs a5, vxsat, zero
	-[0x80000238]:sw t5, 72(sp)
Current Store : [0x8000023c] : sw a5, 76(sp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x19', 'rd : x13', 'rs2_h1_val == -8193', 'rs2_h0_val == -2049', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000250]:KMDA a3, s5, s3
	-[0x80000254]:csrrs s5, vxsat, zero
	-[0x80000258]:sw a3, 80(sp)
Current Store : [0x8000025c] : sw s5, 84(sp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x27', 'rs2_h1_val == -2049', 'rs2_h0_val == 256', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000270]:KMDA s11, s9, t2
	-[0x80000274]:csrrs s9, vxsat, zero
	-[0x80000278]:sw s11, 88(sp)
Current Store : [0x8000027c] : sw s9, 92(sp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x31', 'rd : x8', 'rs2_h1_val == -1025', 'rs2_h0_val == 32', 'rs1_h1_val == -513', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000290]:KMDA fp, a1, t6
	-[0x80000294]:csrrs a1, vxsat, zero
	-[0x80000298]:sw fp, 96(sp)
Current Store : [0x8000029c] : sw a1, 100(sp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x6', 'rs2_h1_val == -513', 'rs2_h0_val == 8192', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800002a8]:KMDA t1, a4, s9
	-[0x800002ac]:csrrs a4, vxsat, zero
	-[0x800002b0]:sw t1, 104(sp)
Current Store : [0x800002b4] : sw a4, 108(sp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rd : x22', 'rs2_h1_val == -257', 'rs2_h0_val == 1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800002c8]:KMDA s6, a0, a1
	-[0x800002cc]:csrrs a0, vxsat, zero
	-[0x800002d0]:sw s6, 112(sp)
Current Store : [0x800002d4] : sw a0, 116(sp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x10', 'rs2_h1_val == -129', 'rs2_h0_val == 2', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800002e8]:KMDA a0, zero, s1
	-[0x800002ec]:csrrs zero, vxsat, zero
	-[0x800002f0]:sw a0, 120(sp)
Current Store : [0x800002f4] : sw zero, 124(sp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x3', 'rs2_h1_val == -65', 'rs2_h0_val == 16', 'rs1_h1_val == 21845', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000308]:KMDA gp, s10, t3
	-[0x8000030c]:csrrs s10, vxsat, zero
	-[0x80000310]:sw gp, 128(sp)
Current Store : [0x80000314] : sw s10, 132(sp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x30', 'rd : x17', 'rs2_h1_val == -33', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000330]:KMDA a7, sp, t5
	-[0x80000334]:csrrs sp, vxsat, zero
	-[0x80000338]:sw a7, 0(fp)
Current Store : [0x8000033c] : sw sp, 4(fp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x13', 'rd : x2', 'rs2_h1_val == -17', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000350]:KMDA sp, ra, a3
	-[0x80000354]:csrrs ra, vxsat, zero
	-[0x80000358]:sw sp, 8(fp)
Current Store : [0x8000035c] : sw ra, 12(fp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x19', 'rs2_h1_val == -9', 'rs2_h0_val == 16384', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000036c]:KMDA s3, s2, s6
	-[0x80000370]:csrrs s2, vxsat, zero
	-[0x80000374]:sw s3, 16(fp)
Current Store : [0x80000378] : sw s2, 20(fp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x15', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x8000038c]:KMDA a5, t0, a7
	-[0x80000390]:csrrs t0, vxsat, zero
	-[0x80000394]:sw a5, 24(fp)
Current Store : [0x80000398] : sw t0, 28(fp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x14', 'rd : x26', 'rs2_h1_val == -3', 'rs2_h0_val == 4096', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800003a8]:KMDA s10, t5, a4
	-[0x800003ac]:csrrs t5, vxsat, zero
	-[0x800003b0]:sw s10, 32(fp)
Current Store : [0x800003b4] : sw t5, 36(fp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x3', 'rd : x5', 'rs2_h1_val == -2', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x800003c8]:KMDA t0, s1, gp
	-[0x800003cc]:csrrs s1, vxsat, zero
	-[0x800003d0]:sw t0, 40(fp)
Current Store : [0x800003d4] : sw s1, 44(fp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x7', 'rs2_h1_val == -32768', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800003e8]:KMDA t2, gp, s11
	-[0x800003ec]:csrrs gp, vxsat, zero
	-[0x800003f0]:sw t2, 48(fp)
Current Store : [0x800003f4] : sw gp, 52(fp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x10', 'rd : x0', 'rs2_h1_val == 16384', 'rs1_h1_val == 512', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000408]:KMDA zero, t3, a0
	-[0x8000040c]:csrrs t3, vxsat, zero
	-[0x80000410]:sw zero, 56(fp)
Current Store : [0x80000414] : sw t3, 60(fp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x26', 'rd : x14', 'rs2_h1_val == 8192', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000428]:KMDA a4, s7, s10
	-[0x8000042c]:csrrs s7, vxsat, zero
	-[0x80000430]:sw a4, 64(fp)
Current Store : [0x80000434] : sw s7, 68(fp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x20', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000448]:KMDA s4, s3, zero
	-[0x8000044c]:csrrs s3, vxsat, zero
	-[0x80000450]:sw s4, 72(fp)
Current Store : [0x80000454] : sw s3, 76(fp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x4', 'rs2_h1_val == 2048', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000464]:KMDA tp, t4, sp
	-[0x80000468]:csrrs t4, vxsat, zero
	-[0x8000046c]:sw tp, 80(fp)
Current Store : [0x80000470] : sw t4, 84(fp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x21', 'rs2_h1_val == 512', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000484]:KMDA s5, s11, ra
	-[0x80000488]:csrrs s11, vxsat, zero
	-[0x8000048c]:sw s5, 88(fp)
Current Store : [0x80000490] : sw s11, 92(fp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x23', 'rs2_h1_val == 256', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800004a0]:KMDA s7, t2, tp
	-[0x800004a4]:csrrs t2, vxsat, zero
	-[0x800004a8]:sw s7, 96(fp)
Current Store : [0x800004ac] : sw t2, 100(fp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x24', 'rs2_h1_val == 128', 'rs2_h0_val == -8193', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800004bc]:KMDA s8, a3, s7
	-[0x800004c0]:csrrs a3, vxsat, zero
	-[0x800004c4]:sw s8, 104(fp)
Current Store : [0x800004c8] : sw a3, 108(fp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x5', 'rd : x9', 'rs2_h1_val == 64', 'rs2_h0_val == 8', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800004dc]:KMDA s1, t1, t0
	-[0x800004e0]:csrrs t1, vxsat, zero
	-[0x800004e4]:sw s1, 112(fp)
Current Store : [0x800004e8] : sw t1, 116(fp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800004f8]:KMDA t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 120(fp)
Current Store : [0x80000504] : sw t5, 124(fp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000518]:KMDA t6, t5, t4
	-[0x8000051c]:csrrs t5, vxsat, zero
	-[0x80000520]:sw t6, 128(fp)
Current Store : [0x80000524] : sw t5, 132(fp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h1_val == -16385', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000538]:KMDA t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 136(fp)
Current Store : [0x80000544] : sw t5, 140(fp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000558]:KMDA t6, t5, t4
	-[0x8000055c]:csrrs t5, vxsat, zero
	-[0x80000560]:sw t6, 144(fp)
Current Store : [0x80000564] : sw t5, 148(fp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000578]:KMDA t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 152(fp)
Current Store : [0x80000584] : sw t5, 156(fp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -8193', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000598]:KMDA t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 160(fp)
Current Store : [0x800005a4] : sw t5, 164(fp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4096', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005b8]:KMDA t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 168(fp)
Current Store : [0x800005c4] : sw t5, 172(fp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800005d0]:KMDA t6, t5, t4
	-[0x800005d4]:csrrs t5, vxsat, zero
	-[0x800005d8]:sw t6, 176(fp)
Current Store : [0x800005dc] : sw t5, 180(fp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005ec]:KMDA t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 184(fp)
Current Store : [0x800005f8] : sw t5, 188(fp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 2048', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000060c]:KMDA t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 192(fp)
Current Store : [0x80000618] : sw t5, 196(fp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -1', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000062c]:KMDA t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 200(fp)
Current Store : [0x80000638] : sw t5, 204(fp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000064c]:KMDA t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 208(fp)
Current Store : [0x80000658] : sw t5, 212(fp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000066c]:KMDA t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 216(fp)
Current Store : [0x80000678] : sw t5, 220(fp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000068c]:KMDA t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 224(fp)
Current Store : [0x80000698] : sw t5, 228(fp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 16384', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800006a8]:KMDA t6, t5, t4
	-[0x800006ac]:csrrs t5, vxsat, zero
	-[0x800006b0]:sw t6, 232(fp)
Current Store : [0x800006b4] : sw t5, 236(fp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800006c4]:KMDA t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 240(fp)
Current Store : [0x800006d0] : sw t5, 244(fp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800006e0]:KMDA t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 248(fp)
Current Store : [0x800006ec] : sw t5, 252(fp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000700]:KMDA t6, t5, t4
	-[0x80000704]:csrrs t5, vxsat, zero
	-[0x80000708]:sw t6, 256(fp)
Current Store : [0x8000070c] : sw t5, 260(fp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000720]:KMDA t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 264(fp)
Current Store : [0x8000072c] : sw t5, 268(fp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000740]:KMDA t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 272(fp)
Current Store : [0x8000074c] : sw t5, 276(fp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x8000075c]:KMDA t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 280(fp)
Current Store : [0x80000768] : sw t5, 284(fp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x8000077c]:KMDA t6, t5, t4
	-[0x80000780]:csrrs t5, vxsat, zero
	-[0x80000784]:sw t6, 288(fp)
Current Store : [0x80000788] : sw t5, 292(fp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000079c]:KMDA t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 296(fp)
Current Store : [0x800007a8] : sw t5, 300(fp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800007b8]:KMDA t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 304(fp)
Current Store : [0x800007c4] : sw t5, 308(fp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800007d8]:KMDA t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 312(fp)
Current Store : [0x800007e4] : sw t5, 316(fp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800007f8]:KMDA t6, t5, t4
	-[0x800007fc]:csrrs t5, vxsat, zero
	-[0x80000800]:sw t6, 320(fp)
Current Store : [0x80000804] : sw t5, 324(fp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000818]:KMDA t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 328(fp)
Current Store : [0x80000824] : sw t5, 332(fp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000838]:KMDA t6, t5, t4
	-[0x8000083c]:csrrs t5, vxsat, zero
	-[0x80000840]:sw t6, 336(fp)
Current Store : [0x80000844] : sw t5, 340(fp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000858]:KMDA t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 344(fp)
Current Store : [0x80000864] : sw t5, 348(fp) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000878]:KMDA t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 352(fp)
Current Store : [0x80000884] : sw t5, 356(fp) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000898]:KMDA t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 360(fp)
Current Store : [0x800008a4] : sw t5, 364(fp) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008b8]:KMDA t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 368(fp)
Current Store : [0x800008c4] : sw t5, 372(fp) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800008d8]:KMDA t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 376(fp)
Current Store : [0x800008e4] : sw t5, 380(fp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -9', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800008f8]:KMDA t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 384(fp)
Current Store : [0x80000904] : sw t5, 388(fp) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000918]:KMDA t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 392(fp)
Current Store : [0x80000924] : sw t5, 396(fp) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000934]:KMDA t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 400(fp)
Current Store : [0x80000940] : sw t5, 404(fp) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000954]:KMDA t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 408(fp)
Current Store : [0x80000960] : sw t5, 412(fp) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000974]:KMDA t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 416(fp)
Current Store : [0x80000980] : sw t5, 420(fp) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000994]:KMDA t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 424(fp)
Current Store : [0x800009a0] : sw t5, 428(fp) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800009b4]:KMDA t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 432(fp)
Current Store : [0x800009c0] : sw t5, 436(fp) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800009d4]:KMDA t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 440(fp)
Current Store : [0x800009e0] : sw t5, 444(fp) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800009f4]:KMDA t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 448(fp)
Current Store : [0x80000a00] : sw t5, 452(fp) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000a10]:KMDA t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 456(fp)
Current Store : [0x80000a1c] : sw t5, 460(fp) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000a30]:KMDA t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 464(fp)
Current Store : [0x80000a3c] : sw t5, 468(fp) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -4097', 'rs2_h0_val == -9', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000a50]:KMDA t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 472(fp)
Current Store : [0x80000a5c] : sw t5, 476(fp) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['opcode : kmda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 16384', 'rs1_h1_val == 512', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000a70]:KMDA t6, t5, t4
	-[0x80000a74]:csrrs t5, vxsat, zero
	-[0x80000a78]:sw t6, 480(fp)
Current Store : [0x80000a7c] : sw t5, 484(fp) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000a90]:KMDA t6, t5, t4
	-[0x80000a94]:csrrs t5, vxsat, zero
	-[0x80000a98]:sw t6, 488(fp)
Current Store : [0x80000a9c] : sw t5, 492(fp) -- Store: [0x80002484]:0x00000000





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

|s.no|        signature         |                                                                                                                                                     coverpoints                                                                                                                                                     |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmda<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -129<br> - rs1_h0_val == -129<br>                            |[0x80000118]:KMDA a6, a6, a6<br> [0x8000011c]:csrrs a6, vxsat, zero<br> [0x80000120]:sw a6, 0(sp)<br>       |
|   2|[0x80002218]<br>0x01002052|- rs1 : x20<br> - rs2 : x20<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -9<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -9<br>                                                                                                                                              |[0x80000138]:KMDA t4, s4, s4<br> [0x8000013c]:csrrs s4, vxsat, zero<br> [0x80000140]:sw t4, 8(sp)<br>       |
|   3|[0x80002220]<br>0xFFFD6FE0|- rs1 : x8<br> - rs2 : x12<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h0_val == -32768<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32<br> - rs1_h1_val == -129<br> |[0x80000154]:KMDA a1, fp, a2<br> [0x80000158]:csrrs fp, vxsat, zero<br> [0x8000015c]:sw a1, 16(sp)<br>      |
|   4|[0x80002228]<br>0xFFFFF790|- rs1 : x4<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -1<br> - rs1_h1_val == 16<br> - rs1_h0_val == 2048<br>                                                                                          |[0x80000174]:KMDA s2, tp, s2<br> [0x80000178]:csrrs tp, vxsat, zero<br> [0x8000017c]:sw s2, 24(sp)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x12<br> - rs2 : x15<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1<br>                                                                                                                                                       |[0x80000194]:KMDA a2, a2, a5<br> [0x80000198]:csrrs a2, vxsat, zero<br> [0x8000019c]:sw a2, 32(sp)<br>      |
|   6|[0x80002238]<br>0x00100051|- rs1 : x22<br> - rs2 : x8<br> - rd : x28<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 1024<br>                                                                                                                                                                              |[0x800001b4]:KMDA t3, s6, fp<br> [0x800001b8]:csrrs s6, vxsat, zero<br> [0x800001bc]:sw t3, 40(sp)<br>      |
|   7|[0x80002240]<br>0xD5551156|- rs1 : x17<br> - rs2 : x6<br> - rd : x31<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -17<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                            |[0x800001d4]:KMDA t6, a7, t1<br> [0x800001d8]:csrrs a7, vxsat, zero<br> [0x800001dc]:sw t6, 48(sp)<br>      |
|   8|[0x80002248]<br>0x2AAA222B|- rs1 : x31<br> - rs2 : x24<br> - rd : x25<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 128<br> - rs1_h0_val == -17<br>                                                                                                                                                                                             |[0x800001f4]:KMDA s9, t6, s8<br> [0x800001f8]:csrrs t6, vxsat, zero<br> [0x800001fc]:sw s9, 56(sp)<br>      |
|   9|[0x80002250]<br>0xFDFF83C2|- rs1 : x24<br> - rs2 : x21<br> - rd : x1<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                    |[0x80000214]:KMDA ra, s8, s5<br> [0x80000218]:csrrs s8, vxsat, zero<br> [0x8000021c]:sw ra, 64(sp)<br>      |
|  10|[0x80002258]<br>0xFFBEDF00|- rs1 : x15<br> - rs2 : x29<br> - rd : x30<br> - rs2_h1_val == -16385<br> - rs1_h1_val == 256<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                           |[0x80000230]:KMDA t5, a5, t4<br> [0x80000234]:csrrs a5, vxsat, zero<br> [0x80000238]:sw t5, 72(sp)<br>      |
|  11|[0x80002260]<br>0x0100E807|- rs1 : x21<br> - rs2 : x19<br> - rd : x13<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -2049<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                         |[0x80000250]:KMDA a3, s5, s3<br> [0x80000254]:csrrs s5, vxsat, zero<br> [0x80000258]:sw a3, 80(sp)<br>      |
|  12|[0x80002268]<br>0xFFFFBBF7|- rs1 : x25<br> - rs2 : x7<br> - rd : x27<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 256<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                |[0x80000270]:KMDA s11, s9, t2<br> [0x80000274]:csrrs s9, vxsat, zero<br> [0x80000278]:sw s11, 88(sp)<br>    |
|  13|[0x80002270]<br>0x000705E1|- rs1 : x11<br> - rs2 : x31<br> - rd : x8<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 32<br> - rs1_h1_val == -513<br> - rs1_h0_val == -2049<br>                                                                                                                                                                    |[0x80000290]:KMDA fp, a1, t6<br> [0x80000294]:csrrs a1, vxsat, zero<br> [0x80000298]:sw fp, 96(sp)<br>      |
|  14|[0x80002278]<br>0x04002211|- rs1 : x14<br> - rs2 : x25<br> - rd : x6<br> - rs2_h1_val == -513<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -17<br>                                                                                                                                                                                              |[0x800002a8]:KMDA t1, a4, s9<br> [0x800002ac]:csrrs a4, vxsat, zero<br> [0x800002b0]:sw t1, 104(sp)<br>     |
|  15|[0x80002280]<br>0x00009110|- rs1 : x10<br> - rs2 : x11<br> - rd : x22<br> - rs2_h1_val == -257<br> - rs2_h0_val == 1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                              |[0x800002c8]:KMDA s6, a0, a1<br> [0x800002cc]:csrrs a0, vxsat, zero<br> [0x800002d0]:sw s6, 112(sp)<br>     |
|  16|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x10<br> - rs2_h1_val == -129<br> - rs2_h0_val == 2<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                              |[0x800002e8]:KMDA a0, zero, s1<br> [0x800002ec]:csrrs zero, vxsat, zero<br> [0x800002f0]:sw a0, 120(sp)<br> |
|  17|[0x80002290]<br>0xFFEA756B|- rs1 : x26<br> - rs2 : x28<br> - rd : x3<br> - rs2_h1_val == -65<br> - rs2_h0_val == 16<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 512<br>                                                                                                                                                                       |[0x80000308]:KMDA gp, s10, t3<br> [0x8000030c]:csrrs s10, vxsat, zero<br> [0x80000310]:sw gp, 128(sp)<br>   |
|  18|[0x80002298]<br>0x00020148|- rs1 : x2<br> - rs2 : x30<br> - rd : x17<br> - rs2_h1_val == -33<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                      |[0x80000330]:KMDA a7, sp, t5<br> [0x80000334]:csrrs sp, vxsat, zero<br> [0x80000338]:sw a7, 0(fp)<br>       |
|  19|[0x800022a0]<br>0xFFFFBECD|- rs1 : x1<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == -17<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                         |[0x80000350]:KMDA sp, ra, a3<br> [0x80000354]:csrrs ra, vxsat, zero<br> [0x80000358]:sw sp, 8(fp)<br>       |
|  20|[0x800022a8]<br>0xFE00E009|- rs1 : x18<br> - rs2 : x22<br> - rd : x19<br> - rs2_h1_val == -9<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                            |[0x8000036c]:KMDA s3, s2, s6<br> [0x80000370]:csrrs s2, vxsat, zero<br> [0x80000374]:sw s3, 16(fp)<br>      |
|  21|[0x800022b0]<br>0xFFFEC017|- rs1 : x5<br> - rs2 : x17<br> - rd : x15<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                 |[0x8000038c]:KMDA a5, t0, a7<br> [0x80000390]:csrrs t0, vxsat, zero<br> [0x80000394]:sw a5, 24(fp)<br>      |
|  22|[0x800022b8]<br>0x00000803|- rs1 : x30<br> - rs2 : x14<br> - rd : x26<br> - rs2_h1_val == -3<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                             |[0x800003a8]:KMDA s10, t5, a4<br> [0x800003ac]:csrrs t5, vxsat, zero<br> [0x800003b0]:sw s10, 32(fp)<br>    |
|  23|[0x800022c0]<br>0xFFFA5549|- rs1 : x9<br> - rs2 : x3<br> - rd : x5<br> - rs2_h1_val == -2<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                         |[0x800003c8]:KMDA t0, s1, gp<br> [0x800003cc]:csrrs s1, vxsat, zero<br> [0x800003d0]:sw t0, 40(fp)<br>      |
|  24|[0x800022c8]<br>0x0004FFFF|- rs1 : x3<br> - rs2 : x27<br> - rd : x7<br> - rs2_h1_val == -32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                        |[0x800003e8]:KMDA t2, gp, s11<br> [0x800003ec]:csrrs gp, vxsat, zero<br> [0x800003f0]:sw t2, 48(fp)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x28<br> - rs2 : x10<br> - rd : x0<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 512<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                           |[0x80000408]:KMDA zero, t3, a0<br> [0x8000040c]:csrrs t3, vxsat, zero<br> [0x80000410]:sw zero, 56(fp)<br>  |
|  26|[0x800022d8]<br>0x00007FFC|- rs1 : x23<br> - rs2 : x26<br> - rd : x14<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                        |[0x80000428]:KMDA a4, s7, s10<br> [0x8000042c]:csrrs s7, vxsat, zero<br> [0x80000430]:sw a4, 64(fp)<br>     |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x19<br> - rs2 : x0<br> - rd : x20<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                            |[0x80000448]:KMDA s4, s3, zero<br> [0x8000044c]:csrrs s3, vxsat, zero<br> [0x80000450]:sw s4, 72(fp)<br>    |
|  28|[0x800022e8]<br>0x04013800|- rs1 : x29<br> - rs2 : x2<br> - rd : x4<br> - rs2_h1_val == 2048<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                         |[0x80000464]:KMDA tp, t4, sp<br> [0x80000468]:csrrs t4, vxsat, zero<br> [0x8000046c]:sw tp, 80(fp)<br>      |
|  29|[0x800022f0]<br>0xFFEFFDE0|- rs1 : x27<br> - rs2 : x1<br> - rd : x21<br> - rs2_h1_val == 512<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                         |[0x80000484]:KMDA s5, s11, ra<br> [0x80000488]:csrrs s11, vxsat, zero<br> [0x8000048c]:sw s5, 88(fp)<br>    |
|  30|[0x800022f8]<br>0xFFFFDF00|- rs1 : x7<br> - rs2 : x4<br> - rd : x23<br> - rs2_h1_val == 256<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                         |[0x800004a0]:KMDA s7, t2, tp<br> [0x800004a4]:csrrs t2, vxsat, zero<br> [0x800004a8]:sw s7, 96(fp)<br>      |
|  31|[0x80002300]<br>0xF7FFC180|- rs1 : x13<br> - rs2 : x23<br> - rd : x24<br> - rs2_h1_val == 128<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                           |[0x800004bc]:KMDA s8, a3, s7<br> [0x800004c0]:csrrs a3, vxsat, zero<br> [0x800004c4]:sw s8, 104(fp)<br>     |
|  32|[0x80002308]<br>0xFFFFBFB0|- rs1 : x6<br> - rs2 : x5<br> - rd : x9<br> - rs2_h1_val == 64<br> - rs2_h0_val == 8<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                    |[0x800004dc]:KMDA s1, t1, t0<br> [0x800004e0]:csrrs t1, vxsat, zero<br> [0x800004e4]:sw s1, 112(fp)<br>     |
|  33|[0x80002310]<br>0xFFFF7FD0|- rs2_h1_val == 16<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                        |[0x800004f8]:KMDA t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 120(fp)<br>     |
|  34|[0x80002318]<br>0xFFD4F428|- rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                            |[0x80000518]:KMDA t6, t5, t4<br> [0x8000051c]:csrrs t5, vxsat, zero<br> [0x80000520]:sw t6, 128(fp)<br>     |
|  35|[0x80002320]<br>0x01408502|- rs2_h0_val == -16385<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                       |[0x80000538]:KMDA t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 136(fp)<br>     |
|  36|[0x80002328]<br>0x0000105F|- rs2_h0_val == -33<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                        |[0x80000558]:KMDA t6, t5, t4<br> [0x8000055c]:csrrs t5, vxsat, zero<br> [0x80000560]:sw t6, 144(fp)<br>     |
|  37|[0x80002330]<br>0xFF7FDF19|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                              |[0x80000578]:KMDA t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 152(fp)<br>     |
|  38|[0x80002340]<br>0xFFFF9FD0|- rs1_h1_val == 4096<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                      |[0x800005b8]:KMDA t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 168(fp)<br>     |
|  39|[0x80002348]<br>0xFC002000|- rs2_h1_val == 8<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                       |[0x800005d0]:KMDA t6, t5, t4<br> [0x800005d4]:csrrs t5, vxsat, zero<br> [0x800005d8]:sw t6, 176(fp)<br>     |
|  40|[0x80002350]<br>0xFFFFFFEB|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                              |[0x800005ec]:KMDA t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 184(fp)<br>     |
|  41|[0x80002358]<br>0x00040801|- rs2_h1_val == -1<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                              |[0x8000060c]:KMDA t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 192(fp)<br>     |
|  42|[0x80002360]<br>0xFFF7FEC0|- rs1_h1_val == -1<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                        |[0x8000062c]:KMDA t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 200(fp)<br>     |
|  43|[0x80002368]<br>0xFFFFC0A6|- rs2_h0_val == -513<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                      |[0x8000064c]:KMDA t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 208(fp)<br>     |
|  44|[0x80002370]<br>0x0001FFF0|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                               |[0x8000066c]:KMDA t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 216(fp)<br>     |
|  45|[0x80002378]<br>0xFFFF80DF|- rs2_h0_val == -4097<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                      |[0x8000068c]:KMDA t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 224(fp)<br>     |
|  46|[0x80002380]<br>0x00016000|- rs1_h1_val == 16384<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                      |[0x800006a8]:KMDA t6, t5, t4<br> [0x800006ac]:csrrs t5, vxsat, zero<br> [0x800006b0]:sw t6, 232(fp)<br>     |
|  47|[0x80002388]<br>0x00004000|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                |[0x800006c4]:KMDA t6, t5, t4<br> [0x800006c8]:csrrs t5, vxsat, zero<br> [0x800006cc]:sw t6, 240(fp)<br>     |
|  48|[0x80002390]<br>0xFFFFFBFE|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                |[0x800006e0]:KMDA t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 248(fp)<br>     |
|  49|[0x80002398]<br>0xFFFFF61B|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                               |[0x80000700]:KMDA t6, t5, t4<br> [0x80000704]:csrrs t5, vxsat, zero<br> [0x80000708]:sw t6, 256(fp)<br>     |
|  50|[0x800023a0]<br>0x00021F51|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                               |[0x80000720]:KMDA t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 264(fp)<br>     |
|  51|[0x800023a8]<br>0x0000002E|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                               |[0x80000740]:KMDA t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 272(fp)<br>     |
|  52|[0x800023b0]<br>0x00050380|- rs2_h0_val == -32768<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                   |[0x8000075c]:KMDA t6, t5, t4<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sw t6, 280(fp)<br>     |
|  53|[0x800023b8]<br>0x00003800|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                             |[0x8000077c]:KMDA t6, t5, t4<br> [0x80000780]:csrrs t5, vxsat, zero<br> [0x80000784]:sw t6, 288(fp)<br>     |
|  54|[0x800023c0]<br>0x00000709|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                              |[0x8000079c]:KMDA t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 296(fp)<br>     |
|  55|[0x800023c8]<br>0xFFF00800|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                               |[0x800007b8]:KMDA t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 304(fp)<br>     |
|  56|[0x800023d0]<br>0x000006C0|- rs2_h0_val == 4<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                         |[0x800007d8]:KMDA t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 312(fp)<br>     |
|  57|[0x800023d8]<br>0xFD557000|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                           |[0x800007f8]:KMDA t6, t5, t4<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sw t6, 320(fp)<br>     |
|  58|[0x800023e0]<br>0xFFFE1006|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                              |[0x80000818]:KMDA t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 328(fp)<br>     |
|  59|[0x800023e8]<br>0xFFFFFF80|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                               |[0x80000838]:KMDA t6, t5, t4<br> [0x8000083c]:csrrs t5, vxsat, zero<br> [0x80000840]:sw t6, 336(fp)<br>     |
|  60|[0x800023f0]<br>0xFFFFBF8C|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                               |[0x80000858]:KMDA t6, t5, t4<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sw t6, 344(fp)<br>     |
|  61|[0x800023f8]<br>0x0280C201|- rs1_h1_val == -32768<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                  |[0x80000878]:KMDA t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 352(fp)<br>     |
|  62|[0x80002400]<br>0x000080C0|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x80000898]:KMDA t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 360(fp)<br>     |
|  63|[0x80002408]<br>0xFFFBF830|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                             |[0x800008b8]:KMDA t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 368(fp)<br>     |
|  64|[0x80002410]<br>0xFFEFFF79|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                |[0x800008d8]:KMDA t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 376(fp)<br>     |
|  65|[0x80002420]<br>0xFFFFFFD9|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                               |[0x80000918]:KMDA t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 392(fp)<br>     |
|  66|[0x80002428]<br>0xFAA89FE0|- rs2_h0_val == -21846<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                    |[0x80000934]:KMDA t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 400(fp)<br>     |
|  67|[0x80002430]<br>0xFFFEFFD8|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                            |[0x80000954]:KMDA t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 408(fp)<br>     |
|  68|[0x80002438]<br>0xFFFDFC78|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                |[0x80000974]:KMDA t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 416(fp)<br>     |
|  69|[0x80002440]<br>0x0000000A|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                |[0x80000994]:KMDA t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 424(fp)<br>     |
|  70|[0x80002448]<br>0xFFFF5806|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                            |[0x800009b4]:KMDA t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 432(fp)<br>     |
|  71|[0x80002450]<br>0xFFFD524A|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                           |[0x800009d4]:KMDA t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 440(fp)<br>     |
|  72|[0x80002458]<br>0x20006FF0|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                             |[0x800009f4]:KMDA t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 448(fp)<br>     |
|  73|[0x80002460]<br>0xFFFBEEBB|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                              |[0x80000a10]:KMDA t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 456(fp)<br>     |
|  74|[0x80002468]<br>0x0000100A|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                            |[0x80000a30]:KMDA t6, t5, t4<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sw t6, 464(fp)<br>     |
|  75|[0x80002480]<br>0xFEFFEFE8|- rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                             |[0x80000a90]:KMDA t6, t5, t4<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sw t6, 488(fp)<br>     |
