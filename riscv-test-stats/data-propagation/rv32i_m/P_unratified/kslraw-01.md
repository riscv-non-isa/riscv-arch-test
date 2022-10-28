
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000bc0')]      |
| SIG_REGION                | [('0x80002210', '0x80002540', '204 words')]      |
| COV_LABELS                | kslraw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslraw-01.S    |
| Total Number of coverpoints| 250     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 204      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 102     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c0]:KSLRAW t6, t5, t4
      [0x800006c4]:csrrs t5, vxsat, zero
      [0x800006c8]:sw t6, 184(gp)
 -- Signature Address: 0x800023b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == -1073741825
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d8]:KSLRAW t6, t5, t4
      [0x800008dc]:csrrs t5, vxsat, zero
      [0x800008e0]:sw t6, 352(gp)
 -- Signature Address: 0x80002460 Data: 0x10000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 0
      - rs1_w0_val == 268435456




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb0]:KSLRAW t6, t5, t4
      [0x80000bb4]:csrrs t5, vxsat, zero
      [0x80000bb8]:sw t6, 568(gp)
 -- Signature Address: 0x80002538 Data: 0x02000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 33554432
      - rs1_w0_val == 33554432






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslraw', 'rs1 : x0', 'rs2 : x0', 'rd : x0', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000011c]:KSLRAW zero, zero, zero
	-[0x80000120]:csrrs zero, vxsat, zero
	-[0x80000124]:sw zero, 0(t2)
Current Store : [0x80000128] : sw zero, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x26', 'rd : x5', 'rs1 == rs2 != rd', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 33554432', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000134]:KSLRAW t0, s10, s10
	-[0x80000138]:csrrs s10, vxsat, zero
	-[0x8000013c]:sw t0, 8(t2)
Current Store : [0x80000140] : sw s10, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x21', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 128']
Last Code Sequence : 
	-[0x8000014c]:KSLRAW s5, t0, a0
	-[0x80000150]:csrrs t0, vxsat, zero
	-[0x80000154]:sw s5, 16(t2)
Current Store : [0x80000158] : sw t0, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x23', 'rd : x23', 'rs2 == rd != rs1', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w0_val == -3', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000164]:KSLRAW s7, t5, s7
	-[0x80000168]:csrrs t5, vxsat, zero
	-[0x8000016c]:sw s7, 24(t2)
Current Store : [0x80000170] : sw t5, 28(t2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x17', 'rd : x10', 'rs1 == rd != rs2', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000184]:KSLRAW a0, a0, a7
	-[0x80000188]:csrrs a0, vxsat, zero
	-[0x8000018c]:sw a0, 32(t2)
Current Store : [0x80000190] : sw a0, 36(t2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x17', 'rs2_w0_val == 1431655765', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800001a0]:KSLRAW a7, a4, ra
	-[0x800001a4]:csrrs a4, vxsat, zero
	-[0x800001a8]:sw a7, 40(t2)
Current Store : [0x800001ac] : sw a4, 44(t2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x27', 'rd : x31', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800001bc]:KSLRAW t6, sp, s11
	-[0x800001c0]:csrrs sp, vxsat, zero
	-[0x800001c4]:sw t6, 48(t2)
Current Store : [0x800001c8] : sw sp, 52(t2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x19', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800001d8]:KSLRAW s3, tp, a3
	-[0x800001dc]:csrrs tp, vxsat, zero
	-[0x800001e0]:sw s3, 56(t2)
Current Store : [0x800001e4] : sw tp, 60(t2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x30', 'rd : x16', 'rs2_w0_val == -536870913', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800001f4]:KSLRAW a6, a5, t5
	-[0x800001f8]:csrrs a5, vxsat, zero
	-[0x800001fc]:sw a6, 64(t2)
Current Store : [0x80000200] : sw a5, 68(t2) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x24', 'rs2_w0_val == -268435457', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000210]:KSLRAW s8, s3, a2
	-[0x80000214]:csrrs s3, vxsat, zero
	-[0x80000218]:sw s8, 72(t2)
Current Store : [0x8000021c] : sw s3, 76(t2) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rd : x8', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000022c]:KSLRAW fp, s1, t1
	-[0x80000230]:csrrs s1, vxsat, zero
	-[0x80000234]:sw fp, 80(t2)
Current Store : [0x80000238] : sw s1, 84(t2) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x15', 'rs2_w0_val == -33554433', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000024c]:KSLRAW a5, t4, t6
	-[0x80000250]:csrrs t4, vxsat, zero
	-[0x80000254]:sw a5, 88(t2)
Current Store : [0x80000258] : sw t4, 92(t2) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x25', 'rs2_w0_val == -16777217', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000268]:KSLRAW s9, s4, s1
	-[0x8000026c]:csrrs s4, vxsat, zero
	-[0x80000270]:sw s9, 96(t2)
Current Store : [0x80000274] : sw s4, 100(t2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x20', 'rs2_w0_val == -8388609', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000288]:KSLRAW s4, fp, tp
	-[0x8000028c]:csrrs fp, vxsat, zero
	-[0x80000290]:sw s4, 104(t2)
Current Store : [0x80000294] : sw fp, 108(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x12', 'rs2_w0_val == -4194305', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800002a4]:KSLRAW a2, a7, s2
	-[0x800002a8]:csrrs a7, vxsat, zero
	-[0x800002ac]:sw a2, 112(t2)
Current Store : [0x800002b0] : sw a7, 116(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x18', 'rs2_w0_val == -2097153', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800002c4]:KSLRAW s2, gp, a6
	-[0x800002c8]:csrrs gp, vxsat, zero
	-[0x800002cc]:sw s2, 120(t2)
Current Store : [0x800002d0] : sw gp, 124(t2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x13', 'rs2_w0_val == -1048577', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800002e8]:KSLRAW a3, s5, a1
	-[0x800002ec]:csrrs s5, vxsat, zero
	-[0x800002f0]:sw a3, 0(a0)
Current Store : [0x800002f4] : sw s5, 4(a0) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x29', 'rs2_w0_val == -524289', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000304]:KSLRAW t4, s8, s5
	-[0x80000308]:csrrs s8, vxsat, zero
	-[0x8000030c]:sw t4, 8(a0)
Current Store : [0x80000310] : sw s8, 12(a0) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x22', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80000320]:KSLRAW s6, s9, s4
	-[0x80000324]:csrrs s9, vxsat, zero
	-[0x80000328]:sw s6, 16(a0)
Current Store : [0x8000032c] : sw s9, 20(a0) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x8', 'rd : x4', 'rs2_w0_val == -131073', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000033c]:KSLRAW tp, s2, fp
	-[0x80000340]:csrrs s2, vxsat, zero
	-[0x80000344]:sw tp, 24(a0)
Current Store : [0x80000348] : sw s2, 28(a0) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x30', 'rs2_w0_val == -65537', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000358]:KSLRAW t5, t1, s8
	-[0x8000035c]:csrrs t1, vxsat, zero
	-[0x80000360]:sw t5, 32(a0)
Current Store : [0x80000364] : sw t1, 36(a0) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x7', 'rd : x6', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80000374]:KSLRAW t1, a3, t2
	-[0x80000378]:csrrs a3, vxsat, zero
	-[0x8000037c]:sw t1, 40(a0)
Current Store : [0x80000380] : sw a3, 44(a0) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x7', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000390]:KSLRAW t2, s7, t0
	-[0x80000394]:csrrs s7, vxsat, zero
	-[0x80000398]:sw t2, 48(a0)
Current Store : [0x8000039c] : sw s7, 52(a0) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x25', 'rd : x14', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x800003ac]:KSLRAW a4, s11, s9
	-[0x800003b0]:csrrs s11, vxsat, zero
	-[0x800003b4]:sw a4, 56(a0)
Current Store : [0x800003b8] : sw s11, 60(a0) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x14', 'rd : x1', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x800003c8]:KSLRAW ra, s6, a4
	-[0x800003cc]:csrrs s6, vxsat, zero
	-[0x800003d0]:sw ra, 64(a0)
Current Store : [0x800003d4] : sw s6, 68(a0) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x3', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003e4]:KSLRAW gp, a2, a5
	-[0x800003e8]:csrrs a2, vxsat, zero
	-[0x800003ec]:sw gp, 72(a0)
Current Store : [0x800003f0] : sw a2, 76(a0) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x29', 'rd : x9', 'rs2_w0_val == -1025', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000400]:KSLRAW s1, t2, t4
	-[0x80000404]:csrrs t2, vxsat, zero
	-[0x80000408]:sw s1, 80(a0)
Current Store : [0x8000040c] : sw t2, 84(a0) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x26', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80000418]:KSLRAW s10, a1, s6
	-[0x8000041c]:csrrs a1, vxsat, zero
	-[0x80000420]:sw s10, 88(a0)
Current Store : [0x80000424] : sw a1, 92(a0) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x3', 'rd : x2', 'rs2_w0_val == -257', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000434]:KSLRAW sp, ra, gp
	-[0x80000438]:csrrs ra, vxsat, zero
	-[0x8000043c]:sw sp, 96(a0)
Current Store : [0x80000440] : sw ra, 100(a0) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x27', 'rs2_w0_val == -129', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000044c]:KSLRAW s11, t6, s3
	-[0x80000450]:csrrs t6, vxsat, zero
	-[0x80000454]:sw s11, 104(a0)
Current Store : [0x80000458] : sw t6, 108(a0) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x11', 'rs2_w0_val == -65', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000046c]:KSLRAW a1, a6, sp
	-[0x80000470]:csrrs a6, vxsat, zero
	-[0x80000474]:sw a1, 0(gp)
Current Store : [0x80000478] : sw a6, 4(gp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000484]:KSLRAW a2, t3, s7
	-[0x80000488]:csrrs t3, vxsat, zero
	-[0x8000048c]:sw a2, 8(gp)
Current Store : [0x80000490] : sw t3, 12(gp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2 : x28', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x800004a0]:KSLRAW ra, t0, t3
	-[0x800004a4]:csrrs t0, vxsat, zero
	-[0x800004a8]:sw ra, 16(gp)
Current Store : [0x800004ac] : sw t0, 20(gp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rd : x28', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x800004b8]:KSLRAW t3, a0, ra
	-[0x800004bc]:csrrs a0, vxsat, zero
	-[0x800004c0]:sw t3, 24(gp)
Current Store : [0x800004c4] : sw a0, 28(gp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800004d0]:KSLRAW t6, t5, t4
	-[0x800004d4]:csrrs t5, vxsat, zero
	-[0x800004d8]:sw t6, 32(gp)
Current Store : [0x800004dc] : sw t5, 36(gp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800004ec]:KSLRAW t6, t5, t4
	-[0x800004f0]:csrrs t5, vxsat, zero
	-[0x800004f4]:sw t6, 40(gp)
Current Store : [0x800004f8] : sw t5, 44(gp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000504]:KSLRAW t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 48(gp)
Current Store : [0x80000510] : sw t5, 52(gp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x8000051c]:KSLRAW t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 56(gp)
Current Store : [0x80000528] : sw t5, 60(gp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000538]:KSLRAW t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 64(gp)
Current Store : [0x80000544] : sw t5, 68(gp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000554]:KSLRAW t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 72(gp)
Current Store : [0x80000560] : sw t5, 76(gp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000570]:KSLRAW t6, t5, t4
	-[0x80000574]:csrrs t5, vxsat, zero
	-[0x80000578]:sw t6, 80(gp)
Current Store : [0x8000057c] : sw t5, 84(gp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000588]:KSLRAW t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 88(gp)
Current Store : [0x80000594] : sw t5, 92(gp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800005a0]:KSLRAW t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 96(gp)
Current Store : [0x800005ac] : sw t5, 100(gp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005bc]:KSLRAW t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 104(gp)
Current Store : [0x800005c8] : sw t5, 108(gp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005d4]:KSLRAW t6, t5, t4
	-[0x800005d8]:csrrs t5, vxsat, zero
	-[0x800005dc]:sw t6, 112(gp)
Current Store : [0x800005e0] : sw t5, 116(gp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800005f4]:KSLRAW t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 120(gp)
Current Store : [0x80000600] : sw t5, 124(gp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x8000060c]:KSLRAW t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 128(gp)
Current Store : [0x80000618] : sw t5, 132(gp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000624]:KSLRAW t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 136(gp)
Current Store : [0x80000630] : sw t5, 140(gp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000063c]:KSLRAW t6, t5, t4
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 144(gp)
Current Store : [0x80000648] : sw t5, 148(gp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000658]:KSLRAW t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 152(gp)
Current Store : [0x80000664] : sw t5, 156(gp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000670]:KSLRAW t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 160(gp)
Current Store : [0x8000067c] : sw t5, 164(gp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000068c]:KSLRAW t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 168(gp)
Current Store : [0x80000698] : sw t5, 172(gp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006a4]:KSLRAW t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 176(gp)
Current Store : [0x800006b0] : sw t5, 180(gp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['opcode : kslraw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800006c0]:KSLRAW t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 184(gp)
Current Store : [0x800006cc] : sw t5, 188(gp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800006d8]:KSLRAW t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 192(gp)
Current Store : [0x800006e4] : sw t5, 196(gp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800006f0]:KSLRAW t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 200(gp)
Current Store : [0x800006fc] : sw t5, 204(gp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000708]:KSLRAW t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 208(gp)
Current Store : [0x80000714] : sw t5, 212(gp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000720]:KSLRAW t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 216(gp)
Current Store : [0x8000072c] : sw t5, 220(gp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000738]:KSLRAW t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 224(gp)
Current Store : [0x80000744] : sw t5, 228(gp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000750]:KSLRAW t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 232(gp)
Current Store : [0x8000075c] : sw t5, 236(gp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x8000076c]:KSLRAW t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 240(gp)
Current Store : [0x80000778] : sw t5, 244(gp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000784]:KSLRAW t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 248(gp)
Current Store : [0x80000790] : sw t5, 252(gp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x8000079c]:KSLRAW t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 256(gp)
Current Store : [0x800007a8] : sw t5, 260(gp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800007b8]:KSLRAW t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 264(gp)
Current Store : [0x800007c4] : sw t5, 268(gp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800007d8]:KSLRAW t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 272(gp)
Current Store : [0x800007e4] : sw t5, 276(gp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800007f4]:KSLRAW t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 280(gp)
Current Store : [0x80000800] : sw t5, 284(gp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000080c]:KSLRAW t6, t5, t4
	-[0x80000810]:csrrs t5, vxsat, zero
	-[0x80000814]:sw t6, 288(gp)
Current Store : [0x80000818] : sw t5, 292(gp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80000824]:KSLRAW t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 296(gp)
Current Store : [0x80000830] : sw t5, 300(gp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000840]:KSLRAW t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 304(gp)
Current Store : [0x8000084c] : sw t5, 308(gp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000085c]:KSLRAW t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 312(gp)
Current Store : [0x80000868] : sw t5, 316(gp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000874]:KSLRAW t6, t5, t4
	-[0x80000878]:csrrs t5, vxsat, zero
	-[0x8000087c]:sw t6, 320(gp)
Current Store : [0x80000880] : sw t5, 324(gp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000890]:KSLRAW t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 328(gp)
Current Store : [0x8000089c] : sw t5, 332(gp) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x800008a8]:KSLRAW t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 336(gp)
Current Store : [0x800008b4] : sw t5, 340(gp) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800008c0]:KSLRAW t6, t5, t4
	-[0x800008c4]:csrrs t5, vxsat, zero
	-[0x800008c8]:sw t6, 344(gp)
Current Store : [0x800008cc] : sw t5, 348(gp) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : kslraw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800008d8]:KSLRAW t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 352(gp)
Current Store : [0x800008e4] : sw t5, 356(gp) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008f4]:KSLRAW t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 360(gp)
Current Store : [0x80000900] : sw t5, 364(gp) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000910]:KSLRAW t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 368(gp)
Current Store : [0x8000091c] : sw t5, 372(gp) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000092c]:KSLRAW t6, t5, t4
	-[0x80000930]:csrrs t5, vxsat, zero
	-[0x80000934]:sw t6, 376(gp)
Current Store : [0x80000938] : sw t5, 380(gp) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000948]:KSLRAW t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 384(gp)
Current Store : [0x80000954] : sw t5, 388(gp) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000964]:KSLRAW t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 392(gp)
Current Store : [0x80000970] : sw t5, 396(gp) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000984]:KSLRAW t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 400(gp)
Current Store : [0x80000990] : sw t5, 404(gp) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800009a0]:KSLRAW t6, t5, t4
	-[0x800009a4]:csrrs t5, vxsat, zero
	-[0x800009a8]:sw t6, 408(gp)
Current Store : [0x800009ac] : sw t5, 412(gp) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800009c0]:KSLRAW t6, t5, t4
	-[0x800009c4]:csrrs t5, vxsat, zero
	-[0x800009c8]:sw t6, 416(gp)
Current Store : [0x800009cc] : sw t5, 420(gp) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800009dc]:KSLRAW t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 424(gp)
Current Store : [0x800009e8] : sw t5, 428(gp) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800009f8]:KSLRAW t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 432(gp)
Current Store : [0x80000a04] : sw t5, 436(gp) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a10]:KSLRAW t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 440(gp)
Current Store : [0x80000a1c] : sw t5, 444(gp) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000a28]:KSLRAW t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 448(gp)
Current Store : [0x80000a34] : sw t5, 452(gp) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a44]:KSLRAW t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 456(gp)
Current Store : [0x80000a50] : sw t5, 460(gp) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000a5c]:KSLRAW t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 464(gp)
Current Store : [0x80000a68] : sw t5, 468(gp) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a74]:KSLRAW t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 472(gp)
Current Store : [0x80000a80] : sw t5, 476(gp) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a8c]:KSLRAW t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 480(gp)
Current Store : [0x80000a98] : sw t5, 484(gp) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000aa8]:KSLRAW t6, t5, t4
	-[0x80000aac]:csrrs t5, vxsat, zero
	-[0x80000ab0]:sw t6, 488(gp)
Current Store : [0x80000ab4] : sw t5, 492(gp) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000ac4]:KSLRAW t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 496(gp)
Current Store : [0x80000ad0] : sw t5, 500(gp) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000adc]:KSLRAW t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 504(gp)
Current Store : [0x80000ae8] : sw t5, 508(gp) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000af4]:KSLRAW t6, t5, t4
	-[0x80000af8]:csrrs t5, vxsat, zero
	-[0x80000afc]:sw t6, 512(gp)
Current Store : [0x80000b00] : sw t5, 516(gp) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b0c]:KSLRAW t6, t5, t4
	-[0x80000b10]:csrrs t5, vxsat, zero
	-[0x80000b14]:sw t6, 520(gp)
Current Store : [0x80000b18] : sw t5, 524(gp) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b28]:KSLRAW t6, t5, t4
	-[0x80000b2c]:csrrs t5, vxsat, zero
	-[0x80000b30]:sw t6, 528(gp)
Current Store : [0x80000b34] : sw t5, 532(gp) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b44]:KSLRAW t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 536(gp)
Current Store : [0x80000b50] : sw t5, 540(gp) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b60]:KSLRAW t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 544(gp)
Current Store : [0x80000b6c] : sw t5, 548(gp) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000b7c]:KSLRAW t6, t5, t4
	-[0x80000b80]:csrrs t5, vxsat, zero
	-[0x80000b84]:sw t6, 552(gp)
Current Store : [0x80000b88] : sw t5, 556(gp) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000b98]:KSLRAW t6, t5, t4
	-[0x80000b9c]:csrrs t5, vxsat, zero
	-[0x80000ba0]:sw t6, 560(gp)
Current Store : [0x80000ba4] : sw t5, 564(gp) -- Store: [0x80002534]:0x00000001




Last Coverpoint : ['opcode : kslraw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 33554432', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000bb0]:KSLRAW t6, t5, t4
	-[0x80000bb4]:csrrs t5, vxsat, zero
	-[0x80000bb8]:sw t6, 568(gp)
Current Store : [0x80000bbc] : sw t5, 572(gp) -- Store: [0x8000253c]:0x00000001





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

|s.no|        signature         |                                                                                        coverpoints                                                                                        |                                                       code                                                       |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kslraw<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val<br> - rs2_w0_val == 0<br> - rs1_w0_val == 0<br>                        |[0x8000011c]:KSLRAW zero, zero, zero<br> [0x80000120]:csrrs zero, vxsat, zero<br> [0x80000124]:sw zero, 0(t2)<br> |
|   2|[0x80002218]<br>0x02000000|- rs1 : x26<br> - rs2 : x26<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 33554432<br> - rs1_w0_val == 33554432<br>                     |[0x80000134]:KSLRAW t0, s10, s10<br> [0x80000138]:csrrs s10, vxsat, zero<br> [0x8000013c]:sw t0, 8(t2)<br>        |
|   3|[0x80002220]<br>0xFFFFFFFA|- rs1 : x5<br> - rs2 : x10<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w0_val == 128<br> |[0x8000014c]:KSLRAW s5, t0, a0<br> [0x80000150]:csrrs t0, vxsat, zero<br> [0x80000154]:sw s5, 16(t2)<br>          |
|   4|[0x80002228]<br>0x00020000|- rs1 : x30<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w0_val == -3<br> - rs1_w0_val == 1048576<br>                           |[0x80000164]:KSLRAW s7, t5, s7<br> [0x80000168]:csrrs t5, vxsat, zero<br> [0x8000016c]:sw s7, 24(t2)<br>          |
|   5|[0x80002230]<br>0x00000000|- rs1 : x10<br> - rs2 : x17<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -2049<br>                    |[0x80000184]:KSLRAW a0, a0, a7<br> [0x80000188]:csrrs a0, vxsat, zero<br> [0x8000018c]:sw a0, 32(t2)<br>          |
|   6|[0x80002238]<br>0xF7E00000|- rs1 : x14<br> - rs2 : x1<br> - rd : x17<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == -65<br>                                                                                       |[0x800001a0]:KSLRAW a7, a4, ra<br> [0x800001a4]:csrrs a4, vxsat, zero<br> [0x800001a8]:sw a7, 40(t2)<br>          |
|   7|[0x80002240]<br>0x00400000|- rs1 : x2<br> - rs2 : x27<br> - rd : x31<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 8388608<br>                                                                                   |[0x800001bc]:KSLRAW t6, sp, s11<br> [0x800001c0]:csrrs sp, vxsat, zero<br> [0x800001c4]:sw t6, 48(t2)<br>         |
|   8|[0x80002248]<br>0x00004000|- rs1 : x4<br> - rs2 : x13<br> - rd : x19<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 32768<br>                                                                                    |[0x800001d8]:KSLRAW s3, tp, a3<br> [0x800001dc]:csrrs tp, vxsat, zero<br> [0x800001e0]:sw s3, 56(t2)<br>          |
|   9|[0x80002250]<br>0x00008000|- rs1 : x15<br> - rs2 : x30<br> - rd : x16<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 65536<br>                                                                                    |[0x800001f4]:KSLRAW a6, a5, t5<br> [0x800001f8]:csrrs a5, vxsat, zero<br> [0x800001fc]:sw a6, 64(t2)<br>          |
|  10|[0x80002258]<br>0x00000200|- rs1 : x19<br> - rs2 : x12<br> - rd : x24<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 1024<br>                                                                                     |[0x80000210]:KSLRAW s8, s3, a2<br> [0x80000214]:csrrs s3, vxsat, zero<br> [0x80000218]:sw s8, 72(t2)<br>          |
|  11|[0x80002260]<br>0x00400000|- rs1 : x9<br> - rs2 : x6<br> - rd : x8<br> - rs2_w0_val == -67108865<br>                                                                                                                  |[0x8000022c]:KSLRAW fp, s1, t1<br> [0x80000230]:csrrs s1, vxsat, zero<br> [0x80000234]:sw fp, 80(t2)<br>          |
|  12|[0x80002268]<br>0xFFFEFFFF|- rs1 : x29<br> - rs2 : x31<br> - rd : x15<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -131073<br>                                                                                   |[0x8000024c]:KSLRAW a5, t4, t6<br> [0x80000250]:csrrs t4, vxsat, zero<br> [0x80000254]:sw a5, 88(t2)<br>          |
|  13|[0x80002270]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x9<br> - rd : x25<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == -2<br>                                                                                         |[0x80000268]:KSLRAW s9, s4, s1<br> [0x8000026c]:csrrs s4, vxsat, zero<br> [0x80000270]:sw s9, 96(t2)<br>          |
|  14|[0x80002278]<br>0xFFFF7FFF|- rs1 : x8<br> - rs2 : x4<br> - rd : x20<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -65537<br>                                                                                       |[0x80000288]:KSLRAW s4, fp, tp<br> [0x8000028c]:csrrs fp, vxsat, zero<br> [0x80000290]:sw s4, 104(t2)<br>         |
|  15|[0x80002280]<br>0x00000004|- rs1 : x17<br> - rs2 : x18<br> - rd : x12<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 8<br>                                                                                          |[0x800002a4]:KSLRAW a2, a7, s2<br> [0x800002a8]:csrrs a7, vxsat, zero<br> [0x800002ac]:sw a2, 112(t2)<br>         |
|  16|[0x80002288]<br>0xD5555555|- rs1 : x3<br> - rs2 : x16<br> - rd : x18<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -1431655766<br>                                                                                 |[0x800002c4]:KSLRAW s2, gp, a6<br> [0x800002c8]:csrrs gp, vxsat, zero<br> [0x800002cc]:sw s2, 120(t2)<br>         |
|  17|[0x80002290]<br>0x10000000|- rs1 : x21<br> - rs2 : x11<br> - rd : x13<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 536870912<br>                                                                                  |[0x800002e8]:KSLRAW a3, s5, a1<br> [0x800002ec]:csrrs s5, vxsat, zero<br> [0x800002f0]:sw a3, 0(a0)<br>           |
|  18|[0x80002298]<br>0x00000002|- rs1 : x24<br> - rs2 : x21<br> - rd : x29<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 4<br>                                                                                           |[0x80000304]:KSLRAW t4, s8, s5<br> [0x80000308]:csrrs s8, vxsat, zero<br> [0x8000030c]:sw t4, 8(a0)<br>           |
|  19|[0x800022a0]<br>0xFFFFFFFC|- rs1 : x25<br> - rs2 : x20<br> - rd : x22<br> - rs2_w0_val == -262145<br>                                                                                                                 |[0x80000320]:KSLRAW s6, s9, s4<br> [0x80000324]:csrrs s9, vxsat, zero<br> [0x80000328]:sw s6, 16(a0)<br>          |
|  20|[0x800022a8]<br>0x00100000|- rs1 : x18<br> - rs2 : x8<br> - rd : x4<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 2097152<br>                                                                                       |[0x8000033c]:KSLRAW tp, s2, fp<br> [0x80000340]:csrrs s2, vxsat, zero<br> [0x80000344]:sw tp, 24(a0)<br>          |
|  21|[0x800022b0]<br>0x08000000|- rs1 : x6<br> - rs2 : x24<br> - rd : x30<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 268435456<br>                                                                                     |[0x80000358]:KSLRAW t5, t1, s8<br> [0x8000035c]:csrrs t1, vxsat, zero<br> [0x80000360]:sw t5, 32(a0)<br>          |
|  22|[0x800022b8]<br>0x00000002|- rs1 : x13<br> - rs2 : x7<br> - rd : x6<br> - rs2_w0_val == -32769<br>                                                                                                                    |[0x80000374]:KSLRAW t1, a3, t2<br> [0x80000378]:csrrs a3, vxsat, zero<br> [0x8000037c]:sw t1, 40(a0)<br>          |
|  23|[0x800022c0]<br>0x00004000|- rs1 : x23<br> - rs2 : x5<br> - rd : x7<br> - rs2_w0_val == -16385<br>                                                                                                                    |[0x80000390]:KSLRAW t2, s7, t0<br> [0x80000394]:csrrs s7, vxsat, zero<br> [0x80000398]:sw t2, 48(a0)<br>          |
|  24|[0x800022c8]<br>0xFFFFFFFC|- rs1 : x27<br> - rs2 : x25<br> - rd : x14<br> - rs2_w0_val == -8193<br>                                                                                                                   |[0x800003ac]:KSLRAW a4, s11, s9<br> [0x800003b0]:csrrs s11, vxsat, zero<br> [0x800003b4]:sw a4, 56(a0)<br>        |
|  25|[0x800022d0]<br>0xFFFFFFFE|- rs1 : x22<br> - rs2 : x14<br> - rd : x1<br> - rs2_w0_val == -4097<br>                                                                                                                    |[0x800003c8]:KSLRAW ra, s6, a4<br> [0x800003cc]:csrrs s6, vxsat, zero<br> [0x800003d0]:sw ra, 64(a0)<br>          |
|  26|[0x800022d8]<br>0xFFFFFFFE|- rs1 : x12<br> - rs2 : x15<br> - rd : x3<br> - rs2_w0_val == -2049<br>                                                                                                                    |[0x800003e4]:KSLRAW gp, a2, a5<br> [0x800003e8]:csrrs a2, vxsat, zero<br> [0x800003ec]:sw gp, 72(a0)<br>          |
|  27|[0x800022e0]<br>0xFFFFDFFF|- rs1 : x7<br> - rs2 : x29<br> - rd : x9<br> - rs2_w0_val == -1025<br> - rs1_w0_val == -16385<br>                                                                                          |[0x80000400]:KSLRAW s1, t2, t4<br> [0x80000404]:csrrs t2, vxsat, zero<br> [0x80000408]:sw s1, 80(a0)<br>          |
|  28|[0x800022e8]<br>0x00000004|- rs1 : x11<br> - rs2 : x22<br> - rd : x26<br> - rs2_w0_val == -513<br>                                                                                                                    |[0x80000418]:KSLRAW s10, a1, s6<br> [0x8000041c]:csrrs a1, vxsat, zero<br> [0x80000420]:sw s10, 88(a0)<br>        |
|  29|[0x800022f0]<br>0xF7FFFFFF|- rs1 : x1<br> - rs2 : x3<br> - rd : x2<br> - rs2_w0_val == -257<br> - rs1_w0_val == -268435457<br>                                                                                        |[0x80000434]:KSLRAW sp, ra, gp<br> [0x80000438]:csrrs ra, vxsat, zero<br> [0x8000043c]:sw sp, 96(a0)<br>          |
|  30|[0x800022f8]<br>0x00000008|- rs1 : x31<br> - rs2 : x19<br> - rd : x27<br> - rs2_w0_val == -129<br> - rs1_w0_val == 16<br>                                                                                             |[0x8000044c]:KSLRAW s11, t6, s3<br> [0x80000450]:csrrs t6, vxsat, zero<br> [0x80000454]:sw s11, 104(a0)<br>       |
|  31|[0x80002300]<br>0x04000000|- rs1 : x16<br> - rs2 : x2<br> - rd : x11<br> - rs2_w0_val == -65<br> - rs1_w0_val == 134217728<br>                                                                                        |[0x8000046c]:KSLRAW a1, a6, sp<br> [0x80000470]:csrrs a6, vxsat, zero<br> [0x80000474]:sw a1, 0(gp)<br>           |
|  32|[0x80002308]<br>0x80000000|- rs1 : x28<br> - rs2_w0_val == -33<br>                                                                                                                                                    |[0x80000484]:KSLRAW a2, t3, s7<br> [0x80000488]:csrrs t3, vxsat, zero<br> [0x8000048c]:sw a2, 8(gp)<br>           |
|  33|[0x80002310]<br>0xFFFFFFFF|- rs2 : x28<br> - rs2_w0_val == -17<br>                                                                                                                                                    |[0x800004a0]:KSLRAW ra, t0, t3<br> [0x800004a4]:csrrs t0, vxsat, zero<br> [0x800004a8]:sw ra, 16(gp)<br>          |
|  34|[0x80002318]<br>0x00100000|- rd : x28<br> - rs2_w0_val == -9<br>                                                                                                                                                      |[0x800004b8]:KSLRAW t3, a0, ra<br> [0x800004bc]:csrrs a0, vxsat, zero<br> [0x800004c0]:sw t3, 24(gp)<br>          |
|  35|[0x80002320]<br>0xFFFFFFFB|- rs2_w0_val == -5<br> - rs1_w0_val == -129<br>                                                                                                                                            |[0x800004d0]:KSLRAW t6, t5, t4<br> [0x800004d4]:csrrs t5, vxsat, zero<br> [0x800004d8]:sw t6, 32(gp)<br>          |
|  36|[0x80002328]<br>0xFDFFFFFF|- rs2_w0_val == -2<br> - rs1_w0_val == -134217729<br>                                                                                                                                      |[0x800004ec]:KSLRAW t6, t5, t4<br> [0x800004f0]:csrrs t5, vxsat, zero<br> [0x800004f4]:sw t6, 40(gp)<br>          |
|  37|[0x80002330]<br>0xFFFFFFFC|- rs2_w0_val == -2147483648<br>                                                                                                                                                            |[0x80000504]:KSLRAW t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 48(gp)<br>          |
|  38|[0x80002338]<br>0x01000000|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 16777216<br>                                                                                                                                |[0x8000051c]:KSLRAW t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 56(gp)<br>          |
|  39|[0x80002340]<br>0xFFFFEFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == -4097<br>                                                                                                                                    |[0x80000538]:KSLRAW t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 64(gp)<br>          |
|  40|[0x80002348]<br>0xAAAAAAAA|- rs2_w0_val == 268435456<br>                                                                                                                                                              |[0x80000554]:KSLRAW t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 72(gp)<br>          |
|  41|[0x80002350]<br>0xFFFF7FFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == -32769<br>                                                                                                                                   |[0x80000570]:KSLRAW t6, t5, t4<br> [0x80000574]:csrrs t5, vxsat, zero<br> [0x80000578]:sw t6, 80(gp)<br>          |
|  42|[0x80002358]<br>0x02000000|- rs2_w0_val == 67108864<br>                                                                                                                                                               |[0x80000588]:KSLRAW t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 88(gp)<br>          |
|  43|[0x80002360]<br>0x40000000|- rs2_w0_val == 16777216<br> - rs1_w0_val == 1073741824<br>                                                                                                                                |[0x800005a0]:KSLRAW t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 96(gp)<br>          |
|  44|[0x80002368]<br>0x3FFFFFFF|- rs2_w0_val == 8388608<br>                                                                                                                                                                |[0x800005bc]:KSLRAW t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 104(gp)<br>         |
|  45|[0x80002370]<br>0x00000010|- rs2_w0_val == 4194304<br>                                                                                                                                                                |[0x800005d4]:KSLRAW t6, t5, t4<br> [0x800005d8]:csrrs t5, vxsat, zero<br> [0x800005dc]:sw t6, 112(gp)<br>         |
|  46|[0x80002378]<br>0x00000400|- rs1_w0_val == 2048<br>                                                                                                                                                                   |[0x800005f4]:KSLRAW t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 120(gp)<br>         |
|  47|[0x80002380]<br>0x00020000|- rs2_w0_val == 8<br> - rs1_w0_val == 512<br>                                                                                                                                              |[0x8000060c]:KSLRAW t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 128(gp)<br>         |
|  48|[0x80002388]<br>0x00000080|- rs2_w0_val == -1<br> - rs1_w0_val == 256<br>                                                                                                                                             |[0x80000624]:KSLRAW t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 136(gp)<br>         |
|  49|[0x80002390]<br>0x00000000|- rs1_w0_val == 128<br>                                                                                                                                                                    |[0x8000063c]:KSLRAW t6, t5, t4<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 144(gp)<br>         |
|  50|[0x80002398]<br>0x00000020|- rs1_w0_val == 64<br>                                                                                                                                                                     |[0x80000658]:KSLRAW t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 152(gp)<br>         |
|  51|[0x800023a0]<br>0x00000800|- rs1_w0_val == 32<br>                                                                                                                                                                     |[0x80000670]:KSLRAW t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 160(gp)<br>         |
|  52|[0x800023a8]<br>0x00000001|- rs1_w0_val == 2<br>                                                                                                                                                                      |[0x8000068c]:KSLRAW t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 168(gp)<br>         |
|  53|[0x800023b0]<br>0x00000001|- rs2_w0_val == 16384<br> - rs1_w0_val == 1<br>                                                                                                                                            |[0x800006a4]:KSLRAW t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 176(gp)<br>         |
|  54|[0x800023c0]<br>0xFFFFFFFF|- rs1_w0_val == -1<br>                                                                                                                                                                     |[0x800006d8]:KSLRAW t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 192(gp)<br>         |
|  55|[0x800023c8]<br>0x40000000|- rs2_w0_val == 2097152<br>                                                                                                                                                                |[0x800006f0]:KSLRAW t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 200(gp)<br>         |
|  56|[0x800023d0]<br>0x00000400|- rs2_w0_val == 1048576<br>                                                                                                                                                                |[0x80000708]:KSLRAW t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 208(gp)<br>         |
|  57|[0x800023d8]<br>0x00000008|- rs2_w0_val == 524288<br>                                                                                                                                                                 |[0x80000720]:KSLRAW t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 216(gp)<br>         |
|  58|[0x800023e0]<br>0x00002000|- rs2_w0_val == 262144<br> - rs1_w0_val == 8192<br>                                                                                                                                        |[0x80000738]:KSLRAW t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 224(gp)<br>         |
|  59|[0x800023e8]<br>0x00000100|- rs2_w0_val == 131072<br>                                                                                                                                                                 |[0x80000750]:KSLRAW t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 232(gp)<br>         |
|  60|[0x800023f0]<br>0xFFFFBFFF|- rs2_w0_val == 65536<br>                                                                                                                                                                  |[0x8000076c]:KSLRAW t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 240(gp)<br>         |
|  61|[0x800023f8]<br>0x00000400|- rs2_w0_val == 32768<br>                                                                                                                                                                  |[0x80000784]:KSLRAW t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 248(gp)<br>         |
|  62|[0x80002400]<br>0xFFFFFFBF|- rs2_w0_val == 8192<br>                                                                                                                                                                   |[0x8000079c]:KSLRAW t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 256(gp)<br>         |
|  63|[0x80002408]<br>0xEFFFFFFF|- rs2_w0_val == 4096<br>                                                                                                                                                                   |[0x800007b8]:KSLRAW t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 264(gp)<br>         |
|  64|[0x80002410]<br>0xFF7FFFFF|- rs2_w0_val == 2048<br> - rs1_w0_val == -8388609<br>                                                                                                                                      |[0x800007d8]:KSLRAW t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 272(gp)<br>         |
|  65|[0x80002418]<br>0x55555555|- rs2_w0_val == 1024<br> - rs1_w0_val == 1431655765<br>                                                                                                                                    |[0x800007f4]:KSLRAW t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 280(gp)<br>         |
|  66|[0x80002420]<br>0xFFFFFBFF|- rs2_w0_val == 512<br> - rs1_w0_val == -1025<br>                                                                                                                                          |[0x8000080c]:KSLRAW t6, t5, t4<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sw t6, 288(gp)<br>         |
|  67|[0x80002428]<br>0x00000001|- rs2_w0_val == 256<br>                                                                                                                                                                    |[0x80000824]:KSLRAW t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 296(gp)<br>         |
|  68|[0x80002430]<br>0xFFFFEFFF|- rs2_w0_val == 64<br>                                                                                                                                                                     |[0x80000840]:KSLRAW t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 304(gp)<br>         |
|  69|[0x80002438]<br>0xFFFFFFFF|- rs2_w0_val == 32<br> - rs1_w0_val == -1048577<br>                                                                                                                                        |[0x8000085c]:KSLRAW t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 312(gp)<br>         |
|  70|[0x80002440]<br>0x7FFFFFFF|- rs2_w0_val == 16<br>                                                                                                                                                                     |[0x80000874]:KSLRAW t6, t5, t4<br> [0x80000878]:csrrs t5, vxsat, zero<br> [0x8000087c]:sw t6, 320(gp)<br>         |
|  71|[0x80002448]<br>0xFFFBFFF0|- rs2_w0_val == 4<br>                                                                                                                                                                      |[0x80000890]:KSLRAW t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 328(gp)<br>         |
|  72|[0x80002450]<br>0x00000040|- rs2_w0_val == 2<br>                                                                                                                                                                      |[0x800008a8]:KSLRAW t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 336(gp)<br>         |
|  73|[0x80002458]<br>0x00004000|- rs2_w0_val == 1<br>                                                                                                                                                                      |[0x800008c0]:KSLRAW t6, t5, t4<br> [0x800008c4]:csrrs t5, vxsat, zero<br> [0x800008c8]:sw t6, 344(gp)<br>         |
|  74|[0x80002468]<br>0x7FFFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                                                             |[0x800008f4]:KSLRAW t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 360(gp)<br>         |
|  75|[0x80002470]<br>0xBFFFFFFF|- rs1_w0_val == -1073741825<br>                                                                                                                                                            |[0x80000910]:KSLRAW t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 368(gp)<br>         |
|  76|[0x80002478]<br>0xDFFFFFFF|- rs1_w0_val == -536870913<br>                                                                                                                                                             |[0x8000092c]:KSLRAW t6, t5, t4<br> [0x80000930]:csrrs t5, vxsat, zero<br> [0x80000934]:sw t6, 376(gp)<br>         |
|  77|[0x80002480]<br>0xFBFFFFFF|- rs1_w0_val == -67108865<br>                                                                                                                                                              |[0x80000948]:KSLRAW t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 384(gp)<br>         |
|  78|[0x80002488]<br>0xFF7FFFFF|- rs1_w0_val == -33554433<br>                                                                                                                                                              |[0x80000964]:KSLRAW t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 392(gp)<br>         |
|  79|[0x80002490]<br>0xFF7FFFFF|- rs1_w0_val == -16777217<br>                                                                                                                                                              |[0x80000984]:KSLRAW t6, t5, t4<br> [0x80000988]:csrrs t5, vxsat, zero<br> [0x8000098c]:sw t6, 400(gp)<br>         |
|  80|[0x80002498]<br>0xEFFFFFC0|- rs1_w0_val == -4194305<br>                                                                                                                                                               |[0x800009a0]:KSLRAW t6, t5, t4<br> [0x800009a4]:csrrs t5, vxsat, zero<br> [0x800009a8]:sw t6, 408(gp)<br>         |
|  81|[0x800024a0]<br>0xFFEFFFFF|- rs1_w0_val == -2097153<br>                                                                                                                                                               |[0x800009c0]:KSLRAW t6, t5, t4<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sw t6, 416(gp)<br>         |
|  82|[0x800024a8]<br>0xFFF7FFFF|- rs1_w0_val == -524289<br>                                                                                                                                                                |[0x800009dc]:KSLRAW t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 424(gp)<br>         |
|  83|[0x800024b0]<br>0xFFFBFFFF|- rs1_w0_val == -262145<br>                                                                                                                                                                |[0x800009f8]:KSLRAW t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 432(gp)<br>         |
|  84|[0x800024b8]<br>0xFFFFFDFF|- rs1_w0_val == -513<br>                                                                                                                                                                   |[0x80000a10]:KSLRAW t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 440(gp)<br>         |
|  85|[0x800024c0]<br>0xFFFFFDFE|- rs1_w0_val == -257<br>                                                                                                                                                                   |[0x80000a28]:KSLRAW t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 448(gp)<br>         |
|  86|[0x800024c8]<br>0xFFFFFFEF|- rs1_w0_val == -33<br>                                                                                                                                                                    |[0x80000a44]:KSLRAW t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 456(gp)<br>         |
|  87|[0x800024d0]<br>0xFFFFFFEF|- rs1_w0_val == -17<br>                                                                                                                                                                    |[0x80000a5c]:KSLRAW t6, t5, t4<br> [0x80000a60]:csrrs t5, vxsat, zero<br> [0x80000a64]:sw t6, 464(gp)<br>         |
|  88|[0x800024d8]<br>0xFFFFFFF7|- rs1_w0_val == -9<br>                                                                                                                                                                     |[0x80000a74]:KSLRAW t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 472(gp)<br>         |
|  89|[0x800024e0]<br>0xFFFFFEC0|- rs1_w0_val == -5<br>                                                                                                                                                                     |[0x80000a8c]:KSLRAW t6, t5, t4<br> [0x80000a90]:csrrs t5, vxsat, zero<br> [0x80000a94]:sw t6, 480(gp)<br>         |
|  90|[0x800024e8]<br>0xFFFFFFFE|- rs1_w0_val == -3<br>                                                                                                                                                                     |[0x80000aa8]:KSLRAW t6, t5, t4<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sw t6, 488(gp)<br>         |
|  91|[0x800024f0]<br>0x02000000|- rs1_w0_val == 67108864<br>                                                                                                                                                               |[0x80000ac4]:KSLRAW t6, t5, t4<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sw t6, 496(gp)<br>         |
|  92|[0x800024f8]<br>0x00400000|- rs1_w0_val == 4194304<br>                                                                                                                                                                |[0x80000adc]:KSLRAW t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 504(gp)<br>         |
|  93|[0x80002500]<br>0x00080000|- rs1_w0_val == 524288<br>                                                                                                                                                                 |[0x80000af4]:KSLRAW t6, t5, t4<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sw t6, 512(gp)<br>         |
|  94|[0x80002508]<br>0x00200000|- rs1_w0_val == 262144<br>                                                                                                                                                                 |[0x80000b0c]:KSLRAW t6, t5, t4<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sw t6, 520(gp)<br>         |
|  95|[0x80002510]<br>0x00010000|- rs2_w0_val == -134217729<br> - rs1_w0_val == 131072<br>                                                                                                                                  |[0x80000b28]:KSLRAW t6, t5, t4<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sw t6, 528(gp)<br>         |
|  96|[0x80002518]<br>0x00001000|- rs1_w0_val == 4096<br>                                                                                                                                                                   |[0x80000b44]:KSLRAW t6, t5, t4<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sw t6, 536(gp)<br>         |
|  97|[0x80002520]<br>0x00002000|- rs1_w0_val == 16384<br>                                                                                                                                                                  |[0x80000b60]:KSLRAW t6, t5, t4<br> [0x80000b64]:csrrs t5, vxsat, zero<br> [0x80000b68]:sw t6, 544(gp)<br>         |
|  98|[0x80002528]<br>0xFFFDFFF0|- rs1_w0_val == -8193<br>                                                                                                                                                                  |[0x80000b7c]:KSLRAW t6, t5, t4<br> [0x80000b80]:csrrs t5, vxsat, zero<br> [0x80000b84]:sw t6, 552(gp)<br>         |
|  99|[0x80002530]<br>0xC0000000|- rs1_w0_val == -2147483648<br>                                                                                                                                                            |[0x80000b98]:KSLRAW t6, t5, t4<br> [0x80000b9c]:csrrs t5, vxsat, zero<br> [0x80000ba0]:sw t6, 560(gp)<br>         |
