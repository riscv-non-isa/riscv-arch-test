
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002450', '144 words')]      |
| COV_LABELS                | kmabb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmabb-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 144      |
| STAT1                     | 71      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 72     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000070c]:KMABB t6, t5, t4
      [0x80000710]:csrrs t5, vxsat, zero
      [0x80000714]:sw t6, 240(gp)
 -- Signature Address: 0x80002398 Data: 0xFB74FA41
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 256
      - rs1_h0_val == -17






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabb', 'rs1 : x0', 'rs2 : x0', 'rd : x0', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000011c]:KMABB zero, zero, zero
	-[0x80000120]:csrrs zero, vxsat, zero
	-[0x80000124]:sw zero, 0(a3)
Current Store : [0x80000128] : sw zero, 4(a3) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x12', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -2', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x8000013c]:KMABB a2, s5, s5
	-[0x80000140]:csrrs s5, vxsat, zero
	-[0x80000144]:sw a2, 8(a3)
Current Store : [0x80000148] : sw s5, 12(a3) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 2', 'rs2_h0_val == 128', 'rs1_h1_val == -1025', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000015c]:KMABB t2, ra, s4
	-[0x80000160]:csrrs ra, vxsat, zero
	-[0x80000164]:sw t2, 16(a3)
Current Store : [0x80000168] : sw ra, 20(a3) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x18', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -16385', 'rs2_h0_val == 4', 'rs1_h1_val == 1024', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x8000017c]:KMABB s2, s10, s2
	-[0x80000180]:csrrs s10, vxsat, zero
	-[0x80000184]:sw s2, 24(a3)
Current Store : [0x80000188] : sw s10, 28(a3) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x9', 'rd : x4', 'rs1 == rd != rs2', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000019c]:KMABB tp, tp, s1
	-[0x800001a0]:csrrs tp, vxsat, zero
	-[0x800001a4]:sw tp, 32(a3)
Current Store : [0x800001a8] : sw tp, 36(a3) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x3', 'rs2_h0_val == 16384', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800001b4]:KMABB gp, t3, t1
	-[0x800001b8]:csrrs t3, vxsat, zero
	-[0x800001bc]:sw gp, 40(a3)
Current Store : [0x800001c0] : sw t3, 44(a3) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x1', 'rs2_h1_val == -21846', 'rs1_h1_val == -5', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800001d4]:KMABB ra, a2, t4
	-[0x800001d8]:csrrs a2, vxsat, zero
	-[0x800001dc]:sw ra, 48(a3)
Current Store : [0x800001e0] : sw a2, 52(a3) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x4', 'rd : x21', 'rs2_h1_val == 21845', 'rs1_h1_val == -257', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800001f0]:KMABB s5, t6, tp
	-[0x800001f4]:csrrs t6, vxsat, zero
	-[0x800001f8]:sw s5, 56(a3)
Current Store : [0x800001fc] : sw t6, 60(a3) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x9', 'rs2_h1_val == 32767', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000210]:KMABB s1, a1, gp
	-[0x80000214]:csrrs a1, vxsat, zero
	-[0x80000218]:sw s1, 64(a3)
Current Store : [0x8000021c] : sw a1, 68(a3) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x25', 'rs2_h1_val == -8193', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x8000022c]:KMABB s9, s4, a6
	-[0x80000230]:csrrs s4, vxsat, zero
	-[0x80000234]:sw s9, 72(a3)
Current Store : [0x80000238] : sw s4, 76(a3) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x12', 'rd : x30', 'rs2_h1_val == -4097', 'rs2_h0_val == 21845', 'rs1_h1_val == -33', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000024c]:KMABB t5, s2, a2
	-[0x80000250]:csrrs s2, vxsat, zero
	-[0x80000254]:sw t5, 80(a3)
Current Store : [0x80000258] : sw s2, 84(a3) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x2', 'rd : x28', 'rs2_h1_val == -1025', 'rs2_h0_val == 256', 'rs1_h1_val == 2048', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000026c]:KMABB t3, gp, sp
	-[0x80000270]:csrrs gp, vxsat, zero
	-[0x80000274]:sw t3, 88(a3)
Current Store : [0x80000278] : sw gp, 92(a3) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x28', 'rd : x29', 'rs2_h1_val == -513', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000028c]:KMABB t4, a6, t3
	-[0x80000290]:csrrs a6, vxsat, zero
	-[0x80000294]:sw t4, 96(a3)
Current Store : [0x80000298] : sw a6, 100(a3) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x16', 'rs2_h1_val == -257', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800002ac]:KMABB a6, a4, a1
	-[0x800002b0]:csrrs a4, vxsat, zero
	-[0x800002b4]:sw a6, 104(a3)
Current Store : [0x800002b8] : sw a4, 108(a3) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x26', 'rs2_h1_val == -129', 'rs2_h0_val == 2048', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800002cc]:KMABB s10, s8, t6
	-[0x800002d0]:csrrs s8, vxsat, zero
	-[0x800002d4]:sw s10, 112(a3)
Current Store : [0x800002d8] : sw s8, 116(a3) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x10', 'rd : x24', 'rs2_h1_val == -65', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800002e8]:KMABB s8, s11, a0
	-[0x800002ec]:csrrs s11, vxsat, zero
	-[0x800002f0]:sw s8, 120(a3)
Current Store : [0x800002f4] : sw s11, 124(a3) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x19', 'rs2_h1_val == -33', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000308]:KMABB s3, s1, fp
	-[0x8000030c]:csrrs s1, vxsat, zero
	-[0x80000310]:sw s3, 128(a3)
Current Store : [0x80000314] : sw s1, 132(a3) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x31', 'rs2_h1_val == -17']
Last Code Sequence : 
	-[0x80000328]:KMABB t6, t2, s9
	-[0x8000032c]:csrrs t2, vxsat, zero
	-[0x80000330]:sw t6, 136(a3)
Current Store : [0x80000334] : sw t2, 140(a3) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x22', 'rs2_h1_val == -9', 'rs2_h0_val == 8192', 'rs1_h1_val == -65', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000344]:KMABB s6, t0, a7
	-[0x80000348]:csrrs t0, vxsat, zero
	-[0x8000034c]:sw s6, 144(a3)
Current Store : [0x80000350] : sw t0, 148(a3) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x8', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80000368]:KMABB fp, t1, t2
	-[0x8000036c]:csrrs t1, vxsat, zero
	-[0x80000370]:sw fp, 0(gp)
Current Store : [0x80000374] : sw t1, 4(gp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x27', 'rd : x2', 'rs2_h1_val == -3', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000384]:KMABB sp, s3, s11
	-[0x80000388]:csrrs s3, vxsat, zero
	-[0x8000038c]:sw sp, 8(gp)
Current Store : [0x80000390] : sw s3, 12(gp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rd : x27', 'rs2_h1_val == -2', 'rs2_h0_val == 4096', 'rs1_h1_val == -9', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800003a0]:KMABB s11, a0, s8
	-[0x800003a4]:csrrs a0, vxsat, zero
	-[0x800003a8]:sw s11, 16(gp)
Current Store : [0x800003ac] : sw a0, 20(gp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x17', 'rs2_h1_val == -32768', 'rs2_h0_val == -5', 'rs1_h1_val == 8', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800003c0]:KMABB a7, a3, a4
	-[0x800003c4]:csrrs a3, vxsat, zero
	-[0x800003c8]:sw a7, 24(gp)
Current Store : [0x800003cc] : sw a3, 28(gp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x26', 'rd : x20', 'rs2_h1_val == 16384', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800003e0]:KMABB s4, s7, s10
	-[0x800003e4]:csrrs s7, vxsat, zero
	-[0x800003e8]:sw s4, 32(gp)
Current Store : [0x800003ec] : sw s7, 36(gp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x5', 'rd : x23', 'rs2_h1_val == 8192', 'rs2_h0_val == -4097', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000400]:KMABB s7, s6, t0
	-[0x80000404]:csrrs s6, vxsat, zero
	-[0x80000408]:sw s7, 40(gp)
Current Store : [0x8000040c] : sw s6, 44(gp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x13', 'rd : x5', 'rs2_h1_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000420]:KMABB t0, t5, a3
	-[0x80000424]:csrrs t5, vxsat, zero
	-[0x80000428]:sw t0, 48(gp)
Current Store : [0x8000042c] : sw t5, 52(gp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x15', 'rs2_h1_val == 2048', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000440]:KMABB a5, fp, ra
	-[0x80000444]:csrrs fp, vxsat, zero
	-[0x80000448]:sw a5, 56(gp)
Current Store : [0x8000044c] : sw fp, 60(gp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x11', 'rs2_h1_val == 1024', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000460]:KMABB a1, s9, t5
	-[0x80000464]:csrrs s9, vxsat, zero
	-[0x80000468]:sw a1, 64(gp)
Current Store : [0x8000046c] : sw s9, 68(gp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x15', 'rd : x6', 'rs2_h1_val == 512', 'rs1_h1_val == 21845', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x8000047c]:KMABB t1, sp, a5
	-[0x80000480]:csrrs sp, vxsat, zero
	-[0x80000484]:sw t1, 72(gp)
Current Store : [0x80000488] : sw sp, 76(gp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x19', 'rd : x13', 'rs2_h1_val == 256', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x8000049c]:KMABB a3, a7, s3
	-[0x800004a0]:csrrs a7, vxsat, zero
	-[0x800004a4]:sw a3, 80(gp)
Current Store : [0x800004a8] : sw a7, 84(gp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x23', 'rd : x14', 'rs2_h1_val == 128', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800004bc]:KMABB a4, t4, s7
	-[0x800004c0]:csrrs t4, vxsat, zero
	-[0x800004c4]:sw a4, 88(gp)
Current Store : [0x800004c8] : sw t4, 92(gp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x10', 'rs1_h0_val == -32768', 'rs2_h1_val == 64', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800004d8]:KMABB a0, a5, s6
	-[0x800004dc]:csrrs a5, vxsat, zero
	-[0x800004e0]:sw a0, 96(gp)
Current Store : [0x800004e4] : sw a5, 100(gp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004f8]:KMABB t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 104(gp)
Current Store : [0x80000504] : sw t5, 108(gp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000518]:KMABB t6, t5, t4
	-[0x8000051c]:csrrs t5, vxsat, zero
	-[0x80000520]:sw t6, 112(gp)
Current Store : [0x80000524] : sw t5, 116(gp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == 32', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000538]:KMABB t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 120(gp)
Current Store : [0x80000544] : sw t5, 124(gp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000558]:KMABB t6, t5, t4
	-[0x8000055c]:csrrs t5, vxsat, zero
	-[0x80000560]:sw t6, 128(gp)
Current Store : [0x80000564] : sw t5, 132(gp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000578]:KMABB t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 136(gp)
Current Store : [0x80000584] : sw t5, 140(gp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000594]:KMABB t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 144(gp)
Current Store : [0x800005a0] : sw t5, 148(gp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -2049', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800005b4]:KMABB t6, t5, t4
	-[0x800005b8]:csrrs t5, vxsat, zero
	-[0x800005bc]:sw t6, 152(gp)
Current Store : [0x800005c0] : sw t5, 156(gp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005d4]:KMABB t6, t5, t4
	-[0x800005d8]:csrrs t5, vxsat, zero
	-[0x800005dc]:sw t6, 160(gp)
Current Store : [0x800005e0] : sw t5, 164(gp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005f4]:KMABB t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 168(gp)
Current Store : [0x80000600] : sw t5, 172(gp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000614]:KMABB t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 176(gp)
Current Store : [0x80000620] : sw t5, 180(gp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -513', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000634]:KMABB t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 184(gp)
Current Store : [0x80000640] : sw t5, 188(gp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000654]:KMABB t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 192(gp)
Current Store : [0x80000660] : sw t5, 196(gp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000674]:KMABB t6, t5, t4
	-[0x80000678]:csrrs t5, vxsat, zero
	-[0x8000067c]:sw t6, 200(gp)
Current Store : [0x80000680] : sw t5, 204(gp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000694]:KMABB t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 208(gp)
Current Store : [0x800006a0] : sw t5, 212(gp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x800006b4]:KMABB t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 216(gp)
Current Store : [0x800006c0] : sw t5, 220(gp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800006d0]:KMABB t6, t5, t4
	-[0x800006d4]:csrrs t5, vxsat, zero
	-[0x800006d8]:sw t6, 224(gp)
Current Store : [0x800006dc] : sw t5, 228(gp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800006f0]:KMABB t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 232(gp)
Current Store : [0x800006fc] : sw t5, 236(gp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['opcode : kmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 256', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x8000070c]:KMABB t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 240(gp)
Current Store : [0x80000718] : sw t5, 244(gp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000724]:KMABB t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 248(gp)
Current Store : [0x80000730] : sw t5, 252(gp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000744]:KMABB t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 256(gp)
Current Store : [0x80000750] : sw t5, 260(gp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000764]:KMABB t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 264(gp)
Current Store : [0x80000770] : sw t5, 268(gp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000780]:KMABB t6, t5, t4
	-[0x80000784]:csrrs t5, vxsat, zero
	-[0x80000788]:sw t6, 272(gp)
Current Store : [0x8000078c] : sw t5, 276(gp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x800007a0]:KMABB t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 280(gp)
Current Store : [0x800007ac] : sw t5, 284(gp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800007c0]:KMABB t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 288(gp)
Current Store : [0x800007cc] : sw t5, 292(gp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800007e0]:KMABB t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 296(gp)
Current Store : [0x800007ec] : sw t5, 300(gp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000800]:KMABB t6, t5, t4
	-[0x80000804]:csrrs t5, vxsat, zero
	-[0x80000808]:sw t6, 304(gp)
Current Store : [0x8000080c] : sw t5, 308(gp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000820]:KMABB t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 312(gp)
Current Store : [0x8000082c] : sw t5, 316(gp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000840]:KMABB t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 320(gp)
Current Store : [0x8000084c] : sw t5, 324(gp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000085c]:KMABB t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 328(gp)
Current Store : [0x80000868] : sw t5, 332(gp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000878]:KMABB t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 336(gp)
Current Store : [0x80000884] : sw t5, 340(gp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000898]:KMABB t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 344(gp)
Current Store : [0x800008a4] : sw t5, 348(gp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008b8]:KMABB t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 352(gp)
Current Store : [0x800008c4] : sw t5, 356(gp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800008d8]:KMABB t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 360(gp)
Current Store : [0x800008e4] : sw t5, 364(gp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008f8]:KMABB t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 368(gp)
Current Store : [0x80000904] : sw t5, 372(gp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000918]:KMABB t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 376(gp)
Current Store : [0x80000924] : sw t5, 380(gp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000938]:KMABB t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 384(gp)
Current Store : [0x80000944] : sw t5, 388(gp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000954]:KMABB t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 392(gp)
Current Store : [0x80000960] : sw t5, 396(gp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000974]:KMABB t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 400(gp)
Current Store : [0x80000980] : sw t5, 404(gp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000990]:KMABB t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 408(gp)
Current Store : [0x8000099c] : sw t5, 412(gp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800009ac]:KMABB t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 416(gp)
Current Store : [0x800009b8] : sw t5, 420(gp) -- Store: [0x8000244c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                              coverpoints                                                                                                                                                              |                                                      code                                                       |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmabb<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                          |[0x8000011c]:KMABB zero, zero, zero<br> [0x80000120]:csrrs zero, vxsat, zero<br> [0x80000124]:sw zero, 0(a3)<br> |
|   2|[0x80002218]<br>0xD5BFDDBB|- rs1 : x21<br> - rs2 : x21<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -2<br> - rs1_h0_val == -2<br>                                                                                                                                    |[0x8000013c]:KMABB a2, s5, s5<br> [0x80000140]:csrrs s5, vxsat, zero<br> [0x80000144]:sw a2, 8(a3)<br>           |
|   3|[0x80002220]<br>0xB7FBB77A|- rs1 : x1<br> - rs2 : x20<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 2<br> - rs2_h0_val == 128<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 1<br> |[0x8000015c]:KMABB t2, ra, s4<br> [0x80000160]:csrrs ra, vxsat, zero<br> [0x80000164]:sw t2, 16(a3)<br>          |
|   4|[0x80002228]<br>0xBFFE8000|- rs1 : x26<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 4<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -8193<br>                                                                              |[0x8000017c]:KMABB s2, s10, s2<br> [0x80000180]:csrrs s10, vxsat, zero<br> [0x80000184]:sw s2, 24(a3)<br>        |
|   5|[0x80002230]<br>0x00000000|- rs1 : x4<br> - rs2 : x9<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs1_h1_val == 256<br>                                                                                                                                                             |[0x8000019c]:KMABB tp, tp, s1<br> [0x800001a0]:csrrs tp, vxsat, zero<br> [0x800001a4]:sw tp, 32(a3)<br>          |
|   6|[0x80002238]<br>0x7FFFFFFF|- rs1 : x28<br> - rs2 : x6<br> - rd : x3<br> - rs2_h0_val == 16384<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                       |[0x800001b4]:KMABB gp, t3, t1<br> [0x800001b8]:csrrs t3, vxsat, zero<br> [0x800001bc]:sw gp, 40(a3)<br>          |
|   7|[0x80002240]<br>0xFFFFFCFA|- rs1 : x12<br> - rs2 : x29<br> - rd : x1<br> - rs2_h1_val == -21846<br> - rs1_h1_val == -5<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                               |[0x800001d4]:KMABB ra, a2, t4<br> [0x800001d8]:csrrs a2, vxsat, zero<br> [0x800001dc]:sw ra, 48(a3)<br>          |
|   8|[0x80002248]<br>0xFFFFA000|- rs1 : x31<br> - rs2 : x4<br> - rd : x21<br> - rs2_h1_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                              |[0x800001f0]:KMABB s5, t6, tp<br> [0x800001f4]:csrrs t6, vxsat, zero<br> [0x800001f8]:sw s5, 56(a3)<br>          |
|   9|[0x80002250]<br>0x00033FFD|- rs1 : x11<br> - rs2 : x3<br> - rd : x9<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                                                          |[0x80000210]:KMABB s1, a1, gp<br> [0x80000214]:csrrs a1, vxsat, zero<br> [0x80000218]:sw s1, 64(a3)<br>          |
|  10|[0x80002258]<br>0xEDBEADFE|- rs1 : x20<br> - rs2 : x16<br> - rd : x25<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                       |[0x8000022c]:KMABB s9, s4, a6<br> [0x80000230]:csrrs s4, vxsat, zero<br> [0x80000234]:sw s9, 72(a3)<br>          |
|  11|[0x80002260]<br>0xF770A017|- rs1 : x18<br> - rs2 : x12<br> - rd : x30<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -33<br> - rs1_h0_val == 8<br>                                                                                                                                                                                       |[0x8000024c]:KMABB t5, s2, a2<br> [0x80000250]:csrrs s2, vxsat, zero<br> [0x80000254]:sw t5, 80(a3)<br>          |
|  12|[0x80002268]<br>0x00040001|- rs1 : x3<br> - rs2 : x2<br> - rd : x28<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 256<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                       |[0x8000026c]:KMABB t3, gp, sp<br> [0x80000270]:csrrs gp, vxsat, zero<br> [0x80000274]:sw t3, 88(a3)<br>          |
|  13|[0x80002270]<br>0xABFF5406|- rs1 : x16<br> - rs2 : x28<br> - rd : x29<br> - rs2_h1_val == -513<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                         |[0x8000028c]:KMABB t4, a6, t3<br> [0x80000290]:csrrs a6, vxsat, zero<br> [0x80000294]:sw t4, 96(a3)<br>          |
|  14|[0x80002278]<br>0xFFFFF3FE|- rs1 : x14<br> - rs2 : x11<br> - rd : x16<br> - rs2_h1_val == -257<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                      |[0x800002ac]:KMABB a6, a4, a1<br> [0x800002b0]:csrrs a4, vxsat, zero<br> [0x800002b4]:sw a6, 104(a3)<br>         |
|  15|[0x80002280]<br>0x00080000|- rs1 : x24<br> - rs2 : x31<br> - rd : x26<br> - rs2_h1_val == -129<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                               |[0x800002cc]:KMABB s10, s8, t6<br> [0x800002d0]:csrrs s8, vxsat, zero<br> [0x800002d4]:sw s10, 112(a3)<br>       |
|  16|[0x80002288]<br>0x00204001|- rs1 : x27<br> - rs2 : x10<br> - rd : x24<br> - rs2_h1_val == -65<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                           |[0x800002e8]:KMABB s8, s11, a0<br> [0x800002ec]:csrrs s11, vxsat, zero<br> [0x800002f0]:sw s8, 120(a3)<br>       |
|  17|[0x80002290]<br>0x6FAB881C|- rs1 : x9<br> - rs2 : x8<br> - rd : x19<br> - rs2_h1_val == -33<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                           |[0x80000308]:KMABB s3, s1, fp<br> [0x8000030c]:csrrs s1, vxsat, zero<br> [0x80000310]:sw s3, 128(a3)<br>         |
|  18|[0x80002298]<br>0xFF7F5000|- rs1 : x7<br> - rs2 : x25<br> - rd : x31<br> - rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                  |[0x80000328]:KMABB t6, t2, s9<br> [0x8000032c]:csrrs t2, vxsat, zero<br> [0x80000330]:sw t6, 136(a3)<br>         |
|  19|[0x800022a0]<br>0x6DF4CFF7|- rs1 : x5<br> - rs2 : x17<br> - rd : x22<br> - rs2_h1_val == -9<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -65<br> - rs1_h0_val == -5<br>                                                                                                                                                                                           |[0x80000344]:KMABB s6, t0, a7<br> [0x80000348]:csrrs t0, vxsat, zero<br> [0x8000034c]:sw s6, 144(a3)<br>         |
|  20|[0x800022a8]<br>0xFFDFBFDF|- rs1 : x6<br> - rs2 : x7<br> - rd : x8<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                     |[0x80000368]:KMABB fp, t1, t2<br> [0x8000036c]:csrrs t1, vxsat, zero<br> [0x80000370]:sw fp, 0(gp)<br>           |
|  21|[0x800022b0]<br>0xFBFF0100|- rs1 : x19<br> - rs2 : x27<br> - rd : x2<br> - rs2_h1_val == -3<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                         |[0x80000384]:KMABB sp, s3, s11<br> [0x80000388]:csrrs s3, vxsat, zero<br> [0x8000038c]:sw sp, 8(gp)<br>          |
|  22|[0x800022b8]<br>0xFF7DEBFF|- rs1 : x10<br> - rs2 : x24<br> - rd : x27<br> - rs2_h1_val == -2<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -9<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                        |[0x800003a0]:KMABB s11, a0, s8<br> [0x800003a4]:csrrs a0, vxsat, zero<br> [0x800003a8]:sw s11, 16(gp)<br>        |
|  23|[0x800022c0]<br>0xFFF71FEC|- rs1 : x13<br> - rs2 : x14<br> - rd : x17<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -5<br> - rs1_h1_val == 8<br> - rs1_h0_val == 4<br>                                                                                                                                                                                           |[0x800003c0]:KMABB a7, a3, a4<br> [0x800003c4]:csrrs a3, vxsat, zero<br> [0x800003c8]:sw a7, 24(gp)<br>          |
|  24|[0x800022c8]<br>0x00000405|- rs1 : x23<br> - rs2 : x26<br> - rd : x20<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                      |[0x800003e0]:KMABB s4, s7, s10<br> [0x800003e4]:csrrs s7, vxsat, zero<br> [0x800003e8]:sw s4, 32(gp)<br>         |
|  25|[0x800022d0]<br>0xFFDFFE01|- rs1 : x22<br> - rs2 : x5<br> - rd : x23<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -4097<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                               |[0x80000400]:KMABB s7, s6, t0<br> [0x80000404]:csrrs s6, vxsat, zero<br> [0x80000408]:sw s7, 40(gp)<br>          |
|  26|[0x800022d8]<br>0x20029AAD|- rs1 : x30<br> - rs2 : x13<br> - rd : x5<br> - rs2_h1_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                      |[0x80000420]:KMABB t0, t5, a3<br> [0x80000424]:csrrs t5, vxsat, zero<br> [0x80000428]:sw t0, 48(gp)<br>          |
|  27|[0x800022e0]<br>0xFAB7CBB0|- rs1 : x8<br> - rs2 : x1<br> - rd : x15<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                        |[0x80000440]:KMABB a5, fp, ra<br> [0x80000444]:csrrs fp, vxsat, zero<br> [0x80000448]:sw a5, 56(gp)<br>          |
|  28|[0x800022e8]<br>0xFEFF001B|- rs1 : x25<br> - rs2 : x30<br> - rd : x11<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                       |[0x80000460]:KMABB a1, s9, t5<br> [0x80000464]:csrrs s9, vxsat, zero<br> [0x80000468]:sw a1, 64(gp)<br>          |
|  29|[0x800022f0]<br>0x00000001|- rs1 : x2<br> - rs2 : x15<br> - rd : x6<br> - rs2_h1_val == 512<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                  |[0x8000047c]:KMABB t1, sp, a5<br> [0x80000480]:csrrs sp, vxsat, zero<br> [0x80000484]:sw t1, 72(gp)<br>          |
|  30|[0x800022f8]<br>0x10013FFD|- rs1 : x17<br> - rs2 : x19<br> - rd : x13<br> - rs2_h1_val == 256<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                      |[0x8000049c]:KMABB a3, a7, s3<br> [0x800004a0]:csrrs a7, vxsat, zero<br> [0x800004a4]:sw a3, 80(gp)<br>          |
|  31|[0x80002300]<br>0x8021407C|- rs1 : x29<br> - rs2 : x23<br> - rd : x14<br> - rs2_h1_val == 128<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                      |[0x800004bc]:KMABB a4, t4, s7<br> [0x800004c0]:csrrs t4, vxsat, zero<br> [0x800004c4]:sw a4, 88(gp)<br>          |
|  32|[0x80002308]<br>0xFF800001|- rs1 : x15<br> - rs2 : x22<br> - rd : x10<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 64<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                             |[0x800004d8]:KMABB a0, a5, s6<br> [0x800004dc]:csrrs a5, vxsat, zero<br> [0x800004e0]:sw a0, 96(gp)<br>          |
|  33|[0x80002310]<br>0xFF7F5E07|- rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                               |[0x800004f8]:KMABB t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 104(gp)<br>         |
|  34|[0x80002318]<br>0xFF7F5C05|- rs2_h0_val == 2<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                         |[0x80000518]:KMABB t6, t5, t4<br> [0x8000051c]:csrrs t5, vxsat, zero<br> [0x80000520]:sw t6, 112(gp)<br>         |
|  35|[0x80002320]<br>0xFF8A5C1B|- rs2_h0_val == -21846<br> - rs1_h1_val == 32<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                              |[0x80000538]:KMABB t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 120(gp)<br>         |
|  36|[0x80002328]<br>0xFF8A5BE8|- rs1_h1_val == 512<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                        |[0x80000558]:KMABB t6, t5, t4<br> [0x8000055c]:csrrs t5, vxsat, zero<br> [0x80000560]:sw t6, 128(gp)<br>         |
|  37|[0x80002330]<br>0xFF8A5BD9|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                 |[0x80000578]:KMABB t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 136(gp)<br>         |
|  38|[0x80002338]<br>0xFB8A3BD9|- rs2_h0_val == -8193<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                     |[0x80000594]:KMABB t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 144(gp)<br>         |
|  39|[0x80002340]<br>0xFB923BD9|- rs2_h1_val == -2049<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                     |[0x800005b4]:KMABB t6, t5, t4<br> [0x800005b8]:csrrs t5, vxsat, zero<br> [0x800005bc]:sw t6, 152(gp)<br>         |
|  40|[0x80002348]<br>0xFB903B59|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                |[0x800005d4]:KMABB t6, t5, t4<br> [0x800005d8]:csrrs t5, vxsat, zero<br> [0x800005dc]:sw t6, 160(gp)<br>         |
|  41|[0x80002350]<br>0xFBA59099|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                 |[0x800005f4]:KMABB t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 168(gp)<br>         |
|  42|[0x80002358]<br>0xFBB59079|- rs2_h0_val == 32767<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                       |[0x80000614]:KMABB t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 176(gp)<br>         |
|  43|[0x80002360]<br>0xFBB57069|- rs2_h1_val == 4<br> - rs2_h0_val == -513<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                  |[0x80000634]:KMABB t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 184(gp)<br>         |
|  44|[0x80002368]<br>0xFBB58069|- rs1_h1_val == -32768<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                       |[0x80000654]:KMABB t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 192(gp)<br>         |
|  45|[0x80002370]<br>0xFBB58068|- rs2_h0_val == 1<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                           |[0x80000674]:KMABB t6, t5, t4<br> [0x80000678]:csrrs t5, vxsat, zero<br> [0x8000067c]:sw t6, 200(gp)<br>         |
|  46|[0x80002378]<br>0xFBB58047|- rs2_h1_val == 32<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                        |[0x80000694]:KMABB t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 208(gp)<br>         |
|  47|[0x80002380]<br>0xFBB58247|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                 |[0x800006b4]:KMABB t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 216(gp)<br>         |
|  48|[0x80002388]<br>0xFBB54A40|- rs2_h1_val == 8<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                        |[0x800006d0]:KMABB t6, t5, t4<br> [0x800006d4]:csrrs t5, vxsat, zero<br> [0x800006d8]:sw t6, 224(gp)<br>         |
|  49|[0x80002390]<br>0xFB750B41|- rs2_h1_val == 1<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                            |[0x800006f0]:KMABB t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 232(gp)<br>         |
|  50|[0x800023a0]<br>0xEB74FA41|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                             |[0x80000724]:KMABB t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 248(gp)<br>         |
|  51|[0x800023a8]<br>0xEB72F641|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                               |[0x80000744]:KMABB t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 256(gp)<br>         |
|  52|[0x800023b0]<br>0xEB737641|- rs2_h0_val == 512<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                      |[0x80000764]:KMABB t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 264(gp)<br>         |
|  53|[0x800023b8]<br>0xEB727601|- rs2_h0_val == 64<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                          |[0x80000780]:KMABB t6, t5, t4<br> [0x80000784]:csrrs t5, vxsat, zero<br> [0x80000788]:sw t6, 272(gp)<br>         |
|  54|[0x800023c0]<br>0xEB727701|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                 |[0x800007a0]:KMABB t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 280(gp)<br>         |
|  55|[0x800023c8]<br>0xEB727671|- rs2_h1_val == -1<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                          |[0x800007c0]:KMABB t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 288(gp)<br>         |
|  56|[0x800023d0]<br>0xEB6FCBC1|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                  |[0x800007e0]:KMABB t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 296(gp)<br>         |
|  57|[0x800023d8]<br>0xEB6FC7C1|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                 |[0x80000800]:KMABB t6, t5, t4<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sw t6, 304(gp)<br>         |
|  58|[0x800023e0]<br>0xEB6FC7CD|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                             |[0x80000820]:KMABB t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 312(gp)<br>         |
|  59|[0x800023e8]<br>0xEBC51CCD|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                              |[0x80000840]:KMABB t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 320(gp)<br>         |
|  60|[0x800023f0]<br>0xEBC19CCD|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                               |[0x8000085c]:KMABB t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 328(gp)<br>         |
|  61|[0x800023f8]<br>0xEBBF7CCD|- rs2_h0_val == -17<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                        |[0x80000878]:KMABB t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 336(gp)<br>         |
|  62|[0x80002400]<br>0xEBC38D0E|- rs2_h0_val == -65<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                      |[0x80000898]:KMABB t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 344(gp)<br>         |
|  63|[0x80002408]<br>0xEBC28D0F|- rs1_h1_val == -3<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                       |[0x800008b8]:KMABB t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 352(gp)<br>         |
|  64|[0x80002410]<br>0xEBB24D50|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                              |[0x800008d8]:KMABB t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 360(gp)<br>         |
|  65|[0x80002418]<br>0xEBB24D44|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                               |[0x800008f8]:KMABB t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 368(gp)<br>         |
|  66|[0x80002420]<br>0xDBB1ED45|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                              |[0x80000918]:KMABB t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 376(gp)<br>         |
|  67|[0x80002428]<br>0xDBB1A545|- rs2_h0_val == -9<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                          |[0x80000938]:KMABB t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 384(gp)<br>         |
|  68|[0x80002430]<br>0xDAB18545|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                |[0x80000954]:KMABB t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 392(gp)<br>         |
|  69|[0x80002438]<br>0xDCB1CD46|- rs1_h1_val == 16<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                      |[0x80000974]:KMABB t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 400(gp)<br>         |
|  70|[0x80002440]<br>0xDCA9BD46|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                               |[0x80000990]:KMABB t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 408(gp)<br>         |
|  71|[0x80002448]<br>0xDCA9BD46|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                  |[0x800009ac]:KMABB t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 416(gp)<br>         |
