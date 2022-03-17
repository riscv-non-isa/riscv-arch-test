
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000830')]      |
| SIG_REGION                | [('0x80002210', '0x80002420', '132 words')]      |
| COV_LABELS                | umul8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/umul8-01.S    |
| Total Number of coverpoints| 259     |
| Total Coverpoints Hit     | 253      |
| Total Signature Updates   | 130      |
| STAT1                     | 63      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 65     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000804]:UMUL8 t5, t6, t4
      [0x80000808]:sw t5, 336(ra)
 -- Signature Address: 0x80002408 Data: 0x06BF1040
 -- Redundant Coverpoints hit by the op
      - opcode : umul8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b0_val == 85
      - rs1_b3_val == 255




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:UMUL8 t5, t6, t4
      [0x80000824]:sw t5, 344(ra)
 -- Signature Address: 0x80002410 Data: 0x06BF1040
 -- Redundant Coverpoints hit by the op
      - opcode : umul8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 170
      - rs1_b3_val == 64
      - rs1_b2_val == 247
      - rs1_b1_val == 253
      - rs1_b0_val == 170






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : umul8', 'rs1 : x28', 'rs2 : x28', 'rd : x28', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b0_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000110]:UMUL8 t3, t3, t3
	-[0x80000114]:sw t3, 0(ra)
Current Store : [0x80000118] : sw t4, 4(ra) -- Store: [0x80002214]:0x00090064




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x12', 'rs1 == rs2 != rd', 'rs2_b1_val == 1', 'rs2_b0_val == 253', 'rs1_b1_val == 1', 'rs1_b0_val == 253']
Last Code Sequence : 
	-[0x8000012c]:UMUL8 a2, s1, s1
	-[0x80000130]:sw a2, 8(ra)
Current Store : [0x80000134] : sw a3, 12(ra) -- Store: [0x8000221c]:0x01440051




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 64', 'rs2_b2_val == 16', 'rs2_b1_val == 255', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x80000148]:UMUL8 t5, fp, s11
	-[0x8000014c]:sw t5, 16(ra)
Current Store : [0x80000150] : sw t6, 20(ra) -- Store: [0x80002224]:0x03000100




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs2_b2_val == 191', 'rs2_b1_val == 8', 'rs2_b0_val == 239', 'rs1_b3_val == 255', 'rs1_b2_val == 32', 'rs1_b1_val == 8', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000164]:UMUL8 tp, s9, tp
	-[0x80000168]:sw tp, 24(ra)
Current Store : [0x8000016c] : sw t0, 28(ra) -- Store: [0x8000222c]:0x0BF417E0




Last Coverpoint : ['rs1 : x22', 'rs2 : x17', 'rd : x22', 'rs1 == rd != rs2', 'rs2_b3_val == 85', 'rs2_b0_val == 254', 'rs1_b2_val == 254', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x80000180]:UMUL8 s6, s6, a7
	-[0x80000184]:sw s6, 32(ra)
Current Store : [0x80000188] : sw s7, 36(ra) -- Store: [0x80002234]:0x04FB11DC




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x26', 'rs2_b3_val == 170', 'rs1_b3_val == 127', 'rs1_b2_val == 128', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000019c]:UMUL8 s10, s3, s6
	-[0x800001a0]:sw s10, 40(ra)
Current Store : [0x800001a4] : sw s11, 44(ra) -- Store: [0x8000223c]:0x54560800




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x24', 'rs2_b3_val == 127', 'rs2_b1_val == 0', 'rs1_b3_val == 247', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x800001b8]:UMUL8 s8, t5, t1
	-[0x800001bc]:sw s8, 48(ra)
Current Store : [0x800001c0] : sw s9, 52(ra) -- Store: [0x80002244]:0x7A890098




Last Coverpoint : ['rs1 : x27', 'rs2 : x7', 'rd : x2', 'rs2_b3_val == 191', 'rs2_b2_val == 85', 'rs2_b0_val == 8', 'rs1_b3_val == 2', 'rs1_b2_val == 127', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800001d4]:UMUL8 sp, s11, t2
	-[0x800001d8]:sw sp, 56(ra)
Current Store : [0x800001dc] : sw gp, 60(ra) -- Store: [0x8000224c]:0x017E2A2B




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x18', 'rs2_b3_val == 223', 'rs1_b2_val == 251']
Last Code Sequence : 
	-[0x800001f0]:UMUL8 s2, s4, a2
	-[0x800001f4]:sw s2, 64(ra)
Current Store : [0x800001f8] : sw s3, 68(ra) -- Store: [0x80002254]:0x053A06DD




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x8', 'rs2_b3_val == 239', 'rs2_b2_val == 0', 'rs2_b0_val == 0', 'rs1_b3_val == 1', 'rs1_b1_val == 251']
Last Code Sequence : 
	-[0x8000020c]:UMUL8 fp, a1, a0
	-[0x80000210]:sw fp, 72(ra)
Current Store : [0x80000214] : sw s1, 76(ra) -- Store: [0x8000225c]:0x00EF0000




Last Coverpoint : ['rs1 : x14', 'rs2 : x2', 'rd : x6', 'rs2_b3_val == 247', 'rs2_b1_val == 247', 'rs2_b0_val == 32']
Last Code Sequence : 
	-[0x80000230]:UMUL8 t1, a4, sp
	-[0x80000234]:sw t1, 0(tp)
Current Store : [0x80000238] : sw t2, 4(tp) -- Store: [0x80002264]:0x09A605F4




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rd : x14', 'rs2_b3_val == 251', 'rs2_b1_val == 223', 'rs1_b1_val == 128', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000024c]:UMUL8 a4, ra, a1
	-[0x80000250]:sw a4, 8(tp)
Current Store : [0x80000254] : sw a5, 12(tp) -- Store: [0x8000226c]:0x7C85002D




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x20', 'rs2_b3_val == 253', 'rs2_b1_val == 64']
Last Code Sequence : 
	-[0x80000268]:UMUL8 s4, gp, s10
	-[0x8000026c]:sw s4, 16(tp)
Current Store : [0x80000270] : sw s5, 20(tp) -- Store: [0x80002274]:0x0ED30CAF




Last Coverpoint : ['rs1 : x17', 'rs2 : x31', 'rd : x16', 'rs2_b3_val == 254', 'rs2_b1_val == 254', 'rs2_b0_val == 2', 'rs1_b3_val == 253', 'rs1_b1_val == 254', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x80000284]:UMUL8 a6, a7, t6
	-[0x80000288]:sw a6, 24(tp)
Current Store : [0x8000028c] : sw a7, 28(tp) -- Store: [0x8000227c]:0xFB060000




Last Coverpoint : ['rs1 : x24', 'rs2 : x3', 'rd : x10', 'rs2_b3_val == 128', 'rs1_b2_val == 64', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800002a0]:UMUL8 a0, s8, gp
	-[0x800002a4]:sw a0, 32(tp)
Current Store : [0x800002a8] : sw a1, 36(tp) -- Store: [0x80002284]:0x070004C0




Last Coverpoint : ['rs1 : x31', 'rs2 : x1', 'rs2_b3_val == 32', 'rs2_b1_val == 191', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x800002bc]:UMUL8 s6, t6, ra
	-[0x800002c0]:sw s6, 40(tp)
Current Store : [0x800002c4] : sw s7, 44(tp) -- Store: [0x8000228c]:0x1EE00037




Last Coverpoint : ['rs1 : x7', 'rs2 : x8', 'rs2_b3_val == 16', 'rs2_b0_val == 251', 'rs1_b2_val == 239', 'rs1_b1_val == 253']
Last Code Sequence : 
	-[0x800002d8]:UMUL8 a4, t2, fp
	-[0x800002dc]:sw a4, 48(tp)
Current Store : [0x800002e0] : sw a5, 52(tp) -- Store: [0x80002294]:0x00D00689




Last Coverpoint : ['rs1 : x12', 'rs2 : x24', 'rs2_b3_val == 8', 'rs2_b2_val == 8']
Last Code Sequence : 
	-[0x800002f4]:UMUL8 sp, a2, s8
	-[0x800002f8]:sw sp, 56(tp)
Current Store : [0x800002fc] : sw gp, 60(tp) -- Store: [0x8000229c]:0x07B80058




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rs2_b3_val == 0']
Last Code Sequence : 
	-[0x80000310]:UMUL8 t5, s5, zero
	-[0x80000314]:sw t5, 64(tp)
Current Store : [0x80000318] : sw t6, 68(tp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x19', 'rs2_b3_val == 2', 'rs2_b2_val == 4', 'rs2_b0_val == 1']
Last Code Sequence : 
	-[0x8000032c]:UMUL8 s2, t0, s3
	-[0x80000330]:sw s2, 72(tp)
Current Store : [0x80000334] : sw s3, 76(tp) -- Store: [0x800022ac]:0x01FE0080




Last Coverpoint : ['rs1 : x29', 'rs2 : x16', 'rs2_b3_val == 1', 'rs2_b2_val == 64', 'rs1_b3_val == 223', 'rs1_b1_val == 191', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000348]:UMUL8 s8, t4, a6
	-[0x8000034c]:sw s8, 80(tp)
Current Store : [0x80000350] : sw s9, 84(tp) -- Store: [0x800022b4]:0x00DF3BC0




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rs2_b3_val == 255', 'rs2_b2_val == 32']
Last Code Sequence : 
	-[0x8000036c]:UMUL8 s4, a3, t0
	-[0x80000370]:sw s4, 0(ra)
Current Store : [0x80000374] : sw s5, 4(ra) -- Store: [0x800022bc]:0xDE210200




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rs2_b0_val == 64']
Last Code Sequence : 
	-[0x80000388]:UMUL8 t1, s10, t4
	-[0x8000038c]:sw t1, 8(ra)
Current Store : [0x80000390] : sw t2, 12(ra) -- Store: [0x800022c4]:0x00000084




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rs1_b0_val == 0', 'rs2_b2_val == 170', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x800003a4]:UMUL8 a6, zero, s5
	-[0x800003a8]:sw a6, 16(ra)
Current Store : [0x800003ac] : sw a7, 20(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rs2_b2_val == 127', 'rs2_b1_val == 4', 'rs2_b0_val == 16', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x800003c0]:UMUL8 s6, tp, s2
	-[0x800003c4]:sw s6, 24(ra)
Current Store : [0x800003c8] : sw s7, 28(ra) -- Store: [0x800022d4]:0x04FB08EE




Last Coverpoint : ['rs1 : x16', 'rs2 : x15', 'rs2_b2_val == 223', 'rs1_b3_val == 128', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800003dc]:UMUL8 s4, a6, a5
	-[0x800003e0]:sw s4, 32(ra)
Current Store : [0x800003e4] : sw s5, 36(ra) -- Store: [0x800022dc]:0x40006EA1




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rs2_b2_val == 239', 'rs1_b2_val == 223', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x800003f8]:UMUL8 fp, a5, a4
	-[0x800003fc]:sw fp, 40(ra)
Current Store : [0x80000400] : sw s1, 44(ra) -- Store: [0x800022e4]:0x0011D031




Last Coverpoint : ['rs1 : x2', 'rs2 : x13', 'rs2_b2_val == 247', 'rs2_b0_val == 223', 'rs1_b3_val == 239']
Last Code Sequence : 
	-[0x80000414]:UMUL8 a2, sp, a3
	-[0x80000418]:sw a2, 48(ra)
Current Store : [0x8000041c] : sw a3, 52(ra) -- Store: [0x800022ec]:0xEE11F512




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rs2_b1_val == 128', 'rs1_b3_val == 251']
Last Code Sequence : 
	-[0x80000430]:UMUL8 a6, s7, s9
	-[0x80000434]:sw a6, 56(ra)
Current Store : [0x80000438] : sw a7, 60(ra) -- Store: [0x800022f4]:0xA6AE0000




Last Coverpoint : ['rs1 : x6', 'rs2 : x30', 'rs2_b1_val == 16', 'rs1_b1_val == 170']
Last Code Sequence : 
	-[0x8000044c]:UMUL8 fp, t1, t5
	-[0x80000450]:sw fp, 64(ra)
Current Store : [0x80000454] : sw s1, 68(ra) -- Store: [0x800022fc]:0x05FA0B31




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rs2_b1_val == 127', 'rs1_b2_val == 191', 'rs1_b1_val == 223']
Last Code Sequence : 
	-[0x80000468]:UMUL8 a0, s2, s7
	-[0x8000046c]:sw a0, 72(ra)
Current Store : [0x80000470] : sw a1, 76(ra) -- Store: [0x80002304]:0x00E10CAF




Last Coverpoint : ['rs1 : x10', 'rs2 : x20', 'rs2_b2_val == 1', 'rs2_b0_val == 4', 'rs1_b1_val == 239', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000484]:UMUL8 a4, a0, s4
	-[0x80000488]:sw a4, 80(ra)
Current Store : [0x8000048c] : sw a5, 84(ra) -- Store: [0x8000230c]:0x00A80020




Last Coverpoint : ['rs2_b2_val == 2', 'rs1_b2_val == 2', 'rs1_b1_val == 247', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800004a0]:UMUL8 t5, t6, t4
	-[0x800004a4]:sw t5, 88(ra)
Current Store : [0x800004a8] : sw t6, 92(ra) -- Store: [0x80002314]:0x00B00004




Last Coverpoint : ['rs2_b2_val == 254', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x800004bc]:UMUL8 t5, t6, t4
	-[0x800004c0]:sw t5, 96(ra)
Current Store : [0x800004c4] : sw t6, 100(ra) -- Store: [0x8000231c]:0x0036FC04




Last Coverpoint : ['rs1_b1_val == 32', 'rs1_b0_val == 191']
Last Code Sequence : 
	-[0x800004d8]:UMUL8 t5, t6, t4
	-[0x800004dc]:sw t5, 104(ra)
Current Store : [0x800004e0] : sw t6, 108(ra) -- Store: [0x80002324]:0x0019004E




Last Coverpoint : ['rs2_b2_val == 128', 'rs2_b1_val == 253', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x800004f4]:UMUL8 t5, t6, t4
	-[0x800004f8]:sw t5, 112(ra)
Current Store : [0x800004fc] : sw t6, 116(ra) -- Store: [0x8000232c]:0x0C320480




Last Coverpoint : ['rs2_b0_val == 127', 'rs1_b1_val == 255']
Last Code Sequence : 
	-[0x80000510]:UMUL8 t5, t6, t4
	-[0x80000514]:sw t5, 120(ra)
Current Store : [0x80000518] : sw t6, 124(ra) -- Store: [0x80002334]:0x095603BC




Last Coverpoint : ['rs2_b0_val == 191', 'rs1_b2_val == 170', 'rs1_b0_val == 239']
Last Code Sequence : 
	-[0x8000052c]:UMUL8 t5, t6, t4
	-[0x80000530]:sw t5, 128(ra)
Current Store : [0x80000534] : sw t6, 132(ra) -- Store: [0x8000233c]:0x015601FE




Last Coverpoint : ['rs1_b0_val == 247']
Last Code Sequence : 
	-[0x80000548]:UMUL8 t5, t6, t4
	-[0x8000054c]:sw t5, 136(ra)
Current Store : [0x80000550] : sw t6, 140(ra) -- Store: [0x80002344]:0x11BD0FAE




Last Coverpoint : ['rs2_b1_val == 2']
Last Code Sequence : 
	-[0x80000564]:UMUL8 t5, t6, t4
	-[0x80000568]:sw t5, 144(ra)
Current Store : [0x8000056c] : sw t6, 148(ra) -- Store: [0x8000234c]:0x09000D6E




Last Coverpoint : ['rs2_b3_val == 4', 'rs2_b0_val == 170']
Last Code Sequence : 
	-[0x80000580]:UMUL8 t5, t6, t4
	-[0x80000584]:sw t5, 152(ra)
Current Store : [0x80000588] : sw t6, 156(ra) -- Store: [0x80002354]:0x00140080




Last Coverpoint : ['rs2_b0_val == 247']
Last Code Sequence : 
	-[0x8000059c]:UMUL8 t5, t6, t4
	-[0x800005a0]:sw t5, 160(ra)
Current Store : [0x800005a4] : sw t6, 164(ra) -- Store: [0x8000235c]:0x00FB06B7




Last Coverpoint : ['rs2_b0_val == 128', 'rs1_b2_val == 247']
Last Code Sequence : 
	-[0x800005b8]:UMUL8 t5, t6, t4
	-[0x800005bc]:sw t5, 168(ra)
Current Store : [0x800005c0] : sw t6, 172(ra) -- Store: [0x80002364]:0x000002E5




Last Coverpoint : ['rs2_b0_val == 255', 'rs1_b3_val == 254', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x800005d4]:UMUL8 t5, t6, t4
	-[0x800005d8]:sw t5, 176(ra)
Current Store : [0x800005dc] : sw t6, 180(ra) -- Store: [0x8000236c]:0xFD020028




Last Coverpoint : ['rs1_b3_val == 170']
Last Code Sequence : 
	-[0x800005f0]:UMUL8 t5, t6, t4
	-[0x800005f4]:sw t5, 184(ra)
Current Store : [0x800005f8] : sw t6, 188(ra) -- Store: [0x80002374]:0x55000000




Last Coverpoint : ['rs1_b3_val == 191']
Last Code Sequence : 
	-[0x8000060c]:UMUL8 t5, t6, t4
	-[0x80000610]:sw t5, 192(ra)
Current Store : [0x80000614] : sw t6, 196(ra) -- Store: [0x8000237c]:0xBE410140




Last Coverpoint : ['rs1_b3_val == 64']
Last Code Sequence : 
	-[0x80000628]:UMUL8 t5, t6, t4
	-[0x8000062c]:sw t5, 200(ra)
Current Store : [0x80000630] : sw t6, 204(ra) -- Store: [0x80002384]:0x03405EC1




Last Coverpoint : ['rs1_b0_val == 128']
Last Code Sequence : 
	-[0x80000644]:UMUL8 t5, t6, t4
	-[0x80000648]:sw t5, 208(ra)
Current Store : [0x8000064c] : sw t6, 212(ra) -- Store: [0x8000238c]:0x11EE00E0




Last Coverpoint : ['rs2_b1_val == 32', 'rs1_b3_val == 16', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000660]:UMUL8 t5, t6, t4
	-[0x80000664]:sw t5, 216(ra)
Current Store : [0x80000668] : sw t6, 220(ra) -- Store: [0x80002394]:0x00400AA0




Last Coverpoint : ['rs2_b2_val == 251']
Last Code Sequence : 
	-[0x8000067c]:UMUL8 t5, t6, t4
	-[0x80000680]:sw t5, 224(ra)
Current Store : [0x80000684] : sw t6, 228(ra) -- Store: [0x8000239c]:0x0ED302F1




Last Coverpoint : ['rs2_b2_val == 253']
Last Code Sequence : 
	-[0x80000698]:UMUL8 t5, t6, t4
	-[0x8000069c]:sw t5, 232(ra)
Current Store : [0x800006a0] : sw t6, 236(ra) -- Store: [0x800023a4]:0x037912C7




Last Coverpoint : ['rs1_b3_val == 32', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x800006b4]:UMUL8 t5, t6, t4
	-[0x800006b8]:sw t5, 240(ra)
Current Store : [0x800006bc] : sw t6, 244(ra) -- Store: [0x800023ac]:0x02200009




Last Coverpoint : ['rs1_b0_val == 1']
Last Code Sequence : 
	-[0x800006d0]:UMUL8 t5, t6, t4
	-[0x800006d4]:sw t5, 248(ra)
Current Store : [0x800006d8] : sw t6, 252(ra) -- Store: [0x800023b4]:0x000C0000




Last Coverpoint : ['rs1_b0_val == 255']
Last Code Sequence : 
	-[0x800006ec]:UMUL8 t5, t6, t4
	-[0x800006f0]:sw t5, 256(ra)
Current Store : [0x800006f4] : sw t6, 260(ra) -- Store: [0x800023bc]:0x00100038




Last Coverpoint : ['rs1_b3_val == 8']
Last Code Sequence : 
	-[0x80000708]:UMUL8 t5, t6, t4
	-[0x8000070c]:sw t5, 264(ra)
Current Store : [0x80000710] : sw t6, 268(ra) -- Store: [0x800023c4]:0x00200030




Last Coverpoint : ['rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000724]:UMUL8 t5, t6, t4
	-[0x80000728]:sw t5, 272(ra)
Current Store : [0x8000072c] : sw t6, 276(ra) -- Store: [0x800023cc]:0x00300100




Last Coverpoint : ['rs2_b1_val == 85', 'rs1_b2_val == 255']
Last Code Sequence : 
	-[0x80000740]:UMUL8 t5, t6, t4
	-[0x80000744]:sw t5, 280(ra)
Current Store : [0x80000748] : sw t6, 284(ra) -- Store: [0x800023d4]:0x000012ED




Last Coverpoint : ['rs1_b2_val == 85']
Last Code Sequence : 
	-[0x8000075c]:UMUL8 t5, t6, t4
	-[0x80000760]:sw t5, 288(ra)
Current Store : [0x80000764] : sw t6, 292(ra) -- Store: [0x800023dc]:0x54010451




Last Coverpoint : ['rs2_b1_val == 170']
Last Code Sequence : 
	-[0x80000778]:UMUL8 t5, t6, t4
	-[0x8000077c]:sw t5, 296(ra)
Current Store : [0x80000780] : sw t6, 300(ra) -- Store: [0x800023e4]:0x00EE03F8




Last Coverpoint : ['rs2_b1_val == 251']
Last Code Sequence : 
	-[0x80000794]:UMUL8 t5, t6, t4
	-[0x80000798]:sw t5, 304(ra)
Current Store : [0x8000079c] : sw t6, 308(ra) -- Store: [0x800023ec]:0x54AB00F0




Last Coverpoint : ['rs1_b2_val == 253']
Last Code Sequence : 
	-[0x800007b0]:UMUL8 t5, t6, t4
	-[0x800007b4]:sw t5, 312(ra)
Current Store : [0x800007b8] : sw t6, 316(ra) -- Store: [0x800023f4]:0x00AB04F1




Last Coverpoint : ['rs2_b1_val == 239', 'rs1_b0_val == 170']
Last Code Sequence : 
	-[0x800007cc]:UMUL8 t5, t6, t4
	-[0x800007d0]:sw t5, 320(ra)
Current Store : [0x800007d4] : sw t6, 324(ra) -- Store: [0x800023fc]:0x027B01E0




Last Coverpoint : ['rs2_b2_val == 255']
Last Code Sequence : 
	-[0x800007e8]:UMUL8 t5, t6, t4
	-[0x800007ec]:sw t5, 328(ra)
Current Store : [0x800007f0] : sw t6, 332(ra) -- Store: [0x80002404]:0xF41B11EE




Last Coverpoint : ['opcode : umul8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b0_val == 0', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs2_b0_val == 85', 'rs1_b3_val == 255']
Last Code Sequence : 
	-[0x80000804]:UMUL8 t5, t6, t4
	-[0x80000808]:sw t5, 336(ra)
Current Store : [0x8000080c] : sw t6, 340(ra) -- Store: [0x8000240c]:0x02FD0032




Last Coverpoint : ['opcode : umul8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == 170', 'rs1_b3_val == 64', 'rs1_b2_val == 247', 'rs1_b1_val == 253', 'rs1_b0_val == 170']
Last Code Sequence : 
	-[0x80000820]:UMUL8 t5, t6, t4
	-[0x80000824]:sw t5, 344(ra)
Current Store : [0x80000828] : sw t6, 348(ra) -- Store: [0x80002414]:0x0300A406





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

|s.no|        signature         |                                                                                                                                                                                                         coverpoints                                                                                                                                                                                                         |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0x030A1355|- opcode : umul8<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b0_val == 85<br> - rs1_b0_val == 85<br> |[0x80000110]:UMUL8 t3, t3, t3<br> [0x80000114]:sw t3, 0(ra)<br>    |
|   2|[0x80002218]<br>0xD5BFDDB7|- rs1 : x9<br> - rs2 : x9<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs2_b1_val == 1<br> - rs2_b0_val == 253<br> - rs1_b1_val == 1<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                              |[0x8000012c]:UMUL8 a2, s1, s1<br> [0x80000130]:sw a2, 8(ra)<br>    |
|   3|[0x80002220]<br>0xF76DF56F|- rs1 : x8<br> - rs2 : x27<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 64<br> - rs2_b2_val == 16<br> - rs2_b1_val == 255<br> - rs1_b2_val == 16<br>                      |[0x80000148]:UMUL8 t5, fp, s11<br> [0x8000014c]:sw t5, 16(ra)<br>  |
|   4|[0x80002228]<br>0x0CBF08EF|- rs1 : x25<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b2_val == 191<br> - rs2_b1_val == 8<br> - rs2_b0_val == 239<br> - rs1_b3_val == 255<br> - rs1_b2_val == 32<br> - rs1_b1_val == 8<br> - rs1_b0_val == 127<br>                                                                                                                  |[0x80000164]:UMUL8 tp, s9, tp<br> [0x80000168]:sw tp, 24(ra)<br>   |
|   5|[0x80002230]<br>0x0FFE07FE|- rs1 : x22<br> - rs2 : x17<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_b3_val == 85<br> - rs2_b0_val == 254<br> - rs1_b2_val == 254<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                         |[0x80000180]:UMUL8 s6, s6, a7<br> [0x80000184]:sw s6, 32(ra)<br>   |
|   6|[0x80002238]<br>0x76DF56FF|- rs1 : x19<br> - rs2 : x22<br> - rd : x26<br> - rs2_b3_val == 170<br> - rs1_b3_val == 127<br> - rs1_b2_val == 128<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                |[0x8000019c]:UMUL8 s10, s3, s6<br> [0x800001a0]:sw s10, 40(ra)<br> |
|   7|[0x80002240]<br>0xDB7D5BFD|- rs1 : x30<br> - rs2 : x6<br> - rd : x24<br> - rs2_b3_val == 127<br> - rs2_b1_val == 0<br> - rs1_b3_val == 247<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                    |[0x800001b8]:UMUL8 s8, t5, t1<br> [0x800001bc]:sw s8, 48(ra)<br>   |
|   8|[0x80002248]<br>0xFF76DF56|- rs1 : x27<br> - rs2 : x7<br> - rd : x2<br> - rs2_b3_val == 191<br> - rs2_b2_val == 85<br> - rs2_b0_val == 8<br> - rs1_b3_val == 2<br> - rs1_b2_val == 127<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                        |[0x800001d4]:UMUL8 sp, s11, t2<br> [0x800001d8]:sw sp, 56(ra)<br>  |
|   9|[0x80002250]<br>0xDF56FF76|- rs1 : x20<br> - rs2 : x12<br> - rd : x18<br> - rs2_b3_val == 223<br> - rs1_b2_val == 251<br>                                                                                                                                                                                                                                                                                                                               |[0x800001f0]:UMUL8 s2, s4, a2<br> [0x800001f4]:sw s2, 64(ra)<br>   |
|  10|[0x80002258]<br>0x0C101355|- rs1 : x11<br> - rs2 : x10<br> - rd : x8<br> - rs2_b3_val == 239<br> - rs2_b2_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 1<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                              |[0x8000020c]:UMUL8 fp, a1, a0<br> [0x80000210]:sw fp, 72(ra)<br>   |
|  11|[0x80002260]<br>0x7F130055|- rs1 : x14<br> - rs2 : x2<br> - rd : x6<br> - rs2_b3_val == 247<br> - rs2_b1_val == 247<br> - rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                          |[0x80000230]:UMUL8 t1, a4, sp<br> [0x80000234]:sw t1, 0(tp)<br>    |
|  12|[0x80002268]<br>0x0A7F110B|- rs1 : x1<br> - rs2 : x11<br> - rd : x14<br> - rs2_b3_val == 251<br> - rs2_b1_val == 223<br> - rs1_b1_val == 128<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                  |[0x8000024c]:UMUL8 a4, ra, a1<br> [0x80000250]:sw a4, 8(tp)<br>    |
|  13|[0x80002270]<br>0x06FB0107|- rs1 : x3<br> - rs2 : x26<br> - rd : x20<br> - rs2_b3_val == 253<br> - rs2_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000268]:UMUL8 s4, gp, s10<br> [0x8000026c]:sw s4, 16(tp)<br>  |
|  14|[0x80002278]<br>0x7D5BFDDB|- rs1 : x17<br> - rs2 : x31<br> - rd : x16<br> - rs2_b3_val == 254<br> - rs2_b1_val == 254<br> - rs2_b0_val == 2<br> - rs1_b3_val == 253<br> - rs1_b1_val == 254<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                 |[0x80000284]:UMUL8 a6, a7, t6<br> [0x80000288]:sw a6, 24(tp)<br>   |
|  15|[0x80002280]<br>0xEF000D00|- rs1 : x24<br> - rs2 : x3<br> - rd : x10<br> - rs2_b3_val == 128<br> - rs1_b2_val == 64<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                          |[0x800002a0]:UMUL8 a0, s8, gp<br> [0x800002a4]:sw a0, 32(tp)<br>   |
|  16|[0x80002288]<br>0xAA100E13|- rs1 : x31<br> - rs2 : x1<br> - rs2_b3_val == 32<br> - rs2_b1_val == 191<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                        |[0x800002bc]:UMUL8 s6, t6, ra<br> [0x800002c0]:sw s6, 40(tp)<br>   |
|  17|[0x80002290]<br>0x0A7F110B|- rs1 : x7<br> - rs2 : x8<br> - rs2_b3_val == 16<br> - rs2_b0_val == 251<br> - rs1_b2_val == 239<br> - rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                 |[0x800002d8]:UMUL8 a4, t2, fp<br> [0x800002dc]:sw a4, 48(tp)<br>   |
|  18|[0x80002298]<br>0xF70CF720|- rs1 : x12<br> - rs2 : x24<br> - rs2_b3_val == 8<br> - rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                  |[0x800002f4]:UMUL8 sp, a2, s8<br> [0x800002f8]:sw sp, 56(tp)<br>   |
|  19|[0x800022a0]<br>0xF7080655|- rs1 : x21<br> - rs2 : x0<br> - rs2_b3_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000310]:UMUL8 t5, s5, zero<br> [0x80000314]:sw t5, 64(tp)<br> |
|  20|[0x800022a8]<br>0xDF56FF76|- rs1 : x5<br> - rs2 : x19<br> - rs2_b3_val == 2<br> - rs2_b2_val == 4<br> - rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                             |[0x8000032c]:UMUL8 s2, t0, s3<br> [0x80000330]:sw s2, 72(tp)<br>   |
|  21|[0x800022b0]<br>0x08084002|- rs1 : x29<br> - rs2 : x16<br> - rs2_b3_val == 1<br> - rs2_b2_val == 64<br> - rs1_b3_val == 223<br> - rs1_b1_val == 191<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                          |[0x80000348]:UMUL8 s8, t4, a6<br> [0x8000034c]:sw s8, 80(tp)<br>   |
|  22|[0x800022b8]<br>0x06FB0107|- rs1 : x13<br> - rs2 : x5<br> - rs2_b3_val == 255<br> - rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                |[0x8000036c]:UMUL8 s4, a3, t0<br> [0x80000370]:sw s4, 0(ra)<br>    |
|  23|[0x800022c0]<br>0x7F130055|- rs1 : x26<br> - rs2 : x29<br> - rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x80000388]:UMUL8 t1, s10, t4<br> [0x8000038c]:sw t1, 8(ra)<br>   |
|  24|[0x800022c8]<br>0x0140050F|- rs1 : x0<br> - rs2 : x21<br> - rs1_b0_val == 0<br> - rs2_b2_val == 170<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                               |[0x800003a4]:UMUL8 a6, zero, s5<br> [0x800003a8]:sw a6, 16(ra)<br> |
|  25|[0x800022d0]<br>0xAA100E13|- rs1 : x4<br> - rs2 : x18<br> - rs2_b2_val == 127<br> - rs2_b1_val == 4<br> - rs2_b0_val == 16<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                   |[0x800003c0]:UMUL8 s6, tp, s2<br> [0x800003c4]:sw s6, 24(ra)<br>   |
|  26|[0x800022d8]<br>0x06FB0107|- rs1 : x16<br> - rs2 : x15<br> - rs2_b2_val == 223<br> - rs1_b3_val == 128<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x800003dc]:UMUL8 s4, a6, a5<br> [0x800003e0]:sw s4, 32(ra)<br>   |
|  27|[0x800022e0]<br>0x10070FFB|- rs1 : x15<br> - rs2 : x14<br> - rs2_b2_val == 239<br> - rs1_b2_val == 223<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                      |[0x800003f8]:UMUL8 fp, a5, a4<br> [0x800003fc]:sw fp, 40(ra)<br>   |
|  28|[0x800022e8]<br>0xF70B06FE|- rs1 : x2<br> - rs2 : x13<br> - rs2_b2_val == 247<br> - rs2_b0_val == 223<br> - rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                       |[0x80000414]:UMUL8 a2, sp, a3<br> [0x80000418]:sw a2, 48(ra)<br>   |
|  29|[0x800022f0]<br>0x807F0702|- rs1 : x23<br> - rs2 : x25<br> - rs2_b1_val == 128<br> - rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                              |[0x80000430]:UMUL8 a6, s7, s9<br> [0x80000434]:sw a6, 56(ra)<br>   |
|  30|[0x800022f8]<br>0x10070FFB|- rs1 : x6<br> - rs2 : x30<br> - rs2_b1_val == 16<br> - rs1_b1_val == 170<br>                                                                                                                                                                                                                                                                                                                                                |[0x8000044c]:UMUL8 fp, t1, t5<br> [0x80000450]:sw fp, 64(ra)<br>   |
|  31|[0x80002300]<br>0xEF000D00|- rs1 : x18<br> - rs2 : x23<br> - rs2_b1_val == 127<br> - rs1_b2_val == 191<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                      |[0x80000468]:UMUL8 a0, s2, s7<br> [0x8000046c]:sw a0, 72(ra)<br>   |
|  32|[0x80002308]<br>0x11EF07FB|- rs1 : x10<br> - rs2 : x20<br> - rs2_b2_val == 1<br> - rs2_b0_val == 4<br> - rs1_b1_val == 239<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                   |[0x80000484]:UMUL8 a4, a0, s4<br> [0x80000488]:sw a4, 80(ra)<br>   |
|  33|[0x80002310]<br>0x06BF1040|- rs2_b2_val == 2<br> - rs1_b2_val == 2<br> - rs1_b1_val == 247<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                    |[0x800004a0]:UMUL8 t5, t6, t4<br> [0x800004a4]:sw t5, 88(ra)<br>   |
|  34|[0x80002318]<br>0x06BF1040|- rs2_b2_val == 254<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x800004bc]:UMUL8 t5, t6, t4<br> [0x800004c0]:sw t5, 96(ra)<br>   |
|  35|[0x80002320]<br>0x06BF1040|- rs1_b1_val == 32<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x800004d8]:UMUL8 t5, t6, t4<br> [0x800004dc]:sw t5, 104(ra)<br>  |
|  36|[0x80002328]<br>0x06BF1040|- rs2_b2_val == 128<br> - rs2_b1_val == 253<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800004f4]:UMUL8 t5, t6, t4<br> [0x800004f8]:sw t5, 112(ra)<br>  |
|  37|[0x80002330]<br>0x06BF1040|- rs2_b0_val == 127<br> - rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000510]:UMUL8 t5, t6, t4<br> [0x80000514]:sw t5, 120(ra)<br>  |
|  38|[0x80002338]<br>0x06BF1040|- rs2_b0_val == 191<br> - rs1_b2_val == 170<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                      |[0x8000052c]:UMUL8 t5, t6, t4<br> [0x80000530]:sw t5, 128(ra)<br>  |
|  39|[0x80002340]<br>0x06BF1040|- rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000548]:UMUL8 t5, t6, t4<br> [0x8000054c]:sw t5, 136(ra)<br>  |
|  40|[0x80002348]<br>0x06BF1040|- rs2_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000564]:UMUL8 t5, t6, t4<br> [0x80000568]:sw t5, 144(ra)<br>  |
|  41|[0x80002350]<br>0x06BF1040|- rs2_b3_val == 4<br> - rs2_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000580]:UMUL8 t5, t6, t4<br> [0x80000584]:sw t5, 152(ra)<br>  |
|  42|[0x80002358]<br>0x06BF1040|- rs2_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000059c]:UMUL8 t5, t6, t4<br> [0x800005a0]:sw t5, 160(ra)<br>  |
|  43|[0x80002360]<br>0x06BF1040|- rs2_b0_val == 128<br> - rs1_b2_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x800005b8]:UMUL8 t5, t6, t4<br> [0x800005bc]:sw t5, 168(ra)<br>  |
|  44|[0x80002368]<br>0x06BF1040|- rs2_b0_val == 255<br> - rs1_b3_val == 254<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800005d4]:UMUL8 t5, t6, t4<br> [0x800005d8]:sw t5, 176(ra)<br>  |
|  45|[0x80002370]<br>0x06BF1040|- rs1_b3_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005f0]:UMUL8 t5, t6, t4<br> [0x800005f4]:sw t5, 184(ra)<br>  |
|  46|[0x80002378]<br>0x06BF1040|- rs1_b3_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000060c]:UMUL8 t5, t6, t4<br> [0x80000610]:sw t5, 192(ra)<br>  |
|  47|[0x80002380]<br>0x06BF1040|- rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000628]:UMUL8 t5, t6, t4<br> [0x8000062c]:sw t5, 200(ra)<br>  |
|  48|[0x80002388]<br>0x06BF1040|- rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000644]:UMUL8 t5, t6, t4<br> [0x80000648]:sw t5, 208(ra)<br>  |
|  49|[0x80002390]<br>0x06BF1040|- rs2_b1_val == 32<br> - rs1_b3_val == 16<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                         |[0x80000660]:UMUL8 t5, t6, t4<br> [0x80000664]:sw t5, 216(ra)<br>  |
|  50|[0x80002398]<br>0x06BF1040|- rs2_b2_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000067c]:UMUL8 t5, t6, t4<br> [0x80000680]:sw t5, 224(ra)<br>  |
|  51|[0x800023a0]<br>0x06BF1040|- rs2_b2_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000698]:UMUL8 t5, t6, t4<br> [0x8000069c]:sw t5, 232(ra)<br>  |
|  52|[0x800023a8]<br>0x06BF1040|- rs1_b3_val == 32<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x800006b4]:UMUL8 t5, t6, t4<br> [0x800006b8]:sw t5, 240(ra)<br>  |
|  53|[0x800023b0]<br>0x06BF1040|- rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006d0]:UMUL8 t5, t6, t4<br> [0x800006d4]:sw t5, 248(ra)<br>  |
|  54|[0x800023b8]<br>0x06BF1040|- rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006ec]:UMUL8 t5, t6, t4<br> [0x800006f0]:sw t5, 256(ra)<br>  |
|  55|[0x800023c0]<br>0x06BF1040|- rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000708]:UMUL8 t5, t6, t4<br> [0x8000070c]:sw t5, 264(ra)<br>  |
|  56|[0x800023c8]<br>0x06BF1040|- rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000724]:UMUL8 t5, t6, t4<br> [0x80000728]:sw t5, 272(ra)<br>  |
|  57|[0x800023d0]<br>0x06BF1040|- rs2_b1_val == 85<br> - rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x80000740]:UMUL8 t5, t6, t4<br> [0x80000744]:sw t5, 280(ra)<br>  |
|  58|[0x800023d8]<br>0x06BF1040|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000075c]:UMUL8 t5, t6, t4<br> [0x80000760]:sw t5, 288(ra)<br>  |
|  59|[0x800023e0]<br>0x06BF1040|- rs2_b1_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000778]:UMUL8 t5, t6, t4<br> [0x8000077c]:sw t5, 296(ra)<br>  |
|  60|[0x800023e8]<br>0x06BF1040|- rs2_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000794]:UMUL8 t5, t6, t4<br> [0x80000798]:sw t5, 304(ra)<br>  |
|  61|[0x800023f0]<br>0x06BF1040|- rs1_b2_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800007b0]:UMUL8 t5, t6, t4<br> [0x800007b4]:sw t5, 312(ra)<br>  |
|  62|[0x800023f8]<br>0x06BF1040|- rs2_b1_val == 239<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x800007cc]:UMUL8 t5, t6, t4<br> [0x800007d0]:sw t5, 320(ra)<br>  |
|  63|[0x80002400]<br>0x06BF1040|- rs2_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800007e8]:UMUL8 t5, t6, t4<br> [0x800007ec]:sw t5, 328(ra)<br>  |
