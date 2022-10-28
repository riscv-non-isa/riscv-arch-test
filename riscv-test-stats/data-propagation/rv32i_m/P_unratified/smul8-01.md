
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007f0')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '128 words')]      |
| COV_LABELS                | smul8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smul8-01.S    |
| Total Number of coverpoints| 275     |
| Total Coverpoints Hit     | 269      |
| Total Signature Updates   | 126      |
| STAT1                     | 60      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 63     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000640]:SMUL8 t5, t6, t4
      [0x80000644]:sw t5, 128(ra)
 -- Signature Address: 0x80002388 Data: 0xFFFC8003
 -- Redundant Coverpoints hit by the op
      - opcode : smul8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == 64
      - rs2_b1_val == -1
      - rs1_b1_val == 0
      - rs1_b0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006cc]:SMUL8 t5, t6, t4
      [0x800006d0]:sw t5, 168(ra)
 -- Signature Address: 0x800023b0 Data: 0xFFFC8003
 -- Redundant Coverpoints hit by the op
      - opcode : smul8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == -65
      - rs2_b2_val == -2
      - rs2_b1_val == -3
      - rs1_b0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c4]:SMUL8 t5, t6, t4
      [0x800007c8]:sw t5, 240(ra)
 -- Signature Address: 0x800023f8 Data: 0xFFFC8003
 -- Redundant Coverpoints hit by the op
      - opcode : smul8
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b1_val == 4
      - rs1_b2_val == -9
      - rs1_b1_val == 64
      - rs1_b0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smul8', 'rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == -2', 'rs2_b0_val == 2', 'rs1_b3_val == -2', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000110]:SMUL8 a2, a2, a2
	-[0x80000114]:sw a2, 0(fp)
Current Store : [0x80000118] : sw a3, 4(fp) -- Store: [0x80002214]:0x00040F81




Last Coverpoint : ['rs1 : x16', 'rs2 : x16', 'rd : x24', 'rs1 == rs2 != rd', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs2_b1_val == 4', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x80000128]:SMUL8 s8, a6, a6
	-[0x8000012c]:sw s8, 8(fp)
Current Store : [0x80000130] : sw s9, 12(fp) -- Store: [0x8000221c]:0x00100064




Last Coverpoint : ['rs1 : x27', 'rs2 : x24', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b1_val == 2', 'rs1_b3_val == -86', 'rs1_b2_val == 4', 'rs1_b1_val == 2', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000144]:SMUL8 s2, s11, s8
	-[0x80000148]:sw s2, 16(fp)
Current Store : [0x8000014c] : sw s3, 20(fp) -- Store: [0x80002224]:0xFCFAFFE4




Last Coverpoint : ['rs1 : x28', 'rs2 : x30', 'rd : x30', 'rs2 == rd != rs1', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs2_b3_val == -3', 'rs2_b2_val == -9', 'rs2_b0_val == 0', 'rs1_b3_val == 4', 'rs1_b2_val == 127', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000160]:SMUL8 t5, t3, t5
	-[0x80000164]:sw t5, 24(fp)
Current Store : [0x80000168] : sw t6, 28(fp) -- Store: [0x8000222c]:0xFFF4FB89




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x4', 'rs1 == rd != rs2', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b3_val == 127', 'rs2_b1_val == -2', 'rs1_b2_val == 32', 'rs1_b1_val == -86', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x8000017c]:SMUL8 tp, tp, s4
	-[0x80000180]:sw tp, 32(fp)
Current Store : [0x80000184] : sw t0, 36(fp) -- Store: [0x80002234]:0x017DFF80




Last Coverpoint : ['rs1 : x30', 'rs2 : x13', 'rd : x20', 'rs2_b3_val == 2', 'rs2_b0_val == -65', 'rs1_b3_val == -1', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000198]:SMUL8 s4, t5, a3
	-[0x8000019c]:sw s4, 40(fp)
Current Store : [0x800001a0] : sw s5, 44(fp) -- Store: [0x8000223c]:0xFFFE0010




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x2', 'rs2_b2_val == 127', 'rs2_b1_val == -128', 'rs2_b0_val == 16', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x800001b4]:SMUL8 sp, a3, a4
	-[0x800001b8]:sw sp, 48(fp)
Current Store : [0x800001bc] : sw gp, 52(fp) -- Store: [0x80002244]:0x001801FC




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x22', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs2_b2_val == -33', 'rs2_b1_val == 85', 'rs1_b3_val == 0', 'rs1_b2_val == -1', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x800001d0]:SMUL8 s6, a4, s9
	-[0x800001d4]:sw s6, 56(fp)
Current Store : [0x800001d8] : sw s7, 60(fp) -- Store: [0x8000224c]:0x00000021




Last Coverpoint : ['rs1 : x25', 'rs2 : x1', 'rd : x14', 'rs2_b3_val == -86', 'rs2_b0_val == 32', 'rs1_b3_val == 64', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x800001ec]:SMUL8 a4, s9, ra
	-[0x800001f0]:sw a4, 64(fp)
Current Store : [0x800001f4] : sw a5, 68(fp) -- Store: [0x80002254]:0xEA80001E




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x16', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b1_val == -1', 'rs2_b0_val == -1', 'rs1_b2_val == -3', 'rs1_b1_val == -5', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x80000208]:SMUL8 a6, s4, sp
	-[0x8000020c]:sw a6, 72(fp)
Current Store : [0x80000210] : sw a7, 76(fp) -- Store: [0x8000225c]:0xFE08FFEB




Last Coverpoint : ['rs1 : x9', 'rs2 : x28', 'rd : x26', 'rs2_b3_val == 85', 'rs2_b1_val == -9', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80000224]:SMUL8 s10, s1, t3
	-[0x80000228]:sw s10, 80(fp)
Current Store : [0x8000022c] : sw s11, 84(fp) -- Store: [0x80002264]:0xFE57FB89




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x6', 'rs2_b3_val == -65', 'rs2_b0_val == 4', 'rs1_b3_val == 8']
Last Code Sequence : 
	-[0x80000240]:SMUL8 t1, a1, s6
	-[0x80000244]:sw t1, 88(fp)
Current Store : [0x80000248] : sw t2, 92(fp) -- Store: [0x8000226c]:0xFDF8FE80




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x28', 'rs2_b3_val == -33', 'rs1_b2_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x80000264]:SMUL8 t3, zero, a5
	-[0x80000268]:sw t3, 0(a2)
Current Store : [0x8000026c] : sw t4, 4(a2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x0', 'rd : x8', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x80000280]:SMUL8 fp, a0, zero
	-[0x80000284]:sw fp, 8(a2)
Current Store : [0x80000288] : sw s1, 12(a2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x10', 'rs2_b3_val == -9', 'rs2_b1_val == -17', 'rs2_b0_val == -128', 'rs1_b1_val == 64', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000029c]:SMUL8 a0, t6, s2
	-[0x800002a0]:sw a0, 16(a2)
Current Store : [0x800002a4] : sw a1, 20(a2) -- Store: [0x80002284]:0x00120379




Last Coverpoint : ['rs1 : x5', 'rs2 : x19', 'rs2_b3_val == -5', 'rs1_b3_val == -3', 'rs1_b1_val == 32', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x800002b8]:SMUL8 s2, t0, s3
	-[0x800002bc]:sw s2, 24(a2)
Current Store : [0x800002c0] : sw s3, 28(a2) -- Store: [0x8000228c]:0x000FFBE0




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rs2_b3_val == -128', 'rs2_b1_val == 16', 'rs2_b0_val == -5', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x800002d4]:SMUL8 t1, fp, t2
	-[0x800002d8]:sw t1, 32(a2)
Current Store : [0x800002dc] : sw t2, 36(a2) -- Store: [0x80002294]:0xFD80FE47




Last Coverpoint : ['rs1 : x26', 'rs2 : x23', 'rs2_b3_val == 64', 'rs2_b2_val == 4', 'rs1_b1_val == -2']
Last Code Sequence : 
	-[0x800002f0]:SMUL8 s6, s10, s7
	-[0x800002f4]:sw s6, 40(a2)
Current Store : [0x800002f8] : sw s7, 44(a2) -- Store: [0x8000229c]:0xFE80FFE0




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rs2_b3_val == 32', 'rs1_b2_val == -86', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000030c]:SMUL8 s10, s8, s5
	-[0x80000310]:sw s10, 48(a2)
Current Store : [0x80000314] : sw s11, 52(a2) -- Store: [0x800022a4]:0xFFC0FDFC




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rs2_b3_val == 16', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000328]:SMUL8 a0, t2, t0
	-[0x8000032c]:sw a0, 56(a2)
Current Store : [0x80000330] : sw a1, 60(a2) -- Store: [0x800022ac]:0xFAA0FFB8




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rs2_b3_val == 8', 'rs2_b0_val == 85', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x80000344]:SMUL8 a0, gp, s11
	-[0x80000348]:sw a0, 64(a2)
Current Store : [0x8000034c] : sw a1, 68(a2) -- Store: [0x800022b4]:0x02000024




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rs2_b3_val == 4', 'rs2_b2_val == 2', 'rs2_b1_val == -65', 'rs1_b3_val == -9']
Last Code Sequence : 
	-[0x80000360]:SMUL8 s8, s7, a0
	-[0x80000364]:sw s8, 72(a2)
Current Store : [0x80000368] : sw s9, 76(a2) -- Store: [0x800022bc]:0xFFDCFFF0




Last Coverpoint : ['rs1 : x18', 'rs2 : x6', 'rs2_b3_val == 1', 'rs2_b2_val == -5']
Last Code Sequence : 
	-[0x8000037c]:SMUL8 t5, s2, t1
	-[0x80000380]:sw t5, 80(a2)
Current Store : [0x80000384] : sw t6, 84(a2) -- Store: [0x800022c4]:0xFFF7FFE2




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rs1_b3_val == 16']
Last Code Sequence : 
	-[0x80000398]:SMUL8 s8, t1, a1
	-[0x8000039c]:sw s8, 88(a2)
Current Store : [0x800003a0] : sw s9, 92(a2) -- Store: [0x800022cc]:0x0000FDFC




Last Coverpoint : ['rs1 : x19', 'rs2 : x9', 'rs2_b3_val == -1', 'rs2_b0_val == -17', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x800003b4]:SMUL8 s10, s3, s1
	-[0x800003b8]:sw s10, 96(a2)
Current Store : [0x800003bc] : sw s11, 100(a2) -- Store: [0x800022d4]:0xFFABFFE8




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rs2_b2_val == -86', 'rs2_b0_val == 1', 'rs1_b3_val == -33', 'rs1_b2_val == -2', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800003d0]:SMUL8 t3, s5, a7
	-[0x800003d4]:sw t3, 104(a2)
Current Store : [0x800003d8] : sw t4, 108(a2) -- Store: [0x800022dc]:0xFF3A00AC




Last Coverpoint : ['rs1 : x22', 'rs2 : x3', 'rs2_b2_val == 85', 'rs2_b0_val == -3', 'rs1_b3_val == 1', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x800003ec]:SMUL8 fp, s6, gp
	-[0x800003f0]:sw fp, 112(a2)
Current Store : [0x800003f4] : sw s1, 116(a2) -- Store: [0x800022e4]:0xFFDFFD58




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rs1_b2_val == -33', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000408]:SMUL8 s8, a7, t4
	-[0x8000040c]:sw s8, 120(a2)
Current Store : [0x80000410] : sw s9, 124(a2) -- Store: [0x800022ec]:0x0240FF5B




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rs2_b2_val == 16', 'rs1_b2_val == -17', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000424]:SMUL8 s8, t4, s10
	-[0x80000428]:sw s8, 128(a2)
Current Store : [0x8000042c] : sw s9, 132(a2) -- Store: [0x800022f4]:0xFFFFFEF0




Last Coverpoint : ['rs1 : x1', 'rs2 : x8', 'rs2_b3_val == -17', 'rs1_b3_val == 2', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000440]:SMUL8 a6, ra, fp
	-[0x80000444]:sw a6, 136(a2)
Current Store : [0x80000448] : sw a7, 140(a2) -- Store: [0x800022fc]:0xFFDE0000




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rs2_b1_val == 127', 'rs1_b2_val == -128', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x8000045c]:SMUL8 s4, sp, tp
	-[0x80000460]:sw s4, 144(a2)
Current Store : [0x80000464] : sw s5, 148(a2) -- Store: [0x80002304]:0x03F00300




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rs2_b1_val == -86', 'rs1_b2_val == 64', 'rs1_b1_val == 127', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000480]:SMUL8 sp, a5, t6
	-[0x80000484]:sw sp, 0(ra)
Current Store : [0x80000488] : sw gp, 4(ra) -- Store: [0x8000230c]:0x00461FC0




Last Coverpoint : ['rs1_b2_val == 16', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x8000049c]:SMUL8 t5, t6, t4
	-[0x800004a0]:sw t5, 8(ra)
Current Store : [0x800004a4] : sw t6, 12(ra) -- Store: [0x80002314]:0x0009FFA0




Last Coverpoint : ['rs2_b0_val == 8', 'rs1_b2_val == 2']
Last Code Sequence : 
	-[0x800004b8]:SMUL8 t5, t6, t4
	-[0x800004bc]:sw t5, 16(ra)
Current Store : [0x800004c0] : sw t6, 20(ra) -- Store: [0x8000231c]:0xFEE0000A




Last Coverpoint : ['rs1_b3_val == -128', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x800004d4]:SMUL8 t5, t6, t4
	-[0x800004d8]:sw t5, 24(ra)
Current Store : [0x800004dc] : sw t6, 28(ra) -- Store: [0x80002324]:0x04800005




Last Coverpoint : ['rs2_b0_val == -86']
Last Code Sequence : 
	-[0x800004f0]:SMUL8 t5, t6, t4
	-[0x800004f4]:sw t5, 32(ra)
Current Store : [0x800004f8] : sw t6, 36(ra) -- Store: [0x8000232c]:0x001C0000




Last Coverpoint : ['rs2_b2_val == -2', 'rs2_b1_val == -33', 'rs2_b0_val == -2', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x8000050c]:SMUL8 t5, t6, t4
	-[0x80000510]:sw t5, 40(ra)
Current Store : [0x80000514] : sw t6, 44(ra) -- Store: [0x80002334]:0x05B6FFF0




Last Coverpoint : ['rs2_b2_val == 1', 'rs2_b0_val == -33', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x80000528]:SMUL8 t5, t6, t4
	-[0x8000052c]:sw t5, 48(ra)
Current Store : [0x80000530] : sw t6, 52(ra) -- Store: [0x8000233c]:0xFFECFFFB




Last Coverpoint : ['rs2_b2_val == -1']
Last Code Sequence : 
	-[0x80000544]:SMUL8 t5, t6, t4
	-[0x80000548]:sw t5, 56(ra)
Current Store : [0x8000054c] : sw t6, 60(ra) -- Store: [0x80002344]:0x0040FFC1




Last Coverpoint : ['rs2_b1_val == -3', 'rs2_b0_val == 127', 'rs1_b3_val == 127']
Last Code Sequence : 
	-[0x80000560]:SMUL8 t5, t6, t4
	-[0x80000564]:sw t5, 64(ra)
Current Store : [0x80000568] : sw t6, 68(ra) -- Store: [0x8000234c]:0x3F01FE08




Last Coverpoint : ['rs2_b1_val == 64', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x8000057c]:SMUL8 t5, t6, t4
	-[0x80000580]:sw t5, 72(ra)
Current Store : [0x80000584] : sw t6, 76(ra) -- Store: [0x80002354]:0xE040FFDC




Last Coverpoint : ['rs2_b1_val == 32', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x80000598]:SMUL8 t5, t6, t4
	-[0x8000059c]:sw t5, 80(ra)
Current Store : [0x800005a0] : sw t6, 84(ra) -- Store: [0x8000235c]:0xFF8000AA




Last Coverpoint : ['rs2_b1_val == 8']
Last Code Sequence : 
	-[0x800005b4]:SMUL8 t5, t6, t4
	-[0x800005b8]:sw t5, 88(ra)
Current Store : [0x800005bc] : sw t6, 92(ra) -- Store: [0x80002364]:0xFF400010




Last Coverpoint : ['rs2_b1_val == 1']
Last Code Sequence : 
	-[0x800005d0]:SMUL8 t5, t6, t4
	-[0x800005d4]:sw t5, 96(ra)
Current Store : [0x800005d8] : sw t6, 100(ra) -- Store: [0x8000236c]:0xFFCD0023




Last Coverpoint : ['rs1_b2_val == -65', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x800005ec]:SMUL8 t5, t6, t4
	-[0x800005f0]:sw t5, 104(ra)
Current Store : [0x800005f4] : sw t6, 108(ra) -- Store: [0x80002374]:0x00E70861




Last Coverpoint : ['rs2_b0_val == -9']
Last Code Sequence : 
	-[0x80000608]:SMUL8 t5, t6, t4
	-[0x8000060c]:sw t5, 112(ra)
Current Store : [0x80000610] : sw t6, 116(ra) -- Store: [0x8000237c]:0x01020015




Last Coverpoint : ['rs2_b0_val == 64']
Last Code Sequence : 
	-[0x80000624]:SMUL8 t5, t6, t4
	-[0x80000628]:sw t5, 120(ra)
Current Store : [0x8000062c] : sw t6, 124(ra) -- Store: [0x80002384]:0xFFC00102




Last Coverpoint : ['opcode : smul8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b3_val == 64', 'rs2_b1_val == -1', 'rs1_b1_val == 0', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000640]:SMUL8 t5, t6, t4
	-[0x80000644]:sw t5, 128(ra)
Current Store : [0x80000648] : sw t6, 132(ra) -- Store: [0x8000238c]:0xFF00FFC4




Last Coverpoint : ['rs2_b2_val == -65', 'rs2_b1_val == -5', 'rs1_b3_val == -65']
Last Code Sequence : 
	-[0x8000065c]:SMUL8 t5, t6, t4
	-[0x80000660]:sw t5, 136(ra)
Current Store : [0x80000664] : sw t6, 140(ra) -- Store: [0x80002394]:0xFEFC0861




Last Coverpoint : ['rs1_b0_val == -3']
Last Code Sequence : 
	-[0x80000678]:SMUL8 t5, t6, t4
	-[0x8000067c]:sw t5, 144(ra)
Current Store : [0x80000680] : sw t6, 148(ra) -- Store: [0x8000239c]:0xFFB8FEAC




Last Coverpoint : ['rs1_b3_val == -17']
Last Code Sequence : 
	-[0x80000694]:SMUL8 t5, t6, t4
	-[0x80000698]:sw t5, 152(ra)
Current Store : [0x8000069c] : sw t6, 156(ra) -- Store: [0x800023a4]:0x00AA0480




Last Coverpoint : ['rs2_b2_val == -17']
Last Code Sequence : 
	-[0x800006b0]:SMUL8 t5, t6, t4
	-[0x800006b4]:sw t5, 160(ra)
Current Store : [0x800006b8] : sw t6, 164(ra) -- Store: [0x800023ac]:0xFEF8FBD1




Last Coverpoint : ['opcode : smul8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == -65', 'rs2_b2_val == -2', 'rs2_b1_val == -3', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800006cc]:SMUL8 t5, t6, t4
	-[0x800006d0]:sw t5, 168(ra)
Current Store : [0x800006d4] : sw t6, 172(ra) -- Store: [0x800023b4]:0xF0010014




Last Coverpoint : ['rs2_b2_val == -3', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x800006e8]:SMUL8 t5, t6, t4
	-[0x800006ec]:sw t5, 176(ra)
Current Store : [0x800006f0] : sw t6, 180(ra) -- Store: [0x800023bc]:0x15D6001B




Last Coverpoint : ['rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000704]:SMUL8 t5, t6, t4
	-[0x80000708]:sw t5, 184(ra)
Current Store : [0x8000070c] : sw t6, 188(ra) -- Store: [0x800023c4]:0xFDE0FFA0




Last Coverpoint : ['rs2_b2_val == -128']
Last Code Sequence : 
	-[0x80000720]:SMUL8 t5, t6, t4
	-[0x80000724]:sw t5, 192(ra)
Current Store : [0x80000728] : sw t6, 196(ra) -- Store: [0x800023cc]:0x0008E080




Last Coverpoint : ['rs2_b2_val == 32']
Last Code Sequence : 
	-[0x8000073c]:SMUL8 t5, t6, t4
	-[0x80000740]:sw t5, 200(ra)
Current Store : [0x80000744] : sw t6, 204(ra) -- Store: [0x800023d4]:0x00ACFFC0




Last Coverpoint : ['rs2_b2_val == 8']
Last Code Sequence : 
	-[0x80000758]:SMUL8 t5, t6, t4
	-[0x8000075c]:sw t5, 208(ra)
Current Store : [0x80000760] : sw t6, 212(ra) -- Store: [0x800023dc]:0xFF3AFFD0




Last Coverpoint : ['rs1_b2_val == 85']
Last Code Sequence : 
	-[0x80000774]:SMUL8 t5, t6, t4
	-[0x80000778]:sw t5, 216(ra)
Current Store : [0x8000077c] : sw t6, 220(ra) -- Store: [0x800023e4]:0x000000FF




Last Coverpoint : ['rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000790]:SMUL8 t5, t6, t4
	-[0x80000794]:sw t5, 224(ra)
Current Store : [0x80000798] : sw t6, 228(ra) -- Store: [0x800023ec]:0xFD8A0000




Last Coverpoint : ['rs1_b0_val == -128']
Last Code Sequence : 
	-[0x800007ac]:SMUL8 t5, t6, t4
	-[0x800007b0]:sw t5, 232(ra)
Current Store : [0x800007b4] : sw t6, 236(ra) -- Store: [0x800023f4]:0x0100F001




Last Coverpoint : ['opcode : smul8', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b1_val == 4', 'rs1_b2_val == -9', 'rs1_b1_val == 64', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800007c4]:SMUL8 t5, t6, t4
	-[0x800007c8]:sw t5, 240(ra)
Current Store : [0x800007cc] : sw t6, 244(ra) -- Store: [0x800023fc]:0x0010005A




Last Coverpoint : ['rs2_b2_val == 64']
Last Code Sequence : 
	-[0x800007e0]:SMUL8 t5, t6, t4
	-[0x800007e4]:sw t5, 248(ra)
Current Store : [0x800007e8] : sw t6, 252(ra) -- Store: [0x80002404]:0x00550100





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

|s.no|        signature         |                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                   |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFE3F0902|- opcode : smul8<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == -2<br> - rs2_b0_val == 2<br> - rs1_b3_val == -2<br> - rs1_b0_val == 2<br> |[0x80000110]:SMUL8 a2, a2, a2<br> [0x80000114]:sw a2, 0(fp)<br>    |
|   2|[0x80002218]<br>0xDB7D5BFD|- rs1 : x16<br> - rs2 : x16<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs2_b1_val == 4<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                        |[0x80000128]:SMUL8 s8, a6, a6<br> [0x8000012c]:sw s8, 8(fp)<br>    |
|   3|[0x80002220]<br>0xDF56FF76|- rs1 : x27<br> - rs2 : x24<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b1_val == 2<br> - rs1_b3_val == -86<br> - rs1_b2_val == 4<br> - rs1_b1_val == 2<br> - rs1_b0_val == -1<br>                                               |[0x80000144]:SMUL8 s2, s11, s8<br> [0x80000148]:sw s2, 16(fp)<br>  |
|   4|[0x80002228]<br>0xFDF7FC00|- rs1 : x28<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b3_val == -3<br> - rs2_b2_val == -9<br> - rs2_b0_val == 0<br> - rs1_b3_val == 4<br> - rs1_b2_val == 127<br> - rs1_b0_val == 32<br>                                                                                                                                                    |[0x80000160]:SMUL8 t5, t3, t5<br> [0x80000164]:sw t5, 24(fp)<br>   |
|   5|[0x80002230]<br>0x0320AA10|- rs1 : x4<br> - rs2 : x20<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == 127<br> - rs2_b1_val == -2<br> - rs1_b2_val == 32<br> - rs1_b1_val == -86<br> - rs1_b0_val == 16<br>                                                                                                                                                                 |[0x8000017c]:SMUL8 tp, tp, s4<br> [0x80000180]:sw tp, 32(fp)<br>   |
|   6|[0x80002238]<br>0x7FFCFEFA|- rs1 : x30<br> - rs2 : x13<br> - rd : x20<br> - rs2_b3_val == 2<br> - rs2_b0_val == -65<br> - rs1_b3_val == -1<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000198]:SMUL8 s4, t5, a3<br> [0x8000019c]:sw s4, 40(fp)<br>   |
|   7|[0x80002240]<br>0xFF76DF56|- rs1 : x13<br> - rs2 : x14<br> - rd : x2<br> - rs2_b2_val == 127<br> - rs2_b1_val == -128<br> - rs2_b0_val == 16<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                      |[0x800001b4]:SMUL8 sp, a3, a4<br> [0x800001b8]:sw sp, 48(fp)<br>   |
|   8|[0x80002248]<br>0x6DF56FF7|- rs1 : x14<br> - rs2 : x25<br> - rd : x22<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs2_b2_val == -33<br> - rs2_b1_val == 85<br> - rs1_b3_val == 0<br> - rs1_b2_val == -1<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                       |[0x800001d0]:SMUL8 s6, a4, s9<br> [0x800001d4]:sw s6, 56(fp)<br>   |
|   9|[0x80002250]<br>0x00FFBFFC|- rs1 : x25<br> - rs2 : x1<br> - rd : x14<br> - rs2_b3_val == -86<br> - rs2_b0_val == 32<br> - rs1_b3_val == 64<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                       |[0x800001ec]:SMUL8 a4, s9, ra<br> [0x800001f0]:sw a4, 64(fp)<br>   |
|  10|[0x80002258]<br>0xFCF60406|- rs1 : x20<br> - rs2 : x2<br> - rd : x16<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b1_val == -1<br> - rs2_b0_val == -1<br> - rs1_b2_val == -3<br> - rs1_b1_val == -5<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                 |[0x80000208]:SMUL8 a6, s4, sp<br> [0x8000020c]:sw a6, 72(fp)<br>   |
|  11|[0x80002260]<br>0x76DF56FF|- rs1 : x9<br> - rs2 : x28<br> - rd : x26<br> - rs2_b3_val == 85<br> - rs2_b1_val == -9<br> - rs1_b3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000224]:SMUL8 s10, s1, t3<br> [0x80000228]:sw s10, 80(fp)<br> |
|  12|[0x80002268]<br>0x80002000|- rs1 : x11<br> - rs2 : x22<br> - rd : x6<br> - rs2_b3_val == -65<br> - rs2_b0_val == 4<br> - rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000240]:SMUL8 t1, a1, s6<br> [0x80000244]:sw t1, 88(fp)<br>   |
|  13|[0x80002270]<br>0x55F7F709|- rs1 : x0<br> - rs2 : x15<br> - rd : x28<br> - rs2_b3_val == -33<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000264]:SMUL8 t3, zero, a5<br> [0x80000268]:sw t3, 0(a2)<br>  |
|  14|[0x80002278]<br>0x80002210|- rs1 : x10<br> - rs2 : x0<br> - rd : x8<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs1_b1_val == -33<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000280]:SMUL8 fp, a0, zero<br> [0x80000284]:sw fp, 8(a2)<br>  |
|  15|[0x80002280]<br>0xFB04DF06|- rs1 : x31<br> - rs2 : x18<br> - rd : x10<br> - rs2_b3_val == -9<br> - rs2_b1_val == -17<br> - rs2_b0_val == -128<br> - rs1_b1_val == 64<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                             |[0x8000029c]:SMUL8 a0, t6, s2<br> [0x800002a0]:sw a0, 16(a2)<br>   |
|  16|[0x80002288]<br>0xF77FEF80|- rs1 : x5<br> - rs2 : x19<br> - rs2_b3_val == -5<br> - rs1_b3_val == -3<br> - rs1_b1_val == 32<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800002b8]:SMUL8 s2, t0, s3<br> [0x800002bc]:sw s2, 24(a2)<br>   |
|  17|[0x80002290]<br>0x80002000|- rs1 : x8<br> - rs2 : x7<br> - rs2_b3_val == -128<br> - rs2_b1_val == 16<br> - rs2_b0_val == -5<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                     |[0x800002d4]:SMUL8 t1, fp, t2<br> [0x800002d8]:sw t1, 32(a2)<br>   |
|  18|[0x80002298]<br>0xBF06F804|- rs1 : x26<br> - rs2 : x23<br> - rs2_b3_val == 64<br> - rs2_b2_val == 4<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x800002f0]:SMUL8 s6, s10, s7<br> [0x800002f4]:sw s6, 40(a2)<br>  |
|  19|[0x800022a0]<br>0xFAF8FEF8|- rs1 : x24<br> - rs2 : x21<br> - rs2_b3_val == 32<br> - rs1_b2_val == -86<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x8000030c]:SMUL8 s10, s8, s5<br> [0x80000310]:sw s10, 48(a2)<br> |
|  20|[0x800022a8]<br>0xFB04DF06|- rs1 : x7<br> - rs2 : x5<br> - rs2_b3_val == 16<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000328]:SMUL8 a0, t2, t0<br> [0x8000032c]:sw a0, 56(a2)<br>   |
|  21|[0x800022b0]<br>0xFB04DF06|- rs1 : x3<br> - rs2 : x27<br> - rs2_b3_val == 8<br> - rs2_b0_val == 85<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000344]:SMUL8 a0, gp, s11<br> [0x80000348]:sw a0, 64(a2)<br>  |
|  22|[0x800022b8]<br>0xFEAAC008|- rs1 : x23<br> - rs2 : x10<br> - rs2_b3_val == 4<br> - rs2_b2_val == 2<br> - rs2_b1_val == -65<br> - rs1_b3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000360]:SMUL8 s8, s7, a0<br> [0x80000364]:sw s8, 72(a2)<br>   |
|  23|[0x800022c0]<br>0xFFFC8003|- rs1 : x18<br> - rs2 : x6<br> - rs2_b3_val == 1<br> - rs2_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000037c]:SMUL8 t5, s2, t1<br> [0x80000380]:sw t5, 80(a2)<br>   |
|  24|[0x800022c8]<br>0xFEAAC008|- rs1 : x6<br> - rs2 : x11<br> - rs1_b3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000398]:SMUL8 s8, t1, a1<br> [0x8000039c]:sw s8, 88(a2)<br>   |
|  25|[0x800022d0]<br>0xFAF8FEF8|- rs1 : x19<br> - rs2 : x9<br> - rs2_b3_val == -1<br> - rs2_b0_val == -17<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800003b4]:SMUL8 s10, s3, s1<br> [0x800003b8]:sw s10, 96(a2)<br> |
|  26|[0x800022d8]<br>0x55F7F709|- rs1 : x21<br> - rs2 : x17<br> - rs2_b2_val == -86<br> - rs2_b0_val == 1<br> - rs1_b3_val == -33<br> - rs1_b2_val == -2<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                              |[0x800003d0]:SMUL8 t3, s5, a7<br> [0x800003d4]:sw t3, 104(a2)<br>  |
|  27|[0x800022e0]<br>0x05F9FCAA|- rs1 : x22<br> - rs2 : x3<br> - rs2_b2_val == 85<br> - rs2_b0_val == -3<br> - rs1_b3_val == 1<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800003ec]:SMUL8 fp, s6, gp<br> [0x800003f0]:sw fp, 112(a2)<br>  |
|  28|[0x800022e8]<br>0xFEAAC008|- rs1 : x17<br> - rs2 : x29<br> - rs1_b2_val == -33<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000408]:SMUL8 s8, a7, t4<br> [0x8000040c]:sw s8, 120(a2)<br>  |
|  29|[0x800022f0]<br>0xFEAAC008|- rs1 : x29<br> - rs2 : x26<br> - rs2_b2_val == 16<br> - rs1_b2_val == -17<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x80000424]:SMUL8 s8, t4, s10<br> [0x80000428]:sw s8, 128(a2)<br> |
|  30|[0x800022f8]<br>0xFCF60406|- rs1 : x1<br> - rs2 : x8<br> - rs2_b3_val == -17<br> - rs1_b3_val == 2<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x80000440]:SMUL8 a6, ra, fp<br> [0x80000444]:sw a6, 136(a2)<br>  |
|  31|[0x80002300]<br>0xF8FDFBFB|- rs1 : x2<br> - rs2 : x4<br> - rs2_b1_val == 127<br> - rs1_b2_val == -128<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x8000045c]:SMUL8 s4, sp, tp<br> [0x80000460]:sw s4, 144(a2)<br>  |
|  32|[0x80002308]<br>0x1080FF08|- rs1 : x15<br> - rs2 : x31<br> - rs2_b1_val == -86<br> - rs1_b2_val == 64<br> - rs1_b1_val == 127<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                   |[0x80000480]:SMUL8 sp, a5, t6<br> [0x80000484]:sw sp, 0(ra)<br>    |
|  33|[0x80002310]<br>0xFFFC8003|- rs1_b2_val == 16<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000049c]:SMUL8 t5, t6, t4<br> [0x800004a0]:sw t5, 8(ra)<br>    |
|  34|[0x80002318]<br>0xFFFC8003|- rs2_b0_val == 8<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004b8]:SMUL8 t5, t6, t4<br> [0x800004bc]:sw t5, 16(ra)<br>   |
|  35|[0x80002320]<br>0xFFFC8003|- rs1_b3_val == -128<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800004d4]:SMUL8 t5, t6, t4<br> [0x800004d8]:sw t5, 24(ra)<br>   |
|  36|[0x80002328]<br>0xFFFC8003|- rs2_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800004f0]:SMUL8 t5, t6, t4<br> [0x800004f4]:sw t5, 32(ra)<br>   |
|  37|[0x80002330]<br>0xFFFC8003|- rs2_b2_val == -2<br> - rs2_b1_val == -33<br> - rs2_b0_val == -2<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000050c]:SMUL8 t5, t6, t4<br> [0x80000510]:sw t5, 40(ra)<br>   |
|  38|[0x80002338]<br>0xFFFC8003|- rs2_b2_val == 1<br> - rs2_b0_val == -33<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000528]:SMUL8 t5, t6, t4<br> [0x8000052c]:sw t5, 48(ra)<br>   |
|  39|[0x80002340]<br>0xFFFC8003|- rs2_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000544]:SMUL8 t5, t6, t4<br> [0x80000548]:sw t5, 56(ra)<br>   |
|  40|[0x80002348]<br>0xFFFC8003|- rs2_b1_val == -3<br> - rs2_b0_val == 127<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000560]:SMUL8 t5, t6, t4<br> [0x80000564]:sw t5, 64(ra)<br>   |
|  41|[0x80002350]<br>0xFFFC8003|- rs2_b1_val == 64<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000057c]:SMUL8 t5, t6, t4<br> [0x80000580]:sw t5, 72(ra)<br>   |
|  42|[0x80002358]<br>0xFFFC8003|- rs2_b1_val == 32<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000598]:SMUL8 t5, t6, t4<br> [0x8000059c]:sw t5, 80(ra)<br>   |
|  43|[0x80002360]<br>0xFFFC8003|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005b4]:SMUL8 t5, t6, t4<br> [0x800005b8]:sw t5, 88(ra)<br>   |
|  44|[0x80002368]<br>0xFFFC8003|- rs2_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005d0]:SMUL8 t5, t6, t4<br> [0x800005d4]:sw t5, 96(ra)<br>   |
|  45|[0x80002370]<br>0xFFFC8003|- rs1_b2_val == -65<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005ec]:SMUL8 t5, t6, t4<br> [0x800005f0]:sw t5, 104(ra)<br>  |
|  46|[0x80002378]<br>0xFFFC8003|- rs2_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000608]:SMUL8 t5, t6, t4<br> [0x8000060c]:sw t5, 112(ra)<br>  |
|  47|[0x80002380]<br>0xFFFC8003|- rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000624]:SMUL8 t5, t6, t4<br> [0x80000628]:sw t5, 120(ra)<br>  |
|  48|[0x80002390]<br>0xFFFC8003|- rs2_b2_val == -65<br> - rs2_b1_val == -5<br> - rs1_b3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000065c]:SMUL8 t5, t6, t4<br> [0x80000660]:sw t5, 136(ra)<br>  |
|  49|[0x80002398]<br>0xFFFC8003|- rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000678]:SMUL8 t5, t6, t4<br> [0x8000067c]:sw t5, 144(ra)<br>  |
|  50|[0x800023a0]<br>0xFFFC8003|- rs1_b3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000694]:SMUL8 t5, t6, t4<br> [0x80000698]:sw t5, 152(ra)<br>  |
|  51|[0x800023a8]<br>0xFFFC8003|- rs2_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006b0]:SMUL8 t5, t6, t4<br> [0x800006b4]:sw t5, 160(ra)<br>  |
|  52|[0x800023b8]<br>0xFFFC8003|- rs2_b2_val == -3<br> - rs1_b2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800006e8]:SMUL8 t5, t6, t4<br> [0x800006ec]:sw t5, 176(ra)<br>  |
|  53|[0x800023c0]<br>0xFFFC8003|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000704]:SMUL8 t5, t6, t4<br> [0x80000708]:sw t5, 184(ra)<br>  |
|  54|[0x800023c8]<br>0xFFFC8003|- rs2_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000720]:SMUL8 t5, t6, t4<br> [0x80000724]:sw t5, 192(ra)<br>  |
|  55|[0x800023d0]<br>0xFFFC8003|- rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000073c]:SMUL8 t5, t6, t4<br> [0x80000740]:sw t5, 200(ra)<br>  |
|  56|[0x800023d8]<br>0xFFFC8003|- rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000758]:SMUL8 t5, t6, t4<br> [0x8000075c]:sw t5, 208(ra)<br>  |
|  57|[0x800023e0]<br>0xFFFC8003|- rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000774]:SMUL8 t5, t6, t4<br> [0x80000778]:sw t5, 216(ra)<br>  |
|  58|[0x800023e8]<br>0xFFFC8003|- rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000790]:SMUL8 t5, t6, t4<br> [0x80000794]:sw t5, 224(ra)<br>  |
|  59|[0x800023f0]<br>0xFFFC8003|- rs1_b0_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800007ac]:SMUL8 t5, t6, t4<br> [0x800007b0]:sw t5, 232(ra)<br>  |
|  60|[0x80002400]<br>0xFFFC8003|- rs2_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800007e0]:SMUL8 t5, t6, t4<br> [0x800007e4]:sw t5, 248(ra)<br>  |
