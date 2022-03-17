
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a20')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | kstsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kstsa16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 150      |
| STAT1                     | 74      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 75     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a0c]:KSTSA16 t6, t5, t4
      [0x80000a10]:csrrs t5, vxsat, zero
      [0x80000a14]:sw t6, 440(ra)
 -- Signature Address: 0x80002460 Data: 0x80003FFD
 -- Redundant Coverpoints hit by the op
      - opcode : kstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 16384
      - rs2_h0_val == -3
      - rs1_h1_val == -21846
      - rs1_h0_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstsa16', 'rs1 : x28', 'rs2 : x28', 'rd : x28', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000118]:KSTSA16 t3, t3, t3
	-[0x8000011c]:csrrs t3, vxsat, zero
	-[0x80000120]:sw t3, 0(fp)
Current Store : [0x80000124] : sw t3, 4(fp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x0', 'rd : x6', 'rs1 == rs2 != rd', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000138]:KSTSA16 t1, zero, zero
	-[0x8000013c]:csrrs zero, vxsat, zero
	-[0x80000140]:sw t1, 8(fp)
Current Store : [0x80000144] : sw zero, 12(fp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rd : x21', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80000158]:KSTSA16 s5, s4, s3
	-[0x8000015c]:csrrs s4, vxsat, zero
	-[0x80000160]:sw s5, 16(fp)
Current Store : [0x80000164] : sw s4, 20(fp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_h0_val == 2048', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000178]:KSTSA16 ra, s9, ra
	-[0x8000017c]:csrrs s9, vxsat, zero
	-[0x80000180]:sw ra, 24(fp)
Current Store : [0x80000184] : sw s9, 28(fp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x18', 'rs1 == rd != rs2', 'rs2_h1_val == 32', 'rs2_h0_val == -21846', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000198]:KSTSA16 s2, s2, a7
	-[0x8000019c]:csrrs s2, vxsat, zero
	-[0x800001a0]:sw s2, 32(fp)
Current Store : [0x800001a4] : sw s2, 36(fp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x30', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -21846', 'rs2_h0_val == 512', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800001b8]:KSTSA16 t5, t2, tp
	-[0x800001bc]:csrrs t2, vxsat, zero
	-[0x800001c0]:sw t5, 40(fp)
Current Store : [0x800001c4] : sw t2, 44(fp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x5', 'rd : x24', 'rs2_h1_val == 32767', 'rs2_h0_val == 16384', 'rs1_h1_val == 16', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800001d4]:KSTSA16 s8, s3, t0
	-[0x800001d8]:csrrs s3, vxsat, zero
	-[0x800001dc]:sw s8, 48(fp)
Current Store : [0x800001e0] : sw s3, 52(fp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x11', 'rd : x25', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h1_val == -16385', 'rs2_h0_val == 256', 'rs1_h1_val == -5', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800001f4]:KSTSA16 s9, t4, a1
	-[0x800001f8]:csrrs t4, vxsat, zero
	-[0x800001fc]:sw s9, 56(fp)
Current Store : [0x80000200] : sw t4, 60(fp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x22', 'rs2_h1_val == -8193', 'rs2_h0_val == 8', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000214]:KSTSA16 s6, a4, t2
	-[0x80000218]:csrrs a4, vxsat, zero
	-[0x8000021c]:sw s6, 64(fp)
Current Store : [0x80000220] : sw a4, 68(fp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x15', 'rs2_h1_val == -2049', 'rs2_h0_val == -32768', 'rs1_h1_val == 32', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000230]:KSTSA16 a5, a6, s10
	-[0x80000234]:csrrs a6, vxsat, zero
	-[0x80000238]:sw a5, 72(fp)
Current Store : [0x8000023c] : sw a6, 76(fp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x6', 'rd : x10', 'rs2_h1_val == -1025', 'rs2_h0_val == -2', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000250]:KSTSA16 a0, a1, t1
	-[0x80000254]:csrrs a1, vxsat, zero
	-[0x80000258]:sw a0, 80(fp)
Current Store : [0x8000025c] : sw a1, 84(fp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x27', 'rs2_h1_val == -257', 'rs2_h0_val == 21845', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x8000026c]:KSTSA16 s11, s1, a3
	-[0x80000270]:csrrs s1, vxsat, zero
	-[0x80000274]:sw s11, 88(fp)
Current Store : [0x80000278] : sw s1, 92(fp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rd : x13', 'rs2_h1_val == -129', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000028c]:KSTSA16 a3, a7, t5
	-[0x80000290]:csrrs a7, vxsat, zero
	-[0x80000294]:sw a3, 96(fp)
Current Store : [0x80000298] : sw a7, 100(fp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rd : x9', 'rs2_h1_val == -65', 'rs2_h0_val == 1024', 'rs1_h1_val == -8193', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800002ac]:KSTSA16 s1, gp, s5
	-[0x800002b0]:csrrs gp, vxsat, zero
	-[0x800002b4]:sw s1, 104(fp)
Current Store : [0x800002b8] : sw gp, 108(fp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x17', 'rs2_h1_val == -33', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800002cc]:KSTSA16 a7, ra, a5
	-[0x800002d0]:csrrs ra, vxsat, zero
	-[0x800002d4]:sw a7, 112(fp)
Current Store : [0x800002d8] : sw ra, 116(fp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x14', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -17', 'rs2_h0_val == -5', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800002e8]:KSTSA16 a4, t1, s6
	-[0x800002ec]:csrrs t1, vxsat, zero
	-[0x800002f0]:sw a4, 120(fp)
Current Store : [0x800002f4] : sw t1, 124(fp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x26', 'rs2_h1_val == -9', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000308]:KSTSA16 s10, s5, a6
	-[0x8000030c]:csrrs s5, vxsat, zero
	-[0x80000310]:sw s10, 128(fp)
Current Store : [0x80000314] : sw s5, 132(fp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x24', 'rd : x5', 'rs2_h1_val == -5', 'rs2_h0_val == 2', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000328]:KSTSA16 t0, a3, s8
	-[0x8000032c]:csrrs a3, vxsat, zero
	-[0x80000330]:sw t0, 136(fp)
Current Store : [0x80000334] : sw a3, 140(fp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x2', 'rd : x3', 'rs2_h1_val == -3', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000348]:KSTSA16 gp, t5, sp
	-[0x8000034c]:csrrs t5, vxsat, zero
	-[0x80000350]:sw gp, 144(fp)
Current Store : [0x80000354] : sw t5, 148(fp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x25', 'rd : x19', 'rs2_h1_val == -2', 'rs1_h1_val == 32767', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000370]:KSTSA16 s3, tp, s9
	-[0x80000374]:csrrs tp, vxsat, zero
	-[0x80000378]:sw s3, 0(ra)
Current Store : [0x8000037c] : sw tp, 4(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x2', 'rs2_h1_val == -32768', 'rs2_h0_val == 1', 'rs1_h1_val == -21846', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000390]:KSTSA16 sp, fp, a2
	-[0x80000394]:csrrs fp, vxsat, zero
	-[0x80000398]:sw sp, 8(ra)
Current Store : [0x8000039c] : sw fp, 12(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x20', 'rd : x0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -3', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800003ac]:KSTSA16 zero, a5, s4
	-[0x800003b0]:csrrs a5, vxsat, zero
	-[0x800003b4]:sw zero, 16(ra)
Current Store : [0x800003b8] : sw a5, 20(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x31', 'rd : x11', 'rs2_h1_val == 8192', 'rs2_h0_val == -8193', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800003cc]:KSTSA16 a1, s7, t6
	-[0x800003d0]:csrrs s7, vxsat, zero
	-[0x800003d4]:sw a1, 24(ra)
Current Store : [0x800003d8] : sw s7, 28(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x29', 'rd : x16', 'rs2_h1_val == 4096', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800003e8]:KSTSA16 a6, sp, t4
	-[0x800003ec]:csrrs sp, vxsat, zero
	-[0x800003f0]:sw a6, 32(ra)
Current Store : [0x800003f4] : sw sp, 36(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x18', 'rd : x31', 'rs2_h1_val == 2048', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000404]:KSTSA16 t6, s11, s2
	-[0x80000408]:csrrs s11, vxsat, zero
	-[0x8000040c]:sw t6, 40(ra)
Current Store : [0x80000410] : sw s11, 44(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x12', 'rs2_h1_val == 1024', 'rs2_h0_val == -2049', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000424]:KSTSA16 a2, t0, a0
	-[0x80000428]:csrrs t0, vxsat, zero
	-[0x8000042c]:sw a2, 48(ra)
Current Store : [0x80000430] : sw t0, 52(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x8', 'rd : x20', 'rs2_h1_val == 512', 'rs2_h0_val == -9', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000444]:KSTSA16 s4, a2, fp
	-[0x80000448]:csrrs a2, vxsat, zero
	-[0x8000044c]:sw s4, 56(ra)
Current Store : [0x80000450] : sw a2, 60(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x7', 'rs2_h1_val == 256', 'rs2_h0_val == 128', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000464]:KSTSA16 t2, s10, s1
	-[0x80000468]:csrrs s10, vxsat, zero
	-[0x8000046c]:sw t2, 64(ra)
Current Store : [0x80000470] : sw s10, 68(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x4', 'rs2_h1_val == 128', 'rs1_h1_val == -513', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000484]:KSTSA16 tp, s6, s11
	-[0x80000488]:csrrs s6, vxsat, zero
	-[0x8000048c]:sw tp, 72(ra)
Current Store : [0x80000490] : sw s6, 76(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x23', 'rd : x29', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004a4]:KSTSA16 t4, a0, s7
	-[0x800004a8]:csrrs a0, vxsat, zero
	-[0x800004ac]:sw t4, 80(ra)
Current Store : [0x800004b0] : sw a0, 84(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x8', 'rs1_h1_val == -1', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004c0]:KSTSA16 fp, t6, gp
	-[0x800004c4]:csrrs t6, vxsat, zero
	-[0x800004c8]:sw fp, 88(ra)
Current Store : [0x800004cc] : sw t6, 92(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x23', 'rs1_h1_val == 2048', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004e0]:KSTSA16 s7, s8, a4
	-[0x800004e4]:csrrs s8, vxsat, zero
	-[0x800004e8]:sw s7, 96(ra)
Current Store : [0x800004ec] : sw s8, 100(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 8192', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004fc]:KSTSA16 t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 104(ra)
Current Store : [0x80000508] : sw t5, 108(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x8000051c]:KSTSA16 t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 112(ra)
Current Store : [0x80000528] : sw t5, 116(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000053c]:KSTSA16 t6, t5, t4
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 120(ra)
Current Store : [0x80000548] : sw t5, 124(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x8000055c]:KSTSA16 t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 128(ra)
Current Store : [0x80000568] : sw t5, 132(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000578]:KSTSA16 t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 136(ra)
Current Store : [0x80000584] : sw t5, 140(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000598]:KSTSA16 t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 144(ra)
Current Store : [0x800005a4] : sw t5, 148(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005b8]:KSTSA16 t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 152(ra)
Current Store : [0x800005c4] : sw t5, 156(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005d8]:KSTSA16 t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 160(ra)
Current Store : [0x800005e4] : sw t5, 164(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == -17', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800005f8]:KSTSA16 t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 168(ra)
Current Store : [0x80000604] : sw t5, 172(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000614]:KSTSA16 t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 176(ra)
Current Store : [0x80000620] : sw t5, 180(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000634]:KSTSA16 t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 184(ra)
Current Store : [0x80000640] : sw t5, 188(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000654]:KSTSA16 t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 192(ra)
Current Store : [0x80000660] : sw t5, 196(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000670]:KSTSA16 t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 200(ra)
Current Store : [0x8000067c] : sw t5, 204(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000068c]:KSTSA16 t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 208(ra)
Current Store : [0x80000698] : sw t5, 212(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800006a8]:KSTSA16 t6, t5, t4
	-[0x800006ac]:csrrs t5, vxsat, zero
	-[0x800006b0]:sw t6, 216(ra)
Current Store : [0x800006b4] : sw t5, 220(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800006c8]:KSTSA16 t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 224(ra)
Current Store : [0x800006d4] : sw t5, 228(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800006e4]:KSTSA16 t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 232(ra)
Current Store : [0x800006f0] : sw t5, 236(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 128', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000704]:KSTSA16 t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 240(ra)
Current Store : [0x80000710] : sw t5, 244(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000724]:KSTSA16 t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 248(ra)
Current Store : [0x80000730] : sw t5, 252(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h1_val == -4097', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000744]:KSTSA16 t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 256(ra)
Current Store : [0x80000750] : sw t5, 260(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000764]:KSTSA16 t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 264(ra)
Current Store : [0x80000770] : sw t5, 268(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000784]:KSTSA16 t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 272(ra)
Current Store : [0x80000790] : sw t5, 276(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800007a4]:KSTSA16 t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 280(ra)
Current Store : [0x800007b0] : sw t5, 284(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800007c4]:KSTSA16 t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 288(ra)
Current Store : [0x800007d0] : sw t5, 292(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800007e4]:KSTSA16 t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 296(ra)
Current Store : [0x800007f0] : sw t5, 300(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000804]:KSTSA16 t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 304(ra)
Current Store : [0x80000810] : sw t5, 308(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000824]:KSTSA16 t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 312(ra)
Current Store : [0x80000830] : sw t5, 316(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000840]:KSTSA16 t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 320(ra)
Current Store : [0x8000084c] : sw t5, 324(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000860]:KSTSA16 t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 328(ra)
Current Store : [0x8000086c] : sw t5, 332(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000880]:KSTSA16 t6, t5, t4
	-[0x80000884]:csrrs t5, vxsat, zero
	-[0x80000888]:sw t6, 336(ra)
Current Store : [0x8000088c] : sw t5, 340(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800008a0]:KSTSA16 t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 344(ra)
Current Store : [0x800008ac] : sw t5, 348(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800008bc]:KSTSA16 t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 352(ra)
Current Store : [0x800008c8] : sw t5, 356(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800008dc]:KSTSA16 t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 360(ra)
Current Store : [0x800008e8] : sw t5, 364(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800008fc]:KSTSA16 t6, t5, t4
	-[0x80000900]:csrrs t5, vxsat, zero
	-[0x80000904]:sw t6, 368(ra)
Current Store : [0x80000908] : sw t5, 372(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000918]:KSTSA16 t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 376(ra)
Current Store : [0x80000924] : sw t5, 380(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000938]:KSTSA16 t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 384(ra)
Current Store : [0x80000944] : sw t5, 388(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000958]:KSTSA16 t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 392(ra)
Current Store : [0x80000964] : sw t5, 396(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000978]:KSTSA16 t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 400(ra)
Current Store : [0x80000984] : sw t5, 404(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000994]:KSTSA16 t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 408(ra)
Current Store : [0x800009a0] : sw t5, 412(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800009b4]:KSTSA16 t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 416(ra)
Current Store : [0x800009c0] : sw t5, 420(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800009d0]:KSTSA16 t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 424(ra)
Current Store : [0x800009dc] : sw t5, 428(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x800009f0]:KSTSA16 t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 432(ra)
Current Store : [0x800009fc] : sw t5, 436(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kstsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -3', 'rs1_h1_val == -21846', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000a0c]:KSTSA16 t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 440(ra)
Current Store : [0x80000a18] : sw t5, 444(ra) -- Store: [0x80002464]:0x00000001





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

|s.no|        signature         |                                                                                                                                          coverpoints                                                                                                                                          |                                                     code                                                      |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kstsa16<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 21845<br> |[0x80000118]:KSTSA16 t3, t3, t3<br> [0x8000011c]:csrrs t3, vxsat, zero<br> [0x80000120]:sw t3, 0(fp)<br>       |
|   2|[0x80002218]<br>0x00000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                     |[0x80000138]:KSTSA16 t1, zero, zero<br> [0x8000013c]:csrrs zero, vxsat, zero<br> [0x80000140]:sw t1, 8(fp)<br> |
|   3|[0x80002220]<br>0x0207FFF6|- rs1 : x20<br> - rs2 : x19<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -513<br>                            |[0x80000158]:KSTSA16 s5, s4, s3<br> [0x8000015c]:csrrs s4, vxsat, zero<br> [0x80000160]:sw s5, 16(fp)<br>      |
|   4|[0x80002228]<br>0xFFFF0810|- rs1 : x25<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 16<br>                                                                                                                                                                            |[0x80000178]:KSTSA16 ra, s9, ra<br> [0x8000017c]:csrrs s9, vxsat, zero<br> [0x80000180]:sw ra, 24(fp)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x18<br> - rs2 : x17<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_h1_val == 32<br> - rs2_h0_val == -21846<br> - rs1_h0_val == -21846<br>                                                                                                                                             |[0x80000198]:KSTSA16 s2, s2, a7<br> [0x8000019c]:csrrs s2, vxsat, zero<br> [0x800001a0]:sw s2, 32(fp)<br>      |
|   6|[0x80002238]<br>0x7FFF00FF|- rs1 : x7<br> - rs2 : x4<br> - rd : x30<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 512<br> - rs1_h0_val == -257<br>                                                                                                                               |[0x800001b8]:KSTSA16 t5, t2, tp<br> [0x800001bc]:csrrs t2, vxsat, zero<br> [0x800001c0]:sw t5, 40(fp)<br>      |
|   7|[0x80002240]<br>0x80114200|- rs1 : x19<br> - rs2 : x5<br> - rd : x24<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 16<br> - rs1_h0_val == 512<br>                                                                                                                                               |[0x800001d4]:KSTSA16 s8, s3, t0<br> [0x800001d8]:csrrs s3, vxsat, zero<br> [0x800001dc]:sw s8, 48(fp)<br>      |
|   8|[0x80002248]<br>0x3FFC0900|- rs1 : x29<br> - rs2 : x11<br> - rd : x25<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 256<br> - rs1_h1_val == -5<br> - rs1_h0_val == 2048<br>                                                                                                      |[0x800001f4]:KSTSA16 s9, t4, a1<br> [0x800001f8]:csrrs t4, vxsat, zero<br> [0x800001fc]:sw s9, 56(fp)<br>      |
|   9|[0x80002250]<br>0x2004555D|- rs1 : x14<br> - rs2 : x7<br> - rd : x22<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 8<br> - rs1_h0_val == 21845<br>                                                                                                                                                                        |[0x80000214]:KSTSA16 s6, a4, t2<br> [0x80000218]:csrrs a4, vxsat, zero<br> [0x8000021c]:sw s6, 64(fp)<br>      |
|  10|[0x80002258]<br>0x08218000|- rs1 : x16<br> - rs2 : x26<br> - rd : x15<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 32<br> - rs1_h0_val == -3<br>                                                                                                                                              |[0x80000230]:KSTSA16 a5, a6, s10<br> [0x80000234]:csrrs a6, vxsat, zero<br> [0x80000238]:sw a5, 72(fp)<br>     |
|  11|[0x80002260]<br>0xF400FFF6|- rs1 : x11<br> - rs2 : x6<br> - rd : x10<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -2<br> - rs1_h1_val == -4097<br>                                                                                                                                                                       |[0x80000250]:KSTSA16 a0, a1, t1<br> [0x80000254]:csrrs a1, vxsat, zero<br> [0x80000258]:sw a0, 80(fp)<br>      |
|  12|[0x80002268]<br>0x01025555|- rs1 : x9<br> - rs2 : x13<br> - rd : x27<br> - rs2_h1_val == -257<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 1<br>                                                                                                                                                                         |[0x8000026c]:KSTSA16 s11, s1, a3<br> [0x80000270]:csrrs s1, vxsat, zero<br> [0x80000274]:sw s11, 88(fp)<br>    |
|  13|[0x80002270]<br>0x0084000E|- rs1 : x17<br> - rs2 : x30<br> - rd : x13<br> - rs2_h1_val == -129<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                  |[0x8000028c]:KSTSA16 a3, a7, t5<br> [0x80000290]:csrrs a7, vxsat, zero<br> [0x80000294]:sw a3, 96(fp)<br>      |
|  14|[0x80002278]<br>0xE04003EF|- rs1 : x3<br> - rs2 : x21<br> - rd : x9<br> - rs2_h1_val == -65<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -17<br>                                                                                                                                                |[0x800002ac]:KSTSA16 s1, gp, s5<br> [0x800002b0]:csrrs gp, vxsat, zero<br> [0x800002b4]:sw s1, 104(fp)<br>     |
|  15|[0x80002280]<br>0x001AFFDC|- rs1 : x1<br> - rs2 : x15<br> - rd : x17<br> - rs2_h1_val == -33<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                  |[0x800002cc]:KSTSA16 a7, ra, a5<br> [0x800002d0]:csrrs ra, vxsat, zero<br> [0x800002d4]:sw a7, 112(fp)<br>     |
|  16|[0x80002288]<br>0x00310FFB|- rs1 : x6<br> - rs2 : x22<br> - rd : x14<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -17<br> - rs2_h0_val == -5<br> - rs1_h0_val == 4096<br>                                                                                                                                  |[0x800002e8]:KSTSA16 a4, t1, s6<br> [0x800002ec]:csrrs t1, vxsat, zero<br> [0x800002f0]:sw a4, 120(fp)<br>     |
|  17|[0x80002290]<br>0x00037FF7|- rs1 : x21<br> - rs2 : x16<br> - rd : x26<br> - rs2_h1_val == -9<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                |[0x80000308]:KSTSA16 s10, s5, a6<br> [0x8000030c]:csrrs s5, vxsat, zero<br> [0x80000310]:sw s10, 128(fp)<br>   |
|  18|[0x80002298]<br>0xFF04FFF1|- rs1 : x13<br> - rs2 : x24<br> - rd : x5<br> - rs2_h1_val == -5<br> - rs2_h0_val == 2<br> - rs1_h1_val == -257<br>                                                                                                                                                                            |[0x80000328]:KSTSA16 t0, a3, s8<br> [0x8000032c]:csrrs a3, vxsat, zero<br> [0x80000330]:sw t0, 136(fp)<br>     |
|  19|[0x800022a0]<br>0x000B47FF|- rs1 : x30<br> - rs2 : x2<br> - rd : x3<br> - rs2_h1_val == -3<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                      |[0x80000348]:KSTSA16 gp, t5, sp<br> [0x8000034c]:csrrs t5, vxsat, zero<br> [0x80000350]:sw gp, 144(fp)<br>     |
|  20|[0x800022a8]<br>0x7FFFFBF9|- rs1 : x4<br> - rs2 : x25<br> - rd : x19<br> - rs2_h1_val == -2<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1025<br>                                                                                                                                                                       |[0x80000370]:KSTSA16 s3, tp, s9<br> [0x80000374]:csrrs tp, vxsat, zero<br> [0x80000378]:sw s3, 0(ra)<br>       |
|  21|[0x800022b0]<br>0x2AAA0002|- rs1 : x8<br> - rs2 : x12<br> - rd : x2<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 1<br>                                                                                                                                                 |[0x80000390]:KSTSA16 sp, fp, a2<br> [0x80000394]:csrrs fp, vxsat, zero<br> [0x80000398]:sw sp, 8(ra)<br>       |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x15<br> - rs2 : x20<br> - rd : x0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -3<br> - rs1_h0_val == 16384<br>                                                                                                                               |[0x800003ac]:KSTSA16 zero, a5, s4<br> [0x800003b0]:csrrs a5, vxsat, zero<br> [0x800003b4]:sw zero, 16(ra)<br>  |
|  23|[0x800022c0]<br>0xDFFAE0FF|- rs1 : x23<br> - rs2 : x31<br> - rd : x11<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 256<br>                                                                                                                                                                      |[0x800003cc]:KSTSA16 a1, s7, t6<br> [0x800003d0]:csrrs s7, vxsat, zero<br> [0x800003d4]:sw a1, 24(ra)<br>      |
|  24|[0x800022c8]<br>0xEFFBFFFF|- rs1 : x2<br> - rs2 : x29<br> - rd : x16<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                               |[0x800003e8]:KSTSA16 a6, sp, t4<br> [0x800003ec]:csrrs sp, vxsat, zero<br> [0x800003f0]:sw a6, 32(ra)<br>      |
|  25|[0x800022d0]<br>0x08003FFF|- rs1 : x27<br> - rs2 : x18<br> - rd : x31<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                               |[0x80000404]:KSTSA16 t6, s11, s2<br> [0x80000408]:csrrs s11, vxsat, zero<br> [0x8000040c]:sw t6, 40(ra)<br>    |
|  26|[0x800022d8]<br>0xFBFDF806|- rs1 : x5<br> - rs2 : x10<br> - rd : x12<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -3<br>                                                                                                                                                                        |[0x80000424]:KSTSA16 a2, t0, a0<br> [0x80000428]:csrrs t0, vxsat, zero<br> [0x8000042c]:sw a2, 48(ra)<br>      |
|  27|[0x800022e0]<br>0xFDFD0077|- rs1 : x12<br> - rs2 : x8<br> - rd : x20<br> - rs2_h1_val == 512<br> - rs2_h0_val == -9<br> - rs1_h0_val == 128<br>                                                                                                                                                                           |[0x80000444]:KSTSA16 s4, a2, fp<br> [0x80000448]:csrrs a2, vxsat, zero<br> [0x8000044c]:sw s4, 56(ra)<br>      |
|  28|[0x800022e8]<br>0xF6FFFC7F|- rs1 : x26<br> - rs2 : x9<br> - rd : x7<br> - rs2_h1_val == 256<br> - rs2_h0_val == 128<br> - rs1_h1_val == -2049<br>                                                                                                                                                                         |[0x80000464]:KSTSA16 t2, s10, s1<br> [0x80000468]:csrrs s10, vxsat, zero<br> [0x8000046c]:sw t2, 64(ra)<br>    |
|  29|[0x800022f0]<br>0xFD7F0440|- rs1 : x22<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == 128<br> - rs1_h1_val == -513<br> - rs1_h0_val == 64<br>                                                                                                                                                                          |[0x80000484]:KSTSA16 tp, s6, s11<br> [0x80000488]:csrrs s6, vxsat, zero<br> [0x8000048c]:sw tp, 72(ra)<br>     |
|  30|[0x800022f8]<br>0xF7F9DDFE|- rs1 : x10<br> - rs2 : x23<br> - rd : x29<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                        |[0x800004a4]:KSTSA16 t4, a0, s7<br> [0x800004a8]:csrrs a0, vxsat, zero<br> [0x800004ac]:sw t4, 80(ra)<br>      |
|  31|[0x80002300]<br>0x0200FF80|- rs1 : x31<br> - rs2 : x3<br> - rd : x8<br> - rs1_h1_val == -1<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                   |[0x800004c0]:KSTSA16 fp, t6, gp<br> [0x800004c4]:csrrs t6, vxsat, zero<br> [0x800004c8]:sw fp, 88(ra)<br>      |
|  32|[0x80002308]<br>0x0821FFBD|- rs1 : x24<br> - rs2 : x14<br> - rd : x23<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                |[0x800004e0]:KSTSA16 s7, s8, a4<br> [0x800004e4]:csrrs s8, vxsat, zero<br> [0x800004e8]:sw s7, 96(ra)<br>      |
|  33|[0x80002310]<br>0x00011FDF|- rs2_h1_val == 4<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                         |[0x800004fc]:KSTSA16 t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 104(ra)<br>     |
|  34|[0x80002318]<br>0x3FFEFFEF|- rs2_h1_val == 2<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                         |[0x8000051c]:KSTSA16 t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 112(ra)<br>     |
|  35|[0x80002320]<br>0xFFFB0001|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                         |[0x8000053c]:KSTSA16 t6, t5, t4<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 120(ra)<br>     |
|  36|[0x80002328]<br>0xF7FCF7FD|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                         |[0x8000055c]:KSTSA16 t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 128(ra)<br>     |
|  37|[0x80002330]<br>0x00281FFC|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                       |[0x80000578]:KSTSA16 t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 136(ra)<br>     |
|  38|[0x80002338]<br>0x02090C00|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                       |[0x80000598]:KSTSA16 t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 144(ra)<br>     |
|  39|[0x80002340]<br>0x4100001B|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                         |[0x800005b8]:KSTSA16 t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 152(ra)<br>     |
|  40|[0x80002348]<br>0xFF020005|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                          |[0x800005d8]:KSTSA16 t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 160(ra)<br>     |
|  41|[0x80002350]<br>0xFFE70102|- rs2_h1_val == 8<br> - rs1_h1_val == -17<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                            |[0x800005f8]:KSTSA16 t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 168(ra)<br>     |
|  42|[0x80002358]<br>0xBFF0FFFF|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                         |[0x80000614]:KSTSA16 t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 176(ra)<br>     |
|  43|[0x80002360]<br>0xFFBAFFF2|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                         |[0x80000634]:KSTSA16 t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 184(ra)<br>     |
|  44|[0x80002368]<br>0xFFF3FFE6|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                         |[0x80000654]:KSTSA16 t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 192(ra)<br>     |
|  45|[0x80002370]<br>0x0FFF0FFE|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                          |[0x80000670]:KSTSA16 t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 200(ra)<br>     |
|  46|[0x80002378]<br>0xFFDF000C|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                        |[0x8000068c]:KSTSA16 t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 208(ra)<br>     |
|  47|[0x80002380]<br>0x0000000A|- rs2_h1_val == -1<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                  |[0x800006a8]:KSTSA16 t6, t5, t4<br> [0x800006ac]:csrrs t5, vxsat, zero<br> [0x800006b0]:sw t6, 216(ra)<br>     |
|  48|[0x80002388]<br>0x80067FFF|- rs2_h0_val == 32767<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                           |[0x800006c8]:KSTSA16 t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 224(ra)<br>     |
|  49|[0x80002390]<br>0x3C000BFF|- rs2_h0_val == 4096<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                             |[0x800006e4]:KSTSA16 t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 232(ra)<br>     |
|  50|[0x80002398]<br>0x00C1C03F|- rs2_h0_val == 64<br> - rs1_h1_val == 128<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                      |[0x80000704]:KSTSA16 t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 240(ra)<br>     |
|  51|[0x800023a0]<br>0xEFFAFE1F|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                         |[0x80000724]:KSTSA16 t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 248(ra)<br>     |
|  52|[0x800023a8]<br>0x0FF9FF83|- rs2_h1_val == -4097<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                |[0x80000744]:KSTSA16 t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 256(ra)<br>     |
|  53|[0x800023b0]<br>0xFFE5003F|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                         |[0x80000764]:KSTSA16 t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 264(ra)<br>     |
|  54|[0x800023b8]<br>0xD000AA69|- rs2_h0_val == -65<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                             |[0x80000784]:KSTSA16 t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 272(ra)<br>     |
|  55|[0x800023c0]<br>0xFF850040|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                       |[0x800007a4]:KSTSA16 t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 280(ra)<br>     |
|  56|[0x800023c8]<br>0xFFE9FFEA|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                        |[0x800007c4]:KSTSA16 t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 288(ra)<br>     |
|  57|[0x800023d0]<br>0xFFC4007C|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                        |[0x800007e4]:KSTSA16 t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 296(ra)<br>     |
|  58|[0x800023d8]<br>0xFEF7FFB6|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                         |[0x80000804]:KSTSA16 t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 304(ra)<br>     |
|  59|[0x800023e0]<br>0xFF7E5534|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                         |[0x80000824]:KSTSA16 t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 312(ra)<br>     |
|  60|[0x800023e8]<br>0x1000BFF9|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                       |[0x80000840]:KSTSA16 t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 320(ra)<br>     |
|  61|[0x800023f0]<br>0x03FF0002|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                       |[0x80000860]:KSTSA16 t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 328(ra)<br>     |
|  62|[0x800023f8]<br>0x01F7FFFF|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                        |[0x80000880]:KSTSA16 t6, t5, t4<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sw t6, 336(ra)<br>     |
|  63|[0x80002400]<br>0x010AF00F|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                        |[0x800008a0]:KSTSA16 t6, t5, t4<br> [0x800008a4]:csrrs t5, vxsat, zero<br> [0x800008a8]:sw t6, 344(ra)<br>     |
|  64|[0x80002408]<br>0x00400086|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                         |[0x800008bc]:KSTSA16 t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 352(ra)<br>     |
|  65|[0x80002410]<br>0x7FFF3FFE|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                     |[0x800008dc]:KSTSA16 t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 360(ra)<br>     |
|  66|[0x80002418]<br>0x000CF801|- rs1_h1_val == 4<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                |[0x800008fc]:KSTSA16 t6, t5, t4<br> [0x80000900]:csrrs t5, vxsat, zero<br> [0x80000904]:sw t6, 368(ra)<br>     |
|  67|[0x80002420]<br>0x40033FFF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                          |[0x80000918]:KSTSA16 t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 376(ra)<br>     |
|  68|[0x80002428]<br>0x0207FBFA|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                      |[0x80000938]:KSTSA16 t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 384(ra)<br>     |
|  69|[0x80002430]<br>0xFEFB06FF|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                       |[0x80000958]:KSTSA16 t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 392(ra)<br>     |
|  70|[0x80002438]<br>0x7FBFFB7E|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                       |[0x80000978]:KSTSA16 t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 400(ra)<br>     |
|  71|[0x80002440]<br>0xFFDFE01F|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                      |[0x80000994]:KSTSA16 t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 408(ra)<br>     |
|  72|[0x80002448]<br>0x0204EFFE|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                      |[0x800009b4]:KSTSA16 t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 416(ra)<br>     |
|  73|[0x80002450]<br>0xAAA1BFFF|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                     |[0x800009d0]:KSTSA16 t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 424(ra)<br>     |
|  74|[0x80002458]<br>0x0000FE07|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                       |[0x800009f0]:KSTSA16 t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 432(ra)<br>     |
