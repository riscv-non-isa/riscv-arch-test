
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '128 words')]      |
| COV_LABELS                | umulx8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umulx8-01.S    |
| Total Number of coverpoints| 259     |
| Total Coverpoints Hit     | 253      |
| Total Signature Updates   | 128      |
| STAT1                     | 60      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 64     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:UMULX8 t5, t6, t4
      [0x80000618]:sw t5, 96(ra)
 -- Signature Address: 0x80002378 Data: 0x0C120F10
 -- Redundant Coverpoints hit by the op
      - opcode : umulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 16
      - rs2_b2_val == 170
      - rs2_b0_val == 0
      - rs1_b2_val == 255
      - rs1_b1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000748]:UMULX8 t5, t6, t4
      [0x8000074c]:sw t5, 184(ra)
 -- Signature Address: 0x800023d0 Data: 0x0C120F10
 -- Redundant Coverpoints hit by the op
      - opcode : umulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 0
      - rs2_b1_val == 239
      - rs1_b2_val == 0
      - rs1_b0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:UMULX8 t5, t6, t4
      [0x800007f4]:sw t5, 232(ra)
 -- Signature Address: 0x80002400 Data: 0x0C120F10
 -- Redundant Coverpoints hit by the op
      - opcode : umulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 1
      - rs2_b2_val == 85
      - rs2_b1_val == 127
      - rs2_b0_val == 64
      - rs1_b3_val == 170
      - rs1_b2_val == 128
      - rs1_b1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:UMULX8 t5, t6, t4
      [0x80000810]:sw t5, 240(ra)
 -- Signature Address: 0x80002408 Data: 0x0C120F10
 -- Redundant Coverpoints hit by the op
      - opcode : umulx8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 128
      - rs2_b1_val == 255
      - rs2_b0_val == 64
      - rs1_b2_val == 16
      - rs1_b1_val == 223






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : umulx8', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 1', 'rs2_b2_val == 85', 'rs2_b1_val == 127', 'rs2_b0_val == 64', 'rs1_b3_val == 1', 'rs1_b2_val == 85', 'rs1_b1_val == 127', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000110]:UMULX8 s6, s6, s6
	-[0x80000114]:sw s6, 0(gp)
Current Store : [0x80000118] : sw s7, 4(gp) -- Store: [0x80002214]:0x00550055




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x28', 'rs1 == rs2 != rd', 'rs2_b3_val == 239', 'rs2_b1_val == 128', 'rs2_b0_val == 2', 'rs1_b3_val == 239', 'rs1_b1_val == 128', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x8000012c]:UMULX8 t3, sp, sp
	-[0x80000130]:sw t3, 8(gp)
Current Store : [0x80000134] : sw t4, 12(gp) -- Store: [0x8000221c]:0x10CE10CE




Last Coverpoint : ['rs1 : x16', 'rs2 : x9', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 32', 'rs2_b2_val == 1', 'rs2_b0_val == 170', 'rs1_b2_val == 1', 'rs1_b1_val == 191', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x80000148]:UMULX8 fp, a6, s1
	-[0x8000014c]:sw fp, 16(gp)
Current Store : [0x80000150] : sw s1, 20(gp) -- Store: [0x80002224]:0x00130020




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs2_b2_val == 255', 'rs1_b2_val == 127', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000164]:UMULX8 a6, s3, a6
	-[0x80000168]:sw a6, 24(gp)
Current Store : [0x8000016c] : sw a7, 28(gp) -- Store: [0x8000222c]:0x08F70575




Last Coverpoint : ['rs1 : x24', 'rs2 : x30', 'rd : x24', 'rs1 == rd != rs2', 'rs2_b3_val == 255', 'rs2_b1_val == 247', 'rs2_b0_val == 4', 'rs1_b1_val == 170', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000180]:UMULX8 s8, s8, t5
	-[0x80000184]:sw s8, 32(gp)
Current Store : [0x80000188] : sw s9, 36(gp) -- Store: [0x80002234]:0x0B340CF3




Last Coverpoint : ['rs1 : x1', 'rs2 : x4', 'rd : x12', 'rs2_b3_val == 170', 'rs2_b2_val == 128', 'rs2_b0_val == 16', 'rs1_b3_val == 16', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x8000019c]:UMULX8 a2, ra, tp
	-[0x800001a0]:sw a2, 40(gp)
Current Store : [0x800001a4] : sw a3, 44(gp) -- Store: [0x8000223c]:0x080009F6




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x26', 'rs2_b3_val == 85', 'rs2_b2_val == 223', 'rs1_b3_val == 254', 'rs1_b1_val == 247', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x800001b8]:UMULX8 s10, tp, s4
	-[0x800001bc]:sw s10, 48(gp)
Current Store : [0x800001c0] : sw s11, 52(gp) -- Store: [0x80002244]:0xDD4205FA




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x20', 'rs2_b3_val == 127', 'rs2_b2_val == 251', 'rs2_b0_val == 191', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x800001d4]:UMULX8 s4, a4, t2
	-[0x800001d8]:sw s4, 56(gp)
Current Store : [0x800001dc] : sw s5, 60(gp) -- Store: [0x8000224c]:0x5357086F




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x30', 'rs2_b3_val == 191', 'rs2_b2_val == 170', 'rs2_b1_val == 64', 'rs2_b0_val == 1', 'rs1_b3_val == 8', 'rs1_b2_val == 223', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x800001f0]:UMULX8 t5, s5, s11
	-[0x800001f4]:sw t5, 64(gp)
Current Store : [0x800001f8] : sw t6, 68(gp) -- Store: [0x80002254]:0x0550A661




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x4', 'rs2_b3_val == 223', 'rs2_b2_val == 4', 'rs2_b1_val == 0']
Last Code Sequence : 
	-[0x8000020c]:UMULX8 tp, s2, a3
	-[0x80000210]:sw tp, 72(gp)
Current Store : [0x80000214] : sw t0, 76(gp) -- Store: [0x8000225c]:0x004CC241




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x2', 'rs2_b3_val == 247', 'rs2_b0_val == 255', 'rs1_b2_val == 239', 'rs1_b1_val == 251']
Last Code Sequence : 
	-[0x80000230]:UMULX8 sp, s9, s2
	-[0x80000234]:sw sp, 0(a6)
Current Store : [0x80000238] : sw gp, 4(a6) -- Store: [0x80002264]:0x0040E699




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x6', 'rs2_b3_val == 251', 'rs2_b1_val == 170', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000024c]:UMULX8 t1, a7, ra
	-[0x80000250]:sw t1, 8(a6)
Current Store : [0x80000254] : sw t2, 12(a6) -- Store: [0x8000226c]:0x0AA00AC9




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x10', 'rs2_b3_val == 253', 'rs2_b1_val == 253', 'rs2_b0_val == 128', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000268]:UMULX8 a0, s1, s9
	-[0x8000026c]:sw a0, 16(a6)
Current Store : [0x80000270] : sw a1, 20(a6) -- Store: [0x80002274]:0x2A801FA0




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x14', 'rs2_b3_val == 254', 'rs2_b2_val == 2', 'rs2_b0_val == 253', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000284]:UMULX8 a4, gp, t6
	-[0x80000288]:sw a4, 24(a6)
Current Store : [0x8000028c] : sw a5, 28(a6) -- Store: [0x8000227c]:0x00800DE4




Last Coverpoint : ['rs1 : x12', 'rs2 : x21', 'rd : x18', 'rs2_b3_val == 128', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x800002a0]:UMULX8 s2, a2, s5
	-[0x800002a4]:sw s2, 32(a6)
Current Store : [0x800002a8] : sw s3, 36(a6) -- Store: [0x80002284]:0x00483F80




Last Coverpoint : ['rs1 : x10', 'rs2 : x11', 'rs2_b3_val == 64']
Last Code Sequence : 
	-[0x800002bc]:UMULX8 a4, a0, a1
	-[0x800002c0]:sw a4, 40(a6)
Current Store : [0x800002c4] : sw a5, 44(a6) -- Store: [0x8000228c]:0x03520040




Last Coverpoint : ['rs1 : x30', 'rs2 : x12', 'rs2_b3_val == 16']
Last Code Sequence : 
	-[0x800002d8]:UMULX8 t3, t5, a2
	-[0x800002dc]:sw t3, 48(a6)
Current Store : [0x800002e0] : sw t4, 52(a6) -- Store: [0x80002294]:0x06000120




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rs1_b0_val == 0', 'rs2_b3_val == 8', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x800002f4]:UMULX8 a2, zero, a0
	-[0x800002f8]:sw a2, 56(a6)
Current Store : [0x800002fc] : sw a3, 60(a6) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rs2_b3_val == 4', 'rs2_b2_val == 16', 'rs1_b2_val == 4', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x80000310]:UMULX8 tp, s7, t0
	-[0x80000314]:sw tp, 64(a6)
Current Store : [0x80000318] : sw t0, 68(a6) -- Store: [0x800022a4]:0x04000010




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rs2_b3_val == 2']
Last Code Sequence : 
	-[0x8000032c]:UMULX8 fp, s10, t3
	-[0x80000330]:sw fp, 72(a6)
Current Store : [0x80000334] : sw s1, 76(a6) -- Store: [0x800022ac]:0x08B60006




Last Coverpoint : ['rs1 : x6', 'rs2 : x14', 'rs2_b3_val == 0', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000350]:UMULX8 s2, t1, a4
	-[0x80000354]:sw s2, 0(ra)
Current Store : [0x80000358] : sw s3, 4(ra) -- Store: [0x800022b4]:0x00180000




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rs2_b2_val == 127', 'rs2_b1_val == 223', 'rs2_b0_val == 8', 'rs1_b2_val == 253', 'rs1_b1_val == 239', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000036c]:UMULX8 a0, t0, t1
	-[0x80000370]:sw a0, 8(ra)
Current Store : [0x80000374] : sw a1, 12(ra) -- Store: [0x800022bc]:0x027BA802




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rs2_b2_val == 191', 'rs2_b1_val == 255', 'rs1_b2_val == 251']
Last Code Sequence : 
	-[0x80000388]:UMULX8 s4, t6, a7
	-[0x8000038c]:sw s4, 16(ra)
Current Store : [0x80000390] : sw s5, 20(ra) -- Store: [0x800022c4]:0x2FC0F90A




Last Coverpoint : ['rs1 : x27', 'rs2 : x26', 'rs2_b2_val == 239', 'rs1_b3_val == 191', 'rs1_b2_val == 64', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800003a4]:UMULX8 a6, s11, s10
	-[0x800003a8]:sw a6, 24(ra)
Current Store : [0x800003ac] : sw a7, 28(ra) -- Store: [0x800022cc]:0xB2512FC0




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rs2_b2_val == 247', 'rs2_b1_val == 8', 'rs2_b0_val == 32']
Last Code Sequence : 
	-[0x800003c0]:UMULX8 s10, a3, t4
	-[0x800003c4]:sw s10, 32(ra)
Current Store : [0x800003c8] : sw s11, 36(ra) -- Store: [0x800022d4]:0x3DC03BC0




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rs2_b2_val == 253', 'rs2_b1_val == 1']
Last Code Sequence : 
	-[0x800003dc]:UMULX8 s6, t3, a5
	-[0x800003e0]:sw s6, 40(ra)
Current Store : [0x800003e4] : sw s7, 44(ra) -- Store: [0x800022dc]:0x0CD90780




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rs2_b1_val == 254', 'rs1_b3_val == 2', 'rs1_b0_val == 170']
Last Code Sequence : 
	-[0x800003f8]:UMULX8 a0, s4, fp
	-[0x800003fc]:sw a0, 48(ra)
Current Store : [0x80000400] : sw a1, 52(ra) -- Store: [0x800022e4]:0x00200000




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rs2_b2_val == 64', 'rs2_b0_val == 254', 'rs1_b2_val == 191', 'rs1_b1_val == 85', 'rs1_b0_val == 239']
Last Code Sequence : 
	-[0x80000414]:UMULX8 s4, a5, s7
	-[0x80000418]:sw s4, 56(ra)
Current Store : [0x8000041c] : sw s5, 60(ra) -- Store: [0x800022ec]:0x03000A72




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rs2_b2_val == 0', 'rs2_b0_val == 0', 'rs1_b2_val == 16', 'rs1_b1_val == 223']
Last Code Sequence : 
	-[0x80000430]:UMULX8 sp, t2, zero
	-[0x80000434]:sw sp, 64(ra)
Current Store : [0x80000438] : sw gp, 68(ra) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x24', 'rs1_b3_val == 253', 'rs1_b1_val == 253']
Last Code Sequence : 
	-[0x8000044c]:UMULX8 s2, t4, s8
	-[0x80000450]:sw s2, 72(ra)
Current Store : [0x80000454] : sw s3, 76(ra) -- Store: [0x800022fc]:0xBCC30ADF




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rs2_b1_val == 239', 'rs1_b3_val == 170', 'rs1_b1_val == 254']
Last Code Sequence : 
	-[0x80000468]:UMULX8 sp, fp, gp
	-[0x8000046c]:sw sp, 80(ra)
Current Store : [0x80000470] : sw gp, 84(ra) -- Store: [0x80002304]:0x074E0078




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rs1_b1_val == 32', 'rs1_b0_val == 128']
Last Code Sequence : 
	-[0x80000484]:UMULX8 sp, a1, s3
	-[0x80000488]:sw sp, 88(ra)
Current Store : [0x8000048c] : sw gp, 92(ra) -- Store: [0x8000230c]:0x00800000




Last Coverpoint : ['rs1_b1_val == 1']
Last Code Sequence : 
	-[0x800004a0]:UMULX8 t5, t6, t4
	-[0x800004a4]:sw t5, 96(ra)
Current Store : [0x800004a8] : sw t6, 100(ra) -- Store: [0x80002314]:0xB2510120




Last Coverpoint : ['rs2_b1_val == 85', 'rs1_b2_val == 128', 'rs1_b1_val == 255']
Last Code Sequence : 
	-[0x800004c4]:UMULX8 t5, t6, t4
	-[0x800004c8]:sw t5, 0(ra)
Current Store : [0x800004cc] : sw t6, 4(ra) -- Store: [0x8000231c]:0x12ED7F80




Last Coverpoint : ['rs1_b0_val == 127']
Last Code Sequence : 
	-[0x800004e0]:UMULX8 t5, t6, t4
	-[0x800004e4]:sw t5, 8(ra)
Current Store : [0x800004e8] : sw t6, 12(ra) -- Store: [0x80002324]:0x008C4A0B




Last Coverpoint : ['rs1_b0_val == 191']
Last Code Sequence : 
	-[0x800004fc]:UMULX8 t5, t6, t4
	-[0x80000500]:sw t5, 16(ra)
Current Store : [0x80000504] : sw t6, 20(ra) -- Store: [0x8000232c]:0x00460180




Last Coverpoint : ['rs2_b0_val == 251', 'rs1_b3_val == 128', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x80000518]:UMULX8 t5, t6, t4
	-[0x8000051c]:sw t5, 24(ra)
Current Store : [0x80000520] : sw t6, 28(ra) -- Store: [0x80002334]:0x7D800154




Last Coverpoint : ['rs1_b1_val == 8', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x80000534]:UMULX8 t5, t6, t4
	-[0x80000538]:sw t5, 32(ra)
Current Store : [0x8000053c] : sw t6, 36(ra) -- Store: [0x8000233c]:0x006201C0




Last Coverpoint : ['rs2_b0_val == 247', 'rs1_b0_val == 253']
Last Code Sequence : 
	-[0x80000550]:UMULX8 t5, t6, t4
	-[0x80000554]:sw t5, 40(ra)
Current Store : [0x80000558] : sw t6, 44(ra) -- Store: [0x80002344]:0x009000E0




Last Coverpoint : ['rs2_b1_val == 4']
Last Code Sequence : 
	-[0x8000056c]:UMULX8 t5, t6, t4
	-[0x80000570]:sw t5, 48(ra)
Current Store : [0x80000574] : sw t6, 52(ra) -- Store: [0x8000234c]:0x01200096




Last Coverpoint : ['rs2_b1_val == 2', 'rs1_b2_val == 247']
Last Code Sequence : 
	-[0x80000588]:UMULX8 t5, t6, t4
	-[0x8000058c]:sw t5, 56(ra)
Current Store : [0x80000590] : sw t6, 60(ra) -- Store: [0x80002354]:0x03C0F41B




Last Coverpoint : ['rs2_b1_val == 32', 'rs2_b0_val == 85', 'rs1_b2_val == 255']
Last Code Sequence : 
	-[0x800005a4]:UMULX8 t5, t6, t4
	-[0x800005a8]:sw t5, 64(ra)
Current Store : [0x800005ac] : sw t6, 68(ra) -- Store: [0x8000235c]:0x05390DF2




Last Coverpoint : ['rs2_b0_val == 127']
Last Code Sequence : 
	-[0x800005c0]:UMULX8 t5, t6, t4
	-[0x800005c4]:sw t5, 72(ra)
Current Store : [0x800005c8] : sw t6, 76(ra) -- Store: [0x80002364]:0x002A0046




Last Coverpoint : ['rs2_b1_val == 16', 'rs2_b0_val == 223']
Last Code Sequence : 
	-[0x800005dc]:UMULX8 t5, t6, t4
	-[0x800005e0]:sw t5, 80(ra)
Current Store : [0x800005e4] : sw t6, 84(ra) -- Store: [0x8000236c]:0x54560000




Last Coverpoint : ['rs2_b0_val == 239']
Last Code Sequence : 
	-[0x800005f8]:UMULX8 t5, t6, t4
	-[0x800005fc]:sw t5, 88(ra)
Current Store : [0x80000600] : sw t6, 92(ra) -- Store: [0x80002374]:0x00FF0280




Last Coverpoint : ['opcode : umulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs2_b3_val == 16', 'rs2_b2_val == 170', 'rs2_b0_val == 0', 'rs1_b2_val == 255', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x80000614]:UMULX8 t5, t6, t4
	-[0x80000618]:sw t5, 96(ra)
Current Store : [0x8000061c] : sw t6, 100(ra) -- Store: [0x8000237c]:0x03520FF0




Last Coverpoint : ['rs1_b3_val == 127', 'rs1_b2_val == 254']
Last Code Sequence : 
	-[0x80000630]:UMULX8 t5, t6, t4
	-[0x80000634]:sw t5, 104(ra)
Current Store : [0x80000638] : sw t6, 108(ra) -- Store: [0x80002384]:0x0771ED22




Last Coverpoint : ['rs1_b3_val == 223']
Last Code Sequence : 
	-[0x8000064c]:UMULX8 t5, t6, t4
	-[0x80000650]:sw t5, 112(ra)
Current Store : [0x80000654] : sw t6, 116(ra) -- Store: [0x8000238c]:0xA6610340




Last Coverpoint : ['rs1_b3_val == 247']
Last Code Sequence : 
	-[0x80000668]:UMULX8 t5, t6, t4
	-[0x8000066c]:sw t5, 120(ra)
Current Store : [0x80000670] : sw t6, 124(ra) -- Store: [0x80002394]:0x05CA008F




Last Coverpoint : ['rs1_b3_val == 251']
Last Code Sequence : 
	-[0x80000684]:UMULX8 t5, t6, t4
	-[0x80000688]:sw t5, 128(ra)
Current Store : [0x8000068c] : sw t6, 132(ra) -- Store: [0x8000239c]:0x12A100F7




Last Coverpoint : ['rs1_b0_val == 32']
Last Code Sequence : 
	-[0x800006a0]:UMULX8 t5, t6, t4
	-[0x800006a4]:sw t5, 136(ra)
Current Store : [0x800006a8] : sw t6, 140(ra) -- Store: [0x800023a4]:0xDE210078




Last Coverpoint : ['rs1_b3_val == 32']
Last Code Sequence : 
	-[0x800006bc]:UMULX8 t5, t6, t4
	-[0x800006c0]:sw t5, 144(ra)
Current Store : [0x800006c4] : sw t6, 148(ra) -- Store: [0x800023ac]:0x01C054AB




Last Coverpoint : ['rs2_b2_val == 254']
Last Code Sequence : 
	-[0x800006d8]:UMULX8 t5, t6, t4
	-[0x800006dc]:sw t5, 152(ra)
Current Store : [0x800006e0] : sw t6, 156(ra) -- Store: [0x800023b4]:0x08EE0099




Last Coverpoint : ['rs2_b1_val == 251', 'rs1_b0_val == 255']
Last Code Sequence : 
	-[0x800006f4]:UMULX8 t5, t6, t4
	-[0x800006f8]:sw t5, 160(ra)
Current Store : [0x800006fc] : sw t6, 164(ra) -- Store: [0x800023bc]:0xBE411000




Last Coverpoint : ['rs2_b2_val == 32']
Last Code Sequence : 
	-[0x80000710]:UMULX8 t5, t6, t4
	-[0x80000714]:sw t5, 168(ra)
Current Store : [0x80000718] : sw t6, 172(ra) -- Store: [0x800023c4]:0x00401067




Last Coverpoint : ['rs2_b2_val == 8']
Last Code Sequence : 
	-[0x8000072c]:UMULX8 t5, t6, t4
	-[0x80000730]:sw t5, 176(ra)
Current Store : [0x80000734] : sw t6, 180(ra) -- Store: [0x800023cc]:0x077810CE




Last Coverpoint : ['opcode : umulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == 0', 'rs2_b1_val == 239', 'rs1_b2_val == 0', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000748]:UMULX8 t5, t6, t4
	-[0x8000074c]:sw t5, 184(ra)
Current Store : [0x80000750] : sw t6, 188(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_b1_val == 191']
Last Code Sequence : 
	-[0x80000764]:UMULX8 t5, t6, t4
	-[0x80000768]:sw t5, 192(ra)
Current Store : [0x8000076c] : sw t6, 196(ra) -- Store: [0x800023dc]:0x000F5401




Last Coverpoint : ['rs1_b2_val == 2']
Last Code Sequence : 
	-[0x80000780]:UMULX8 t5, t6, t4
	-[0x80000784]:sw t5, 200(ra)
Current Store : [0x80000788] : sw t6, 204(ra) -- Store: [0x800023e4]:0x00F00002




Last Coverpoint : ['rs1_b3_val == 255']
Last Code Sequence : 
	-[0x8000079c]:UMULX8 t5, t6, t4
	-[0x800007a0]:sw t5, 208(ra)
Current Store : [0x800007a4] : sw t6, 212(ra) -- Store: [0x800023ec]:0x08F70027




Last Coverpoint : ['rs1_b2_val == 8']
Last Code Sequence : 
	-[0x800007b8]:UMULX8 t5, t6, t4
	-[0x800007bc]:sw t5, 216(ra)
Current Store : [0x800007c0] : sw t6, 220(ra) -- Store: [0x800023f4]:0x00000048




Last Coverpoint : ['rs1_b2_val == 170']
Last Code Sequence : 
	-[0x800007d4]:UMULX8 t5, t6, t4
	-[0x800007d8]:sw t5, 224(ra)
Current Store : [0x800007dc] : sw t6, 228(ra) -- Store: [0x800023fc]:0x00375456




Last Coverpoint : ['opcode : umulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b0_val == 0', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs2_b3_val == 1', 'rs2_b2_val == 85', 'rs2_b1_val == 127', 'rs2_b0_val == 64', 'rs1_b3_val == 170', 'rs1_b2_val == 128', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x800007f0]:UMULX8 t5, t6, t4
	-[0x800007f4]:sw t5, 232(ra)
Current Store : [0x800007f8] : sw t6, 236(ra) -- Store: [0x80002404]:0x38720080




Last Coverpoint : ['opcode : umulx8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == 128', 'rs2_b1_val == 255', 'rs2_b0_val == 64', 'rs1_b2_val == 16', 'rs1_b1_val == 223']
Last Code Sequence : 
	-[0x8000080c]:UMULX8 t5, t6, t4
	-[0x80000810]:sw t5, 240(ra)
Current Store : [0x80000814] : sw t6, 244(ra) -- Store: [0x8000240c]:0x070000D0





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

|s.no|        signature         |                                                                                                                                                                                                                                                                              coverpoints                                                                                                                                                                                                                                                                               |                                code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x01557F40|- opcode : umulx8<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 1<br> - rs2_b2_val == 85<br> - rs2_b1_val == 127<br> - rs2_b0_val == 64<br> - rs1_b3_val == 1<br> - rs1_b2_val == 85<br> - rs1_b1_val == 127<br> - rs1_b0_val == 64<br> |[0x80000110]:UMULX8 s6, s6, s6<br> [0x80000114]:sw s6, 0(gp)<br>    |
|   2|[0x80002218]<br>0xDDB7D5BF|- rs1 : x2<br> - rs2 : x2<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs2_b3_val == 239<br> - rs2_b1_val == 128<br> - rs2_b0_val == 2<br> - rs1_b3_val == 239<br> - rs1_b1_val == 128<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                         |[0x8000012c]:UMULX8 t3, sp, sp<br> [0x80000130]:sw t3, 8(gp)<br>    |
|   3|[0x80002220]<br>0x5BFDDB7D|- rs1 : x16<br> - rs2 : x9<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 32<br> - rs2_b2_val == 1<br> - rs2_b0_val == 170<br> - rs1_b2_val == 1<br> - rs1_b1_val == 191<br> - rs1_b0_val == 254<br>                                                                                                                    |[0x80000148]:UMULX8 fp, a6, s1<br> [0x8000014c]:sw fp, 16(gp)<br>   |
|   4|[0x80002228]<br>0x0BFF0502|- rs1 : x19<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b2_val == 255<br> - rs1_b2_val == 127<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000164]:UMULX8 a6, s3, a6<br> [0x80000168]:sw a6, 24(gp)<br>   |
|   5|[0x80002230]<br>0xEF0DAA04|- rs1 : x24<br> - rs2 : x30<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_b3_val == 255<br> - rs2_b1_val == 247<br> - rs2_b0_val == 4<br> - rs1_b1_val == 170<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x80000180]:UMULX8 s8, s8, t5<br> [0x80000184]:sw s8, 32(gp)<br>   |
|   6|[0x80002238]<br>0xD5BFDDB7|- rs1 : x1<br> - rs2 : x4<br> - rd : x12<br> - rs2_b3_val == 170<br> - rs2_b2_val == 128<br> - rs2_b0_val == 16<br> - rs1_b3_val == 16<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000019c]:UMULX8 a2, ra, tp<br> [0x800001a0]:sw a2, 40(gp)<br>   |
|   7|[0x80002240]<br>0x76DF56FF|- rs1 : x4<br> - rs2 : x20<br> - rd : x26<br> - rs2_b3_val == 85<br> - rs2_b2_val == 223<br> - rs1_b3_val == 254<br> - rs1_b1_val == 247<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001b8]:UMULX8 s10, tp, s4<br> [0x800001bc]:sw s10, 48(gp)<br> |
|   8|[0x80002248]<br>0x55DF0CAA|- rs1 : x14<br> - rs2 : x7<br> - rd : x20<br> - rs2_b3_val == 127<br> - rs2_b2_val == 251<br> - rs2_b0_val == 191<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800001d4]:UMULX8 s4, a4, t2<br> [0x800001d8]:sw s4, 56(gp)<br>   |
|   9|[0x80002250]<br>0xFF0CF704|- rs1 : x21<br> - rs2 : x27<br> - rd : x30<br> - rs2_b3_val == 191<br> - rs2_b2_val == 170<br> - rs2_b1_val == 64<br> - rs2_b0_val == 1<br> - rs1_b3_val == 8<br> - rs1_b2_val == 223<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800001f0]:UMULX8 t5, s5, s11<br> [0x800001f4]:sw t5, 64(gp)<br>  |
|  10|[0x80002258]<br>0xFE12F701|- rs1 : x18<br> - rs2 : x13<br> - rd : x4<br> - rs2_b3_val == 223<br> - rs2_b2_val == 4<br> - rs2_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000020c]:UMULX8 tp, s2, a3<br> [0x80000210]:sw tp, 72(gp)<br>   |
|  11|[0x80002260]<br>0xEF128002|- rs1 : x25<br> - rs2 : x18<br> - rd : x2<br> - rs2_b3_val == 247<br> - rs2_b0_val == 255<br> - rs1_b2_val == 239<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000230]:UMULX8 sp, s9, s2<br> [0x80000234]:sw sp, 0(a6)<br>    |
|  12|[0x80002268]<br>0x80002000|- rs1 : x17<br> - rs2 : x1<br> - rd : x6<br> - rs2_b3_val == 251<br> - rs2_b1_val == 170<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000024c]:UMULX8 t1, a7, ra<br> [0x80000250]:sw t1, 8(a6)<br>    |
|  13|[0x80002270]<br>0x56FF76DF|- rs1 : x9<br> - rs2 : x25<br> - rd : x10<br> - rs2_b3_val == 253<br> - rs2_b1_val == 253<br> - rs2_b0_val == 128<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000268]:UMULX8 a0, s1, s9<br> [0x8000026c]:sw a0, 16(a6)<br>   |
|  14|[0x80002278]<br>0x5511AA40|- rs1 : x3<br> - rs2 : x31<br> - rd : x14<br> - rs2_b3_val == 254<br> - rs2_b2_val == 2<br> - rs2_b0_val == 253<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000284]:UMULX8 a4, gp, t6<br> [0x80000288]:sw a4, 24(a6)<br>   |
|  15|[0x80002280]<br>0xF70480FF|- rs1 : x12<br> - rs2 : x21<br> - rd : x18<br> - rs2_b3_val == 128<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800002a0]:UMULX8 s2, a2, s5<br> [0x800002a4]:sw s2, 32(a6)<br>   |
|  16|[0x80002288]<br>0x5511AA40|- rs1 : x10<br> - rs2 : x11<br> - rs2_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800002bc]:UMULX8 a4, a0, a1<br> [0x800002c0]:sw a4, 40(a6)<br>   |
|  17|[0x80002290]<br>0xDDB7D5BF|- rs1 : x30<br> - rs2 : x12<br> - rs2_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800002d8]:UMULX8 t3, t5, a2<br> [0x800002dc]:sw t3, 48(a6)<br>   |
|  18|[0x80002298]<br>0x10800F02|- rs1 : x0<br> - rs2 : x10<br> - rs1_b0_val == 0<br> - rs2_b3_val == 8<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800002f4]:UMULX8 a2, zero, a0<br> [0x800002f8]:sw a2, 56(a6)<br> |
|  19|[0x800022a0]<br>0xFE12F701|- rs1 : x23<br> - rs2 : x5<br> - rs2_b3_val == 4<br> - rs2_b2_val == 16<br> - rs1_b2_val == 4<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000310]:UMULX8 tp, s7, t0<br> [0x80000314]:sw tp, 64(a6)<br>   |
|  20|[0x800022a8]<br>0x5BFDDB7D|- rs1 : x26<br> - rs2 : x28<br> - rs2_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000032c]:UMULX8 fp, s10, t3<br> [0x80000330]:sw fp, 72(a6)<br>  |
|  21|[0x800022b0]<br>0xF70480FF|- rs1 : x6<br> - rs2 : x14<br> - rs2_b3_val == 0<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000350]:UMULX8 s2, t1, a4<br> [0x80000354]:sw s2, 0(ra)<br>    |
|  22|[0x800022b8]<br>0x080FF707|- rs1 : x5<br> - rs2 : x6<br> - rs2_b2_val == 127<br> - rs2_b1_val == 223<br> - rs2_b0_val == 8<br> - rs1_b2_val == 253<br> - rs1_b1_val == 239<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000036c]:UMULX8 a0, t0, t1<br> [0x80000370]:sw a0, 8(ra)<br>    |
|  23|[0x800022c0]<br>0x55DF0CAA|- rs1 : x31<br> - rs2 : x17<br> - rs2_b2_val == 191<br> - rs2_b1_val == 255<br> - rs1_b2_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000388]:UMULX8 s4, t6, a7<br> [0x8000038c]:sw s4, 16(ra)<br>   |
|  24|[0x800022c8]<br>0x80002260|- rs1 : x27<br> - rs2 : x26<br> - rs2_b2_val == 239<br> - rs1_b3_val == 191<br> - rs1_b2_val == 64<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003a4]:UMULX8 a6, s11, s10<br> [0x800003a8]:sw a6, 24(ra)<br> |
|  25|[0x800022d0]<br>0xBFEF1310|- rs1 : x13<br> - rs2 : x29<br> - rs2_b2_val == 247<br> - rs2_b1_val == 8<br> - rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003c0]:UMULX8 s10, a3, t4<br> [0x800003c4]:sw s10, 32(ra)<br> |
|  26|[0x800022d8]<br>0x01557F40|- rs1 : x28<br> - rs2 : x15<br> - rs2_b2_val == 253<br> - rs2_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003dc]:UMULX8 s6, t3, a5<br> [0x800003e0]:sw s6, 40(ra)<br>   |
|  27|[0x800022e0]<br>0x080FF707|- rs1 : x20<br> - rs2 : x8<br> - rs2_b1_val == 254<br> - rs1_b3_val == 2<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003f8]:UMULX8 a0, s4, fp<br> [0x800003fc]:sw a0, 48(ra)<br>   |
|  28|[0x800022e8]<br>0x020080AA|- rs1 : x15<br> - rs2 : x23<br> - rs2_b2_val == 64<br> - rs2_b0_val == 254<br> - rs1_b2_val == 191<br> - rs1_b1_val == 85<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000414]:UMULX8 s4, a5, s7<br> [0x80000418]:sw s4, 56(ra)<br>   |
|  29|[0x800022f0]<br>0xEF128002|- rs1 : x7<br> - rs2 : x0<br> - rs2_b2_val == 0<br> - rs2_b0_val == 0<br> - rs1_b2_val == 16<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000430]:UMULX8 sp, t2, zero<br> [0x80000434]:sw sp, 64(ra)<br> |
|  30|[0x800022f8]<br>0xF70480FF|- rs1 : x29<br> - rs2 : x24<br> - rs1_b3_val == 253<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000044c]:UMULX8 s2, t4, s8<br> [0x80000450]:sw s2, 72(ra)<br>   |
|  31|[0x80002300]<br>0xEF128002|- rs1 : x8<br> - rs2 : x3<br> - rs2_b1_val == 239<br> - rs1_b3_val == 170<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000468]:UMULX8 sp, fp, gp<br> [0x8000046c]:sw sp, 80(ra)<br>   |
|  32|[0x80002308]<br>0xEF128002|- rs1 : x11<br> - rs2 : x19<br> - rs1_b1_val == 32<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000484]:UMULX8 sp, a1, s3<br> [0x80000488]:sw sp, 88(ra)<br>   |
|  33|[0x80002310]<br>0x0C120F10|- rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800004a0]:UMULX8 t5, t6, t4<br> [0x800004a4]:sw t5, 96(ra)<br>   |
|  34|[0x80002318]<br>0x0C120F10|- rs2_b1_val == 85<br> - rs1_b2_val == 128<br> - rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800004c4]:UMULX8 t5, t6, t4<br> [0x800004c8]:sw t5, 0(ra)<br>    |
|  35|[0x80002320]<br>0x0C120F10|- rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004e0]:UMULX8 t5, t6, t4<br> [0x800004e4]:sw t5, 8(ra)<br>    |
|  36|[0x80002328]<br>0x0C120F10|- rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004fc]:UMULX8 t5, t6, t4<br> [0x80000500]:sw t5, 16(ra)<br>   |
|  37|[0x80002330]<br>0x0C120F10|- rs2_b0_val == 251<br> - rs1_b3_val == 128<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000518]:UMULX8 t5, t6, t4<br> [0x8000051c]:sw t5, 24(ra)<br>   |
|  38|[0x80002338]<br>0x0C120F10|- rs1_b1_val == 8<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000534]:UMULX8 t5, t6, t4<br> [0x80000538]:sw t5, 32(ra)<br>   |
|  39|[0x80002340]<br>0x0C120F10|- rs2_b0_val == 247<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000550]:UMULX8 t5, t6, t4<br> [0x80000554]:sw t5, 40(ra)<br>   |
|  40|[0x80002348]<br>0x0C120F10|- rs2_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000056c]:UMULX8 t5, t6, t4<br> [0x80000570]:sw t5, 48(ra)<br>   |
|  41|[0x80002350]<br>0x0C120F10|- rs2_b1_val == 2<br> - rs1_b2_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000588]:UMULX8 t5, t6, t4<br> [0x8000058c]:sw t5, 56(ra)<br>   |
|  42|[0x80002358]<br>0x0C120F10|- rs2_b1_val == 32<br> - rs2_b0_val == 85<br> - rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005a4]:UMULX8 t5, t6, t4<br> [0x800005a8]:sw t5, 64(ra)<br>   |
|  43|[0x80002360]<br>0x0C120F10|- rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005c0]:UMULX8 t5, t6, t4<br> [0x800005c4]:sw t5, 72(ra)<br>   |
|  44|[0x80002368]<br>0x0C120F10|- rs2_b1_val == 16<br> - rs2_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800005dc]:UMULX8 t5, t6, t4<br> [0x800005e0]:sw t5, 80(ra)<br>   |
|  45|[0x80002370]<br>0x0C120F10|- rs2_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005f8]:UMULX8 t5, t6, t4<br> [0x800005fc]:sw t5, 88(ra)<br>   |
|  46|[0x80002380]<br>0x0C120F10|- rs1_b3_val == 127<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000630]:UMULX8 t5, t6, t4<br> [0x80000634]:sw t5, 104(ra)<br>  |
|  47|[0x80002388]<br>0x0C120F10|- rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000064c]:UMULX8 t5, t6, t4<br> [0x80000650]:sw t5, 112(ra)<br>  |
|  48|[0x80002390]<br>0x0C120F10|- rs1_b3_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000668]:UMULX8 t5, t6, t4<br> [0x8000066c]:sw t5, 120(ra)<br>  |
|  49|[0x80002398]<br>0x0C120F10|- rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000684]:UMULX8 t5, t6, t4<br> [0x80000688]:sw t5, 128(ra)<br>  |
|  50|[0x800023a0]<br>0x0C120F10|- rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800006a0]:UMULX8 t5, t6, t4<br> [0x800006a4]:sw t5, 136(ra)<br>  |
|  51|[0x800023a8]<br>0x0C120F10|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800006bc]:UMULX8 t5, t6, t4<br> [0x800006c0]:sw t5, 144(ra)<br>  |
|  52|[0x800023b0]<br>0x0C120F10|- rs2_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800006d8]:UMULX8 t5, t6, t4<br> [0x800006dc]:sw t5, 152(ra)<br>  |
|  53|[0x800023b8]<br>0x0C120F10|- rs2_b1_val == 251<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006f4]:UMULX8 t5, t6, t4<br> [0x800006f8]:sw t5, 160(ra)<br>  |
|  54|[0x800023c0]<br>0x0C120F10|- rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000710]:UMULX8 t5, t6, t4<br> [0x80000714]:sw t5, 168(ra)<br>  |
|  55|[0x800023c8]<br>0x0C120F10|- rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000072c]:UMULX8 t5, t6, t4<br> [0x80000730]:sw t5, 176(ra)<br>  |
|  56|[0x800023d8]<br>0x0C120F10|- rs2_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000764]:UMULX8 t5, t6, t4<br> [0x80000768]:sw t5, 192(ra)<br>  |
|  57|[0x800023e0]<br>0x0C120F10|- rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000780]:UMULX8 t5, t6, t4<br> [0x80000784]:sw t5, 200(ra)<br>  |
|  58|[0x800023e8]<br>0x0C120F10|- rs1_b3_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000079c]:UMULX8 t5, t6, t4<br> [0x800007a0]:sw t5, 208(ra)<br>  |
|  59|[0x800023f0]<br>0x0C120F10|- rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800007b8]:UMULX8 t5, t6, t4<br> [0x800007bc]:sw t5, 216(ra)<br>  |
|  60|[0x800023f8]<br>0x0C120F10|- rs1_b2_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800007d4]:UMULX8 t5, t6, t4<br> [0x800007d8]:sw t5, 224(ra)<br>  |
