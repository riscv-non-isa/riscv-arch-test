
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019f0')]      |
| SIG_REGION                | [('0x80003210', '0x80003ad0', '280 dwords')]      |
| COV_LABELS                | ukstas32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukstas32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 280      |
| STAT1                     | 136      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 140     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001210]:UKSTAS32 t6, t5, t4
      [0x80001214]:sd t6, 944(ra)
 -- Signature Address: 0x800037a0 Data: 0xAAB2AAAA0000000D
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 524288
      - rs2_w0_val == 0
      - rs1_w1_val == 2863311530




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001960]:UKSTAS32 t6, t5, t4
      [0x80001964]:sd t6, 1696(ra)
 -- Signature Address: 0x80003a90 Data: 0xFFE3FFFF00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 262144
      - rs2_w0_val == 16777216
      - rs1_w1_val == 4292870143




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c0]:UKSTAS32 t6, t5, t4
      [0x800019c4]:sd t6, 1728(ra)
 -- Signature Address: 0x80003ab0 Data: 0xFFFC000300000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294705151
      - rs2_w0_val == 65536
      - rs1_w1_val == 4
      - rs1_w0_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e0]:UKSTAS32 t6, t5, t4
      [0x800019e4]:sd t6, 1744(ra)
 -- Signature Address: 0x80003ac0 Data: 0xFFFFFF7F00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294967167
      - rs2_w0_val == 1431655765
      - rs1_w1_val == 0
      - rs1_w0_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukstas32', 'rs1 : x11', 'rs2 : x11', 'rd : x4', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 262144', 'rs2_w0_val == 16777216', 'rs1_w1_val == 262144', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800003bc]:UKSTAS32 tp, a1, a1
	-[0x800003c0]:sd tp, 0(gp)
Current Store : [0x800003c4] : sd a1, 8(gp) -- Store: [0x80003218]:0x0004000001000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003e0]:UKSTAS32 s5, s5, s5
	-[0x800003e4]:sd s5, 16(gp)
Current Store : [0x800003e8] : sd s5, 24(gp) -- Store: [0x80003228]:0x0000001A00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 4294959103', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000410]:UKSTAS32 s8, a2, s6
	-[0x80000414]:sd s8, 32(gp)
Current Store : [0x80000418] : sd a2, 40(gp) -- Store: [0x80003238]:0x0000000EFFFFDFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x30', 'rd : x1', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000444]:UKSTAS32 ra, ra, t5
	-[0x80000448]:sd ra, 48(gp)
Current Store : [0x8000044c] : sd ra, 56(gp) -- Store: [0x80003248]:0xFFFFFFFF00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 4294950911', 'rs1_w1_val == 32', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000474]:UKSTAS32 a6, a3, a6
	-[0x80000478]:sd a6, 64(gp)
Current Store : [0x8000047c] : sd a3, 72(gp) -- Store: [0x80003258]:0x000000207FFFFFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x31', 'rs2_w1_val == 2147483647', 'rs1_w1_val == 4286578687', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800004a4]:UKSTAS32 t6, t1, sp
	-[0x800004a8]:sd t6, 80(gp)
Current Store : [0x800004ac] : sd t1, 88(gp) -- Store: [0x80003268]:0xFF7FFFFFFFBFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x28', 'rd : x12', 'rs2_w1_val == 3221225471', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 65536', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800004dc]:UKSTAS32 a2, t6, t3
	-[0x800004e0]:sd a2, 96(gp)
Current Store : [0x800004e4] : sd t6, 104(gp) -- Store: [0x80003278]:0x0001000000001000




Last Coverpoint : ['rs1 : x27', 'rs2 : x10', 'rd : x6', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 2048', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000518]:UKSTAS32 t1, s11, a0
	-[0x8000051c]:sd t1, 112(gp)
Current Store : [0x80000520] : sd s11, 120(gp) -- Store: [0x80003288]:0xAAAAAAAAFFF7FFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x19', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 512', 'rs1_w1_val == 256', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000544]:UKSTAS32 s3, s2, t0
	-[0x80000548]:sd s3, 128(gp)
Current Store : [0x8000054c] : sd s2, 136(gp) -- Store: [0x80003298]:0x00000100FFFF7FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x26', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 2048', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000568]:UKSTAS32 s10, t2, a3
	-[0x8000056c]:sd s10, 144(gp)
Current Store : [0x80000570] : sd t2, 152(gp) -- Store: [0x800032a8]:0x0000080000000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x18', 'rd : x29', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000594]:UKSTAS32 t4, fp, s2
	-[0x80000598]:sd t4, 160(gp)
Current Store : [0x8000059c] : sd fp, 168(gp) -- Store: [0x800032b8]:0x0000000E0000000D




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x25', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 3758096383', 'rs1_w1_val == 4292870143', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800005bc]:UKSTAS32 s9, a6, s8
	-[0x800005c0]:sd s9, 176(gp)
Current Store : [0x800005c4] : sd a6, 184(gp) -- Store: [0x800032c8]:0xFFDFFFFFFFFFFFF7




Last Coverpoint : ['rs1 : x30', 'rs2 : x31', 'rd : x10', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 4294967287', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800005e8]:UKSTAS32 a0, t5, t6
	-[0x800005ec]:sd a0, 192(gp)
Current Store : [0x800005f0] : sd t5, 200(gp) -- Store: [0x800032d8]:0xFF7FFFFFFFFFF7FF




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x14', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 64', 'rs1_w1_val == 131072', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000610]:UKSTAS32 a4, s8, a7
	-[0x80000614]:sd a4, 208(gp)
Current Store : [0x80000618] : sd s8, 216(gp) -- Store: [0x800032e8]:0x0002000008000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x20', 'rd : x15', 'rs1_w0_val == 0', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4194304', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000640]:UKSTAS32 a5, zero, s4
	-[0x80000644]:sd a5, 224(gp)
Current Store : [0x80000648] : sd zero, 232(gp) -- Store: [0x800032f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x17', 'rs2_w1_val == 4293918719', 'rs1_w1_val == 4227858431', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80000674]:UKSTAS32 a7, s7, tp
	-[0x80000678]:sd a7, 0(a6)
Current Store : [0x8000067c] : sd s7, 8(a6) -- Store: [0x80003308]:0xFBFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x25', 'rd : x28', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 4294967294', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000698]:UKSTAS32 t3, a0, s9
	-[0x8000069c]:sd t3, 16(a6)
Current Store : [0x800006a0] : sd a0, 24(a6) -- Store: [0x80003318]:0xFFFFFEFFFFFFFFFE




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x0', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 65536', 'rs1_w1_val == 4', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800006c8]:UKSTAS32 zero, s6, t4
	-[0x800006cc]:sd zero, 32(a6)
Current Store : [0x800006d0] : sd s6, 40(a6) -- Store: [0x80003328]:0x0000000400000800




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x2', 'rs2_w1_val == 4294836223', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800006f4]:UKSTAS32 sp, t0, s10
	-[0x800006f8]:sd sp, 48(a6)
Current Store : [0x800006fc] : sd t0, 56(a6) -- Store: [0x80003338]:0x00000020FF7FFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x18', 'rs2_w1_val == 4294901759', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000718]:UKSTAS32 s2, s4, s1
	-[0x8000071c]:sd s2, 64(a6)
Current Store : [0x80000720] : sd s4, 72(a6) -- Store: [0x80003348]:0x0000000B00400000




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rd : x5', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 4294967039']
Last Code Sequence : 
	-[0x8000073c]:UKSTAS32 t0, a5, s11
	-[0x80000740]:sd t0, 80(a6)
Current Store : [0x80000744] : sd a5, 88(a6) -- Store: [0x80003358]:0x0000000CFFFFFFF7




Last Coverpoint : ['rs1 : x26', 'rs2 : x6', 'rd : x22', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 4294966783', 'rs1_w1_val == 4096', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000764]:UKSTAS32 s6, s10, t1
	-[0x80000768]:sd s6, 96(a6)
Current Store : [0x8000076c] : sd s10, 104(a6) -- Store: [0x80003368]:0x00001000FFDFFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x15', 'rd : x11', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 524288', 'rs1_w1_val == 33554432', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000078c]:UKSTAS32 a1, s9, a5
	-[0x80000790]:sd a1, 112(a6)
Current Store : [0x80000794] : sd s9, 120(a6) -- Store: [0x80003378]:0x0200000000010000




Last Coverpoint : ['rs1 : x14', 'rs2 : x19', 'rd : x8', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 4026531839', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800007b8]:UKSTAS32 fp, a4, s3
	-[0x800007bc]:sd fp, 128(a6)
Current Store : [0x800007c0] : sd a4, 136(a6) -- Store: [0x80003388]:0x00000020FFEFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x3', 'rd : x9', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800007e0]:UKSTAS32 s1, tp, gp
	-[0x800007e4]:sd s1, 144(a6)
Current Store : [0x800007e8] : sd tp, 152(a6) -- Store: [0x80003398]:0x0000000200000013




Last Coverpoint : ['rs1 : x19', 'rs2 : x7', 'rd : x27', 'rs2_w1_val == 4294966271', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000804]:UKSTAS32 s11, s3, t2
	-[0x80000808]:sd s11, 160(a6)
Current Store : [0x8000080c] : sd s3, 168(a6) -- Store: [0x800033a8]:0x0000000801000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x7', 'rs2_w1_val == 4294966783', 'rs2_w0_val == 4294934527', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000828]:UKSTAS32 t2, a7, ra
	-[0x8000082c]:sd t2, 176(a6)
Current Store : [0x80000830] : sd a7, 184(a6) -- Store: [0x800033b8]:0x0000000604000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rd : x30', 'rs2_w1_val == 4294967039']
Last Code Sequence : 
	-[0x80000850]:UKSTAS32 t5, gp, fp
	-[0x80000854]:sd t5, 192(a6)
Current Store : [0x80000858] : sd gp, 200(a6) -- Store: [0x800033c8]:0xFFFFFEFFFFEFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x13', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000870]:UKSTAS32 a3, sp, zero
	-[0x80000874]:sd a3, 208(a6)
Current Store : [0x80000878] : sd sp, 216(a6) -- Store: [0x800033d8]:0x0000000000004000




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x23', 'rs2_w1_val == 4294967231', 'rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000890]:UKSTAS32 s7, s1, a2
	-[0x80000894]:sd s7, 224(a6)
Current Store : [0x80000898] : sd s1, 232(a6) -- Store: [0x800033e8]:0x0000000301000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x23', 'rd : x3', 'rs2_w1_val == 4294967263']
Last Code Sequence : 
	-[0x800008c0]:UKSTAS32 gp, t3, s7
	-[0x800008c4]:sd gp, 0(ra)
Current Store : [0x800008c8] : sd t3, 8(ra) -- Store: [0x800033f8]:0x00000020FFFFFFF7




Last Coverpoint : ['rs1 : x29', 'rs2 : x14', 'rd : x20', 'rs2_w1_val == 4294967279', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800008ec]:UKSTAS32 s4, t4, a4
	-[0x800008f0]:sd s4, 16(ra)
Current Store : [0x800008f4] : sd t4, 24(ra) -- Store: [0x80003408]:0x7FFFFFFF00040000




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000090c]:UKSTAS32 t6, t5, t4
	-[0x80000910]:sd t6, 32(ra)
Current Store : [0x80000914] : sd t5, 40(ra) -- Store: [0x80003418]:0x040000000000000E




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 4294967295', 'rs1_w1_val == 524288', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000930]:UKSTAS32 t6, t5, t4
	-[0x80000934]:sd t6, 48(ra)
Current Store : [0x80000938] : sd t5, 56(ra) -- Store: [0x80003428]:0x0008000020000000




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 4', 'rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x80000954]:UKSTAS32 t6, t5, t4
	-[0x80000958]:sd t6, 64(ra)
Current Store : [0x8000095c] : sd t5, 72(ra) -- Store: [0x80003438]:0xFFFFFFBF0000000D




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 32768', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000980]:UKSTAS32 t6, t5, t4
	-[0x80000984]:sd t6, 80(ra)
Current Store : [0x80000988] : sd t5, 88(ra) -- Store: [0x80003448]:0xFF7FFFFF00008000




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x800009a8]:UKSTAS32 t6, t5, t4
	-[0x800009ac]:sd t6, 96(ra)
Current Store : [0x800009b0] : sd t5, 104(ra) -- Store: [0x80003458]:0xFFF7FFFF0000000C




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800009d4]:UKSTAS32 t6, t5, t4
	-[0x800009d8]:sd t6, 112(ra)
Current Store : [0x800009dc] : sd t5, 120(ra) -- Store: [0x80003468]:0x0000000A00010000




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 1073741824', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000a00]:UKSTAS32 t6, t5, t4
	-[0x80000a04]:sd t6, 128(ra)
Current Store : [0x80000a08] : sd t5, 136(ra) -- Store: [0x80003478]:0xFBFFFFFF00000080




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a24]:UKSTAS32 t6, t5, t4
	-[0x80000a28]:sd t6, 144(ra)
Current Store : [0x80000a2c] : sd t5, 152(ra) -- Store: [0x80003488]:0x000000037FFFFFFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80000a50]:UKSTAS32 t6, t5, t4
	-[0x80000a54]:sd t6, 160(ra)
Current Store : [0x80000a58] : sd t5, 168(ra) -- Store: [0x80003498]:0xFFFFEFFF00004000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 1', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000a78]:UKSTAS32 t6, t5, t4
	-[0x80000a7c]:sd t6, 176(ra)
Current Store : [0x80000a80] : sd t5, 184(ra) -- Store: [0x800034a8]:0xFFFFFF7FFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000aa0]:UKSTAS32 t6, t5, t4
	-[0x80000aa4]:sd t6, 192(ra)
Current Store : [0x80000aa8] : sd t5, 200(ra) -- Store: [0x800034b8]:0x0800000000000003




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000acc]:UKSTAS32 t6, t5, t4
	-[0x80000ad0]:sd t6, 208(ra)
Current Store : [0x80000ad4] : sd t5, 216(ra) -- Store: [0x800034c8]:0xFFFFFF7FFFFFF7FF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 67108864', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000af0]:UKSTAS32 t6, t5, t4
	-[0x80000af4]:sd t6, 224(ra)
Current Store : [0x80000af8] : sd t5, 232(ra) -- Store: [0x800034d8]:0xFFFFBFFF80000000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000b14]:UKSTAS32 t6, t5, t4
	-[0x80000b18]:sd t6, 240(ra)
Current Store : [0x80000b1c] : sd t5, 248(ra) -- Store: [0x800034e8]:0xFFFFFFFFFFFDFFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000b44]:UKSTAS32 t6, t5, t4
	-[0x80000b48]:sd t6, 256(ra)
Current Store : [0x80000b4c] : sd t5, 264(ra) -- Store: [0x800034f8]:0x0000000600000020




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 4278190079', 'rs1_w1_val == 4293918719', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000b6c]:UKSTAS32 t6, t5, t4
	-[0x80000b70]:sd t6, 272(ra)
Current Store : [0x80000b74] : sd t5, 280(ra) -- Store: [0x80003508]:0xFFEFFFFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b98]:UKSTAS32 t6, t5, t4
	-[0x80000b9c]:sd t6, 288(ra)
Current Store : [0x80000ba0] : sd t5, 296(ra) -- Store: [0x80003518]:0x0004000000080000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000bbc]:UKSTAS32 t6, t5, t4
	-[0x80000bc0]:sd t6, 304(ra)
Current Store : [0x80000bc4] : sd t5, 312(ra) -- Store: [0x80003528]:0x0000000C00000004




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000be8]:UKSTAS32 t6, t5, t4
	-[0x80000bec]:sd t6, 320(ra)
Current Store : [0x80000bf0] : sd t5, 328(ra) -- Store: [0x80003538]:0x5555555500020000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w1_val == 4290772991', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c14]:UKSTAS32 t6, t5, t4
	-[0x80000c18]:sd t6, 336(ra)
Current Store : [0x80000c1c] : sd t5, 344(ra) -- Store: [0x80003548]:0xFFBFFFFF00002000




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000c40]:UKSTAS32 t6, t5, t4
	-[0x80000c44]:sd t6, 352(ra)
Current Store : [0x80000c48] : sd t5, 360(ra) -- Store: [0x80003558]:0xFFF7FFFF00000400




Last Coverpoint : ['rs2_w1_val == 4294967167', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c68]:UKSTAS32 t6, t5, t4
	-[0x80000c6c]:sd t6, 368(ra)
Current Store : [0x80000c70] : sd t5, 376(ra) -- Store: [0x80003568]:0xFFDFFFFF00000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000c90]:UKSTAS32 t6, t5, t4
	-[0x80000c94]:sd t6, 384(ra)
Current Store : [0x80000c98] : sd t5, 392(ra) -- Store: [0x80003578]:0x0008000000000100




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 268435456', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000cb4]:UKSTAS32 t6, t5, t4
	-[0x80000cb8]:sd t6, 400(ra)
Current Store : [0x80000cbc] : sd t5, 408(ra) -- Store: [0x80003588]:0xFDFFFFFF00000040




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ce4]:UKSTAS32 t6, t5, t4
	-[0x80000ce8]:sd t6, 416(ra)
Current Store : [0x80000cec] : sd t5, 424(ra) -- Store: [0x80003598]:0xFFF7FFFF00000010




Last Coverpoint : ['rs1_w1_val == 128', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d0c]:UKSTAS32 t6, t5, t4
	-[0x80000d10]:sd t6, 432(ra)
Current Store : [0x80000d14] : sd t5, 440(ra) -- Store: [0x800035a8]:0x0000008000000008




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 16', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d34]:UKSTAS32 t6, t5, t4
	-[0x80000d38]:sd t6, 448(ra)
Current Store : [0x80000d3c] : sd t5, 456(ra) -- Store: [0x800035b8]:0x0000001000000002




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000d60]:UKSTAS32 t6, t5, t4
	-[0x80000d64]:sd t6, 464(ra)
Current Store : [0x80000d68] : sd t5, 472(ra) -- Store: [0x800035c8]:0x00001000FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000d88]:UKSTAS32 t6, t5, t4
	-[0x80000d8c]:sd t6, 480(ra)
Current Store : [0x80000d90] : sd t5, 488(ra) -- Store: [0x800035d8]:0xFFFFFFFF0000000D




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == 4294836223']
Last Code Sequence : 
	-[0x80000db0]:UKSTAS32 t6, t5, t4
	-[0x80000db4]:sd t6, 496(ra)
Current Store : [0x80000db8] : sd t5, 504(ra) -- Store: [0x800035e8]:0xFFFDFFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000dd0]:UKSTAS32 t6, t5, t4
	-[0x80000dd4]:sd t6, 512(ra)
Current Store : [0x80000dd8] : sd t5, 520(ra) -- Store: [0x800035f8]:0x0000000201000000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000df4]:UKSTAS32 t6, t5, t4
	-[0x80000df8]:sd t6, 528(ra)
Current Store : [0x80000dfc] : sd t5, 536(ra) -- Store: [0x80003608]:0x00000006EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000e1c]:UKSTAS32 t6, t5, t4
	-[0x80000e20]:sd t6, 544(ra)
Current Store : [0x80000e24] : sd t5, 552(ra) -- Store: [0x80003618]:0x000004000000000D




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000e3c]:UKSTAS32 t6, t5, t4
	-[0x80000e40]:sd t6, 560(ra)
Current Store : [0x80000e44] : sd t5, 568(ra) -- Store: [0x80003628]:0x0000000402000000




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000e64]:UKSTAS32 t6, t5, t4
	-[0x80000e68]:sd t6, 576(ra)
Current Store : [0x80000e6c] : sd t5, 584(ra) -- Store: [0x80003638]:0x00001000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 256']
Last Code Sequence : 
	-[0x80000e8c]:UKSTAS32 t6, t5, t4
	-[0x80000e90]:sd t6, 592(ra)
Current Store : [0x80000e94] : sd t5, 600(ra) -- Store: [0x80003648]:0xFFDFFFFF00000008




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 4294836223', 'rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x80000eb8]:UKSTAS32 t6, t5, t4
	-[0x80000ebc]:sd t6, 608(ra)
Current Store : [0x80000ec0] : sd t5, 616(ra) -- Store: [0x80003658]:0xFFFFFFFDFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80000eec]:UKSTAS32 t6, t5, t4
	-[0x80000ef0]:sd t6, 624(ra)
Current Store : [0x80000ef4] : sd t5, 632(ra) -- Store: [0x80003668]:0xAAAAAAAABFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 4294965247', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000f18]:UKSTAS32 t6, t5, t4
	-[0x80000f1c]:sd t6, 640(ra)
Current Store : [0x80000f20] : sd t5, 648(ra) -- Store: [0x80003678]:0x00002000BFFFFFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 4294934527', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000f48]:UKSTAS32 t6, t5, t4
	-[0x80000f4c]:sd t6, 656(ra)
Current Store : [0x80000f50] : sd t5, 664(ra) -- Store: [0x80003688]:0xFFFF7FFFFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x80000f6c]:UKSTAS32 t6, t5, t4
	-[0x80000f70]:sd t6, 672(ra)
Current Store : [0x80000f74] : sd t5, 680(ra) -- Store: [0x80003698]:0x0000000700000003




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x80000f94]:UKSTAS32 t6, t5, t4
	-[0x80000f98]:sd t6, 688(ra)
Current Store : [0x80000f9c] : sd t5, 696(ra) -- Store: [0x800036a8]:0xFFFFF7FF00002000




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x80000fc0]:UKSTAS32 t6, t5, t4
	-[0x80000fc4]:sd t6, 704(ra)
Current Store : [0x80000fc8] : sd t5, 712(ra) -- Store: [0x800036b8]:0xBFFFFFFF00010000




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs2_w0_val == 16384', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000fe4]:UKSTAS32 t6, t5, t4
	-[0x80000fe8]:sd t6, 720(ra)
Current Store : [0x80000fec] : sd t5, 728(ra) -- Store: [0x800036c8]:0xFFF7FFFFFFFFFDFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001000]:UKSTAS32 t6, t5, t4
	-[0x80001004]:sd t6, 736(ra)
Current Store : [0x80001008] : sd t5, 744(ra) -- Store: [0x800036d8]:0xFFBFFFFF00000000




Last Coverpoint : ['rs2_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80001024]:UKSTAS32 t6, t5, t4
	-[0x80001028]:sd t6, 752(ra)
Current Store : [0x8000102c] : sd t5, 760(ra) -- Store: [0x800036e8]:0xFFFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80001050]:UKSTAS32 t6, t5, t4
	-[0x80001054]:sd t6, 768(ra)
Current Store : [0x80001058] : sd t5, 776(ra) -- Store: [0x800036f8]:0x0000000C00000011




Last Coverpoint : ['rs2_w0_val == 4294705151', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001080]:UKSTAS32 t6, t5, t4
	-[0x80001084]:sd t6, 784(ra)
Current Store : [0x80001088] : sd t5, 792(ra) -- Store: [0x80003708]:0xFFFFFFFE0000000F




Last Coverpoint : ['rs2_w0_val == 4294901759', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800010ac]:UKSTAS32 t6, t5, t4
	-[0x800010b0]:sd t6, 800(ra)
Current Store : [0x800010b4] : sd t5, 808(ra) -- Store: [0x80003718]:0x0000004000000003




Last Coverpoint : ['rs2_w0_val == 4294963199', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800010d8]:UKSTAS32 t6, t5, t4
	-[0x800010dc]:sd t6, 816(ra)
Current Store : [0x800010e0] : sd t5, 824(ra) -- Store: [0x80003728]:0x0080000002000000




Last Coverpoint : ['rs2_w0_val == 4294967231', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800010fc]:UKSTAS32 t6, t5, t4
	-[0x80001100]:sd t6, 832(ra)
Current Store : [0x80001104] : sd t5, 840(ra) -- Store: [0x80003738]:0x0100000000000010




Last Coverpoint : ['rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80001120]:UKSTAS32 t6, t5, t4
	-[0x80001124]:sd t6, 848(ra)
Current Store : [0x80001128] : sd t5, 856(ra) -- Store: [0x80003748]:0x000000030000000E




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000114c]:UKSTAS32 t6, t5, t4
	-[0x80001150]:sd t6, 864(ra)
Current Store : [0x80001154] : sd t5, 872(ra) -- Store: [0x80003758]:0xFFF7FFFF00100000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80001174]:UKSTAS32 t6, t5, t4
	-[0x80001178]:sd t6, 880(ra)
Current Store : [0x8000117c] : sd t5, 888(ra) -- Store: [0x80003768]:0xFFFFFEFF0000000C




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x8000119c]:UKSTAS32 t6, t5, t4
	-[0x800011a0]:sd t6, 896(ra)
Current Store : [0x800011a4] : sd t5, 904(ra) -- Store: [0x80003778]:0x00000006DFFFFFFF




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x800011c0]:UKSTAS32 t6, t5, t4
	-[0x800011c4]:sd t6, 912(ra)
Current Store : [0x800011c8] : sd t5, 920(ra) -- Store: [0x80003788]:0xFFFFFFEF00000013




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x800011ec]:UKSTAS32 t6, t5, t4
	-[0x800011f0]:sd t6, 928(ra)
Current Store : [0x800011f4] : sd t5, 936(ra) -- Store: [0x80003798]:0xFFFFFBFFFFFFF7FF




Last Coverpoint : ['opcode : ukstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 524288', 'rs2_w0_val == 0', 'rs1_w1_val == 2863311530']
Last Code Sequence : 
	-[0x80001210]:UKSTAS32 t6, t5, t4
	-[0x80001214]:sd t6, 944(ra)
Current Store : [0x80001218] : sd t5, 952(ra) -- Store: [0x800037a8]:0xAAAAAAAA0000000D




Last Coverpoint : ['rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80001238]:UKSTAS32 t6, t5, t4
	-[0x8000123c]:sd t6, 960(ra)
Current Store : [0x80001240] : sd t5, 968(ra) -- Store: [0x800037b8]:0xDFFFFFFF00000003




Last Coverpoint : ['rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80001260]:UKSTAS32 t6, t5, t4
	-[0x80001264]:sd t6, 976(ra)
Current Store : [0x80001268] : sd t5, 984(ra) -- Store: [0x800037c8]:0xEFFFFFFF00000005




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x80001288]:UKSTAS32 t6, t5, t4
	-[0x8000128c]:sd t6, 992(ra)
Current Store : [0x80001290] : sd t5, 1000(ra) -- Store: [0x800037d8]:0xF7FFFFFF0000000B




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w1_val == 4278190079']
Last Code Sequence : 
	-[0x800012b4]:UKSTAS32 t6, t5, t4
	-[0x800012b8]:sd t6, 1008(ra)
Current Store : [0x800012bc] : sd t5, 1016(ra) -- Store: [0x800037e8]:0xFEFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == 4294705151', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800012d8]:UKSTAS32 t6, t5, t4
	-[0x800012dc]:sd t6, 1024(ra)
Current Store : [0x800012e0] : sd t5, 1032(ra) -- Store: [0x800037f8]:0xFFFBFFFFFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w1_val == 4294901759']
Last Code Sequence : 
	-[0x80001300]:UKSTAS32 t6, t5, t4
	-[0x80001304]:sd t6, 1040(ra)
Current Store : [0x80001308] : sd t5, 1048(ra) -- Store: [0x80003808]:0xFFFEFFFFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x80001330]:UKSTAS32 t6, t5, t4
	-[0x80001334]:sd t6, 1056(ra)
Current Store : [0x80001338] : sd t5, 1064(ra) -- Store: [0x80003818]:0xFFFFDFFF00000800




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x80001358]:UKSTAS32 t6, t5, t4
	-[0x8000135c]:sd t6, 1072(ra)
Current Store : [0x80001360] : sd t5, 1080(ra) -- Store: [0x80003828]:0xFFFFFDFF00000002




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x8000137c]:UKSTAS32 t6, t5, t4
	-[0x80001380]:sd t6, 1088(ra)
Current Store : [0x80001384] : sd t5, 1096(ra) -- Store: [0x80003838]:0xFFFFFFDF00000020




Last Coverpoint : ['rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x800013a0]:UKSTAS32 t6, t5, t4
	-[0x800013a4]:sd t6, 1104(ra)
Current Store : [0x800013a8] : sd t5, 1112(ra) -- Store: [0x80003848]:0xFFFFFFF7FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x800013cc]:UKSTAS32 t6, t5, t4
	-[0x800013d0]:sd t6, 1120(ra)
Current Store : [0x800013d4] : sd t5, 1128(ra) -- Store: [0x80003858]:0xFFFFFFFBFFFFF7FF




Last Coverpoint : ['rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x800013f0]:UKSTAS32 t6, t5, t4
	-[0x800013f4]:sd t6, 1136(ra)
Current Store : [0x800013f8] : sd t5, 1144(ra) -- Store: [0x80003868]:0x800000000000000D




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x8000141c]:UKSTAS32 t6, t5, t4
	-[0x80001420]:sd t6, 1152(ra)
Current Store : [0x80001424] : sd t5, 1160(ra) -- Store: [0x80003878]:0x4000000002000000




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001444]:UKSTAS32 t6, t5, t4
	-[0x80001448]:sd t6, 1168(ra)
Current Store : [0x8000144c] : sd t5, 1176(ra) -- Store: [0x80003888]:0x100000000000000E




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001464]:UKSTAS32 t6, t5, t4
	-[0x80001468]:sd t6, 1184(ra)
Current Store : [0x8000146c] : sd t5, 1192(ra) -- Store: [0x80003898]:0x0040000000000009




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80001490]:UKSTAS32 t6, t5, t4
	-[0x80001494]:sd t6, 1200(ra)
Current Store : [0x80001498] : sd t5, 1208(ra) -- Store: [0x800038a8]:0x00200000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800014b8]:UKSTAS32 t6, t5, t4
	-[0x800014bc]:sd t6, 1216(ra)
Current Store : [0x800014c0] : sd t5, 1224(ra) -- Store: [0x800038b8]:0x0010000000001000




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800014dc]:UKSTAS32 t6, t5, t4
	-[0x800014e0]:sd t6, 1232(ra)
Current Store : [0x800014e4] : sd t5, 1240(ra) -- Store: [0x800038c8]:0x0000400000000011




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001500]:UKSTAS32 t6, t5, t4
	-[0x80001504]:sd t6, 1248(ra)
Current Store : [0x80001508] : sd t5, 1256(ra) -- Store: [0x800038d8]:0x0000020000000000




Last Coverpoint : ['rs1_w1_val == 1', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001524]:UKSTAS32 t6, t5, t4
	-[0x80001528]:sd t6, 1264(ra)
Current Store : [0x8000152c] : sd t5, 1272(ra) -- Store: [0x800038e8]:0x00000001FFFFFFFB




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80001550]:UKSTAS32 t6, t5, t4
	-[0x80001554]:sd t6, 1280(ra)
Current Store : [0x80001558] : sd t5, 1288(ra) -- Store: [0x800038f8]:0x00000200AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001584]:UKSTAS32 t6, t5, t4
	-[0x80001588]:sd t6, 1296(ra)
Current Store : [0x8000158c] : sd t5, 1304(ra) -- Store: [0x80003908]:0xDFFFFFFF55555555




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800015b0]:UKSTAS32 t6, t5, t4
	-[0x800015b4]:sd t6, 1312(ra)
Current Store : [0x800015b8] : sd t5, 1320(ra) -- Store: [0x80003918]:0xFFFFBFFFF7FFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800015dc]:UKSTAS32 t6, t5, t4
	-[0x800015e0]:sd t6, 1328(ra)
Current Store : [0x800015e4] : sd t5, 1336(ra) -- Store: [0x80003928]:0x00000020FEFFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80001604]:UKSTAS32 t6, t5, t4
	-[0x80001608]:sd t6, 1344(ra)
Current Store : [0x8000160c] : sd t5, 1352(ra) -- Store: [0x80003938]:0xFFFFFDFFFFFBFFFF




Last Coverpoint : ['rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000162c]:UKSTAS32 t6, t5, t4
	-[0x80001630]:sd t6, 1360(ra)
Current Store : [0x80001634] : sd t5, 1368(ra) -- Store: [0x80003948]:0xFFFFDFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x8000165c]:UKSTAS32 t6, t5, t4
	-[0x80001660]:sd t6, 1376(ra)
Current Store : [0x80001664] : sd t5, 1384(ra) -- Store: [0x80003958]:0x00002000FFFFBFFF




Last Coverpoint : ['rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001680]:UKSTAS32 t6, t5, t4
	-[0x80001684]:sd t6, 1392(ra)
Current Store : [0x80001688] : sd t5, 1400(ra) -- Store: [0x80003968]:0x1000000000000009




Last Coverpoint : ['rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800016a4]:UKSTAS32 t6, t5, t4
	-[0x800016a8]:sd t6, 1408(ra)
Current Store : [0x800016ac] : sd t5, 1416(ra) -- Store: [0x80003978]:0xFFFFFF7F00020000




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800016d0]:UKSTAS32 t6, t5, t4
	-[0x800016d4]:sd t6, 1424(ra)
Current Store : [0x800016d8] : sd t5, 1432(ra) -- Store: [0x80003988]:0xFFFFFFBFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800016f8]:UKSTAS32 t6, t5, t4
	-[0x800016fc]:sd t6, 1440(ra)
Current Store : [0x80001700] : sd t5, 1448(ra) -- Store: [0x80003998]:0xFFFFFFEFFFFFFEFF




Last Coverpoint : ['rs2_w0_val == 2147483648']
Last Code Sequence : 
	-[0x8000171c]:UKSTAS32 t6, t5, t4
	-[0x80001720]:sd t6, 1456(ra)
Current Store : [0x80001724] : sd t5, 1464(ra) -- Store: [0x800039a8]:0x0008000000000080




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001744]:UKSTAS32 t6, t5, t4
	-[0x80001748]:sd t6, 1472(ra)
Current Store : [0x8000174c] : sd t5, 1480(ra) -- Store: [0x800039b8]:0x00000009FFFFFF7F




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x8000176c]:UKSTAS32 t6, t5, t4
	-[0x80001770]:sd t6, 1488(ra)
Current Store : [0x80001774] : sd t5, 1496(ra) -- Store: [0x800039c8]:0x0000000EFFFFFFBF




Last Coverpoint : ['rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001794]:UKSTAS32 t6, t5, t4
	-[0x80001798]:sd t6, 1504(ra)
Current Store : [0x8000179c] : sd t5, 1512(ra) -- Store: [0x800039d8]:0x00020000FFFFFFEF




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800017c0]:UKSTAS32 t6, t5, t4
	-[0x800017c4]:sd t6, 1520(ra)
Current Store : [0x800017c8] : sd t5, 1528(ra) -- Store: [0x800039e8]:0x00100000FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800017ec]:UKSTAS32 t6, t5, t4
	-[0x800017f0]:sd t6, 1536(ra)
Current Store : [0x800017f4] : sd t5, 1544(ra) -- Store: [0x800039f8]:0xFFDFFFFFFFFFBFFF




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001814]:UKSTAS32 t6, t5, t4
	-[0x80001818]:sd t6, 1552(ra)
Current Store : [0x8000181c] : sd t5, 1560(ra) -- Store: [0x80003a08]:0x0002000040000000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001838]:UKSTAS32 t6, t5, t4
	-[0x8000183c]:sd t6, 1568(ra)
Current Store : [0x80001840] : sd t5, 1576(ra) -- Store: [0x80003a18]:0xFFFFFEFFFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001854]:UKSTAS32 t6, t5, t4
	-[0x80001858]:sd t6, 1584(ra)
Current Store : [0x8000185c] : sd t5, 1592(ra) -- Store: [0x80003a28]:0x0000000DFFFFFFBF




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000187c]:UKSTAS32 t6, t5, t4
	-[0x80001880]:sd t6, 1600(ra)
Current Store : [0x80001884] : sd t5, 1608(ra) -- Store: [0x80003a38]:0x0400000010000000




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800018a8]:UKSTAS32 t6, t5, t4
	-[0x800018ac]:sd t6, 1616(ra)
Current Store : [0x800018b0] : sd t5, 1624(ra) -- Store: [0x80003a48]:0xFFFFFFF700000005




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800018cc]:UKSTAS32 t6, t5, t4
	-[0x800018d0]:sd t6, 1632(ra)
Current Store : [0x800018d4] : sd t5, 1640(ra) -- Store: [0x80003a58]:0xFFF7FFFF00800000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800018f8]:UKSTAS32 t6, t5, t4
	-[0x800018fc]:sd t6, 1648(ra)
Current Store : [0x80001900] : sd t5, 1656(ra) -- Store: [0x80003a68]:0xF7FFFFFF00200000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001920]:UKSTAS32 t6, t5, t4
	-[0x80001924]:sd t6, 1664(ra)
Current Store : [0x80001928] : sd t5, 1672(ra) -- Store: [0x80003a78]:0x0000000A00080000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x8000193c]:UKSTAS32 t6, t5, t4
	-[0x80001940]:sd t6, 1680(ra)
Current Store : [0x80001944] : sd t5, 1688(ra) -- Store: [0x80003a88]:0x0000800000000020




Last Coverpoint : ['opcode : ukstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 262144', 'rs2_w0_val == 16777216', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80001960]:UKSTAS32 t6, t5, t4
	-[0x80001964]:sd t6, 1696(ra)
Current Store : [0x80001968] : sd t5, 1704(ra) -- Store: [0x80003a98]:0xFFDFFFFF00000000




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001990]:UKSTAS32 t6, t5, t4
	-[0x80001994]:sd t6, 1712(ra)
Current Store : [0x80001998] : sd t5, 1720(ra) -- Store: [0x80003aa8]:0x20000000FBFFFFFF




Last Coverpoint : ['opcode : ukstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 65536', 'rs1_w1_val == 4', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800019c0]:UKSTAS32 t6, t5, t4
	-[0x800019c4]:sd t6, 1728(ra)
Current Store : [0x800019c8] : sd t5, 1736(ra) -- Store: [0x80003ab8]:0x0000000400000800




Last Coverpoint : ['opcode : ukstas32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 0', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800019e0]:UKSTAS32 t6, t5, t4
	-[0x800019e4]:sd t6, 1744(ra)
Current Store : [0x800019e8] : sd t5, 1752(ra) -- Store: [0x80003ac8]:0x0000000000004000





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

|s.no|            signature             |                                                                                                                                                                      coverpoints                                                                                                                                                                      |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0008000000000000|- opcode : ukstas32<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 262144<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 16777216<br> |[0x800003bc]:UKSTAS32 tp, a1, a1<br> [0x800003c0]:sd tp, 0(gp)<br>      |
|   2|[0x80003220]<br>0x0000001A00000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br>                                                                                                                                                                                                                                                                                  |[0x800003e0]:UKSTAS32 s5, s5, s5<br> [0x800003e4]:sd s5, 16(gp)<br>     |
|   3|[0x80003230]<br>0xFF80000D00000000|- rs1 : x12<br> - rs2 : x22<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 4294959103<br>                                                                                         |[0x80000410]:UKSTAS32 s8, a2, s6<br> [0x80000414]:sd s8, 32(gp)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFF00000000|- rs1 : x1<br> - rs2 : x30<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 1431655765<br>                                                                                                                  |[0x80000444]:UKSTAS32 ra, ra, t5<br> [0x80000448]:sd ra, 48(gp)<br>     |
|   5|[0x80003250]<br>0x5555557500000000|- rs1 : x13<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 4294950911<br> - rs1_w1_val == 32<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                              |[0x80000474]:UKSTAS32 a6, a3, a6<br> [0x80000478]:sd a6, 64(gp)<br>     |
|   6|[0x80003260]<br>0xFFFFFFFFFFBFFFF8|- rs1 : x6<br> - rs2 : x2<br> - rd : x31<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == 4286578687<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                              |[0x800004a4]:UKSTAS32 t6, t1, sp<br> [0x800004a8]:sd t6, 80(gp)<br>     |
|   7|[0x80003270]<br>0xC000FFFF00000000|- rs1 : x31<br> - rs2 : x28<br> - rd : x12<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                        |[0x800004dc]:UKSTAS32 a2, t6, t3<br> [0x800004e0]:sd a2, 96(gp)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFFFF7F7FF|- rs1 : x27<br> - rs2 : x10<br> - rd : x6<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                    |[0x80000518]:UKSTAS32 t1, s11, a0<br> [0x8000051c]:sd t1, 112(gp)<br>   |
|   9|[0x80003290]<br>0xF00000FFFFFF7DFF|- rs1 : x18<br> - rs2 : x5<br> - rd : x19<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 512<br> - rs1_w1_val == 256<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                            |[0x80000544]:UKSTAS32 s3, s2, t0<br> [0x80000548]:sd s3, 128(gp)<br>    |
|  10|[0x800032a0]<br>0xF80007FF00000000|- rs1 : x7<br> - rs2 : x13<br> - rd : x26<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 1<br>                                                                                                                                                                                             |[0x80000568]:UKSTAS32 s10, t2, a3<br> [0x8000056c]:sd s10, 144(gp)<br>  |
|  11|[0x800032b0]<br>0xFC00000D00000000|- rs1 : x8<br> - rs2 : x18<br> - rd : x29<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4227858431<br>                                                                                                                                                                                                                                            |[0x80000594]:UKSTAS32 t4, fp, s2<br> [0x80000598]:sd t4, 160(gp)<br>    |
|  12|[0x800032c0]<br>0xFFFFFFFF1FFFFFF8|- rs1 : x16<br> - rs2 : x24<br> - rd : x25<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 3758096383<br> - rs1_w1_val == 4292870143<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                                             |[0x800005bc]:UKSTAS32 s9, a6, s8<br> [0x800005c0]:sd s9, 176(gp)<br>    |
|  13|[0x800032d0]<br>0xFFFFFFFF00000000|- rs1 : x30<br> - rs2 : x31<br> - rd : x10<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                            |[0x800005e8]:UKSTAS32 a0, t5, t6<br> [0x800005ec]:sd a0, 192(gp)<br>    |
|  14|[0x800032e0]<br>0xFFC1FFFF07FFFFC0|- rs1 : x24<br> - rs2 : x17<br> - rd : x14<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 64<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                          |[0x80000610]:UKSTAS32 a4, s8, a7<br> [0x80000614]:sd a4, 208(gp)<br>    |
|  15|[0x800032f0]<br>0xFFDFFFFF00000000|- rs1 : x0<br> - rs2 : x20<br> - rd : x15<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                   |[0x80000640]:UKSTAS32 a5, zero, s4<br> [0x80000644]:sd a5, 224(gp)<br>  |
|  16|[0x80003300]<br>0xFFFFFFFFBFFFFFEE|- rs1 : x23<br> - rs2 : x4<br> - rd : x17<br> - rs2_w1_val == 4293918719<br> - rs1_w1_val == 4227858431<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                                             |[0x80000674]:UKSTAS32 a7, s7, tp<br> [0x80000678]:sd a7, 0(a6)<br>      |
|  17|[0x80003310]<br>0xFFFFFFFF00000000|- rs1 : x10<br> - rs2 : x25<br> - rd : x28<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 4294967294<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                             |[0x80000698]:UKSTAS32 t3, a0, s9<br> [0x8000069c]:sd t3, 16(a6)<br>     |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x29<br> - rd : x0<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 4<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                  |[0x800006c8]:UKSTAS32 zero, s6, t4<br> [0x800006cc]:sd zero, 32(a6)<br> |
|  19|[0x80003330]<br>0xFFFE001F00000000|- rs1 : x5<br> - rs2 : x26<br> - rd : x2<br> - rs2_w1_val == 4294836223<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                                                                             |[0x800006f4]:UKSTAS32 sp, t0, s10<br> [0x800006f8]:sd sp, 48(a6)<br>    |
|  20|[0x80003340]<br>0xFFFF000A00000000|- rs1 : x20<br> - rs2 : x9<br> - rd : x18<br> - rs2_w1_val == 4294901759<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                               |[0x80000718]:UKSTAS32 s2, s4, s1<br> [0x8000071c]:sd s2, 64(a6)<br>     |
|  21|[0x80003350]<br>0xFFFF800B000000F8|- rs1 : x15<br> - rs2 : x27<br> - rd : x5<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 4294967039<br>                                                                                                                                                                                                                                            |[0x8000073c]:UKSTAS32 t0, a5, s11<br> [0x80000740]:sd t0, 80(a6)<br>    |
|  22|[0x80003360]<br>0xFFFFCFFF00000000|- rs1 : x26<br> - rs2 : x6<br> - rd : x22<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 4294966783<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                    |[0x80000764]:UKSTAS32 s6, s10, t1<br> [0x80000768]:sd s6, 96(a6)<br>    |
|  23|[0x80003370]<br>0xFFFFFFFF00000000|- rs1 : x25<br> - rs2 : x15<br> - rd : x11<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                        |[0x8000078c]:UKSTAS32 a1, s9, a5<br> [0x80000790]:sd a1, 112(a6)<br>    |
|  24|[0x80003380]<br>0xFFFFF01F0FF00000|- rs1 : x14<br> - rs2 : x19<br> - rd : x8<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4026531839<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                                                             |[0x800007b8]:UKSTAS32 fp, a4, s3<br> [0x800007bc]:sd fp, 128(a6)<br>    |
|  25|[0x80003390]<br>0xFFFFF80100000000|- rs1 : x4<br> - rs2 : x3<br> - rd : x9<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                        |[0x800007e0]:UKSTAS32 s1, tp, gp<br> [0x800007e4]:sd s1, 144(a6)<br>    |
|  26|[0x800033a0]<br>0xFFFFFC0700FFFFFA|- rs1 : x19<br> - rs2 : x7<br> - rd : x27<br> - rs2_w1_val == 4294966271<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                                     |[0x80000804]:UKSTAS32 s11, s3, t2<br> [0x80000808]:sd s11, 160(a6)<br>  |
|  27|[0x800033b0]<br>0xFFFFFE0500000000|- rs1 : x17<br> - rs2 : x1<br> - rd : x7<br> - rs2_w1_val == 4294966783<br> - rs2_w0_val == 4294934527<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                |[0x80000828]:UKSTAS32 t2, a7, ra<br> [0x8000082c]:sd t2, 176(a6)<br>    |
|  28|[0x800033c0]<br>0xFFFFFFFFFFEFFFFA|- rs1 : x3<br> - rs2 : x8<br> - rd : x30<br> - rs2_w1_val == 4294967039<br>                                                                                                                                                                                                                                                                            |[0x80000850]:UKSTAS32 t5, gp, fp<br> [0x80000854]:sd t5, 192(a6)<br>    |
|  29|[0x800033d0]<br>0x0000000000004000|- rs1 : x2<br> - rs2 : x0<br> - rd : x13<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                     |[0x80000870]:UKSTAS32 a3, sp, zero<br> [0x80000874]:sd a3, 208(a6)<br>  |
|  30|[0x800033e0]<br>0xFFFFFFC200000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x23<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 134217728<br>                                                                                                                                                                                                                                             |[0x80000890]:UKSTAS32 s7, s1, a2<br> [0x80000894]:sd s7, 224(a6)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFFF00003FF8|- rs1 : x28<br> - rs2 : x23<br> - rd : x3<br> - rs2_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                           |[0x800008c0]:UKSTAS32 gp, t3, s7<br> [0x800008c4]:sd gp, 0(ra)<br>      |
|  32|[0x80003400]<br>0xFFFFFFFF00000000|- rs1 : x29<br> - rs2 : x14<br> - rd : x20<br> - rs2_w1_val == 4294967279<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                |[0x800008ec]:UKSTAS32 s4, t4, a4<br> [0x800008f0]:sd s4, 16(ra)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFF00000000|- rs2_w1_val == 4294967287<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                            |[0x8000090c]:UKSTAS32 t6, t5, t4<br> [0x80000910]:sd t6, 32(ra)<br>     |
|  34|[0x80003420]<br>0xFFFFFFFF00000000|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 4294967295<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                 |[0x80000930]:UKSTAS32 t6, t5, t4<br> [0x80000934]:sd t6, 48(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFF00000009|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4294967231<br>                                                                                                                                                                                                                                                                    |[0x80000954]:UKSTAS32 t6, t5, t4<br> [0x80000958]:sd t6, 64(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFF00000000|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 32768<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                     |[0x80000980]:UKSTAS32 t6, t5, t4<br> [0x80000984]:sd t6, 80(ra)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFF00000005|- rs2_w1_val == 2147483648<br> - rs1_w1_val == 4294443007<br>                                                                                                                                                                                                                                                                                          |[0x800009a8]:UKSTAS32 t6, t5, t4<br> [0x800009ac]:sd t6, 96(ra)<br>     |
|  38|[0x80003460]<br>0x4000000A00000000|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                          |[0x800009d4]:UKSTAS32 t6, t5, t4<br> [0x800009d8]:sd t6, 112(ra)<br>    |
|  39|[0x80003470]<br>0xFFFFFFFF00000000|- rs2_w1_val == 536870912<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                   |[0x80000a00]:UKSTAS32 t6, t5, t4<br> [0x80000a04]:sd t6, 128(ra)<br>    |
|  40|[0x80003480]<br>0x100000037FFFFBFF|- rs2_w1_val == 268435456<br> - rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                 |[0x80000a24]:UKSTAS32 t6, t5, t4<br> [0x80000a28]:sd t6, 144(ra)<br>    |
|  41|[0x80003490]<br>0xFFFFFFFF00000000|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                            |[0x80000a50]:UKSTAS32 t6, t5, t4<br> [0x80000a54]:sd t6, 160(ra)<br>    |
|  42|[0x800034a0]<br>0xFFFFFFFFFBFFFFFE|- rs2_w1_val == 67108864<br> - rs2_w0_val == 1<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                       |[0x80000a78]:UKSTAS32 t6, t5, t4<br> [0x80000a7c]:sd t6, 176(ra)<br>    |
|  43|[0x800034b0]<br>0x0A00000000000000|- rs2_w1_val == 33554432<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                             |[0x80000aa0]:UKSTAS32 t6, t5, t4<br> [0x80000aa4]:sd t6, 192(ra)<br>    |
|  44|[0x800034c0]<br>0xFFFFFFFF00000000|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                           |[0x80000acc]:UKSTAS32 t6, t5, t4<br> [0x80000ad0]:sd t6, 208(ra)<br>    |
|  45|[0x800034d0]<br>0xFFFFFFFF7C000000|- rs2_w1_val == 8388608<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                 |[0x80000af0]:UKSTAS32 t6, t5, t4<br> [0x80000af4]:sd t6, 224(ra)<br>    |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFD7FFF|- rs2_w1_val == 4194304<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                                                                                              |[0x80000b14]:UKSTAS32 t6, t5, t4<br> [0x80000b18]:sd t6, 240(ra)<br>    |
|  47|[0x800034f0]<br>0x0020000600000000|- rs2_w1_val == 2097152<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                      |[0x80000b44]:UKSTAS32 t6, t5, t4<br> [0x80000b48]:sd t6, 256(ra)<br>    |
|  48|[0x80003500]<br>0xFFFFFFFF00FFFFE0|- rs2_w1_val == 1048576<br> - rs2_w0_val == 4278190079<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                               |[0x80000b6c]:UKSTAS32 t6, t5, t4<br> [0x80000b70]:sd t6, 272(ra)<br>    |
|  49|[0x80003510]<br>0x000C000000000000|- rs2_w1_val == 524288<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                   |[0x80000b98]:UKSTAS32 t6, t5, t4<br> [0x80000b9c]:sd t6, 288(ra)<br>    |
|  50|[0x80003520]<br>0x0002000C00000000|- rs2_w1_val == 131072<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                       |[0x80000bbc]:UKSTAS32 t6, t5, t4<br> [0x80000bc0]:sd t6, 304(ra)<br>    |
|  51|[0x80003530]<br>0x5555556000000000|- rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                             |[0x80000be8]:UKSTAS32 t6, t5, t4<br> [0x80000bec]:sd t6, 320(ra)<br>    |
|  52|[0x80003540]<br>0xFFC07FFF00001FF1|- rs2_w1_val == 32768<br> - rs1_w1_val == 4290772991<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                      |[0x80000c14]:UKSTAS32 t6, t5, t4<br> [0x80000c18]:sd t6, 336(ra)<br>    |
|  53|[0x80003550]<br>0xFFFFFFFF000003FA|- rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                               |[0x80000c40]:UKSTAS32 t6, t5, t4<br> [0x80000c44]:sd t6, 352(ra)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFF000001F9|- rs2_w1_val == 4294967167<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                 |[0x80000c68]:UKSTAS32 t6, t5, t4<br> [0x80000c6c]:sd t6, 368(ra)<br>    |
|  55|[0x80003570]<br>0xAAB2AAAA00000000|- rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                |[0x80000c90]:UKSTAS32 t6, t5, t4<br> [0x80000c94]:sd t6, 384(ra)<br>    |
|  56|[0x80003580]<br>0xFE00000700000000|- rs2_w1_val == 8<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                              |[0x80000cb4]:UKSTAS32 t6, t5, t4<br> [0x80000cb8]:sd t6, 400(ra)<br>    |
|  57|[0x80003590]<br>0xFFFFFFFF00000000|- rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000ce4]:UKSTAS32 t6, t5, t4<br> [0x80000ce8]:sd t6, 416(ra)<br>    |
|  58|[0x800035a0]<br>0x2000008000000000|- rs1_w1_val == 128<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                          |[0x80000d0c]:UKSTAS32 t6, t5, t4<br> [0x80000d10]:sd t6, 432(ra)<br>    |
|  59|[0x800035b0]<br>0x2000001000000000|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                            |[0x80000d34]:UKSTAS32 t6, t5, t4<br> [0x80000d38]:sd t6, 448(ra)<br>    |
|  60|[0x800035c0]<br>0x0800100000000200|- rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                                                                         |[0x80000d60]:UKSTAS32 t6, t5, t4<br> [0x80000d64]:sd t6, 464(ra)<br>    |
|  61|[0x800035d0]<br>0xFFFFFFFF00000000|- rs2_w1_val == 65536<br> - rs2_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                                               |[0x80000d88]:UKSTAS32 t6, t5, t4<br> [0x80000d8c]:sd t6, 480(ra)<br>    |
|  62|[0x800035e0]<br>0xFFFE3FFFFBFFFFFA|- rs2_w1_val == 16384<br> - rs1_w1_val == 4294836223<br>                                                                                                                                                                                                                                                                                               |[0x80000db0]:UKSTAS32 t6, t5, t4<br> [0x80000db4]:sd t6, 496(ra)<br>    |
|  63|[0x800035f0]<br>0x0000200200FFFC00|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                               |[0x80000dd0]:UKSTAS32 t6, t5, t4<br> [0x80000dd4]:sd t6, 512(ra)<br>    |
|  64|[0x80003600]<br>0x00001006AFFFFFFF|- rs2_w1_val == 4096<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                                                |[0x80000df4]:UKSTAS32 t6, t5, t4<br> [0x80000df8]:sd t6, 528(ra)<br>    |
|  65|[0x80003610]<br>0x00000C0000000000|- rs2_w1_val == 2048<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                       |[0x80000e1c]:UKSTAS32 t6, t5, t4<br> [0x80000e20]:sd t6, 544(ra)<br>    |
|  66|[0x80003620]<br>0x0000040400000000|- rs2_w1_val == 1024<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                  |[0x80000e3c]:UKSTAS32 t6, t5, t4<br> [0x80000e40]:sd t6, 560(ra)<br>    |
|  67|[0x80003630]<br>0x0000120000000000|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                |[0x80000e64]:UKSTAS32 t6, t5, t4<br> [0x80000e68]:sd t6, 576(ra)<br>    |
|  68|[0x80003640]<br>0xFFE000FF00000002|- rs2_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                |[0x80000e8c]:UKSTAS32 t6, t5, t4<br> [0x80000e90]:sd t6, 592(ra)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFF00000000|- rs2_w1_val == 128<br> - rs2_w0_val == 4294836223<br> - rs1_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                  |[0x80000eb8]:UKSTAS32 t6, t5, t4<br> [0x80000ebc]:sd t6, 608(ra)<br>    |
|  70|[0x80003660]<br>0xAAAAAAEA00000000|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000eec]:UKSTAS32 t6, t5, t4<br> [0x80000ef0]:sd t6, 624(ra)<br>    |
|  71|[0x80003670]<br>0x0000202000000000|- rs2_w1_val == 32<br> - rs2_w0_val == 4294965247<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                         |[0x80000f18]:UKSTAS32 t6, t5, t4<br> [0x80000f1c]:sd t6, 640(ra)<br>    |
|  72|[0x80003680]<br>0xFFFF800FAAAA9AAA|- rs2_w1_val == 16<br> - rs1_w1_val == 4294934527<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                   |[0x80000f48]:UKSTAS32 t6, t5, t4<br> [0x80000f4c]:sd t6, 656(ra)<br>    |
|  73|[0x80003690]<br>0x0000000B00000002|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000f6c]:UKSTAS32 t6, t5, t4<br> [0x80000f70]:sd t6, 672(ra)<br>    |
|  74|[0x800036a0]<br>0xFFFFF80100000000|- rs2_w1_val == 2<br> - rs1_w1_val == 4294965247<br>                                                                                                                                                                                                                                                                                                   |[0x80000f94]:UKSTAS32 t6, t5, t4<br> [0x80000f98]:sd t6, 688(ra)<br>    |
|  75|[0x800036b0]<br>0xC00000000000FFFD|- rs2_w1_val == 1<br> - rs1_w1_val == 3221225471<br>                                                                                                                                                                                                                                                                                                   |[0x80000fc0]:UKSTAS32 t6, t5, t4<br> [0x80000fc4]:sd t6, 704(ra)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFBDFF|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 16384<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                |[0x80000fe4]:UKSTAS32 t6, t5, t4<br> [0x80000fe8]:sd t6, 720(ra)<br>    |
|  77|[0x800036d0]<br>0xFFBFFFFF00000000|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001000]:UKSTAS32 t6, t5, t4<br> [0x80001004]:sd t6, 736(ra)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFFF07C00000|- rs2_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                         |[0x80001024]:UKSTAS32 t6, t5, t4<br> [0x80001028]:sd t6, 752(ra)<br>    |
|  79|[0x800036f0]<br>0xFFF0000B00000000|- rs2_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                                                                         |[0x80001050]:UKSTAS32 t6, t5, t4<br> [0x80001054]:sd t6, 768(ra)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294705151<br> - rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                                          |[0x80001080]:UKSTAS32 t6, t5, t4<br> [0x80001084]:sd t6, 784(ra)<br>    |
|  81|[0x80003710]<br>0xFE00003F00000000|- rs2_w0_val == 4294901759<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                  |[0x800010ac]:UKSTAS32 t6, t5, t4<br> [0x800010b0]:sd t6, 800(ra)<br>    |
|  82|[0x80003720]<br>0xFC7FFFFF00000000|- rs2_w0_val == 4294963199<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                             |[0x800010d8]:UKSTAS32 t6, t5, t4<br> [0x800010dc]:sd t6, 816(ra)<br>    |
|  83|[0x80003730]<br>0x0100000E00000000|- rs2_w0_val == 4294967231<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                            |[0x800010fc]:UKSTAS32 t6, t5, t4<br> [0x80001100]:sd t6, 832(ra)<br>    |
|  84|[0x80003740]<br>0x0000001300000000|- rs2_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                         |[0x80001120]:UKSTAS32 t6, t5, t4<br> [0x80001124]:sd t6, 848(ra)<br>    |
|  85|[0x80003750]<br>0xFFFFFFFF000FFF00|- rs2_w0_val == 256<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                    |[0x8000114c]:UKSTAS32 t6, t5, t4<br> [0x80001150]:sd t6, 864(ra)<br>    |
|  86|[0x80003760]<br>0xFFFFFFFF00000000|- rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                |[0x80001174]:UKSTAS32 t6, t5, t4<br> [0x80001178]:sd t6, 880(ra)<br>    |
|  87|[0x80003770]<br>0xFF000005DFFFFFDF|- rs2_w0_val == 32<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                                                                                                  |[0x8000119c]:UKSTAS32 t6, t5, t4<br> [0x800011a0]:sd t6, 896(ra)<br>    |
|  88|[0x80003780]<br>0xFFFFFFFF00000003|- rs2_w0_val == 16<br> - rs1_w1_val == 4294967279<br>                                                                                                                                                                                                                                                                                                  |[0x800011c0]:UKSTAS32 t6, t5, t4<br> [0x800011c4]:sd t6, 912(ra)<br>    |
|  89|[0x80003790]<br>0xFFFFFFFFFFFFF7F7|- rs2_w0_val == 8<br> - rs1_w1_val == 4294966271<br>                                                                                                                                                                                                                                                                                                   |[0x800011ec]:UKSTAS32 t6, t5, t4<br> [0x800011f0]:sd t6, 928(ra)<br>    |
|  90|[0x800037b0]<br>0xFFFFFFFF00000000|- rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                                                                         |[0x80001238]:UKSTAS32 t6, t5, t4<br> [0x8000123c]:sd t6, 960(ra)<br>    |
|  91|[0x800037c0]<br>0xFFFFFFFF00000000|- rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                                                                                                                         |[0x80001260]:UKSTAS32 t6, t5, t4<br> [0x80001264]:sd t6, 976(ra)<br>    |
|  92|[0x800037d0]<br>0xF81FFFFF00000000|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                         |[0x80001288]:UKSTAS32 t6, t5, t4<br> [0x8000128c]:sd t6, 992(ra)<br>    |
|  93|[0x800037e0]<br>0xFFFFFFFFFFF5FFFF|- rs2_w0_val == 131072<br> - rs1_w1_val == 4278190079<br>                                                                                                                                                                                                                                                                                              |[0x800012b4]:UKSTAS32 t6, t5, t4<br> [0x800012b8]:sd t6, 1008(ra)<br>   |
|  94|[0x800037f0]<br>0xFFFC001FFBFFFBFF|- rs1_w1_val == 4294705151<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                                                                                                                                                          |[0x800012d8]:UKSTAS32 t6, t5, t4<br> [0x800012dc]:sd t6, 1024(ra)<br>   |
|  95|[0x80003800]<br>0xFFFFFFFFFDFDFFFF|- rs2_w0_val == 33554432<br> - rs1_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                                            |[0x80001300]:UKSTAS32 t6, t5, t4<br> [0x80001304]:sd t6, 1040(ra)<br>   |
|  96|[0x80003810]<br>0xFFFFE00700000000|- rs1_w1_val == 4294959103<br>                                                                                                                                                                                                                                                                                                                         |[0x80001330]:UKSTAS32 t6, t5, t4<br> [0x80001334]:sd t6, 1056(ra)<br>   |
|  97|[0x80003820]<br>0xFFFFFE1F00000000|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                         |[0x80001358]:UKSTAS32 t6, t5, t4<br> [0x8000135c]:sd t6, 1072(ra)<br>   |
|  98|[0x80003830]<br>0xFFFFFFFF00000000|- rs2_w0_val == 536870912<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                                           |[0x8000137c]:UKSTAS32 t6, t5, t4<br> [0x80001380]:sd t6, 1088(ra)<br>   |
|  99|[0x80003840]<br>0xFFFFFFFFFFFFFBF5|- rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                                                                                                                         |[0x800013a0]:UKSTAS32 t6, t5, t4<br> [0x800013a4]:sd t6, 1104(ra)<br>   |
| 100|[0x80003850]<br>0xFFFFFFFF00FFF800|- rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                                                                                                                         |[0x800013cc]:UKSTAS32 t6, t5, t4<br> [0x800013d0]:sd t6, 1120(ra)<br>   |
| 101|[0x80003860]<br>0xFFFFFFFF00000000|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                         |[0x800013f0]:UKSTAS32 t6, t5, t4<br> [0x800013f4]:sd t6, 1136(ra)<br>   |
| 102|[0x80003870]<br>0x4008000000000000|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                         |[0x8000141c]:UKSTAS32 t6, t5, t4<br> [0x80001420]:sd t6, 1152(ra)<br>   |
| 103|[0x80003880]<br>0xFFFFFFFF00000000|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                          |[0x80001444]:UKSTAS32 t6, t5, t4<br> [0x80001448]:sd t6, 1168(ra)<br>   |
| 104|[0x80003890]<br>0x0040000900000000|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                            |[0x80001464]:UKSTAS32 t6, t5, t4<br> [0x80001468]:sd t6, 1184(ra)<br>   |
| 105|[0x800038a0]<br>0xAACAAAAA00000000|- rs1_w1_val == 2097152<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                                                                             |[0x80001490]:UKSTAS32 t6, t5, t4<br> [0x80001494]:sd t6, 1200(ra)<br>   |
| 106|[0x800038b0]<br>0x0010008000000FF9|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                                            |[0x800014b8]:UKSTAS32 t6, t5, t4<br> [0x800014bc]:sd t6, 1216(ra)<br>   |
| 107|[0x800038c0]<br>0x0000400900000000|- rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                                              |[0x800014dc]:UKSTAS32 t6, t5, t4<br> [0x800014e0]:sd t6, 1232(ra)<br>   |
| 108|[0x800038d0]<br>0x0400020000000000|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                |[0x80001500]:UKSTAS32 t6, t5, t4<br> [0x80001504]:sd t6, 1248(ra)<br>   |
| 109|[0x800038e0]<br>0x00000001000001FC|- rs1_w1_val == 1<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                   |[0x80001524]:UKSTAS32 t6, t5, t4<br> [0x80001528]:sd t6, 1264(ra)<br>   |
| 110|[0x800038f0]<br>0x00080200AAAA6AAA|- rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                                                                                                                         |[0x80001550]:UKSTAS32 t6, t5, t4<br> [0x80001554]:sd t6, 1280(ra)<br>   |
| 111|[0x80003900]<br>0xFFFFFFFF00000000|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                         |[0x80001584]:UKSTAS32 t6, t5, t4<br> [0x80001588]:sd t6, 1296(ra)<br>   |
| 112|[0x80003910]<br>0xFFFFFFFFF7FFFFF3|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                         |[0x800015b0]:UKSTAS32 t6, t5, t4<br> [0x800015b4]:sd t6, 1312(ra)<br>   |
| 113|[0x80003920]<br>0x0000022000000000|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                                                         |[0x800015dc]:UKSTAS32 t6, t5, t4<br> [0x800015e0]:sd t6, 1328(ra)<br>   |
| 114|[0x80003930]<br>0xFFFFFFFFFFDBFFFF|- rs2_w0_val == 2097152<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                             |[0x80001604]:UKSTAS32 t6, t5, t4<br> [0x80001608]:sd t6, 1344(ra)<br>   |
| 115|[0x80003940]<br>0xFFFFFFFF00000000|- rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                                         |[0x8000162c]:UKSTAS32 t6, t5, t4<br> [0x80001630]:sd t6, 1360(ra)<br>   |
| 116|[0x80003950]<br>0x01002000FFFFBFEE|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                         |[0x8000165c]:UKSTAS32 t6, t5, t4<br> [0x80001660]:sd t6, 1376(ra)<br>   |
| 117|[0x80003960]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                                                         |[0x80001680]:UKSTAS32 t6, t5, t4<br> [0x80001684]:sd t6, 1392(ra)<br>   |
| 118|[0x80003970]<br>0xFFFFFFBF00000000|- rs2_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                                         |[0x800016a4]:UKSTAS32 t6, t5, t4<br> [0x800016a8]:sd t6, 1408(ra)<br>   |
| 119|[0x80003980]<br>0xFFFFFFFF00000000|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                         |[0x800016d0]:UKSTAS32 t6, t5, t4<br> [0x800016d4]:sd t6, 1424(ra)<br>   |
| 120|[0x80003990]<br>0xFFFFFFFFFFFFFEFD|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                         |[0x800016f8]:UKSTAS32 t6, t5, t4<br> [0x800016fc]:sd t6, 1440(ra)<br>   |
| 121|[0x800039a0]<br>0xFE07FFFF00000000|- rs2_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                         |[0x8000171c]:UKSTAS32 t6, t5, t4<br> [0x80001720]:sd t6, 1456(ra)<br>   |
| 122|[0x800039b0]<br>0x001000097FFFFF80|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                                                                         |[0x80001744]:UKSTAS32 t6, t5, t4<br> [0x80001748]:sd t6, 1472(ra)<br>   |
| 123|[0x800039c0]<br>0x0100000E0FFFFFC0|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                                                                                         |[0x8000176c]:UKSTAS32 t6, t5, t4<br> [0x80001770]:sd t6, 1488(ra)<br>   |
| 124|[0x800039d0]<br>0xFFFDFFFFFFBFFFEF|- rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                                                         |[0x80001794]:UKSTAS32 t6, t5, t4<br> [0x80001798]:sd t6, 1504(ra)<br>   |
| 125|[0x800039e0]<br>0x00100800000001FE|- rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                         |[0x800017c0]:UKSTAS32 t6, t5, t4<br> [0x800017c4]:sd t6, 1520(ra)<br>   |
| 126|[0x800039f0]<br>0xFFE001FFFF7FBFFF|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                            |[0x800017ec]:UKSTAS32 t6, t5, t4<br> [0x800017f0]:sd t6, 1536(ra)<br>   |
| 127|[0x80003a00]<br>0x8002000000000000|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                         |[0x80001814]:UKSTAS32 t6, t5, t4<br> [0x80001818]:sd t6, 1552(ra)<br>   |
| 128|[0x80003a10]<br>0xFFFFFFFFFFEFFFFB|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                            |[0x80001838]:UKSTAS32 t6, t5, t4<br> [0x8000183c]:sd t6, 1568(ra)<br>   |
| 129|[0x80003a20]<br>0x0000000DFFFFDFBF|- rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                               |[0x80001854]:UKSTAS32 t6, t5, t4<br> [0x80001858]:sd t6, 1584(ra)<br>   |
| 130|[0x80003a30]<br>0xFBFFFFFF0FFFFFF6|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                          |[0x8000187c]:UKSTAS32 t6, t5, t4<br> [0x80001880]:sd t6, 1600(ra)<br>   |
| 131|[0x80003a40]<br>0xFFFFFFFF00000000|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                             |[0x800018a8]:UKSTAS32 t6, t5, t4<br> [0x800018ac]:sd t6, 1616(ra)<br>   |
| 132|[0x80003a50]<br>0xFFF8000800780000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                            |[0x800018cc]:UKSTAS32 t6, t5, t4<br> [0x800018d0]:sd t6, 1632(ra)<br>   |
| 133|[0x80003a60]<br>0xFFFFFFFF001FFC00|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x800018f8]:UKSTAS32 t6, t5, t4<br> [0x800018fc]:sd t6, 1648(ra)<br>   |
| 134|[0x80003a70]<br>0x0000800A0007F000|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                               |[0x80001920]:UKSTAS32 t6, t5, t4<br> [0x80001924]:sd t6, 1664(ra)<br>   |
| 135|[0x80003a80]<br>0x0000800000000000|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                              |[0x8000193c]:UKSTAS32 t6, t5, t4<br> [0x80001940]:sd t6, 1680(ra)<br>   |
| 136|[0x80003aa0]<br>0xFFFFFFFFFBBFFFFF|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                          |[0x80001990]:UKSTAS32 t6, t5, t4<br> [0x80001994]:sd t6, 1712(ra)<br>   |
