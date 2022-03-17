
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
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | kdmbt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kdmbt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 162      |
| STAT1                     | 77      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000694]:KDMBT t6, t5, t4
      [0x80000698]:csrrs t5, vxsat, zero
      [0x8000069c]:sw t6, 104(ra)
 -- Signature Address: 0x80002378 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -32768
      - rs2_h0_val == -32768
      - rs1_h1_val == 1
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f8]:KDMBT t6, t5, t4
      [0x800008fc]:csrrs t5, vxsat, zero
      [0x80000900]:sw t6, 264(ra)
 -- Signature Address: 0x80002418 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -3
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a84]:KDMBT t6, t5, t4
      [0x80000a88]:csrrs t5, vxsat, zero
      [0x80000a8c]:sw t6, 368(ra)
 -- Signature Address: 0x80002480 Data: 0x00040000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 32
      - rs1_h1_val == 32
      - rs1_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac0]:KDMBT t6, t5, t4
      [0x80000ac4]:csrrs t5, vxsat, zero
      [0x80000ac8]:sw t6, 384(ra)
 -- Signature Address: 0x80002490 Data: 0xFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -2
      - rs2_h0_val == -2
      - rs1_h1_val == -1
      - rs1_h0_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmbt', 'rs1 : x11', 'rs2 : x11', 'rd : x11', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs2_h0_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000114]:KDMBT a1, a1, a1
	-[0x80000118]:csrrs a1, vxsat, zero
	-[0x8000011c]:sw a1, 0(t2)
Current Store : [0x80000120] : sw a1, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000130]:KDMBT t0, s8, s8
	-[0x80000134]:csrrs s8, vxsat, zero
	-[0x80000138]:sw t0, 8(t2)
Current Store : [0x8000013c] : sw s8, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x15', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 512', 'rs2_h0_val == -257', 'rs1_h1_val == -16385', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000150]:KDMBT s8, s1, a5
	-[0x80000154]:csrrs s1, vxsat, zero
	-[0x80000158]:sw s8, 16(t2)
Current Store : [0x8000015c] : sw s1, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -16385', 'rs2_h0_val == 8', 'rs1_h1_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000170]:KDMBT s4, sp, s4
	-[0x80000174]:csrrs sp, vxsat, zero
	-[0x80000178]:sw s4, 24(t2)
Current Store : [0x8000017c] : sw sp, 28(t2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x8', 'rd : x15', 'rs1 == rd != rs2', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000190]:KDMBT a5, a5, fp
	-[0x80000194]:csrrs a5, vxsat, zero
	-[0x80000198]:sw a5, 32(t2)
Current Store : [0x8000019c] : sw a5, 36(t2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x10', 'rd : x14', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs1_h1_val == -32768', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800001b0]:KDMBT a4, a6, a0
	-[0x800001b4]:csrrs a6, vxsat, zero
	-[0x800001b8]:sw a4, 40(t2)
Current Store : [0x800001bc] : sw a6, 44(t2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x6', 'rs2_h1_val == 0', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800001d0]:KDMBT t1, ra, zero
	-[0x800001d4]:csrrs ra, vxsat, zero
	-[0x800001d8]:sw t1, 48(t2)
Current Store : [0x800001dc] : sw ra, 52(t2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x25', 'rs2_h1_val == 21845', 'rs2_h0_val == 1', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800001f0]:KDMBT s9, tp, s5
	-[0x800001f4]:csrrs tp, vxsat, zero
	-[0x800001f8]:sw s9, 56(t2)
Current Store : [0x800001fc] : sw tp, 60(t2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x18', 'rs2_h1_val == 32767', 'rs2_h0_val == 4096', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x8000020c]:KDMBT s2, s11, a7
	-[0x80000210]:csrrs s11, vxsat, zero
	-[0x80000214]:sw s2, 64(t2)
Current Store : [0x80000218] : sw s11, 68(t2) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x28', 'rd : x1', 'rs2_h1_val == -8193', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000022c]:KDMBT ra, s2, t3
	-[0x80000230]:csrrs s2, vxsat, zero
	-[0x80000234]:sw ra, 72(t2)
Current Store : [0x80000238] : sw s2, 76(t2) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x30', 'rs2_h1_val == -4097', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000248]:KDMBT t5, fp, s1
	-[0x8000024c]:csrrs fp, vxsat, zero
	-[0x80000250]:sw t5, 80(t2)
Current Store : [0x80000254] : sw fp, 84(t2) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x23', 'rd : x16', 'rs2_h1_val == -2049', 'rs2_h0_val == -2049', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000268]:KDMBT a6, t5, s7
	-[0x8000026c]:csrrs t5, vxsat, zero
	-[0x80000270]:sw a6, 88(t2)
Current Store : [0x80000274] : sw t5, 92(t2) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x26', 'rd : x28', 'rs2_h1_val == -1025', 'rs2_h0_val == -1', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000288]:KDMBT t3, s3, s10
	-[0x8000028c]:csrrs s3, vxsat, zero
	-[0x80000290]:sw t3, 96(t2)
Current Store : [0x80000294] : sw s3, 100(t2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x2', 'rd : x3', 'rs2_h1_val == -513', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800002a8]:KDMBT gp, zero, sp
	-[0x800002ac]:csrrs zero, vxsat, zero
	-[0x800002b0]:sw gp, 104(t2)
Current Store : [0x800002b4] : sw zero, 108(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x26', 'rs2_h1_val == -257', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800002c8]:KDMBT s10, s9, a2
	-[0x800002cc]:csrrs s9, vxsat, zero
	-[0x800002d0]:sw s10, 112(t2)
Current Store : [0x800002d4] : sw s9, 116(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x16', 'rd : x27', 'rs2_h1_val == -129', 'rs2_h0_val == -129', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800002e4]:KDMBT s11, t4, a6
	-[0x800002e8]:csrrs t4, vxsat, zero
	-[0x800002ec]:sw s11, 120(t2)
Current Store : [0x800002f0] : sw t4, 124(t2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x12', 'rs2_h1_val == -65', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000308]:KDMBT a2, s7, t1
	-[0x8000030c]:csrrs s7, vxsat, zero
	-[0x80000310]:sw a2, 0(a1)
Current Store : [0x80000314] : sw s7, 4(a1) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x30', 'rd : x9', 'rs2_h1_val == -33', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000328]:KDMBT s1, s10, t5
	-[0x8000032c]:csrrs s10, vxsat, zero
	-[0x80000330]:sw s1, 8(a1)
Current Store : [0x80000334] : sw s10, 12(a1) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x8', 'rs2_h1_val == -17', 'rs2_h0_val == 64', 'rs1_h1_val == -17', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000348]:KDMBT fp, t1, t2
	-[0x8000034c]:csrrs t1, vxsat, zero
	-[0x80000350]:sw fp, 16(a1)
Current Store : [0x80000354] : sw t1, 20(a1) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x14', 'rd : x19', 'rs2_h1_val == -9', 'rs2_h0_val == -513', 'rs1_h1_val == 64', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000368]:KDMBT s3, t6, a4
	-[0x8000036c]:csrrs t6, vxsat, zero
	-[0x80000370]:sw s3, 24(a1)
Current Store : [0x80000374] : sw t6, 28(a1) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x10', 'rs2_h1_val == -5', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000388]:KDMBT a0, s6, t4
	-[0x8000038c]:csrrs s6, vxsat, zero
	-[0x80000390]:sw a0, 32(a1)
Current Store : [0x80000394] : sw s6, 36(a1) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x18', 'rd : x29', 'rs2_h1_val == -3', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x800003a8]:KDMBT t4, gp, s2
	-[0x800003ac]:csrrs gp, vxsat, zero
	-[0x800003b0]:sw t4, 40(a1)
Current Store : [0x800003b4] : sw gp, 44(a1) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x0', 'rs2_h1_val == -2', 'rs2_h0_val == -2', 'rs1_h1_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800003c4]:KDMBT zero, a3, s3
	-[0x800003c8]:csrrs a3, vxsat, zero
	-[0x800003cc]:sw zero, 48(a1)
Current Store : [0x800003d0] : sw a3, 52(a1) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x13', 'rd : x22', 'rs2_h1_val == -32768', 'rs2_h0_val == -8193', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800003e4]:KDMBT s6, s5, a3
	-[0x800003e8]:csrrs s5, vxsat, zero
	-[0x800003ec]:sw s6, 56(a1)
Current Store : [0x800003f0] : sw s5, 60(a1) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x25', 'rd : x4', 'rs2_h1_val == 16384', 'rs2_h0_val == 512', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000404]:KDMBT tp, a7, s9
	-[0x80000408]:csrrs a7, vxsat, zero
	-[0x8000040c]:sw tp, 64(a1)
Current Store : [0x80000410] : sw a7, 68(a1) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x27', 'rd : x21', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80000424]:KDMBT s5, a2, s11
	-[0x80000428]:csrrs a2, vxsat, zero
	-[0x8000042c]:sw s5, 72(a1)
Current Store : [0x80000430] : sw a2, 76(a1) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x13', 'rs2_h1_val == 4096', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000444]:KDMBT a3, a4, t6
	-[0x80000448]:csrrs a4, vxsat, zero
	-[0x8000044c]:sw a3, 80(a1)
Current Store : [0x80000450] : sw a4, 84(a1) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x23', 'rs2_h1_val == 2048', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000464]:KDMBT s7, t3, gp
	-[0x80000468]:csrrs t3, vxsat, zero
	-[0x8000046c]:sw s7, 88(a1)
Current Store : [0x80000470] : sw t3, 92(a1) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x2', 'rs2_h1_val == 1024', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000484]:KDMBT sp, t2, s6
	-[0x80000488]:csrrs t2, vxsat, zero
	-[0x8000048c]:sw sp, 96(a1)
Current Store : [0x80000490] : sw t2, 100(a1) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x5', 'rd : x7', 'rs2_h1_val == 256', 'rs1_h1_val == 256', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800004a0]:KDMBT t2, s4, t0
	-[0x800004a4]:csrrs s4, vxsat, zero
	-[0x800004a8]:sw t2, 104(a1)
Current Store : [0x800004ac] : sw s4, 108(a1) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rd : x17', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x800004c0]:KDMBT a7, t0, tp
	-[0x800004c4]:csrrs t0, vxsat, zero
	-[0x800004c8]:sw a7, 112(a1)
Current Store : [0x800004cc] : sw t0, 116(a1) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x31', 'rs2_h1_val == 64', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800004e0]:KDMBT t6, a0, ra
	-[0x800004e4]:csrrs a0, vxsat, zero
	-[0x800004e8]:sw t6, 120(a1)
Current Store : [0x800004ec] : sw a0, 124(a1) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -32768', 'rs1_h1_val == 1', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000504]:KDMBT t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 0(ra)
Current Store : [0x80000510] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000524]:KDMBT t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 8(ra)
Current Store : [0x80000530] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000544]:KDMBT t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 16(ra)
Current Store : [0x80000550] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000564]:KDMBT t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 24(ra)
Current Store : [0x80000570] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000584]:KDMBT t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 32(ra)
Current Store : [0x80000590] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800005a4]:KDMBT t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 40(ra)
Current Store : [0x800005b0] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8192', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800005c0]:KDMBT t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 48(ra)
Current Store : [0x800005cc] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005e0]:KDMBT t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 56(ra)
Current Store : [0x800005ec] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 256', 'rs1_h1_val == 32767', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000600]:KDMBT t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 64(ra)
Current Store : [0x8000060c] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000620]:KDMBT t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 72(ra)
Current Store : [0x8000062c] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000063c]:KDMBT t6, t5, t4
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 80(ra)
Current Store : [0x80000648] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000065c]:KDMBT t6, t5, t4
	-[0x80000660]:csrrs t5, vxsat, zero
	-[0x80000664]:sw t6, 88(ra)
Current Store : [0x80000668] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000067c]:KDMBT t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 96(ra)
Current Store : [0x80000688] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == -32768', 'rs2_h0_val == -32768', 'rs1_h1_val == 1', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000694]:KDMBT t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 104(ra)
Current Store : [0x800006a0] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -9', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800006b4]:KDMBT t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 112(ra)
Current Store : [0x800006c0] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -17', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800006d4]:KDMBT t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 120(ra)
Current Store : [0x800006e0] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800006f4]:KDMBT t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 128(ra)
Current Store : [0x80000700] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x8000070c]:KDMBT t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 136(ra)
Current Store : [0x80000718] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000724]:KDMBT t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 144(ra)
Current Store : [0x80000730] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000744]:KDMBT t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 152(ra)
Current Store : [0x80000750] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000764]:KDMBT t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 160(ra)
Current Store : [0x80000770] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000784]:KDMBT t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 168(ra)
Current Store : [0x80000790] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007a4]:KDMBT t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 176(ra)
Current Store : [0x800007b0] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800007c4]:KDMBT t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 184(ra)
Current Store : [0x800007d0] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800007e0]:KDMBT t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 192(ra)
Current Store : [0x800007ec] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000800]:KDMBT t6, t5, t4
	-[0x80000804]:csrrs t5, vxsat, zero
	-[0x80000808]:sw t6, 200(ra)
Current Store : [0x8000080c] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000820]:KDMBT t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 208(ra)
Current Store : [0x8000082c] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000083c]:KDMBT t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 216(ra)
Current Store : [0x80000848] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000085c]:KDMBT t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 224(ra)
Current Store : [0x80000868] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000087c]:KDMBT t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 232(ra)
Current Store : [0x80000888] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000898]:KDMBT t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 240(ra)
Current Store : [0x800008a4] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800008b8]:KDMBT t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 248(ra)
Current Store : [0x800008c4] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800008d8]:KDMBT t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 256(ra)
Current Store : [0x800008e4] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 0', 'rs2_h0_val == -3', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800008f8]:KDMBT t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 264(ra)
Current Store : [0x80000904] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000918]:KDMBT t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 272(ra)
Current Store : [0x80000924] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000938]:KDMBT t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 280(ra)
Current Store : [0x80000944] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000954]:KDMBT t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 288(ra)
Current Store : [0x80000960] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000974]:KDMBT t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 296(ra)
Current Store : [0x80000980] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000994]:KDMBT t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 304(ra)
Current Store : [0x800009a0] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800009b4]:KDMBT t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 312(ra)
Current Store : [0x800009c0] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800009d4]:KDMBT t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 320(ra)
Current Store : [0x800009e0] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009f0]:KDMBT t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 328(ra)
Current Store : [0x800009fc] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000a10]:KDMBT t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 336(ra)
Current Store : [0x80000a1c] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000a30]:KDMBT t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 344(ra)
Current Store : [0x80000a3c] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000a50]:KDMBT t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 352(ra)
Current Store : [0x80000a5c] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000a68]:KDMBT t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 360(ra)
Current Store : [0x80000a74] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32', 'rs1_h1_val == 32', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a84]:KDMBT t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 368(ra)
Current Store : [0x80000a90] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80000aa4]:KDMBT t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 376(ra)
Current Store : [0x80000ab0] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -2', 'rs2_h0_val == -2', 'rs1_h1_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000ac0]:KDMBT t6, t5, t4
	-[0x80000ac4]:csrrs t5, vxsat, zero
	-[0x80000ac8]:sw t6, 384(ra)
Current Store : [0x80000acc] : sw t5, 388(ra) -- Store: [0x80002494]:0x00000000





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

|s.no|        signature         |                                                                                                                                                                  coverpoints                                                                                                                                                                  |                                                    code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kdmbt<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h0_val == 0<br> - rs1_h0_val == 0<br>                                                                                                   |[0x80000114]:KDMBT a1, a1, a1<br> [0x80000118]:csrrs a1, vxsat, zero<br> [0x8000011c]:sw a1, 0(t2)<br>       |
|   2|[0x80002218]<br>0x000001C0|- rs1 : x24<br> - rs2 : x24<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32<br> - rs1_h1_val == 32<br>                                                                                                                                             |[0x80000130]:KDMBT t0, s8, s8<br> [0x80000134]:csrrs s8, vxsat, zero<br> [0x80000138]:sw t0, 8(t2)<br>       |
|   3|[0x80002220]<br>0xFFFDFC00|- rs1 : x9<br> - rs2 : x15<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == -257<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -129<br> |[0x80000150]:KDMBT s8, s1, a5<br> [0x80000154]:csrrs s1, vxsat, zero<br> [0x80000158]:sw s8, 16(t2)<br>      |
|   4|[0x80002228]<br>0x02008802|- rs1 : x2<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 8<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                      |[0x80000170]:KDMBT s4, sp, s4<br> [0x80000174]:csrrs sp, vxsat, zero<br> [0x80000178]:sw s4, 24(t2)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x15<br> - rs2 : x8<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                     |[0x80000190]:KDMBT a5, a5, fp<br> [0x80000194]:csrrs a5, vxsat, zero<br> [0x80000198]:sw a5, 32(t2)<br>      |
|   6|[0x80002238]<br>0xFFFFFFF4|- rs1 : x16<br> - rs2 : x10<br> - rd : x14<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                        |[0x800001b0]:KDMBT a4, a6, a0<br> [0x800001b4]:csrrs a6, vxsat, zero<br> [0x800001b8]:sw a4, 40(t2)<br>      |
|   7|[0x80002240]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x6<br> - rs2_h1_val == 0<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                    |[0x800001d0]:KDMBT t1, ra, zero<br> [0x800001d4]:csrrs ra, vxsat, zero<br> [0x800001d8]:sw t1, 48(t2)<br>    |
|   8|[0x80002248]<br>0x00015554|- rs1 : x4<br> - rs2 : x21<br> - rd : x25<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 1<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                            |[0x800001f0]:KDMBT s9, tp, s5<br> [0x800001f4]:csrrs tp, vxsat, zero<br> [0x800001f8]:sw s9, 56(t2)<br>      |
|   9|[0x80002250]<br>0xFFFC0008|- rs1 : x27<br> - rs2 : x17<br> - rd : x18<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                      |[0x8000020c]:KDMBT s2, s11, a7<br> [0x80000210]:csrrs s11, vxsat, zero<br> [0x80000214]:sw s2, 64(t2)<br>    |
|  10|[0x80002258]<br>0x0000C006|- rs1 : x18<br> - rs2 : x28<br> - rd : x1<br> - rs2_h1_val == -8193<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                 |[0x8000022c]:KDMBT ra, s2, t3<br> [0x80000230]:csrrs s2, vxsat, zero<br> [0x80000234]:sw ra, 72(t2)<br>      |
|  11|[0x80002260]<br>0x00802802|- rs1 : x8<br> - rs2 : x9<br> - rd : x30<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                               |[0x80000248]:KDMBT t5, fp, s1<br> [0x8000024c]:csrrs fp, vxsat, zero<br> [0x80000250]:sw t5, 80(t2)<br>      |
|  12|[0x80002268]<br>0x04009002|- rs1 : x30<br> - rs2 : x23<br> - rd : x16<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -2049<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                  |[0x80000268]:KDMBT a6, t5, s7<br> [0x8000026c]:csrrs t5, vxsat, zero<br> [0x80000270]:sw a6, 88(t2)<br>      |
|  13|[0x80002270]<br>0xFFFFEFFC|- rs1 : x19<br> - rs2 : x26<br> - rd : x28<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -1<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                       |[0x80000288]:KDMBT t3, s3, s10<br> [0x8000028c]:csrrs s3, vxsat, zero<br> [0x80000290]:sw t3, 96(t2)<br>     |
|  14|[0x80002278]<br>0x00000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x3<br> - rs2_h1_val == -513<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                     |[0x800002a8]:KDMBT gp, zero, sp<br> [0x800002ac]:csrrs zero, vxsat, zero<br> [0x800002b0]:sw gp, 104(t2)<br> |
|  15|[0x80002280]<br>0x00202202|- rs1 : x25<br> - rs2 : x12<br> - rd : x26<br> - rs2_h1_val == -257<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                              |[0x800002c8]:KDMBT s10, s9, a2<br> [0x800002cc]:csrrs s9, vxsat, zero<br> [0x800002d0]:sw s10, 112(t2)<br>   |
|  16|[0x80002288]<br>0x00408000|- rs1 : x29<br> - rs2 : x16<br> - rd : x27<br> - rs2_h1_val == -129<br> - rs2_h0_val == -129<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                       |[0x800002e4]:KDMBT s11, t4, a6<br> [0x800002e8]:csrrs t4, vxsat, zero<br> [0x800002ec]:sw s11, 120(t2)<br>   |
|  17|[0x80002290]<br>0xFFFF7E00|- rs1 : x23<br> - rs2 : x6<br> - rd : x12<br> - rs2_h1_val == -65<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                  |[0x80000308]:KDMBT a2, s7, t1<br> [0x8000030c]:csrrs s7, vxsat, zero<br> [0x80000310]:sw a2, 0(a1)<br>       |
|  18|[0x80002298]<br>0x00000294|- rs1 : x26<br> - rs2 : x30<br> - rd : x9<br> - rs2_h1_val == -33<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                   |[0x80000328]:KDMBT s1, s10, t5<br> [0x8000032c]:csrrs s10, vxsat, zero<br> [0x80000330]:sw s1, 8(a1)<br>     |
|  19|[0x800022a0]<br>0x00000462|- rs1 : x6<br> - rs2 : x7<br> - rd : x8<br> - rs2_h1_val == -17<br> - rs2_h0_val == 64<br> - rs1_h1_val == -17<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                     |[0x80000348]:KDMBT fp, t1, t2<br> [0x8000034c]:csrrs t1, vxsat, zero<br> [0x80000350]:sw fp, 16(a1)<br>      |
|  20|[0x800022a8]<br>0x0000005A|- rs1 : x31<br> - rs2 : x14<br> - rd : x19<br> - rs2_h1_val == -9<br> - rs2_h0_val == -513<br> - rs1_h1_val == 64<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                   |[0x80000368]:KDMBT s3, t6, a4<br> [0x8000036c]:csrrs t6, vxsat, zero<br> [0x80000370]:sw s3, 24(a1)<br>      |
|  21|[0x800022b0]<br>0xFFFB000A|- rs1 : x22<br> - rs2 : x29<br> - rd : x10<br> - rs2_h1_val == -5<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                   |[0x80000388]:KDMBT a0, s6, t4<br> [0x8000038c]:csrrs s6, vxsat, zero<br> [0x80000390]:sw a0, 32(a1)<br>      |
|  22|[0x800022b8]<br>0xFFFFFFDC|- rs1 : x3<br> - rs2 : x18<br> - rd : x29<br> - rs2_h1_val == -3<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                                                                    |[0x800003a8]:KDMBT t4, gp, s2<br> [0x800003ac]:csrrs gp, vxsat, zero<br> [0x800003b0]:sw t4, 40(a1)<br>      |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x13<br> - rs2 : x19<br> - rd : x0<br> - rs2_h1_val == -2<br> - rs2_h0_val == -2<br> - rs1_h1_val == -1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                    |[0x800003c4]:KDMBT zero, a3, s3<br> [0x800003c8]:csrrs a3, vxsat, zero<br> [0x800003cc]:sw zero, 48(a1)<br>  |
|  24|[0x800022c8]<br>0xFF800000|- rs1 : x21<br> - rs2 : x13<br> - rd : x22<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                    |[0x800003e4]:KDMBT s6, s5, a3<br> [0x800003e8]:csrrs s5, vxsat, zero<br> [0x800003ec]:sw s6, 56(a1)<br>      |
|  25|[0x800022d0]<br>0xFF7F8000|- rs1 : x17<br> - rs2 : x25<br> - rd : x4<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 512<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                       |[0x80000404]:KDMBT tp, a7, s9<br> [0x80000408]:csrrs a7, vxsat, zero<br> [0x8000040c]:sw tp, 64(a1)<br>      |
|  26|[0x800022d8]<br>0xFFDFC000|- rs1 : x12<br> - rs2 : x27<br> - rd : x21<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                        |[0x80000424]:KDMBT s5, a2, s11<br> [0x80000428]:csrrs a2, vxsat, zero<br> [0x8000042c]:sw s5, 72(a1)<br>     |
|  27|[0x800022e0]<br>0xF7FFE000|- rs1 : x14<br> - rs2 : x31<br> - rd : x13<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                               |[0x80000444]:KDMBT a3, a4, t6<br> [0x80000448]:csrrs a4, vxsat, zero<br> [0x8000044c]:sw a3, 80(a1)<br>      |
|  28|[0x800022e8]<br>0x00001000|- rs1 : x28<br> - rs2 : x3<br> - rd : x23<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                                                                               |[0x80000464]:KDMBT s7, t3, gp<br> [0x80000468]:csrrs t3, vxsat, zero<br> [0x8000046c]:sw s7, 88(a1)<br>      |
|  29|[0x800022f0]<br>0xFFFBF800|- rs1 : x7<br> - rs2 : x22<br> - rd : x2<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                   |[0x80000484]:KDMBT sp, t2, s6<br> [0x80000488]:csrrs t2, vxsat, zero<br> [0x8000048c]:sw sp, 96(a1)<br>      |
|  30|[0x800022f8]<br>0x00100000|- rs1 : x20<br> - rs2 : x5<br> - rd : x7<br> - rs2_h1_val == 256<br> - rs1_h1_val == 256<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                          |[0x800004a0]:KDMBT t2, s4, t0<br> [0x800004a4]:csrrs s4, vxsat, zero<br> [0x800004a8]:sw t2, 104(a1)<br>     |
|  31|[0x80002300]<br>0xFFFBFF00|- rs1 : x5<br> - rs2 : x4<br> - rd : x17<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                           |[0x800004c0]:KDMBT a7, t0, tp<br> [0x800004c4]:csrrs t0, vxsat, zero<br> [0x800004c8]:sw a7, 112(a1)<br>     |
|  32|[0x80002308]<br>0xFFDFFF80|- rs1 : x10<br> - rs2 : x1<br> - rd : x31<br> - rs2_h1_val == 64<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                 |[0x800004e0]:KDMBT t6, a0, ra<br> [0x800004e4]:csrrs a0, vxsat, zero<br> [0x800004e8]:sw t6, 120(a1)<br>     |
|  33|[0x80002310]<br>0x00008000|- rs2_h1_val == 16<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 1<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                               |[0x80000504]:KDMBT t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 0(ra)<br>       |
|  34|[0x80002318]<br>0xFDFF0402|- rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                       |[0x80000524]:KDMBT t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 8(ra)<br>       |
|  35|[0x80002320]<br>0xFFFFFD76|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                        |[0x80000544]:KDMBT t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 16(ra)<br>      |
|  36|[0x80002328]<br>0x00000066|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                        |[0x80000564]:KDMBT t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 24(ra)<br>      |
|  37|[0x80002330]<br>0x00000012|- rs2_h1_val == -1<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                  |[0x80000584]:KDMBT t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 32(ra)<br>      |
|  38|[0x80002338]<br>0x00000804|- rs1_h1_val == -3<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                  |[0x800005a4]:KDMBT t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 40(ra)<br>      |
|  39|[0x80002340]<br>0xFFDF8000|- rs1_h1_val == 8192<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                             |[0x800005c0]:KDMBT t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 48(ra)<br>      |
|  40|[0x80002348]<br>0xFFFFDC00|- rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                        |[0x800005e0]:KDMBT t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 56(ra)<br>      |
|  41|[0x80002350]<br>0x00000100|- rs2_h1_val == 2<br> - rs2_h0_val == 256<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                 |[0x80000600]:KDMBT t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 64(ra)<br>      |
|  42|[0x80002358]<br>0xFFE00000|- rs2_h0_val == -9<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                  |[0x80000620]:KDMBT t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 72(ra)<br>      |
|  43|[0x80002360]<br>0xFFFFFBE0|- rs1_h1_val == -2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                  |[0x8000063c]:KDMBT t6, t5, t4<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 80(ra)<br>      |
|  44|[0x80002368]<br>0x00000090|- rs2_h0_val == 21845<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                |[0x8000065c]:KDMBT t6, t5, t4<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 88(ra)<br>      |
|  45|[0x80002370]<br>0xFFFFFFF8|- rs2_h0_val == -21846<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                               |[0x8000067c]:KDMBT t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 96(ra)<br>      |
|  46|[0x80002380]<br>0xFFFFFF00|- rs1_h1_val == -9<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                  |[0x800006b4]:KDMBT t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 112(ra)<br>     |
|  47|[0x80002388]<br>0xFFFFFEF0|- rs2_h1_val == 8<br> - rs2_h0_val == -17<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                          |[0x800006d4]:KDMBT t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 120(ra)<br>     |
|  48|[0x80002390]<br>0x0001FFF8|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                          |[0x800006f4]:KDMBT t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 128(ra)<br>     |
|  49|[0x80002398]<br>0x00000C06|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                      |[0x8000070c]:KDMBT t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 136(ra)<br>     |
|  50|[0x800023a0]<br>0xFFFF4000|- rs2_h0_val == 8192<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x80000724]:KDMBT t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 144(ra)<br>     |
|  51|[0x800023a8]<br>0x00001212|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                       |[0x80000744]:KDMBT t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 152(ra)<br>     |
|  52|[0x800023b0]<br>0x0000300C|- rs2_h0_val == 1024<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                             |[0x80000764]:KDMBT t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 160(ra)<br>     |
|  53|[0x800023b8]<br>0x00000012|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                        |[0x80000784]:KDMBT t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 168(ra)<br>     |
|  54|[0x800023c0]<br>0x00008202|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                          |[0x800007a4]:KDMBT t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 176(ra)<br>     |
|  55|[0x800023c8]<br>0xFFFFAFF6|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                          |[0x800007c4]:KDMBT t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 184(ra)<br>     |
|  56|[0x800023d0]<br>0x00000000|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                     |[0x800007e0]:KDMBT t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 192(ra)<br>     |
|  57|[0x800023d8]<br>0x00040000|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                      |[0x80000800]:KDMBT t6, t5, t4<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sw t6, 200(ra)<br>     |
|  58|[0x800023e0]<br>0xFF7F0102|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                      |[0x80000820]:KDMBT t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 208(ra)<br>     |
|  59|[0x800023e8]<br>0x00000000|- rs2_h0_val == -16385<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                             |[0x8000083c]:KDMBT t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 216(ra)<br>     |
|  60|[0x800023f0]<br>0xFFFFF6EE|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                         |[0x8000085c]:KDMBT t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 224(ra)<br>     |
|  61|[0x800023f8]<br>0x00002002|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                       |[0x8000087c]:KDMBT t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 232(ra)<br>     |
|  62|[0x80002400]<br>0x00024000|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                       |[0x80000898]:KDMBT t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 240(ra)<br>     |
|  63|[0x80002408]<br>0x0003800E|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                       |[0x800008b8]:KDMBT t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 248(ra)<br>     |
|  64|[0x80002410]<br>0x0000FFFE|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                          |[0x800008d8]:KDMBT t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 256(ra)<br>     |
|  65|[0x80002420]<br>0xFFFFFFE0|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                         |[0x80000918]:KDMBT t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 272(ra)<br>     |
|  66|[0x80002428]<br>0xFFFFFFF2|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                      |[0x80000938]:KDMBT t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 280(ra)<br>     |
|  67|[0x80002430]<br>0x00000000|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                          |[0x80000954]:KDMBT t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 288(ra)<br>     |
|  68|[0x80002438]<br>0x00000030|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                          |[0x80000974]:KDMBT t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 296(ra)<br>     |
|  69|[0x80002440]<br>0x00001414|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                        |[0x80000994]:KDMBT t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 304(ra)<br>     |
|  70|[0x80002448]<br>0x00020502|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                      |[0x800009b4]:KDMBT t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 312(ra)<br>     |
|  71|[0x80002450]<br>0xFFFDFFFC|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                     |[0x800009d4]:KDMBT t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 320(ra)<br>     |
|  72|[0x80002458]<br>0x38E31C72|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                      |[0x800009f0]:KDMBT t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 328(ra)<br>     |
|  73|[0x80002460]<br>0xFFFDE000|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                        |[0x80000a10]:KDMBT t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 336(ra)<br>     |
|  74|[0x80002468]<br>0x00404202|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                      |[0x80000a30]:KDMBT t6, t5, t4<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sw t6, 344(ra)<br>     |
|  75|[0x80002470]<br>0xFFFFBFF8|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                      |[0x80000a50]:KDMBT t6, t5, t4<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sw t6, 352(ra)<br>     |
|  76|[0x80002478]<br>0x00080000|- rs1_h0_val == -32768<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                            |[0x80000a68]:KDMBT t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 360(ra)<br>     |
|  77|[0x80002488]<br>0xAAAAAAAC|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                     |[0x80000aa4]:KDMBT t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 376(ra)<br>     |
