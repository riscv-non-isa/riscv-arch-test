
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002440', '140 words')]      |
| COV_LABELS                | kadd8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kadd8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 140      |
| STAT1                     | 66      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 70     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000944]:KADD8 t6, t5, t4
      [0x80000948]:csrrs t5, vxsat, zero
      [0x8000094c]:sw t6, 368(ra)
 -- Signature Address: 0x80002418 Data: 0xD0B8A2C2
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b2_val == -65
      - rs2_b1_val == -86
      - rs1_b3_val == 16
      - rs1_b0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000984]:KADD8 t6, t5, t4
      [0x80000988]:csrrs t5, vxsat, zero
      [0x8000098c]:sw t6, 384(ra)
 -- Signature Address: 0x80002428 Data: 0x4F5CF880
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == -128
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val < 0
      - rs2_b3_val == 16
      - rs2_b2_val == 85
      - rs2_b1_val == 1
      - rs2_b0_val == -1
      - rs1_b1_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:KADD8 t6, t5, t4
      [0x800009a8]:csrrs t5, vxsat, zero
      [0x800009ac]:sw t6, 392(ra)
 -- Signature Address: 0x80002430 Data: 0xFC00F405
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b3_val == -2
      - rs2_b2_val == -3
      - rs1_b3_val == -2
      - rs1_b1_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009c4]:KADD8 t6, t5, t4
      [0x800009c8]:csrrs t5, vxsat, zero
      [0x800009cc]:sw t6, 400(ra)
 -- Signature Address: 0x80002438 Data: 0xDFF807EF
 -- Redundant Coverpoints hit by the op
      - opcode : kadd8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == -65
      - rs2_b2_val == -9
      - rs2_b1_val == -9
      - rs2_b0_val == 0
      - rs1_b3_val == 32
      - rs1_b2_val == 1
      - rs1_b1_val == 16
      - rs1_b0_val == -17






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b3_val == 16', 'rs2_b2_val == 85', 'rs2_b1_val == 1', 'rs2_b0_val == -1', 'rs1_b3_val == 16', 'rs1_b2_val == 85', 'rs1_b1_val == 1', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x8000011c]:KADD8 t5, t5, t5
	-[0x80000120]:csrrs t5, vxsat, zero
	-[0x80000124]:sw t5, 0(a7)
Current Store : [0x80000128] : sw t5, 4(a7) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x16', 'rd : x19', 'rs1 == rs2 != rd', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs2_b3_val == -2', 'rs2_b2_val == -3', 'rs1_b3_val == -2', 'rs1_b2_val == -3']
Last Code Sequence : 
	-[0x8000013c]:KADD8 s3, a6, a6
	-[0x80000140]:csrrs a6, vxsat, zero
	-[0x80000144]:sw s3, 8(a7)
Current Store : [0x80000148] : sw a6, 12(a7) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x13', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b1_val == 0', 'rs1_b3_val == -17', 'rs1_b2_val == -33', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x8000015c]:KADD8 sp, a2, a3
	-[0x80000160]:csrrs a2, vxsat, zero
	-[0x80000164]:sw sp, 16(a7)
Current Store : [0x80000168] : sw a2, 20(a7) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x21', 'rs2 == rd != rs1', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == -86', 'rs2_b1_val == 64', 'rs1_b3_val == 1', 'rs1_b2_val == 0']
Last Code Sequence : 
	-[0x8000017c]:KADD8 s5, ra, s5
	-[0x80000180]:csrrs ra, vxsat, zero
	-[0x80000184]:sw s5, 24(a7)
Current Store : [0x80000188] : sw ra, 28(a7) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rd : x15', 'rs1 == rd != rs2', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs2_b1_val == 85', 'rs2_b0_val == -17', 'rs1_b3_val == 0', 'rs1_b1_val == -3']
Last Code Sequence : 
	-[0x8000019c]:KADD8 a5, a5, s2
	-[0x800001a0]:csrrs a5, vxsat, zero
	-[0x800001a4]:sw a5, 32(a7)
Current Store : [0x800001a8] : sw a5, 36(a7) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x29', 'rd : x1', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b2_val == -128']
Last Code Sequence : 
	-[0x800001bc]:KADD8 ra, s1, t4
	-[0x800001c0]:csrrs s1, vxsat, zero
	-[0x800001c4]:sw ra, 40(a7)
Current Store : [0x800001c8] : sw s1, 44(a7) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rd : x16', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs2_b1_val == -17', 'rs2_b0_val == 8', 'rs1_b1_val == 64', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800001dc]:KADD8 a6, s2, s1
	-[0x800001e0]:csrrs s2, vxsat, zero
	-[0x800001e4]:sw a6, 48(a7)
Current Store : [0x800001e8] : sw s2, 52(a7) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x23', 'rd : x26', 'rs2_b3_val == -9', 'rs2_b1_val == 2', 'rs2_b0_val == 4', 'rs1_b1_val == 85', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800001fc]:KADD8 s10, s6, s7
	-[0x80000200]:csrrs s6, vxsat, zero
	-[0x80000204]:sw s10, 56(a7)
Current Store : [0x80000208] : sw s6, 60(a7) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x12', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b3_val == 4', 'rs2_b2_val == -33', 'rs2_b0_val == 16', 'rs1_b3_val == -65', 'rs1_b1_val == 4', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x8000021c]:KADD8 a2, gp, s11
	-[0x80000220]:csrrs gp, vxsat, zero
	-[0x80000224]:sw a2, 64(a7)
Current Store : [0x80000228] : sw gp, 68(a7) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x14', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b0_val == 0', 'rs1_b3_val == -86']
Last Code Sequence : 
	-[0x8000023c]:KADD8 a4, s3, zero
	-[0x80000240]:csrrs s3, vxsat, zero
	-[0x80000244]:sw a4, 72(a7)
Current Store : [0x80000248] : sw s3, 76(a7) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x7', 'rs2_b3_val == 127', 'rs2_b2_val == 64', 'rs2_b0_val == -86', 'rs1_b3_val == -9', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x8000025c]:KADD8 t2, t4, t3
	-[0x80000260]:csrrs t4, vxsat, zero
	-[0x80000264]:sw t2, 80(a7)
Current Store : [0x80000268] : sw t4, 84(a7) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x24', 'rd : x0', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs2_b3_val == -65', 'rs2_b2_val == -9', 'rs2_b1_val == -9', 'rs1_b3_val == 32', 'rs1_b2_val == 1', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000027c]:KADD8 zero, s4, s8
	-[0x80000280]:csrrs s4, vxsat, zero
	-[0x80000284]:sw zero, 88(a7)
Current Store : [0x80000288] : sw s4, 92(a7) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x27', 'rs1_b0_val == -128', 'rs2_b3_val == -33', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x8000029c]:KADD8 s11, s10, a0
	-[0x800002a0]:csrrs s10, vxsat, zero
	-[0x800002a4]:sw s11, 96(a7)
Current Store : [0x800002a8] : sw s10, 100(a7) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x20', 'rs2_b3_val == -17', 'rs2_b1_val == 8', 'rs1_b2_val == 4', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x800002bc]:KADD8 s4, t2, sp
	-[0x800002c0]:csrrs t2, vxsat, zero
	-[0x800002c4]:sw s4, 104(a7)
Current Store : [0x800002c8] : sw t2, 108(a7) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x12', 'rd : x23', 'rs2_b3_val == -5', 'rs2_b2_val == -2', 'rs2_b1_val == -3', 'rs2_b0_val == 85', 'rs1_b2_val == 127', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x800002dc]:KADD8 s7, fp, a2
	-[0x800002e0]:csrrs fp, vxsat, zero
	-[0x800002e4]:sw s7, 112(a7)
Current Store : [0x800002e8] : sw fp, 116(a7) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x11', 'rd : x24', 'rs2_b3_val == -3', 'rs2_b0_val == -9', 'rs1_b3_val == -3', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x800002fc]:KADD8 s8, a4, a1
	-[0x80000300]:csrrs a4, vxsat, zero
	-[0x80000304]:sw s8, 120(a7)
Current Store : [0x80000308] : sw a4, 124(a7) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x8', 'rs2_b3_val == -128', 'rs2_b2_val == 8', 'rs1_b3_val == 127', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x8000031c]:KADD8 fp, a0, ra
	-[0x80000320]:csrrs a0, vxsat, zero
	-[0x80000324]:sw fp, 128(a7)
Current Store : [0x80000328] : sw a0, 132(a7) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x9', 'rs2_b3_val == 64', 'rs2_b2_val == 4', 'rs2_b1_val == -86', 'rs1_b3_val == 85', 'rs1_b2_val == 64', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x8000033c]:KADD8 s1, t1, s3
	-[0x80000340]:csrrs t1, vxsat, zero
	-[0x80000344]:sw s1, 136(a7)
Current Store : [0x80000348] : sw t1, 140(a7) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rd : x28', 'rs2_b3_val == 32', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x8000035c]:KADD8 t3, t0, tp
	-[0x80000360]:csrrs t0, vxsat, zero
	-[0x80000364]:sw t3, 144(a7)
Current Store : [0x80000368] : sw t0, 148(a7) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x7', 'rd : x6', 'rs2_b3_val == 8', 'rs2_b2_val == -1', 'rs1_b2_val == -9', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x80000384]:KADD8 t1, s7, t2
	-[0x80000388]:csrrs s7, vxsat, zero
	-[0x8000038c]:sw t1, 0(ra)
Current Store : [0x80000390] : sw s7, 4(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x3', 'rs2_b3_val == 2']
Last Code Sequence : 
	-[0x800003a4]:KADD8 gp, tp, s4
	-[0x800003a8]:csrrs tp, vxsat, zero
	-[0x800003ac]:sw gp, 8(ra)
Current Store : [0x800003b0] : sw tp, 12(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x18', 'rs2_b3_val == 1', 'rs2_b2_val == -86', 'rs2_b0_val == -5', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x800003c4]:KADD8 s2, s9, s10
	-[0x800003c8]:csrrs s9, vxsat, zero
	-[0x800003cc]:sw s2, 16(ra)
Current Store : [0x800003d0] : sw s9, 20(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x14', 'rd : x5']
Last Code Sequence : 
	-[0x800003e4]:KADD8 t0, a1, a4
	-[0x800003e8]:csrrs a1, vxsat, zero
	-[0x800003ec]:sw t0, 24(ra)
Current Store : [0x800003f0] : sw a1, 28(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rd : x31', 'rs2_b3_val == -1']
Last Code Sequence : 
	-[0x80000404]:KADD8 t6, zero, fp
	-[0x80000408]:csrrs zero, vxsat, zero
	-[0x8000040c]:sw t6, 32(ra)
Current Store : [0x80000410] : sw zero, 36(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rd : x4', 'rs2_b2_val == 127']
Last Code Sequence : 
	-[0x80000424]:KADD8 tp, a3, t0
	-[0x80000428]:csrrs a3, vxsat, zero
	-[0x8000042c]:sw tp, 40(ra)
Current Store : [0x80000430] : sw a3, 44(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x3', 'rd : x13', 'rs2_b2_val == -65', 'rs1_b3_val == -5', 'rs1_b1_val == -86']
Last Code Sequence : 
	-[0x80000444]:KADD8 a3, s5, gp
	-[0x80000448]:csrrs s5, vxsat, zero
	-[0x8000044c]:sw a3, 48(ra)
Current Store : [0x80000450] : sw s5, 52(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x11', 'rs1_b3_val == -128', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x80000464]:KADD8 a1, t3, s9
	-[0x80000468]:csrrs t3, vxsat, zero
	-[0x8000046c]:sw a1, 56(ra)
Current Store : [0x80000470] : sw t3, 60(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x10', 'rs2_b1_val == -2', 'rs1_b3_val == 4', 'rs1_b2_val == -17', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x80000484]:KADD8 a0, a7, s6
	-[0x80000488]:csrrs a7, vxsat, zero
	-[0x8000048c]:sw a0, 64(ra)
Current Store : [0x80000490] : sw a7, 68(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x17', 'rs2_b1_val == 32', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x800004a4]:KADD8 a7, s8, t6
	-[0x800004a8]:csrrs s8, vxsat, zero
	-[0x800004ac]:sw a7, 72(ra)
Current Store : [0x800004b0] : sw s8, 76(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x29', 'rs1_b2_val == -2']
Last Code Sequence : 
	-[0x800004c4]:KADD8 t4, s11, a5
	-[0x800004c8]:csrrs s11, vxsat, zero
	-[0x800004cc]:sw t4, 80(ra)
Current Store : [0x800004d0] : sw s11, 84(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x6', 'rd : x22', 'rs2_b2_val == 16', 'rs2_b1_val == -65', 'rs1_b2_val == 32', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800004e4]:KADD8 s6, t6, t1
	-[0x800004e8]:csrrs t6, vxsat, zero
	-[0x800004ec]:sw s6, 88(ra)
Current Store : [0x800004f0] : sw t6, 92(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x17', 'rd : x25', 'rs2_b3_val == 85', 'rs2_b1_val == 127', 'rs1_b2_val == 16']
Last Code Sequence : 
	-[0x80000504]:KADD8 s9, sp, a7
	-[0x80000508]:csrrs sp, vxsat, zero
	-[0x8000050c]:sw s9, 96(ra)
Current Store : [0x80000510] : sw sp, 100(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_b2_val == 32', 'rs1_b2_val == 8', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x80000524]:KADD8 t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 104(ra)
Current Store : [0x80000530] : sw t5, 108(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_b2_val == 1', 'rs1_b2_val == 2', 'rs1_b1_val == -2', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x80000544]:KADD8 t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 112(ra)
Current Store : [0x80000550] : sw t5, 116(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -1']
Last Code Sequence : 
	-[0x80000564]:KADD8 t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 120(ra)
Current Store : [0x80000570] : sw t5, 124(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_b0_val == -128', 'rs1_b1_val == -5']
Last Code Sequence : 
	-[0x80000584]:KADD8 t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 128(ra)
Current Store : [0x80000590] : sw t5, 132(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800005a4]:KADD8 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 136(ra)
Current Store : [0x800005b0] : sw t5, 140(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_b2_val == -5', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x800005c4]:KADD8 t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 144(ra)
Current Store : [0x800005d0] : sw t5, 148(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800005e4]:KADD8 t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 152(ra)
Current Store : [0x800005f0] : sw t5, 156(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_b0_val == -86']
Last Code Sequence : 
	-[0x80000604]:KADD8 t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 160(ra)
Current Store : [0x80000610] : sw t5, 164(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_b3_val == -33', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000624]:KADD8 t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 168(ra)
Current Store : [0x80000630] : sw t5, 172(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_b1_val == -33', 'rs2_b0_val == 2']
Last Code Sequence : 
	-[0x80000644]:KADD8 t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 176(ra)
Current Store : [0x80000650] : sw t5, 180(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_b1_val == -5']
Last Code Sequence : 
	-[0x80000664]:KADD8 t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 184(ra)
Current Store : [0x80000670] : sw t5, 188(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_b1_val == -128']
Last Code Sequence : 
	-[0x80000684]:KADD8 t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 192(ra)
Current Store : [0x80000690] : sw t5, 196(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_b1_val == 16']
Last Code Sequence : 
	-[0x800006a4]:KADD8 t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 200(ra)
Current Store : [0x800006b0] : sw t5, 204(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_b1_val == 4', 'rs2_b0_val == -65']
Last Code Sequence : 
	-[0x800006c4]:KADD8 t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 208(ra)
Current Store : [0x800006d0] : sw t5, 212(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_b1_val == -1']
Last Code Sequence : 
	-[0x800006e4]:KADD8 t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 216(ra)
Current Store : [0x800006f0] : sw t5, 220(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_b0_val == 127']
Last Code Sequence : 
	-[0x80000704]:KADD8 t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 224(ra)
Current Store : [0x80000710] : sw t5, 228(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_b2_val == -128']
Last Code Sequence : 
	-[0x80000724]:KADD8 t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 232(ra)
Current Store : [0x80000730] : sw t5, 236(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_b0_val == -33', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x80000744]:KADD8 t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 240(ra)
Current Store : [0x80000750] : sw t5, 244(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_b0_val == -3']
Last Code Sequence : 
	-[0x80000764]:KADD8 t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 248(ra)
Current Store : [0x80000770] : sw t5, 252(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_b0_val == -2']
Last Code Sequence : 
	-[0x80000784]:KADD8 t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 256(ra)
Current Store : [0x80000790] : sw t5, 260(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_b0_val == 64']
Last Code Sequence : 
	-[0x800007a4]:KADD8 t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 264(ra)
Current Store : [0x800007b0] : sw t5, 268(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_b0_val == 32']
Last Code Sequence : 
	-[0x800007c4]:KADD8 t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 272(ra)
Current Store : [0x800007d0] : sw t5, 276(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_b0_val == 1']
Last Code Sequence : 
	-[0x800007e4]:KADD8 t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 280(ra)
Current Store : [0x800007f0] : sw t5, 284(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000804]:KADD8 t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 288(ra)
Current Store : [0x80000810] : sw t5, 292(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_b1_val == -128', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x80000824]:KADD8 t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 296(ra)
Current Store : [0x80000830] : sw t5, 300(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000844]:KADD8 t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 304(ra)
Current Store : [0x80000850] : sw t5, 308(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000864]:KADD8 t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 312(ra)
Current Store : [0x80000870] : sw t5, 316(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000884]:KADD8 t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 320(ra)
Current Store : [0x80000890] : sw t5, 324(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_b2_val == -17']
Last Code Sequence : 
	-[0x800008a4]:KADD8 t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 328(ra)
Current Store : [0x800008b0] : sw t5, 332(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_b3_val == 64']
Last Code Sequence : 
	-[0x800008c4]:KADD8 t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 336(ra)
Current Store : [0x800008d0] : sw t5, 340(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_b2_val == 2']
Last Code Sequence : 
	-[0x800008e4]:KADD8 t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 344(ra)
Current Store : [0x800008f0] : sw t5, 348(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_b3_val == -1']
Last Code Sequence : 
	-[0x80000904]:KADD8 t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 352(ra)
Current Store : [0x80000910] : sw t5, 356(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_b2_val == -86']
Last Code Sequence : 
	-[0x80000924]:KADD8 t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 360(ra)
Current Store : [0x80000930] : sw t5, 364(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val < 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val > 0', 'rs2_b2_val == -65', 'rs2_b1_val == -86', 'rs1_b3_val == 16', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x80000944]:KADD8 t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 368(ra)
Current Store : [0x80000950] : sw t5, 372(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_b3_val == 8']
Last Code Sequence : 
	-[0x80000964]:KADD8 t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 376(ra)
Current Store : [0x80000970] : sw t5, 380(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b0_val == -128', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val < 0 and rs2_b0_val < 0', 'rs2_b3_val == 16', 'rs2_b2_val == 85', 'rs2_b1_val == 1', 'rs2_b0_val == -1', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x80000984]:KADD8 t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 384(ra)
Current Store : [0x80000990] : sw t5, 388(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val == rs2_b3_val', 'rs1_b3_val < 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val < 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val', 'rs1_b0_val > 0 and rs2_b0_val < 0', 'rs2_b3_val == -2', 'rs2_b2_val == -3', 'rs1_b3_val == -2', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800009a4]:KADD8 t6, t5, t4
	-[0x800009a8]:csrrs t5, vxsat, zero
	-[0x800009ac]:sw t6, 392(ra)
Current Store : [0x800009b0] : sw t5, 396(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : kadd8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val', 'rs1_b3_val > 0 and rs2_b3_val < 0', 'rs1_b2_val != rs2_b2_val', 'rs1_b2_val > 0 and rs2_b2_val < 0', 'rs1_b1_val != rs2_b1_val', 'rs1_b1_val > 0 and rs2_b1_val < 0', 'rs1_b0_val != rs2_b0_val', 'rs2_b3_val == -65', 'rs2_b2_val == -9', 'rs2_b1_val == -9', 'rs2_b0_val == 0', 'rs1_b3_val == 32', 'rs1_b2_val == 1', 'rs1_b1_val == 16', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x800009c4]:KADD8 t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 400(ra)
Current Store : [0x800009d0] : sw t5, 404(ra) -- Store: [0x8000243c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                                                                                                                                                 coverpoints                                                                                                                                                                                                                                                                                 |                                                    code                                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kadd8<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b3_val == 16<br> - rs2_b2_val == 85<br> - rs2_b1_val == 1<br> - rs2_b0_val == -1<br> - rs1_b3_val == 16<br> - rs1_b2_val == 85<br> - rs1_b1_val == 1<br> - rs1_b0_val == -1<br> |[0x8000011c]:KADD8 t5, t5, t5<br> [0x80000120]:csrrs t5, vxsat, zero<br> [0x80000124]:sw t5, 0(a7)<br>      |
|   2|[0x80002218]<br>0xFCFA0AF8|- rs1 : x16<br> - rs2 : x16<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs2_b3_val == -2<br> - rs2_b2_val == -3<br> - rs1_b3_val == -2<br> - rs1_b2_val == -3<br>                                                                                                                                                                                                                                                                                                                            |[0x8000013c]:KADD8 s3, a6, a6<br> [0x80000140]:csrrs a6, vxsat, zero<br> [0x80000144]:sw s3, 8(a7)<br>      |
|   3|[0x80002220]<br>0xF2E8C0E0|- rs1 : x12<br> - rs2 : x13<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b1_val == 0<br> - rs1_b3_val == -17<br> - rs1_b2_val == -33<br> - rs1_b0_val == 32<br>                                                                                                                                 |[0x8000015c]:KADD8 sp, a2, a3<br> [0x80000160]:csrrs a2, vxsat, zero<br> [0x80000164]:sw sp, 16(a7)<br>     |
|   4|[0x80002228]<br>0xABF87F08|- rs1 : x1<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == -86<br> - rs2_b1_val == 64<br> - rs1_b3_val == 1<br> - rs1_b2_val == 0<br>                                                                                                                                                                                                                                                                                                                              |[0x8000017c]:KADD8 s5, ra, s5<br> [0x80000180]:csrrs ra, vxsat, zero<br> [0x80000184]:sw s5, 24(a7)<br>     |
|   5|[0x80002230]<br>0x00000001|- rs1 : x15<br> - rs2 : x18<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs2_b1_val == 85<br> - rs2_b0_val == -17<br> - rs1_b3_val == 0<br> - rs1_b1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x8000019c]:KADD8 a5, a5, s2<br> [0x800001a0]:csrrs a5, vxsat, zero<br> [0x800001a4]:sw a5, 32(a7)<br>     |
|   6|[0x80002238]<br>0xE980F8F1|- rs1 : x9<br> - rs2 : x29<br> - rd : x1<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800001bc]:KADD8 ra, s1, t4<br> [0x800001c0]:csrrs s1, vxsat, zero<br> [0x800001c4]:sw ra, 40(a7)<br>     |
|   7|[0x80002240]<br>0xF6D52F0A|- rs1 : x18<br> - rs2 : x9<br> - rd : x16<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b1_val == -17<br> - rs2_b0_val == 8<br> - rs1_b1_val == 64<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x800001dc]:KADD8 a6, s2, s1<br> [0x800001e0]:csrrs s2, vxsat, zero<br> [0x800001e4]:sw a6, 48(a7)<br>     |
|   8|[0x80002248]<br>0xEF485708|- rs1 : x22<br> - rs2 : x23<br> - rd : x26<br> - rs2_b3_val == -9<br> - rs2_b1_val == 2<br> - rs2_b0_val == 4<br> - rs1_b1_val == 85<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800001fc]:KADD8 s10, s6, s7<br> [0x80000200]:csrrs s6, vxsat, zero<br> [0x80000204]:sw s10, 56(a7)<br>   |
|   9|[0x80002250]<br>0xC3D9FEFF|- rs1 : x3<br> - rs2 : x27<br> - rd : x12<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == 4<br> - rs2_b2_val == -33<br> - rs2_b0_val == 16<br> - rs1_b3_val == -65<br> - rs1_b1_val == 4<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                             |[0x8000021c]:KADD8 a2, gp, s11<br> [0x80000220]:csrrs gp, vxsat, zero<br> [0x80000224]:sw a2, 64(a7)<br>    |
|  10|[0x80002258]<br>0xAAFA01F9|- rs1 : x19<br> - rs2 : x0<br> - rd : x14<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000023c]:KADD8 a4, s3, zero<br> [0x80000240]:csrrs s3, vxsat, zero<br> [0x80000244]:sw a4, 72(a7)<br>   |
|  11|[0x80002260]<br>0x763903AB|- rs1 : x29<br> - rs2 : x28<br> - rd : x7<br> - rs2_b3_val == 127<br> - rs2_b2_val == 64<br> - rs2_b0_val == -86<br> - rs1_b3_val == -9<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000025c]:KADD8 t2, t4, t3<br> [0x80000260]:csrrs t4, vxsat, zero<br> [0x80000264]:sw t2, 80(a7)<br>     |
|  12|[0x80002268]<br>0x00000000|- rs1 : x20<br> - rs2 : x24<br> - rd : x0<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs2_b3_val == -65<br> - rs2_b2_val == -9<br> - rs2_b1_val == -9<br> - rs1_b3_val == 32<br> - rs1_b2_val == 1<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                              |[0x8000027c]:KADD8 zero, s4, s8<br> [0x80000280]:csrrs s4, vxsat, zero<br> [0x80000284]:sw zero, 88(a7)<br> |
|  13|[0x80002270]<br>0xD80EB589|- rs1 : x26<br> - rs2 : x10<br> - rd : x27<br> - rs1_b0_val == -128<br> - rs2_b3_val == -33<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000029c]:KADD8 s11, s10, a0<br> [0x800002a0]:csrrs s10, vxsat, zero<br> [0x800002a4]:sw s11, 96(a7)<br> |
|  14|[0x80002278]<br>0xF00B0E08|- rs1 : x7<br> - rs2 : x2<br> - rd : x20<br> - rs2_b3_val == -17<br> - rs2_b1_val == 8<br> - rs1_b2_val == 4<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002bc]:KADD8 s4, t2, sp<br> [0x800002c0]:csrrs t2, vxsat, zero<br> [0x800002c4]:sw s4, 104(a7)<br>    |
|  15|[0x80002280]<br>0xF57D7C54|- rs1 : x8<br> - rs2 : x12<br> - rd : x23<br> - rs2_b3_val == -5<br> - rs2_b2_val == -2<br> - rs2_b1_val == -3<br> - rs2_b0_val == 85<br> - rs1_b2_val == 127<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800002dc]:KADD8 s7, fp, a2<br> [0x800002e0]:csrrs fp, vxsat, zero<br> [0x800002e4]:sw s7, 112(a7)<br>    |
|  16|[0x80002288]<br>0xFA3DFAF7|- rs1 : x14<br> - rs2 : x11<br> - rd : x24<br> - rs2_b3_val == -3<br> - rs2_b0_val == -9<br> - rs1_b3_val == -3<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800002fc]:KADD8 s8, a4, a1<br> [0x80000300]:csrrs a4, vxsat, zero<br> [0x80000304]:sw s8, 120(a7)<br>    |
|  17|[0x80002290]<br>0xFFC8080A|- rs1 : x10<br> - rs2 : x1<br> - rd : x8<br> - rs2_b3_val == -128<br> - rs2_b2_val == 8<br> - rs1_b3_val == 127<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000031c]:KADD8 fp, a0, ra<br> [0x80000320]:csrrs a0, vxsat, zero<br> [0x80000324]:sw fp, 128(a7)<br>    |
|  18|[0x80002298]<br>0x7F448944|- rs1 : x6<br> - rs2 : x19<br> - rd : x9<br> - rs2_b3_val == 64<br> - rs2_b2_val == 4<br> - rs2_b1_val == -86<br> - rs1_b3_val == 85<br> - rs1_b2_val == 64<br> - rs1_b1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000033c]:KADD8 s1, t1, s3<br> [0x80000340]:csrrs t1, vxsat, zero<br> [0x80000344]:sw s1, 136(a7)<br>    |
|  19|[0x800022a0]<br>0xE0FFF2BF|- rs1 : x5<br> - rs2 : x4<br> - rd : x28<br> - rs2_b3_val == 32<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000035c]:KADD8 t3, t0, tp<br> [0x80000360]:csrrs t0, vxsat, zero<br> [0x80000364]:sw t3, 144(a7)<br>    |
|  20|[0x800022a8]<br>0xC7F60B0D|- rs1 : x23<br> - rs2 : x7<br> - rd : x6<br> - rs2_b3_val == 8<br> - rs2_b2_val == -1<br> - rs1_b2_val == -9<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000384]:KADD8 t1, s7, t2<br> [0x80000388]:csrrs s7, vxsat, zero<br> [0x8000038c]:sw t1, 0(ra)<br>      |
|  21|[0x800022b0]<br>0x41470AE9|- rs1 : x4<br> - rs2 : x20<br> - rd : x3<br> - rs2_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003a4]:KADD8 gp, tp, s4<br> [0x800003a8]:csrrs tp, vxsat, zero<br> [0x800003ac]:sw gp, 8(ra)<br>      |
|  22|[0x800022b8]<br>0xFFA3FCF5|- rs1 : x25<br> - rs2 : x26<br> - rd : x18<br> - rs2_b3_val == 1<br> - rs2_b2_val == -86<br> - rs2_b0_val == -5<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800003c4]:KADD8 s2, s9, s10<br> [0x800003c8]:csrrs s9, vxsat, zero<br> [0x800003cc]:sw s2, 16(ra)<br>    |
|  23|[0x800022c0]<br>0x03C5C60C|- rs1 : x11<br> - rs2 : x14<br> - rd : x5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800003e4]:KADD8 t0, a1, a4<br> [0x800003e8]:csrrs a1, vxsat, zero<br> [0x800003ec]:sw t0, 24(ra)<br>     |
|  24|[0x800022c8]<br>0xFF4002FB|- rs1 : x0<br> - rs2 : x8<br> - rd : x31<br> - rs2_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000404]:KADD8 t6, zero, fp<br> [0x80000408]:csrrs zero, vxsat, zero<br> [0x8000040c]:sw t6, 32(ra)<br> |
|  25|[0x800022d0]<br>0xA47FE1C5|- rs1 : x13<br> - rs2 : x5<br> - rd : x4<br> - rs2_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000424]:KADD8 tp, a3, t0<br> [0x80000428]:csrrs a3, vxsat, zero<br> [0x8000042c]:sw tp, 40(ra)<br>     |
|  26|[0x800022d8]<br>0xF9FEAAF9|- rs1 : x21<br> - rs2 : x3<br> - rd : x13<br> - rs2_b2_val == -65<br> - rs1_b3_val == -5<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000444]:KADD8 a3, s5, gp<br> [0x80000448]:csrrs s5, vxsat, zero<br> [0x8000044c]:sw a3, 48(ra)<br>     |
|  27|[0x800022e0]<br>0x809EFB03|- rs1 : x28<br> - rs2 : x25<br> - rd : x11<br> - rs1_b3_val == -128<br> - rs1_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000464]:KADD8 a1, t3, s9<br> [0x80000468]:csrrs t3, vxsat, zero<br> [0x8000046c]:sw a1, 56(ra)<br>     |
|  28|[0x800022e8]<br>0xFCE9F8F4|- rs1 : x17<br> - rs2 : x22<br> - rd : x10<br> - rs2_b1_val == -2<br> - rs1_b3_val == 4<br> - rs1_b2_val == -17<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000484]:KADD8 a0, a7, s6<br> [0x80000488]:csrrs a7, vxsat, zero<br> [0x8000048c]:sw a0, 64(ra)<br>     |
|  29|[0x800022f0]<br>0xF5006004|- rs1 : x24<br> - rs2 : x31<br> - rd : x17<br> - rs2_b1_val == 32<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800004a4]:KADD8 a7, s8, t6<br> [0x800004a8]:csrrs s8, vxsat, zero<br> [0x800004ac]:sw a7, 72(ra)<br>     |
|  30|[0x800022f8]<br>0x213E05FF|- rs1 : x27<br> - rs2 : x15<br> - rd : x29<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800004c4]:KADD8 t4, s11, a5<br> [0x800004c8]:csrrs s11, vxsat, zero<br> [0x800004cc]:sw t4, 80(ra)<br>   |
|  31|[0x80002300]<br>0x7930B965|- rs1 : x31<br> - rs2 : x6<br> - rd : x22<br> - rs2_b2_val == 16<br> - rs2_b1_val == -65<br> - rs1_b2_val == 32<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800004e4]:KADD8 s6, t6, t1<br> [0x800004e8]:csrrs t6, vxsat, zero<br> [0x800004ec]:sw s6, 88(ra)<br>     |
|  32|[0x80002308]<br>0x4E0C7F11|- rs1 : x2<br> - rs2 : x17<br> - rd : x25<br> - rs2_b3_val == 85<br> - rs2_b1_val == 127<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000504]:KADD8 s9, sp, a7<br> [0x80000508]:csrrs sp, vxsat, zero<br> [0x8000050c]:sw s9, 96(ra)<br>     |
|  33|[0x80002310]<br>0xFE28F404|- rs2_b2_val == 32<br> - rs1_b2_val == 8<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000524]:KADD8 t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 104(ra)<br>    |
|  34|[0x80002318]<br>0x8003FBFB|- rs2_b2_val == 1<br> - rs1_b2_val == 2<br> - rs1_b1_val == -2<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000544]:KADD8 t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 112(ra)<br>    |
|  35|[0x80002320]<br>0xFBFDFFC1|- rs1_b2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000564]:KADD8 t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 120(ra)<br>    |
|  36|[0x80002328]<br>0xC207FE80|- rs2_b0_val == -128<br> - rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000584]:KADD8 t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 128(ra)<br>    |
|  37|[0x80002330]<br>0x80E02806|- rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800005a4]:KADD8 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 136(ra)<br>    |
|  38|[0x80002338]<br>0xF2045DFB|- rs2_b2_val == -5<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005c4]:KADD8 t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 144(ra)<br>    |
|  39|[0x80002340]<br>0x40F607C0|- rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005e4]:KADD8 t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 152(ra)<br>    |
|  40|[0x80002348]<br>0xFFFCFBB3|- rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000604]:KADD8 t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 160(ra)<br>    |
|  41|[0x80002350]<br>0xFF06A07F|- rs1_b3_val == -33<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000624]:KADD8 t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 168(ra)<br>    |
|  42|[0x80002358]<br>0x0447DAFD|- rs2_b1_val == -33<br> - rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000644]:KADD8 t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 176(ra)<br>    |
|  43|[0x80002360]<br>0xEFFFF3FE|- rs2_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000664]:KADD8 t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 184(ra)<br>    |
|  44|[0x80002368]<br>0xF37F87F7|- rs2_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000684]:KADD8 t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 192(ra)<br>    |
|  45|[0x80002370]<br>0xF86E0FB7|- rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006a4]:KADD8 t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 200(ra)<br>    |
|  46|[0x80002378]<br>0xEA0C2480|- rs2_b1_val == 4<br> - rs2_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800006c4]:KADD8 t6, t5, t4<br> [0x800006c8]:csrrs t5, vxsat, zero<br> [0x800006cc]:sw t6, 208(ra)<br>    |
|  47|[0x80002380]<br>0x5CF9FD11|- rs2_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006e4]:KADD8 t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 216(ra)<br>    |
|  48|[0x80002388]<br>0xFAF9097F|- rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000704]:KADD8 t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 224(ra)<br>    |
|  49|[0x80002390]<br>0x3DBFFFFA|- rs2_b2_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000724]:KADD8 t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 232(ra)<br>    |
|  50|[0x80002398]<br>0x057F0BE4|- rs2_b0_val == -33<br> - rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000744]:KADD8 t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 240(ra)<br>    |
|  51|[0x800023a0]<br>0x03060C03|- rs2_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000764]:KADD8 t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 248(ra)<br>    |
|  52|[0x800023a8]<br>0x061207A8|- rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000784]:KADD8 t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 256(ra)<br>    |
|  53|[0x800023b0]<br>0xF00AC23F|- rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800007a4]:KADD8 t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 264(ra)<br>    |
|  54|[0x800023b8]<br>0xF8807FCA|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800007c4]:KADD8 t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 272(ra)<br>    |
|  55|[0x800023c0]<br>0xB67E84FC|- rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800007e4]:KADD8 t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 280(ra)<br>    |
|  56|[0x800023c8]<br>0x8001FEC2|- rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000804]:KADD8 t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 288(ra)<br>    |
|  57|[0x800023d0]<br>0xD6E7BFE3|- rs1_b1_val == -128<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000824]:KADD8 t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 296(ra)<br>    |
|  58|[0x800023d8]<br>0xFFB2F5FB|- rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000844]:KADD8 t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 304(ra)<br>    |
|  59|[0x800023e0]<br>0x0680503B|- rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000864]:KADD8 t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 312(ra)<br>    |
|  60|[0x800023e8]<br>0xF1550730|- rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000884]:KADD8 t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 320(ra)<br>    |
|  61|[0x800023f0]<br>0xFDEAE9F0|- rs2_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800008a4]:KADD8 t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 328(ra)<br>    |
|  62|[0x800023f8]<br>0x453C3780|- rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008c4]:KADD8 t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 336(ra)<br>    |
|  63|[0x80002400]<br>0x240BFDFF|- rs2_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800008e4]:KADD8 t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 344(ra)<br>    |
|  64|[0x80002408]<br>0xF9EAFA9F|- rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000904]:KADD8 t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 352(ra)<br>    |
|  65|[0x80002410]<br>0xBFE9FE02|- rs1_b2_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000924]:KADD8 t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 360(ra)<br>    |
|  66|[0x80002420]<br>0x06360CF7|- rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000964]:KADD8 t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 376(ra)<br>    |
