
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ac0')]      |
| SIG_REGION                | [('0x80002210', '0x800024b0', '168 words')]      |
| COV_LABELS                | kslra8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslra8-01.S    |
| Total Number of coverpoints| 254     |
| Total Coverpoints Hit     | 248      |
| Total Signature Updates   | 166      |
| STAT1                     | 81      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 83     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000790]:KSLRA8 t6, t5, t4
      [0x80000794]:csrrs t5, vxsat, zero
      [0x80000798]:sw t6, 176(ra)
 -- Signature Address: 0x800023c8 Data: 0x2A000403
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -513
      - rs1_b3_val == 85
      - rs1_b2_val == 0
      - rs1_b1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000089c]:KSLRA8 t6, t5, t4
      [0x800008a0]:csrrs t5, vxsat, zero
      [0x800008a4]:sw t6, 248(ra)
 -- Signature Address: 0x80002410 Data: 0x10C02AC0
 -- Redundant Coverpoints hit by the op
      - opcode : kslra8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -32769
      - rs1_b3_val == 32
      - rs1_b2_val == -128
      - rs1_b1_val == 85
      - rs1_b0_val == -128






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra8', 'rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs2_val == 1431655765', 'rs1_b3_val == 85', 'rs1_b2_val == 85', 'rs1_b1_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000011c]:KSLRA8 t4, t4, t4
	-[0x80000120]:csrrs t4, vxsat, zero
	-[0x80000124]:sw t4, 0(sp)
Current Store : [0x80000128] : sw t4, 4(sp) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x4', 'rd : x0', 'rs1 == rs2 != rd', 'rs2_val == 2147483647', 'rs1_b3_val == 127', 'rs1_b2_val == -1', 'rs1_b1_val == -1', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x8000013c]:KSLRA8 zero, tp, tp
	-[0x80000140]:csrrs tp, vxsat, zero
	-[0x80000144]:sw zero, 8(sp)
Current Store : [0x80000148] : sw tp, 12(sp) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x14', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1073741825', 'rs1_b3_val == 0', 'rs1_b1_val == 0', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x8000015c]:KSLRA8 s11, gp, a4
	-[0x80000160]:csrrs gp, vxsat, zero
	-[0x80000164]:sw s11, 16(sp)
Current Store : [0x80000168] : sw gp, 20(sp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x6', 'rs2 == rd != rs1', 'rs2_val == -536870913', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x8000017c]:KSLRA8 t1, s11, t1
	-[0x80000180]:csrrs s11, vxsat, zero
	-[0x80000184]:sw t1, 24(sp)
Current Store : [0x80000188] : sw s11, 28(sp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x21', 'rs1 == rd != rs2', 'rs2_val == -268435457', 'rs1_b3_val == -1', 'rs1_b1_val == -5', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000019c]:KSLRA8 s5, s5, s8
	-[0x800001a0]:csrrs s5, vxsat, zero
	-[0x800001a4]:sw s5, 32(sp)
Current Store : [0x800001a8] : sw s5, 36(sp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x24', 'rs2_val == -134217729', 'rs1_b2_val == -17']
Last Code Sequence : 
	-[0x800001bc]:KSLRA8 s8, t5, s1
	-[0x800001c0]:csrrs t5, vxsat, zero
	-[0x800001c4]:sw s8, 40(sp)
Current Store : [0x800001c8] : sw t5, 44(sp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x20', 'rs2_val == -67108865', 'rs1_b1_val == 2', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x800001dc]:KSLRA8 s4, t1, a0
	-[0x800001e0]:csrrs t1, vxsat, zero
	-[0x800001e4]:sw s4, 48(sp)
Current Store : [0x800001e8] : sw t1, 52(sp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x26', 'rd : x5', 'rs2_val == -33554433', 'rs1_b2_val == 4', 'rs1_b1_val == -17']
Last Code Sequence : 
	-[0x800001fc]:KSLRA8 t0, a4, s10
	-[0x80000200]:csrrs a4, vxsat, zero
	-[0x80000204]:sw t0, 56(sp)
Current Store : [0x80000208] : sw a4, 60(sp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x28', 'rs2_val == -16777217', 'rs1_b2_val == -9', 'rs1_b0_val == -3']
Last Code Sequence : 
	-[0x8000021c]:KSLRA8 t3, a5, s3
	-[0x80000220]:csrrs a5, vxsat, zero
	-[0x80000224]:sw t3, 64(sp)
Current Store : [0x80000228] : sw a5, 68(sp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x18', 'rs2_val == -8388609', 'rs1_b3_val == -2', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x8000023c]:KSLRA8 s2, s1, s9
	-[0x80000240]:csrrs s1, vxsat, zero
	-[0x80000244]:sw s2, 72(sp)
Current Store : [0x80000248] : sw s1, 76(sp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x15', 'rs2_val == -4194305', 'rs1_b2_val == 0', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x8000025c]:KSLRA8 a5, zero, a1
	-[0x80000260]:csrrs zero, vxsat, zero
	-[0x80000264]:sw a5, 80(sp)
Current Store : [0x80000268] : sw zero, 84(sp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x3', 'rd : x14', 'rs2_val == -2097153', 'rs1_b3_val == -86', 'rs1_b2_val == 16', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x8000027c]:KSLRA8 a4, a7, gp
	-[0x80000280]:csrrs a7, vxsat, zero
	-[0x80000284]:sw a4, 88(sp)
Current Store : [0x80000288] : sw a7, 92(sp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x28', 'rd : x19', 'rs2_val == -1048577', 'rs1_b3_val == 32', 'rs1_b1_val == -33', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x8000029c]:KSLRA8 s3, a2, t3
	-[0x800002a0]:csrrs a2, vxsat, zero
	-[0x800002a4]:sw s3, 96(sp)
Current Store : [0x800002a8] : sw a2, 100(sp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x20', 'rd : x25', 'rs2_val == -524289', 'rs1_b3_val == -128']
Last Code Sequence : 
	-[0x800002bc]:KSLRA8 s9, t6, s4
	-[0x800002c0]:csrrs t6, vxsat, zero
	-[0x800002c4]:sw s9, 104(sp)
Current Store : [0x800002c8] : sw t6, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x23', 'rd : x12', 'rs2_val == -262145', 'rs1_b3_val == -65', 'rs1_b1_val == -9', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800002dc]:KSLRA8 a2, a6, s7
	-[0x800002e0]:csrrs a6, vxsat, zero
	-[0x800002e4]:sw a2, 112(sp)
Current Store : [0x800002e8] : sw a6, 116(sp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x21', 'rd : x31', 'rs2_val == -131073']
Last Code Sequence : 
	-[0x800002fc]:KSLRA8 t6, a0, s5
	-[0x80000300]:csrrs a0, vxsat, zero
	-[0x80000304]:sw t6, 120(sp)
Current Store : [0x80000308] : sw a0, 124(sp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x22', 'rd : x17', 'rs2_val == -65537', 'rs1_b1_val == -86']
Last Code Sequence : 
	-[0x8000031c]:KSLRA8 a7, t3, s6
	-[0x80000320]:csrrs t3, vxsat, zero
	-[0x80000324]:sw a7, 128(sp)
Current Store : [0x80000328] : sw t3, 132(sp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x18', 'rd : x11', 'rs2_val == -32769', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x8000033c]:KSLRA8 a1, t0, s2
	-[0x80000340]:csrrs t0, vxsat, zero
	-[0x80000344]:sw a1, 136(sp)
Current Store : [0x80000348] : sw t0, 140(sp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x31', 'rd : x1', 'rs2_val == -16385']
Last Code Sequence : 
	-[0x8000035c]:KSLRA8 ra, t2, t6
	-[0x80000360]:csrrs t2, vxsat, zero
	-[0x80000364]:sw ra, 144(sp)
Current Store : [0x80000368] : sw t2, 148(sp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x10', 'rs2_val == -8193', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000384]:KSLRA8 a0, s6, s11
	-[0x80000388]:csrrs s6, vxsat, zero
	-[0x8000038c]:sw a0, 0(t1)
Current Store : [0x80000390] : sw s6, 4(t1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x8', 'rd : x3', 'rs2_val == -4097', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x800003a4]:KSLRA8 gp, s7, fp
	-[0x800003a8]:csrrs s7, vxsat, zero
	-[0x800003ac]:sw gp, 8(t1)
Current Store : [0x800003b0] : sw s7, 12(t1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x2', 'rd : x22', 'rs2_val == -2049', 'rs1_b3_val == 8']
Last Code Sequence : 
	-[0x800003c4]:KSLRA8 s6, s9, sp
	-[0x800003c8]:csrrs s9, vxsat, zero
	-[0x800003cc]:sw s6, 16(t1)
Current Store : [0x800003d0] : sw s9, 20(t1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x15', 'rd : x26', 'rs2_val == -1025', 'rs1_b3_val == 1', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x800003e0]:KSLRA8 s10, s3, a5
	-[0x800003e4]:csrrs s3, vxsat, zero
	-[0x800003e8]:sw s10, 24(t1)
Current Store : [0x800003ec] : sw s3, 28(t1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x17', 'rd : x4', 'rs2_val == -513', 'rs1_b3_val == -9', 'rs1_b2_val == -2']
Last Code Sequence : 
	-[0x800003fc]:KSLRA8 tp, ra, a7
	-[0x80000400]:csrrs ra, vxsat, zero
	-[0x80000404]:sw tp, 32(t1)
Current Store : [0x80000408] : sw ra, 36(t1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x13', 'rs2_val == -257', 'rs1_b1_val == -128']
Last Code Sequence : 
	-[0x80000418]:KSLRA8 a3, fp, t2
	-[0x8000041c]:csrrs fp, vxsat, zero
	-[0x80000420]:sw a3, 40(t1)
Current Store : [0x80000424] : sw fp, 44(t1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x9', 'rs2_val == -129', 'rs1_b2_val == -128']
Last Code Sequence : 
	-[0x80000434]:KSLRA8 s1, sp, t0
	-[0x80000438]:csrrs sp, vxsat, zero
	-[0x8000043c]:sw s1, 48(t1)
Current Store : [0x80000440] : sw sp, 52(t1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x16']
Last Code Sequence : 
	-[0x80000450]:KSLRA8 a6, s4, zero
	-[0x80000454]:csrrs s4, vxsat, zero
	-[0x80000458]:sw a6, 56(t1)
Current Store : [0x8000045c] : sw s4, 60(t1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x16', 'rd : x30', 'rs2_val == -33']
Last Code Sequence : 
	-[0x8000046c]:KSLRA8 t5, a3, a6
	-[0x80000470]:csrrs a3, vxsat, zero
	-[0x80000474]:sw t5, 64(t1)
Current Store : [0x80000478] : sw a3, 68(t1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x23', 'rs2_val == -17']
Last Code Sequence : 
	-[0x80000488]:KSLRA8 s7, s8, a2
	-[0x8000048c]:csrrs s8, vxsat, zero
	-[0x80000490]:sw s7, 72(t1)
Current Store : [0x80000494] : sw s8, 76(t1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rd : x8', 'rs2_val == -9']
Last Code Sequence : 
	-[0x800004a4]:KSLRA8 fp, s2, t5
	-[0x800004a8]:csrrs s2, vxsat, zero
	-[0x800004ac]:sw fp, 80(t1)
Current Store : [0x800004b0] : sw s2, 84(t1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x13', 'rd : x2', 'rs2_val == -5', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x800004c0]:KSLRA8 sp, a1, a3
	-[0x800004c4]:csrrs a1, vxsat, zero
	-[0x800004c8]:sw sp, 88(t1)
Current Store : [0x800004cc] : sw a1, 92(t1) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x7', 'rs2_val == -3', 'rs1_b2_val == -33']
Last Code Sequence : 
	-[0x800004dc]:KSLRA8 t2, s10, ra
	-[0x800004e0]:csrrs s10, vxsat, zero
	-[0x800004e4]:sw t2, 96(t1)
Current Store : [0x800004e8] : sw s10, 100(t1) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x800004f8]:KSLRA8 t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 104(t1)
Current Store : [0x80000504] : sw t5, 108(t1) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_val == -2147483648', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x8000051c]:KSLRA8 t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 0(ra)
Current Store : [0x80000528] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 16', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x8000053c]:KSLRA8 t6, t5, t4
	-[0x80000540]:csrrs t5, vxsat, zero
	-[0x80000544]:sw t6, 8(ra)
Current Store : [0x80000548] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_val == 8', 'rs1_b0_val == -5']
Last Code Sequence : 
	-[0x80000558]:KSLRA8 t6, t5, t4
	-[0x8000055c]:csrrs t5, vxsat, zero
	-[0x80000560]:sw t6, 16(ra)
Current Store : [0x80000564] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_val == 16', 'rs1_b3_val == 64', 'rs1_b1_val == 32', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x80000574]:KSLRA8 t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 24(ra)
Current Store : [0x80000580] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_b2_val == 1', 'rs1_b0_val == -128']
Last Code Sequence : 
	-[0x80000594]:KSLRA8 t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 32(ra)
Current Store : [0x800005a0] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800005b0]:KSLRA8 t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 40(ra)
Current Store : [0x800005bc] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_b0_val == 32']
Last Code Sequence : 
	-[0x800005cc]:KSLRA8 t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 48(ra)
Current Store : [0x800005d8] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_val == 8388608', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x800005e8]:KSLRA8 t6, t5, t4
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 56(ra)
Current Store : [0x800005f4] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_b2_val == 127']
Last Code Sequence : 
	-[0x80000604]:KSLRA8 t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 64(ra)
Current Store : [0x80000610] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_b2_val == 64', 'rs1_b1_val == 127', 'rs2_val == -1431655766']
Last Code Sequence : 
	-[0x80000624]:KSLRA8 t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 72(ra)
Current Store : [0x80000630] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80000640]:KSLRA8 t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 80(ra)
Current Store : [0x8000064c] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x8000065c]:KSLRA8 t6, t5, t4
	-[0x80000660]:csrrs t5, vxsat, zero
	-[0x80000664]:sw t6, 88(ra)
Current Store : [0x80000668] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_val == 268435456', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x80000678]:KSLRA8 t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 96(ra)
Current Store : [0x80000684] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x80000694]:KSLRA8 t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 104(ra)
Current Store : [0x800006a0] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x800006b0]:KSLRA8 t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 112(ra)
Current Store : [0x800006bc] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x800006cc]:KSLRA8 t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 120(ra)
Current Store : [0x800006d8] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800006e8]:KSLRA8 t6, t5, t4
	-[0x800006ec]:csrrs t5, vxsat, zero
	-[0x800006f0]:sw t6, 128(ra)
Current Store : [0x800006f4] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x80000704]:KSLRA8 t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 136(ra)
Current Store : [0x80000710] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80000720]:KSLRA8 t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 144(ra)
Current Store : [0x8000072c] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_val == 1048576', 'rs1_b3_val == -33']
Last Code Sequence : 
	-[0x8000073c]:KSLRA8 t6, t5, t4
	-[0x80000740]:csrrs t5, vxsat, zero
	-[0x80000744]:sw t6, 152(ra)
Current Store : [0x80000748] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_val == 524288', 'rs1_b2_val == 2']
Last Code Sequence : 
	-[0x80000758]:KSLRA8 t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 160(ra)
Current Store : [0x80000764] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80000774]:KSLRA8 t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 168(ra)
Current Store : [0x80000780] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -513', 'rs1_b3_val == 85', 'rs1_b2_val == 0', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000790]:KSLRA8 t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 176(ra)
Current Store : [0x8000079c] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_b3_val == -17']
Last Code Sequence : 
	-[0x800007ac]:KSLRA8 t6, t5, t4
	-[0x800007b0]:csrrs t5, vxsat, zero
	-[0x800007b4]:sw t6, 184(ra)
Current Store : [0x800007b8] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_val == 2', 'rs1_b3_val == 16']
Last Code Sequence : 
	-[0x800007c8]:KSLRA8 t6, t5, t4
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sw t6, 192(ra)
Current Store : [0x800007d4] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_b3_val == 2']
Last Code Sequence : 
	-[0x800007e8]:KSLRA8 t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 200(ra)
Current Store : [0x800007f4] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_b2_val == -86']
Last Code Sequence : 
	-[0x80000808]:KSLRA8 t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 208(ra)
Current Store : [0x80000814] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000828]:KSLRA8 t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 216(ra)
Current Store : [0x80000834] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_b2_val == -3']
Last Code Sequence : 
	-[0x80000844]:KSLRA8 t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 224(ra)
Current Store : [0x80000850] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_val == 4096', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000860]:KSLRA8 t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 232(ra)
Current Store : [0x8000086c] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_b2_val == 8', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x8000087c]:KSLRA8 t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 240(ra)
Current Store : [0x80000888] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['opcode : kslra8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -32769', 'rs1_b3_val == 32', 'rs1_b2_val == -128', 'rs1_b1_val == 85', 'rs1_b0_val == -128']
Last Code Sequence : 
	-[0x8000089c]:KSLRA8 t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 248(ra)
Current Store : [0x800008a8] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x800008b8]:KSLRA8 t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 256(ra)
Current Store : [0x800008c4] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x800008d4]:KSLRA8 t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 264(ra)
Current Store : [0x800008e0] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_val == 65536', 'rs1_b1_val == -2']
Last Code Sequence : 
	-[0x800008f0]:KSLRA8 t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 272(ra)
Current Store : [0x800008fc] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x8000090c]:KSLRA8 t6, t5, t4
	-[0x80000910]:csrrs t5, vxsat, zero
	-[0x80000914]:sw t6, 280(ra)
Current Store : [0x80000918] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80000928]:KSLRA8 t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 288(ra)
Current Store : [0x80000934] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80000944]:KSLRA8 t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 296(ra)
Current Store : [0x80000950] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x80000964]:KSLRA8 t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 304(ra)
Current Store : [0x80000970] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x80000980]:KSLRA8 t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 312(ra)
Current Store : [0x8000098c] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x8000099c]:KSLRA8 t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 320(ra)
Current Store : [0x800009a8] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x800009b8]:KSLRA8 t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 328(ra)
Current Store : [0x800009c4] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x800009d4]:KSLRA8 t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 336(ra)
Current Store : [0x800009e0] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x800009f0]:KSLRA8 t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 344(ra)
Current Store : [0x800009fc] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80000a0c]:KSLRA8 t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 352(ra)
Current Store : [0x80000a18] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80000a28]:KSLRA8 t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 360(ra)
Current Store : [0x80000a34] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_b3_val == -3']
Last Code Sequence : 
	-[0x80000a48]:KSLRA8 t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 368(ra)
Current Store : [0x80000a54] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000a68]:KSLRA8 t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 376(ra)
Current Store : [0x80000a74] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_b1_val == -3']
Last Code Sequence : 
	-[0x80000a88]:KSLRA8 t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 384(ra)
Current Store : [0x80000a94] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs2_val == -65']
Last Code Sequence : 
	-[0x80000aa4]:KSLRA8 t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 392(ra)
Current Store : [0x80000ab0] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000001





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

|s.no|        signature         |                                                                                                    coverpoints                                                                                                     |                                                    code                                                     |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kslra8<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs2_val == 1431655765<br> - rs1_b3_val == 85<br> - rs1_b2_val == 85<br> - rs1_b1_val == 85<br> - rs1_b0_val == 85<br> |[0x8000011c]:KSLRA8 t4, t4, t4<br> [0x80000120]:csrrs t4, vxsat, zero<br> [0x80000124]:sw t4, 0(sp)<br>      |
|   2|[0x80002218]<br>0x00000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs2_val == 2147483647<br> - rs1_b3_val == 127<br> - rs1_b2_val == -1<br> - rs1_b1_val == -1<br> - rs1_b0_val == -1<br>                         |[0x8000013c]:KSLRA8 zero, tp, tp<br> [0x80000140]:csrrs tp, vxsat, zero<br> [0x80000144]:sw zero, 8(sp)<br>  |
|   3|[0x80002220]<br>0x00FC00D5|- rs1 : x3<br> - rs2 : x14<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -1073741825<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == -86<br>                        |[0x8000015c]:KSLRA8 s11, gp, a4<br> [0x80000160]:csrrs gp, vxsat, zero<br> [0x80000164]:sw s11, 16(sp)<br>   |
|   4|[0x80002228]<br>0xFCFD041F|- rs1 : x27<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_val == -536870913<br> - rs1_b1_val == 8<br>                                                                                               |[0x8000017c]:KSLRA8 t1, s11, t1<br> [0x80000180]:csrrs s11, vxsat, zero<br> [0x80000184]:sw t1, 24(sp)<br>   |
|   5|[0x80002230]<br>0x00000001|- rs1 : x21<br> - rs2 : x24<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs2_val == -268435457<br> - rs1_b3_val == -1<br> - rs1_b1_val == -5<br> - rs1_b0_val == 8<br>                                               |[0x8000019c]:KSLRA8 s5, s5, s8<br> [0x800001a0]:csrrs s5, vxsat, zero<br> [0x800001a4]:sw s5, 32(sp)<br>     |
|   6|[0x80002238]<br>0xFBF700E0|- rs1 : x30<br> - rs2 : x9<br> - rd : x24<br> - rs2_val == -134217729<br> - rs1_b2_val == -17<br>                                                                                                                   |[0x800001bc]:KSLRA8 s8, t5, s1<br> [0x800001c0]:csrrs t5, vxsat, zero<br> [0x800001c4]:sw s8, 40(sp)<br>     |
|   7|[0x80002240]<br>0xFBFC01FB|- rs1 : x6<br> - rs2 : x10<br> - rd : x20<br> - rs2_val == -67108865<br> - rs1_b1_val == 2<br> - rs1_b0_val == -9<br>                                                                                               |[0x800001dc]:KSLRA8 s4, t1, a0<br> [0x800001e0]:csrrs t1, vxsat, zero<br> [0x800001e4]:sw s4, 48(sp)<br>     |
|   8|[0x80002248]<br>0x0402F704|- rs1 : x14<br> - rs2 : x26<br> - rd : x5<br> - rs2_val == -33554433<br> - rs1_b2_val == 4<br> - rs1_b1_val == -17<br>                                                                                              |[0x800001fc]:KSLRA8 t0, a4, s10<br> [0x80000200]:csrrs a4, vxsat, zero<br> [0x80000204]:sw t0, 56(sp)<br>    |
|   9|[0x80002250]<br>0x02FBFEFE|- rs1 : x15<br> - rs2 : x19<br> - rd : x28<br> - rs2_val == -16777217<br> - rs1_b2_val == -9<br> - rs1_b0_val == -3<br>                                                                                             |[0x8000021c]:KSLRA8 t3, a5, s3<br> [0x80000220]:csrrs a5, vxsat, zero<br> [0x80000224]:sw t3, 64(sp)<br>     |
|  10|[0x80002258]<br>0xFF1F02D5|- rs1 : x9<br> - rs2 : x25<br> - rd : x18<br> - rs2_val == -8388609<br> - rs1_b3_val == -2<br> - rs1_b1_val == 4<br>                                                                                                |[0x8000023c]:KSLRA8 s2, s1, s9<br> [0x80000240]:csrrs s1, vxsat, zero<br> [0x80000244]:sw s2, 72(sp)<br>     |
|  11|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x15<br> - rs2_val == -4194305<br> - rs1_b2_val == 0<br> - rs1_b0_val == 0<br>                                                                                                 |[0x8000025c]:KSLRA8 a5, zero, a1<br> [0x80000260]:csrrs zero, vxsat, zero<br> [0x80000264]:sw a5, 80(sp)<br> |
|  12|[0x80002268]<br>0xD508DFFD|- rs1 : x17<br> - rs2 : x3<br> - rd : x14<br> - rs2_val == -2097153<br> - rs1_b3_val == -86<br> - rs1_b2_val == 16<br> - rs1_b1_val == -65<br>                                                                      |[0x8000027c]:KSLRA8 a4, a7, gp<br> [0x80000280]:csrrs a7, vxsat, zero<br> [0x80000284]:sw a4, 88(sp)<br>     |
|  13|[0x80002270]<br>0x1003EFEF|- rs1 : x12<br> - rs2 : x28<br> - rd : x19<br> - rs2_val == -1048577<br> - rs1_b3_val == 32<br> - rs1_b1_val == -33<br> - rs1_b0_val == -33<br>                                                                     |[0x8000029c]:KSLRA8 s3, a2, t3<br> [0x800002a0]:csrrs a2, vxsat, zero<br> [0x800002a4]:sw s3, 96(sp)<br>     |
|  14|[0x80002278]<br>0xC0030303|- rs1 : x31<br> - rs2 : x20<br> - rd : x25<br> - rs2_val == -524289<br> - rs1_b3_val == -128<br>                                                                                                                    |[0x800002bc]:KSLRA8 s9, t6, s4<br> [0x800002c0]:csrrs t6, vxsat, zero<br> [0x800002c4]:sw s9, 104(sp)<br>    |
|  15|[0x80002280]<br>0xDFFDFB01|- rs1 : x16<br> - rs2 : x23<br> - rd : x12<br> - rs2_val == -262145<br> - rs1_b3_val == -65<br> - rs1_b1_val == -9<br> - rs1_b0_val == 2<br>                                                                        |[0x800002dc]:KSLRA8 a2, a6, s7<br> [0x800002e0]:csrrs a6, vxsat, zero<br> [0x800002e4]:sw a2, 112(sp)<br>    |
|  16|[0x80002288]<br>0x0202FF00|- rs1 : x10<br> - rs2 : x21<br> - rd : x31<br> - rs2_val == -131073<br>                                                                                                                                             |[0x800002fc]:KSLRA8 t6, a0, s5<br> [0x80000300]:csrrs a0, vxsat, zero<br> [0x80000304]:sw t6, 120(sp)<br>    |
|  17|[0x80002290]<br>0xD5FBD5FC|- rs1 : x28<br> - rs2 : x22<br> - rd : x17<br> - rs2_val == -65537<br> - rs1_b1_val == -86<br>                                                                                                                      |[0x8000031c]:KSLRA8 a7, t3, s6<br> [0x80000320]:csrrs t3, vxsat, zero<br> [0x80000324]:sw a7, 128(sp)<br>    |
|  18|[0x80002298]<br>0xE0FDFEF7|- rs1 : x5<br> - rs2 : x18<br> - rd : x11<br> - rs2_val == -32769<br> - rs1_b0_val == -17<br>                                                                                                                       |[0x8000033c]:KSLRA8 a1, t0, s2<br> [0x80000340]:csrrs t0, vxsat, zero<br> [0x80000344]:sw a1, 136(sp)<br>    |
|  19|[0x800022a0]<br>0xFF03E0FE|- rs1 : x7<br> - rs2 : x31<br> - rd : x1<br> - rs2_val == -16385<br>                                                                                                                                                |[0x8000035c]:KSLRA8 ra, t2, t6<br> [0x80000360]:csrrs t2, vxsat, zero<br> [0x80000364]:sw ra, 144(sp)<br>    |
|  20|[0x800022a8]<br>0xFDE0FB3F|- rs1 : x22<br> - rs2 : x27<br> - rd : x10<br> - rs2_val == -8193<br> - rs1_b0_val == 127<br>                                                                                                                       |[0x80000384]:KSLRA8 a0, s6, s11<br> [0x80000388]:csrrs s6, vxsat, zero<br> [0x8000038c]:sw a0, 0(t1)<br>     |
|  21|[0x800022b0]<br>0x0200FC04|- rs1 : x23<br> - rs2 : x8<br> - rd : x3<br> - rs2_val == -4097<br> - rs1_b3_val == 4<br>                                                                                                                           |[0x800003a4]:KSLRA8 gp, s7, fp<br> [0x800003a8]:csrrs s7, vxsat, zero<br> [0x800003ac]:sw gp, 8(t1)<br>      |
|  22|[0x800022b8]<br>0x04FE02FC|- rs1 : x25<br> - rs2 : x2<br> - rd : x22<br> - rs2_val == -2049<br> - rs1_b3_val == 8<br>                                                                                                                          |[0x800003c4]:KSLRA8 s6, s9, sp<br> [0x800003c8]:csrrs s9, vxsat, zero<br> [0x800003cc]:sw s6, 16(t1)<br>     |
|  23|[0x800022c0]<br>0x00DF022A|- rs1 : x19<br> - rs2 : x15<br> - rd : x26<br> - rs2_val == -1025<br> - rs1_b3_val == 1<br> - rs1_b2_val == -65<br>                                                                                                 |[0x800003e0]:KSLRA8 s10, s3, a5<br> [0x800003e4]:csrrs s3, vxsat, zero<br> [0x800003e8]:sw s10, 24(t1)<br>   |
|  24|[0x800022c8]<br>0xFBFFD5FB|- rs1 : x1<br> - rs2 : x17<br> - rd : x4<br> - rs2_val == -513<br> - rs1_b3_val == -9<br> - rs1_b2_val == -2<br>                                                                                                    |[0x800003fc]:KSLRA8 tp, ra, a7<br> [0x80000400]:csrrs ra, vxsat, zero<br> [0x80000404]:sw tp, 32(t1)<br>     |
|  25|[0x800022d0]<br>0x04FFC003|- rs1 : x8<br> - rs2 : x7<br> - rd : x13<br> - rs2_val == -257<br> - rs1_b1_val == -128<br>                                                                                                                         |[0x80000418]:KSLRA8 a3, fp, t2<br> [0x8000041c]:csrrs fp, vxsat, zero<br> [0x80000420]:sw a3, 40(t1)<br>     |
|  26|[0x800022d8]<br>0x04C003FC|- rs1 : x2<br> - rs2 : x5<br> - rd : x9<br> - rs2_val == -129<br> - rs1_b2_val == -128<br>                                                                                                                          |[0x80000434]:KSLRA8 s1, sp, t0<br> [0x80000438]:csrrs sp, vxsat, zero<br> [0x8000043c]:sw s1, 48(t1)<br>     |
|  27|[0x800022e0]<br>0xC0BFF605|- rs1 : x20<br> - rs2 : x0<br> - rd : x16<br>                                                                                                                                                                       |[0x80000450]:KSLRA8 a6, s4, zero<br> [0x80000454]:csrrs s4, vxsat, zero<br> [0x80000458]:sw a6, 56(t1)<br>   |
|  28|[0x800022e8]<br>0xFB08013F|- rs1 : x13<br> - rs2 : x16<br> - rd : x30<br> - rs2_val == -33<br>                                                                                                                                                 |[0x8000046c]:KSLRA8 t5, a3, a6<br> [0x80000470]:csrrs a3, vxsat, zero<br> [0x80000474]:sw t5, 64(t1)<br>     |
|  29|[0x800022f0]<br>0xFDFBFCFD|- rs1 : x24<br> - rs2 : x12<br> - rd : x23<br> - rs2_val == -17<br>                                                                                                                                                 |[0x80000488]:KSLRA8 s7, s8, a2<br> [0x8000048c]:csrrs s8, vxsat, zero<br> [0x80000490]:sw s7, 72(t1)<br>     |
|  30|[0x800022f8]<br>0x807F7F7F|- rs1 : x18<br> - rs2 : x30<br> - rd : x8<br> - rs2_val == -9<br>                                                                                                                                                   |[0x800004a4]:KSLRA8 fp, s2, t5<br> [0x800004a8]:csrrs s2, vxsat, zero<br> [0x800004ac]:sw fp, 80(t1)<br>     |
|  31|[0x80002300]<br>0xFFFDFDFF|- rs1 : x11<br> - rs2 : x13<br> - rd : x2<br> - rs2_val == -5<br> - rs1_b3_val == -5<br>                                                                                                                            |[0x800004c0]:KSLRA8 sp, a1, a3<br> [0x800004c4]:csrrs a1, vxsat, zero<br> [0x800004c8]:sw sp, 88(t1)<br>     |
|  32|[0x80002308]<br>0x01FB0000|- rs1 : x26<br> - rs2 : x1<br> - rd : x7<br> - rs2_val == -3<br> - rs1_b2_val == -33<br>                                                                                                                            |[0x800004dc]:KSLRA8 t2, s10, ra<br> [0x800004e0]:csrrs s10, vxsat, zero<br> [0x800004e4]:sw t2, 96(t1)<br>   |
|  33|[0x80002310]<br>0xFDFEFDFE|- rs2_val == -2<br>                                                                                                                                                                                                 |[0x800004f8]:KSLRA8 t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 104(t1)<br>    |
|  34|[0x80002318]<br>0x3F100404|- rs2_val == -2147483648<br> - rs1_b0_val == 4<br>                                                                                                                                                                  |[0x8000051c]:KSLRA8 t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 0(ra)<br>      |
|  35|[0x80002320]<br>0xE0EF08DF|- rs1_b1_val == 16<br> - rs1_b0_val == -65<br>                                                                                                                                                                      |[0x8000053c]:KSLRA8 t6, t5, t4<br> [0x80000540]:csrrs t5, vxsat, zero<br> [0x80000544]:sw t6, 8(ra)<br>      |
|  36|[0x80002328]<br>0x0000FFFF|- rs2_val == 8<br> - rs1_b0_val == -5<br>                                                                                                                                                                           |[0x80000558]:KSLRA8 t6, t5, t4<br> [0x8000055c]:csrrs t5, vxsat, zero<br> [0x80000560]:sw t6, 16(ra)<br>     |
|  37|[0x80002330]<br>0x40DF20FE|- rs2_val == 16<br> - rs1_b3_val == 64<br> - rs1_b1_val == 32<br> - rs1_b0_val == -2<br>                                                                                                                            |[0x80000574]:KSLRA8 t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 24(ra)<br>     |
|  38|[0x80002338]<br>0xE00003C0|- rs1_b2_val == 1<br> - rs1_b0_val == -128<br>                                                                                                                                                                      |[0x80000594]:KSLRA8 t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 32(ra)<br>     |
|  39|[0x80002340]<br>0x00031020|- rs1_b0_val == 64<br>                                                                                                                                                                                              |[0x800005b0]:KSLRA8 t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 40(ra)<br>     |
|  40|[0x80002348]<br>0x80807F7F|- rs1_b0_val == 32<br>                                                                                                                                                                                              |[0x800005cc]:KSLRA8 t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 48(ra)<br>     |
|  41|[0x80002350]<br>0xF7041010|- rs2_val == 8388608<br> - rs1_b0_val == 16<br>                                                                                                                                                                     |[0x800005e8]:KSLRA8 t6, t5, t4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 56(ra)<br>     |
|  42|[0x80002358]<br>0xF67FC0FF|- rs1_b2_val == 127<br>                                                                                                                                                                                             |[0x80000604]:KSLRA8 t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 64(ra)<br>     |
|  43|[0x80002360]<br>0x000101FF|- rs1_b2_val == 64<br> - rs1_b1_val == 127<br> - rs2_val == -1431655766<br>                                                                                                                                         |[0x80000624]:KSLRA8 t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 72(ra)<br>     |
|  44|[0x80002368]<br>0x0655BFF8|- rs2_val == 1073741824<br>                                                                                                                                                                                         |[0x80000640]:KSLRA8 t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 80(ra)<br>     |
|  45|[0x80002370]<br>0xF6BFEFFC|- rs2_val == 536870912<br>                                                                                                                                                                                          |[0x8000065c]:KSLRA8 t6, t5, t4<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 88(ra)<br>     |
|  46|[0x80002378]<br>0x09F64004|- rs2_val == 268435456<br> - rs1_b1_val == 64<br>                                                                                                                                                                   |[0x80000678]:KSLRA8 t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 96(ra)<br>     |
|  47|[0x80002380]<br>0xF7EFFCC0|- rs2_val == 134217728<br>                                                                                                                                                                                          |[0x80000694]:KSLRA8 t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 104(ra)<br>    |
|  48|[0x80002388]<br>0xFFF909DF|- rs2_val == 67108864<br>                                                                                                                                                                                           |[0x800006b0]:KSLRA8 t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 112(ra)<br>    |
|  49|[0x80002390]<br>0x20FA2055|- rs2_val == 33554432<br>                                                                                                                                                                                           |[0x800006cc]:KSLRA8 t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 120(ra)<br>    |
|  50|[0x80002398]<br>0x05FF0580|- rs2_val == 16777216<br>                                                                                                                                                                                           |[0x800006e8]:KSLRA8 t6, t5, t4<br> [0x800006ec]:csrrs t5, vxsat, zero<br> [0x800006f0]:sw t6, 128(ra)<br>    |
|  51|[0x800023a0]<br>0x077F3F10|- rs2_val == 4194304<br>                                                                                                                                                                                            |[0x80000704]:KSLRA8 t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 136(ra)<br>    |
|  52|[0x800023a8]<br>0xF706FA07|- rs2_val == 2097152<br>                                                                                                                                                                                            |[0x80000720]:KSLRA8 t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 144(ra)<br>    |
|  53|[0x800023b0]<br>0xDF0909DF|- rs2_val == 1048576<br> - rs1_b3_val == -33<br>                                                                                                                                                                    |[0x8000073c]:KSLRA8 t6, t5, t4<br> [0x80000740]:csrrs t5, vxsat, zero<br> [0x80000744]:sw t6, 152(ra)<br>    |
|  54|[0x800023b8]<br>0x7F02063F|- rs2_val == 524288<br> - rs1_b2_val == 2<br>                                                                                                                                                                       |[0x80000758]:KSLRA8 t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 160(ra)<br>    |
|  55|[0x800023c0]<br>0x02BE0C7F|- rs2_val == 1<br>                                                                                                                                                                                                  |[0x80000774]:KSLRA8 t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 168(ra)<br>    |
|  56|[0x800023d0]<br>0xEF3F0510|- rs1_b3_val == -17<br>                                                                                                                                                                                             |[0x800007ac]:KSLRA8 t6, t5, t4<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sw t6, 184(ra)<br>    |
|  57|[0x800023d8]<br>0x40801C14|- rs2_val == 2<br> - rs1_b3_val == 16<br>                                                                                                                                                                           |[0x800007c8]:KSLRA8 t6, t5, t4<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sw t6, 192(ra)<br>    |
|  58|[0x800023e0]<br>0x407F7F80|- rs1_b3_val == 2<br>                                                                                                                                                                                               |[0x800007e8]:KSLRA8 t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 200(ra)<br>    |
|  59|[0x800023e8]<br>0x00D50401|- rs1_b2_val == -86<br>                                                                                                                                                                                             |[0x80000808]:KSLRA8 t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 208(ra)<br>    |
|  60|[0x800023f0]<br>0xFBFD1F1F|- rs1_b2_val == -5<br>                                                                                                                                                                                              |[0x80000828]:KSLRA8 t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 216(ra)<br>    |
|  61|[0x800023f8]<br>0x7FF420E4|- rs1_b2_val == -3<br>                                                                                                                                                                                              |[0x80000844]:KSLRA8 t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 224(ra)<br>    |
|  62|[0x80002400]<br>0x0520F906|- rs2_val == 4096<br> - rs1_b2_val == 32<br>                                                                                                                                                                        |[0x80000860]:KSLRA8 t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 232(ra)<br>    |
|  63|[0x80002408]<br>0x20040003|- rs1_b2_val == 8<br> - rs1_b1_val == 1<br>                                                                                                                                                                         |[0x8000087c]:KSLRA8 t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 240(ra)<br>    |
|  64|[0x80002418]<br>0x7F082009|- rs2_val == 262144<br>                                                                                                                                                                                             |[0x800008b8]:KSLRA8 t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 256(ra)<br>    |
|  65|[0x80002420]<br>0xBF200010|- rs2_val == 131072<br>                                                                                                                                                                                             |[0x800008d4]:KSLRA8 t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 264(ra)<br>    |
|  66|[0x80002428]<br>0x06BFFE3F|- rs2_val == 65536<br> - rs1_b1_val == -2<br>                                                                                                                                                                       |[0x800008f0]:KSLRA8 t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 272(ra)<br>    |
|  67|[0x80002430]<br>0x7F55F6FA|- rs2_val == 32768<br>                                                                                                                                                                                              |[0x8000090c]:KSLRA8 t6, t5, t4<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sw t6, 280(ra)<br>    |
|  68|[0x80002438]<br>0x06FDFA03|- rs2_val == 16384<br>                                                                                                                                                                                              |[0x80000928]:KSLRA8 t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 288(ra)<br>    |
|  69|[0x80002440]<br>0x080304F7|- rs2_val == 8192<br>                                                                                                                                                                                               |[0x80000944]:KSLRA8 t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 296(ra)<br>    |
|  70|[0x80002448]<br>0x7FF73F20|- rs2_val == 2048<br>                                                                                                                                                                                               |[0x80000964]:KSLRA8 t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 304(ra)<br>    |
|  71|[0x80002450]<br>0x80FD05DF|- rs2_val == 1024<br>                                                                                                                                                                                               |[0x80000980]:KSLRA8 t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 312(ra)<br>    |
|  72|[0x80002458]<br>0x55F955FD|- rs2_val == 512<br>                                                                                                                                                                                                |[0x8000099c]:KSLRA8 t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 320(ra)<br>    |
|  73|[0x80002460]<br>0xF6C0C0FF|- rs2_val == 256<br>                                                                                                                                                                                                |[0x800009b8]:KSLRA8 t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 328(ra)<br>    |
|  74|[0x80002468]<br>0xC008553F|- rs2_val == 128<br>                                                                                                                                                                                                |[0x800009d4]:KSLRA8 t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 336(ra)<br>    |
|  75|[0x80002470]<br>0x7F100840|- rs2_val == 64<br>                                                                                                                                                                                                 |[0x800009f0]:KSLRA8 t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 344(ra)<br>    |
|  76|[0x80002478]<br>0xFC800005|- rs2_val == 32<br>                                                                                                                                                                                                 |[0x80000a0c]:KSLRA8 t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 352(ra)<br>    |
|  77|[0x80002480]<br>0x7F809060|- rs2_val == 4<br>                                                                                                                                                                                                  |[0x80000a28]:KSLRA8 t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 360(ra)<br>    |
|  78|[0x80002488]<br>0xA0808080|- rs1_b3_val == -3<br>                                                                                                                                                                                              |[0x80000a48]:KSLRA8 t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 368(ra)<br>    |
|  79|[0x80002490]<br>0x3FEF0100|- rs1_b0_val == 1<br>                                                                                                                                                                                               |[0x80000a68]:KSLRA8 t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 376(ra)<br>    |
|  80|[0x80002498]<br>0x201FFE00|- rs1_b1_val == -3<br>                                                                                                                                                                                              |[0x80000a88]:KSLRA8 t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 384(ra)<br>    |
|  81|[0x800024a0]<br>0xE0DFFB02|- rs2_val == -65<br>                                                                                                                                                                                                |[0x80000aa4]:KSLRA8 t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 392(ra)<br>    |
