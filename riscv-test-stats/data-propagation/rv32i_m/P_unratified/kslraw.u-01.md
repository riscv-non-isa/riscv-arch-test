
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000be0')]      |
| SIG_REGION                | [('0x80002210', '0x80002550', '208 words')]      |
| COV_LABELS                | kslraw.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslraw.u-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 206      |
| STAT1                     | 100      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 103     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:KSLRAW_U t6, t5, t4
      [0x80000848]:csrrs t5, vxsat, zero
      [0x8000084c]:sw t6, 320(gp)
 -- Signature Address: 0x80002438 Data: 0xD5555555
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -33554433
      - rs1_w0_val == 2863311530




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b54]:KSLRAW_U t6, t5, t4
      [0x80000b58]:csrrs t5, vxsat, zero
      [0x80000b5c]:sw t6, 552(gp)
 -- Signature Address: 0x80002520 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs2_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba8]:KSLRAW_U t6, t5, t4
      [0x80000bac]:csrrs t5, vxsat, zero
      [0x80000bb0]:sw t6, 576(gp)
 -- Signature Address: 0x80002538 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : kslraw.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -262145
      - rs1_w0_val == 8






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs1_w0_val == 0', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x80000114]:KSLRAW_U s11, s11, s11
	-[0x80000118]:csrrs s11, vxsat, zero
	-[0x8000011c]:sw s11, 0(sp)
Current Store : [0x80000120] : sw s11, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x16', 'rd : x23', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000130]:KSLRAW_U s7, a6, a6
	-[0x80000134]:csrrs a6, vxsat, zero
	-[0x80000138]:sw s7, 8(sp)
Current Store : [0x8000013c] : sw a6, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000014c]:KSLRAW_U s8, s10, s9
	-[0x80000150]:csrrs s10, vxsat, zero
	-[0x80000154]:sw s8, 16(sp)
Current Store : [0x80000158] : sw s10, 20(sp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000168]:KSLRAW_U a7, gp, a7
	-[0x8000016c]:csrrs gp, vxsat, zero
	-[0x80000170]:sw a7, 24(sp)
Current Store : [0x80000174] : sw gp, 28(sp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x7', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000184]:KSLRAW_U t2, t2, s2
	-[0x80000188]:csrrs t2, vxsat, zero
	-[0x8000018c]:sw t2, 32(sp)
Current Store : [0x80000190] : sw t2, 36(sp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x20', 'rd : x31', 'rs2_w0_val == -536870913', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800001a0]:KSLRAW_U t6, s6, s4
	-[0x800001a4]:csrrs s6, vxsat, zero
	-[0x800001a8]:sw t6, 40(sp)
Current Store : [0x800001ac] : sw s6, 44(sp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x1', 'rd : x13', 'rs2_w0_val == -268435457', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800001bc]:KSLRAW_U a3, s5, ra
	-[0x800001c0]:csrrs s5, vxsat, zero
	-[0x800001c4]:sw a3, 48(sp)
Current Store : [0x800001c8] : sw s5, 52(sp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x14', 'rs2_w0_val == -134217729', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800001d8]:KSLRAW_U a4, t1, s8
	-[0x800001dc]:csrrs t1, vxsat, zero
	-[0x800001e0]:sw a4, 56(sp)
Current Store : [0x800001e4] : sw t1, 60(sp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x8', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x800001f8]:KSLRAW_U fp, zero, s1
	-[0x800001fc]:csrrs zero, vxsat, zero
	-[0x80000200]:sw fp, 64(sp)
Current Store : [0x80000204] : sw zero, 68(sp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x4', 'rd : x3', 'rs2_w0_val == -33554433', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000214]:KSLRAW_U gp, a5, tp
	-[0x80000218]:csrrs a5, vxsat, zero
	-[0x8000021c]:sw gp, 72(sp)
Current Store : [0x80000220] : sw a5, 76(sp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x25', 'rs2_w0_val == -16777217', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000230]:KSLRAW_U s9, a2, s10
	-[0x80000234]:csrrs a2, vxsat, zero
	-[0x80000238]:sw s9, 80(sp)
Current Store : [0x8000023c] : sw a2, 84(sp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x18', 'rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x8000024c]:KSLRAW_U s2, s8, s3
	-[0x80000250]:csrrs s8, vxsat, zero
	-[0x80000254]:sw s2, 88(sp)
Current Store : [0x80000258] : sw s8, 92(sp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x16', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000268]:KSLRAW_U a6, a0, a4
	-[0x8000026c]:csrrs a0, vxsat, zero
	-[0x80000270]:sw a6, 96(sp)
Current Store : [0x80000274] : sw a0, 100(sp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x28', 'rd : x4', 'rs2_w0_val == -2097153', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000284]:KSLRAW_U tp, a3, t3
	-[0x80000288]:csrrs a3, vxsat, zero
	-[0x8000028c]:sw tp, 104(sp)
Current Store : [0x80000290] : sw a3, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x26', 'rs2_w0_val == -1048577', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800002a4]:KSLRAW_U s10, t3, t0
	-[0x800002a8]:csrrs t3, vxsat, zero
	-[0x800002ac]:sw s10, 112(sp)
Current Store : [0x800002b0] : sw t3, 116(sp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x22', 'rs2_w0_val == -524289', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800002c8]:KSLRAW_U s6, s7, gp
	-[0x800002cc]:csrrs s7, vxsat, zero
	-[0x800002d0]:sw s6, 0(a6)
Current Store : [0x800002d4] : sw s7, 4(a6) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x0', 'rs2_w0_val == -262145', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800002e4]:KSLRAW_U zero, s2, a3
	-[0x800002e8]:csrrs s2, vxsat, zero
	-[0x800002ec]:sw zero, 8(a6)
Current Store : [0x800002f0] : sw s2, 12(a6) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x12', 'rd : x10', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000300]:KSLRAW_U a0, tp, a2
	-[0x80000304]:csrrs tp, vxsat, zero
	-[0x80000308]:sw a0, 16(a6)
Current Store : [0x8000030c] : sw tp, 20(a6) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x19', 'rs2_w0_val == -65537', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x8000031c]:KSLRAW_U s3, a7, s7
	-[0x80000320]:csrrs a7, vxsat, zero
	-[0x80000324]:sw s3, 24(a6)
Current Store : [0x80000328] : sw a7, 28(a6) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x30', 'rd : x28', 'rs2_w0_val == -32769', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x8000033c]:KSLRAW_U t3, fp, t5
	-[0x80000340]:csrrs fp, vxsat, zero
	-[0x80000344]:sw t3, 32(a6)
Current Store : [0x80000348] : sw fp, 36(a6) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rd : x12', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000358]:KSLRAW_U a2, s4, t1
	-[0x8000035c]:csrrs s4, vxsat, zero
	-[0x80000360]:sw a2, 40(a6)
Current Store : [0x80000364] : sw s4, 44(a6) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x15', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000374]:KSLRAW_U a5, a1, zero
	-[0x80000378]:csrrs a1, vxsat, zero
	-[0x8000037c]:sw a5, 48(a6)
Current Store : [0x80000380] : sw a1, 52(a6) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x30', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80000390]:KSLRAW_U t5, t0, a1
	-[0x80000394]:csrrs t0, vxsat, zero
	-[0x80000398]:sw t5, 56(a6)
Current Store : [0x8000039c] : sw t0, 60(a6) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x9', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003ac]:KSLRAW_U s1, ra, s5
	-[0x800003b0]:csrrs ra, vxsat, zero
	-[0x800003b4]:sw s1, 64(a6)
Current Store : [0x800003b8] : sw ra, 68(a6) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x5', 'rs2_w0_val == -1025', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800003c4]:KSLRAW_U t0, s9, fp
	-[0x800003c8]:csrrs s9, vxsat, zero
	-[0x800003cc]:sw t0, 72(a6)
Current Store : [0x800003d0] : sw s9, 76(a6) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x29', 'rs2_w0_val == -513', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800003e0]:KSLRAW_U t4, t5, t2
	-[0x800003e4]:csrrs t5, vxsat, zero
	-[0x800003e8]:sw t4, 80(a6)
Current Store : [0x800003ec] : sw t5, 84(a6) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x22', 'rd : x20', 'rs2_w0_val == -257', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800003f8]:KSLRAW_U s4, s1, s6
	-[0x800003fc]:csrrs s1, vxsat, zero
	-[0x80000400]:sw s4, 88(a6)
Current Store : [0x80000404] : sw s1, 92(a6) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x31', 'rd : x21', 'rs2_w0_val == -129', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000410]:KSLRAW_U s5, a4, t6
	-[0x80000414]:csrrs a4, vxsat, zero
	-[0x80000418]:sw s5, 96(a6)
Current Store : [0x8000041c] : sw a4, 100(a6) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x2', 'rs2_w0_val == -65', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x8000042c]:KSLRAW_U sp, s3, a0
	-[0x80000430]:csrrs s3, vxsat, zero
	-[0x80000434]:sw sp, 104(a6)
Current Store : [0x80000438] : sw s3, 108(a6) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x15', 'rd : x1', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x8000044c]:KSLRAW_U ra, sp, a5
	-[0x80000450]:csrrs sp, vxsat, zero
	-[0x80000454]:sw ra, 0(gp)
Current Store : [0x80000458] : sw sp, 4(gp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x11', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x80000464]:KSLRAW_U a1, t4, sp
	-[0x80000468]:csrrs t4, vxsat, zero
	-[0x8000046c]:sw a1, 8(gp)
Current Store : [0x80000470] : sw t4, 12(gp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x29', 'rd : x6', 'rs2_w0_val == -9', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000480]:KSLRAW_U t1, t6, t4
	-[0x80000484]:csrrs t6, vxsat, zero
	-[0x80000488]:sw t1, 16(gp)
Current Store : [0x8000048c] : sw t6, 20(gp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80000498]:KSLRAW_U t6, t5, t4
	-[0x8000049c]:csrrs t5, vxsat, zero
	-[0x800004a0]:sw t6, 24(gp)
Current Store : [0x800004a4] : sw t5, 28(gp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x800004b4]:KSLRAW_U t6, t5, t4
	-[0x800004b8]:csrrs t5, vxsat, zero
	-[0x800004bc]:sw t6, 32(gp)
Current Store : [0x800004c0] : sw t5, 36(gp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800004cc]:KSLRAW_U t6, t5, t4
	-[0x800004d0]:csrrs t5, vxsat, zero
	-[0x800004d4]:sw t6, 40(gp)
Current Store : [0x800004d8] : sw t5, 44(gp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800004e4]:KSLRAW_U t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 48(gp)
Current Store : [0x800004f0] : sw t5, 52(gp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800004fc]:KSLRAW_U t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 56(gp)
Current Store : [0x80000508] : sw t5, 60(gp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000514]:KSLRAW_U t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 64(gp)
Current Store : [0x80000520] : sw t5, 68(gp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000052c]:KSLRAW_U t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 72(gp)
Current Store : [0x80000538] : sw t5, 76(gp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000548]:KSLRAW_U t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 80(gp)
Current Store : [0x80000554] : sw t5, 84(gp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000564]:KSLRAW_U t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 88(gp)
Current Store : [0x80000570] : sw t5, 92(gp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000057c]:KSLRAW_U t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 96(gp)
Current Store : [0x80000588] : sw t5, 100(gp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000594]:KSLRAW_U t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 104(gp)
Current Store : [0x800005a0] : sw t5, 108(gp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005ac]:KSLRAW_U t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 112(gp)
Current Store : [0x800005b8] : sw t5, 116(gp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005c8]:KSLRAW_U t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 120(gp)
Current Store : [0x800005d4] : sw t5, 124(gp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800005e0]:KSLRAW_U t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 128(gp)
Current Store : [0x800005ec] : sw t5, 132(gp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800005f8]:KSLRAW_U t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 136(gp)
Current Store : [0x80000604] : sw t5, 140(gp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000610]:KSLRAW_U t6, t5, t4
	-[0x80000614]:csrrs t5, vxsat, zero
	-[0x80000618]:sw t6, 144(gp)
Current Store : [0x8000061c] : sw t5, 148(gp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000628]:KSLRAW_U t6, t5, t4
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 152(gp)
Current Store : [0x80000634] : sw t5, 156(gp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000640]:KSLRAW_U t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 160(gp)
Current Store : [0x8000064c] : sw t5, 164(gp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000658]:KSLRAW_U t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 168(gp)
Current Store : [0x80000664] : sw t5, 172(gp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000670]:KSLRAW_U t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 176(gp)
Current Store : [0x8000067c] : sw t5, 180(gp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x8000068c]:KSLRAW_U t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 184(gp)
Current Store : [0x80000698] : sw t5, 188(gp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800006a4]:KSLRAW_U t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 192(gp)
Current Store : [0x800006b0] : sw t5, 196(gp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800006c0]:KSLRAW_U t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 200(gp)
Current Store : [0x800006cc] : sw t5, 204(gp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800006dc]:KSLRAW_U t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 208(gp)
Current Store : [0x800006e8] : sw t5, 212(gp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800006fc]:KSLRAW_U t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 216(gp)
Current Store : [0x80000708] : sw t5, 220(gp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000714]:KSLRAW_U t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 224(gp)
Current Store : [0x80000720] : sw t5, 228(gp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x8000072c]:KSLRAW_U t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 232(gp)
Current Store : [0x80000738] : sw t5, 236(gp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000744]:KSLRAW_U t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 240(gp)
Current Store : [0x80000750] : sw t5, 244(gp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x8000075c]:KSLRAW_U t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 248(gp)
Current Store : [0x80000768] : sw t5, 252(gp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000774]:KSLRAW_U t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 256(gp)
Current Store : [0x80000780] : sw t5, 260(gp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000078c]:KSLRAW_U t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 264(gp)
Current Store : [0x80000798] : sw t5, 268(gp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x800007a4]:KSLRAW_U t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 272(gp)
Current Store : [0x800007b0] : sw t5, 276(gp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800007bc]:KSLRAW_U t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 280(gp)
Current Store : [0x800007c8] : sw t5, 284(gp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800007d4]:KSLRAW_U t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 288(gp)
Current Store : [0x800007e0] : sw t5, 292(gp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800007f0]:KSLRAW_U t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 296(gp)
Current Store : [0x800007fc] : sw t5, 300(gp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000808]:KSLRAW_U t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 304(gp)
Current Store : [0x80000814] : sw t5, 308(gp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000824]:KSLRAW_U t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 312(gp)
Current Store : [0x80000830] : sw t5, 316(gp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -33554433', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000844]:KSLRAW_U t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 320(gp)
Current Store : [0x80000850] : sw t5, 324(gp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000864]:KSLRAW_U t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 328(gp)
Current Store : [0x80000870] : sw t5, 332(gp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000880]:KSLRAW_U t6, t5, t4
	-[0x80000884]:csrrs t5, vxsat, zero
	-[0x80000888]:sw t6, 336(gp)
Current Store : [0x8000088c] : sw t5, 340(gp) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x8000089c]:KSLRAW_U t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 344(gp)
Current Store : [0x800008a8] : sw t5, 348(gp) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800008b8]:KSLRAW_U t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 352(gp)
Current Store : [0x800008c4] : sw t5, 356(gp) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800008d4]:KSLRAW_U t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 360(gp)
Current Store : [0x800008e0] : sw t5, 364(gp) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800008f4]:KSLRAW_U t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 368(gp)
Current Store : [0x80000900] : sw t5, 372(gp) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000910]:KSLRAW_U t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 376(gp)
Current Store : [0x8000091c] : sw t5, 380(gp) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x8000092c]:KSLRAW_U t6, t5, t4
	-[0x80000930]:csrrs t5, vxsat, zero
	-[0x80000934]:sw t6, 384(gp)
Current Store : [0x80000938] : sw t5, 388(gp) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80000948]:KSLRAW_U t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 392(gp)
Current Store : [0x80000954] : sw t5, 396(gp) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000968]:KSLRAW_U t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 400(gp)
Current Store : [0x80000974] : sw t5, 404(gp) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000988]:KSLRAW_U t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 408(gp)
Current Store : [0x80000994] : sw t5, 412(gp) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800009a8]:KSLRAW_U t6, t5, t4
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sw t6, 416(gp)
Current Store : [0x800009b4] : sw t5, 420(gp) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800009c4]:KSLRAW_U t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 424(gp)
Current Store : [0x800009d0] : sw t5, 428(gp) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800009dc]:KSLRAW_U t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 432(gp)
Current Store : [0x800009e8] : sw t5, 436(gp) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800009f8]:KSLRAW_U t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 440(gp)
Current Store : [0x80000a04] : sw t5, 444(gp) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000a14]:KSLRAW_U t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 448(gp)
Current Store : [0x80000a20] : sw t5, 452(gp) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a2c]:KSLRAW_U t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 456(gp)
Current Store : [0x80000a38] : sw t5, 460(gp) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000a44]:KSLRAW_U t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 464(gp)
Current Store : [0x80000a50] : sw t5, 468(gp) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000a5c]:KSLRAW_U t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 472(gp)
Current Store : [0x80000a68] : sw t5, 476(gp) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000a74]:KSLRAW_U t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 480(gp)
Current Store : [0x80000a80] : sw t5, 484(gp) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000a8c]:KSLRAW_U t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 488(gp)
Current Store : [0x80000a98] : sw t5, 492(gp) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000aa8]:KSLRAW_U t6, t5, t4
	-[0x80000aac]:csrrs t5, vxsat, zero
	-[0x80000ab0]:sw t6, 496(gp)
Current Store : [0x80000ab4] : sw t5, 500(gp) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ac0]:KSLRAW_U t6, t5, t4
	-[0x80000ac4]:csrrs t5, vxsat, zero
	-[0x80000ac8]:sw t6, 504(gp)
Current Store : [0x80000acc] : sw t5, 508(gp) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000ad8]:KSLRAW_U t6, t5, t4
	-[0x80000adc]:csrrs t5, vxsat, zero
	-[0x80000ae0]:sw t6, 512(gp)
Current Store : [0x80000ae4] : sw t5, 516(gp) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000af4]:KSLRAW_U t6, t5, t4
	-[0x80000af8]:csrrs t5, vxsat, zero
	-[0x80000afc]:sw t6, 520(gp)
Current Store : [0x80000b00] : sw t5, 524(gp) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000b0c]:KSLRAW_U t6, t5, t4
	-[0x80000b10]:csrrs t5, vxsat, zero
	-[0x80000b14]:sw t6, 528(gp)
Current Store : [0x80000b18] : sw t5, 532(gp) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000b24]:KSLRAW_U t6, t5, t4
	-[0x80000b28]:csrrs t5, vxsat, zero
	-[0x80000b2c]:sw t6, 536(gp)
Current Store : [0x80000b30] : sw t5, 540(gp) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000b3c]:KSLRAW_U t6, t5, t4
	-[0x80000b40]:csrrs t5, vxsat, zero
	-[0x80000b44]:sw t6, 544(gp)
Current Store : [0x80000b48] : sw t5, 548(gp) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x80000b54]:KSLRAW_U t6, t5, t4
	-[0x80000b58]:csrrs t5, vxsat, zero
	-[0x80000b5c]:sw t6, 552(gp)
Current Store : [0x80000b60] : sw t5, 556(gp) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000b70]:KSLRAW_U t6, t5, t4
	-[0x80000b74]:csrrs t5, vxsat, zero
	-[0x80000b78]:sw t6, 560(gp)
Current Store : [0x80000b7c] : sw t5, 564(gp) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000b8c]:KSLRAW_U t6, t5, t4
	-[0x80000b90]:csrrs t5, vxsat, zero
	-[0x80000b94]:sw t6, 568(gp)
Current Store : [0x80000b98] : sw t5, 572(gp) -- Store: [0x80002534]:0x00000001




Last Coverpoint : ['opcode : kslraw.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -262145', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000ba8]:KSLRAW_U t6, t5, t4
	-[0x80000bac]:csrrs t5, vxsat, zero
	-[0x80000bb0]:sw t6, 576(gp)
Current Store : [0x80000bb4] : sw t5, 580(gp) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000bc4]:KSLRAW_U t6, t5, t4
	-[0x80000bc8]:csrrs t5, vxsat, zero
	-[0x80000bcc]:sw t6, 584(gp)
Current Store : [0x80000bd0] : sw t5, 588(gp) -- Store: [0x80002544]:0x00000001





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

|s.no|        signature         |                                                                      coverpoints                                                                       |                                                     code                                                      |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kslraw.u<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_w0_val == 0<br> - rs2_w0_val == 0<br>               |[0x80000114]:KSLRAW_U s11, s11, s11<br> [0x80000118]:csrrs s11, vxsat, zero<br> [0x8000011c]:sw s11, 0(sp)<br> |
|   2|[0x80002218]<br>0xFFFFFEAB|- rs1 : x16<br> - rs2 : x16<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == 2863311530<br>                    |[0x80000130]:KSLRAW_U s7, a6, a6<br> [0x80000134]:csrrs a6, vxsat, zero<br> [0x80000138]:sw s7, 8(sp)<br>      |
|   3|[0x80002220]<br>0x7FFFFFFF|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 4194304<br> |[0x8000014c]:KSLRAW_U s8, s10, s9<br> [0x80000150]:csrrs s10, vxsat, zero<br> [0x80000154]:sw s8, 16(sp)<br>   |
|   4|[0x80002228]<br>0x01000000|- rs1 : x3<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 33554432<br>                        |[0x80000168]:KSLRAW_U a7, gp, a7<br> [0x8000016c]:csrrs gp, vxsat, zero<br> [0x80000170]:sw a7, 24(sp)<br>     |
|   5|[0x80002230]<br>0x00000001|- rs1 : x7<br> - rs2 : x18<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 2097152<br>                         |[0x80000184]:KSLRAW_U t2, t2, s2<br> [0x80000188]:csrrs t2, vxsat, zero<br> [0x8000018c]:sw t2, 32(sp)<br>     |
|   6|[0x80002238]<br>0x02000000|- rs1 : x22<br> - rs2 : x20<br> - rd : x31<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 67108864<br>                                              |[0x800001a0]:KSLRAW_U t6, s6, s4<br> [0x800001a4]:csrrs s6, vxsat, zero<br> [0x800001a8]:sw t6, 40(sp)<br>     |
|   7|[0x80002240]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x1<br> - rd : x13<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 4294967294<br>                                             |[0x800001bc]:KSLRAW_U a3, s5, ra<br> [0x800001c0]:csrrs s5, vxsat, zero<br> [0x800001c4]:sw a3, 48(sp)<br>     |
|   8|[0x80002248]<br>0xFFFFFF80|- rs1 : x6<br> - rs2 : x24<br> - rd : x14<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 4294967039<br>                                             |[0x800001d8]:KSLRAW_U a4, t1, s8<br> [0x800001dc]:csrrs t1, vxsat, zero<br> [0x800001e0]:sw a4, 56(sp)<br>     |
|   9|[0x80002250]<br>0x00000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x8<br> - rs2_w0_val == -67108865<br>                                                                               |[0x800001f8]:KSLRAW_U fp, zero, s1<br> [0x800001fc]:csrrs zero, vxsat, zero<br> [0x80000200]:sw fp, 64(sp)<br> |
|  10|[0x80002258]<br>0x00000002|- rs1 : x15<br> - rs2 : x4<br> - rd : x3<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 4<br>                                                        |[0x80000214]:KSLRAW_U gp, a5, tp<br> [0x80000218]:csrrs a5, vxsat, zero<br> [0x8000021c]:sw gp, 72(sp)<br>     |
|  11|[0x80002260]<br>0x00000800|- rs1 : x12<br> - rs2 : x26<br> - rd : x25<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 4096<br>                                                   |[0x80000230]:KSLRAW_U s9, a2, s10<br> [0x80000234]:csrrs a2, vxsat, zero<br> [0x80000238]:sw s9, 80(sp)<br>    |
|  12|[0x80002268]<br>0x00000800|- rs1 : x24<br> - rs2 : x19<br> - rd : x18<br> - rs2_w0_val == -8388609<br>                                                                             |[0x8000024c]:KSLRAW_U s2, s8, s3<br> [0x80000250]:csrrs s8, vxsat, zero<br> [0x80000254]:sw s2, 88(sp)<br>     |
|  13|[0x80002270]<br>0x00000009|- rs1 : x10<br> - rs2 : x14<br> - rd : x16<br> - rs2_w0_val == -4194305<br>                                                                             |[0x80000268]:KSLRAW_U a6, a0, a4<br> [0x8000026c]:csrrs a0, vxsat, zero<br> [0x80000270]:sw a6, 96(sp)<br>     |
|  14|[0x80002278]<br>0xC0000000|- rs1 : x13<br> - rs2 : x28<br> - rd : x4<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == 2147483648<br>                                               |[0x80000284]:KSLRAW_U tp, a3, t3<br> [0x80000288]:csrrs a3, vxsat, zero<br> [0x8000028c]:sw tp, 104(sp)<br>    |
|  15|[0x80002280]<br>0xFC000000|- rs1 : x28<br> - rs2 : x5<br> - rd : x26<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 4160749567<br>                                               |[0x800002a4]:KSLRAW_U s10, t3, t0<br> [0x800002a8]:csrrs t3, vxsat, zero<br> [0x800002ac]:sw s10, 112(sp)<br>  |
|  16|[0x80002288]<br>0xFFFFFF00|- rs1 : x23<br> - rs2 : x3<br> - rd : x22<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 4294966783<br>                                                |[0x800002c8]:KSLRAW_U s6, s7, gp<br> [0x800002cc]:csrrs s7, vxsat, zero<br> [0x800002d0]:sw s6, 0(a6)<br>      |
|  17|[0x80002290]<br>0x00000000|- rs1 : x18<br> - rs2 : x13<br> - rd : x0<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 8<br>                                                         |[0x800002e4]:KSLRAW_U zero, s2, a3<br> [0x800002e8]:csrrs s2, vxsat, zero<br> [0x800002ec]:sw zero, 8(a6)<br>  |
|  18|[0x80002298]<br>0x00000007|- rs1 : x4<br> - rs2 : x12<br> - rd : x10<br> - rs2_w0_val == -131073<br>                                                                               |[0x80000300]:KSLRAW_U a0, tp, a2<br> [0x80000304]:csrrs tp, vxsat, zero<br> [0x80000308]:sw a0, 16(a6)<br>     |
|  19|[0x800022a0]<br>0xFFFFFFF0|- rs1 : x17<br> - rs2 : x23<br> - rd : x19<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 4294967263<br>                                                |[0x8000031c]:KSLRAW_U s3, a7, s7<br> [0x80000320]:csrrs a7, vxsat, zero<br> [0x80000324]:sw s3, 24(a6)<br>     |
|  20|[0x800022a8]<br>0xE0000000|- rs1 : x8<br> - rs2 : x30<br> - rd : x28<br> - rs2_w0_val == -32769<br> - rs1_w0_val == 3221225471<br>                                                 |[0x8000033c]:KSLRAW_U t3, fp, t5<br> [0x80000340]:csrrs fp, vxsat, zero<br> [0x80000344]:sw t3, 32(a6)<br>     |
|  21|[0x800022b0]<br>0x00000009|- rs1 : x20<br> - rs2 : x6<br> - rd : x12<br> - rs2_w0_val == -16385<br>                                                                                |[0x80000358]:KSLRAW_U a2, s4, t1<br> [0x8000035c]:csrrs s4, vxsat, zero<br> [0x80000360]:sw a2, 40(a6)<br>     |
|  22|[0x800022b8]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x0<br> - rd : x15<br> - rs1_w0_val == 4294967295<br>                                                                            |[0x80000374]:KSLRAW_U a5, a1, zero<br> [0x80000378]:csrrs a1, vxsat, zero<br> [0x8000037c]:sw a5, 48(a6)<br>   |
|  23|[0x800022c0]<br>0x00000005|- rs1 : x5<br> - rs2 : x11<br> - rd : x30<br> - rs2_w0_val == -4097<br>                                                                                 |[0x80000390]:KSLRAW_U t5, t0, a1<br> [0x80000394]:csrrs t0, vxsat, zero<br> [0x80000398]:sw t5, 56(a6)<br>     |
|  24|[0x800022c8]<br>0x00000007|- rs1 : x1<br> - rs2 : x21<br> - rd : x9<br> - rs2_w0_val == -2049<br>                                                                                  |[0x800003ac]:KSLRAW_U s1, ra, s5<br> [0x800003b0]:csrrs ra, vxsat, zero<br> [0x800003b4]:sw s1, 64(a6)<br>     |
|  25|[0x800022d0]<br>0x00000008|- rs1 : x25<br> - rs2 : x8<br> - rd : x5<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 16<br>                                                           |[0x800003c4]:KSLRAW_U t0, s9, fp<br> [0x800003c8]:csrrs s9, vxsat, zero<br> [0x800003cc]:sw t0, 72(a6)<br>     |
|  26|[0x800022d8]<br>0x2AAAAAAB|- rs1 : x30<br> - rs2 : x7<br> - rd : x29<br> - rs2_w0_val == -513<br> - rs1_w0_val == 1431655765<br>                                                   |[0x800003e0]:KSLRAW_U t4, t5, t2<br> [0x800003e4]:csrrs t5, vxsat, zero<br> [0x800003e8]:sw t4, 80(a6)<br>     |
|  27|[0x800022e0]<br>0xFFFFFFE0|- rs1 : x9<br> - rs2 : x22<br> - rd : x20<br> - rs2_w0_val == -257<br> - rs1_w0_val == 4294967231<br>                                                   |[0x800003f8]:KSLRAW_U s4, s1, s6<br> [0x800003fc]:csrrs s1, vxsat, zero<br> [0x80000400]:sw s4, 88(a6)<br>     |
|  28|[0x800022e8]<br>0xFFFFFFF8|- rs1 : x14<br> - rs2 : x31<br> - rd : x21<br> - rs2_w0_val == -129<br> - rs1_w0_val == 4294967279<br>                                                  |[0x80000410]:KSLRAW_U s5, a4, t6<br> [0x80000414]:csrrs a4, vxsat, zero<br> [0x80000418]:sw s5, 96(a6)<br>     |
|  29|[0x800022f0]<br>0xFFFE0000|- rs1 : x19<br> - rs2 : x10<br> - rd : x2<br> - rs2_w0_val == -65<br> - rs1_w0_val == 4294705151<br>                                                    |[0x8000042c]:KSLRAW_U sp, s3, a0<br> [0x80000430]:csrrs s3, vxsat, zero<br> [0x80000434]:sw sp, 104(a6)<br>    |
|  30|[0x800022f8]<br>0x7FFFFFFF|- rs1 : x2<br> - rs2 : x15<br> - rd : x1<br> - rs2_w0_val == -33<br>                                                                                    |[0x8000044c]:KSLRAW_U ra, sp, a5<br> [0x80000450]:csrrs sp, vxsat, zero<br> [0x80000454]:sw ra, 0(gp)<br>      |
|  31|[0x80002300]<br>0x00000000|- rs1 : x29<br> - rs2 : x2<br> - rd : x11<br> - rs2_w0_val == -17<br>                                                                                   |[0x80000464]:KSLRAW_U a1, t4, sp<br> [0x80000468]:csrrs t4, vxsat, zero<br> [0x8000046c]:sw a1, 8(gp)<br>      |
|  32|[0x80002308]<br>0xFFFFFFFC|- rs1 : x31<br> - rs2 : x29<br> - rd : x6<br> - rs2_w0_val == -9<br> - rs1_w0_val == 4294965247<br>                                                     |[0x80000480]:KSLRAW_U t1, t6, t4<br> [0x80000484]:csrrs t6, vxsat, zero<br> [0x80000488]:sw t1, 16(gp)<br>     |
|  33|[0x80002310]<br>0xFFFFFFFF|- rs2_w0_val == -5<br>                                                                                                                                  |[0x80000498]:KSLRAW_U t6, t5, t4<br> [0x8000049c]:csrrs t5, vxsat, zero<br> [0x800004a0]:sw t6, 24(gp)<br>     |
|  34|[0x80002318]<br>0xFF000000|- rs2_w0_val == -3<br>                                                                                                                                  |[0x800004b4]:KSLRAW_U t6, t5, t4<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 32(gp)<br>     |
|  35|[0x80002320]<br>0x00800000|- rs2_w0_val == -2<br>                                                                                                                                  |[0x800004cc]:KSLRAW_U t6, t5, t4<br> [0x800004d0]:csrrs t5, vxsat, zero<br> [0x800004d4]:sw t6, 40(gp)<br>     |
|  36|[0x80002328]<br>0xFFFFFDFF|- rs2_w0_val == -2147483648<br>                                                                                                                         |[0x800004e4]:KSLRAW_U t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 48(gp)<br>     |
|  37|[0x80002330]<br>0xFFFFFFFF|- rs2_w0_val == 1073741824<br>                                                                                                                          |[0x800004fc]:KSLRAW_U t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 56(gp)<br>     |
|  38|[0x80002338]<br>0x00000400|- rs2_w0_val == 536870912<br> - rs1_w0_val == 1024<br>                                                                                                  |[0x80000514]:KSLRAW_U t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 64(gp)<br>     |
|  39|[0x80002340]<br>0x02000000|- rs2_w0_val == 268435456<br>                                                                                                                           |[0x8000052c]:KSLRAW_U t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 72(gp)<br>     |
|  40|[0x80002348]<br>0xDFFFFFFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == 3758096383<br>                                                                                            |[0x80000548]:KSLRAW_U t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 80(gp)<br>     |
|  41|[0x80002350]<br>0xF7FFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                            |[0x80000564]:KSLRAW_U t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 88(gp)<br>     |
|  42|[0x80002358]<br>0x0000000A|- rs2_w0_val == 33554432<br>                                                                                                                            |[0x8000057c]:KSLRAW_U t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 96(gp)<br>     |
|  43|[0x80002360]<br>0x00000002|- rs2_w0_val == 16777216<br> - rs1_w0_val == 2<br>                                                                                                      |[0x80000594]:KSLRAW_U t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 104(gp)<br>    |
|  44|[0x80002368]<br>0x0000000A|- rs2_w0_val == 8388608<br>                                                                                                                             |[0x800005ac]:KSLRAW_U t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 112(gp)<br>    |
|  45|[0x80002370]<br>0xF7FFFFFF|- rs2_w0_val == 4194304<br>                                                                                                                             |[0x800005c8]:KSLRAW_U t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 120(gp)<br>    |
|  46|[0x80002378]<br>0x00000012|- rs2_w0_val == 2097152<br>                                                                                                                             |[0x800005e0]:KSLRAW_U t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 128(gp)<br>    |
|  47|[0x80002380]<br>0x00000040|- rs1_w0_val == 64<br>                                                                                                                                  |[0x800005f8]:KSLRAW_U t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 136(gp)<br>    |
|  48|[0x80002388]<br>0x00000020|- rs2_w0_val == 4096<br> - rs1_w0_val == 32<br>                                                                                                         |[0x80000610]:KSLRAW_U t6, t5, t4<br> [0x80000614]:csrrs t5, vxsat, zero<br> [0x80000618]:sw t6, 144(gp)<br>    |
|  49|[0x80002390]<br>0x00000001|- rs2_w0_val == 524288<br> - rs1_w0_val == 1<br>                                                                                                        |[0x80000628]:KSLRAW_U t6, t5, t4<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 152(gp)<br>    |
|  50|[0x80002398]<br>0x00000011|- rs2_w0_val == 1048576<br>                                                                                                                             |[0x80000640]:KSLRAW_U t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 160(gp)<br>    |
|  51|[0x800023a0]<br>0x00040000|- rs2_w0_val == 262144<br> - rs1_w0_val == 262144<br>                                                                                                   |[0x80000658]:KSLRAW_U t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 168(gp)<br>    |
|  52|[0x800023a8]<br>0x0000000A|- rs2_w0_val == 131072<br>                                                                                                                              |[0x80000670]:KSLRAW_U t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 176(gp)<br>    |
|  53|[0x800023b0]<br>0xFBFFFFFF|- rs2_w0_val == 65536<br> - rs1_w0_val == 4227858431<br>                                                                                                |[0x8000068c]:KSLRAW_U t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 184(gp)<br>    |
|  54|[0x800023b8]<br>0x02000000|- rs2_w0_val == 32768<br>                                                                                                                               |[0x800006a4]:KSLRAW_U t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 192(gp)<br>    |
|  55|[0x800023c0]<br>0xFBFFFFFF|- rs2_w0_val == 16384<br>                                                                                                                               |[0x800006c0]:KSLRAW_U t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 200(gp)<br>    |
|  56|[0x800023c8]<br>0xFFFFF7FF|- rs2_w0_val == 8192<br>                                                                                                                                |[0x800006dc]:KSLRAW_U t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 208(gp)<br>    |
|  57|[0x800023d0]<br>0xFFEFFFFF|- rs2_w0_val == 2048<br> - rs1_w0_val == 4293918719<br>                                                                                                 |[0x800006fc]:KSLRAW_U t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 216(gp)<br>    |
|  58|[0x800023d8]<br>0x00000400|- rs2_w0_val == 1024<br>                                                                                                                                |[0x80000714]:KSLRAW_U t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 224(gp)<br>    |
|  59|[0x800023e0]<br>0x00000000|- rs2_w0_val == 512<br>                                                                                                                                 |[0x8000072c]:KSLRAW_U t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 232(gp)<br>    |
|  60|[0x800023e8]<br>0xFFFFFFF7|- rs2_w0_val == 256<br> - rs1_w0_val == 4294967287<br>                                                                                                  |[0x80000744]:KSLRAW_U t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 240(gp)<br>    |
|  61|[0x800023f0]<br>0x00000006|- rs2_w0_val == 128<br>                                                                                                                                 |[0x8000075c]:KSLRAW_U t6, t5, t4<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sw t6, 248(gp)<br>    |
|  62|[0x800023f8]<br>0x00000006|- rs2_w0_val == 64<br>                                                                                                                                  |[0x80000774]:KSLRAW_U t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 256(gp)<br>    |
|  63|[0x80002400]<br>0x00000000|- rs2_w0_val == 32<br>                                                                                                                                  |[0x8000078c]:KSLRAW_U t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 264(gp)<br>    |
|  64|[0x80002408]<br>0xFFFF0000|- rs2_w0_val == 16<br>                                                                                                                                  |[0x800007a4]:KSLRAW_U t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 272(gp)<br>    |
|  65|[0x80002410]<br>0x01000000|- rs2_w0_val == 8<br> - rs1_w0_val == 65536<br>                                                                                                         |[0x800007bc]:KSLRAW_U t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 280(gp)<br>    |
|  66|[0x80002418]<br>0x00001000|- rs2_w0_val == 4<br> - rs1_w0_val == 256<br>                                                                                                           |[0x800007d4]:KSLRAW_U t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 288(gp)<br>    |
|  67|[0x80002420]<br>0xFFFFBFFC|- rs2_w0_val == 2<br> - rs1_w0_val == 4294963199<br>                                                                                                    |[0x800007f0]:KSLRAW_U t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 296(gp)<br>    |
|  68|[0x80002428]<br>0xFFFFFFF6|- rs2_w0_val == 1<br> - rs1_w0_val == 4294967291<br>                                                                                                    |[0x80000808]:KSLRAW_U t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 304(gp)<br>    |
|  69|[0x80002430]<br>0xFFF00000|- rs2_w0_val == -1<br> - rs1_w0_val == 4292870143<br>                                                                                                   |[0x80000824]:KSLRAW_U t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 312(gp)<br>    |
|  70|[0x80002440]<br>0x40000000|- rs1_w0_val == 2147483647<br>                                                                                                                          |[0x80000864]:KSLRAW_U t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 328(gp)<br>    |
|  71|[0x80002448]<br>0xEFFFFFFF|- rs1_w0_val == 4026531839<br>                                                                                                                          |[0x80000880]:KSLRAW_U t6, t5, t4<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sw t6, 336(gp)<br>    |
|  72|[0x80002450]<br>0xFF000000|- rs1_w0_val == 4261412863<br>                                                                                                                          |[0x8000089c]:KSLRAW_U t6, t5, t4<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sw t6, 344(gp)<br>    |
|  73|[0x80002458]<br>0xEFFFFFF0|- rs1_w0_val == 4278190079<br>                                                                                                                          |[0x800008b8]:KSLRAW_U t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 352(gp)<br>    |
|  74|[0x80002460]<br>0xFFC00000|- rs1_w0_val == 4286578687<br>                                                                                                                          |[0x800008d4]:KSLRAW_U t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 360(gp)<br>    |
|  75|[0x80002468]<br>0xFFBFFFFF|- rs1_w0_val == 4290772991<br>                                                                                                                          |[0x800008f4]:KSLRAW_U t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 368(gp)<br>    |
|  76|[0x80002470]<br>0xFFF7FFFF|- rs1_w0_val == 4294443007<br>                                                                                                                          |[0x80000910]:KSLRAW_U t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 376(gp)<br>    |
|  77|[0x80002478]<br>0xFF7FFFC0|- rs1_w0_val == 4294836223<br>                                                                                                                          |[0x8000092c]:KSLRAW_U t6, t5, t4<br> [0x80000930]:csrrs t5, vxsat, zero<br> [0x80000934]:sw t6, 384(gp)<br>    |
|  78|[0x80002480]<br>0x00000000|- rs1_w0_val == 4294901759<br>                                                                                                                          |[0x80000948]:KSLRAW_U t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 392(gp)<br>    |
|  79|[0x80002488]<br>0xFFFFC000|- rs1_w0_val == 4294934527<br>                                                                                                                          |[0x80000968]:KSLRAW_U t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 400(gp)<br>    |
|  80|[0x80002490]<br>0xFFFFE000|- rs1_w0_val == 4294950911<br>                                                                                                                          |[0x80000988]:KSLRAW_U t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 408(gp)<br>    |
|  81|[0x80002498]<br>0xFFFFF000|- rs1_w0_val == 4294959103<br>                                                                                                                          |[0x800009a8]:KSLRAW_U t6, t5, t4<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sw t6, 416(gp)<br>    |
|  82|[0x800024a0]<br>0xFFFFFE00|- rs1_w0_val == 4294966271<br>                                                                                                                          |[0x800009c4]:KSLRAW_U t6, t5, t4<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sw t6, 424(gp)<br>    |
|  83|[0x800024a8]<br>0xFFFFFFFF|- rs1_w0_val == 4294967293<br>                                                                                                                          |[0x800009dc]:KSLRAW_U t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 432(gp)<br>    |
|  84|[0x800024b0]<br>0x20000000|- rs1_w0_val == 1073741824<br>                                                                                                                          |[0x800009f8]:KSLRAW_U t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 440(gp)<br>    |
|  85|[0x800024b8]<br>0x10000000|- rs1_w0_val == 536870912<br>                                                                                                                           |[0x80000a14]:KSLRAW_U t6, t5, t4<br> [0x80000a18]:csrrs t5, vxsat, zero<br> [0x80000a1c]:sw t6, 448(gp)<br>    |
|  86|[0x800024c0]<br>0x00400000|- rs1_w0_val == 134217728<br>                                                                                                                           |[0x80000a2c]:KSLRAW_U t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 456(gp)<br>    |
|  87|[0x800024c8]<br>0x01000000|- rs1_w0_val == 16777216<br>                                                                                                                            |[0x80000a44]:KSLRAW_U t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 464(gp)<br>    |
|  88|[0x800024d0]<br>0x00000000|- rs1_w0_val == 8388608<br>                                                                                                                             |[0x80000a5c]:KSLRAW_U t6, t5, t4<br> [0x80000a60]:csrrs t5, vxsat, zero<br> [0x80000a64]:sw t6, 472(gp)<br>    |
|  89|[0x800024d8]<br>0x00080000|- rs1_w0_val == 1048576<br>                                                                                                                             |[0x80000a74]:KSLRAW_U t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 480(gp)<br>    |
|  90|[0x800024e0]<br>0x00080000|- rs1_w0_val == 524288<br>                                                                                                                              |[0x80000a8c]:KSLRAW_U t6, t5, t4<br> [0x80000a90]:csrrs t5, vxsat, zero<br> [0x80000a94]:sw t6, 488(gp)<br>    |
|  91|[0x800024e8]<br>0x00010000|- rs1_w0_val == 131072<br>                                                                                                                              |[0x80000aa8]:KSLRAW_U t6, t5, t4<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sw t6, 496(gp)<br>    |
|  92|[0x800024f0]<br>0x00000080|- rs1_w0_val == 32768<br>                                                                                                                               |[0x80000ac0]:KSLRAW_U t6, t5, t4<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sw t6, 504(gp)<br>    |
|  93|[0x800024f8]<br>0x00004000|- rs1_w0_val == 16384<br>                                                                                                                               |[0x80000ad8]:KSLRAW_U t6, t5, t4<br> [0x80000adc]:csrrs t5, vxsat, zero<br> [0x80000ae0]:sw t6, 512(gp)<br>    |
|  94|[0x80002500]<br>0x00000800|- rs1_w0_val == 2048<br>                                                                                                                                |[0x80000af4]:KSLRAW_U t6, t5, t4<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sw t6, 520(gp)<br>    |
|  95|[0x80002508]<br>0x00000080|- rs1_w0_val == 128<br>                                                                                                                                 |[0x80000b0c]:KSLRAW_U t6, t5, t4<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sw t6, 528(gp)<br>    |
|  96|[0x80002510]<br>0x00000000|- rs1_w0_val == 512<br>                                                                                                                                 |[0x80000b24]:KSLRAW_U t6, t5, t4<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sw t6, 536(gp)<br>    |
|  97|[0x80002518]<br>0xFFFFFF7F|- rs1_w0_val == 4294967167<br>                                                                                                                          |[0x80000b3c]:KSLRAW_U t6, t5, t4<br> [0x80000b40]:csrrs t5, vxsat, zero<br> [0x80000b44]:sw t6, 544(gp)<br>    |
|  98|[0x80002528]<br>0x00000000|- rs1_w0_val == 8192<br>                                                                                                                                |[0x80000b70]:KSLRAW_U t6, t5, t4<br> [0x80000b74]:csrrs t5, vxsat, zero<br> [0x80000b78]:sw t6, 560(gp)<br>    |
|  99|[0x80002530]<br>0x08000000|- rs1_w0_val == 268435456<br>                                                                                                                           |[0x80000b8c]:KSLRAW_U t6, t5, t4<br> [0x80000b90]:csrrs t5, vxsat, zero<br> [0x80000b94]:sw t6, 568(gp)<br>    |
| 100|[0x80002540]<br>0x00000000|- rs2_w0_val == -8193<br>                                                                                                                               |[0x80000bc4]:KSLRAW_U t6, t5, t4<br> [0x80000bc8]:csrrs t5, vxsat, zero<br> [0x80000bcc]:sw t6, 584(gp)<br>    |
