
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000bb0')]      |
| SIG_REGION                | [('0x80002210', '0x80002540', '204 words')]      |
| COV_LABELS                | kaddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kaddw-01.S    |
| Total Number of coverpoints| 250     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 202      |
| STAT1                     | 98      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 101     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c4]:KADDW t6, t5, t4
      [0x800006c8]:csrrs t5, vxsat, zero
      [0x800006cc]:sw t6, 160(ra)
 -- Signature Address: 0x800023b8 Data: 0xFFFFFDFF
 -- Redundant Coverpoints hit by the op
      - opcode : kaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == -513
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b8]:KADDW t6, t5, t4
      [0x800008bc]:csrrs t5, vxsat, zero
      [0x800008c0]:sw t6, 320(ra)
 -- Signature Address: 0x80002458 Data: 0xFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : kaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 0
      - rs1_w0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b94]:KADDW t6, t5, t4
      [0x80000b98]:csrrs t5, vxsat, zero
      [0x80000b9c]:sw t6, 536(ra)
 -- Signature Address: 0x80002530 Data: 0xFFFFEFFE
 -- Redundant Coverpoints hit by the op
      - opcode : kaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w0_val == -2049
      - rs1_w0_val == -2049






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kaddw', 'rs1 : x0', 'rs2 : x0', 'rd : x0', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000011c]:KADDW zero, zero, zero
	-[0x80000120]:csrrs zero, vxsat, zero
	-[0x80000124]:sw zero, 0(t0)
Current Store : [0x80000128] : sw zero, 4(t0) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x7', 'rd : x21', 'rs1 == rs2 != rd', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -2049', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x8000013c]:KADDW s5, t2, t2
	-[0x80000140]:csrrs t2, vxsat, zero
	-[0x80000144]:sw s5, 8(t0)
Current Store : [0x80000148] : sw t2, 12(t0) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x15', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x80000154]:KADDW a5, t6, sp
	-[0x80000158]:csrrs t6, vxsat, zero
	-[0x8000015c]:sw a5, 16(t0)
Current Store : [0x80000160] : sw t6, 20(t0) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000016c]:KADDW s10, s9, s10
	-[0x80000170]:csrrs s9, vxsat, zero
	-[0x80000174]:sw s10, 24(t0)
Current Store : [0x80000178] : sw s9, 28(t0) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x28', 'rs1 == rd != rs2', 'rs2_w0_val == -1431655766', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000188]:KADDW t3, t3, t1
	-[0x8000018c]:csrrs t3, vxsat, zero
	-[0x80000190]:sw t3, 32(t0)
Current Store : [0x80000194] : sw t3, 36(t0) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x16', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800001a4]:KADDW a6, a7, s11
	-[0x800001a8]:csrrs a7, vxsat, zero
	-[0x800001ac]:sw a6, 40(t0)
Current Store : [0x800001b0] : sw a7, 44(t0) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x18', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 2147483647', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800001c4]:KADDW s2, t1, s6
	-[0x800001c8]:csrrs t1, vxsat, zero
	-[0x800001cc]:sw s2, 48(t0)
Current Store : [0x800001d0] : sw t1, 52(t0) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x12', 'rd : x30', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800001e0]:KADDW t5, s11, a2
	-[0x800001e4]:csrrs s11, vxsat, zero
	-[0x800001e8]:sw t5, 56(t0)
Current Store : [0x800001ec] : sw s11, 60(t0) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x15', 'rd : x13', 'rs2_w0_val == -536870913', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800001fc]:KADDW a3, a4, a5
	-[0x80000200]:csrrs a4, vxsat, zero
	-[0x80000204]:sw a3, 64(t0)
Current Store : [0x80000208] : sw a4, 68(t0) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x23', 'rs2_w0_val == -268435457', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000218]:KADDW s7, s3, a6
	-[0x8000021c]:csrrs s3, vxsat, zero
	-[0x80000220]:sw s7, 72(t0)
Current Store : [0x80000224] : sw s3, 76(t0) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x14', 'rs2_w0_val == -134217729', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000234]:KADDW a4, t4, ra
	-[0x80000238]:csrrs t4, vxsat, zero
	-[0x8000023c]:sw a4, 80(t0)
Current Store : [0x80000240] : sw t4, 84(t0) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x19', 'rs2_w0_val == -67108865', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000254]:KADDW s3, s6, s2
	-[0x80000258]:csrrs s6, vxsat, zero
	-[0x8000025c]:sw s3, 88(t0)
Current Store : [0x80000260] : sw s6, 92(t0) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x23', 'rd : x7', 'rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000270]:KADDW t2, s5, s7
	-[0x80000274]:csrrs s5, vxsat, zero
	-[0x80000278]:sw t2, 96(t0)
Current Store : [0x8000027c] : sw s5, 100(t0) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x17', 'rs2_w0_val == -16777217', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000028c]:KADDW a7, a0, t6
	-[0x80000290]:csrrs a0, vxsat, zero
	-[0x80000294]:sw a7, 104(t0)
Current Store : [0x80000298] : sw a0, 108(t0) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x24', 'rs2_w0_val == -8388609', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800002ac]:KADDW s8, a6, gp
	-[0x800002b0]:csrrs a6, vxsat, zero
	-[0x800002b4]:sw s8, 112(t0)
Current Store : [0x800002b8] : sw a6, 116(t0) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x20', 'rd : x27', 'rs2_w0_val == -4194305', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800002c8]:KADDW s11, a3, s4
	-[0x800002cc]:csrrs a3, vxsat, zero
	-[0x800002d0]:sw s11, 120(t0)
Current Store : [0x800002d4] : sw a3, 124(t0) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x4', 'rd : x31', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x800002e4]:KADDW t6, s10, tp
	-[0x800002e8]:csrrs s10, vxsat, zero
	-[0x800002ec]:sw t6, 128(t0)
Current Store : [0x800002f0] : sw s10, 132(t0) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x2', 'rs2_w0_val == -1048577', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x8000030c]:KADDW sp, fp, s5
	-[0x80000310]:csrrs fp, vxsat, zero
	-[0x80000314]:sw sp, 0(t2)
Current Store : [0x80000318] : sw fp, 4(t2) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x11', 'rd : x9', 'rs2_w0_val == -524289', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000032c]:KADDW s1, gp, a1
	-[0x80000330]:csrrs gp, vxsat, zero
	-[0x80000334]:sw s1, 8(t2)
Current Store : [0x80000338] : sw gp, 12(t2) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x1', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80000348]:KADDW ra, tp, t0
	-[0x8000034c]:csrrs tp, vxsat, zero
	-[0x80000350]:sw ra, 16(t2)
Current Store : [0x80000354] : sw tp, 20(t2) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rd : x11', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000364]:KADDW a1, s4, fp
	-[0x80000368]:csrrs s4, vxsat, zero
	-[0x8000036c]:sw a1, 24(t2)
Current Store : [0x80000370] : sw s4, 28(t2) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x25', 'rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80000380]:KADDW s9, a5, a4
	-[0x80000384]:csrrs a5, vxsat, zero
	-[0x80000388]:sw s9, 32(t2)
Current Store : [0x8000038c] : sw a5, 36(t2) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x5', 'rs2_w0_val == -32769', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800003a0]:KADDW t0, s1, a0
	-[0x800003a4]:csrrs s1, vxsat, zero
	-[0x800003a8]:sw t0, 40(t2)
Current Store : [0x800003ac] : sw s1, 44(t2) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x8', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x800003bc]:KADDW fp, t0, a3
	-[0x800003c0]:csrrs t0, vxsat, zero
	-[0x800003c4]:sw fp, 48(t2)
Current Store : [0x800003c8] : sw t0, 52(t2) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x12', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x800003d8]:KADDW a2, s7, t3
	-[0x800003dc]:csrrs s7, vxsat, zero
	-[0x800003e0]:sw a2, 56(t2)
Current Store : [0x800003e4] : sw s7, 60(t2) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x29', 'rd : x6', 'rs2_w0_val == -4097', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800003f4]:KADDW t1, sp, t4
	-[0x800003f8]:csrrs sp, vxsat, zero
	-[0x800003fc]:sw t1, 64(t2)
Current Store : [0x80000400] : sw sp, 68(t2) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x19', 'rd : x20', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x8000040c]:KADDW s4, ra, s3
	-[0x80000410]:csrrs ra, vxsat, zero
	-[0x80000414]:sw s4, 72(t2)
Current Store : [0x80000418] : sw ra, 76(t2) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x25', 'rd : x4', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80000428]:KADDW tp, t5, s9
	-[0x8000042c]:csrrs t5, vxsat, zero
	-[0x80000430]:sw tp, 80(t2)
Current Store : [0x80000434] : sw t5, 84(t2) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x24', 'rd : x22', 'rs2_w0_val == -257', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000444]:KADDW s6, a1, s8
	-[0x80000448]:csrrs a1, vxsat, zero
	-[0x8000044c]:sw s6, 88(t2)
Current Store : [0x80000450] : sw a1, 92(t2) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x9', 'rd : x29', 'rs2_w0_val == -129', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x8000045c]:KADDW t4, s8, s1
	-[0x80000460]:csrrs s8, vxsat, zero
	-[0x80000464]:sw t4, 96(t2)
Current Store : [0x80000468] : sw s8, 100(t2) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x17', 'rd : x10', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000478]:KADDW a0, a2, a7
	-[0x8000047c]:csrrs a2, vxsat, zero
	-[0x80000480]:sw a0, 104(t2)
Current Store : [0x80000484] : sw a2, 108(t2) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rd : x3', 'rs2_w0_val == -33', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000490]:KADDW gp, s2, t5
	-[0x80000494]:csrrs s2, vxsat, zero
	-[0x80000498]:sw gp, 112(t2)
Current Store : [0x8000049c] : sw s2, 116(t2) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800004a8]:KADDW t6, t5, t4
	-[0x800004ac]:csrrs t5, vxsat, zero
	-[0x800004b0]:sw t6, 120(t2)
Current Store : [0x800004b4] : sw t5, 124(t2) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800004c8]:KADDW t6, t5, t4
	-[0x800004cc]:csrrs t5, vxsat, zero
	-[0x800004d0]:sw t6, 0(ra)
Current Store : [0x800004d4] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800004e4]:KADDW t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 8(ra)
Current Store : [0x800004f0] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800004fc]:KADDW t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 16(ra)
Current Store : [0x80000508] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000514]:KADDW t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 24(ra)
Current Store : [0x80000520] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000052c]:KADDW t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 32(ra)
Current Store : [0x80000538] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000548]:KADDW t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 40(ra)
Current Store : [0x80000554] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000560]:KADDW t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 48(ra)
Current Store : [0x8000056c] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000578]:KADDW t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 56(ra)
Current Store : [0x80000584] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000594]:KADDW t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 64(ra)
Current Store : [0x800005a0] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800005ac]:KADDW t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 72(ra)
Current Store : [0x800005b8] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800005c8]:KADDW t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 80(ra)
Current Store : [0x800005d4] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005e0]:KADDW t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 88(ra)
Current Store : [0x800005ec] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005f8]:KADDW t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 96(ra)
Current Store : [0x80000604] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000614]:KADDW t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 104(ra)
Current Store : [0x80000620] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000062c]:KADDW t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 112(ra)
Current Store : [0x80000638] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000648]:KADDW t6, t5, t4
	-[0x8000064c]:csrrs t5, vxsat, zero
	-[0x80000650]:sw t6, 120(ra)
Current Store : [0x80000654] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000660]:KADDW t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 128(ra)
Current Store : [0x8000066c] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000067c]:KADDW t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 136(ra)
Current Store : [0x80000688] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000694]:KADDW t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 144(ra)
Current Store : [0x800006a0] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006ac]:KADDW t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 152(ra)
Current Store : [0x800006b8] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['opcode : kaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == -513', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800006c4]:KADDW t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 160(ra)
Current Store : [0x800006d0] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800006dc]:KADDW t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 168(ra)
Current Store : [0x800006e8] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800006f8]:KADDW t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 176(ra)
Current Store : [0x80000704] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000710]:KADDW t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 184(ra)
Current Store : [0x8000071c] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000728]:KADDW t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 192(ra)
Current Store : [0x80000734] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000740]:KADDW t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 200(ra)
Current Store : [0x8000074c] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000758]:KADDW t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 208(ra)
Current Store : [0x80000764] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000770]:KADDW t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 216(ra)
Current Store : [0x8000077c] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000788]:KADDW t6, t5, t4
	-[0x8000078c]:csrrs t5, vxsat, zero
	-[0x80000790]:sw t6, 224(ra)
Current Store : [0x80000794] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800007a0]:KADDW t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 232(ra)
Current Store : [0x800007ac] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800007bc]:KADDW t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 240(ra)
Current Store : [0x800007c8] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800007d8]:KADDW t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 248(ra)
Current Store : [0x800007e4] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800007f0]:KADDW t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 256(ra)
Current Store : [0x800007fc] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x8000080c]:KADDW t6, t5, t4
	-[0x80000810]:csrrs t5, vxsat, zero
	-[0x80000814]:sw t6, 264(ra)
Current Store : [0x80000818] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80000824]:KADDW t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 272(ra)
Current Store : [0x80000830] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x8000083c]:KADDW t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 280(ra)
Current Store : [0x80000848] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000854]:KADDW t6, t5, t4
	-[0x80000858]:csrrs t5, vxsat, zero
	-[0x8000085c]:sw t6, 288(ra)
Current Store : [0x80000860] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000870]:KADDW t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 296(ra)
Current Store : [0x8000087c] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000888]:KADDW t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 304(ra)
Current Store : [0x80000894] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800008a0]:KADDW t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 312(ra)
Current Store : [0x800008ac] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['opcode : kaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008b8]:KADDW t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 320(ra)
Current Store : [0x800008c4] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x800008d0]:KADDW t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 328(ra)
Current Store : [0x800008dc] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800008f0]:KADDW t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 336(ra)
Current Store : [0x800008fc] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000090c]:KADDW t6, t5, t4
	-[0x80000910]:csrrs t5, vxsat, zero
	-[0x80000914]:sw t6, 344(ra)
Current Store : [0x80000918] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000928]:KADDW t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 352(ra)
Current Store : [0x80000934] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000944]:KADDW t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 360(ra)
Current Store : [0x80000950] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000964]:KADDW t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 368(ra)
Current Store : [0x80000970] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000980]:KADDW t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 376(ra)
Current Store : [0x8000098c] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000099c]:KADDW t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 384(ra)
Current Store : [0x800009a8] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800009b8]:KADDW t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 392(ra)
Current Store : [0x800009c4] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800009d4]:KADDW t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 400(ra)
Current Store : [0x800009e0] : sw t5, 404(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800009f4]:KADDW t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 408(ra)
Current Store : [0x80000a00] : sw t5, 412(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000a10]:KADDW t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 416(ra)
Current Store : [0x80000a1c] : sw t5, 420(ra) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000a2c]:KADDW t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 424(ra)
Current Store : [0x80000a38] : sw t5, 428(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a48]:KADDW t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 432(ra)
Current Store : [0x80000a54] : sw t5, 436(ra) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000a64]:KADDW t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 440(ra)
Current Store : [0x80000a70] : sw t5, 444(ra) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a7c]:KADDW t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 448(ra)
Current Store : [0x80000a88] : sw t5, 452(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000a94]:KADDW t6, t5, t4
	-[0x80000a98]:csrrs t5, vxsat, zero
	-[0x80000a9c]:sw t6, 456(ra)
Current Store : [0x80000aa0] : sw t5, 460(ra) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000aac]:KADDW t6, t5, t4
	-[0x80000ab0]:csrrs t5, vxsat, zero
	-[0x80000ab4]:sw t6, 464(ra)
Current Store : [0x80000ab8] : sw t5, 468(ra) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000ac4]:KADDW t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 472(ra)
Current Store : [0x80000ad0] : sw t5, 476(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000ae0]:KADDW t6, t5, t4
	-[0x80000ae4]:csrrs t5, vxsat, zero
	-[0x80000ae8]:sw t6, 480(ra)
Current Store : [0x80000aec] : sw t5, 484(ra) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000af8]:KADDW t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 488(ra)
Current Store : [0x80000b04] : sw t5, 492(ra) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b10]:KADDW t6, t5, t4
	-[0x80000b14]:csrrs t5, vxsat, zero
	-[0x80000b18]:sw t6, 496(ra)
Current Store : [0x80000b1c] : sw t5, 500(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b2c]:KADDW t6, t5, t4
	-[0x80000b30]:csrrs t5, vxsat, zero
	-[0x80000b34]:sw t6, 504(ra)
Current Store : [0x80000b38] : sw t5, 508(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b44]:KADDW t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 512(ra)
Current Store : [0x80000b50] : sw t5, 516(ra) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000b5c]:KADDW t6, t5, t4
	-[0x80000b60]:csrrs t5, vxsat, zero
	-[0x80000b64]:sw t6, 520(ra)
Current Store : [0x80000b68] : sw t5, 524(ra) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b74]:KADDW t6, t5, t4
	-[0x80000b78]:csrrs t5, vxsat, zero
	-[0x80000b7c]:sw t6, 528(ra)
Current Store : [0x80000b80] : sw t5, 532(ra) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['opcode : kaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -2049', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000b94]:KADDW t6, t5, t4
	-[0x80000b98]:csrrs t5, vxsat, zero
	-[0x80000b9c]:sw t6, 536(ra)
Current Store : [0x80000ba0] : sw t5, 540(ra) -- Store: [0x80002534]:0x00000001





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

|s.no|        signature         |                                                                                        coverpoints                                                                                        |                                                      code                                                       |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kaddw<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val<br> - rs2_w0_val == 0<br> - rs1_w0_val == 0<br>                         |[0x8000011c]:KADDW zero, zero, zero<br> [0x80000120]:csrrs zero, vxsat, zero<br> [0x80000124]:sw zero, 0(t0)<br> |
|   2|[0x80002218]<br>0xFFFFEFFE|- rs1 : x7<br> - rs2 : x7<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -2049<br> - rs1_w0_val == -2049<br>                            |[0x8000013c]:KADDW s5, t2, t2<br> [0x80000140]:csrrs t2, vxsat, zero<br> [0x80000144]:sw s5, 8(t0)<br>           |
|   3|[0x80002220]<br>0xFFFFFFF2|- rs1 : x31<br> - rs2 : x2<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w0_val == -17<br> |[0x80000154]:KADDW a5, t6, sp<br> [0x80000158]:csrrs t6, vxsat, zero<br> [0x8000015c]:sw a5, 16(t0)<br>          |
|   4|[0x80002228]<br>0x00000025|- rs1 : x25<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 32<br>                                                       |[0x8000016c]:KADDW s10, s9, s10<br> [0x80000170]:csrrs s9, vxsat, zero<br> [0x80000174]:sw s10, 24(t0)<br>       |
|   5|[0x80002230]<br>0x00000000|- rs1 : x28<br> - rs2 : x6<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == 16777216<br>                                                          |[0x80000188]:KADDW t3, t3, t1<br> [0x8000018c]:csrrs t3, vxsat, zero<br> [0x80000190]:sw t3, 32(t0)<br>          |
|   6|[0x80002238]<br>0x55D55555|- rs1 : x17<br> - rs2 : x27<br> - rd : x16<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 8388608<br>                                                                                  |[0x800001a4]:KADDW a6, a7, s11<br> [0x800001a8]:csrrs a7, vxsat, zero<br> [0x800001ac]:sw a6, 40(t0)<br>         |
|   7|[0x80002240]<br>0x7FEFFFFE|- rs1 : x6<br> - rs2 : x22<br> - rd : x18<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -1048577<br>                                          |[0x800001c4]:KADDW s2, t1, s6<br> [0x800001c8]:csrrs t1, vxsat, zero<br> [0x800001cc]:sw s2, 48(t0)<br>          |
|   8|[0x80002248]<br>0xBFFFFFDE|- rs1 : x27<br> - rs2 : x12<br> - rd : x30<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -33<br>                                                                                     |[0x800001e0]:KADDW t5, s11, a2<br> [0x800001e4]:csrrs s11, vxsat, zero<br> [0x800001e8]:sw t5, 56(t0)<br>        |
|   9|[0x80002250]<br>0xE7FFFFFF|- rs1 : x14<br> - rs2 : x15<br> - rd : x13<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 134217728<br>                                                                                |[0x800001fc]:KADDW a3, a4, a5<br> [0x80000200]:csrrs a4, vxsat, zero<br> [0x80000204]:sw a3, 64(t0)<br>          |
|  10|[0x80002258]<br>0x2FFFFFFF|- rs1 : x19<br> - rs2 : x16<br> - rd : x23<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 1073741824<br>                                                                               |[0x80000218]:KADDW s7, s3, a6<br> [0x8000021c]:csrrs s3, vxsat, zero<br> [0x80000220]:sw s7, 72(t0)<br>          |
|  11|[0x80002260]<br>0xF800FFFF|- rs1 : x29<br> - rs2 : x1<br> - rd : x14<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 65536<br>                                                                                     |[0x80000234]:KADDW a4, t4, ra<br> [0x80000238]:csrrs t4, vxsat, zero<br> [0x8000023c]:sw a4, 80(t0)<br>          |
|  12|[0x80002268]<br>0xFBFBFFFE|- rs1 : x22<br> - rs2 : x18<br> - rd : x19<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -262145<br>                                                                                   |[0x80000254]:KADDW s3, s6, s2<br> [0x80000258]:csrrs s6, vxsat, zero<br> [0x8000025c]:sw s3, 88(t0)<br>          |
|  13|[0x80002270]<br>0xFE000004|- rs1 : x21<br> - rs2 : x23<br> - rd : x7<br> - rs2_w0_val == -33554433<br>                                                                                                                |[0x80000270]:KADDW t2, s5, s7<br> [0x80000274]:csrrs s5, vxsat, zero<br> [0x80000278]:sw t2, 96(t0)<br>          |
|  14|[0x80002278]<br>0xFF000001|- rs1 : x10<br> - rs2 : x31<br> - rd : x17<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 2<br>                                                                                         |[0x8000028c]:KADDW a7, a0, t6<br> [0x80000290]:csrrs a0, vxsat, zero<br> [0x80000294]:sw a7, 104(t0)<br>         |
|  15|[0x80002280]<br>0xFF8007FF|- rs1 : x16<br> - rs2 : x3<br> - rd : x24<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 2048<br>                                                                                        |[0x800002ac]:KADDW s8, a6, gp<br> [0x800002b0]:csrrs a6, vxsat, zero<br> [0x800002b4]:sw s8, 112(t0)<br>         |
|  16|[0x80002288]<br>0xFFC03FFF|- rs1 : x13<br> - rs2 : x20<br> - rd : x27<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 16384<br>                                                                                      |[0x800002c8]:KADDW s11, a3, s4<br> [0x800002cc]:csrrs a3, vxsat, zero<br> [0x800002d0]:sw s11, 120(t0)<br>       |
|  17|[0x80002290]<br>0xFFDFFFF9|- rs1 : x26<br> - rs2 : x4<br> - rd : x31<br> - rs2_w0_val == -2097153<br>                                                                                                                 |[0x800002e4]:KADDW t6, s10, tp<br> [0x800002e8]:csrrs s10, vxsat, zero<br> [0x800002ec]:sw t6, 128(t0)<br>       |
|  18|[0x80002298]<br>0xFFE7FFFE|- rs1 : x8<br> - rs2 : x21<br> - rd : x2<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -524289<br>                                                                                      |[0x8000030c]:KADDW sp, fp, s5<br> [0x80000310]:csrrs fp, vxsat, zero<br> [0x80000314]:sw sp, 0(t2)<br>           |
|  19|[0x800022a0]<br>0xFFF7BFFE|- rs1 : x3<br> - rs2 : x11<br> - rd : x9<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -16385<br>                                                                                        |[0x8000032c]:KADDW s1, gp, a1<br> [0x80000330]:csrrs gp, vxsat, zero<br> [0x80000334]:sw s1, 8(t2)<br>           |
|  20|[0x800022a8]<br>0xFFFC0004|- rs1 : x4<br> - rs2 : x5<br> - rd : x1<br> - rs2_w0_val == -262145<br>                                                                                                                    |[0x80000348]:KADDW ra, tp, t0<br> [0x8000034c]:csrrs tp, vxsat, zero<br> [0x80000350]:sw ra, 16(t2)<br>          |
|  21|[0x800022b0]<br>0xFFFE0002|- rs1 : x20<br> - rs2 : x8<br> - rd : x11<br> - rs2_w0_val == -131073<br>                                                                                                                  |[0x80000364]:KADDW a1, s4, fp<br> [0x80000368]:csrrs s4, vxsat, zero<br> [0x8000036c]:sw a1, 24(t2)<br>          |
|  22|[0x800022b8]<br>0xFFFF0005|- rs1 : x15<br> - rs2 : x14<br> - rd : x25<br> - rs2_w0_val == -65537<br>                                                                                                                  |[0x80000380]:KADDW s9, a5, a4<br> [0x80000384]:csrrs a5, vxsat, zero<br> [0x80000388]:sw s9, 32(t2)<br>          |
|  23|[0x800022c0]<br>0xF7FF7FFE|- rs1 : x9<br> - rs2 : x10<br> - rd : x5<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -134217729<br>                                                                                     |[0x800003a0]:KADDW t0, s1, a0<br> [0x800003a4]:csrrs s1, vxsat, zero<br> [0x800003a8]:sw t0, 40(t2)<br>          |
|  24|[0x800022c8]<br>0x3FFFBFFF|- rs1 : x5<br> - rs2 : x13<br> - rd : x8<br> - rs2_w0_val == -16385<br>                                                                                                                    |[0x800003bc]:KADDW fp, t0, a3<br> [0x800003c0]:csrrs t0, vxsat, zero<br> [0x800003c4]:sw fp, 48(t2)<br>          |
|  25|[0x800022d0]<br>0xFFFFDFF5|- rs1 : x23<br> - rs2 : x28<br> - rd : x12<br> - rs2_w0_val == -8193<br>                                                                                                                   |[0x800003d8]:KADDW a2, s7, t3<br> [0x800003dc]:csrrs s7, vxsat, zero<br> [0x800003e0]:sw a2, 56(t2)<br>          |
|  26|[0x800022d8]<br>0xFFFFEEFE|- rs1 : x2<br> - rs2 : x29<br> - rd : x6<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -257<br>                                                                                            |[0x800003f4]:KADDW t1, sp, t4<br> [0x800003f8]:csrrs sp, vxsat, zero<br> [0x800003fc]:sw t1, 64(t2)<br>          |
|  27|[0x800022e0]<br>0x00003BFF|- rs1 : x1<br> - rs2 : x19<br> - rd : x20<br> - rs2_w0_val == -1025<br>                                                                                                                    |[0x8000040c]:KADDW s4, ra, s3<br> [0x80000410]:csrrs ra, vxsat, zero<br> [0x80000414]:sw s4, 72(t2)<br>          |
|  28|[0x800022e8]<br>0x3FFFFDFE|- rs1 : x30<br> - rs2 : x25<br> - rd : x4<br> - rs2_w0_val == -513<br>                                                                                                                     |[0x80000428]:KADDW tp, t5, s9<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw tp, 80(t2)<br>          |
|  29|[0x800022f0]<br>0xFF7FFEFE|- rs1 : x11<br> - rs2 : x24<br> - rd : x22<br> - rs2_w0_val == -257<br> - rs1_w0_val == -8388609<br>                                                                                       |[0x80000444]:KADDW s6, a1, s8<br> [0x80000448]:csrrs a1, vxsat, zero<br> [0x8000044c]:sw s6, 88(t2)<br>          |
|  30|[0x800022f8]<br>0x00001F7F|- rs1 : x24<br> - rs2 : x9<br> - rd : x29<br> - rs2_w0_val == -129<br> - rs1_w0_val == 8192<br>                                                                                            |[0x8000045c]:KADDW t4, s8, s1<br> [0x80000460]:csrrs s8, vxsat, zero<br> [0x80000464]:sw t4, 96(t2)<br>          |
|  31|[0x80002300]<br>0xFFF7FFBE|- rs1 : x12<br> - rs2 : x17<br> - rd : x10<br> - rs2_w0_val == -65<br>                                                                                                                     |[0x80000478]:KADDW a0, a2, a7<br> [0x8000047c]:csrrs a2, vxsat, zero<br> [0x80000480]:sw a0, 104(t2)<br>         |
|  32|[0x80002308]<br>0xFFFFFFE7|- rs1 : x18<br> - rs2 : x30<br> - rd : x3<br> - rs2_w0_val == -33<br> - rs1_w0_val == 8<br>                                                                                                |[0x80000490]:KADDW gp, s2, t5<br> [0x80000494]:csrrs s2, vxsat, zero<br> [0x80000498]:sw gp, 112(t2)<br>         |
|  33|[0x80002310]<br>0xFFFFFFF2|- rs2_w0_val == -9<br> - rs1_w0_val == -5<br>                                                                                                                                              |[0x800004a8]:KADDW t6, t5, t4<br> [0x800004ac]:csrrs t5, vxsat, zero<br> [0x800004b0]:sw t6, 120(t2)<br>         |
|  34|[0x80002318]<br>0x80000000|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -5<br>                                                                                                                                     |[0x800004c8]:KADDW t6, t5, t4<br> [0x800004cc]:csrrs t5, vxsat, zero<br> [0x800004d0]:sw t6, 0(ra)<br>           |
|  35|[0x80002320]<br>0xFFDFFFFC|- rs2_w0_val == -3<br> - rs1_w0_val == -2097153<br>                                                                                                                                        |[0x800004e4]:KADDW t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 8(ra)<br>           |
|  36|[0x80002328]<br>0xFFFFFFFD|- rs2_w0_val == -2<br> - rs1_w0_val == -1<br>                                                                                                                                              |[0x800004fc]:KADDW t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 16(ra)<br>          |
|  37|[0x80002330]<br>0x80000000|- rs2_w0_val == -2147483648<br>                                                                                                                                                            |[0x80000514]:KADDW t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 24(ra)<br>          |
|  38|[0x80002338]<br>0x40800000|- rs2_w0_val == 1073741824<br>                                                                                                                                                             |[0x8000052c]:KADDW t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 32(ra)<br>          |
|  39|[0x80002340]<br>0x1FFDFFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == -131073<br>                                                                                                                                  |[0x80000548]:KADDW t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 40(ra)<br>          |
|  40|[0x80002348]<br>0x10000400|- rs2_w0_val == 268435456<br> - rs1_w0_val == 1024<br>                                                                                                                                     |[0x80000560]:KADDW t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 48(ra)<br>          |
|  41|[0x80002350]<br>0x0A000000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 33554432<br>                                                                                                                                 |[0x80000578]:KADDW t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 56(ra)<br>          |
|  42|[0x80002358]<br>0x03FBFFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                               |[0x80000594]:KADDW t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 64(ra)<br>          |
|  43|[0x80002360]<br>0x02000100|- rs2_w0_val == 33554432<br> - rs1_w0_val == 256<br>                                                                                                                                       |[0x800005ac]:KADDW t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 72(ra)<br>          |
|  44|[0x80002368]<br>0x56555555|- rs2_w0_val == 16777216<br> - rs1_w0_val == 1431655765<br>                                                                                                                                |[0x800005c8]:KADDW t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 80(ra)<br>          |
|  45|[0x80002370]<br>0x007FFFF8|- rs2_w0_val == 8388608<br>                                                                                                                                                                |[0x800005e0]:KADDW t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 88(ra)<br>          |
|  46|[0x80002378]<br>0x003FFFFB|- rs2_w0_val == 4194304<br>                                                                                                                                                                |[0x800005f8]:KADDW t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 96(ra)<br>          |
|  47|[0x80002380]<br>0xE00001FF|- rs1_w0_val == 512<br>                                                                                                                                                                    |[0x80000614]:KADDW t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 104(ra)<br>         |
|  48|[0x80002388]<br>0xFFFFFFFF|- rs1_w0_val == 128<br>                                                                                                                                                                    |[0x8000062c]:KADDW t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 112(ra)<br>         |
|  49|[0x80002390]<br>0xF800003F|- rs1_w0_val == 64<br>                                                                                                                                                                     |[0x80000648]:KADDW t6, t5, t4<br> [0x8000064c]:csrrs t5, vxsat, zero<br> [0x80000650]:sw t6, 120(ra)<br>         |
|  50|[0x80002398]<br>0xFFFFFC1F|- rs1_w0_val == 32<br>                                                                                                                                                                     |[0x80000660]:KADDW t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 128(ra)<br>         |
|  51|[0x800023a0]<br>0xF000000F|- rs1_w0_val == 16<br>                                                                                                                                                                     |[0x8000067c]:KADDW t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 136(ra)<br>         |
|  52|[0x800023a8]<br>0x00000006|- rs2_w0_val == 2<br> - rs1_w0_val == 4<br>                                                                                                                                                |[0x80000694]:KADDW t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 144(ra)<br>         |
|  53|[0x800023b0]<br>0x00000101|- rs2_w0_val == 256<br> - rs1_w0_val == 1<br>                                                                                                                                              |[0x800006ac]:KADDW t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 152(ra)<br>         |
|  54|[0x800023c0]<br>0x04200000|- rs2_w0_val == 2097152<br> - rs1_w0_val == 67108864<br>                                                                                                                                   |[0x800006dc]:KADDW t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 168(ra)<br>         |
|  55|[0x800023c8]<br>0xFFCFFFFF|- rs2_w0_val == 1048576<br> - rs1_w0_val == -4194305<br>                                                                                                                                   |[0x800006f8]:KADDW t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 176(ra)<br>         |
|  56|[0x800023d0]<br>0x0007FFFB|- rs2_w0_val == 524288<br>                                                                                                                                                                 |[0x80000710]:KADDW t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 184(ra)<br>         |
|  57|[0x800023d8]<br>0x0003FFFE|- rs2_w0_val == 262144<br> - rs1_w0_val == -2<br>                                                                                                                                          |[0x80000728]:KADDW t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 192(ra)<br>         |
|  58|[0x800023e0]<br>0x00020009|- rs2_w0_val == 131072<br>                                                                                                                                                                 |[0x80000740]:KADDW t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 200(ra)<br>         |
|  59|[0x800023e8]<br>0x0000FDFF|- rs2_w0_val == 65536<br> - rs1_w0_val == -513<br>                                                                                                                                         |[0x80000758]:KADDW t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 208(ra)<br>         |
|  60|[0x800023f0]<br>0x02008000|- rs2_w0_val == 32768<br>                                                                                                                                                                  |[0x80000770]:KADDW t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 216(ra)<br>         |
|  61|[0x800023f8]<br>0x00004200|- rs2_w0_val == 16384<br>                                                                                                                                                                  |[0x80000788]:KADDW t6, t5, t4<br> [0x8000078c]:csrrs t5, vxsat, zero<br> [0x80000790]:sw t6, 224(ra)<br>         |
|  62|[0x80002400]<br>0x00002007|- rs2_w0_val == 8192<br>                                                                                                                                                                   |[0x800007a0]:KADDW t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 232(ra)<br>         |
|  63|[0x80002408]<br>0xFFFF8FFF|- rs2_w0_val == 4096<br> - rs1_w0_val == -32769<br>                                                                                                                                        |[0x800007bc]:KADDW t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 240(ra)<br>         |
|  64|[0x80002410]<br>0x00000809|- rs2_w0_val == 2048<br>                                                                                                                                                                   |[0x800007d8]:KADDW t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 248(ra)<br>         |
|  65|[0x80002418]<br>0x0000037F|- rs2_w0_val == 1024<br> - rs1_w0_val == -129<br>                                                                                                                                          |[0x800007f0]:KADDW t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 256(ra)<br>         |
|  66|[0x80002420]<br>0xFFF801FF|- rs2_w0_val == 512<br>                                                                                                                                                                    |[0x8000080c]:KADDW t6, t5, t4<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sw t6, 264(ra)<br>         |
|  67|[0x80002428]<br>0xC0000080|- rs2_w0_val == 128<br>                                                                                                                                                                    |[0x80000824]:KADDW t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 272(ra)<br>         |
|  68|[0x80002430]<br>0x00000042|- rs2_w0_val == 64<br>                                                                                                                                                                     |[0x8000083c]:KADDW t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 280(ra)<br>         |
|  69|[0x80002438]<br>0x10000010|- rs2_w0_val == 16<br> - rs1_w0_val == 268435456<br>                                                                                                                                       |[0x80000854]:KADDW t6, t5, t4<br> [0x80000858]:csrrs t5, vxsat, zero<br> [0x8000085c]:sw t6, 288(ra)<br>         |
|  70|[0x80002440]<br>0xFFC00007|- rs2_w0_val == 8<br>                                                                                                                                                                      |[0x80000870]:KADDW t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 296(ra)<br>         |
|  71|[0x80002448]<br>0xFFFFFE03|- rs2_w0_val == 4<br>                                                                                                                                                                      |[0x80000888]:KADDW t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 304(ra)<br>         |
|  72|[0x80002450]<br>0x00010001|- rs2_w0_val == 1<br>                                                                                                                                                                      |[0x800008a0]:KADDW t6, t5, t4<br> [0x800008a4]:csrrs t5, vxsat, zero<br> [0x800008a8]:sw t6, 312(ra)<br>         |
|  73|[0x80002460]<br>0x0FFFFFFF|- rs2_w0_val == -1<br>                                                                                                                                                                     |[0x800008d0]:KADDW t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 328(ra)<br>         |
|  74|[0x80002468]<br>0xEAAAAAA9|- rs1_w0_val == -1431655766<br>                                                                                                                                                            |[0x800008f0]:KADDW t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 336(ra)<br>         |
|  75|[0x80002470]<br>0x7FFFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                                                             |[0x8000090c]:KADDW t6, t5, t4<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sw t6, 344(ra)<br>         |
|  76|[0x80002478]<br>0xBFFFFFF8|- rs1_w0_val == -1073741825<br>                                                                                                                                                            |[0x80000928]:KADDW t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 352(ra)<br>         |
|  77|[0x80002480]<br>0xDFFFFFFD|- rs1_w0_val == -536870913<br>                                                                                                                                                             |[0x80000944]:KADDW t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 360(ra)<br>         |
|  78|[0x80002488]<br>0xEEFFFFFE|- rs1_w0_val == -268435457<br>                                                                                                                                                             |[0x80000964]:KADDW t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 368(ra)<br>         |
|  79|[0x80002490]<br>0xFDFFFFFF|- rs1_w0_val == -67108865<br>                                                                                                                                                              |[0x80000980]:KADDW t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 376(ra)<br>         |
|  80|[0x80002498]<br>0xFE0000FF|- rs1_w0_val == -33554433<br>                                                                                                                                                              |[0x8000099c]:KADDW t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 384(ra)<br>         |
|  81|[0x800024a0]<br>0xFEFFFFFE|- rs1_w0_val == -16777217<br>                                                                                                                                                              |[0x800009b8]:KADDW t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 392(ra)<br>         |
|  82|[0x800024a8]<br>0xFFFF0006|- rs1_w0_val == -65537<br>                                                                                                                                                                 |[0x800009d4]:KADDW t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 400(ra)<br>         |
|  83|[0x800024b0]<br>0xAAAA8AA9|- rs1_w0_val == -8193<br>                                                                                                                                                                  |[0x800009f4]:KADDW t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 408(ra)<br>         |
|  84|[0x800024b8]<br>0x00000FFF|- rs1_w0_val == -4097<br>                                                                                                                                                                  |[0x80000a10]:KADDW t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 416(ra)<br>         |
|  85|[0x800024c0]<br>0xFFBFFBFE|- rs1_w0_val == -1025<br>                                                                                                                                                                  |[0x80000a2c]:KADDW t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 424(ra)<br>         |
|  86|[0x800024c8]<br>0xFFFFF7BE|- rs1_w0_val == -65<br>                                                                                                                                                                    |[0x80000a48]:KADDW t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 432(ra)<br>         |
|  87|[0x800024d0]<br>0xFDFFFFEE|- rs1_w0_val == -17<br>                                                                                                                                                                    |[0x80000a64]:KADDW t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 440(ra)<br>         |
|  88|[0x800024d8]<br>0x000000F7|- rs1_w0_val == -9<br>                                                                                                                                                                     |[0x80000a7c]:KADDW t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 448(ra)<br>         |
|  89|[0x800024e0]<br>0x03FFFFFD|- rs1_w0_val == -3<br>                                                                                                                                                                     |[0x80000a94]:KADDW t6, t5, t4<br> [0x80000a98]:csrrs t5, vxsat, zero<br> [0x80000a9c]:sw t6, 456(ra)<br>         |
|  90|[0x800024e8]<br>0xE0000000|- rs1_w0_val == 536870912<br>                                                                                                                                                              |[0x80000aac]:KADDW t6, t5, t4<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sw t6, 464(ra)<br>         |
|  91|[0x800024f0]<br>0x003FFFDF|- rs1_w0_val == 4194304<br>                                                                                                                                                                |[0x80000ac4]:KADDW t6, t5, t4<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sw t6, 472(ra)<br>         |
|  92|[0x800024f8]<br>0x0017FFFF|- rs1_w0_val == 2097152<br>                                                                                                                                                                |[0x80000ae0]:KADDW t6, t5, t4<br> [0x80000ae4]:csrrs t5, vxsat, zero<br> [0x80000ae8]:sw t6, 480(ra)<br>         |
|  93|[0x80002500]<br>0x000FFFDF|- rs1_w0_val == 1048576<br>                                                                                                                                                                |[0x80000af8]:KADDW t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 488(ra)<br>         |
|  94|[0x80002508]<br>0x0007FFFF|- rs1_w0_val == 524288<br>                                                                                                                                                                 |[0x80000b10]:KADDW t6, t5, t4<br> [0x80000b14]:csrrs t5, vxsat, zero<br> [0x80000b18]:sw t6, 496(ra)<br>         |
|  95|[0x80002510]<br>0xFFF3FFFF|- rs1_w0_val == 262144<br>                                                                                                                                                                 |[0x80000b2c]:KADDW t6, t5, t4<br> [0x80000b30]:csrrs t5, vxsat, zero<br> [0x80000b34]:sw t6, 504(ra)<br>         |
|  96|[0x80002518]<br>0x00020400|- rs1_w0_val == 131072<br>                                                                                                                                                                 |[0x80000b44]:KADDW t6, t5, t4<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sw t6, 512(ra)<br>         |
|  97|[0x80002520]<br>0x00088000|- rs1_w0_val == 32768<br>                                                                                                                                                                  |[0x80000b5c]:KADDW t6, t5, t4<br> [0x80000b60]:csrrs t5, vxsat, zero<br> [0x80000b64]:sw t6, 520(ra)<br>         |
|  98|[0x80002528]<br>0x00000FFF|- rs1_w0_val == 4096<br>                                                                                                                                                                   |[0x80000b74]:KADDW t6, t5, t4<br> [0x80000b78]:csrrs t5, vxsat, zero<br> [0x80000b7c]:sw t6, 528(ra)<br>         |
