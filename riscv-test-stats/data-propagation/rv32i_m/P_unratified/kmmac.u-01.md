
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c60')]      |
| SIG_REGION                | [('0x80002210', '0x80002570', '216 words')]      |
| COV_LABELS                | kmmac.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmac.u-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 214      |
| STAT1                     | 104      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 107     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000878]:KMMAC_U t6, t5, t4
      [0x8000087c]:csrrs t5, vxsat, zero
      [0x80000880]:sw t6, 432(a4)
 -- Signature Address: 0x80002440 Data: 0x1CEE2436
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ac]:KMMAC_U t6, t5, t4
      [0x800008b0]:csrrs t5, vxsat, zero
      [0x800008b4]:sw t6, 448(a4)
 -- Signature Address: 0x80002450 Data: 0x1CEE2435
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 4
      - rs1_w0_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c34]:KMMAC_U t6, t5, t4
      [0x80000c38]:csrrs t5, vxsat, zero
      [0x80000c3c]:sw t6, 712(a4)
 -- Signature Address: 0x80002558 Data: 0x2DC19697
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -2097153






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000114]:KMMAC_U s8, s8, s8
	-[0x80000118]:csrrs s8, vxsat, zero
	-[0x8000011c]:sw s8, 0(s4)
Current Store : [0x80000120] : sw s8, 4(s4) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x25', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000134]:KMMAC_U s9, t1, t1
	-[0x80000138]:csrrs t1, vxsat, zero
	-[0x8000013c]:sw s9, 8(s4)
Current Store : [0x80000140] : sw t1, 12(s4) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x22', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000150]:KMMAC_U s10, a4, s6
	-[0x80000154]:csrrs a4, vxsat, zero
	-[0x80000158]:sw s10, 16(s4)
Current Store : [0x8000015c] : sw a4, 20(s4) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000016c]:KMMAC_U t3, t4, t3
	-[0x80000170]:csrrs t4, vxsat, zero
	-[0x80000174]:sw t3, 24(s4)
Current Store : [0x80000178] : sw t4, 28(s4) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x16', 'rd : x4', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000188]:KMMAC_U tp, tp, a6
	-[0x8000018c]:csrrs tp, vxsat, zero
	-[0x80000190]:sw tp, 32(s4)
Current Store : [0x80000194] : sw tp, 36(s4) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x2', 'rs2_w0_val == -536870913', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800001a4]:KMMAC_U sp, a2, s3
	-[0x800001a8]:csrrs a2, vxsat, zero
	-[0x800001ac]:sw sp, 40(s4)
Current Store : [0x800001b0] : sw a2, 44(s4) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x17', 'rd : x16', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x800001c0]:KMMAC_U a6, t3, a7
	-[0x800001c4]:csrrs t3, vxsat, zero
	-[0x800001c8]:sw a6, 48(s4)
Current Store : [0x800001cc] : sw t3, 52(s4) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x3', 'rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001e0]:KMMAC_U gp, a5, a4
	-[0x800001e4]:csrrs a5, vxsat, zero
	-[0x800001e8]:sw gp, 56(s4)
Current Store : [0x800001ec] : sw a5, 60(s4) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x27', 'rs2_w0_val == -67108865', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800001fc]:KMMAC_U s11, s2, s9
	-[0x80000200]:csrrs s2, vxsat, zero
	-[0x80000204]:sw s11, 64(s4)
Current Store : [0x80000208] : sw s2, 68(s4) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x9', 'rd : x17', 'rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000218]:KMMAC_U a7, s11, s1
	-[0x8000021c]:csrrs s11, vxsat, zero
	-[0x80000220]:sw a7, 72(s4)
Current Store : [0x80000224] : sw s11, 76(s4) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x15', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000234]:KMMAC_U a5, zero, a1
	-[0x80000238]:csrrs zero, vxsat, zero
	-[0x8000023c]:sw a5, 80(s4)
Current Store : [0x80000240] : sw zero, 84(s4) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rd : x13', 'rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000250]:KMMAC_U a3, t5, a5
	-[0x80000254]:csrrs t5, vxsat, zero
	-[0x80000258]:sw a3, 88(s4)
Current Store : [0x8000025c] : sw t5, 92(s4) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x14', 'rs2_w0_val == -4194305', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x8000026c]:KMMAC_U a4, a6, fp
	-[0x80000270]:csrrs a6, vxsat, zero
	-[0x80000274]:sw a4, 96(s4)
Current Store : [0x80000278] : sw a6, 100(s4) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rd : x0', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000288]:KMMAC_U zero, a0, gp
	-[0x8000028c]:csrrs a0, vxsat, zero
	-[0x80000290]:sw zero, 104(s4)
Current Store : [0x80000294] : sw a0, 108(s4) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x19', 'rs2_w0_val == -1048577', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800002a8]:KMMAC_U s3, t0, ra
	-[0x800002ac]:csrrs t0, vxsat, zero
	-[0x800002b0]:sw s3, 112(s4)
Current Store : [0x800002b4] : sw t0, 116(s4) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x7', 'rd : x9', 'rs2_w0_val == -524289', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800002c8]:KMMAC_U s1, s5, t2
	-[0x800002cc]:csrrs s5, vxsat, zero
	-[0x800002d0]:sw s1, 120(s4)
Current Store : [0x800002d4] : sw s5, 124(s4) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x22', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x800002f0]:KMMAC_U s6, s1, t0
	-[0x800002f4]:csrrs s1, vxsat, zero
	-[0x800002f8]:sw s6, 0(a4)
Current Store : [0x800002fc] : sw s1, 4(a4) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x18', 'rd : x12', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x8000030c]:KMMAC_U a2, a3, s2
	-[0x80000310]:csrrs a3, vxsat, zero
	-[0x80000314]:sw a2, 8(a4)
Current Store : [0x80000318] : sw a3, 12(a4) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rd : x8', 'rs2_w0_val == -65537', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x8000032c]:KMMAC_U fp, s6, a2
	-[0x80000330]:csrrs s6, vxsat, zero
	-[0x80000334]:sw fp, 16(a4)
Current Store : [0x80000338] : sw s6, 20(a4) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x11', 'rs2_w0_val == -32769', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000348]:KMMAC_U a1, t2, s4
	-[0x8000034c]:csrrs t2, vxsat, zero
	-[0x80000350]:sw a1, 24(a4)
Current Store : [0x80000354] : sw t2, 28(a4) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x30', 'rd : x20', 'rs2_w0_val == -16385', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000368]:KMMAC_U s4, s7, t5
	-[0x8000036c]:csrrs s7, vxsat, zero
	-[0x80000370]:sw s4, 32(a4)
Current Store : [0x80000374] : sw s7, 36(a4) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rd : x10', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000388]:KMMAC_U a0, sp, s7
	-[0x8000038c]:csrrs sp, vxsat, zero
	-[0x80000390]:sw a0, 40(a4)
Current Store : [0x80000394] : sw sp, 44(a4) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x29', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x800003a4]:KMMAC_U t4, s9, zero
	-[0x800003a8]:csrrs s9, vxsat, zero
	-[0x800003ac]:sw t4, 48(a4)
Current Store : [0x800003b0] : sw s9, 52(a4) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x13', 'rd : x30', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003c0]:KMMAC_U t5, fp, a3
	-[0x800003c4]:csrrs fp, vxsat, zero
	-[0x800003c8]:sw t5, 56(a4)
Current Store : [0x800003cc] : sw fp, 60(a4) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x26', 'rd : x18', 'rs2_w0_val == -1025', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800003d8]:KMMAC_U s2, a7, s10
	-[0x800003dc]:csrrs a7, vxsat, zero
	-[0x800003e0]:sw s2, 64(a4)
Current Store : [0x800003e4] : sw a7, 68(a4) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x7', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800003f4]:KMMAC_U t2, gp, t4
	-[0x800003f8]:csrrs gp, vxsat, zero
	-[0x800003fc]:sw t2, 72(a4)
Current Store : [0x80000400] : sw gp, 76(a4) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x1', 'rs2_w0_val == -257', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000040c]:KMMAC_U ra, s4, sp
	-[0x80000410]:csrrs s4, vxsat, zero
	-[0x80000414]:sw ra, 80(a4)
Current Store : [0x80000418] : sw s4, 84(a4) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x31', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x80000428]:KMMAC_U t6, ra, s5
	-[0x8000042c]:csrrs ra, vxsat, zero
	-[0x80000430]:sw t6, 88(a4)
Current Store : [0x80000434] : sw ra, 92(a4) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x10', 'rd : x6', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000444]:KMMAC_U t1, t6, a0
	-[0x80000448]:csrrs t6, vxsat, zero
	-[0x8000044c]:sw t1, 96(a4)
Current Store : [0x80000450] : sw t6, 100(a4) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x31', 'rd : x21', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000460]:KMMAC_U s5, s3, t6
	-[0x80000464]:csrrs s3, vxsat, zero
	-[0x80000468]:sw s5, 104(a4)
Current Store : [0x8000046c] : sw s3, 108(a4) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x23', 'rs2_w0_val == -17', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000478]:KMMAC_U s7, a1, tp
	-[0x8000047c]:csrrs a1, vxsat, zero
	-[0x80000480]:sw s7, 112(a4)
Current Store : [0x80000484] : sw a1, 116(a4) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x5', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000494]:KMMAC_U t0, s10, s11
	-[0x80000498]:csrrs s10, vxsat, zero
	-[0x8000049c]:sw t0, 120(a4)
Current Store : [0x800004a0] : sw s10, 124(a4) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800004ac]:KMMAC_U t6, t5, t4
	-[0x800004b0]:csrrs t5, vxsat, zero
	-[0x800004b4]:sw t6, 128(a4)
Current Store : [0x800004b8] : sw t5, 132(a4) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800004c4]:KMMAC_U t6, t5, t4
	-[0x800004c8]:csrrs t5, vxsat, zero
	-[0x800004cc]:sw t6, 136(a4)
Current Store : [0x800004d0] : sw t5, 140(a4) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800004dc]:KMMAC_U t6, t5, t4
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 144(a4)
Current Store : [0x800004e8] : sw t5, 148(a4) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800004f8]:KMMAC_U t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 152(a4)
Current Store : [0x80000504] : sw t5, 156(a4) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000514]:KMMAC_U t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 160(a4)
Current Store : [0x80000520] : sw t5, 164(a4) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000530]:KMMAC_U t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 168(a4)
Current Store : [0x8000053c] : sw t5, 172(a4) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000548]:KMMAC_U t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 176(a4)
Current Store : [0x80000554] : sw t5, 180(a4) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000564]:KMMAC_U t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 184(a4)
Current Store : [0x80000570] : sw t5, 188(a4) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000580]:KMMAC_U t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 192(a4)
Current Store : [0x8000058c] : sw t5, 196(a4) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000598]:KMMAC_U t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 200(a4)
Current Store : [0x800005a4] : sw t5, 204(a4) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800005b0]:KMMAC_U t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 208(a4)
Current Store : [0x800005bc] : sw t5, 212(a4) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005c8]:KMMAC_U t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 216(a4)
Current Store : [0x800005d4] : sw t5, 220(a4) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005e4]:KMMAC_U t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 224(a4)
Current Store : [0x800005f0] : sw t5, 228(a4) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800005fc]:KMMAC_U t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 232(a4)
Current Store : [0x80000608] : sw t5, 236(a4) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000614]:KMMAC_U t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 240(a4)
Current Store : [0x80000620] : sw t5, 244(a4) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x8000062c]:KMMAC_U t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 248(a4)
Current Store : [0x80000638] : sw t5, 252(a4) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000644]:KMMAC_U t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 256(a4)
Current Store : [0x80000650] : sw t5, 260(a4) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000065c]:KMMAC_U t6, t5, t4
	-[0x80000660]:csrrs t5, vxsat, zero
	-[0x80000664]:sw t6, 264(a4)
Current Store : [0x80000668] : sw t5, 268(a4) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000674]:KMMAC_U t6, t5, t4
	-[0x80000678]:csrrs t5, vxsat, zero
	-[0x8000067c]:sw t6, 272(a4)
Current Store : [0x80000680] : sw t5, 276(a4) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000068c]:KMMAC_U t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 280(a4)
Current Store : [0x80000698] : sw t5, 284(a4) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800006a4]:KMMAC_U t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 288(a4)
Current Store : [0x800006b0] : sw t5, 292(a4) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006c0]:KMMAC_U t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 296(a4)
Current Store : [0x800006cc] : sw t5, 300(a4) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800006d8]:KMMAC_U t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 304(a4)
Current Store : [0x800006e4] : sw t5, 308(a4) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800006f0]:KMMAC_U t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 312(a4)
Current Store : [0x800006fc] : sw t5, 316(a4) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000708]:KMMAC_U t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 320(a4)
Current Store : [0x80000714] : sw t5, 324(a4) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000720]:KMMAC_U t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 328(a4)
Current Store : [0x8000072c] : sw t5, 332(a4) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000073c]:KMMAC_U t6, t5, t4
	-[0x80000740]:csrrs t5, vxsat, zero
	-[0x80000744]:sw t6, 336(a4)
Current Store : [0x80000748] : sw t5, 340(a4) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000754]:KMMAC_U t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 344(a4)
Current Store : [0x80000760] : sw t5, 348(a4) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000774]:KMMAC_U t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 352(a4)
Current Store : [0x80000780] : sw t5, 356(a4) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x8000078c]:KMMAC_U t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 360(a4)
Current Store : [0x80000798] : sw t5, 364(a4) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800007a8]:KMMAC_U t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 368(a4)
Current Store : [0x800007b4] : sw t5, 372(a4) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800007c4]:KMMAC_U t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 376(a4)
Current Store : [0x800007d0] : sw t5, 380(a4) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800007dc]:KMMAC_U t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 384(a4)
Current Store : [0x800007e8] : sw t5, 388(a4) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800007f4]:KMMAC_U t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 392(a4)
Current Store : [0x80000800] : sw t5, 396(a4) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000810]:KMMAC_U t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 400(a4)
Current Store : [0x8000081c] : sw t5, 404(a4) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000828]:KMMAC_U t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 408(a4)
Current Store : [0x80000834] : sw t5, 412(a4) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000844]:KMMAC_U t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 416(a4)
Current Store : [0x80000850] : sw t5, 420(a4) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == 1']
Last Code Sequence : 
	-[0x8000085c]:KMMAC_U t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 424(a4)
Current Store : [0x80000868] : sw t5, 428(a4) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x80000878]:KMMAC_U t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 432(a4)
Current Store : [0x80000884] : sw t5, 436(a4) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000890]:KMMAC_U t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 440(a4)
Current Store : [0x8000089c] : sw t5, 444(a4) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 4', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800008ac]:KMMAC_U t6, t5, t4
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sw t6, 448(a4)
Current Store : [0x800008b8] : sw t5, 452(a4) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800008c8]:KMMAC_U t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 456(a4)
Current Store : [0x800008d4] : sw t5, 460(a4) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800008e4]:KMMAC_U t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 464(a4)
Current Store : [0x800008f0] : sw t5, 468(a4) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000904]:KMMAC_U t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 472(a4)
Current Store : [0x80000910] : sw t5, 476(a4) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000920]:KMMAC_U t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 480(a4)
Current Store : [0x8000092c] : sw t5, 484(a4) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000940]:KMMAC_U t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 488(a4)
Current Store : [0x8000094c] : sw t5, 492(a4) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000095c]:KMMAC_U t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 496(a4)
Current Store : [0x80000968] : sw t5, 500(a4) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000097c]:KMMAC_U t6, t5, t4
	-[0x80000980]:csrrs t5, vxsat, zero
	-[0x80000984]:sw t6, 504(a4)
Current Store : [0x80000988] : sw t5, 508(a4) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x8000099c]:KMMAC_U t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 512(a4)
Current Store : [0x800009a8] : sw t5, 516(a4) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800009b8]:KMMAC_U t6, t5, t4
	-[0x800009bc]:csrrs t5, vxsat, zero
	-[0x800009c0]:sw t6, 520(a4)
Current Store : [0x800009c4] : sw t5, 524(a4) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800009d4]:KMMAC_U t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 528(a4)
Current Store : [0x800009e0] : sw t5, 532(a4) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800009f0]:KMMAC_U t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 536(a4)
Current Store : [0x800009fc] : sw t5, 540(a4) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000a10]:KMMAC_U t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 544(a4)
Current Store : [0x80000a1c] : sw t5, 548(a4) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000a2c]:KMMAC_U t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 552(a4)
Current Store : [0x80000a38] : sw t5, 556(a4) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000a44]:KMMAC_U t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 560(a4)
Current Store : [0x80000a50] : sw t5, 564(a4) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a60]:KMMAC_U t6, t5, t4
	-[0x80000a64]:csrrs t5, vxsat, zero
	-[0x80000a68]:sw t6, 568(a4)
Current Store : [0x80000a6c] : sw t5, 572(a4) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a7c]:KMMAC_U t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 576(a4)
Current Store : [0x80000a88] : sw t5, 580(a4) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000a94]:KMMAC_U t6, t5, t4
	-[0x80000a98]:csrrs t5, vxsat, zero
	-[0x80000a9c]:sw t6, 584(a4)
Current Store : [0x80000aa0] : sw t5, 588(a4) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000ab0]:KMMAC_U t6, t5, t4
	-[0x80000ab4]:csrrs t5, vxsat, zero
	-[0x80000ab8]:sw t6, 592(a4)
Current Store : [0x80000abc] : sw t5, 596(a4) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000acc]:KMMAC_U t6, t5, t4
	-[0x80000ad0]:csrrs t5, vxsat, zero
	-[0x80000ad4]:sw t6, 600(a4)
Current Store : [0x80000ad8] : sw t5, 604(a4) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000ae8]:KMMAC_U t6, t5, t4
	-[0x80000aec]:csrrs t5, vxsat, zero
	-[0x80000af0]:sw t6, 608(a4)
Current Store : [0x80000af4] : sw t5, 612(a4) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000b00]:KMMAC_U t6, t5, t4
	-[0x80000b04]:csrrs t5, vxsat, zero
	-[0x80000b08]:sw t6, 616(a4)
Current Store : [0x80000b0c] : sw t5, 620(a4) -- Store: [0x800024fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000b18]:KMMAC_U t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 624(a4)
Current Store : [0x80000b24] : sw t5, 628(a4) -- Store: [0x80002504]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000b30]:KMMAC_U t6, t5, t4
	-[0x80000b34]:csrrs t5, vxsat, zero
	-[0x80000b38]:sw t6, 632(a4)
Current Store : [0x80000b3c] : sw t5, 636(a4) -- Store: [0x8000250c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b48]:KMMAC_U t6, t5, t4
	-[0x80000b4c]:csrrs t5, vxsat, zero
	-[0x80000b50]:sw t6, 640(a4)
Current Store : [0x80000b54] : sw t5, 644(a4) -- Store: [0x80002514]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b60]:KMMAC_U t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 648(a4)
Current Store : [0x80000b6c] : sw t5, 652(a4) -- Store: [0x8000251c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000b78]:KMMAC_U t6, t5, t4
	-[0x80000b7c]:csrrs t5, vxsat, zero
	-[0x80000b80]:sw t6, 656(a4)
Current Store : [0x80000b84] : sw t5, 660(a4) -- Store: [0x80002524]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b90]:KMMAC_U t6, t5, t4
	-[0x80000b94]:csrrs t5, vxsat, zero
	-[0x80000b98]:sw t6, 664(a4)
Current Store : [0x80000b9c] : sw t5, 668(a4) -- Store: [0x8000252c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000bac]:KMMAC_U t6, t5, t4
	-[0x80000bb0]:csrrs t5, vxsat, zero
	-[0x80000bb4]:sw t6, 672(a4)
Current Store : [0x80000bb8] : sw t5, 676(a4) -- Store: [0x80002534]:0x00000000




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000bc4]:KMMAC_U t6, t5, t4
	-[0x80000bc8]:csrrs t5, vxsat, zero
	-[0x80000bcc]:sw t6, 680(a4)
Current Store : [0x80000bd0] : sw t5, 684(a4) -- Store: [0x8000253c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000bdc]:KMMAC_U t6, t5, t4
	-[0x80000be0]:csrrs t5, vxsat, zero
	-[0x80000be4]:sw t6, 688(a4)
Current Store : [0x80000be8] : sw t5, 692(a4) -- Store: [0x80002544]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000bfc]:KMMAC_U t6, t5, t4
	-[0x80000c00]:csrrs t5, vxsat, zero
	-[0x80000c04]:sw t6, 696(a4)
Current Store : [0x80000c08] : sw t5, 700(a4) -- Store: [0x8000254c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c18]:KMMAC_U t6, t5, t4
	-[0x80000c1c]:csrrs t5, vxsat, zero
	-[0x80000c20]:sw t6, 704(a4)
Current Store : [0x80000c24] : sw t5, 708(a4) -- Store: [0x80002554]:0x00000000




Last Coverpoint : ['opcode : kmmac.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000c34]:KMMAC_U t6, t5, t4
	-[0x80000c38]:csrrs t5, vxsat, zero
	-[0x80000c3c]:sw t6, 712(a4)
Current Store : [0x80000c40] : sw t5, 716(a4) -- Store: [0x8000255c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80000c50]:KMMAC_U t6, t5, t4
	-[0x80000c54]:csrrs t5, vxsat, zero
	-[0x80000c58]:sw t6, 720(a4)
Current Store : [0x80000c5c] : sw t5, 724(a4) -- Store: [0x80002564]:0x00000000





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

|s.no|        signature         |                                                            coverpoints                                                             |                                                     code                                                      |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmac.u<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br>                                        |[0x80000114]:KMMAC_U s8, s8, s8<br> [0x80000118]:csrrs s8, vxsat, zero<br> [0x8000011c]:sw s8, 0(s4)<br>       |
|   2|[0x80002218]<br>0x0A30751B|- rs1 : x6<br> - rs2 : x6<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br> |[0x80000134]:KMMAC_U s9, t1, t1<br> [0x80000138]:csrrs t1, vxsat, zero<br> [0x8000013c]:sw s9, 8(s4)<br>       |
|   3|[0x80002220]<br>0x76DF5701|- rs1 : x14<br> - rs2 : x22<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br>         |[0x80000150]:KMMAC_U s10, a4, s6<br> [0x80000154]:csrrs a4, vxsat, zero<br> [0x80000158]:sw s10, 16(s4)<br>    |
|   4|[0x80002228]<br>0x7FFFFFFF|- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 0<br>          |[0x8000016c]:KMMAC_U t3, t4, t3<br> [0x80000170]:csrrs t4, vxsat, zero<br> [0x80000174]:sw t3, 24(s4)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x4<br> - rs2 : x16<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 8388608<br>     |[0x80000188]:KMMAC_U tp, tp, a6<br> [0x8000018c]:csrrs tp, vxsat, zero<br> [0x80000190]:sw tp, 32(s4)<br>      |
|   6|[0x80002238]<br>0xFD76DF56|- rs1 : x12<br> - rs2 : x19<br> - rd : x2<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 268435456<br>                          |[0x800001a4]:KMMAC_U sp, a2, s3<br> [0x800001a8]:csrrs a2, vxsat, zero<br> [0x800001ac]:sw sp, 40(s4)<br>      |
|   7|[0x80002240]<br>0xBEFFFFFF|- rs1 : x28<br> - rs2 : x17<br> - rd : x16<br> - rs2_w0_val == -268435457<br>                                                       |[0x800001c0]:KMMAC_U a6, t3, a7<br> [0x800001c4]:csrrs t3, vxsat, zero<br> [0x800001c8]:sw a6, 48(s4)<br>      |
|   8|[0x80002248]<br>0x7FBB6A03|- rs1 : x15<br> - rs2 : x14<br> - rd : x3<br> - rs2_w0_val == -134217729<br>                                                        |[0x800001e0]:KMMAC_U gp, a5, a4<br> [0x800001e4]:csrrs a5, vxsat, zero<br> [0x800001e8]:sw gp, 56(s4)<br>      |
|   9|[0x80002250]<br>0xBB6FAB7F|- rs1 : x18<br> - rs2 : x25<br> - rd : x27<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 2<br>                                  |[0x800001fc]:KMMAC_U s11, s2, s9<br> [0x80000200]:csrrs s2, vxsat, zero<br> [0x80000204]:sw s11, 64(s4)<br>    |
|  10|[0x80002258]<br>0xEFFFFFFF|- rs1 : x27<br> - rs2 : x9<br> - rd : x17<br> - rs2_w0_val == -33554433<br>                                                         |[0x80000218]:KMMAC_U a7, s11, s1<br> [0x8000021c]:csrrs s11, vxsat, zero<br> [0x80000220]:sw a7, 72(s4)<br>    |
|  11|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x15<br> - rs2_w0_val == -16777217<br>                                                         |[0x80000234]:KMMAC_U a5, zero, a1<br> [0x80000238]:csrrs zero, vxsat, zero<br> [0x8000023c]:sw a5, 80(s4)<br>  |
|  12|[0x80002268]<br>0xEADFEEDB|- rs1 : x30<br> - rs2 : x15<br> - rd : x13<br> - rs2_w0_val == -8388609<br>                                                         |[0x80000250]:KMMAC_U a3, t5, a5<br> [0x80000254]:csrrs t5, vxsat, zero<br> [0x80000258]:sw a3, 88(s4)<br>      |
|  13|[0x80002270]<br>0xF7FFFFFF|- rs1 : x16<br> - rs2 : x8<br> - rd : x14<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == -5<br>                                   |[0x8000026c]:KMMAC_U a4, a6, fp<br> [0x80000270]:csrrs a6, vxsat, zero<br> [0x80000274]:sw a4, 96(s4)<br>      |
|  14|[0x80002278]<br>0x00000000|- rs1 : x10<br> - rs2 : x3<br> - rd : x0<br> - rs2_w0_val == -2097153<br>                                                           |[0x80000288]:KMMAC_U zero, a0, gp<br> [0x8000028c]:csrrs a0, vxsat, zero<br> [0x80000290]:sw zero, 104(s4)<br> |
|  15|[0x80002280]<br>0xDFF7FFFF|- rs1 : x5<br> - rs2 : x1<br> - rd : x19<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 2147483647<br>                            |[0x800002a8]:KMMAC_U s3, t0, ra<br> [0x800002ac]:csrrs t0, vxsat, zero<br> [0x800002b0]:sw s3, 112(s4)<br>     |
|  16|[0x80002288]<br>0xFE00000F|- rs1 : x21<br> - rs2 : x7<br> - rd : x9<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -131073<br>                                |[0x800002c8]:KMMAC_U s1, s5, t2<br> [0x800002cc]:csrrs s5, vxsat, zero<br> [0x800002d0]:sw s1, 120(s4)<br>     |
|  17|[0x80002290]<br>0x5553FFFF|- rs1 : x9<br> - rs2 : x5<br> - rd : x22<br> - rs2_w0_val == -262145<br>                                                            |[0x800002f0]:KMMAC_U s6, s1, t0<br> [0x800002f4]:csrrs s1, vxsat, zero<br> [0x800002f8]:sw s6, 0(a4)<br>       |
|  18|[0x80002298]<br>0x00000000|- rs1 : x13<br> - rs2 : x18<br> - rd : x12<br> - rs2_w0_val == -131073<br>                                                          |[0x8000030c]:KMMAC_U a2, a3, s2<br> [0x80000310]:csrrs a3, vxsat, zero<br> [0x80000314]:sw a2, 8(a4)<br>       |
|  19|[0x800022a0]<br>0xFFC007FF|- rs1 : x22<br> - rs2 : x12<br> - rd : x8<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -134217729<br>                             |[0x8000032c]:KMMAC_U fp, s6, a2<br> [0x80000330]:csrrs s6, vxsat, zero<br> [0x80000334]:sw fp, 16(a4)<br>      |
|  20|[0x800022a8]<br>0xFEFFFFFF|- rs1 : x7<br> - rs2 : x20<br> - rd : x11<br> - rs2_w0_val == -32769<br> - rs1_w0_val == 32768<br>                                  |[0x80000348]:KMMAC_U a1, t2, s4<br> [0x8000034c]:csrrs t2, vxsat, zero<br> [0x80000350]:sw a1, 24(a4)<br>      |
|  21|[0x800022b0]<br>0xFFFF8001|- rs1 : x23<br> - rs2 : x30<br> - rd : x20<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -524289<br>                               |[0x80000368]:KMMAC_U s4, s7, t5<br> [0x8000036c]:csrrs s7, vxsat, zero<br> [0x80000370]:sw s4, 32(a4)<br>      |
|  22|[0x800022b8]<br>0xFFFFF000|- rs1 : x2<br> - rs2 : x23<br> - rd : x10<br> - rs2_w0_val == -8193<br>                                                             |[0x80000388]:KMMAC_U a0, sp, s7<br> [0x8000038c]:csrrs sp, vxsat, zero<br> [0x80000390]:sw a0, 40(a4)<br>      |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x29<br> - rs2_w0_val == 0<br>                                                                 |[0x800003a4]:KMMAC_U t4, s9, zero<br> [0x800003a8]:csrrs s9, vxsat, zero<br> [0x800003ac]:sw t4, 48(a4)<br>    |
|  24|[0x800022c8]<br>0xFFFFBFFF|- rs1 : x8<br> - rs2 : x13<br> - rd : x30<br> - rs2_w0_val == -2049<br>                                                             |[0x800003c0]:KMMAC_U t5, fp, a3<br> [0x800003c4]:csrrs fp, vxsat, zero<br> [0x800003c8]:sw t5, 56(a4)<br>      |
|  25|[0x800022d0]<br>0xFFFDFFFF|- rs1 : x17<br> - rs2 : x26<br> - rd : x18<br> - rs2_w0_val == -1025<br> - rs1_w0_val == -9<br>                                     |[0x800003d8]:KMMAC_U s2, a7, s10<br> [0x800003dc]:csrrs a7, vxsat, zero<br> [0x800003e0]:sw s2, 64(a4)<br>     |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x3<br> - rs2 : x29<br> - rd : x7<br> - rs2_w0_val == -513<br>                                                               |[0x800003f4]:KMMAC_U t2, gp, t4<br> [0x800003f8]:csrrs gp, vxsat, zero<br> [0x800003fc]:sw t2, 72(a4)<br>      |
|  27|[0x800022e0]<br>0xFFEFFFF7|- rs1 : x20<br> - rs2 : x2<br> - rd : x1<br> - rs2_w0_val == -257<br> - rs1_w0_val == 134217728<br>                                 |[0x8000040c]:KMMAC_U ra, s4, sp<br> [0x80000410]:csrrs s4, vxsat, zero<br> [0x80000414]:sw ra, 80(a4)<br>      |
|  28|[0x800022e8]<br>0xFBB6FAB7|- rs1 : x1<br> - rs2 : x21<br> - rd : x31<br> - rs2_w0_val == -129<br>                                                              |[0x80000428]:KMMAC_U t6, ra, s5<br> [0x8000042c]:csrrs ra, vxsat, zero<br> [0x80000430]:sw t6, 88(a4)<br>      |
|  29|[0x800022f0]<br>0xFFFFFFE6|- rs1 : x31<br> - rs2 : x10<br> - rd : x6<br> - rs2_w0_val == -65<br>                                                               |[0x80000444]:KMMAC_U t1, t6, a0<br> [0x80000448]:csrrs t6, vxsat, zero<br> [0x8000044c]:sw t1, 96(a4)<br>      |
|  30|[0x800022f8]<br>0xFFFFFF7F|- rs1 : x19<br> - rs2 : x31<br> - rd : x21<br> - rs2_w0_val == -33<br>                                                              |[0x80000460]:KMMAC_U s5, s3, t6<br> [0x80000464]:csrrs s3, vxsat, zero<br> [0x80000468]:sw s5, 104(a4)<br>     |
|  31|[0x80002300]<br>0xFFFFDFFF|- rs1 : x11<br> - rs2 : x4<br> - rd : x23<br> - rs2_w0_val == -17<br> - rs1_w0_val == 67108864<br>                                  |[0x80000478]:KMMAC_U s7, a1, tp<br> [0x8000047c]:csrrs a1, vxsat, zero<br> [0x80000480]:sw s7, 112(a4)<br>     |
|  32|[0x80002308]<br>0xFFFBFFFD|- rs1 : x26<br> - rs2 : x27<br> - rd : x5<br> - rs2_w0_val == -9<br>                                                                |[0x80000494]:KMMAC_U t0, s10, s11<br> [0x80000498]:csrrs s10, vxsat, zero<br> [0x8000049c]:sw t0, 120(a4)<br>  |
|  33|[0x80002310]<br>0xFFFFFFDF|- rs2_w0_val == -5<br> - rs1_w0_val == 4194304<br>                                                                                  |[0x800004ac]:KMMAC_U t6, t5, t4<br> [0x800004b0]:csrrs t5, vxsat, zero<br> [0x800004b4]:sw t6, 128(a4)<br>     |
|  34|[0x80002318]<br>0xFFFFFFDF|- rs2_w0_val == -3<br> - rs1_w0_val == 65536<br>                                                                                    |[0x800004c4]:KMMAC_U t6, t5, t4<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 136(a4)<br>     |
|  35|[0x80002320]<br>0xFFFFFFDF|- rs2_w0_val == -2<br> - rs1_w0_val == 4<br>                                                                                        |[0x800004dc]:KMMAC_U t6, t5, t4<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 144(a4)<br>     |
|  36|[0x80002328]<br>0x1FFFFFE0|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -1073741825<br>                                                                     |[0x800004f8]:KMMAC_U t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 152(a4)<br>     |
|  37|[0x80002330]<br>0x1FBFFFE0|- rs2_w0_val == 1073741824<br> - rs1_w0_val == -16777217<br>                                                                        |[0x80000514]:KMMAC_U t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 160(a4)<br>     |
|  38|[0x80002338]<br>0x1EBFFFE0|- rs2_w0_val == 536870912<br>                                                                                                       |[0x80000530]:KMMAC_U t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 168(a4)<br>     |
|  39|[0x80002340]<br>0x1EDFFFE0|- rs2_w0_val == 268435456<br> - rs1_w0_val == 33554432<br>                                                                          |[0x80000548]:KMMAC_U t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 176(a4)<br>     |
|  40|[0x80002348]<br>0x1CDFFFE0|- rs2_w0_val == 134217728<br>                                                                                                       |[0x80000564]:KMMAC_U t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 184(a4)<br>     |
|  41|[0x80002350]<br>0x1CE002B4|- rs2_w0_val == 67108864<br>                                                                                                        |[0x80000580]:KMMAC_U t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 192(a4)<br>     |
|  42|[0x80002358]<br>0x1CE022B4|- rs2_w0_val == 33554432<br> - rs1_w0_val == 1048576<br>                                                                            |[0x80000598]:KMMAC_U t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 200(a4)<br>     |
|  43|[0x80002360]<br>0x1CE022B4|- rs2_w0_val == 16777216<br>                                                                                                        |[0x800005b0]:KMMAC_U t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 208(a4)<br>     |
|  44|[0x80002368]<br>0x1CE022B4|- rs2_w0_val == 8388608<br>                                                                                                         |[0x800005c8]:KMMAC_U t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 216(a4)<br>     |
|  45|[0x80002370]<br>0x1CF022B4|- rs2_w0_val == 4194304<br>                                                                                                         |[0x800005e4]:KMMAC_U t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 224(a4)<br>     |
|  46|[0x80002378]<br>0x1CF022BC|- rs2_w0_val == 2097152<br> - rs1_w0_val == 16384<br>                                                                               |[0x800005fc]:KMMAC_U t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 232(a4)<br>     |
|  47|[0x80002380]<br>0x1CF022CC|- rs2_w0_val == 1048576<br>                                                                                                         |[0x80000614]:KMMAC_U t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 240(a4)<br>     |
|  48|[0x80002388]<br>0x1CEE22CC|- rs2_w0_val == 524288<br>                                                                                                          |[0x8000062c]:KMMAC_U t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 248(a4)<br>     |
|  49|[0x80002390]<br>0x1CEE22CC|- rs2_w0_val == 262144<br> - rs1_w0_val == 128<br>                                                                                  |[0x80000644]:KMMAC_U t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 256(a4)<br>     |
|  50|[0x80002398]<br>0x1CEE22D4|- rs2_w0_val == 131072<br> - rs1_w0_val == 262144<br>                                                                               |[0x8000065c]:KMMAC_U t6, t5, t4<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 264(a4)<br>     |
|  51|[0x800023a0]<br>0x1CEE22D4|- rs2_w0_val == 512<br> - rs1_w0_val == 32<br>                                                                                      |[0x80000674]:KMMAC_U t6, t5, t4<br> [0x80000678]:csrrs t5, vxsat, zero<br> [0x8000067c]:sw t6, 272(a4)<br>     |
|  52|[0x800023a8]<br>0x1CEE22D4|- rs1_w0_val == 16<br>                                                                                                              |[0x8000068c]:KMMAC_U t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 280(a4)<br>     |
|  53|[0x800023b0]<br>0x1CEE22D4|- rs2_w0_val == 4<br> - rs1_w0_val == 8<br>                                                                                         |[0x800006a4]:KMMAC_U t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 288(a4)<br>     |
|  54|[0x800023b8]<br>0x1CEE22D4|- rs1_w0_val == 1<br>                                                                                                               |[0x800006c0]:KMMAC_U t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 296(a4)<br>     |
|  55|[0x800023c0]<br>0x1CEE22D4|- rs1_w0_val == -1<br>                                                                                                              |[0x800006d8]:KMMAC_U t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 304(a4)<br>     |
|  56|[0x800023c8]<br>0x1CEE22D4|- rs2_w0_val == 65536<br> - rs1_w0_val == -129<br>                                                                                  |[0x800006f0]:KMMAC_U t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 312(a4)<br>     |
|  57|[0x800023d0]<br>0x1CEE22D4|- rs2_w0_val == 32768<br>                                                                                                           |[0x80000708]:KMMAC_U t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 320(a4)<br>     |
|  58|[0x800023d8]<br>0x1CEE22D4|- rs2_w0_val == 16384<br> - rs1_w0_val == 1024<br>                                                                                  |[0x80000720]:KMMAC_U t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 328(a4)<br>     |
|  59|[0x800023e0]<br>0x1CEE20D4|- rs2_w0_val == 8192<br> - rs1_w0_val == -268435457<br>                                                                             |[0x8000073c]:KMMAC_U t6, t5, t4<br> [0x80000740]:csrrs t5, vxsat, zero<br> [0x80000744]:sw t6, 336(a4)<br>     |
|  60|[0x800023e8]<br>0x1CEE20D4|- rs2_w0_val == 4096<br>                                                                                                            |[0x80000754]:KMMAC_U t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 344(a4)<br>     |
|  61|[0x800023f0]<br>0x1CEE2407|- rs2_w0_val == 2048<br>                                                                                                            |[0x80000774]:KMMAC_U t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 352(a4)<br>     |
|  62|[0x800023f8]<br>0x1CEE2407|- rs2_w0_val == 1024<br>                                                                                                            |[0x8000078c]:KMMAC_U t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 360(a4)<br>     |
|  63|[0x80002400]<br>0x1CEE243A|- rs2_w0_val == 256<br>                                                                                                             |[0x800007a8]:KMMAC_U t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 368(a4)<br>     |
|  64|[0x80002408]<br>0x1CEE243A|- rs2_w0_val == 128<br>                                                                                                             |[0x800007c4]:KMMAC_U t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 376(a4)<br>     |
|  65|[0x80002410]<br>0x1CEE243A|- rs2_w0_val == 64<br> - rs1_w0_val == -257<br>                                                                                     |[0x800007dc]:KMMAC_U t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 384(a4)<br>     |
|  66|[0x80002418]<br>0x1CEE243A|- rs2_w0_val == 32<br>                                                                                                              |[0x800007f4]:KMMAC_U t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 392(a4)<br>     |
|  67|[0x80002420]<br>0x1CEE2436|- rs2_w0_val == 16<br>                                                                                                              |[0x80000810]:KMMAC_U t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 400(a4)<br>     |
|  68|[0x80002428]<br>0x1CEE2436|- rs2_w0_val == 8<br>                                                                                                               |[0x80000828]:KMMAC_U t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 408(a4)<br>     |
|  69|[0x80002430]<br>0x1CEE2436|- rs2_w0_val == 2<br> - rs1_w0_val == -536870913<br>                                                                                |[0x80000844]:KMMAC_U t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 416(a4)<br>     |
|  70|[0x80002438]<br>0x1CEE2436|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 1<br>                                                                               |[0x8000085c]:KMMAC_U t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 424(a4)<br>     |
|  71|[0x80002448]<br>0x1CEE2436|- rs2_w0_val == -1<br> - rs1_w0_val == -65<br>                                                                                      |[0x80000890]:KMMAC_U t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 440(a4)<br>     |
|  72|[0x80002458]<br>0x1D98CEE0|- rs1_w0_val == 1431655765<br>                                                                                                      |[0x800008c8]:KMMAC_U t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 456(a4)<br>     |
|  73|[0x80002460]<br>0x1D98CEE1|- rs1_w0_val == -67108865<br>                                                                                                       |[0x800008e4]:KMMAC_U t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 464(a4)<br>     |
|  74|[0x80002468]<br>0x1D98CD77|- rs1_w0_val == -33554433<br>                                                                                                       |[0x80000904]:KMMAC_U t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 472(a4)<br>     |
|  75|[0x80002470]<br>0x1D98CD76|- rs1_w0_val == -4194305<br>                                                                                                        |[0x80000920]:KMMAC_U t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 480(a4)<br>     |
|  76|[0x80002478]<br>0x1D98CD86|- rs1_w0_val == -2097153<br>                                                                                                        |[0x80000940]:KMMAC_U t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 488(a4)<br>     |
|  77|[0x80002480]<br>0x1D98C986|- rs1_w0_val == -1048577<br>                                                                                                        |[0x8000095c]:KMMAC_U t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 496(a4)<br>     |
|  78|[0x80002488]<br>0x1D972FEC|- rs1_w0_val == -262145<br>                                                                                                         |[0x8000097c]:KMMAC_U t6, t5, t4<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sw t6, 504(a4)<br>     |
|  79|[0x80002490]<br>0x1D96DA96|- rs1_w0_val == -65537<br>                                                                                                          |[0x8000099c]:KMMAC_U t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 512(a4)<br>     |
|  80|[0x80002498]<br>0x1D96DA96|- rs1_w0_val == -32769<br>                                                                                                          |[0x800009b8]:KMMAC_U t6, t5, t4<br> [0x800009bc]:csrrs t5, vxsat, zero<br> [0x800009c0]:sw t6, 520(a4)<br>     |
|  81|[0x800024a0]<br>0x1D96DA96|- rs1_w0_val == -16385<br>                                                                                                          |[0x800009d4]:KMMAC_U t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 528(a4)<br>     |
|  82|[0x800024a8]<br>0x1D96D696|- rs1_w0_val == -8193<br>                                                                                                           |[0x800009f0]:KMMAC_U t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 536(a4)<br>     |
|  83|[0x800024b0]<br>0x1D96DBEC|- rs1_w0_val == -4097<br>                                                                                                           |[0x80000a10]:KMMAC_U t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 544(a4)<br>     |
|  84|[0x800024b8]<br>0x1D96DBEC|- rs1_w0_val == -2049<br>                                                                                                           |[0x80000a2c]:KMMAC_U t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 552(a4)<br>     |
|  85|[0x800024c0]<br>0x1D96DBEC|- rs1_w0_val == -1025<br>                                                                                                           |[0x80000a44]:KMMAC_U t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 560(a4)<br>     |
|  86|[0x800024c8]<br>0x1D96DBEC|- rs1_w0_val == -513<br>                                                                                                            |[0x80000a60]:KMMAC_U t6, t5, t4<br> [0x80000a64]:csrrs t5, vxsat, zero<br> [0x80000a68]:sw t6, 568(a4)<br>     |
|  87|[0x800024d0]<br>0x1D96DBEC|- rs1_w0_val == -33<br>                                                                                                             |[0x80000a7c]:KMMAC_U t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 576(a4)<br>     |
|  88|[0x800024d8]<br>0x1D96DBEC|- rs1_w0_val == -17<br>                                                                                                             |[0x80000a94]:KMMAC_U t6, t5, t4<br> [0x80000a98]:csrrs t5, vxsat, zero<br> [0x80000a9c]:sw t6, 584(a4)<br>     |
|  89|[0x800024e0]<br>0x1D96DBEB|- rs1_w0_val == -3<br>                                                                                                              |[0x80000ab0]:KMMAC_U t6, t5, t4<br> [0x80000ab4]:csrrs t5, vxsat, zero<br> [0x80000ab8]:sw t6, 592(a4)<br>     |
|  90|[0x800024e8]<br>0x1D96DBEB|- rs1_w0_val == -2<br>                                                                                                              |[0x80000acc]:KMMAC_U t6, t5, t4<br> [0x80000ad0]:csrrs t5, vxsat, zero<br> [0x80000ad4]:sw t6, 600(a4)<br>     |
|  91|[0x800024f0]<br>0x2D96DBEB|- rs1_w0_val == 1073741824<br>                                                                                                      |[0x80000ae8]:KMMAC_U t6, t5, t4<br> [0x80000aec]:csrrs t5, vxsat, zero<br> [0x80000af0]:sw t6, 608(a4)<br>     |
|  92|[0x800024f8]<br>0x2D96DBEC|- rs1_w0_val == 536870912<br>                                                                                                       |[0x80000b00]:KMMAC_U t6, t5, t4<br> [0x80000b04]:csrrs t5, vxsat, zero<br> [0x80000b08]:sw t6, 616(a4)<br>     |
|  93|[0x80002500]<br>0x2D96DBEC|- rs1_w0_val == 16777216<br>                                                                                                        |[0x80000b18]:KMMAC_U t6, t5, t4<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sw t6, 624(a4)<br>     |
|  94|[0x80002508]<br>0x2D96DBEC|- rs1_w0_val == 2097152<br>                                                                                                         |[0x80000b30]:KMMAC_U t6, t5, t4<br> [0x80000b34]:csrrs t5, vxsat, zero<br> [0x80000b38]:sw t6, 632(a4)<br>     |
|  95|[0x80002510]<br>0x2D96DBEC|- rs1_w0_val == 524288<br>                                                                                                          |[0x80000b48]:KMMAC_U t6, t5, t4<br> [0x80000b4c]:csrrs t5, vxsat, zero<br> [0x80000b50]:sw t6, 640(a4)<br>     |
|  96|[0x80002518]<br>0x2D96EBEC|- rs1_w0_val == 131072<br>                                                                                                          |[0x80000b60]:KMMAC_U t6, t5, t4<br> [0x80000b64]:csrrs t5, vxsat, zero<br> [0x80000b68]:sw t6, 648(a4)<br>     |
|  97|[0x80002520]<br>0x2D96EBEC|- rs1_w0_val == 8192<br>                                                                                                            |[0x80000b78]:KMMAC_U t6, t5, t4<br> [0x80000b7c]:csrrs t5, vxsat, zero<br> [0x80000b80]:sw t6, 656(a4)<br>     |
|  98|[0x80002528]<br>0x2D96EBEE|- rs1_w0_val == 4096<br>                                                                                                            |[0x80000b90]:KMMAC_U t6, t5, t4<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sw t6, 664(a4)<br>     |
|  99|[0x80002530]<br>0x2D96EBEE|- rs1_w0_val == 2048<br>                                                                                                            |[0x80000bac]:KMMAC_U t6, t5, t4<br> [0x80000bb0]:csrrs t5, vxsat, zero<br> [0x80000bb4]:sw t6, 672(a4)<br>     |
| 100|[0x80002538]<br>0x2D96EBEE|- rs1_w0_val == 256<br>                                                                                                             |[0x80000bc4]:KMMAC_U t6, t5, t4<br> [0x80000bc8]:csrrs t5, vxsat, zero<br> [0x80000bcc]:sw t6, 680(a4)<br>     |
| 101|[0x80002540]<br>0x2D96EBEE|- rs1_w0_val == 64<br>                                                                                                              |[0x80000bdc]:KMMAC_U t6, t5, t4<br> [0x80000be0]:csrrs t5, vxsat, zero<br> [0x80000be4]:sw t6, 688(a4)<br>     |
| 102|[0x80002548]<br>0x2DC19699|- rs1_w0_val == -8388609<br>                                                                                                        |[0x80000bfc]:KMMAC_U t6, t5, t4<br> [0x80000c00]:csrrs t5, vxsat, zero<br> [0x80000c04]:sw t6, 696(a4)<br>     |
| 103|[0x80002550]<br>0x2DC19697|- rs1_w0_val == 512<br>                                                                                                             |[0x80000c18]:KMMAC_U t6, t5, t4<br> [0x80000c1c]:csrrs t5, vxsat, zero<br> [0x80000c20]:sw t6, 704(a4)<br>     |
| 104|[0x80002560]<br>0x2DC19697|- rs2_w0_val == -4097<br>                                                                                                           |[0x80000c50]:KMMAC_U t6, t5, t4<br> [0x80000c54]:csrrs t5, vxsat, zero<br> [0x80000c58]:sw t6, 720(a4)<br>     |
