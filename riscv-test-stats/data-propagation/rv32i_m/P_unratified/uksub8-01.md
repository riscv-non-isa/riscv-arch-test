
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800009a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002430', '136 words')]      |
| COV_LABELS                | uksub8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uksub8-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 136      |
| STAT1                     | 66      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 68     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000964]:UKSUB8 t6, t5, t4
      [0x80000968]:csrrs t5, vxsat, zero
      [0x8000096c]:sw t6, 304(ra)
 -- Signature Address: 0x80002420 Data: 0x00000501
 -- Redundant Coverpoints hit by the op
      - opcode : uksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 254
      - rs2_b2_val == 254
      - rs1_b3_val == 254




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000984]:UKSUB8 t6, t5, t4
      [0x80000988]:csrrs t5, vxsat, zero
      [0x8000098c]:sw t6, 312(ra)
 -- Signature Address: 0x80002428 Data: 0x000109F2
 -- Redundant Coverpoints hit by the op
      - opcode : uksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 255
      - rs2_b2_val == 253
      - rs1_b3_val == 128
      - rs1_b2_val == 254
      - rs1_b1_val == 16
      - rs1_b0_val == 247






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksub8', 'rs1 : x30', 'rs2 : x30', 'rd : x30', 'rs1 == rs2 == rd', 'rs1_b0_val == 0', 'rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs2_b0_val == 0']
Last Code Sequence : 
	-[0x8000011c]:UKSUB8 t5, t5, t5
	-[0x80000120]:csrrs t5, vxsat, zero
	-[0x80000124]:sw t5, 0(sp)
Current Store : [0x80000128] : sw t5, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x10', 'rd : x21', 'rs1 == rs2 != rd', 'rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 254', 'rs2_b2_val == 254', 'rs1_b3_val == 254', 'rs1_b2_val == 254']
Last Code Sequence : 
	-[0x8000013c]:UKSUB8 s5, a0, a0
	-[0x80000140]:csrrs a0, vxsat, zero
	-[0x80000144]:sw s5, 8(sp)
Current Store : [0x80000148] : sw a0, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x26', 'rd : x23', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b2_val == 247', 'rs2_b1_val == 85', 'rs1_b3_val == 64', 'rs1_b2_val == 247', 'rs1_b0_val == 239']
Last Code Sequence : 
	-[0x8000015c]:UKSUB8 s7, s6, s10
	-[0x80000160]:csrrs s6, vxsat, zero
	-[0x80000164]:sw s7, 16(sp)
Current Store : [0x80000168] : sw s6, 20(sp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x15', 'rs2 == rd != rs1', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs2_b3_val == 85', 'rs2_b2_val == 191', 'rs2_b0_val == 170', 'rs1_b3_val == 1', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x8000017c]:UKSUB8 a5, s8, a5
	-[0x80000180]:csrrs s8, vxsat, zero
	-[0x80000184]:sw a5, 24(sp)
Current Store : [0x80000188] : sw s8, 28(sp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x0', 'rd : x28', 'rs1 == rd != rs2', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs1_b2_val == 85', 'rs1_b1_val == 8']
Last Code Sequence : 
	-[0x8000019c]:UKSUB8 t3, t3, zero
	-[0x800001a0]:csrrs t3, vxsat, zero
	-[0x800001a4]:sw t3, 32(sp)
Current Store : [0x800001a8] : sw t3, 36(sp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x13', 'rd : x16', 'rs2_b3_val == 170', 'rs1_b3_val == 128', 'rs1_b2_val == 255', 'rs1_b1_val == 1', 'rs1_b0_val == 191']
Last Code Sequence : 
	-[0x800001bc]:UKSUB8 a6, s3, a3
	-[0x800001c0]:csrrs s3, vxsat, zero
	-[0x800001c4]:sw a6, 40(sp)
Current Store : [0x800001c8] : sw s3, 44(sp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x25', 'rs2_b3_val == 127', 'rs1_b2_val == 191', 'rs1_b1_val == 254']
Last Code Sequence : 
	-[0x800001dc]:UKSUB8 s9, s7, t1
	-[0x800001e0]:csrrs s7, vxsat, zero
	-[0x800001e4]:sw s9, 48(sp)
Current Store : [0x800001e8] : sw s7, 52(sp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x12', 'rd : x1', 'rs2_b3_val == 191', 'rs2_b1_val == 254', 'rs1_b2_val == 16', 'rs1_b1_val == 247', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x800001fc]:UKSUB8 ra, t2, a2
	-[0x80000200]:csrrs t2, vxsat, zero
	-[0x80000204]:sw ra, 56(sp)
Current Store : [0x80000208] : sw t2, 60(sp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x31', 'rd : x29', 'rs2_b3_val == 223', 'rs2_b2_val == 64', 'rs2_b1_val == 127', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x8000021c]:UKSUB8 t4, s5, t6
	-[0x80000220]:csrrs s5, vxsat, zero
	-[0x80000224]:sw t4, 64(sp)
Current Store : [0x80000228] : sw s5, 68(sp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x28', 'rd : x24', 'rs2_b3_val == 239', 'rs2_b2_val == 16', 'rs2_b1_val == 255', 'rs1_b0_val == 128']
Last Code Sequence : 
	-[0x8000023c]:UKSUB8 s8, s2, t3
	-[0x80000240]:csrrs s2, vxsat, zero
	-[0x80000244]:sw s8, 72(sp)
Current Store : [0x80000248] : sw s2, 76(sp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x20', 'rd : x8', 'rs2_b3_val == 247', 'rs1_b1_val == 16', 'rs1_b0_val == 255']
Last Code Sequence : 
	-[0x8000025c]:UKSUB8 fp, a6, s4
	-[0x80000260]:csrrs a6, vxsat, zero
	-[0x80000264]:sw fp, 80(sp)
Current Store : [0x80000268] : sw a6, 84(sp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x18', 'rs2_b3_val == 251', 'rs2_b1_val == 64', 'rs2_b0_val == 8', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x8000027c]:UKSUB8 s2, t0, a1
	-[0x80000280]:csrrs t0, vxsat, zero
	-[0x80000284]:sw s2, 88(sp)
Current Store : [0x80000288] : sw t0, 92(sp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rd : x31', 'rs2_b3_val == 253', 'rs2_b0_val == 247', 'rs1_b3_val == 2', 'rs1_b2_val == 251']
Last Code Sequence : 
	-[0x80000298]:UKSUB8 t6, ra, s2
	-[0x8000029c]:csrrs ra, vxsat, zero
	-[0x800002a0]:sw t6, 96(sp)
Current Store : [0x800002a4] : sw ra, 100(sp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rd : x27', 'rs2_b3_val == 128', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x800002b8]:UKSUB8 s11, gp, fp
	-[0x800002bc]:csrrs gp, vxsat, zero
	-[0x800002c0]:sw s11, 104(sp)
Current Store : [0x800002c4] : sw gp, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rd : x17', 'rs2_b3_val == 64']
Last Code Sequence : 
	-[0x800002d8]:UKSUB8 a7, tp, s3
	-[0x800002dc]:csrrs tp, vxsat, zero
	-[0x800002e0]:sw a7, 112(sp)
Current Store : [0x800002e4] : sw tp, 116(sp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x19', 'rs2_b3_val == 32']
Last Code Sequence : 
	-[0x80000300]:UKSUB8 s3, fp, s1
	-[0x80000304]:csrrs fp, vxsat, zero
	-[0x80000308]:sw s3, 0(a0)
Current Store : [0x8000030c] : sw fp, 4(a0) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x21', 'rd : x22', 'rs2_b3_val == 16', 'rs2_b2_val == 239', 'rs2_b0_val == 16']
Last Code Sequence : 
	-[0x80000320]:UKSUB8 s6, s1, s5
	-[0x80000324]:csrrs s1, vxsat, zero
	-[0x80000328]:sw s6, 8(a0)
Current Store : [0x8000032c] : sw s1, 12(a0) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x26', 'rs2_b3_val == 8', 'rs2_b0_val == 32', 'rs1_b3_val == 247', 'rs1_b2_val == 253', 'rs1_b1_val == 251']
Last Code Sequence : 
	-[0x80000340]:UKSUB8 s10, sp, s6
	-[0x80000344]:csrrs sp, vxsat, zero
	-[0x80000348]:sw s10, 16(a0)
Current Store : [0x8000034c] : sw sp, 20(a0) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x11', 'rs2_b3_val == 4', 'rs2_b2_val == 2', 'rs2_b1_val == 4', 'rs1_b2_val == 170', 'rs1_b1_val == 128']
Last Code Sequence : 
	-[0x80000360]:UKSUB8 a1, a5, a7
	-[0x80000364]:csrrs a5, vxsat, zero
	-[0x80000368]:sw a1, 24(a0)
Current Store : [0x8000036c] : sw a5, 28(a0) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x14', 'rs2_b3_val == 2', 'rs2_b0_val == 255', 'rs1_b3_val == 4']
Last Code Sequence : 
	-[0x80000380]:UKSUB8 a4, s10, s11
	-[0x80000384]:csrrs s10, vxsat, zero
	-[0x80000388]:sw a4, 32(a0)
Current Store : [0x8000038c] : sw s10, 36(a0) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x5', 'rd : x2', 'rs2_b3_val == 1', 'rs2_b2_val == 251', 'rs2_b0_val == 251']
Last Code Sequence : 
	-[0x8000039c]:UKSUB8 sp, t6, t0
	-[0x800003a0]:csrrs t6, vxsat, zero
	-[0x800003a4]:sw sp, 40(a0)
Current Store : [0x800003a8] : sw t6, 44(a0) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x1', 'rd : x7', 'rs2_b3_val == 255', 'rs2_b2_val == 253', 'rs1_b3_val == 0', 'rs1_b2_val == 0']
Last Code Sequence : 
	-[0x800003bc]:UKSUB8 t2, zero, ra
	-[0x800003c0]:csrrs zero, vxsat, zero
	-[0x800003c4]:sw t2, 48(a0)
Current Store : [0x800003c8] : sw zero, 52(a0) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x12', 'rs1_b2_val == 127', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800003dc]:UKSUB8 a2, s4, sp
	-[0x800003e0]:csrrs s4, vxsat, zero
	-[0x800003e4]:sw a2, 56(a0)
Current Store : [0x800003e8] : sw s4, 60(a0) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x23', 'rd : x9', 'rs2_b2_val == 170', 'rs2_b0_val == 127']
Last Code Sequence : 
	-[0x800003fc]:UKSUB8 s1, t4, s7
	-[0x80000400]:csrrs t4, vxsat, zero
	-[0x80000404]:sw s1, 64(a0)
Current Store : [0x80000408] : sw t4, 68(a0) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x16', 'rd : x3', 'rs2_b2_val == 85', 'rs2_b1_val == 247', 'rs2_b0_val == 253']
Last Code Sequence : 
	-[0x8000041c]:UKSUB8 gp, s11, a6
	-[0x80000420]:csrrs s11, vxsat, zero
	-[0x80000424]:sw gp, 72(a0)
Current Store : [0x80000428] : sw s11, 76(a0) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x24', 'rd : x5', 'rs2_b2_val == 127', 'rs2_b1_val == 251', 'rs2_b0_val == 223', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x8000043c]:UKSUB8 t0, a1, s8
	-[0x80000440]:csrrs a1, vxsat, zero
	-[0x80000444]:sw t0, 80(a0)
Current Store : [0x80000448] : sw a1, 84(a0) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x29', 'rd : x4', 'rs2_b2_val == 223', 'rs1_b3_val == 32']
Last Code Sequence : 
	-[0x8000045c]:UKSUB8 tp, s9, t4
	-[0x80000460]:csrrs s9, vxsat, zero
	-[0x80000464]:sw tp, 88(a0)
Current Store : [0x80000468] : sw s9, 92(a0) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x13', 'rs2_b2_val == 128', 'rs2_b1_val == 223']
Last Code Sequence : 
	-[0x8000047c]:UKSUB8 a3, t1, s9
	-[0x80000480]:csrrs t1, vxsat, zero
	-[0x80000484]:sw a3, 96(a0)
Current Store : [0x80000488] : sw t1, 100(a0) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x10', 'rs2_b2_val == 32', 'rs1_b3_val == 223']
Last Code Sequence : 
	-[0x800004a4]:UKSUB8 a0, a3, gp
	-[0x800004a8]:csrrs a3, vxsat, zero
	-[0x800004ac]:sw a0, 0(ra)
Current Store : [0x800004b0] : sw a3, 4(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x7', 'rd : x6', 'rs2_b2_val == 8']
Last Code Sequence : 
	-[0x800004c4]:UKSUB8 t1, a2, t2
	-[0x800004c8]:csrrs a2, vxsat, zero
	-[0x800004cc]:sw t1, 8(ra)
Current Store : [0x800004d0] : sw a2, 12(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x14', 'rd : x0', 'rs2_b1_val == 32', 'rs1_b3_val == 239', 'rs1_b1_val == 170']
Last Code Sequence : 
	-[0x800004e4]:UKSUB8 zero, a7, a4
	-[0x800004e8]:csrrs a7, vxsat, zero
	-[0x800004ec]:sw zero, 16(ra)
Current Store : [0x800004f0] : sw a7, 20(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x20', 'rs1_b3_val == 16', 'rs1_b1_val == 127', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x80000504]:UKSUB8 s4, a4, tp
	-[0x80000508]:csrrs a4, vxsat, zero
	-[0x8000050c]:sw s4, 24(ra)
Current Store : [0x80000510] : sw a4, 28(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 191', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000524]:UKSUB8 t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 32(ra)
Current Store : [0x80000530] : sw t5, 36(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_b1_val == 128', 'rs1_b1_val == 223', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000544]:UKSUB8 t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 40(ra)
Current Store : [0x80000550] : sw t5, 44(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 239']
Last Code Sequence : 
	-[0x80000564]:UKSUB8 t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 48(ra)
Current Store : [0x80000570] : sw t5, 52(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_b0_val == 128', 'rs1_b3_val == 253', 'rs1_b1_val == 253', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x80000584]:UKSUB8 t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 56(ra)
Current Store : [0x80000590] : sw t5, 60(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_b1_val == 64']
Last Code Sequence : 
	-[0x800005a4]:UKSUB8 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 64(ra)
Current Store : [0x800005b0] : sw t5, 68(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_b1_val == 253', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800005c4]:UKSUB8 t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 72(ra)
Current Store : [0x800005d0] : sw t5, 76(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_b2_val == 239', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800005e4]:UKSUB8 t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 80(ra)
Current Store : [0x800005f0] : sw t5, 84(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_b1_val == 170', 'rs1_b1_val == 255']
Last Code Sequence : 
	-[0x80000604]:UKSUB8 t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 88(ra)
Current Store : [0x80000610] : sw t5, 92(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_b0_val == 170']
Last Code Sequence : 
	-[0x80000624]:UKSUB8 t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 96(ra)
Current Store : [0x80000630] : sw t5, 100(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_b2_val == 255', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x80000644]:UKSUB8 t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 104(ra)
Current Store : [0x80000650] : sw t5, 108(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_b1_val == 8', 'rs1_b3_val == 170', 'rs1_b2_val == 1', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x80000664]:UKSUB8 t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 112(ra)
Current Store : [0x80000670] : sw t5, 116(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_b0_val == 253']
Last Code Sequence : 
	-[0x80000684]:UKSUB8 t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 120(ra)
Current Store : [0x80000690] : sw t5, 124(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_b1_val == 2', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x800006a4]:UKSUB8 t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 128(ra)
Current Store : [0x800006b0] : sw t5, 132(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_b1_val == 1', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x800006c4]:UKSUB8 t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 136(ra)
Current Store : [0x800006d0] : sw t5, 140(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_b0_val == 85', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x800006e4]:UKSUB8 t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 144(ra)
Current Store : [0x800006f0] : sw t5, 148(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_b2_val == 4', 'rs2_b0_val == 191']
Last Code Sequence : 
	-[0x80000704]:UKSUB8 t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 152(ra)
Current Store : [0x80000710] : sw t5, 156(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_b0_val == 239']
Last Code Sequence : 
	-[0x80000724]:UKSUB8 t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 160(ra)
Current Store : [0x80000730] : sw t5, 164(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_b0_val == 254', 'rs1_b3_val == 127', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000744]:UKSUB8 t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 168(ra)
Current Store : [0x80000750] : sw t5, 172(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_b0_val == 64']
Last Code Sequence : 
	-[0x80000764]:UKSUB8 t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 176(ra)
Current Store : [0x80000770] : sw t5, 180(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_b0_val == 4', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x80000784]:UKSUB8 t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 184(ra)
Current Store : [0x80000790] : sw t5, 188(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_b0_val == 2', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800007a4]:UKSUB8 t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 192(ra)
Current Store : [0x800007b0] : sw t5, 196(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_b3_val == 251']
Last Code Sequence : 
	-[0x800007c4]:UKSUB8 t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 200(ra)
Current Store : [0x800007d0] : sw t5, 204(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_b1_val == 239', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x800007e4]:UKSUB8 t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 208(ra)
Current Store : [0x800007f0] : sw t5, 212(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000804]:UKSUB8 t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 216(ra)
Current Store : [0x80000810] : sw t5, 220(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_b3_val == 8']
Last Code Sequence : 
	-[0x80000824]:UKSUB8 t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 224(ra)
Current Store : [0x80000830] : sw t5, 228(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_b3_val == 255']
Last Code Sequence : 
	-[0x80000844]:UKSUB8 t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 232(ra)
Current Store : [0x80000850] : sw t5, 236(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_b2_val == 1']
Last Code Sequence : 
	-[0x80000864]:UKSUB8 t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 240(ra)
Current Store : [0x80000870] : sw t5, 244(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_b2_val == 223']
Last Code Sequence : 
	-[0x80000884]:UKSUB8 t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 248(ra)
Current Store : [0x80000890] : sw t5, 252(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_b1_val == 191']
Last Code Sequence : 
	-[0x800008a4]:UKSUB8 t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 256(ra)
Current Store : [0x800008b0] : sw t5, 260(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_b0_val == 1']
Last Code Sequence : 
	-[0x800008c4]:UKSUB8 t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 264(ra)
Current Store : [0x800008d0] : sw t5, 268(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_b3_val == 191']
Last Code Sequence : 
	-[0x800008e4]:UKSUB8 t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 272(ra)
Current Store : [0x800008f0] : sw t5, 276(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_b2_val == 2']
Last Code Sequence : 
	-[0x80000904]:UKSUB8 t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 280(ra)
Current Store : [0x80000910] : sw t5, 284(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_b1_val == 16']
Last Code Sequence : 
	-[0x80000924]:UKSUB8 t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 288(ra)
Current Store : [0x80000930] : sw t5, 292(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_b2_val == 128']
Last Code Sequence : 
	-[0x80000944]:UKSUB8 t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 296(ra)
Current Store : [0x80000950] : sw t5, 300(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['opcode : uksub8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 254', 'rs2_b2_val == 254', 'rs1_b3_val == 254']
Last Code Sequence : 
	-[0x80000964]:UKSUB8 t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 304(ra)
Current Store : [0x80000970] : sw t5, 308(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['opcode : uksub8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b3_val == 255', 'rs2_b2_val == 253', 'rs1_b3_val == 128', 'rs1_b2_val == 254', 'rs1_b1_val == 16', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x80000984]:UKSUB8 t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 312(ra)
Current Store : [0x80000990] : sw t5, 316(ra) -- Store: [0x8000242c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                                                                           coverpoints                                                                                                                                                                                                            |                                                    code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : uksub8<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_b0_val == 0<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b0_val == 0<br>                                                                            |[0x8000011c]:UKSUB8 t5, t5, t5<br> [0x80000120]:csrrs t5, vxsat, zero<br> [0x80000124]:sw t5, 0(sp)<br>      |
|   2|[0x80002218]<br>0x00000000|- rs1 : x10<br> - rs2 : x10<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 254<br> - rs2_b2_val == 254<br> - rs1_b3_val == 254<br> - rs1_b2_val == 254<br>                                                                                                                                                                                        |[0x8000013c]:UKSUB8 s5, a0, a0<br> [0x80000140]:csrrs a0, vxsat, zero<br> [0x80000144]:sw s5, 8(sp)<br>      |
|   3|[0x80002220]<br>0x3A0000E2|- rs1 : x22<br> - rs2 : x26<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b2_val == 247<br> - rs2_b1_val == 85<br> - rs1_b3_val == 64<br> - rs1_b2_val == 247<br> - rs1_b0_val == 239<br> |[0x8000015c]:UKSUB8 s7, s6, s10<br> [0x80000160]:csrrs s6, vxsat, zero<br> [0x80000164]:sw s7, 16(sp)<br>    |
|   4|[0x80002228]<br>0x00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b3_val == 85<br> - rs2_b2_val == 191<br> - rs2_b0_val == 170<br> - rs1_b3_val == 1<br> - rs1_b0_val == 8<br>                                                                                                                                                                     |[0x8000017c]:UKSUB8 a5, s8, a5<br> [0x80000180]:csrrs s8, vxsat, zero<br> [0x80000184]:sw a5, 24(sp)<br>     |
|   5|[0x80002230]<br>0x00000001|- rs1 : x28<br> - rs2 : x0<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs1_b2_val == 85<br> - rs1_b1_val == 8<br>                                                                                                                                                                                                                                               |[0x8000019c]:UKSUB8 t3, t3, zero<br> [0x800001a0]:csrrs t3, vxsat, zero<br> [0x800001a4]:sw t3, 32(sp)<br>   |
|   6|[0x80002238]<br>0x00FC00BA|- rs1 : x19<br> - rs2 : x13<br> - rd : x16<br> - rs2_b3_val == 170<br> - rs1_b3_val == 128<br> - rs1_b2_val == 255<br> - rs1_b1_val == 1<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                              |[0x800001bc]:UKSUB8 a6, s3, a3<br> [0x800001c0]:csrrs s3, vxsat, zero<br> [0x800001c4]:sw a6, 40(sp)<br>     |
|   7|[0x80002240]<br>0x00BFF710|- rs1 : x23<br> - rs2 : x6<br> - rd : x25<br> - rs2_b3_val == 127<br> - rs1_b2_val == 191<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                             |[0x800001dc]:UKSUB8 s9, s7, t1<br> [0x800001e0]:csrrs s7, vxsat, zero<br> [0x800001e4]:sw s9, 48(sp)<br>     |
|   8|[0x80002248]<br>0x000000F7|- rs1 : x7<br> - rs2 : x12<br> - rd : x1<br> - rs2_b3_val == 191<br> - rs2_b1_val == 254<br> - rs1_b2_val == 16<br> - rs1_b1_val == 247<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                               |[0x800001fc]:UKSUB8 ra, t2, a2<br> [0x80000200]:csrrs t2, vxsat, zero<br> [0x80000204]:sw ra, 56(sp)<br>     |
|   9|[0x80002250]<br>0x00000000|- rs1 : x21<br> - rs2 : x31<br> - rd : x29<br> - rs2_b3_val == 223<br> - rs2_b2_val == 64<br> - rs2_b1_val == 127<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                       |[0x8000021c]:UKSUB8 t4, s5, t6<br> [0x80000220]:csrrs s5, vxsat, zero<br> [0x80000224]:sw t4, 64(sp)<br>     |
|  10|[0x80002258]<br>0x00000073|- rs1 : x18<br> - rs2 : x28<br> - rd : x24<br> - rs2_b3_val == 239<br> - rs2_b2_val == 16<br> - rs2_b1_val == 255<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                     |[0x8000023c]:UKSUB8 s8, s2, t3<br> [0x80000240]:csrrs s2, vxsat, zero<br> [0x80000244]:sw s8, 72(sp)<br>     |
|  11|[0x80002260]<br>0x00000055|- rs1 : x16<br> - rs2 : x20<br> - rd : x8<br> - rs2_b3_val == 247<br> - rs1_b1_val == 16<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                              |[0x8000025c]:UKSUB8 fp, a6, s4<br> [0x80000260]:csrrs a6, vxsat, zero<br> [0x80000264]:sw fp, 80(sp)<br>     |
|  12|[0x80002268]<br>0x00090003|- rs1 : x5<br> - rs2 : x11<br> - rd : x18<br> - rs2_b3_val == 251<br> - rs2_b1_val == 64<br> - rs2_b0_val == 8<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                          |[0x8000027c]:UKSUB8 s2, t0, a1<br> [0x80000280]:csrrs t0, vxsat, zero<br> [0x80000284]:sw s2, 88(sp)<br>     |
|  13|[0x80002270]<br>0x00F20000|- rs1 : x1<br> - rs2 : x18<br> - rd : x31<br> - rs2_b3_val == 253<br> - rs2_b0_val == 247<br> - rs1_b3_val == 2<br> - rs1_b2_val == 251<br>                                                                                                                                                                                                                                                                                       |[0x80000298]:UKSUB8 t6, ra, s2<br> [0x8000029c]:csrrs ra, vxsat, zero<br> [0x800002a0]:sw t6, 96(sp)<br>     |
|  14|[0x80002278]<br>0x00000008|- rs1 : x3<br> - rs2 : x8<br> - rd : x27<br> - rs2_b3_val == 128<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                        |[0x800002b8]:UKSUB8 s11, gp, fp<br> [0x800002bc]:csrrs gp, vxsat, zero<br> [0x800002c0]:sw s11, 104(sp)<br>  |
|  15|[0x80002280]<br>0x40000600|- rs1 : x4<br> - rs2 : x19<br> - rd : x17<br> - rs2_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                              |[0x800002d8]:UKSUB8 a7, tp, s3<br> [0x800002dc]:csrrs tp, vxsat, zero<br> [0x800002e0]:sw a7, 112(sp)<br>    |
|  16|[0x80002288]<br>0x00430009|- rs1 : x8<br> - rs2 : x9<br> - rd : x19<br> - rs2_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000300]:UKSUB8 s3, fp, s1<br> [0x80000304]:csrrs fp, vxsat, zero<br> [0x80000308]:sw s3, 0(a0)<br>      |
|  17|[0x80002290]<br>0x00000800|- rs1 : x9<br> - rs2 : x21<br> - rd : x22<br> - rs2_b3_val == 16<br> - rs2_b2_val == 239<br> - rs2_b0_val == 16<br>                                                                                                                                                                                                                                                                                                               |[0x80000320]:UKSUB8 s6, s1, s5<br> [0x80000324]:csrrs s1, vxsat, zero<br> [0x80000328]:sw s6, 8(a0)<br>      |
|  18|[0x80002298]<br>0xEF0EEF9F|- rs1 : x2<br> - rs2 : x22<br> - rd : x26<br> - rs2_b3_val == 8<br> - rs2_b0_val == 32<br> - rs1_b3_val == 247<br> - rs1_b2_val == 253<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                |[0x80000340]:UKSUB8 s10, sp, s6<br> [0x80000344]:csrrs sp, vxsat, zero<br> [0x80000348]:sw s10, 16(a0)<br>   |
|  19|[0x800022a0]<br>0x0AA87C01|- rs1 : x15<br> - rs2 : x17<br> - rd : x11<br> - rs2_b3_val == 4<br> - rs2_b2_val == 2<br> - rs2_b1_val == 4<br> - rs1_b2_val == 170<br> - rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                  |[0x80000360]:UKSUB8 a1, a5, a7<br> [0x80000364]:csrrs a5, vxsat, zero<br> [0x80000368]:sw a1, 24(a0)<br>     |
|  20|[0x800022a8]<br>0x02EC0000|- rs1 : x26<br> - rs2 : x27<br> - rd : x14<br> - rs2_b3_val == 2<br> - rs2_b0_val == 255<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                |[0x80000380]:UKSUB8 a4, s10, s11<br> [0x80000384]:csrrs s10, vxsat, zero<br> [0x80000388]:sw a4, 32(a0)<br>  |
|  21|[0x800022b0]<br>0x0C007D00|- rs1 : x31<br> - rs2 : x5<br> - rd : x2<br> - rs2_b3_val == 1<br> - rs2_b2_val == 251<br> - rs2_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                |[0x8000039c]:UKSUB8 sp, t6, t0<br> [0x800003a0]:csrrs t6, vxsat, zero<br> [0x800003a4]:sw sp, 40(a0)<br>     |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x0<br> - rs2 : x1<br> - rd : x7<br> - rs2_b3_val == 255<br> - rs2_b2_val == 253<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br>                                                                                                                                                                                                                                                                                           |[0x800003bc]:UKSUB8 t2, zero, ra<br> [0x800003c0]:csrrs zero, vxsat, zero<br> [0x800003c4]:sw t2, 48(a0)<br> |
|  23|[0x800022c0]<br>0x80004BF8|- rs1 : x20<br> - rs2 : x2<br> - rd : x12<br> - rs1_b2_val == 127<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                      |[0x800003dc]:UKSUB8 a2, s4, sp<br> [0x800003e0]:csrrs s4, vxsat, zero<br> [0x800003e4]:sw a2, 56(a0)<br>     |
|  24|[0x800022c8]<br>0x00150100|- rs1 : x29<br> - rs2 : x23<br> - rd : x9<br> - rs2_b2_val == 170<br> - rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                     |[0x800003fc]:UKSUB8 s1, t4, s7<br> [0x80000400]:csrrs t4, vxsat, zero<br> [0x80000404]:sw s1, 64(a0)<br>     |
|  25|[0x800022d0]<br>0x06000000|- rs1 : x27<br> - rs2 : x16<br> - rd : x3<br> - rs2_b2_val == 85<br> - rs2_b1_val == 247<br> - rs2_b0_val == 253<br>                                                                                                                                                                                                                                                                                                              |[0x8000041c]:UKSUB8 gp, s11, a6<br> [0x80000420]:csrrs s11, vxsat, zero<br> [0x80000424]:sw gp, 72(a0)<br>   |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x5<br> - rs2_b2_val == 127<br> - rs2_b1_val == 251<br> - rs2_b0_val == 223<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                     |[0x8000043c]:UKSUB8 t0, a1, s8<br> [0x80000440]:csrrs a1, vxsat, zero<br> [0x80000444]:sw t0, 80(a0)<br>     |
|  27|[0x800022e0]<br>0x000000E4|- rs1 : x25<br> - rs2 : x29<br> - rd : x4<br> - rs2_b2_val == 223<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000045c]:UKSUB8 tp, s9, t4<br> [0x80000460]:csrrs s9, vxsat, zero<br> [0x80000464]:sw tp, 88(a0)<br>     |
|  28|[0x800022e8]<br>0x007F0008|- rs1 : x6<br> - rs2 : x25<br> - rd : x13<br> - rs2_b2_val == 128<br> - rs2_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                     |[0x8000047c]:UKSUB8 a3, t1, s9<br> [0x80000480]:csrrs t1, vxsat, zero<br> [0x80000484]:sw a3, 96(a0)<br>     |
|  29|[0x800022f0]<br>0x9F0007F7|- rs1 : x13<br> - rs2 : x3<br> - rd : x10<br> - rs2_b2_val == 32<br> - rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                      |[0x800004a4]:UKSUB8 a0, a3, gp<br> [0x800004a8]:csrrs a3, vxsat, zero<br> [0x800004ac]:sw a0, 0(ra)<br>      |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x12<br> - rs2 : x7<br> - rd : x6<br> - rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                |[0x800004c4]:UKSUB8 t1, a2, t2<br> [0x800004c8]:csrrs a2, vxsat, zero<br> [0x800004cc]:sw t1, 8(ra)<br>      |
|  31|[0x80002300]<br>0x00000000|- rs1 : x17<br> - rs2 : x14<br> - rd : x0<br> - rs2_b1_val == 32<br> - rs1_b3_val == 239<br> - rs1_b1_val == 170<br>                                                                                                                                                                                                                                                                                                              |[0x800004e4]:UKSUB8 zero, a7, a4<br> [0x800004e8]:csrrs a7, vxsat, zero<br> [0x800004ec]:sw zero, 16(ra)<br> |
|  32|[0x80002308]<br>0x0A00004E|- rs1 : x14<br> - rs2 : x4<br> - rd : x20<br> - rs1_b3_val == 16<br> - rs1_b1_val == 127<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                               |[0x80000504]:UKSUB8 s4, a4, tp<br> [0x80000508]:csrrs a4, vxsat, zero<br> [0x8000050c]:sw s4, 24(ra)<br>     |
|  33|[0x80002310]<br>0x000A400A|- rs1_b1_val == 191<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000524]:UKSUB8 t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 32(ra)<br>     |
|  34|[0x80002318]<br>0x00115F00|- rs2_b1_val == 128<br> - rs1_b1_val == 223<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000544]:UKSUB8 t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 40(ra)<br>     |
|  35|[0x80002320]<br>0x00006FF8|- rs1_b1_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000564]:UKSUB8 t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 48(ra)<br>     |
|  36|[0x80002328]<br>0x0000EF77|- rs2_b0_val == 128<br> - rs1_b3_val == 253<br> - rs1_b1_val == 253<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000584]:UKSUB8 t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 56(ra)<br>     |
|  37|[0x80002330]<br>0x00003100|- rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005a4]:UKSUB8 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 64(ra)<br>     |
|  38|[0x80002338]<br>0x00000001|- rs2_b1_val == 253<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800005c4]:UKSUB8 t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 72(ra)<br>     |
|  39|[0x80002340]<br>0x00E902E6|- rs1_b2_val == 239<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005e4]:UKSUB8 t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 80(ra)<br>     |
|  40|[0x80002348]<br>0x00005507|- rs2_b1_val == 170<br> - rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000604]:UKSUB8 t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 88(ra)<br>     |
|  41|[0x80002350]<br>0x070000A7|- rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000624]:UKSUB8 t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 96(ra)<br>     |
|  42|[0x80002358]<br>0x00000079|- rs2_b2_val == 255<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000644]:UKSUB8 t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 104(ra)<br>    |
|  43|[0x80002360]<br>0xA700021C|- rs2_b1_val == 8<br> - rs1_b3_val == 170<br> - rs1_b2_val == 1<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000664]:UKSUB8 t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 112(ra)<br>    |
|  44|[0x80002368]<br>0x07FB00F2|- rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000684]:UKSUB8 t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 120(ra)<br>    |
|  45|[0x80002370]<br>0x0000DD40|- rs2_b1_val == 2<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006a4]:UKSUB8 t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 128(ra)<br>    |
|  46|[0x80002378]<br>0x0400FE45|- rs2_b1_val == 1<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800006c4]:UKSUB8 t6, t5, t4<br> [0x800006c8]:csrrs t5, vxsat, zero<br> [0x800006cc]:sw t6, 136(ra)<br>    |
|  47|[0x80002380]<br>0xDE190500|- rs2_b0_val == 85<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006e4]:UKSUB8 t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 144(ra)<br>    |
|  48|[0x80002388]<br>0x00030020|- rs2_b2_val == 4<br> - rs2_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000704]:UKSUB8 t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 152(ra)<br>    |
|  49|[0x80002390]<br>0xD8000000|- rs2_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000724]:UKSUB8 t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 160(ra)<br>    |
|  50|[0x80002398]<br>0x7F000000|- rs2_b0_val == 254<br> - rs1_b3_val == 127<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                            |[0x80000744]:UKSUB8 t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 168(ra)<br>    |
|  51|[0x800023a0]<br>0x10050100|- rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000764]:UKSUB8 t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 176(ra)<br>    |
|  52|[0x800023a8]<br>0x53000004|- rs2_b0_val == 4<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000784]:UKSUB8 t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 184(ra)<br>    |
|  53|[0x800023b0]<br>0x80000002|- rs2_b0_val == 2<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800007a4]:UKSUB8 t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 192(ra)<br>    |
|  54|[0x800023b8]<br>0x00000000|- rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800007c4]:UKSUB8 t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 200(ra)<br>    |
|  55|[0x800023c0]<br>0xDA000011|- rs2_b1_val == 239<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800007e4]:UKSUB8 t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 208(ra)<br>    |
|  56|[0x800023c8]<br>0x02007800|- rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000804]:UKSUB8 t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 216(ra)<br>    |
|  57|[0x800023d0]<br>0x00000000|- rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000824]:UKSUB8 t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 224(ra)<br>    |
|  58|[0x800023d8]<br>0xFEEFF000|- rs1_b3_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000844]:UKSUB8 t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 232(ra)<br>    |
|  59|[0x800023e0]<br>0x00040000|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000864]:UKSUB8 t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 240(ra)<br>    |
|  60|[0x800023e8]<br>0x01CF0074|- rs1_b2_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000884]:UKSUB8 t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 248(ra)<br>    |
|  61|[0x800023f0]<br>0x7E000000|- rs2_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800008a4]:UKSUB8 t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 256(ra)<br>    |
|  62|[0x800023f8]<br>0xEA0599FD|- rs2_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800008c4]:UKSUB8 t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 264(ra)<br>    |
|  63|[0x80002400]<br>0x9F00003A|- rs1_b3_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800008e4]:UKSUB8 t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 272(ra)<br>    |
|  64|[0x80002408]<br>0x00000F02|- rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000904]:UKSUB8 t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 280(ra)<br>    |
|  65|[0x80002410]<br>0xB7000000|- rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000924]:UKSUB8 t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 288(ra)<br>    |
|  66|[0x80002418]<br>0xA87E0A08|- rs1_b2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000944]:UKSUB8 t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 296(ra)<br>    |
