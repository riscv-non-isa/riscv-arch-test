
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b10')]      |
| SIG_REGION                | [('0x80002210', '0x800024b0', '168 words')]      |
| COV_LABELS                | kdmabt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kdmabt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 166      |
| STAT1                     | 80      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 83     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac4]:KDMABT t6, t5, t4
      [0x80000ac8]:csrrs t5, vxsat, zero
      [0x80000acc]:sw t6, 384(ra)
 -- Signature Address: 0x80002490 Data: 0x47FD32F9
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 128
      - rs2_h0_val == -8193
      - rs1_h1_val == 128
      - rs1_h0_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae0]:KDMABT t6, t5, t4
      [0x80000ae4]:csrrs t5, vxsat, zero
      [0x80000ae8]:sw t6, 392(ra)
 -- Signature Address: 0x80002498 Data: 0x47FD32F9
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 4096
      - rs2_h0_val == -8193
      - rs1_h1_val == -33
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b00]:KDMABT t6, t5, t4
      [0x80000b04]:csrrs t5, vxsat, zero
      [0x80000b08]:sw t6, 400(ra)
 -- Signature Address: 0x800024a0 Data: 0x47FD2EF9
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 64
      - rs2_h0_val == -1
      - rs1_h1_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmabt', 'rs1 : x6', 'rs2 : x6', 'rd : x6', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -1', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000118]:KDMABT t1, t1, t1
	-[0x8000011c]:csrrs t1, vxsat, zero
	-[0x80000120]:sw t1, 0(sp)
Current Store : [0x80000124] : sw t1, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 128', 'rs2_h0_val == -8193', 'rs1_h1_val == 128', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000138]:KDMABT a7, fp, fp
	-[0x8000013c]:csrrs fp, vxsat, zero
	-[0x80000140]:sw a7, 8(sp)
Current Store : [0x80000144] : sw fp, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x25', 'rd : x20', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 8192', 'rs1_h1_val == -3', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000154]:KDMABT s4, t4, s9
	-[0x80000158]:csrrs t4, vxsat, zero
	-[0x8000015c]:sw s4, 16(sp)
Current Store : [0x80000160] : sw t4, 20(sp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs2_h0_val == 2048', 'rs1_h1_val == -33', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000174]:KDMABT a6, gp, a6
	-[0x80000178]:csrrs gp, vxsat, zero
	-[0x8000017c]:sw a6, 24(sp)
Current Store : [0x80000180] : sw gp, 28(sp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x22', 'rd : x28', 'rs1 == rd != rs2', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000194]:KDMABT t3, t3, s6
	-[0x80000198]:csrrs t3, vxsat, zero
	-[0x8000019c]:sw t3, 32(sp)
Current Store : [0x800001a0] : sw t3, 36(sp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x31', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 16', 'rs2_h0_val == -65', 'rs1_h1_val == 4', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800001b4]:KDMABT t6, a1, tp
	-[0x800001b8]:csrrs a1, vxsat, zero
	-[0x800001bc]:sw t6, 40(sp)
Current Store : [0x800001c0] : sw a1, 44(sp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x23', 'rd : x3', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == 8', 'rs1_h1_val == 32', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800001d4]:KDMABT gp, s8, s7
	-[0x800001d8]:csrrs s8, vxsat, zero
	-[0x800001dc]:sw gp, 48(sp)
Current Store : [0x800001e0] : sw s8, 52(sp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x19', 'rs2_h1_val == 21845', 'rs2_h0_val == -257', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800001f4]:KDMABT s3, ra, t2
	-[0x800001f8]:csrrs ra, vxsat, zero
	-[0x800001fc]:sw s3, 56(sp)
Current Store : [0x80000200] : sw ra, 60(sp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rd : x12', 'rs2_h1_val == 32767', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000210]:KDMABT a2, s2, s1
	-[0x80000214]:csrrs s2, vxsat, zero
	-[0x80000218]:sw a2, 64(sp)
Current Store : [0x8000021c] : sw s2, 68(sp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x1', 'rs2_h1_val == -16385', 'rs2_h0_val == 16', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000230]:KDMABT ra, s10, a1
	-[0x80000234]:csrrs s10, vxsat, zero
	-[0x80000238]:sw ra, 72(sp)
Current Store : [0x8000023c] : sw s10, 76(sp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x27', 'rs2_h1_val == -8193', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000250]:KDMABT s11, a5, a7
	-[0x80000254]:csrrs a5, vxsat, zero
	-[0x80000258]:sw s11, 80(sp)
Current Store : [0x8000025c] : sw a5, 84(sp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x25', 'rs2_h1_val == -4097', 'rs2_h0_val == 0', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000026c]:KDMABT s9, s7, gp
	-[0x80000270]:csrrs s7, vxsat, zero
	-[0x80000274]:sw s9, 88(sp)
Current Store : [0x80000278] : sw s7, 92(sp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x21', 'rd : x11', 'rs2_h1_val == -1025', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000288]:KDMABT a1, a6, s5
	-[0x8000028c]:csrrs a6, vxsat, zero
	-[0x80000290]:sw a1, 96(sp)
Current Store : [0x80000294] : sw a6, 100(sp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x5', 'rs2_h1_val == -513', 'rs2_h0_val == -21846', 'rs1_h1_val == -17', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800002a4]:KDMABT t0, s1, t5
	-[0x800002a8]:csrrs s1, vxsat, zero
	-[0x800002ac]:sw t0, 104(sp)
Current Store : [0x800002b0] : sw s1, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x23', 'rs2_h1_val == -257', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800002c8]:KDMABT s7, sp, t0
	-[0x800002cc]:csrrs sp, vxsat, zero
	-[0x800002d0]:sw s7, 0(gp)
Current Store : [0x800002d4] : sw sp, 4(gp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rd : x2', 'rs2_h1_val == -129']
Last Code Sequence : 
	-[0x800002e8]:KDMABT sp, a2, a3
	-[0x800002ec]:csrrs a2, vxsat, zero
	-[0x800002f0]:sw sp, 8(gp)
Current Store : [0x800002f4] : sw a2, 12(gp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x24', 'rd : x9', 'rs2_h1_val == -65', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000304]:KDMABT s1, a7, s8
	-[0x80000308]:csrrs a7, vxsat, zero
	-[0x8000030c]:sw s1, 16(gp)
Current Store : [0x80000310] : sw a7, 20(gp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x29', 'rd : x15', 'rs2_h1_val == -33', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000324]:KDMABT a5, s11, t4
	-[0x80000328]:csrrs s11, vxsat, zero
	-[0x8000032c]:sw a5, 24(gp)
Current Store : [0x80000330] : sw s11, 28(gp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x10', 'rs2_h1_val == -17', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000344]:KDMABT a0, s4, sp
	-[0x80000348]:csrrs s4, vxsat, zero
	-[0x8000034c]:sw a0, 32(gp)
Current Store : [0x80000350] : sw s4, 36(gp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x18', 'rd : x22', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80000364]:KDMABT s6, a0, s2
	-[0x80000368]:csrrs a0, vxsat, zero
	-[0x8000036c]:sw s6, 40(gp)
Current Store : [0x80000370] : sw a0, 44(gp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x14', 'rd : x21', 'rs2_h1_val == -5', 'rs1_h1_val == 2048', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000384]:KDMABT s5, t6, a4
	-[0x80000388]:csrrs t6, vxsat, zero
	-[0x8000038c]:sw s5, 48(gp)
Current Store : [0x80000390] : sw t6, 52(gp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x26', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x800003a4]:KDMABT s10, a3, a2
	-[0x800003a8]:csrrs a3, vxsat, zero
	-[0x800003ac]:sw s10, 56(gp)
Current Store : [0x800003b0] : sw a3, 60(gp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x28', 'rd : x30', 'rs2_h1_val == -2', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800003c4]:KDMABT t5, a4, t3
	-[0x800003c8]:csrrs a4, vxsat, zero
	-[0x800003cc]:sw t5, 64(gp)
Current Store : [0x800003d0] : sw a4, 68(gp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x19', 'rd : x8', 'rs2_h1_val == -32768', 'rs2_h0_val == -513', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800003e4]:KDMABT fp, s6, s3
	-[0x800003e8]:csrrs s6, vxsat, zero
	-[0x800003ec]:sw fp, 72(gp)
Current Store : [0x800003f0] : sw s6, 76(gp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x14', 'rs2_h1_val == 16384', 'rs2_h0_val == 256', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000404]:KDMABT a4, t5, a0
	-[0x80000408]:csrrs t5, vxsat, zero
	-[0x8000040c]:sw a4, 80(gp)
Current Store : [0x80000410] : sw t5, 84(gp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x31', 'rd : x18', 'rs2_h1_val == 8192', 'rs1_h1_val == -1025', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000424]:KDMABT s2, s9, t6
	-[0x80000428]:csrrs s9, vxsat, zero
	-[0x8000042c]:sw s2, 88(gp)
Current Store : [0x80000430] : sw s9, 92(gp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x4', 'rs2_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000440]:KDMABT tp, s3, zero
	-[0x80000444]:csrrs s3, vxsat, zero
	-[0x80000448]:sw tp, 96(gp)
Current Store : [0x8000044c] : sw s3, 100(gp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x24', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x8000045c]:KDMABT s8, tp, s10
	-[0x80000460]:csrrs tp, vxsat, zero
	-[0x80000464]:sw s8, 104(gp)
Current Store : [0x80000468] : sw tp, 108(gp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x27', 'rd : x7', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80000478]:KDMABT t2, t0, s11
	-[0x8000047c]:csrrs t0, vxsat, zero
	-[0x80000480]:sw t2, 112(gp)
Current Store : [0x80000484] : sw t0, 116(gp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x13', 'rs2_h1_val == 512', 'rs2_h0_val == -2049', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000498]:KDMABT a3, t2, s4
	-[0x8000049c]:csrrs t2, vxsat, zero
	-[0x800004a0]:sw a3, 120(gp)
Current Store : [0x800004a4] : sw t2, 124(gp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x29', 'rs2_h1_val == 256', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800004b8]:KDMABT t4, zero, a5
	-[0x800004bc]:csrrs zero, vxsat, zero
	-[0x800004c0]:sw t4, 128(gp)
Current Store : [0x800004c4] : sw zero, 132(gp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x1', 'rd : x0', 'rs2_h1_val == 64', 'rs2_h0_val == -1', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800004d8]:KDMABT zero, s5, ra
	-[0x800004dc]:csrrs s5, vxsat, zero
	-[0x800004e0]:sw zero, 136(gp)
Current Store : [0x800004e4] : sw s5, 140(gp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000500]:KDMABT t6, t5, t4
	-[0x80000504]:csrrs t5, vxsat, zero
	-[0x80000508]:sw t6, 0(ra)
Current Store : [0x8000050c] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x8000051c]:KDMABT t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 8(ra)
Current Store : [0x80000528] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == -65', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000053c]:KDMABT t6, t5, t4
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 16(ra)
Current Store : [0x80000548] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000055c]:KDMABT t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 24(ra)
Current Store : [0x80000568] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000578]:KDMABT t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 32(ra)
Current Store : [0x80000584] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000598]:KDMABT t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 40(ra)
Current Store : [0x800005a4] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800005b8]:KDMABT t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 48(ra)
Current Store : [0x800005c4] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h1_val == 2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800005d8]:KDMABT t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 56(ra)
Current Store : [0x800005e4] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005f8]:KDMABT t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 64(ra)
Current Store : [0x80000604] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000614]:KDMABT t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 72(ra)
Current Store : [0x80000620] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000630]:KDMABT t6, t5, t4
	-[0x80000634]:csrrs t5, vxsat, zero
	-[0x80000638]:sw t6, 80(ra)
Current Store : [0x8000063c] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000064c]:KDMABT t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 88(ra)
Current Store : [0x80000658] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000066c]:KDMABT t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 96(ra)
Current Store : [0x80000678] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000068c]:KDMABT t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 104(ra)
Current Store : [0x80000698] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800006ac]:KDMABT t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 112(ra)
Current Store : [0x800006b8] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800006cc]:KDMABT t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 120(ra)
Current Store : [0x800006d8] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800006ec]:KDMABT t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 128(ra)
Current Store : [0x800006f8] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x8000070c]:KDMABT t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 136(ra)
Current Store : [0x80000718] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000728]:KDMABT t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 144(ra)
Current Store : [0x80000734] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000748]:KDMABT t6, t5, t4
	-[0x8000074c]:csrrs t5, vxsat, zero
	-[0x80000750]:sw t6, 152(ra)
Current Store : [0x80000754] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000768]:KDMABT t6, t5, t4
	-[0x8000076c]:csrrs t5, vxsat, zero
	-[0x80000770]:sw t6, 160(ra)
Current Store : [0x80000774] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000784]:KDMABT t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 168(ra)
Current Store : [0x80000790] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800007a0]:KDMABT t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 176(ra)
Current Store : [0x800007ac] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800007bc]:KDMABT t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 184(ra)
Current Store : [0x800007c8] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800007dc]:KDMABT t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 192(ra)
Current Store : [0x800007e8] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007fc]:KDMABT t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 200(ra)
Current Store : [0x80000808] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000818]:KDMABT t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 208(ra)
Current Store : [0x80000824] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000838]:KDMABT t6, t5, t4
	-[0x8000083c]:csrrs t5, vxsat, zero
	-[0x80000840]:sw t6, 216(ra)
Current Store : [0x80000844] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000858]:KDMABT t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 224(ra)
Current Store : [0x80000864] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000874]:KDMABT t6, t5, t4
	-[0x80000878]:csrrs t5, vxsat, zero
	-[0x8000087c]:sw t6, 232(ra)
Current Store : [0x80000880] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000894]:KDMABT t6, t5, t4
	-[0x80000898]:csrrs t5, vxsat, zero
	-[0x8000089c]:sw t6, 240(ra)
Current Store : [0x800008a0] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800008b4]:KDMABT t6, t5, t4
	-[0x800008b8]:csrrs t5, vxsat, zero
	-[0x800008bc]:sw t6, 248(ra)
Current Store : [0x800008c0] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800008d4]:KDMABT t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 256(ra)
Current Store : [0x800008e0] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800008f4]:KDMABT t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 264(ra)
Current Store : [0x80000900] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000914]:KDMABT t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 272(ra)
Current Store : [0x80000920] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000934]:KDMABT t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 280(ra)
Current Store : [0x80000940] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000954]:KDMABT t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 288(ra)
Current Store : [0x80000960] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000974]:KDMABT t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 296(ra)
Current Store : [0x80000980] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000994]:KDMABT t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 304(ra)
Current Store : [0x800009a0] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800009b4]:KDMABT t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 312(ra)
Current Store : [0x800009c0] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800009d0]:KDMABT t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 320(ra)
Current Store : [0x800009dc] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800009f0]:KDMABT t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 328(ra)
Current Store : [0x800009fc] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000a10]:KDMABT t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 336(ra)
Current Store : [0x80000a1c] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000a2c]:KDMABT t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 344(ra)
Current Store : [0x80000a38] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000a4c]:KDMABT t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 352(ra)
Current Store : [0x80000a58] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000a6c]:KDMABT t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 360(ra)
Current Store : [0x80000a78] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000a88]:KDMABT t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 368(ra)
Current Store : [0x80000a94] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000aa4]:KDMABT t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 376(ra)
Current Store : [0x80000ab0] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 128', 'rs2_h0_val == -8193', 'rs1_h1_val == 128', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ac4]:KDMABT t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 384(ra)
Current Store : [0x80000ad0] : sw t5, 388(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 4096', 'rs2_h0_val == -8193', 'rs1_h1_val == -33', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000ae0]:KDMABT t6, t5, t4
	-[0x80000ae4]:csrrs t5, vxsat, zero
	-[0x80000ae8]:sw t6, 392(ra)
Current Store : [0x80000aec] : sw t5, 396(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['opcode : kdmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 64', 'rs2_h0_val == -1', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000b00]:KDMABT t6, t5, t4
	-[0x80000b04]:csrrs t5, vxsat, zero
	-[0x80000b08]:sw t6, 400(ra)
Current Store : [0x80000b0c] : sw t5, 404(ra) -- Store: [0x800024a4]:0x00000001





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

|s.no|        signature         |                                                                                                                                     coverpoints                                                                                                                                     |                                                     code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kdmabt<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1<br> - rs1_h1_val == -1<br> |[0x80000118]:KDMABT t1, t1, t1<br> [0x8000011c]:csrrs t1, vxsat, zero<br> [0x80000120]:sw t1, 0(sp)<br>       |
|   2|[0x80002218]<br>0xBE8DFDED|- rs1 : x8<br> - rs2 : x8<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 128<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 128<br> - rs1_h0_val == -8193<br>                              |[0x80000138]:KDMABT a7, fp, fp<br> [0x8000013c]:csrrs fp, vxsat, zero<br> [0x80000140]:sw a7, 8(sp)<br>       |
|   3|[0x80002220]<br>0xB7D5C09D|- rs1 : x29<br> - rs2 : x25<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -3<br> - rs1_h0_val == 32<br>            |[0x80000154]:KDMABT s4, t4, s9<br> [0x80000158]:csrrs t4, vxsat, zero<br> [0x8000015c]:sw s4, 16(sp)<br>      |
|   4|[0x80002228]<br>0xF8FF3802|- rs1 : x3<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -33<br> - rs1_h0_val == -4097<br>                                                                    |[0x80000174]:KDMABT a6, gp, a6<br> [0x80000178]:csrrs gp, vxsat, zero<br> [0x8000017c]:sw a6, 24(sp)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x28<br> - rs2 : x22<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                       |[0x80000194]:KDMABT t3, t3, s6<br> [0x80000198]:csrrs t3, vxsat, zero<br> [0x8000019c]:sw t3, 32(sp)<br>      |
|   6|[0x80002238]<br>0xFBB702B7|- rs1 : x11<br> - rs2 : x4<br> - rd : x31<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 16<br> - rs2_h0_val == -65<br> - rs1_h1_val == 4<br> - rs1_h0_val == 64<br>                                                                                                    |[0x800001b4]:KDMABT t6, a1, tp<br> [0x800001b8]:csrrs a1, vxsat, zero<br> [0x800001bc]:sw t6, 40(sp)<br>      |
|   7|[0x80002240]<br>0xFFFF5554|- rs1 : x24<br> - rs2 : x23<br> - rd : x3<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 8<br> - rs1_h1_val == 32<br> - rs1_h0_val == 1<br>                                                                                                  |[0x800001d4]:KDMABT gp, s8, s7<br> [0x800001d8]:csrrs s8, vxsat, zero<br> [0x800001dc]:sw gp, 48(sp)<br>      |
|   8|[0x80002248]<br>0x705629BB|- rs1 : x1<br> - rs2 : x7<br> - rd : x19<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -257<br> - rs1_h0_val == 256<br>                                                                                                                                                              |[0x800001f4]:KDMABT s3, ra, t2<br> [0x800001f8]:csrrs ra, vxsat, zero<br> [0x800001fc]:sw s3, 56(sp)<br>      |
|   9|[0x80002250]<br>0xD5C6DDA9|- rs1 : x18<br> - rs2 : x9<br> - rd : x12<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                    |[0x80000210]:KDMABT a2, s2, s1<br> [0x80000214]:csrrs s2, vxsat, zero<br> [0x80000218]:sw a2, 64(sp)<br>      |
|  10|[0x80002258]<br>0xFFFEFFFC|- rs1 : x26<br> - rs2 : x11<br> - rd : x1<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                                                |[0x80000230]:KDMABT ra, s10, a1<br> [0x80000234]:csrrs s10, vxsat, zero<br> [0x80000238]:sw ra, 72(sp)<br>    |
|  11|[0x80002260]<br>0xBB70AB87|- rs1 : x15<br> - rs2 : x17<br> - rd : x27<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 64<br>                                                                                                                                                                                      |[0x80000250]:KDMABT s11, a5, a7<br> [0x80000254]:csrrs a5, vxsat, zero<br> [0x80000258]:sw s11, 80(sp)<br>    |
|  12|[0x80002268]<br>0x00134102|- rs1 : x23<br> - rs2 : x3<br> - rd : x25<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 0<br> - rs1_h0_val == -129<br>                                                                                                                                                               |[0x8000026c]:KDMABT s9, s7, gp<br> [0x80000270]:csrrs s7, vxsat, zero<br> [0x80000274]:sw s9, 88(sp)<br>      |
|  13|[0x80002270]<br>0xBFBEF010|- rs1 : x16<br> - rs2 : x21<br> - rd : x11<br> - rs2_h1_val == -1025<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                    |[0x80000288]:KDMABT a1, a6, s5<br> [0x8000028c]:csrrs a6, vxsat, zero<br> [0x80000290]:sw a1, 96(sp)<br>      |
|  14|[0x80002278]<br>0x80000000|- rs1 : x9<br> - rs2 : x30<br> - rd : x5<br> - rs2_h1_val == -513<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -17<br> - rs1_h0_val == 4096<br>                                                                                                                                    |[0x800002a4]:KDMABT t0, s1, t5<br> [0x800002a8]:csrrs s1, vxsat, zero<br> [0x800002ac]:sw t0, 104(sp)<br>     |
|  15|[0x80002280]<br>0x00808000|- rs1 : x2<br> - rs2 : x5<br> - rd : x23<br> - rs2_h1_val == -257<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                      |[0x800002c8]:KDMABT s7, sp, t0<br> [0x800002cc]:csrrs sp, vxsat, zero<br> [0x800002d0]:sw s7, 0(gp)<br>       |
|  16|[0x80002288]<br>0x0000060D|- rs1 : x12<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == -129<br>                                                                                                                                                                                                               |[0x800002e8]:KDMABT sp, a2, a3<br> [0x800002ec]:csrrs a2, vxsat, zero<br> [0x800002f0]:sw sp, 8(gp)<br>       |
|  17|[0x80002290]<br>0xFFF7E001|- rs1 : x17<br> - rs2 : x24<br> - rd : x9<br> - rs2_h1_val == -65<br> - rs2_h0_val == -129<br>                                                                                                                                                                                       |[0x80000304]:KDMABT s1, a7, s8<br> [0x80000308]:csrrs a7, vxsat, zero<br> [0x8000030c]:sw s1, 16(gp)<br>      |
|  18|[0x80002298]<br>0x00000084|- rs1 : x27<br> - rs2 : x29<br> - rd : x15<br> - rs2_h1_val == -33<br> - rs1_h0_val == -2<br>                                                                                                                                                                                        |[0x80000324]:KDMABT a5, s11, t4<br> [0x80000328]:csrrs s11, vxsat, zero<br> [0x8000032c]:sw a5, 24(gp)<br>    |
|  19|[0x800022a0]<br>0xFFFEF200|- rs1 : x20<br> - rs2 : x2<br> - rd : x10<br> - rs2_h1_val == -17<br> - rs2_h0_val == -5<br>                                                                                                                                                                                         |[0x80000344]:KDMABT a0, s4, sp<br> [0x80000348]:csrrs s4, vxsat, zero<br> [0x8000034c]:sw a0, 32(gp)<br>      |
|  20|[0x800022a8]<br>0x00090083|- rs1 : x10<br> - rs2 : x18<br> - rd : x22<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                |[0x80000364]:KDMABT s6, a0, s2<br> [0x80000368]:csrrs a0, vxsat, zero<br> [0x8000036c]:sw s6, 40(gp)<br>      |
|  21|[0x800022b0]<br>0xFBFFC28A|- rs1 : x31<br> - rs2 : x14<br> - rd : x21<br> - rs2_h1_val == -5<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -65<br>                                                                                                                                                               |[0x80000384]:KDMABT s5, t6, a4<br> [0x80000388]:csrrs t6, vxsat, zero<br> [0x8000038c]:sw s5, 48(gp)<br>      |
|  22|[0x800022b8]<br>0x00000018|- rs1 : x13<br> - rs2 : x12<br> - rd : x26<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                |[0x800003a4]:KDMABT s10, a3, a2<br> [0x800003a8]:csrrs a3, vxsat, zero<br> [0x800003ac]:sw s10, 56(gp)<br>    |
|  23|[0x800022c0]<br>0xFDFFAABA|- rs1 : x14<br> - rs2 : x28<br> - rd : x30<br> - rs2_h1_val == -2<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                       |[0x800003c4]:KDMABT t5, a4, t3<br> [0x800003c8]:csrrs a4, vxsat, zero<br> [0x800003cc]:sw t5, 64(gp)<br>      |
|  24|[0x800022c8]<br>0xFE000000|- rs1 : x22<br> - rs2 : x19<br> - rd : x8<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -513<br> - rs1_h0_val == 512<br>                                                                                                                                                            |[0x800003e4]:KDMABT fp, s6, s3<br> [0x800003e8]:csrrs s6, vxsat, zero<br> [0x800003ec]:sw fp, 72(gp)<br>      |
|  25|[0x800022d0]<br>0x00010001|- rs1 : x30<br> - rs2 : x10<br> - rd : x14<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 256<br> - rs1_h1_val == 512<br>                                                                                                                                                             |[0x80000404]:KDMABT a4, t5, a0<br> [0x80000408]:csrrs t5, vxsat, zero<br> [0x8000040c]:sw a4, 80(gp)<br>      |
|  26|[0x800022d8]<br>0x1FF6C003|- rs1 : x25<br> - rs2 : x31<br> - rd : x18<br> - rs2_h1_val == 8192<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 32767<br>                                                                                                                                                          |[0x80000424]:KDMABT s2, s9, t6<br> [0x80000428]:csrrs s9, vxsat, zero<br> [0x8000042c]:sw s2, 88(gp)<br>      |
|  27|[0x800022e0]<br>0x0010FFBF|- rs1 : x19<br> - rs2 : x0<br> - rd : x4<br> - rs2_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                             |[0x80000440]:KDMABT tp, s3, zero<br> [0x80000444]:csrrs s3, vxsat, zero<br> [0x80000448]:sw tp, 96(gp)<br>    |
|  28|[0x800022e8]<br>0xFFB7EF7F|- rs1 : x4<br> - rs2 : x26<br> - rd : x24<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                               |[0x8000045c]:KDMABT s8, tp, s10<br> [0x80000460]:csrrs tp, vxsat, zero<br> [0x80000464]:sw s8, 104(gp)<br>    |
|  29|[0x800022f0]<br>0x5555BEFF|- rs1 : x5<br> - rs2 : x27<br> - rd : x7<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                |[0x80000478]:KDMABT t2, t0, s11<br> [0x8000047c]:csrrs t0, vxsat, zero<br> [0x80000480]:sw t2, 112(gp)<br>    |
|  30|[0x800022f8]<br>0x00001C01|- rs1 : x7<br> - rs2 : x20<br> - rd : x13<br> - rs2_h1_val == 512<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -4097<br>                                                                                                                                                            |[0x80000498]:KDMABT a3, t2, s4<br> [0x8000049c]:csrrs t2, vxsat, zero<br> [0x800004a0]:sw a3, 120(gp)<br>     |
|  31|[0x80002300]<br>0xFFDF0009|- rs1 : x0<br> - rs2 : x15<br> - rd : x29<br> - rs2_h1_val == 256<br> - rs1_h1_val == 0<br>                                                                                                                                                                                          |[0x800004b8]:KDMABT t4, zero, a5<br> [0x800004bc]:csrrs zero, vxsat, zero<br> [0x800004c0]:sw t4, 128(gp)<br> |
|  32|[0x80002308]<br>0x00000000|- rs1 : x21<br> - rs2 : x1<br> - rd : x0<br> - rs2_h1_val == 64<br> - rs2_h0_val == -1<br> - rs1_h1_val == 16384<br>                                                                                                                                                                 |[0x800004d8]:KDMABT zero, s5, ra<br> [0x800004dc]:csrrs s5, vxsat, zero<br> [0x800004e0]:sw zero, 136(gp)<br> |
|  33|[0x80002310]<br>0x2000E7FF|- rs2_h1_val == 32<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                        |[0x80000500]:KDMABT t6, t5, t4<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 0(ra)<br>       |
|  34|[0x80002318]<br>0x1FFEE7EF|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                |[0x8000051c]:KDMABT t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 8(ra)<br>       |
|  35|[0x80002320]<br>0x1FFEDFED|- rs2_h1_val == 1<br> - rs1_h1_val == -65<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                              |[0x8000053c]:KDMABT t6, t5, t4<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 16(ra)<br>      |
|  36|[0x80002328]<br>0x1FFEEBF3|- rs2_h0_val == -4097<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                   |[0x8000055c]:KDMABT t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 24(ra)<br>      |
|  37|[0x80002330]<br>0x20AA429F|- rs2_h0_val == 4096<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                    |[0x80000578]:KDMABT t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 32(ra)<br>      |
|  38|[0x80002338]<br>0x20A6229F|- rs2_h1_val == 4096<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                     |[0x80000598]:KDMABT t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 40(ra)<br>      |
|  39|[0x80002340]<br>0x20A62327|- rs2_h0_val == 1<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                        |[0x800005b8]:KDMABT t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 48(ra)<br>      |
|  40|[0x80002348]<br>0x20A2CDD5|- rs2_h0_val == -33<br> - rs1_h1_val == 2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                 |[0x800005d8]:KDMABT t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 56(ra)<br>      |
|  41|[0x80002350]<br>0x20A2D9DB|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                               |[0x800005f8]:KDMABT t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 64(ra)<br>      |
|  42|[0x80002358]<br>0x209259DB|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                            |[0x80000614]:KDMABT t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 72(ra)<br>      |
|  43|[0x80002360]<br>0x2093D9DB|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                             |[0x80000630]:KDMABT t6, t5, t4<br> [0x80000634]:csrrs t5, vxsat, zero<br> [0x80000638]:sw t6, 80(ra)<br>      |
|  44|[0x80002368]<br>0x233E81DB|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                             |[0x8000064c]:KDMABT t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 88(ra)<br>      |
|  45|[0x80002370]<br>0x233E7FDB|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                              |[0x8000066c]:KDMABT t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 96(ra)<br>      |
|  46|[0x80002378]<br>0x233E7FDB|- rs1_h1_val == -32768<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                    |[0x8000068c]:KDMABT t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 104(ra)<br>     |
|  47|[0x80002380]<br>0x233E806B|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                |[0x800006ac]:KDMABT t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 112(ra)<br>     |
|  48|[0x80002388]<br>0x233E8093|- rs2_h0_val == 32<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                         |[0x800006cc]:KDMABT t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 120(ra)<br>     |
|  49|[0x80002390]<br>0x233E80A7|- rs2_h0_val == 512<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                       |[0x800006ec]:KDMABT t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 128(ra)<br>     |
|  50|[0x80002398]<br>0x233E009F|- rs2_h1_val == 4<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                       |[0x8000070c]:KDMABT t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 136(ra)<br>     |
|  51|[0x800023a0]<br>0x233D009F|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                |[0x80000728]:KDMABT t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 144(ra)<br>     |
|  52|[0x800023a8]<br>0x233CF89B|- rs2_h0_val == -3<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                         |[0x80000748]:KDMABT t6, t5, t4<br> [0x8000074c]:csrrs t5, vxsat, zero<br> [0x80000750]:sw t6, 152(ra)<br>     |
|  53|[0x800023b0]<br>0x233D029B|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                               |[0x80000768]:KDMABT t6, t5, t4<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sw t6, 160(ra)<br>     |
|  54|[0x800023b8]<br>0x233CE299|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                           |[0x80000784]:KDMABT t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 168(ra)<br>     |
|  55|[0x800023c0]<br>0x4DE6B7EF|- rs2_h0_val == 16384<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                  |[0x800007a0]:KDMABT t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 176(ra)<br>     |
|  56|[0x800023c8]<br>0x4DE6B7EF|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                             |[0x800007bc]:KDMABT t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 184(ra)<br>     |
|  57|[0x800023d0]<br>0x4DEAB7E7|- rs2_h0_val == 128<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                       |[0x800007dc]:KDMABT t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 192(ra)<br>     |
|  58|[0x800023d8]<br>0x4DEAB80B|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                |[0x800007fc]:KDMABT t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 200(ra)<br>     |
|  59|[0x800023e0]<br>0x4DEAB80B|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                |[0x80000818]:KDMABT t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 208(ra)<br>     |
|  60|[0x800023e8]<br>0x4DEA378B|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                           |[0x80000838]:KDMABT t6, t5, t4<br> [0x8000083c]:csrrs t5, vxsat, zero<br> [0x80000840]:sw t6, 216(ra)<br>     |
|  61|[0x800023f0]<br>0x4DE8378B|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                            |[0x80000858]:KDMABT t6, t5, t4<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sw t6, 224(ra)<br>     |
|  62|[0x800023f8]<br>0x4DE81F85|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                           |[0x80000874]:KDMABT t6, t5, t4<br> [0x80000878]:csrrs t5, vxsat, zero<br> [0x8000087c]:sw t6, 232(ra)<br>     |
|  63|[0x80002400]<br>0x4DEB74D7|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                            |[0x80000894]:KDMABT t6, t5, t4<br> [0x80000898]:csrrs t5, vxsat, zero<br> [0x8000089c]:sw t6, 240(ra)<br>     |
|  64|[0x80002408]<br>0x4DEA64D7|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                             |[0x800008b4]:KDMABT t6, t5, t4<br> [0x800008b8]:csrrs t5, vxsat, zero<br> [0x800008bc]:sw t6, 248(ra)<br>     |
|  65|[0x80002410]<br>0x4E0A78D9|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                               |[0x800008d4]:KDMABT t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 256(ra)<br>     |
|  66|[0x80002418]<br>0x500B78D9|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                               |[0x800008f4]:KDMABT t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 264(ra)<br>     |
|  67|[0x80002420]<br>0x50097899|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                            |[0x80000914]:KDMABT t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 272(ra)<br>     |
|  68|[0x80002428]<br>0x5009788D|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                              |[0x80000934]:KDMABT t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 280(ra)<br>     |
|  69|[0x80002430]<br>0x4809188F|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                               |[0x80000954]:KDMABT t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 288(ra)<br>     |
|  70|[0x80002438]<br>0x480F189B|- rs2_h0_val == 21845<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                     |[0x80000974]:KDMABT t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 296(ra)<br>     |
|  71|[0x80002440]<br>0x480F189B|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                            |[0x80000994]:KDMABT t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 304(ra)<br>     |
|  72|[0x80002448]<br>0x480818A9|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                           |[0x800009b4]:KDMABT t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 312(ra)<br>     |
|  73|[0x80002450]<br>0x480318A9|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                |[0x800009d0]:KDMABT t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 320(ra)<br>     |
|  74|[0x80002458]<br>0x4803195D|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                             |[0x800009f0]:KDMABT t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 328(ra)<br>     |
|  75|[0x80002460]<br>0x4803215D|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                            |[0x80000a10]:KDMABT t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 336(ra)<br>     |
|  76|[0x80002468]<br>0x47FDCBFD|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                           |[0x80000a2c]:KDMABT t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 344(ra)<br>     |
|  77|[0x80002470]<br>0x47FCCBF9|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                           |[0x80000a4c]:KDMABT t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 352(ra)<br>     |
|  78|[0x80002478]<br>0x47FD3BF9|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                              |[0x80000a6c]:KDMABT t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 360(ra)<br>     |
|  79|[0x80002480]<br>0x47FC3BF9|- rs1_h0_val == -32768<br> - rs2_h0_val == -9<br>                                                                                                                                                                                                                                    |[0x80000a88]:KDMABT t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 368(ra)<br>     |
|  80|[0x80002488]<br>0x47FD3BF9|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                             |[0x80000aa4]:KDMABT t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 376(ra)<br>     |
