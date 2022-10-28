
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008b0')]      |
| SIG_REGION                | [('0x80002210', '0x80002400', '124 words')]      |
| COV_LABELS                | khmx8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/khmx8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 122      |
| STAT1                     | 59      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 61     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000560]:KHMX8 t6, t5, t4
      [0x80000564]:csrrs t5, vxsat, zero
      [0x80000568]:sw t6, 120(gp)
 -- Signature Address: 0x80002320 Data: 0xFEFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : khmx8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b2_val == -33
      - rs2_b1_val == 0
      - rs1_b2_val == 1
      - rs1_b1_val == 2
      - rs1_b0_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a0]:KHMX8 t6, t5, t4
      [0x800008a4]:csrrs t5, vxsat, zero
      [0x800008a8]:sw t6, 328(gp)
 -- Signature Address: 0x800023f0 Data: 0x0000FFFE
 -- Redundant Coverpoints hit by the op
      - opcode : khmx8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b3_val == -17
      - rs2_b2_val == -1
      - rs2_b1_val == 4
      - rs1_b3_val == -65






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmx8', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b2_val == -2', 'rs2_b1_val == 1', 'rs1_b2_val == -2', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x8000011c]:KHMX8 a4, a4, a4
	-[0x80000120]:csrrs a4, vxsat, zero
	-[0x80000124]:sw a4, 0(tp)
Current Store : [0x80000128] : sw a4, 4(tp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == 1', 'rs2_b1_val == 16', 'rs1_b2_val == 1', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000013c]:KHMX8 zero, a5, a5
	-[0x80000140]:csrrs a5, vxsat, zero
	-[0x80000144]:sw zero, 8(tp)
Current Store : [0x80000148] : sw a5, 12(tp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b3_val == 2', 'rs2_b2_val == -9', 'rs2_b0_val == -5', 'rs1_b3_val == -3', 'rs1_b2_val == -65', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x8000015c]:KHMX8 s1, t1, s8
	-[0x80000160]:csrrs t1, vxsat, zero
	-[0x80000164]:sw s1, 16(tp)
Current Store : [0x80000168] : sw t1, 20(tp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x29', 'rs2 == rd != rs1', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b2_val == -128', 'rs2_b1_val == 8', 'rs2_b0_val == 85']
Last Code Sequence : 
	-[0x8000017c]:KHMX8 t4, s3, t4
	-[0x80000180]:csrrs s3, vxsat, zero
	-[0x80000184]:sw t4, 24(tp)
Current Store : [0x80000188] : sw s3, 28(tp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x25', 'rs1 == rd != rs2', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs2_b2_val == 16', 'rs2_b1_val == -86', 'rs2_b0_val == 8', 'rs1_b3_val == -1', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x8000019c]:KHMX8 s9, s9, t1
	-[0x800001a0]:csrrs s9, vxsat, zero
	-[0x800001a4]:sw s9, 32(tp)
Current Store : [0x800001a8] : sw s9, 36(tp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x31', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs2_b3_val == 8', 'rs2_b0_val == 64', 'rs1_b3_val == -5', 'rs1_b1_val == 127', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x800001bc]:KHMX8 t6, t0, t2
	-[0x800001c0]:csrrs t0, vxsat, zero
	-[0x800001c4]:sw t6, 40(tp)
Current Store : [0x800001c8] : sw t0, 44(tp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x28', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b3_val == 1', 'rs2_b1_val == 2', 'rs2_b0_val == -33', 'rs1_b1_val == -65', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800001dc]:KHMX8 t3, a7, s1
	-[0x800001e0]:csrrs a7, vxsat, zero
	-[0x800001e4]:sw t3, 48(tp)
Current Store : [0x800001e8] : sw a7, 52(tp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x12', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs2_b1_val == -128', 'rs1_b3_val == 127', 'rs1_b2_val == 0', 'rs1_b1_val == -2', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x800001fc]:KHMX8 a2, s8, t6
	-[0x80000200]:csrrs s8, vxsat, zero
	-[0x80000204]:sw a2, 56(tp)
Current Store : [0x80000208] : sw s8, 60(tp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x6', 'rs2_b3_val == 4', 'rs2_b2_val == -33', 'rs1_b3_val == 85', 'rs1_b2_val == -1', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x8000021c]:KHMX8 t1, gp, s7
	-[0x80000220]:csrrs gp, vxsat, zero
	-[0x80000224]:sw t1, 64(tp)
Current Store : [0x80000228] : sw gp, 68(tp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x20', 'rs2_b3_val == -86', 'rs2_b0_val == -128', 'rs1_b3_val == -9', 'rs1_b2_val == 2', 'rs1_b1_val == -9', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x8000023c]:KHMX8 s4, a3, a2
	-[0x80000240]:csrrs a3, vxsat, zero
	-[0x80000244]:sw s4, 72(tp)
Current Store : [0x80000248] : sw a3, 76(tp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rd : x10', 'rs2_b3_val == 85']
Last Code Sequence : 
	-[0x8000025c]:KHMX8 a0, sp, fp
	-[0x80000260]:csrrs sp, vxsat, zero
	-[0x80000264]:sw a0, 80(tp)
Current Store : [0x80000268] : sw sp, 84(tp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x1', 'rd : x3', 'rs2_b3_val == 127', 'rs2_b2_val == -65', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x8000027c]:KHMX8 gp, a6, ra
	-[0x80000280]:csrrs a6, vxsat, zero
	-[0x80000284]:sw gp, 88(tp)
Current Store : [0x80000288] : sw a6, 92(tp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x3', 'rd : x15', 'rs2_b3_val == -65', 'rs2_b2_val == 4', 'rs1_b3_val == -65', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x8000029c]:KHMX8 a5, s1, gp
	-[0x800002a0]:csrrs s1, vxsat, zero
	-[0x800002a4]:sw a5, 96(tp)
Current Store : [0x800002a8] : sw s1, 100(tp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x11', 'rd : x17', 'rs2_b3_val == -33', 'rs2_b2_val == -17', 'rs2_b0_val == 16', 'rs1_b3_val == -86']
Last Code Sequence : 
	-[0x800002bc]:KHMX8 a7, s7, a1
	-[0x800002c0]:csrrs s7, vxsat, zero
	-[0x800002c4]:sw a7, 104(tp)
Current Store : [0x800002c8] : sw s7, 108(tp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x19', 'rd : x24', 'rs2_b3_val == -17', 'rs2_b2_val == -1', 'rs2_b1_val == 4', 'rs1_b3_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800002dc]:KHMX8 s8, zero, s3
	-[0x800002e0]:csrrs zero, vxsat, zero
	-[0x800002e4]:sw s8, 112(tp)
Current Store : [0x800002e8] : sw zero, 116(tp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x2', 'rs2_b3_val == -9', 'rs2_b0_val == -86', 'rs1_b3_val == 4', 'rs1_b2_val == -128', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x800002fc]:KHMX8 sp, s4, a6
	-[0x80000300]:csrrs s4, vxsat, zero
	-[0x80000304]:sw sp, 120(tp)
Current Store : [0x80000308] : sw s4, 124(tp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x26', 'rs2_b3_val == -5', 'rs2_b2_val == 2', 'rs2_b1_val == -5', 'rs2_b0_val == 1', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x8000031c]:KHMX8 s10, t3, t0
	-[0x80000320]:csrrs t3, vxsat, zero
	-[0x80000324]:sw s10, 128(tp)
Current Store : [0x80000328] : sw t3, 132(tp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x11', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs2_b0_val == 0', 'rs1_b2_val == -9', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x8000033c]:KHMX8 a1, ra, zero
	-[0x80000340]:csrrs ra, vxsat, zero
	-[0x80000344]:sw a1, 136(tp)
Current Store : [0x80000348] : sw ra, 140(tp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x22', 'rs2_b3_val == -2', 'rs2_b1_val == -1', 'rs2_b0_val == -65', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x8000035c]:KHMX8 s6, s2, s5
	-[0x80000360]:csrrs s2, vxsat, zero
	-[0x80000364]:sw s6, 144(tp)
Current Store : [0x80000368] : sw s2, 148(tp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rd : x30', 'rs2_b3_val == -128', 'rs1_b3_val == -33', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x80000384]:KHMX8 t5, tp, t3
	-[0x80000388]:csrrs tp, vxsat, zero
	-[0x8000038c]:sw t5, 0(gp)
Current Store : [0x80000390] : sw tp, 4(gp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x13', 'rd : x16', 'rs2_b3_val == 64', 'rs2_b0_val == -9', 'rs1_b2_val == 85']
Last Code Sequence : 
	-[0x800003a4]:KHMX8 a6, s11, a3
	-[0x800003a8]:csrrs s11, vxsat, zero
	-[0x800003ac]:sw a6, 8(gp)
Current Store : [0x800003b0] : sw s11, 12(gp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x25', 'rd : x19', 'rs2_b3_val == 32', 'rs2_b2_val == -86', 'rs2_b1_val == 85', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800003c4]:KHMX8 s3, t4, s9
	-[0x800003c8]:csrrs t4, vxsat, zero
	-[0x800003cc]:sw s3, 16(gp)
Current Store : [0x800003d0] : sw t4, 20(gp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x27', 'rs2_b3_val == 16', 'rs1_b2_val == 127']
Last Code Sequence : 
	-[0x800003e0]:KHMX8 s11, a1, t5
	-[0x800003e4]:csrrs a1, vxsat, zero
	-[0x800003e8]:sw s11, 24(gp)
Current Store : [0x800003ec] : sw a1, 28(gp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x5', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000400]:KHMX8 t0, s5, s4
	-[0x80000404]:csrrs s5, vxsat, zero
	-[0x80000408]:sw t0, 32(gp)
Current Store : [0x8000040c] : sw s5, 36(gp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x27', 'rd : x4', 'rs2_b3_val == -1', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000420]:KHMX8 tp, a0, s11
	-[0x80000424]:csrrs a0, vxsat, zero
	-[0x80000428]:sw tp, 40(gp)
Current Store : [0x8000042c] : sw a0, 44(gp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x23', 'rs1_b2_val == -33', 'rs1_b1_val == -1', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000440]:KHMX8 s7, a2, s6
	-[0x80000444]:csrrs a2, vxsat, zero
	-[0x80000448]:sw s7, 48(gp)
Current Store : [0x8000044c] : sw a2, 52(gp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x2', 'rd : x1', 'rs2_b2_val == -3', 'rs1_b2_val == -17', 'rs1_b1_val == -86', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000460]:KHMX8 ra, fp, sp
	-[0x80000464]:csrrs fp, vxsat, zero
	-[0x80000468]:sw ra, 56(gp)
Current Store : [0x8000046c] : sw fp, 60(gp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x7', 'rs2_b2_val == 85', 'rs2_b1_val == -17', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000480]:KHMX8 t2, t5, s10
	-[0x80000484]:csrrs t5, vxsat, zero
	-[0x80000488]:sw t2, 64(gp)
Current Store : [0x8000048c] : sw t5, 68(gp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rd : x18', 'rs2_b2_val == 64', 'rs2_b0_val == -2', 'rs1_b2_val == -3']
Last Code Sequence : 
	-[0x800004a0]:KHMX8 s2, t6, a7
	-[0x800004a4]:csrrs t6, vxsat, zero
	-[0x800004a8]:sw s2, 72(gp)
Current Store : [0x800004ac] : sw t6, 76(gp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x4', 'rd : x8']
Last Code Sequence : 
	-[0x800004c0]:KHMX8 fp, s6, tp
	-[0x800004c4]:csrrs s6, vxsat, zero
	-[0x800004c8]:sw fp, 80(gp)
Current Store : [0x800004cc] : sw s6, 84(gp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x10', 'rd : x21', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x800004e0]:KHMX8 s5, t2, a0
	-[0x800004e4]:csrrs t2, vxsat, zero
	-[0x800004e8]:sw s5, 88(gp)
Current Store : [0x800004ec] : sw t2, 92(gp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x13', 'rs2_b1_val == -3', 'rs2_b0_val == 4', 'rs1_b3_val == 8', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000500]:KHMX8 a3, s10, s2
	-[0x80000504]:csrrs s10, vxsat, zero
	-[0x80000508]:sw a3, 96(gp)
Current Store : [0x8000050c] : sw s10, 100(gp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000520]:KHMX8 t6, t5, t4
	-[0x80000524]:csrrs t5, vxsat, zero
	-[0x80000528]:sw t6, 104(gp)
Current Store : [0x8000052c] : sw t5, 108(gp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs1_b2_val == 4']
Last Code Sequence : 
	-[0x80000540]:KHMX8 t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 112(gp)
Current Store : [0x8000054c] : sw t5, 116(gp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['opcode : khmx8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b2_val == -33', 'rs2_b1_val == 0', 'rs1_b2_val == 1', 'rs1_b1_val == 2', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x80000560]:KHMX8 t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 120(gp)
Current Store : [0x8000056c] : sw t5, 124(gp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_b0_val == 2', 'rs1_b3_val == -128', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x80000580]:KHMX8 t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 128(gp)
Current Store : [0x8000058c] : sw t5, 132(gp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_b2_val == 32', 'rs1_b1_val == -5']
Last Code Sequence : 
	-[0x800005a0]:KHMX8 t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 136(gp)
Current Store : [0x800005ac] : sw t5, 140(gp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_b2_val == -86', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x800005c0]:KHMX8 t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 144(gp)
Current Store : [0x800005cc] : sw t5, 148(gp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_b1_val == 64']
Last Code Sequence : 
	-[0x800005e0]:KHMX8 t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 152(gp)
Current Store : [0x800005ec] : sw t5, 156(gp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_b1_val == 127']
Last Code Sequence : 
	-[0x80000600]:KHMX8 t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 160(gp)
Current Store : [0x8000060c] : sw t5, 164(gp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_b1_val == -65']
Last Code Sequence : 
	-[0x80000620]:KHMX8 t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 168(gp)
Current Store : [0x8000062c] : sw t5, 172(gp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_b1_val == -33', 'rs2_b0_val == -17', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000640]:KHMX8 t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 176(gp)
Current Store : [0x8000064c] : sw t5, 180(gp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_b1_val == -9', 'rs2_b0_val == 127']
Last Code Sequence : 
	-[0x80000660]:KHMX8 t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 184(gp)
Current Store : [0x8000066c] : sw t5, 188(gp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_b1_val == -2']
Last Code Sequence : 
	-[0x80000680]:KHMX8 t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 192(gp)
Current Store : [0x8000068c] : sw t5, 196(gp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_b3_val == -3', 'rs2_b1_val == 64', 'rs2_b0_val == -1']
Last Code Sequence : 
	-[0x800006a0]:KHMX8 t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 200(gp)
Current Store : [0x800006ac] : sw t5, 204(gp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_b1_val == 32']
Last Code Sequence : 
	-[0x800006c0]:KHMX8 t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 208(gp)
Current Store : [0x800006cc] : sw t5, 212(gp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800006e0]:KHMX8 t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 216(gp)
Current Store : [0x800006ec] : sw t5, 220(gp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs1_b0_val == -128', 'rs2_b0_val == -3']
Last Code Sequence : 
	-[0x80000700]:KHMX8 t6, t5, t4
	-[0x80000704]:csrrs t5, vxsat, zero
	-[0x80000708]:sw t6, 224(gp)
Current Store : [0x8000070c] : sw t5, 228(gp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_b0_val == 32']
Last Code Sequence : 
	-[0x80000720]:KHMX8 t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 232(gp)
Current Store : [0x8000072c] : sw t5, 236(gp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs1_b3_val == -2', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000740]:KHMX8 t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 240(gp)
Current Store : [0x8000074c] : sw t5, 244(gp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs1_b3_val == 16', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000760]:KHMX8 t6, t5, t4
	-[0x80000764]:csrrs t5, vxsat, zero
	-[0x80000768]:sw t6, 248(gp)
Current Store : [0x8000076c] : sw t5, 252(gp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs1_b3_val == 64', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000780]:KHMX8 t6, t5, t4
	-[0x80000784]:csrrs t5, vxsat, zero
	-[0x80000788]:sw t6, 256(gp)
Current Store : [0x8000078c] : sw t5, 260(gp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs1_b3_val == -17']
Last Code Sequence : 
	-[0x800007a0]:KHMX8 t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 264(gp)
Current Store : [0x800007ac] : sw t5, 268(gp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_b2_val == 127']
Last Code Sequence : 
	-[0x800007c0]:KHMX8 t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 272(gp)
Current Store : [0x800007cc] : sw t5, 276(gp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_b0_val == 8']
Last Code Sequence : 
	-[0x800007e0]:KHMX8 t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 280(gp)
Current Store : [0x800007ec] : sw t5, 284(gp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_b2_val == -5']
Last Code Sequence : 
	-[0x80000800]:KHMX8 t6, t5, t4
	-[0x80000804]:csrrs t5, vxsat, zero
	-[0x80000808]:sw t6, 288(gp)
Current Store : [0x8000080c] : sw t5, 292(gp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000820]:KHMX8 t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 296(gp)
Current Store : [0x8000082c] : sw t5, 300(gp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_b2_val == 8', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80000840]:KHMX8 t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 304(gp)
Current Store : [0x8000084c] : sw t5, 308(gp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_b3_val == 1']
Last Code Sequence : 
	-[0x80000860]:KHMX8 t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 312(gp)
Current Store : [0x8000086c] : sw t5, 316(gp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000880]:KHMX8 t6, t5, t4
	-[0x80000884]:csrrs t5, vxsat, zero
	-[0x80000888]:sw t6, 320(gp)
Current Store : [0x8000088c] : sw t5, 324(gp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['opcode : khmx8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b3_val == -17', 'rs2_b2_val == -1', 'rs2_b1_val == 4', 'rs1_b3_val == -65']
Last Code Sequence : 
	-[0x800008a0]:KHMX8 t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 328(gp)
Current Store : [0x800008ac] : sw t5, 332(gp) -- Store: [0x800023f4]:0x00000000





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

|s.no|        signature         |                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                   |                                                    code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : khmx8<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b2_val == -2<br> - rs2_b1_val == 1<br> - rs1_b2_val == -2<br> - rs1_b1_val == 1<br> |[0x8000011c]:KHMX8 a4, a4, a4<br> [0x80000120]:csrrs a4, vxsat, zero<br> [0x80000124]:sw a4, 0(tp)<br>       |
|   2|[0x80002218]<br>0x00000000|- rs1 : x15<br> - rs2 : x15<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b2_val == 1<br> - rs2_b1_val == 16<br> - rs1_b2_val == 1<br> - rs1_b1_val == 16<br>                                                                                                                                                                                           |[0x8000013c]:KHMX8 zero, a5, a5<br> [0x80000140]:csrrs a5, vxsat, zero<br> [0x80000144]:sw zero, 8(tp)<br>   |
|   3|[0x80002220]<br>0x00FE01FF|- rs1 : x6<br> - rs2 : x24<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val<br> - rs2_b3_val == 2<br> - rs2_b2_val == -9<br> - rs2_b0_val == -5<br> - rs1_b3_val == -3<br> - rs1_b2_val == -65<br> - rs1_b1_val == -33<br>                                |[0x8000015c]:KHMX8 s1, t1, s8<br> [0x80000160]:csrrs t1, vxsat, zero<br> [0x80000164]:sw s1, 16(tp)<br>      |
|   4|[0x80002228]<br>0xFD00FAFF|- rs1 : x19<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b2_val == -128<br> - rs2_b1_val == 8<br> - rs2_b0_val == 85<br>                                                                                                                                                                                                                                                      |[0x8000017c]:KHMX8 t4, s3, t4<br> [0x80000180]:csrrs s3, vxsat, zero<br> [0x80000184]:sw t4, 24(tp)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b2_val == 16<br> - rs2_b1_val == -86<br> - rs2_b0_val == 8<br> - rs1_b3_val == -1<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                  |[0x8000019c]:KHMX8 s9, s9, t1<br> [0x800001a0]:csrrs s9, vxsat, zero<br> [0x800001a4]:sw s9, 32(tp)<br>      |
|   6|[0x80002238]<br>0xFFFB3FFF|- rs1 : x5<br> - rs2 : x7<br> - rd : x31<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs2_b3_val == 8<br> - rs2_b0_val == 64<br> - rs1_b3_val == -5<br> - rs1_b1_val == 127<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                          |[0x800001bc]:KHMX8 t6, t0, t2<br> [0x800001c0]:csrrs t0, vxsat, zero<br> [0x800001c4]:sw t6, 40(tp)<br>      |
|   7|[0x80002240]<br>0xFF001001|- rs1 : x17<br> - rs2 : x9<br> - rd : x28<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == 1<br> - rs2_b1_val == 2<br> - rs2_b0_val == -33<br> - rs1_b1_val == -65<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                 |[0x800001dc]:KHMX8 t3, a7, s1<br> [0x800001e0]:csrrs a7, vxsat, zero<br> [0x800001e4]:sw t3, 48(tp)<br>      |
|   8|[0x80002248]<br>0x060000E0|- rs1 : x24<br> - rs2 : x31<br> - rd : x12<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs2_b1_val == -128<br> - rs1_b3_val == 127<br> - rs1_b2_val == 0<br> - rs1_b1_val == -2<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                      |[0x800001fc]:KHMX8 a2, s8, t6<br> [0x80000200]:csrrs s8, vxsat, zero<br> [0x80000204]:sw a2, 56(tp)<br>      |
|   9|[0x80002250]<br>0xEAFFFFFF|- rs1 : x3<br> - rs2 : x23<br> - rd : x6<br> - rs2_b3_val == 4<br> - rs2_b2_val == -33<br> - rs1_b3_val == 85<br> - rs1_b2_val == -1<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                  |[0x8000021c]:KHMX8 t1, gp, s7<br> [0x80000220]:csrrs gp, vxsat, zero<br> [0x80000224]:sw t1, 64(tp)<br>      |
|  10|[0x80002258]<br>0xFFFE09FF|- rs1 : x13<br> - rs2 : x12<br> - rd : x20<br> - rs2_b3_val == -86<br> - rs2_b0_val == -128<br> - rs1_b3_val == -9<br> - rs1_b2_val == 2<br> - rs1_b1_val == -9<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                        |[0x8000023c]:KHMX8 s4, a3, a2<br> [0x80000240]:csrrs a3, vxsat, zero<br> [0x80000244]:sw s4, 72(tp)<br>      |
|  11|[0x80002260]<br>0x070AFF04|- rs1 : x2<br> - rs2 : x8<br> - rd : x10<br> - rs2_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000025c]:KHMX8 a0, sp, fp<br> [0x80000260]:csrrs sp, vxsat, zero<br> [0x80000264]:sw a0, 80(tp)<br>      |
|  12|[0x80002268]<br>0x020100D5|- rs1 : x16<br> - rs2 : x1<br> - rd : x3<br> - rs2_b3_val == 127<br> - rs2_b2_val == -65<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                             |[0x8000027c]:KHMX8 gp, a6, ra<br> [0x80000280]:csrrs a6, vxsat, zero<br> [0x80000284]:sw gp, 88(tp)<br>      |
|  13|[0x80002270]<br>0xFD030107|- rs1 : x9<br> - rs2 : x3<br> - rd : x15<br> - rs2_b3_val == -65<br> - rs2_b2_val == 4<br> - rs1_b3_val == -65<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000029c]:KHMX8 a5, s1, gp<br> [0x800002a0]:csrrs s1, vxsat, zero<br> [0x800002a4]:sw a5, 96(tp)<br>      |
|  14|[0x80002278]<br>0x0B00FF00|- rs1 : x23<br> - rs2 : x11<br> - rd : x17<br> - rs2_b3_val == -33<br> - rs2_b2_val == -17<br> - rs2_b0_val == 16<br> - rs1_b3_val == -86<br>                                                                                                                                                                                                                                                                                                                                    |[0x800002bc]:KHMX8 a7, s7, a1<br> [0x800002c0]:csrrs s7, vxsat, zero<br> [0x800002c4]:sw a7, 104(tp)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x24<br> - rs2_b3_val == -17<br> - rs2_b2_val == -1<br> - rs2_b1_val == 4<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                             |[0x800002dc]:KHMX8 s8, zero, s3<br> [0x800002e0]:csrrs zero, vxsat, zero<br> [0x800002e4]:sw s8, 112(tp)<br> |
|  16|[0x80002288]<br>0xFC09FDFC|- rs1 : x20<br> - rs2 : x16<br> - rd : x2<br> - rs2_b3_val == -9<br> - rs2_b0_val == -86<br> - rs1_b3_val == 4<br> - rs1_b2_val == -128<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                |[0x800002fc]:KHMX8 sp, s4, a6<br> [0x80000300]:csrrs s4, vxsat, zero<br> [0x80000304]:sw sp, 120(tp)<br>     |
|  17|[0x80002290]<br>0xFFFF00FF|- rs1 : x28<br> - rs2 : x5<br> - rd : x26<br> - rs2_b3_val == -5<br> - rs2_b2_val == 2<br> - rs2_b1_val == -5<br> - rs2_b0_val == 1<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                    |[0x8000031c]:KHMX8 s10, t3, t0<br> [0x80000320]:csrrs t3, vxsat, zero<br> [0x80000324]:sw s10, 128(tp)<br>   |
|  18|[0x80002298]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x11<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b2_val == -9<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                              |[0x8000033c]:KHMX8 a1, ra, zero<br> [0x80000340]:csrrs ra, vxsat, zero<br> [0x80000344]:sw a1, 136(tp)<br>   |
|  19|[0x800022a0]<br>0x0200FEFF|- rs1 : x18<br> - rs2 : x21<br> - rd : x22<br> - rs2_b3_val == -2<br> - rs2_b1_val == -1<br> - rs2_b0_val == -65<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                       |[0x8000035c]:KHMX8 s6, s2, s5<br> [0x80000360]:csrrs s2, vxsat, zero<br> [0x80000364]:sw s6, 144(tp)<br>     |
|  20|[0x800022a8]<br>0x21FBFFFF|- rs1 : x4<br> - rs2 : x28<br> - rd : x30<br> - rs2_b3_val == -128<br> - rs1_b3_val == -33<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                           |[0x80000384]:KHMX8 t5, tp, t3<br> [0x80000388]:csrrs tp, vxsat, zero<br> [0x8000038c]:sw t5, 0(gp)<br>       |
|  21|[0x800022b0]<br>0xFD2AFEFF|- rs1 : x27<br> - rs2 : x13<br> - rd : x16<br> - rs2_b3_val == 64<br> - rs2_b0_val == -9<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800003a4]:KHMX8 a6, s11, a3<br> [0x800003a8]:csrrs s11, vxsat, zero<br> [0x800003ac]:sw a6, 8(gp)<br>     |
|  22|[0x800022b8]<br>0x001510FA|- rs1 : x29<br> - rs2 : x25<br> - rd : x19<br> - rs2_b3_val == 32<br> - rs2_b2_val == -86<br> - rs2_b1_val == 85<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                      |[0x800003c4]:KHMX8 s3, t4, s9<br> [0x800003c8]:csrrs t4, vxsat, zero<br> [0x800003cc]:sw s3, 16(gp)<br>      |
|  23|[0x800022c0]<br>0x000F0800|- rs1 : x11<br> - rs2 : x30<br> - rd : x27<br> - rs2_b3_val == 16<br> - rs1_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003e0]:KHMX8 s11, a1, t5<br> [0x800003e4]:csrrs a1, vxsat, zero<br> [0x800003e8]:sw s11, 24(gp)<br>    |
|  24|[0x800022c8]<br>0x00000002|- rs1 : x21<br> - rs2 : x20<br> - rd : x5<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000400]:KHMX8 t0, s5, s4<br> [0x80000404]:csrrs s5, vxsat, zero<br> [0x80000408]:sw t0, 32(gp)<br>      |
|  25|[0x800022d0]<br>0xFE0005FC|- rs1 : x10<br> - rs2 : x27<br> - rd : x4<br> - rs2_b3_val == -1<br> - rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000420]:KHMX8 tp, a0, s11<br> [0x80000424]:csrrs a0, vxsat, zero<br> [0x80000428]:sw tp, 40(gp)<br>     |
|  26|[0x800022d8]<br>0x0200FF02|- rs1 : x12<br> - rs2 : x22<br> - rd : x23<br> - rs1_b2_val == -33<br> - rs1_b1_val == -1<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                            |[0x80000440]:KHMX8 s7, a2, s6<br> [0x80000444]:csrrs a2, vxsat, zero<br> [0x80000448]:sw s7, 48(gp)<br>      |
|  27|[0x800022e0]<br>0x000000FF|- rs1 : x8<br> - rs2 : x2<br> - rd : x1<br> - rs2_b2_val == -3<br> - rs1_b2_val == -17<br> - rs1_b1_val == -86<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000460]:KHMX8 ra, fp, sp<br> [0x80000464]:csrrs fp, vxsat, zero<br> [0x80000468]:sw ra, 56(gp)<br>      |
|  28|[0x800022e8]<br>0xD4000000|- rs1 : x30<br> - rs2 : x26<br> - rd : x7<br> - rs2_b2_val == 85<br> - rs2_b1_val == -17<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000480]:KHMX8 t2, t5, s10<br> [0x80000484]:csrrs t5, vxsat, zero<br> [0x80000488]:sw t2, 64(gp)<br>     |
|  29|[0x800022f0]<br>0x00FF00FF|- rs1 : x31<br> - rs2 : x17<br> - rd : x18<br> - rs2_b2_val == 64<br> - rs2_b0_val == -2<br> - rs1_b2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800004a0]:KHMX8 s2, t6, a7<br> [0x800004a4]:csrrs t6, vxsat, zero<br> [0x800004a8]:sw s2, 72(gp)<br>      |
|  30|[0x800022f8]<br>0xFFFFFB00|- rs1 : x22<br> - rs2 : x4<br> - rd : x8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800004c0]:KHMX8 fp, s6, tp<br> [0x800004c4]:csrrs s6, vxsat, zero<br> [0x800004c8]:sw fp, 80(gp)<br>      |
|  31|[0x80002300]<br>0x083F0001|- rs1 : x7<br> - rs2 : x10<br> - rd : x21<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004e0]:KHMX8 s5, t2, a0<br> [0x800004e4]:csrrs t2, vxsat, zero<br> [0x800004e8]:sw s5, 88(gp)<br>      |
|  32|[0x80002308]<br>0xFF00FF01|- rs1 : x26<br> - rs2 : x18<br> - rd : x13<br> - rs2_b1_val == -3<br> - rs2_b0_val == 4<br> - rs1_b3_val == 8<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000500]:KHMX8 a3, s10, s2<br> [0x80000504]:csrrs s10, vxsat, zero<br> [0x80000508]:sw a3, 96(gp)<br>    |
|  33|[0x80002310]<br>0xFD00FD03|- rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000520]:KHMX8 t6, t5, t4<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 104(gp)<br>     |
|  34|[0x80002318]<br>0x00FC0004|- rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000540]:KHMX8 t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 112(gp)<br>     |
|  35|[0x80002328]<br>0x06000100|- rs2_b0_val == 2<br> - rs1_b3_val == -128<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000580]:KHMX8 t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 128(gp)<br>     |
|  36|[0x80002330]<br>0x1F000208|- rs2_b2_val == 32<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005a0]:KHMX8 t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 136(gp)<br>     |
|  37|[0x80002338]<br>0x01F9FFFC|- rs1_b2_val == -86<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800005c0]:KHMX8 t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 144(gp)<br>     |
|  38|[0x80002340]<br>0x00F71FFF|- rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800005e0]:KHMX8 t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 152(gp)<br>     |
|  39|[0x80002348]<br>0x0000F5F7|- rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000600]:KHMX8 t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 160(gp)<br>     |
|  40|[0x80002350]<br>0x00003EFE|- rs2_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000620]:KHMX8 t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 168(gp)<br>     |
|  41|[0x80002358]<br>0x000000FF|- rs2_b1_val == -33<br> - rs2_b0_val == -17<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000640]:KHMX8 t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 176(gp)<br>     |
|  42|[0x80002360]<br>0x0200DF04|- rs2_b1_val == -9<br> - rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000660]:KHMX8 t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 184(gp)<br>     |
|  43|[0x80002368]<br>0xFDFFFCFF|- rs2_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000680]:KHMX8 t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 192(gp)<br>     |
|  44|[0x80002370]<br>0x01FFFFFF|- rs2_b3_val == -3<br> - rs2_b1_val == 64<br> - rs2_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006a0]:KHMX8 t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 200(gp)<br>     |
|  45|[0x80002378]<br>0x01000200|- rs2_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006c0]:KHMX8 t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 208(gp)<br>     |
|  46|[0x80002380]<br>0x000001E0|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006e0]:KHMX8 t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 216(gp)<br>     |
|  47|[0x80002388]<br>0xFEFF0004|- rs1_b0_val == -128<br> - rs2_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000700]:KHMX8 t6, t5, t4<br> [0x80000704]:csrrs t5, vxsat, zero<br> [0x80000708]:sw t6, 224(gp)<br>     |
|  48|[0x80002390]<br>0xFFFAFFFD|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000720]:KHMX8 t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 232(gp)<br>     |
|  49|[0x80002398]<br>0xFF01013F|- rs1_b3_val == -2<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000740]:KHMX8 t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 240(gp)<br>     |
|  50|[0x800023a0]<br>0xFFFFFFFB|- rs1_b3_val == 16<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000760]:KHMX8 t6, t5, t4<br> [0x80000764]:csrrs t5, vxsat, zero<br> [0x80000768]:sw t6, 248(gp)<br>     |
|  51|[0x800023a8]<br>0x1F00FFFF|- rs1_b3_val == 64<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000780]:KHMX8 t6, t5, t4<br> [0x80000784]:csrrs t5, vxsat, zero<br> [0x80000788]:sw t6, 256(gp)<br>     |
|  52|[0x800023b0]<br>0xF4040000|- rs1_b3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800007a0]:KHMX8 t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 264(gp)<br>     |
|  53|[0x800023b8]<br>0x0F00FFEA|- rs2_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800007c0]:KHMX8 t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 272(gp)<br>     |
|  54|[0x800023c0]<br>0xFFFF00FF|- rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800007e0]:KHMX8 t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 280(gp)<br>     |
|  55|[0x800023c8]<br>0x0021FF03|- rs2_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000800]:KHMX8 t6, t5, t4<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sw t6, 288(gp)<br>     |
|  56|[0x800023d0]<br>0x08FDFFFF|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000820]:KHMX8 t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 296(gp)<br>     |
|  57|[0x800023d8]<br>0x00FEFBFF|- rs2_b2_val == 8<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000840]:KHMX8 t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 304(gp)<br>     |
|  58|[0x800023e0]<br>0x00FEFB00|- rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000860]:KHMX8 t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 312(gp)<br>     |
|  59|[0x800023e8]<br>0xFF000304|- rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000880]:KHMX8 t6, t5, t4<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sw t6, 320(gp)<br>     |
