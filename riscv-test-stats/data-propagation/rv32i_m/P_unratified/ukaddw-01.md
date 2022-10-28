
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b80')]      |
| SIG_REGION                | [('0x80002210', '0x80002530', '200 words')]      |
| COV_LABELS                | ukaddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukaddw-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 240      |
| Total Signature Updates   | 198      |
| STAT1                     | 97      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 99     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b50]:UKADDW t6, t5, t4
      [0x80000b54]:csrrs t5, vxsat, zero
      [0x80000b58]:sw t6, 544(ra)
 -- Signature Address: 0x80002518 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 2863311530
      - rs1_w0_val == 3221225471




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:UKADDW t6, t5, t4
      [0x80000b70]:csrrs t5, vxsat, zero
      [0x80000b74]:sw t6, 552(ra)
 -- Signature Address: 0x80002520 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 4026531839
      - rs1_w0_val == 4294967293






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukaddw', 'rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000118]:UKADDW t4, t4, t4
	-[0x8000011c]:csrrs t4, vxsat, zero
	-[0x80000120]:sw t4, 0(s1)
Current Store : [0x80000124] : sw t4, 4(s1) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x4', 'rs1 == rs2 != rd', 'rs2_w0_val == 2', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000130]:UKADDW tp, s9, s9
	-[0x80000134]:csrrs s9, vxsat, zero
	-[0x80000138]:sw tp, 8(s1)
Current Store : [0x8000013c] : sw s9, 12(s1) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000150]:UKADDW s2, t3, s10
	-[0x80000154]:csrrs t3, vxsat, zero
	-[0x80000158]:sw s2, 16(s1)
Current Store : [0x8000015c] : sw t3, 20(s1) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_w0_val == 0', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80000170]:UKADDW zero, s4, zero
	-[0x80000174]:csrrs s4, vxsat, zero
	-[0x80000178]:sw zero, 24(s1)
Current Store : [0x8000017c] : sw s4, 28(s1) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x8', 'rd : x15', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000018c]:UKADDW a5, a5, fp
	-[0x80000190]:csrrs a5, vxsat, zero
	-[0x80000194]:sw a5, 32(s1)
Current Store : [0x80000198] : sw a5, 36(s1) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x10', 'rd : x28', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800001ac]:UKADDW t3, s11, a0
	-[0x800001b0]:csrrs s11, vxsat, zero
	-[0x800001b4]:sw t3, 40(s1)
Current Store : [0x800001b8] : sw s11, 44(s1) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x11', 'rd : x20', 'rs2_w0_val == 3221225471', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800001cc]:UKADDW s4, a2, a1
	-[0x800001d0]:csrrs a2, vxsat, zero
	-[0x800001d4]:sw s4, 48(s1)
Current Store : [0x800001d8] : sw a2, 52(s1) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x31', 'rs2_w0_val == 3758096383']
Last Code Sequence : 
	-[0x800001ec]:UKADDW t6, a7, s11
	-[0x800001f0]:csrrs a7, vxsat, zero
	-[0x800001f4]:sw t6, 56(s1)
Current Store : [0x800001f8] : sw a7, 60(s1) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x22', 'rd : x26', 'rs1_w0_val == 0', 'rs2_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000208]:UKADDW s10, zero, s6
	-[0x8000020c]:csrrs zero, vxsat, zero
	-[0x80000210]:sw s10, 64(s1)
Current Store : [0x80000214] : sw zero, 68(s1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x3', 'rd : x25', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000228]:UKADDW s9, sp, gp
	-[0x8000022c]:csrrs sp, vxsat, zero
	-[0x80000230]:sw s9, 72(s1)
Current Store : [0x80000234] : sw sp, 76(s1) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x12', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000244]:UKADDW a2, a4, t2
	-[0x80000248]:csrrs a4, vxsat, zero
	-[0x8000024c]:sw a2, 80(s1)
Current Store : [0x80000250] : sw a4, 84(s1) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x1', 'rd : x30', 'rs2_w0_val == 4261412863', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000264]:UKADDW t5, a1, ra
	-[0x80000268]:csrrs a1, vxsat, zero
	-[0x8000026c]:sw t5, 88(s1)
Current Store : [0x80000270] : sw a1, 92(s1) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x5', 'rd : x10', 'rs2_w0_val == 4278190079', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000284]:UKADDW a0, s6, t0
	-[0x80000288]:csrrs s6, vxsat, zero
	-[0x8000028c]:sw a0, 96(s1)
Current Store : [0x80000290] : sw s6, 100(s1) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x21', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800002a4]:UKADDW s5, t1, s3
	-[0x800002a8]:csrrs t1, vxsat, zero
	-[0x800002ac]:sw s5, 104(s1)
Current Store : [0x800002b0] : sw t1, 108(s1) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x16', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800002c0]:UKADDW a6, t6, a5
	-[0x800002c4]:csrrs t6, vxsat, zero
	-[0x800002c8]:sw a6, 112(s1)
Current Store : [0x800002cc] : sw t6, 116(s1) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x2', 'rd : x23', 'rs2_w0_val == 4292870143', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800002e4]:UKADDW s7, t0, sp
	-[0x800002e8]:csrrs t0, vxsat, zero
	-[0x800002ec]:sw s7, 0(a1)
Current Store : [0x800002f0] : sw t0, 4(a1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x1', 'rs2_w0_val == 4294443007', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000304]:UKADDW ra, s10, s1
	-[0x80000308]:csrrs s10, vxsat, zero
	-[0x8000030c]:sw ra, 8(a1)
Current Store : [0x80000310] : sw s10, 12(a1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x8', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000320]:UKADDW fp, t5, t1
	-[0x80000324]:csrrs t5, vxsat, zero
	-[0x80000328]:sw fp, 16(a1)
Current Store : [0x8000032c] : sw t5, 20(a1) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rd : x19', 'rs2_w0_val == 4294836223', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000033c]:UKADDW s3, tp, s7
	-[0x80000340]:csrrs tp, vxsat, zero
	-[0x80000344]:sw s3, 24(a1)
Current Store : [0x80000348] : sw tp, 28(a1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x7', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000358]:UKADDW t2, a3, a2
	-[0x8000035c]:csrrs a3, vxsat, zero
	-[0x80000360]:sw t2, 32(a1)
Current Store : [0x80000364] : sw a3, 36(a1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x27', 'rs2_w0_val == 4294934527', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000374]:UKADDW s11, s5, t3
	-[0x80000378]:csrrs s5, vxsat, zero
	-[0x8000037c]:sw s11, 40(a1)
Current Store : [0x80000380] : sw s5, 44(a1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x31', 'rd : x13', 'rs2_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000390]:UKADDW a3, s1, t6
	-[0x80000394]:csrrs s1, vxsat, zero
	-[0x80000398]:sw a3, 48(a1)
Current Store : [0x8000039c] : sw s1, 52(a1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rd : x17', 'rs2_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800003ac]:UKADDW a7, s3, s5
	-[0x800003b0]:csrrs s3, vxsat, zero
	-[0x800003b4]:sw a7, 56(a1)
Current Store : [0x800003b8] : sw s3, 60(a1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x9', 'rs2_w0_val == 4294965247', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800003c8]:UKADDW s1, a6, a4
	-[0x800003cc]:csrrs a6, vxsat, zero
	-[0x800003d0]:sw s1, 64(a1)
Current Store : [0x800003d4] : sw a6, 68(a1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x5', 'rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800003e0]:UKADDW t0, s2, a6
	-[0x800003e4]:csrrs s2, vxsat, zero
	-[0x800003e8]:sw t0, 72(a1)
Current Store : [0x800003ec] : sw s2, 76(a1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x18', 'rd : x3', 'rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800003f8]:UKADDW gp, ra, s2
	-[0x800003fc]:csrrs ra, vxsat, zero
	-[0x80000400]:sw gp, 80(a1)
Current Store : [0x80000404] : sw ra, 84(a1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x30', 'rd : x22', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000414]:UKADDW s6, s8, t5
	-[0x80000418]:csrrs s8, vxsat, zero
	-[0x8000041c]:sw s6, 88(a1)
Current Store : [0x80000420] : sw s8, 92(a1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x24', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000042c]:UKADDW s8, a0, a3
	-[0x80000430]:csrrs a0, vxsat, zero
	-[0x80000434]:sw s8, 96(a1)
Current Store : [0x80000438] : sw a0, 100(a1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x20', 'rd : x6', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000444]:UKADDW t1, gp, s4
	-[0x80000448]:csrrs gp, vxsat, zero
	-[0x8000044c]:sw t1, 104(a1)
Current Store : [0x80000450] : sw gp, 108(a1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x2', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000468]:UKADDW sp, fp, tp
	-[0x8000046c]:csrrs fp, vxsat, zero
	-[0x80000470]:sw sp, 0(ra)
Current Store : [0x80000474] : sw fp, 4(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x17', 'rd : x11', 'rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000480]:UKADDW a1, s7, a7
	-[0x80000484]:csrrs s7, vxsat, zero
	-[0x80000488]:sw a1, 8(ra)
Current Store : [0x8000048c] : sw s7, 12(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x24', 'rd : x14', 'rs2_w0_val == 4294967287', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000498]:UKADDW a4, t2, s8
	-[0x8000049c]:csrrs t2, vxsat, zero
	-[0x800004a0]:sw a4, 16(ra)
Current Store : [0x800004a4] : sw t2, 20(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967291', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800004b0]:UKADDW t6, t5, t4
	-[0x800004b4]:csrrs t5, vxsat, zero
	-[0x800004b8]:sw t6, 24(ra)
Current Store : [0x800004bc] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800004c8]:UKADDW t6, t5, t4
	-[0x800004cc]:csrrs t5, vxsat, zero
	-[0x800004d0]:sw t6, 32(ra)
Current Store : [0x800004d4] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967294', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800004e4]:UKADDW t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 40(ra)
Current Store : [0x800004f0] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800004fc]:UKADDW t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 48(ra)
Current Store : [0x80000508] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000514]:UKADDW t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 56(ra)
Current Store : [0x80000520] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000052c]:UKADDW t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 64(ra)
Current Store : [0x80000538] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000544]:UKADDW t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 72(ra)
Current Store : [0x80000550] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000055c]:UKADDW t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 80(ra)
Current Store : [0x80000568] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000578]:UKADDW t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 88(ra)
Current Store : [0x80000584] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000590]:UKADDW t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 96(ra)
Current Store : [0x8000059c] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800005a8]:UKADDW t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 104(ra)
Current Store : [0x800005b4] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800005c4]:UKADDW t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 112(ra)
Current Store : [0x800005d0] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800005e0]:UKADDW t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 120(ra)
Current Store : [0x800005ec] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800005f8]:UKADDW t6, t5, t4
	-[0x800005fc]:csrrs t5, vxsat, zero
	-[0x80000600]:sw t6, 128(ra)
Current Store : [0x80000604] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000610]:UKADDW t6, t5, t4
	-[0x80000614]:csrrs t5, vxsat, zero
	-[0x80000618]:sw t6, 136(ra)
Current Store : [0x8000061c] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000062c]:UKADDW t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 144(ra)
Current Store : [0x80000638] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000644]:UKADDW t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 152(ra)
Current Store : [0x80000650] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000660]:UKADDW t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 160(ra)
Current Store : [0x8000066c] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000678]:UKADDW t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 168(ra)
Current Store : [0x80000684] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000694]:UKADDW t6, t5, t4
	-[0x80000698]:csrrs t5, vxsat, zero
	-[0x8000069c]:sw t6, 176(ra)
Current Store : [0x800006a0] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800006b0]:UKADDW t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 184(ra)
Current Store : [0x800006bc] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800006c8]:UKADDW t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 192(ra)
Current Store : [0x800006d4] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x800006e0]:UKADDW t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 200(ra)
Current Store : [0x800006ec] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800006f8]:UKADDW t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 208(ra)
Current Store : [0x80000704] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000710]:UKADDW t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 216(ra)
Current Store : [0x8000071c] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x8000072c]:UKADDW t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 224(ra)
Current Store : [0x80000738] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000744]:UKADDW t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 232(ra)
Current Store : [0x80000750] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x8000075c]:UKADDW t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 240(ra)
Current Store : [0x80000768] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000774]:UKADDW t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 248(ra)
Current Store : [0x80000780] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x8000078c]:UKADDW t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 256(ra)
Current Store : [0x80000798] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x800007a8]:UKADDW t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 264(ra)
Current Store : [0x800007b4] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800007c4]:UKADDW t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 272(ra)
Current Store : [0x800007d0] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800007dc]:UKADDW t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 280(ra)
Current Store : [0x800007e8] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800007f8]:UKADDW t6, t5, t4
	-[0x800007fc]:csrrs t5, vxsat, zero
	-[0x80000800]:sw t6, 288(ra)
Current Store : [0x80000804] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80000814]:UKADDW t6, t5, t4
	-[0x80000818]:csrrs t5, vxsat, zero
	-[0x8000081c]:sw t6, 296(ra)
Current Store : [0x80000820] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000082c]:UKADDW t6, t5, t4
	-[0x80000830]:csrrs t5, vxsat, zero
	-[0x80000834]:sw t6, 304(ra)
Current Store : [0x80000838] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000844]:UKADDW t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 312(ra)
Current Store : [0x80000850] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000860]:UKADDW t6, t5, t4
	-[0x80000864]:csrrs t5, vxsat, zero
	-[0x80000868]:sw t6, 320(ra)
Current Store : [0x8000086c] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000878]:UKADDW t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 328(ra)
Current Store : [0x80000884] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000890]:UKADDW t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 336(ra)
Current Store : [0x8000089c] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800008a8]:UKADDW t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 344(ra)
Current Store : [0x800008b4] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x800008c4]:UKADDW t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 352(ra)
Current Store : [0x800008d0] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800008e4]:UKADDW t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 360(ra)
Current Store : [0x800008f0] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000900]:UKADDW t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 368(ra)
Current Store : [0x8000090c] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x8000091c]:UKADDW t6, t5, t4
	-[0x80000920]:csrrs t5, vxsat, zero
	-[0x80000924]:sw t6, 376(ra)
Current Store : [0x80000928] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x8000093c]:UKADDW t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 384(ra)
Current Store : [0x80000948] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x8000095c]:UKADDW t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 392(ra)
Current Store : [0x80000968] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000978]:UKADDW t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 400(ra)
Current Store : [0x80000984] : sw t5, 404(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000994]:UKADDW t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 408(ra)
Current Store : [0x800009a0] : sw t5, 412(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800009b0]:UKADDW t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 416(ra)
Current Store : [0x800009bc] : sw t5, 420(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800009cc]:UKADDW t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 424(ra)
Current Store : [0x800009d8] : sw t5, 428(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x800009e8]:UKADDW t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 432(ra)
Current Store : [0x800009f4] : sw t5, 436(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000a00]:UKADDW t6, t5, t4
	-[0x80000a04]:csrrs t5, vxsat, zero
	-[0x80000a08]:sw t6, 440(ra)
Current Store : [0x80000a0c] : sw t5, 444(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000a1c]:UKADDW t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 448(ra)
Current Store : [0x80000a28] : sw t5, 452(ra) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000a34]:UKADDW t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 456(ra)
Current Store : [0x80000a40] : sw t5, 460(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a4c]:UKADDW t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 464(ra)
Current Store : [0x80000a58] : sw t5, 468(ra) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000a64]:UKADDW t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 472(ra)
Current Store : [0x80000a70] : sw t5, 476(ra) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a7c]:UKADDW t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 480(ra)
Current Store : [0x80000a88] : sw t5, 484(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000a98]:UKADDW t6, t5, t4
	-[0x80000a9c]:csrrs t5, vxsat, zero
	-[0x80000aa0]:sw t6, 488(ra)
Current Store : [0x80000aa4] : sw t5, 492(ra) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000ab0]:UKADDW t6, t5, t4
	-[0x80000ab4]:csrrs t5, vxsat, zero
	-[0x80000ab8]:sw t6, 496(ra)
Current Store : [0x80000abc] : sw t5, 500(ra) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000ac8]:UKADDW t6, t5, t4
	-[0x80000acc]:csrrs t5, vxsat, zero
	-[0x80000ad0]:sw t6, 504(ra)
Current Store : [0x80000ad4] : sw t5, 508(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ae4]:UKADDW t6, t5, t4
	-[0x80000ae8]:csrrs t5, vxsat, zero
	-[0x80000aec]:sw t6, 512(ra)
Current Store : [0x80000af0] : sw t5, 516(ra) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000afc]:UKADDW t6, t5, t4
	-[0x80000b00]:csrrs t5, vxsat, zero
	-[0x80000b04]:sw t6, 520(ra)
Current Store : [0x80000b08] : sw t5, 524(ra) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000b18]:UKADDW t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 528(ra)
Current Store : [0x80000b24] : sw t5, 532(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000b30]:UKADDW t6, t5, t4
	-[0x80000b34]:csrrs t5, vxsat, zero
	-[0x80000b38]:sw t6, 536(ra)
Current Store : [0x80000b3c] : sw t5, 540(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['opcode : ukaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80000b50]:UKADDW t6, t5, t4
	-[0x80000b54]:csrrs t5, vxsat, zero
	-[0x80000b58]:sw t6, 544(ra)
Current Store : [0x80000b5c] : sw t5, 548(ra) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['opcode : ukaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4026531839', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000b6c]:UKADDW t6, t5, t4
	-[0x80000b70]:csrrs t5, vxsat, zero
	-[0x80000b74]:sw t6, 552(ra)
Current Store : [0x80000b78] : sw t5, 556(ra) -- Store: [0x80002524]:0x00000001





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

|s.no|        signature         |                                                                                                          coverpoints                                                                                                          |                                                     code                                                      |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : ukaddw<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 4293918719<br> |[0x80000118]:UKADDW t4, t4, t4<br> [0x8000011c]:csrrs t4, vxsat, zero<br> [0x80000120]:sw t4, 0(s1)<br>        |
|   2|[0x80002218]<br>0x00000004|- rs1 : x25<br> - rs2 : x25<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 2<br> - rs1_w0_val == 2<br>                                                                                                               |[0x80000130]:UKADDW tp, s9, s9<br> [0x80000134]:csrrs s9, vxsat, zero<br> [0x80000138]:sw tp, 8(s1)<br>        |
|   3|[0x80002220]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x26<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 4294963199<br>                                                                     |[0x80000150]:UKADDW s2, t3, s10<br> [0x80000154]:csrrs t3, vxsat, zero<br> [0x80000158]:sw s2, 16(s1)<br>      |
|   4|[0x80002228]<br>0x00000000|- rs1 : x20<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_w0_val == 0<br> - rs1_w0_val == 3221225471<br>                                                                                                       |[0x80000170]:UKADDW zero, s4, zero<br> [0x80000174]:csrrs s4, vxsat, zero<br> [0x80000178]:sw zero, 24(s1)<br> |
|   5|[0x80002230]<br>0x00000001|- rs1 : x15<br> - rs2 : x8<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 128<br>                               |[0x8000018c]:UKADDW a5, a5, fp<br> [0x80000190]:csrrs a5, vxsat, zero<br> [0x80000194]:sw a5, 32(s1)<br>       |
|   6|[0x80002238]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x10<br> - rd : x28<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 4026531839<br>                                                                                                                   |[0x800001ac]:UKADDW t3, s11, a0<br> [0x800001b0]:csrrs s11, vxsat, zero<br> [0x800001b4]:sw t3, 40(s1)<br>     |
|   7|[0x80002240]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x11<br> - rd : x20<br> - rs2_w0_val == 3221225471<br> - rs1_w0_val == 4286578687<br>                                                                                                                   |[0x800001cc]:UKADDW s4, a2, a1<br> [0x800001d0]:csrrs a2, vxsat, zero<br> [0x800001d4]:sw s4, 48(s1)<br>       |
|   8|[0x80002248]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x27<br> - rd : x31<br> - rs2_w0_val == 3758096383<br>                                                                                                                                                  |[0x800001ec]:UKADDW t6, a7, s11<br> [0x800001f0]:csrrs a7, vxsat, zero<br> [0x800001f4]:sw t6, 56(s1)<br>      |
|   9|[0x80002250]<br>0xEFFFFFFF|- rs1 : x0<br> - rs2 : x22<br> - rd : x26<br> - rs1_w0_val == 0<br> - rs2_w0_val == 4026531839<br>                                                                                                                             |[0x80000208]:UKADDW s10, zero, s6<br> [0x8000020c]:csrrs zero, vxsat, zero<br> [0x80000210]:sw s10, 64(s1)<br> |
|  10|[0x80002258]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x3<br> - rd : x25<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 3758096383<br>                                                                                                                     |[0x80000228]:UKADDW s9, sp, gp<br> [0x8000022c]:csrrs sp, vxsat, zero<br> [0x80000230]:sw s9, 72(s1)<br>       |
|  11|[0x80002260]<br>0xFC3FFFFF|- rs1 : x14<br> - rs2 : x7<br> - rd : x12<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 4194304<br>                                                                                                                       |[0x80000244]:UKADDW a2, a4, t2<br> [0x80000248]:csrrs a4, vxsat, zero<br> [0x8000024c]:sw a2, 80(s1)<br>       |
|  12|[0x80002268]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x1<br> - rd : x30<br> - rs2_w0_val == 4261412863<br> - rs1_w0_val == 4294934527<br>                                                                                                                    |[0x80000264]:UKADDW t5, a1, ra<br> [0x80000268]:csrrs a1, vxsat, zero<br> [0x8000026c]:sw t5, 88(s1)<br>       |
|  13|[0x80002270]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x5<br> - rd : x10<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 4294836223<br>                                                                                                                    |[0x80000284]:UKADDW a0, s6, t0<br> [0x80000288]:csrrs s6, vxsat, zero<br> [0x8000028c]:sw a0, 96(s1)<br>       |
|  14|[0x80002278]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x19<br> - rd : x21<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 4294901759<br>                                                                                                                    |[0x800002a4]:UKADDW s5, t1, s3<br> [0x800002a8]:csrrs t1, vxsat, zero<br> [0x800002ac]:sw s5, 104(s1)<br>      |
|  15|[0x80002280]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x15<br> - rd : x16<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 8388608<br>                                                                                                                      |[0x800002c0]:UKADDW a6, t6, a5<br> [0x800002c4]:csrrs t6, vxsat, zero<br> [0x800002c8]:sw a6, 112(s1)<br>      |
|  16|[0x80002288]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x2<br> - rd : x23<br> - rs2_w0_val == 4292870143<br> - rs1_w0_val == 16777216<br>                                                                                                                       |[0x800002e4]:UKADDW s7, t0, sp<br> [0x800002e8]:csrrs t0, vxsat, zero<br> [0x800002ec]:sw s7, 0(a1)<br>        |
|  17|[0x80002290]<br>0xFFF807FF|- rs1 : x26<br> - rs2 : x9<br> - rd : x1<br> - rs2_w0_val == 4294443007<br> - rs1_w0_val == 2048<br>                                                                                                                           |[0x80000304]:UKADDW ra, s10, s1<br> [0x80000308]:csrrs s10, vxsat, zero<br> [0x8000030c]:sw ra, 8(a1)<br>      |
|  18|[0x80002298]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x6<br> - rd : x8<br> - rs2_w0_val == 4294705151<br> - rs1_w0_val == 67108864<br>                                                                                                                       |[0x80000320]:UKADDW fp, t5, t1<br> [0x80000324]:csrrs t5, vxsat, zero<br> [0x80000328]:sw fp, 16(a1)<br>       |
|  19|[0x800022a0]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x23<br> - rd : x19<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 1073741824<br>                                                                                                                    |[0x8000033c]:UKADDW s3, tp, s7<br> [0x80000340]:csrrs tp, vxsat, zero<br> [0x80000344]:sw s3, 24(a1)<br>       |
|  20|[0x800022a8]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rd : x7<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 4294966271<br>                                                                                                                    |[0x80000358]:UKADDW t2, a3, a2<br> [0x8000035c]:csrrs a3, vxsat, zero<br> [0x80000360]:sw t2, 32(a1)<br>       |
|  21|[0x800022b0]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x28<br> - rd : x27<br> - rs2_w0_val == 4294934527<br> - rs1_w0_val == 4294967263<br>                                                                                                                   |[0x80000374]:UKADDW s11, s5, t3<br> [0x80000378]:csrrs s5, vxsat, zero<br> [0x8000037c]:sw s11, 40(a1)<br>     |
|  22|[0x800022b8]<br>0xFFFFC005|- rs1 : x9<br> - rs2 : x31<br> - rd : x13<br> - rs2_w0_val == 4294950911<br>                                                                                                                                                   |[0x80000390]:UKADDW a3, s1, t6<br> [0x80000394]:csrrs s1, vxsat, zero<br> [0x80000398]:sw a3, 48(a1)<br>       |
|  23|[0x800022c0]<br>0xFFFFE005|- rs1 : x19<br> - rs2 : x21<br> - rd : x17<br> - rs2_w0_val == 4294959103<br>                                                                                                                                                  |[0x800003ac]:UKADDW a7, s3, s5<br> [0x800003b0]:csrrs s3, vxsat, zero<br> [0x800003b4]:sw a7, 56(a1)<br>       |
|  24|[0x800022c8]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x14<br> - rd : x9<br> - rs2_w0_val == 4294965247<br> - rs1_w0_val == 268435456<br>                                                                                                                     |[0x800003c8]:UKADDW s1, a6, a4<br> [0x800003cc]:csrrs a6, vxsat, zero<br> [0x800003d0]:sw s1, 64(a1)<br>       |
|  25|[0x800022d0]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x16<br> - rd : x5<br> - rs2_w0_val == 4294966271<br>                                                                                                                                                   |[0x800003e0]:UKADDW t0, s2, a6<br> [0x800003e4]:csrrs s2, vxsat, zero<br> [0x800003e8]:sw t0, 72(a1)<br>       |
|  26|[0x800022d8]<br>0xFFFFFDFF|- rs1 : x1<br> - rs2 : x18<br> - rd : x3<br> - rs2_w0_val == 4294966783<br>                                                                                                                                                    |[0x800003f8]:UKADDW gp, ra, s2<br> [0x800003fc]:csrrs ra, vxsat, zero<br> [0x80000400]:sw gp, 80(a1)<br>       |
|  27|[0x800022e0]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x30<br> - rd : x22<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 4294965247<br>                                                                                                                   |[0x80000414]:UKADDW s6, s8, t5<br> [0x80000418]:csrrs s8, vxsat, zero<br> [0x8000041c]:sw s6, 88(a1)<br>       |
|  28|[0x800022e8]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x13<br> - rd : x24<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 4294967293<br>                                                                                                                   |[0x8000042c]:UKADDW s8, a0, a3<br> [0x80000430]:csrrs a0, vxsat, zero<br> [0x80000434]:sw s8, 96(a1)<br>       |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x20<br> - rd : x6<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 4294967291<br>                                                                                                                     |[0x80000444]:UKADDW t1, gp, s4<br> [0x80000448]:csrrs gp, vxsat, zero<br> [0x8000044c]:sw t1, 104(a1)<br>      |
|  30|[0x800022f8]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x4<br> - rd : x2<br> - rs2_w0_val == 4294967263<br>                                                                                                                                                     |[0x80000468]:UKADDW sp, fp, tp<br> [0x8000046c]:csrrs fp, vxsat, zero<br> [0x80000470]:sw sp, 0(ra)<br>        |
|  31|[0x80002300]<br>0xFFFFFFFA|- rs1 : x23<br> - rs2 : x17<br> - rd : x11<br> - rs2_w0_val == 4294967279<br>                                                                                                                                                  |[0x80000480]:UKADDW a1, s7, a7<br> [0x80000484]:csrrs s7, vxsat, zero<br> [0x80000488]:sw a1, 8(ra)<br>        |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x24<br> - rd : x14<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 524288<br>                                                                                                                        |[0x80000498]:UKADDW a4, t2, s8<br> [0x8000049c]:csrrs t2, vxsat, zero<br> [0x800004a0]:sw a4, 16(ra)<br>       |
|  33|[0x80002310]<br>0xFFFFFFFF|- rs2_w0_val == 4294967291<br> - rs1_w0_val == 64<br>                                                                                                                                                                          |[0x800004b0]:UKADDW t6, t5, t4<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 24(ra)<br>       |
|  34|[0x80002318]<br>0xFFFFFFFF|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                 |[0x800004c8]:UKADDW t6, t5, t4<br> [0x800004cc]:csrrs t5, vxsat, zero<br> [0x800004d0]:sw t6, 32(ra)<br>       |
|  35|[0x80002320]<br>0xFFFFFFFF|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                  |[0x800004e4]:UKADDW t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 40(ra)<br>       |
|  36|[0x80002328]<br>0x80000011|- rs2_w0_val == 2147483648<br>                                                                                                                                                                                                 |[0x800004fc]:UKADDW t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 48(ra)<br>       |
|  37|[0x80002330]<br>0xC0000000|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                                  |[0x80000514]:UKADDW t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 56(ra)<br>       |
|  38|[0x80002338]<br>0xFFFFFFFF|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                  |[0x8000052c]:UKADDW t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 64(ra)<br>       |
|  39|[0x80002340]<br>0x12000000|- rs2_w0_val == 268435456<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                     |[0x80000544]:UKADDW t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 72(ra)<br>       |
|  40|[0x80002348]<br>0x08008000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 32768<br>                                                                                                                                                                        |[0x8000055c]:UKADDW t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 80(ra)<br>       |
|  41|[0x80002350]<br>0xFFFFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                   |[0x80000578]:UKADDW t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 88(ra)<br>       |
|  42|[0x80002358]<br>0x0200000F|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                   |[0x80000590]:UKADDW t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 96(ra)<br>       |
|  43|[0x80002360]<br>0xFFFFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                   |[0x800005a8]:UKADDW t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 104(ra)<br>      |
|  44|[0x80002368]<br>0xFFFFFFFF|- rs2_w0_val == 8388608<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                     |[0x800005c4]:UKADDW t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 112(ra)<br>      |
|  45|[0x80002370]<br>0xFFFFF0FF|- rs1_w0_val == 256<br>                                                                                                                                                                                                        |[0x800005e0]:UKADDW t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 120(ra)<br>      |
|  46|[0x80002378]<br>0x00000020|- rs1_w0_val == 32<br>                                                                                                                                                                                                         |[0x800005f8]:UKADDW t6, t5, t4<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 128(ra)<br>      |
|  47|[0x80002380]<br>0xFFFFFFFF|- rs1_w0_val == 16<br>                                                                                                                                                                                                         |[0x80000610]:UKADDW t6, t5, t4<br> [0x80000614]:csrrs t5, vxsat, zero<br> [0x80000618]:sw t6, 136(ra)<br>      |
|  48|[0x80002388]<br>0xFFFFC007|- rs1_w0_val == 8<br>                                                                                                                                                                                                          |[0x8000062c]:UKADDW t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 144(ra)<br>      |
|  49|[0x80002390]<br>0x00000007|- rs1_w0_val == 4<br>                                                                                                                                                                                                          |[0x80000644]:UKADDW t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 152(ra)<br>      |
|  50|[0x80002398]<br>0xAAAAAAAC|- rs2_w0_val == 2863311530<br>                                                                                                                                                                                                 |[0x80000660]:UKADDW t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 160(ra)<br>      |
|  51|[0x800023a0]<br>0x00000001|- rs1_w0_val == 1<br>                                                                                                                                                                                                          |[0x80000678]:UKADDW t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 168(ra)<br>      |
|  52|[0x800023a8]<br>0xFFFFFFFF|- rs1_w0_val == 4294967295<br>                                                                                                                                                                                                 |[0x80000694]:UKADDW t6, t5, t4<br> [0x80000698]:csrrs t5, vxsat, zero<br> [0x8000069c]:sw t6, 176(ra)<br>      |
|  53|[0x800023b0]<br>0xFFFFFFFF|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                    |[0x800006b0]:UKADDW t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 184(ra)<br>      |
|  54|[0x800023b8]<br>0x00200040|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                    |[0x800006c8]:UKADDW t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 192(ra)<br>      |
|  55|[0x800023c0]<br>0x00100013|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                    |[0x800006e0]:UKADDW t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 200(ra)<br>      |
|  56|[0x800023c8]<br>0xFFFFFFFF|- rs2_w0_val == 524288<br> - rs1_w0_val == 4294967167<br>                                                                                                                                                                      |[0x800006f8]:UKADDW t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 208(ra)<br>      |
|  57|[0x800023d0]<br>0x40040000|- rs2_w0_val == 262144<br>                                                                                                                                                                                                     |[0x80000710]:UKADDW t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 216(ra)<br>      |
|  58|[0x800023d8]<br>0xFFFFFFFF|- rs2_w0_val == 131072<br> - rs1_w0_val == 4294959103<br>                                                                                                                                                                      |[0x8000072c]:UKADDW t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 224(ra)<br>      |
|  59|[0x800023e0]<br>0xFFFFFFFF|- rs2_w0_val == 65536<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                                       |[0x80000744]:UKADDW t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 232(ra)<br>      |
|  60|[0x800023e8]<br>0x00008010|- rs2_w0_val == 32768<br>                                                                                                                                                                                                      |[0x8000075c]:UKADDW t6, t5, t4<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sw t6, 240(ra)<br>      |
|  61|[0x800023f0]<br>0x00004008|- rs2_w0_val == 16384<br>                                                                                                                                                                                                      |[0x80000774]:UKADDW t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 248(ra)<br>      |
|  62|[0x800023f8]<br>0x00802000|- rs2_w0_val == 8192<br>                                                                                                                                                                                                       |[0x8000078c]:UKADDW t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 256(ra)<br>      |
|  63|[0x80002400]<br>0xF0000FFF|- rs2_w0_val == 4096<br>                                                                                                                                                                                                       |[0x800007a8]:UKADDW t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 264(ra)<br>      |
|  64|[0x80002408]<br>0xFFFFFFFF|- rs2_w0_val == 2048<br>                                                                                                                                                                                                       |[0x800007c4]:UKADDW t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 272(ra)<br>      |
|  65|[0x80002410]<br>0x04000400|- rs2_w0_val == 1024<br>                                                                                                                                                                                                       |[0x800007dc]:UKADDW t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 280(ra)<br>      |
|  66|[0x80002418]<br>0x55555755|- rs2_w0_val == 512<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                         |[0x800007f8]:UKADDW t6, t5, t4<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sw t6, 288(ra)<br>      |
|  67|[0x80002420]<br>0xFFFF00FF|- rs2_w0_val == 256<br>                                                                                                                                                                                                        |[0x80000814]:UKADDW t6, t5, t4<br> [0x80000818]:csrrs t5, vxsat, zero<br> [0x8000081c]:sw t6, 296(ra)<br>      |
|  68|[0x80002428]<br>0x00040080|- rs2_w0_val == 128<br> - rs1_w0_val == 262144<br>                                                                                                                                                                             |[0x8000082c]:UKADDW t6, t5, t4<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sw t6, 304(ra)<br>      |
|  69|[0x80002430]<br>0x00000043|- rs2_w0_val == 64<br>                                                                                                                                                                                                         |[0x80000844]:UKADDW t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 312(ra)<br>      |
|  70|[0x80002438]<br>0xFFFFC00F|- rs2_w0_val == 16<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                          |[0x80000860]:UKADDW t6, t5, t4<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sw t6, 320(ra)<br>      |
|  71|[0x80002440]<br>0xFFFFFC07|- rs2_w0_val == 8<br>                                                                                                                                                                                                          |[0x80000878]:UKADDW t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 328(ra)<br>      |
|  72|[0x80002448]<br>0xFFFFFFFF|- rs2_w0_val == 4<br>                                                                                                                                                                                                          |[0x80000890]:UKADDW t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 336(ra)<br>      |
|  73|[0x80002450]<br>0x00020001|- rs2_w0_val == 1<br> - rs1_w0_val == 131072<br>                                                                                                                                                                               |[0x800008a8]:UKADDW t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 344(ra)<br>      |
|  74|[0x80002458]<br>0xFFFFFFFF|- rs2_w0_val == 4294967295<br>                                                                                                                                                                                                 |[0x800008c4]:UKADDW t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 352(ra)<br>      |
|  75|[0x80002460]<br>0xFFFFFFFF|- rs1_w0_val == 2863311530<br>                                                                                                                                                                                                 |[0x800008e4]:UKADDW t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 360(ra)<br>      |
|  76|[0x80002468]<br>0x8000000C|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                 |[0x80000900]:UKADDW t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 368(ra)<br>      |
|  77|[0x80002470]<br>0xFFFFFFFF|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                 |[0x8000091c]:UKADDW t6, t5, t4<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sw t6, 376(ra)<br>      |
|  78|[0x80002478]<br>0xFFFFFFFF|- rs1_w0_val == 4261412863<br>                                                                                                                                                                                                 |[0x8000093c]:UKADDW t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 384(ra)<br>      |
|  79|[0x80002480]<br>0xFFFFFFFF|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                 |[0x8000095c]:UKADDW t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 392(ra)<br>      |
|  80|[0x80002488]<br>0xFFC0001F|- rs2_w0_val == 32<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                          |[0x80000978]:UKADDW t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 400(ra)<br>      |
|  81|[0x80002490]<br>0xFFE03FFF|- rs1_w0_val == 4292870143<br>                                                                                                                                                                                                 |[0x80000994]:UKADDW t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 408(ra)<br>      |
|  82|[0x80002498]<br>0xFFFFFFFF|- rs1_w0_val == 4294705151<br>                                                                                                                                                                                                 |[0x800009b0]:UKADDW t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 416(ra)<br>      |
|  83|[0x800024a0]<br>0xFFFFFFFF|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                 |[0x800009cc]:UKADDW t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 424(ra)<br>      |
|  84|[0x800024a8]<br>0xFFFFFFFF|- rs1_w0_val == 4294967279<br>                                                                                                                                                                                                 |[0x800009e8]:UKADDW t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 432(ra)<br>      |
|  85|[0x800024b0]<br>0xFFFFFFFF|- rs1_w0_val == 4294967287<br>                                                                                                                                                                                                 |[0x80000a00]:UKADDW t6, t5, t4<br> [0x80000a04]:csrrs t5, vxsat, zero<br> [0x80000a08]:sw t6, 440(ra)<br>      |
|  86|[0x800024b8]<br>0xFFFFFFFF|- rs1_w0_val == 4294967294<br>                                                                                                                                                                                                 |[0x80000a1c]:UKADDW t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 448(ra)<br>      |
|  87|[0x800024c0]<br>0xFFFFFFFF|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                  |[0x80000a34]:UKADDW t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 456(ra)<br>      |
|  88|[0x800024c8]<br>0x08000002|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                  |[0x80000a4c]:UKADDW t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 464(ra)<br>      |
|  89|[0x800024d0]<br>0x00000600|- rs1_w0_val == 512<br>                                                                                                                                                                                                        |[0x80000a64]:UKADDW t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 472(ra)<br>      |
|  90|[0x800024d8]<br>0x00220000|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                    |[0x80000a7c]:UKADDW t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 480(ra)<br>      |
|  91|[0x800024e0]<br>0xFFFFFFFF|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                    |[0x80000a98]:UKADDW t6, t5, t4<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sw t6, 488(ra)<br>      |
|  92|[0x800024e8]<br>0x00010001|- rs1_w0_val == 65536<br>                                                                                                                                                                                                      |[0x80000ab0]:UKADDW t6, t5, t4<br> [0x80000ab4]:csrrs t5, vxsat, zero<br> [0x80000ab8]:sw t6, 496(ra)<br>      |
|  93|[0x800024f0]<br>0x40004000|- rs1_w0_val == 16384<br>                                                                                                                                                                                                      |[0x80000ac8]:UKADDW t6, t5, t4<br> [0x80000acc]:csrrs t5, vxsat, zero<br> [0x80000ad0]:sw t6, 504(ra)<br>      |
|  94|[0x800024f8]<br>0xFE001FFF|- rs1_w0_val == 8192<br>                                                                                                                                                                                                       |[0x80000ae4]:UKADDW t6, t5, t4<br> [0x80000ae8]:csrrs t5, vxsat, zero<br> [0x80000aec]:sw t6, 512(ra)<br>      |
|  95|[0x80002500]<br>0x00001020|- rs1_w0_val == 4096<br>                                                                                                                                                                                                       |[0x80000afc]:UKADDW t6, t5, t4<br> [0x80000b00]:csrrs t5, vxsat, zero<br> [0x80000b04]:sw t6, 520(ra)<br>      |
|  96|[0x80002508]<br>0xFFFFFBFF|- rs1_w0_val == 1024<br>                                                                                                                                                                                                       |[0x80000b18]:UKADDW t6, t5, t4<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sw t6, 528(ra)<br>      |
|  97|[0x80002510]<br>0xFFFFFFFF|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                 |[0x80000b30]:UKADDW t6, t5, t4<br> [0x80000b34]:csrrs t5, vxsat, zero<br> [0x80000b38]:sw t6, 536(ra)<br>      |
