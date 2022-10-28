
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a90')]      |
| SIG_REGION                | [('0x80003210', '0x80003c80', '334 dwords')]      |
| COV_LABELS                | kslra32.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslra32.u-01.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 367      |
| Total Signature Updates   | 332      |
| STAT1                     | 162      |
| STAT2                     | 4      |
| STAT3                     | 1     |
| STAT4                     | 166     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012b8]:KSLRA32_U t6, t5, t4
      [0x800012bc]:sd t6, 1232(ra)
 -- Signature Address: 0x800038e0 Data: 0x5555555500000012
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 35184372088832
      - rs1_w1_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a2c]:KSLRA32_U t6, t5, t4
      [0x80001a30]:sd t6, 48(ra)
 -- Signature Address: 0x80003c50 Data: 0xFFC000007FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 6148914691236517205
      - rs1_w1_val == 4294967294
      - rs1_w0_val == 1048576




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a54]:KSLRA32_U t6, t5, t4
      [0x80001a58]:sd t6, 64(ra)
 -- Signature Address: 0x80003c60 Data: 0x0040000000040000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 9223372036854775807
      - rs1_w1_val == 8388608
      - rs1_w0_val == 524288




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a80]:KSLRA32_U t6, t5, t4
      [0x80001a84]:sd t6, 80(ra)
 -- Signature Address: 0x80003c70 Data: 0xFF800000FFC00000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -72057594037927937
      - rs1_w1_val == 4278190079
      - rs1_w0_val == 4286578687






```

## Details of STAT3

```
[0x8000196c]:KSLRA32_U t6, t5, t4
[0x80001970]:addi ra, ra, 2032
[0x80001974]:sd t6, 2032(ra)
[0x80001978]:sd t5, 2040(ra)
[0x8000197c]:auipc ra, 2
[0x80001980]:addi ra, ra, 660
[0x80001984]:lui t5, 1048575
[0x80001988]:addiw t5, t5, 4095
[0x8000198c]:slli t5, t5, 32
[0x80001990]:addi t5, t5, 13
[0x80001994]:addi t4, zero, 16



```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra32.u', 'rs1 : x27', 'rs2 : x27', 'rd : x10', 'rs1 == rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800003d0]:KSLRA32_U a0, s11, s11
	-[0x800003d4]:sd a0, 0(gp)
Current Store : [0x800003d8] : sd s11, 8(gp) -- Store: [0x80003218]:0x5555555555555555




Last Coverpoint : ['rs1 : x8', 'rs2 : x8', 'rd : x8', 'rs1 == rs2 == rd', 'rs2_val == 9223372036854775807', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x800003f8]:KSLRA32_U fp, fp, fp
	-[0x800003fc]:sd fp, 16(gp)
Current Store : [0x80000400] : sd fp, 24(gp) -- Store: [0x80003228]:0x4000000000000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x20', 'rd : x15', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -4611686018427387905']
Last Code Sequence : 
	-[0x8000041c]:KSLRA32_U a5, t6, s4
	-[0x80000420]:sd a5, 32(gp)
Current Store : [0x80000424] : sd t6, 40(gp) -- Store: [0x80003238]:0x0000000B0000000E




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rd : x1', 'rs1 == rd != rs2', 'rs2_val == -2305843009213693953', 'rs1_w1_val == 4294967294', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000440]:KSLRA32_U ra, ra, s7
	-[0x80000444]:sd ra, 48(gp)
Current Store : [0x80000448] : sd ra, 56(gp) -- Store: [0x80003248]:0xFFFFFFFF00080000




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x16', 'rs2 == rd != rs1', 'rs2_val == -1152921504606846977', 'rs1_w1_val == 4096', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000464]:KSLRA32_U a6, s7, a6
	-[0x80000468]:sd a6, 64(gp)
Current Store : [0x8000046c] : sd s7, 72(gp) -- Store: [0x80003258]:0x0000100000008000




Last Coverpoint : ['rs1 : x28', 'rs2 : x14', 'rd : x27', 'rs2_val == -576460752303423489', 'rs1_w1_val == 33554432', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x8000048c]:KSLRA32_U s11, t3, a4
	-[0x80000490]:sd s11, 80(gp)
Current Store : [0x80000494] : sd t3, 88(gp) -- Store: [0x80003268]:0x02000000FFFFFFEF




Last Coverpoint : ['rs1 : x14', 'rs2 : x0', 'rd : x5', 'rs1_w1_val == 2097152', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800004ac]:KSLRA32_U t0, a4, zero
	-[0x800004b0]:sd t0, 96(gp)
Current Store : [0x800004b4] : sd a4, 104(gp) -- Store: [0x80003278]:0x00200000FDFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x9', 'rd : x29', 'rs2_val == -144115188075855873', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800004d4]:KSLRA32_U t4, tp, s1
	-[0x800004d8]:sd t4, 112(gp)
Current Store : [0x800004dc] : sd tp, 120(gp) -- Store: [0x80003288]:0xFFFFF7FFFBFFFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x0', 'rs2_val == -72057594037927937', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000500]:KSLRA32_U zero, s9, t2
	-[0x80000504]:sd zero, 128(gp)
Current Store : [0x80000508] : sd s9, 136(gp) -- Store: [0x80003298]:0xFEFFFFFFFF7FFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x26', 'rd : x2', 'rs2_val == -36028797018963969', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000520]:KSLRA32_U sp, a0, s10
	-[0x80000524]:sd sp, 144(gp)
Current Store : [0x80000528] : sd a0, 152(gp) -- Store: [0x800032a8]:0x0000001200000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x24', 'rs2_val == -18014398509481985', 'rs1_w1_val == 67108864', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000548]:KSLRA32_U s8, s5, t3
	-[0x8000054c]:sd s8, 160(gp)
Current Store : [0x80000550] : sd s5, 168(gp) -- Store: [0x800032b8]:0x0400000000800000




Last Coverpoint : ['rs1 : x19', 'rs2 : x31', 'rd : x18', 'rs2_val == -9007199254740993', 'rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x8000056c]:KSLRA32_U s2, s3, t6
	-[0x80000570]:sd s2, 176(gp)
Current Store : [0x80000574] : sd s3, 184(gp) -- Store: [0x800032c8]:0xFFFFFFF7FFFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x17', 'rd : x30', 'rs2_val == -4503599627370497', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000590]:KSLRA32_U t5, zero, a7
	-[0x80000594]:sd t5, 192(gp)
Current Store : [0x80000598] : sd zero, 200(gp) -- Store: [0x800032d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x25', 'rs2_val == -2251799813685249', 'rs1_w1_val == 8388608', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800005b8]:KSLRA32_U s9, t1, a0
	-[0x800005bc]:sd s9, 208(gp)
Current Store : [0x800005c0] : sd t1, 216(gp) -- Store: [0x800032e8]:0x00800000FFFFFFBF




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x14', 'rs2_val == -1125899906842625', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800005e0]:KSLRA32_U a4, t0, a1
	-[0x800005e4]:sd a4, 224(gp)
Current Store : [0x800005e8] : sd t0, 232(gp) -- Store: [0x800032f8]:0x00000007FFF7FFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x29', 'rd : x13', 'rs2_val == -562949953421313', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000060c]:KSLRA32_U a3, a5, t4
	-[0x80000610]:sd a3, 0(fp)
Current Store : [0x80000614] : sd a5, 8(fp) -- Store: [0x80003308]:0x0000000200000009




Last Coverpoint : ['rs1 : x30', 'rs2 : x4', 'rd : x12', 'rs2_val == -281474976710657', 'rs1_w1_val == 32', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000062c]:KSLRA32_U a2, t5, tp
	-[0x80000630]:sd a2, 16(fp)
Current Store : [0x80000634] : sd t5, 24(fp) -- Store: [0x80003318]:0x0000002040000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x17', 'rs2_val == -140737488355329', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000650]:KSLRA32_U a7, a3, gp
	-[0x80000654]:sd a7, 32(fp)
Current Store : [0x80000658] : sd a3, 40(fp) -- Store: [0x80003328]:0x000100000000000F




Last Coverpoint : ['rs1 : x29', 'rs2 : x19', 'rd : x20', 'rs2_val == -70368744177665', 'rs1_w1_val == 32768', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000678]:KSLRA32_U s4, t4, s3
	-[0x8000067c]:sd s4, 48(fp)
Current Store : [0x80000680] : sd t4, 56(fp) -- Store: [0x80003338]:0x00008000EFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x3', 'rs2_val == -35184372088833', 'rs1_w1_val == 262144', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800006a0]:KSLRA32_U gp, s2, s9
	-[0x800006a4]:sd gp, 64(fp)
Current Store : [0x800006a8] : sd s2, 72(fp) -- Store: [0x80003348]:0x0004000000001000




Last Coverpoint : ['rs1 : x20', 'rs2 : x24', 'rd : x31', 'rs2_val == -17592186044417', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x800006cc]:KSLRA32_U t6, s4, s8
	-[0x800006d0]:sd t6, 80(fp)
Current Store : [0x800006d4] : sd s4, 88(fp) -- Store: [0x80003358]:0xFBFFFFFFFF7FFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x1', 'rd : x22', 'rs2_val == -8796093022209', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x800006f0]:KSLRA32_U s6, a6, ra
	-[0x800006f4]:sd s6, 96(fp)
Current Store : [0x800006f8] : sd a6, 104(fp) -- Store: [0x80003368]:0xFFFFFFDF00001000




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x6', 'rs2_val == -4398046511105', 'rs1_w1_val == 131072', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000718]:KSLRA32_U t1, t2, s6
	-[0x8000071c]:sd t1, 112(fp)
Current Store : [0x80000720] : sd t2, 120(fp) -- Store: [0x80003378]:0x00020000FFBFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x21', 'rd : x7', 'rs2_val == -2199023255553', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000073c]:KSLRA32_U t2, s10, s5
	-[0x80000740]:sd t2, 128(fp)
Current Store : [0x80000744] : sd s10, 136(fp) -- Store: [0x80003388]:0x00000000FFFFFDFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x4', 'rs2_val == -1099511627777', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000760]:KSLRA32_U tp, a2, a5
	-[0x80000764]:sd tp, 144(fp)
Current Store : [0x80000768] : sd a2, 152(fp) -- Store: [0x80003398]:0x200000000000000E




Last Coverpoint : ['rs1 : x3', 'rs2 : x5', 'rd : x23', 'rs2_val == -549755813889', 'rs1_w1_val == 16', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000784]:KSLRA32_U s7, gp, t0
	-[0x80000788]:sd s7, 160(fp)
Current Store : [0x8000078c] : sd gp, 168(fp) -- Store: [0x800033a8]:0x0000001000000200




Last Coverpoint : ['rs1 : x22', 'rs2 : x2', 'rd : x19', 'rs2_val == -274877906945', 'rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x800007a8]:KSLRA32_U s3, s6, sp
	-[0x800007ac]:sd s3, 176(fp)
Current Store : [0x800007b0] : sd s6, 184(fp) -- Store: [0x800033b8]:0x8000000000000011




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x26', 'rs2_val == -137438953473', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800007cc]:KSLRA32_U s10, a1, s2
	-[0x800007d0]:sd s10, 192(fp)
Current Store : [0x800007d4] : sd a1, 200(fp) -- Store: [0x800033c8]:0x0000040000000005




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rd : x11', 'rs2_val == -68719476737', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800007f4]:KSLRA32_U a1, a7, t5
	-[0x800007f8]:sd a1, 208(fp)
Current Store : [0x800007fc] : sd a7, 216(fp) -- Store: [0x800033d8]:0x00000000FFFEFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x28', 'rs2_val == -34359738369', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000818]:KSLRA32_U t3, sp, a2
	-[0x8000081c]:sd t3, 224(fp)
Current Store : [0x80000820] : sd sp, 232(fp) -- Store: [0x800033e8]:0x7FFFFFFFFFFFFFFB




Last Coverpoint : ['rs1 : x24', 'rs2 : x13', 'rd : x21', 'rs2_val == -17179869185', 'rs1_w1_val == 16777216', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000840]:KSLRA32_U s5, s8, a3
	-[0x80000844]:sd s5, 240(fp)
Current Store : [0x80000848] : sd s8, 248(fp) -- Store: [0x800033f8]:0x0100000001000000




Last Coverpoint : ['rs1 : x9', 'rs2_val == -8589934593', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000868]:KSLRA32_U t1, s1, ra
	-[0x8000086c]:sd t1, 256(fp)
Current Store : [0x80000870] : sd s1, 264(fp) -- Store: [0x80003408]:0x80000000FFFFFFF7




Last Coverpoint : ['rs2 : x6', 'rs2_val == -4294967297', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000894]:KSLRA32_U s4, s1, t1
	-[0x80000898]:sd s4, 0(ra)
Current Store : [0x8000089c] : sd s1, 8(ra) -- Store: [0x80003418]:0xFFFFFFFEFFFFFFFD




Last Coverpoint : ['rd : x9', 'rs2_val == -2147483649', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800008b8]:KSLRA32_U s1, t4, t5
	-[0x800008bc]:sd s1, 16(ra)
Current Store : [0x800008c0] : sd t4, 24(ra) -- Store: [0x80003428]:0x00000011FFFFFFDF




Last Coverpoint : ['rs2_val == -1073741825', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800008dc]:KSLRA32_U t6, t5, t4
	-[0x800008e0]:sd t6, 32(ra)
Current Store : [0x800008e4] : sd t5, 40(ra) -- Store: [0x80003438]:0x40000000FFFFFFFD




Last Coverpoint : ['rs2_val == -536870913', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800008fc]:KSLRA32_U t6, t5, t4
	-[0x80000900]:sd t6, 48(ra)
Current Store : [0x80000904] : sd t5, 56(ra) -- Store: [0x80003448]:0x0000000700200000




Last Coverpoint : ['rs2_val == -268435457']
Last Code Sequence : 
	-[0x8000091c]:KSLRA32_U t6, t5, t4
	-[0x80000920]:sd t6, 64(ra)
Current Store : [0x80000924] : sd t5, 72(ra) -- Store: [0x80003458]:0x0000000AFFFFFFFF




Last Coverpoint : ['rs2_val == -134217729']
Last Code Sequence : 
	-[0x80000940]:KSLRA32_U t6, t5, t4
	-[0x80000944]:sd t6, 80(ra)
Current Store : [0x80000948] : sd t5, 88(ra) -- Store: [0x80003468]:0x0000000B55555555




Last Coverpoint : ['rs2_val == -67108865', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000964]:KSLRA32_U t6, t5, t4
	-[0x80000968]:sd t6, 96(ra)
Current Store : [0x8000096c] : sd t5, 104(ra) -- Store: [0x80003478]:0x4000000080000000




Last Coverpoint : ['rs2_val == -33554433', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000984]:KSLRA32_U t6, t5, t4
	-[0x80000988]:sd t6, 112(ra)
Current Store : [0x8000098c] : sd t5, 120(ra) -- Store: [0x80003488]:0x0000000600000010




Last Coverpoint : ['rs2_val == -16777217']
Last Code Sequence : 
	-[0x800009a8]:KSLRA32_U t6, t5, t4
	-[0x800009ac]:sd t6, 128(ra)
Current Store : [0x800009b0] : sd t5, 136(ra) -- Store: [0x80003498]:0x00040000FFFFFDFF




Last Coverpoint : ['rs2_val == -8388609', 'rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x800009d0]:KSLRA32_U t6, t5, t4
	-[0x800009d4]:sd t6, 144(ra)
Current Store : [0x800009d8] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFFFFDFFF00001000




Last Coverpoint : ['rs2_val == -4194305', 'rs1_w1_val == 3758096383', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800009f4]:KSLRA32_U t6, t5, t4
	-[0x800009f8]:sd t6, 160(ra)
Current Store : [0x800009fc] : sd t5, 168(ra) -- Store: [0x800034b8]:0xDFFFFFFF20000000




Last Coverpoint : ['rs2_val == -2097153', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000a14]:KSLRA32_U t6, t5, t4
	-[0x80000a18]:sd t6, 176(ra)
Current Store : [0x80000a1c] : sd t5, 184(ra) -- Store: [0x800034c8]:0xFFFFBFFF10000000




Last Coverpoint : ['rs2_val == -1048577', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a34]:KSLRA32_U t6, t5, t4
	-[0x80000a38]:sd t6, 192(ra)
Current Store : [0x80000a3c] : sd t5, 200(ra) -- Store: [0x800034d8]:0x0000001300400000




Last Coverpoint : ['rs2_val == -524289']
Last Code Sequence : 
	-[0x80000a58]:KSLRA32_U t6, t5, t4
	-[0x80000a5c]:sd t6, 208(ra)
Current Store : [0x80000a60] : sd t5, 216(ra) -- Store: [0x800034e8]:0x00000010FFFEFFFF




Last Coverpoint : ['rs2_val == -262145', 'rs1_w1_val == 4294966783', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000a7c]:KSLRA32_U t6, t5, t4
	-[0x80000a80]:sd t6, 224(ra)
Current Store : [0x80000a84] : sd t5, 232(ra) -- Store: [0x800034f8]:0xFFFFFDFFFFFFBFFF




Last Coverpoint : ['rs2_val == -131073', 'rs1_w1_val == 524288', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000a9c]:KSLRA32_U t6, t5, t4
	-[0x80000aa0]:sd t6, 240(ra)
Current Store : [0x80000aa4] : sd t5, 248(ra) -- Store: [0x80003508]:0x0008000000000001




Last Coverpoint : ['rs2_val == -65537', 'rs1_w1_val == 4294967039']
Last Code Sequence : 
	-[0x80000abc]:KSLRA32_U t6, t5, t4
	-[0x80000ac0]:sd t6, 256(ra)
Current Store : [0x80000ac4] : sd t5, 264(ra) -- Store: [0x80003518]:0xFFFFFEFF00000013




Last Coverpoint : ['rs2_val == -32769', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000adc]:KSLRA32_U t6, t5, t4
	-[0x80000ae0]:sd t6, 272(ra)
Current Store : [0x80000ae4] : sd t5, 280(ra) -- Store: [0x80003528]:0xFBFFFFFFFFFFFFFE




Last Coverpoint : ['rs2_val == -16385', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000b00]:KSLRA32_U t6, t5, t4
	-[0x80000b04]:sd t6, 288(ra)
Current Store : [0x80000b08] : sd t5, 296(ra) -- Store: [0x80003538]:0x00000800FFF7FFFF




Last Coverpoint : ['rs2_val == -8193', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000b2c]:KSLRA32_U t6, t5, t4
	-[0x80000b30]:sd t6, 304(ra)
Current Store : [0x80000b34] : sd t5, 312(ra) -- Store: [0x80003548]:0x20000000FFFFEFFF




Last Coverpoint : ['rs2_val == -4097']
Last Code Sequence : 
	-[0x80000b50]:KSLRA32_U t6, t5, t4
	-[0x80000b54]:sd t6, 320(ra)
Current Store : [0x80000b58] : sd t5, 328(ra) -- Store: [0x80003558]:0xFFFFFFF7FFFFBFFF




Last Coverpoint : ['rs2_val == -2049']
Last Code Sequence : 
	-[0x80000b70]:KSLRA32_U t6, t5, t4
	-[0x80000b74]:sd t6, 336(ra)
Current Store : [0x80000b78] : sd t5, 344(ra) -- Store: [0x80003568]:0x0000000BFFFFFFFE




Last Coverpoint : ['rs2_val == -1025']
Last Code Sequence : 
	-[0x80000b8c]:KSLRA32_U t6, t5, t4
	-[0x80000b90]:sd t6, 352(ra)
Current Store : [0x80000b94] : sd t5, 360(ra) -- Store: [0x80003578]:0x0000000A00000006




Last Coverpoint : ['rs2_val == -513', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000bb8]:KSLRA32_U t6, t5, t4
	-[0x80000bbc]:sd t6, 368(ra)
Current Store : [0x80000bc0] : sd t5, 376(ra) -- Store: [0x80003588]:0x80000000AAAAAAAA




Last Coverpoint : ['rs2_val == -257', 'rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x80000bd4]:KSLRA32_U t6, t5, t4
	-[0x80000bd8]:sd t6, 384(ra)
Current Store : [0x80000bdc] : sd t5, 392(ra) -- Store: [0x80003598]:0xFFFFFFFDFFFFFFFE




Last Coverpoint : ['rs2_val == -129']
Last Code Sequence : 
	-[0x80000bf0]:KSLRA32_U t6, t5, t4
	-[0x80000bf4]:sd t6, 400(ra)
Current Store : [0x80000bf8] : sd t5, 408(ra) -- Store: [0x800035a8]:0x0020000001000000




Last Coverpoint : ['rs2_val == -65']
Last Code Sequence : 
	-[0x80000c10]:KSLRA32_U t6, t5, t4
	-[0x80000c14]:sd t6, 416(ra)
Current Store : [0x80000c18] : sd t5, 424(ra) -- Store: [0x800035b8]:0x7FFFFFFF10000000




Last Coverpoint : ['rs2_val == -33', 'rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x80000c30]:KSLRA32_U t6, t5, t4
	-[0x80000c34]:sd t6, 432(ra)
Current Store : [0x80000c38] : sd t5, 440(ra) -- Store: [0x800035c8]:0xFFFFFFBFFFF7FFFF




Last Coverpoint : ['rs2_val == -17', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000c54]:KSLRA32_U t6, t5, t4
	-[0x80000c58]:sd t6, 448(ra)
Current Store : [0x80000c5c] : sd t5, 456(ra) -- Store: [0x800035d8]:0xFEFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_val == -9', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000c68]:KSLRA32_U t6, t5, t4
	-[0x80000c6c]:sd t6, 464(ra)
Current Store : [0x80000c70] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_val == -5']
Last Code Sequence : 
	-[0x80000c84]:KSLRA32_U t6, t5, t4
	-[0x80000c88]:sd t6, 480(ra)
Current Store : [0x80000c8c] : sd t5, 488(ra) -- Store: [0x800035f8]:0x000080000000000B




Last Coverpoint : ['rs2_val == -3']
Last Code Sequence : 
	-[0x80000ca0]:KSLRA32_U t6, t5, t4
	-[0x80000ca4]:sd t6, 496(ra)
Current Store : [0x80000ca8] : sd t5, 504(ra) -- Store: [0x80003608]:0x0004000000000006




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x80000cbc]:KSLRA32_U t6, t5, t4
	-[0x80000cc0]:sd t6, 512(ra)
Current Store : [0x80000cc4] : sd t5, 520(ra) -- Store: [0x80003618]:0xFFFFFEFFFFFFFFFE




Last Coverpoint : ['rs2_val == -9223372036854775808', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80000ce0]:KSLRA32_U t6, t5, t4
	-[0x80000ce4]:sd t6, 528(ra)
Current Store : [0x80000ce8] : sd t5, 536(ra) -- Store: [0x80003628]:0xFFDFFFFF00000001




Last Coverpoint : ['rs2_val == 4096', 'rs1_w1_val == 4294705151', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d00]:KSLRA32_U t6, t5, t4
	-[0x80000d04]:sd t6, 544(ra)
Current Store : [0x80000d08] : sd t5, 552(ra) -- Store: [0x80003638]:0xFFFBFFFF00000040




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d24]:KSLRA32_U t6, t5, t4
	-[0x80000d28]:sd t6, 560(ra)
Current Store : [0x80000d2c] : sd t5, 568(ra) -- Store: [0x80003648]:0x0000040000000020




Last Coverpoint : ['rs2_val == 70368744177664', 'rs1_w1_val == 1048576', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d44]:KSLRA32_U t6, t5, t4
	-[0x80000d48]:sd t6, 576(ra)
Current Store : [0x80000d4c] : sd t5, 584(ra) -- Store: [0x80003658]:0x0010000000000008




Last Coverpoint : ['rs1_w1_val == 4', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d68]:KSLRA32_U t6, t5, t4
	-[0x80000d6c]:sd t6, 592(ra)
Current Store : [0x80000d70] : sd t5, 600(ra) -- Store: [0x80003668]:0x0000000400000004




Last Coverpoint : ['rs2_val == -288230376151711745', 'rs1_w1_val == 4293918719', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000d90]:KSLRA32_U t6, t5, t4
	-[0x80000d94]:sd t6, 608(ra)
Current Store : [0x80000d98] : sd t5, 616(ra) -- Store: [0x80003678]:0xFFEFFFFF00000002




Last Coverpoint : ['rs1_w1_val == 4294836223', 'rs2_val == -6148914691236517206']
Last Code Sequence : 
	-[0x80000dc8]:KSLRA32_U t6, t5, t4
	-[0x80000dcc]:sd t6, 624(ra)
Current Store : [0x80000dd0] : sd t5, 632(ra) -- Store: [0x80003688]:0xFFFDFFFF20000000




Last Coverpoint : ['rs2_val == 4611686018427387904']
Last Code Sequence : 
	-[0x80000de8]:KSLRA32_U t6, t5, t4
	-[0x80000dec]:sd t6, 640(ra)
Current Store : [0x80000df0] : sd t5, 648(ra) -- Store: [0x80003698]:0xFFFFFFFE00000011




Last Coverpoint : ['rs2_val == 2305843009213693952', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000e08]:KSLRA32_U t6, t5, t4
	-[0x80000e0c]:sd t6, 656(ra)
Current Store : [0x80000e10] : sd t5, 664(ra) -- Store: [0x800036a8]:0x00000011DFFFFFFF




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80000e28]:KSLRA32_U t6, t5, t4
	-[0x80000e2c]:sd t6, 672(ra)
Current Store : [0x80000e30] : sd t5, 680(ra) -- Store: [0x800036b8]:0xFFFFFFFD00000010




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x80000e4c]:KSLRA32_U t6, t5, t4
	-[0x80000e50]:sd t6, 688(ra)
Current Store : [0x80000e54] : sd t5, 696(ra) -- Store: [0x800036c8]:0x00000800FFFFFFFF




Last Coverpoint : ['rs2_val == 288230376151711744']
Last Code Sequence : 
	-[0x80000e6c]:KSLRA32_U t6, t5, t4
	-[0x80000e70]:sd t6, 704(ra)
Current Store : [0x80000e74] : sd t5, 712(ra) -- Store: [0x800036d8]:0x0001000020000000




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x80000e8c]:KSLRA32_U t6, t5, t4
	-[0x80000e90]:sd t6, 720(ra)
Current Store : [0x80000e94] : sd t5, 728(ra) -- Store: [0x800036e8]:0x000200000000000C




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x80000eac]:KSLRA32_U t6, t5, t4
	-[0x80000eb0]:sd t6, 736(ra)
Current Store : [0x80000eb4] : sd t5, 744(ra) -- Store: [0x800036f8]:0x00000002FDFFFFFF




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x80000ecc]:KSLRA32_U t6, t5, t4
	-[0x80000ed0]:sd t6, 752(ra)
Current Store : [0x80000ed4] : sd t5, 760(ra) -- Store: [0x80003708]:0xFFFFFEFFFFFFFFBF




Last Coverpoint : ['rs2_val == 18014398509481984', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000eec]:KSLRA32_U t6, t5, t4
	-[0x80000ef0]:sd t6, 768(ra)
Current Store : [0x80000ef4] : sd t5, 776(ra) -- Store: [0x80003718]:0x0800000020000000




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80000f10]:KSLRA32_U t6, t5, t4
	-[0x80000f14]:sd t6, 784(ra)
Current Store : [0x80000f18] : sd t5, 792(ra) -- Store: [0x80003728]:0xFFFFFFBFFFF7FFFF




Last Coverpoint : ['rs2_val == 4503599627370496', 'rs1_w1_val == 4194304', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000f34]:KSLRA32_U t6, t5, t4
	-[0x80000f38]:sd t6, 800(ra)
Current Store : [0x80000f3c] : sd t5, 808(ra) -- Store: [0x80003738]:0x0040000000080000




Last Coverpoint : ['rs2_val == 2251799813685248', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000f54]:KSLRA32_U t6, t5, t4
	-[0x80000f58]:sd t6, 816(ra)
Current Store : [0x80000f5c] : sd t5, 824(ra) -- Store: [0x80003748]:0x0000001102000000




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x80000f7c]:KSLRA32_U t6, t5, t4
	-[0x80000f80]:sd t6, 832(ra)
Current Store : [0x80000f84] : sd t5, 840(ra) -- Store: [0x80003758]:0x08000000FF7FFFFF




Last Coverpoint : ['rs2_val == 562949953421312']
Last Code Sequence : 
	-[0x80000fa0]:KSLRA32_U t6, t5, t4
	-[0x80000fa4]:sd t6, 848(ra)
Current Store : [0x80000fa8] : sd t5, 856(ra) -- Store: [0x80003768]:0xFFFFFFF7FFFBFFFF




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80000fc0]:KSLRA32_U t6, t5, t4
	-[0x80000fc4]:sd t6, 864(ra)
Current Store : [0x80000fc8] : sd t5, 872(ra) -- Store: [0x80003778]:0x000200000000000A




Last Coverpoint : ['rs2_val == 140737488355328', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000fe0]:KSLRA32_U t6, t5, t4
	-[0x80000fe4]:sd t6, 880(ra)
Current Store : [0x80000fe8] : sd t5, 888(ra) -- Store: [0x80003788]:0xFDFFFFFFFFFFFBFF




Last Coverpoint : ['rs2_val == 35184372088832', 'rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80001000]:KSLRA32_U t6, t5, t4
	-[0x80001004]:sd t6, 896(ra)
Current Store : [0x80001008] : sd t5, 904(ra) -- Store: [0x80003798]:0xFFFFFBFF0000000F




Last Coverpoint : ['rs2_val == 17592186044416', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80001024]:KSLRA32_U t6, t5, t4
	-[0x80001028]:sd t6, 912(ra)
Current Store : [0x8000102c] : sd t5, 920(ra) -- Store: [0x800037a8]:0x0000001200000800




Last Coverpoint : ['rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x80001048]:KSLRA32_U t6, t5, t4
	-[0x8000104c]:sd t6, 928(ra)
Current Store : [0x80001050] : sd t5, 936(ra) -- Store: [0x800037b8]:0x00400000FFFFFFFB




Last Coverpoint : ['rs2_val == 4398046511104', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000106c]:KSLRA32_U t6, t5, t4
	-[0x80001070]:sd t6, 944(ra)
Current Store : [0x80001074] : sd t5, 952(ra) -- Store: [0x800037c8]:0x020000007FFFFFFF




Last Coverpoint : ['rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x80001090]:KSLRA32_U t6, t5, t4
	-[0x80001094]:sd t6, 960(ra)
Current Store : [0x80001098] : sd t5, 968(ra) -- Store: [0x800037d8]:0xFFFFFDFFFFFFBFFF




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x800010b0]:KSLRA32_U t6, t5, t4
	-[0x800010b4]:sd t6, 976(ra)
Current Store : [0x800010b8] : sd t5, 984(ra) -- Store: [0x800037e8]:0xDFFFFFFF00000000




Last Coverpoint : ['rs2_val == 549755813888', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800010d8]:KSLRA32_U t6, t5, t4
	-[0x800010dc]:sd t6, 992(ra)
Current Store : [0x800010e0] : sd t5, 1000(ra) -- Store: [0x800037f8]:0x0000200000000800




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800010fc]:KSLRA32_U t6, t5, t4
	-[0x80001100]:sd t6, 1008(ra)
Current Store : [0x80001104] : sd t5, 1016(ra) -- Store: [0x80003808]:0x00040000FF7FFFFF




Last Coverpoint : ['rs2_val == 137438953472', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001120]:KSLRA32_U t6, t5, t4
	-[0x80001124]:sd t6, 1024(ra)
Current Store : [0x80001128] : sd t5, 1032(ra) -- Store: [0x80003818]:0xFDFFFFFF04000000




Last Coverpoint : ['rs2_val == 68719476736', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80001144]:KSLRA32_U t6, t5, t4
	-[0x80001148]:sd t6, 1040(ra)
Current Store : [0x8000114c] : sd t5, 1048(ra) -- Store: [0x80003828]:0x2000000000020000




Last Coverpoint : ['rs2_val == 34359738368', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80001164]:KSLRA32_U t6, t5, t4
	-[0x80001168]:sd t6, 1056(ra)
Current Store : [0x8000116c] : sd t5, 1064(ra) -- Store: [0x80003838]:0x0020000000000400




Last Coverpoint : ['rs2_val == 17179869184', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80001184]:KSLRA32_U t6, t5, t4
	-[0x80001188]:sd t6, 1072(ra)
Current Store : [0x8000118c] : sd t5, 1080(ra) -- Store: [0x80003848]:0x0000800000000080




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800011a4]:KSLRA32_U t6, t5, t4
	-[0x800011a8]:sd t6, 1088(ra)
Current Store : [0x800011ac] : sd t5, 1096(ra) -- Store: [0x80003858]:0xFFFFFFFE00000013




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x800011c4]:KSLRA32_U t6, t5, t4
	-[0x800011c8]:sd t6, 1104(ra)
Current Store : [0x800011cc] : sd t5, 1112(ra) -- Store: [0x80003868]:0x000000037FFFFFFF




Last Coverpoint : ['rs2_val == 2147483648']
Last Code Sequence : 
	-[0x800011e0]:KSLRA32_U t6, t5, t4
	-[0x800011e4]:sd t6, 1120(ra)
Current Store : [0x800011e8] : sd t5, 1128(ra) -- Store: [0x80003878]:0x0800000000000000




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x800011fc]:KSLRA32_U t6, t5, t4
	-[0x80001200]:sd t6, 1136(ra)
Current Store : [0x80001204] : sd t5, 1144(ra) -- Store: [0x80003888]:0x0000002000000011




Last Coverpoint : ['rs2_val == 536870912', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000121c]:KSLRA32_U t6, t5, t4
	-[0x80001220]:sd t6, 1152(ra)
Current Store : [0x80001224] : sd t5, 1160(ra) -- Store: [0x80003898]:0x0000000100000800




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x80001238]:KSLRA32_U t6, t5, t4
	-[0x8000123c]:sd t6, 1168(ra)
Current Store : [0x80001240] : sd t5, 1176(ra) -- Store: [0x800038a8]:0x0000200000000005




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x80001254]:KSLRA32_U t6, t5, t4
	-[0x80001258]:sd t6, 1184(ra)
Current Store : [0x8000125c] : sd t5, 1192(ra) -- Store: [0x800038b8]:0xFFFFDFFF04000000




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80001270]:KSLRA32_U t6, t5, t4
	-[0x80001274]:sd t6, 1200(ra)
Current Store : [0x80001278] : sd t5, 1208(ra) -- Store: [0x800038c8]:0x0000000F00000001




Last Coverpoint : ['rs1_w1_val == 2863311530']
Last Code Sequence : 
	-[0x80001294]:KSLRA32_U t6, t5, t4
	-[0x80001298]:sd t6, 1216(ra)
Current Store : [0x8000129c] : sd t5, 1224(ra) -- Store: [0x800038d8]:0xAAAAAAAAFFFFFFFE




Last Coverpoint : ['opcode : kslra32.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 35184372088832', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800012b8]:KSLRA32_U t6, t5, t4
	-[0x800012bc]:sd t6, 1232(ra)
Current Store : [0x800012c0] : sd t5, 1240(ra) -- Store: [0x800038e8]:0x5555555500000012




Last Coverpoint : ['rs1_w1_val == 3221225471', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800012e0]:KSLRA32_U t6, t5, t4
	-[0x800012e4]:sd t6, 1248(ra)
Current Store : [0x800012e8] : sd t5, 1256(ra) -- Store: [0x800038f8]:0xBFFFFFFF08000000




Last Coverpoint : ['rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80001308]:KSLRA32_U t6, t5, t4
	-[0x8000130c]:sd t6, 1264(ra)
Current Store : [0x80001310] : sd t5, 1272(ra) -- Store: [0x80003908]:0xEFFFFFFF00000020




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x80001330]:KSLRA32_U t6, t5, t4
	-[0x80001334]:sd t6, 1280(ra)
Current Store : [0x80001338] : sd t5, 1288(ra) -- Store: [0x80003918]:0xF7FFFFFF00020000




Last Coverpoint : ['rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80001360]:KSLRA32_U t6, t5, t4
	-[0x80001364]:sd t6, 1296(ra)
Current Store : [0x80001368] : sd t5, 1304(ra) -- Store: [0x80003928]:0xFF7FFFFF00000800




Last Coverpoint : ['rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x80001388]:KSLRA32_U t6, t5, t4
	-[0x8000138c]:sd t6, 1312(ra)
Current Store : [0x80001390] : sd t5, 1320(ra) -- Store: [0x80003938]:0xFFBFFFFF00400000




Last Coverpoint : ['rs2_val == 1024', 'rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x800013a4]:KSLRA32_U t6, t5, t4
	-[0x800013a8]:sd t6, 1328(ra)
Current Store : [0x800013ac] : sd t5, 1336(ra) -- Store: [0x80003948]:0xFFF7FFFF00200000




Last Coverpoint : ['rs1_w1_val == 4294901759', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800013c8]:KSLRA32_U t6, t5, t4
	-[0x800013cc]:sd t6, 1344(ra)
Current Store : [0x800013d0] : sd t5, 1352(ra) -- Store: [0x80003958]:0xFFFEFFFFFFFF7FFF




Last Coverpoint : ['rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x800013e8]:KSLRA32_U t6, t5, t4
	-[0x800013ec]:sd t6, 1360(ra)
Current Store : [0x800013f0] : sd t5, 1368(ra) -- Store: [0x80003968]:0xFFFF7FFF80000000




Last Coverpoint : ['rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80001410]:KSLRA32_U t6, t5, t4
	-[0x80001414]:sd t6, 1376(ra)
Current Store : [0x80001418] : sd t5, 1384(ra) -- Store: [0x80003978]:0xFFFFEFFFFFFFEFFF




Last Coverpoint : ['rs1_w1_val == 4294967167']
Last Code Sequence : 
	-[0x80001430]:KSLRA32_U t6, t5, t4
	-[0x80001434]:sd t6, 1392(ra)
Current Store : [0x80001438] : sd t5, 1400(ra) -- Store: [0x80003988]:0xFFFFFF7F00000000




Last Coverpoint : ['rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x80001454]:KSLRA32_U t6, t5, t4
	-[0x80001458]:sd t6, 1408(ra)
Current Store : [0x8000145c] : sd t5, 1416(ra) -- Store: [0x80003998]:0xFFFFFFEFFFFEFFFF




Last Coverpoint : ['rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x80001474]:KSLRA32_U t6, t5, t4
	-[0x80001478]:sd t6, 1424(ra)
Current Store : [0x8000147c] : sd t5, 1432(ra) -- Store: [0x800039a8]:0xFFFFFFFBFBFFFFFF




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001498]:KSLRA32_U t6, t5, t4
	-[0x8000149c]:sd t6, 1440(ra)
Current Store : [0x800014a0] : sd t5, 1448(ra) -- Store: [0x800039b8]:0x1000000000100000




Last Coverpoint : ['rs1_w1_val == 16384', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800014c0]:KSLRA32_U t6, t5, t4
	-[0x800014c4]:sd t6, 1456(ra)
Current Store : [0x800014c8] : sd t5, 1464(ra) -- Store: [0x800039c8]:0x0000400000004000




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800014dc]:KSLRA32_U t6, t5, t4
	-[0x800014e0]:sd t6, 1472(ra)
Current Store : [0x800014e4] : sd t5, 1480(ra) -- Store: [0x800039d8]:0x00000200FFFFFFF7




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800014fc]:KSLRA32_U t6, t5, t4
	-[0x80001500]:sd t6, 1488(ra)
Current Store : [0x80001504] : sd t5, 1496(ra) -- Store: [0x800039e8]:0x0000010000000400




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001524]:KSLRA32_U t6, t5, t4
	-[0x80001528]:sd t6, 1504(ra)
Current Store : [0x8000152c] : sd t5, 1512(ra) -- Store: [0x800039f8]:0x0000008000000800




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80001544]:KSLRA32_U t6, t5, t4
	-[0x80001548]:sd t6, 1520(ra)
Current Store : [0x8000154c] : sd t5, 1528(ra) -- Store: [0x80003a08]:0x0000004000002000




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x8000157c]:KSLRA32_U t6, t5, t4
	-[0x80001580]:sd t6, 1536(ra)
Current Store : [0x80001584] : sd t5, 1544(ra) -- Store: [0x80003a18]:0x00000008FBFFFFFF




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800015a4]:KSLRA32_U t6, t5, t4
	-[0x800015a8]:sd t6, 1552(ra)
Current Store : [0x800015ac] : sd t5, 1560(ra) -- Store: [0x80003a28]:0x10000000BFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800015cc]:KSLRA32_U t6, t5, t4
	-[0x800015d0]:sd t6, 1568(ra)
Current Store : [0x800015d4] : sd t5, 1576(ra) -- Store: [0x80003a38]:0x80000000F7FFFFFF




Last Coverpoint : ['rs2_val == 256', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800015e8]:KSLRA32_U t6, t5, t4
	-[0x800015ec]:sd t6, 1584(ra)
Current Store : [0x800015f0] : sd t5, 1592(ra) -- Store: [0x80003a48]:0x00000007FEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x8000160c]:KSLRA32_U t6, t5, t4
	-[0x80001610]:sd t6, 1600(ra)
Current Store : [0x80001614] : sd t5, 1608(ra) -- Store: [0x80003a58]:0x00010000FFDFFFFF




Last Coverpoint : ['rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80001630]:KSLRA32_U t6, t5, t4
	-[0x80001634]:sd t6, 1616(ra)
Current Store : [0x80001638] : sd t5, 1624(ra) -- Store: [0x80003a68]:0xFFFFFFEFFFEFFFFF




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x8000165c]:KSLRA32_U t6, t5, t4
	-[0x80001660]:sd t6, 1632(ra)
Current Store : [0x80001664] : sd t5, 1640(ra) -- Store: [0x80003a78]:0x55555555FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80001684]:KSLRA32_U t6, t5, t4
	-[0x80001688]:sd t6, 1648(ra)
Current Store : [0x8000168c] : sd t5, 1656(ra) -- Store: [0x80003a88]:0xFFFEFFFF00000100




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800016ac]:KSLRA32_U t6, t5, t4
	-[0x800016b0]:sd t6, 1664(ra)
Current Store : [0x800016b4] : sd t5, 1672(ra) -- Store: [0x80003a98]:0xDFFFFFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800016dc]:KSLRA32_U t6, t5, t4
	-[0x800016e0]:sd t6, 1680(ra)
Current Store : [0x800016e4] : sd t5, 1688(ra) -- Store: [0x80003aa8]:0x00010000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800016fc]:KSLRA32_U t6, t5, t4
	-[0x80001700]:sd t6, 1696(ra)
Current Store : [0x80001704] : sd t5, 1704(ra) -- Store: [0x80003ab8]:0xFFFDFFFFFFFFFF7F




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x80001718]:KSLRA32_U t6, t5, t4
	-[0x8000171c]:sd t6, 1712(ra)
Current Store : [0x80001720] : sd t5, 1720(ra) -- Store: [0x80003ac8]:0xFFFF7FFF00800000




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x80001734]:KSLRA32_U t6, t5, t4
	-[0x80001738]:sd t6, 1728(ra)
Current Store : [0x8000173c] : sd t5, 1736(ra) -- Store: [0x80003ad8]:0xFFFFFFDF0000000E




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x80001750]:KSLRA32_U t6, t5, t4
	-[0x80001754]:sd t6, 1744(ra)
Current Store : [0x80001758] : sd t5, 1752(ra) -- Store: [0x80003ae8]:0xFFFFFFF7EFFFFFFF




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x8000176c]:KSLRA32_U t6, t5, t4
	-[0x80001770]:sd t6, 1760(ra)
Current Store : [0x80001774] : sd t5, 1768(ra) -- Store: [0x80003af8]:0x0002000001000000




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x8000178c]:KSLRA32_U t6, t5, t4
	-[0x80001790]:sd t6, 1776(ra)
Current Store : [0x80001794] : sd t5, 1784(ra) -- Store: [0x80003b08]:0xEFFFFFFF0000000B




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x800017a0]:KSLRA32_U t6, t5, t4
	-[0x800017a4]:sd t6, 1792(ra)
Current Store : [0x800017a8] : sd t5, 1800(ra) -- Store: [0x80003b18]:0xFFFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x800017bc]:KSLRA32_U t6, t5, t4
	-[0x800017c0]:sd t6, 1808(ra)
Current Store : [0x800017c4] : sd t5, 1816(ra) -- Store: [0x80003b28]:0x0040000000000010




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x800017dc]:KSLRA32_U t6, t5, t4
	-[0x800017e0]:sd t6, 1824(ra)
Current Store : [0x800017e4] : sd t5, 1832(ra) -- Store: [0x80003b38]:0xFFFEFFFF0000000B




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x800017f4]:KSLRA32_U t6, t5, t4
	-[0x800017f8]:sd t6, 1840(ra)
Current Store : [0x800017fc] : sd t5, 1848(ra) -- Store: [0x80003b48]:0xFFFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_val == 131072']
Last Code Sequence : 
	-[0x80001818]:KSLRA32_U t6, t5, t4
	-[0x8000181c]:sd t6, 1856(ra)
Current Store : [0x80001820] : sd t5, 1864(ra) -- Store: [0x80003b58]:0xEFFFFFFF00020000




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x80001830]:KSLRA32_U t6, t5, t4
	-[0x80001834]:sd t6, 1872(ra)
Current Store : [0x80001838] : sd t5, 1880(ra) -- Store: [0x80003b68]:0xFFFFFFFB00000000




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x8000184c]:KSLRA32_U t6, t5, t4
	-[0x80001850]:sd t6, 1888(ra)
Current Store : [0x80001854] : sd t5, 1896(ra) -- Store: [0x80003b78]:0xF7FFFFFFFFFFFBFF




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80001868]:KSLRA32_U t6, t5, t4
	-[0x8000186c]:sd t6, 1904(ra)
Current Store : [0x80001870] : sd t5, 1912(ra) -- Store: [0x80003b88]:0xFFFFFDFF00008000




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80001888]:KSLRA32_U t6, t5, t4
	-[0x8000188c]:sd t6, 1920(ra)
Current Store : [0x80001890] : sd t5, 1928(ra) -- Store: [0x80003b98]:0xFFFBFFFFFDFFFFFF




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800018a8]:KSLRA32_U t6, t5, t4
	-[0x800018ac]:sd t6, 1936(ra)
Current Store : [0x800018b0] : sd t5, 1944(ra) -- Store: [0x80003ba8]:0xFFFFFFFF00040000




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x800018c8]:KSLRA32_U t6, t5, t4
	-[0x800018cc]:sd t6, 1952(ra)
Current Store : [0x800018d0] : sd t5, 1960(ra) -- Store: [0x80003bb8]:0x0000040000000004




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800018f4]:KSLRA32_U t6, t5, t4
	-[0x800018f8]:sd t6, 1968(ra)
Current Store : [0x800018fc] : sd t5, 1976(ra) -- Store: [0x80003bc8]:0xFEFFFFFF00010000




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x80001914]:KSLRA32_U t6, t5, t4
	-[0x80001918]:sd t6, 1984(ra)
Current Store : [0x8000191c] : sd t5, 1992(ra) -- Store: [0x80003bd8]:0x00400000FFFFFFFE




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x80001930]:KSLRA32_U t6, t5, t4
	-[0x80001934]:sd t6, 2000(ra)
Current Store : [0x80001938] : sd t5, 2008(ra) -- Store: [0x80003be8]:0xFFFFFFFBFFFFFFDF




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x8000194c]:KSLRA32_U t6, t5, t4
	-[0x80001950]:sd t6, 2016(ra)
Current Store : [0x80001954] : sd t5, 2024(ra) -- Store: [0x80003bf8]:0x00000012FFFFFFFF




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001998]:KSLRA32_U t6, t5, t4
	-[0x8000199c]:sd t6, 0(ra)
Current Store : [0x800019a0] : sd t5, 8(ra) -- Store: [0x80003c18]:0xFFFFEFFF0000000D




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x800019bc]:KSLRA32_U t6, t5, t4
	-[0x800019c0]:sd t6, 0(ra)
Current Store : [0x800019c4] : sd t5, 8(ra) -- Store: [0x80003c28]:0x0000002000000006




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x800019d8]:KSLRA32_U t6, t5, t4
	-[0x800019dc]:sd t6, 16(ra)
Current Store : [0x800019e0] : sd t5, 24(ra) -- Store: [0x80003c38]:0x000000200000000B




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x800019f4]:KSLRA32_U t6, t5, t4
	-[0x800019f8]:sd t6, 32(ra)
Current Store : [0x800019fc] : sd t5, 40(ra) -- Store: [0x80003c48]:0x00000007FBFFFFFF




Last Coverpoint : ['opcode : kslra32.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 6148914691236517205', 'rs1_w1_val == 4294967294', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001a2c]:KSLRA32_U t6, t5, t4
	-[0x80001a30]:sd t6, 48(ra)
Current Store : [0x80001a34] : sd t5, 56(ra) -- Store: [0x80003c58]:0xFFFFFFFE00100000




Last Coverpoint : ['opcode : kslra32.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 9223372036854775807', 'rs1_w1_val == 8388608', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001a54]:KSLRA32_U t6, t5, t4
	-[0x80001a58]:sd t6, 64(ra)
Current Store : [0x80001a5c] : sd t5, 72(ra) -- Store: [0x80003c68]:0x0080000000080000




Last Coverpoint : ['opcode : kslra32.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -72057594037927937', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80001a80]:KSLRA32_U t6, t5, t4
	-[0x80001a84]:sd t6, 80(ra)
Current Store : [0x80001a88] : sd t5, 88(ra) -- Store: [0x80003c78]:0xFEFFFFFFFF7FFFFF





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

|s.no|            signature             |                                                                                           coverpoints                                                                                            |                                   code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFFFFF7FFFFFFF|- opcode : kslra32.u<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_val == 6148914691236517205<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 1431655765<br> |[0x800003d0]:KSLRA32_U a0, s11, s11<br> [0x800003d4]:sd a0, 0(gp)<br>     |
|   2|[0x80003220]<br>0x4000000000000000|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs2_val == 9223372036854775807<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 4294967295<br>                             |[0x800003f8]:KSLRA32_U fp, fp, fp<br> [0x800003fc]:sd fp, 16(gp)<br>      |
|   3|[0x80003230]<br>0x0000000600000007|- rs1 : x31<br> - rs2 : x20<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -4611686018427387905<br>                                                                |[0x8000041c]:KSLRA32_U a5, t6, s4<br> [0x80000420]:sd a5, 32(gp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFF00080000|- rs1 : x1<br> - rs2 : x23<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_w1_val == 4294967294<br> - rs1_w0_val == 1048576<br>                              |[0x80000440]:KSLRA32_U ra, ra, s7<br> [0x80000444]:sd ra, 48(gp)<br>      |
|   5|[0x80003250]<br>0x0000080000004000|- rs1 : x23<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 32768<br>                                    |[0x80000464]:KSLRA32_U a6, s7, a6<br> [0x80000468]:sd a6, 64(gp)<br>      |
|   6|[0x80003260]<br>0x01000000FFFFFFF8|- rs1 : x28<br> - rs2 : x14<br> - rd : x27<br> - rs2_val == -576460752303423489<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 4294967279<br>                                                   |[0x8000048c]:KSLRA32_U s11, t3, a4<br> [0x80000490]:sd s11, 80(gp)<br>    |
|   7|[0x80003270]<br>0x00200000FDFFFFFF|- rs1 : x14<br> - rs2 : x0<br> - rd : x5<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4261412863<br>                                                                                           |[0x800004ac]:KSLRA32_U t0, a4, zero<br> [0x800004b0]:sd t0, 96(gp)<br>    |
|   8|[0x80003280]<br>0xFFFFFC00FE000000|- rs1 : x4<br> - rs2 : x9<br> - rd : x29<br> - rs2_val == -144115188075855873<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 4227858431<br>                                                   |[0x800004d4]:KSLRA32_U t4, tp, s1<br> [0x800004d8]:sd t4, 112(gp)<br>     |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x7<br> - rd : x0<br> - rs2_val == -72057594037927937<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 4286578687<br>                                                    |[0x80000500]:KSLRA32_U zero, s9, t2<br> [0x80000504]:sd zero, 128(gp)<br> |
|  10|[0x800032a0]<br>0x0000000900000000|- rs1 : x10<br> - rs2 : x26<br> - rd : x2<br> - rs2_val == -36028797018963969<br> - rs1_w0_val == 0<br>                                                                                           |[0x80000520]:KSLRA32_U sp, a0, s10<br> [0x80000524]:sd sp, 144(gp)<br>    |
|  11|[0x800032b0]<br>0x0200000000400000|- rs1 : x21<br> - rs2 : x28<br> - rd : x24<br> - rs2_val == -18014398509481985<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 8388608<br>                                                       |[0x80000548]:KSLRA32_U s8, s5, t3<br> [0x8000054c]:sd s8, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFC00000000|- rs1 : x19<br> - rs2 : x31<br> - rd : x18<br> - rs2_val == -9007199254740993<br> - rs1_w1_val == 4294967287<br>                                                                                  |[0x8000056c]:KSLRA32_U s2, s3, t6<br> [0x80000570]:sd s2, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x17<br> - rd : x30<br> - rs2_val == -4503599627370497<br> - rs1_w1_val == 0<br>                                                                                            |[0x80000590]:KSLRA32_U t5, zero, a7<br> [0x80000594]:sd t5, 192(gp)<br>   |
|  14|[0x800032e0]<br>0x00400000FFFFFFE0|- rs1 : x6<br> - rs2 : x10<br> - rd : x25<br> - rs2_val == -2251799813685249<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 4294967231<br>                                                       |[0x800005b8]:KSLRA32_U s9, t1, a0<br> [0x800005bc]:sd s9, 208(gp)<br>     |
|  15|[0x800032f0]<br>0x00000004FFFC0000|- rs1 : x5<br> - rs2 : x11<br> - rd : x14<br> - rs2_val == -1125899906842625<br> - rs1_w0_val == 4294443007<br>                                                                                   |[0x800005e0]:KSLRA32_U a4, t0, a1<br> [0x800005e4]:sd a4, 224(gp)<br>     |
|  16|[0x80003300]<br>0x0000000100000005|- rs1 : x15<br> - rs2 : x29<br> - rd : x13<br> - rs2_val == -562949953421313<br> - rs1_w1_val == 2<br>                                                                                            |[0x8000060c]:KSLRA32_U a3, a5, t4<br> [0x80000610]:sd a3, 0(fp)<br>       |
|  17|[0x80003310]<br>0x0000001020000000|- rs1 : x30<br> - rs2 : x4<br> - rd : x12<br> - rs2_val == -281474976710657<br> - rs1_w1_val == 32<br> - rs1_w0_val == 1073741824<br>                                                             |[0x8000062c]:KSLRA32_U a2, t5, tp<br> [0x80000630]:sd a2, 16(fp)<br>      |
|  18|[0x80003320]<br>0x0000800000000008|- rs1 : x13<br> - rs2 : x3<br> - rd : x17<br> - rs2_val == -140737488355329<br> - rs1_w1_val == 65536<br>                                                                                         |[0x80000650]:KSLRA32_U a7, a3, gp<br> [0x80000654]:sd a7, 32(fp)<br>      |
|  19|[0x80003330]<br>0x00004000F8000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == -70368744177665<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 4026531839<br>                                                          |[0x80000678]:KSLRA32_U s4, t4, s3<br> [0x8000067c]:sd s4, 48(fp)<br>      |
|  20|[0x80003340]<br>0x0002000000000800|- rs1 : x18<br> - rs2 : x25<br> - rd : x3<br> - rs2_val == -35184372088833<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 4096<br>                                                                |[0x800006a0]:KSLRA32_U gp, s2, s9<br> [0x800006a4]:sd gp, 64(fp)<br>      |
|  21|[0x80003350]<br>0xFE000000FFC00000|- rs1 : x20<br> - rs2 : x24<br> - rd : x31<br> - rs2_val == -17592186044417<br> - rs1_w1_val == 4227858431<br>                                                                                    |[0x800006cc]:KSLRA32_U t6, s4, s8<br> [0x800006d0]:sd t6, 80(fp)<br>      |
|  22|[0x80003360]<br>0xFFFFFFF000000800|- rs1 : x16<br> - rs2 : x1<br> - rd : x22<br> - rs2_val == -8796093022209<br> - rs1_w1_val == 4294967263<br>                                                                                      |[0x800006f0]:KSLRA32_U s6, a6, ra<br> [0x800006f4]:sd s6, 96(fp)<br>      |
|  23|[0x80003370]<br>0x00010000FFE00000|- rs1 : x7<br> - rs2 : x22<br> - rd : x6<br> - rs2_val == -4398046511105<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 4290772991<br>                                                            |[0x80000718]:KSLRA32_U t1, t2, s6<br> [0x8000071c]:sd t1, 112(fp)<br>     |
|  24|[0x80003380]<br>0x00000000FFFFFF00|- rs1 : x26<br> - rs2 : x21<br> - rd : x7<br> - rs2_val == -2199023255553<br> - rs1_w0_val == 4294966783<br>                                                                                      |[0x8000073c]:KSLRA32_U t2, s10, s5<br> [0x80000740]:sd t2, 128(fp)<br>    |
|  25|[0x80003390]<br>0x1000000000000007|- rs1 : x12<br> - rs2 : x15<br> - rd : x4<br> - rs2_val == -1099511627777<br> - rs1_w1_val == 536870912<br>                                                                                       |[0x80000760]:KSLRA32_U tp, a2, a5<br> [0x80000764]:sd tp, 144(fp)<br>     |
|  26|[0x800033a0]<br>0x0000000800000100|- rs1 : x3<br> - rs2 : x5<br> - rd : x23<br> - rs2_val == -549755813889<br> - rs1_w1_val == 16<br> - rs1_w0_val == 512<br>                                                                        |[0x80000784]:KSLRA32_U s7, gp, t0<br> [0x80000788]:sd s7, 160(fp)<br>     |
|  27|[0x800033b0]<br>0xC000000000000009|- rs1 : x22<br> - rs2 : x2<br> - rd : x19<br> - rs2_val == -274877906945<br> - rs1_w1_val == 2147483648<br>                                                                                       |[0x800007a8]:KSLRA32_U s3, s6, sp<br> [0x800007ac]:sd s3, 176(fp)<br>     |
|  28|[0x800033c0]<br>0x0000020000000003|- rs1 : x11<br> - rs2 : x18<br> - rd : x26<br> - rs2_val == -137438953473<br> - rs1_w1_val == 1024<br>                                                                                            |[0x800007cc]:KSLRA32_U s10, a1, s2<br> [0x800007d0]:sd s10, 192(fp)<br>   |
|  29|[0x800033d0]<br>0x00000000FFFF8000|- rs1 : x17<br> - rs2 : x30<br> - rd : x11<br> - rs2_val == -68719476737<br> - rs1_w0_val == 4294901759<br>                                                                                       |[0x800007f4]:KSLRA32_U a1, a7, t5<br> [0x800007f8]:sd a1, 208(fp)<br>     |
|  30|[0x800033e0]<br>0x40000000FFFFFFFE|- rs1 : x2<br> - rs2 : x12<br> - rd : x28<br> - rs2_val == -34359738369<br> - rs1_w0_val == 4294967291<br>                                                                                        |[0x80000818]:KSLRA32_U t3, sp, a2<br> [0x8000081c]:sd t3, 224(fp)<br>     |
|  31|[0x800033f0]<br>0x0080000000800000|- rs1 : x24<br> - rs2 : x13<br> - rd : x21<br> - rs2_val == -17179869185<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 16777216<br>                                                            |[0x80000840]:KSLRA32_U s5, s8, a3<br> [0x80000844]:sd s5, 240(fp)<br>     |
|  32|[0x80003400]<br>0xC0000000FFFFFFFC|- rs1 : x9<br> - rs2_val == -8589934593<br> - rs1_w0_val == 4294967287<br>                                                                                                                        |[0x80000868]:KSLRA32_U t1, s1, ra<br> [0x8000086c]:sd t1, 256(fp)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFFFFFFFFFF|- rs2 : x6<br> - rs2_val == -4294967297<br> - rs1_w0_val == 4294967293<br>                                                                                                                        |[0x80000894]:KSLRA32_U s4, s1, t1<br> [0x80000898]:sd s4, 0(ra)<br>       |
|  34|[0x80003420]<br>0x00000009FFFFFFF0|- rd : x9<br> - rs2_val == -2147483649<br> - rs1_w0_val == 4294967263<br>                                                                                                                         |[0x800008b8]:KSLRA32_U s1, t4, t5<br> [0x800008bc]:sd s1, 16(ra)<br>      |
|  35|[0x80003430]<br>0x20000000FFFFFFFF|- rs2_val == -1073741825<br> - rs1_w1_val == 1073741824<br>                                                                                                                                       |[0x800008dc]:KSLRA32_U t6, t5, t4<br> [0x800008e0]:sd t6, 32(ra)<br>      |
|  36|[0x80003440]<br>0x0000000400100000|- rs2_val == -536870913<br> - rs1_w0_val == 2097152<br>                                                                                                                                           |[0x800008fc]:KSLRA32_U t6, t5, t4<br> [0x80000900]:sd t6, 48(ra)<br>      |
|  37|[0x80003450]<br>0x0000000500000000|- rs2_val == -268435457<br>                                                                                                                                                                       |[0x8000091c]:KSLRA32_U t6, t5, t4<br> [0x80000920]:sd t6, 64(ra)<br>      |
|  38|[0x80003460]<br>0x000000062AAAAAAB|- rs2_val == -134217729<br>                                                                                                                                                                       |[0x80000940]:KSLRA32_U t6, t5, t4<br> [0x80000944]:sd t6, 80(ra)<br>      |
|  39|[0x80003470]<br>0x20000000C0000000|- rs2_val == -67108865<br> - rs1_w0_val == 2147483648<br>                                                                                                                                         |[0x80000964]:KSLRA32_U t6, t5, t4<br> [0x80000968]:sd t6, 96(ra)<br>      |
|  40|[0x80003480]<br>0x0000000300000008|- rs2_val == -33554433<br> - rs1_w0_val == 16<br>                                                                                                                                                 |[0x80000984]:KSLRA32_U t6, t5, t4<br> [0x80000988]:sd t6, 112(ra)<br>     |
|  41|[0x80003490]<br>0x00020000FFFFFF00|- rs2_val == -16777217<br>                                                                                                                                                                        |[0x800009a8]:KSLRA32_U t6, t5, t4<br> [0x800009ac]:sd t6, 128(ra)<br>     |
|  42|[0x800034a0]<br>0xFFFFF00000000800|- rs2_val == -8388609<br> - rs1_w1_val == 4294959103<br>                                                                                                                                          |[0x800009d0]:KSLRA32_U t6, t5, t4<br> [0x800009d4]:sd t6, 144(ra)<br>     |
|  43|[0x800034b0]<br>0xF000000010000000|- rs2_val == -4194305<br> - rs1_w1_val == 3758096383<br> - rs1_w0_val == 536870912<br>                                                                                                            |[0x800009f4]:KSLRA32_U t6, t5, t4<br> [0x800009f8]:sd t6, 160(ra)<br>     |
|  44|[0x800034c0]<br>0xFFFFE00008000000|- rs2_val == -2097153<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 268435456<br>                                                                                                            |[0x80000a14]:KSLRA32_U t6, t5, t4<br> [0x80000a18]:sd t6, 176(ra)<br>     |
|  45|[0x800034d0]<br>0x0000000A00200000|- rs2_val == -1048577<br> - rs1_w0_val == 4194304<br>                                                                                                                                             |[0x80000a34]:KSLRA32_U t6, t5, t4<br> [0x80000a38]:sd t6, 192(ra)<br>     |
|  46|[0x800034e0]<br>0x00000008FFFF8000|- rs2_val == -524289<br>                                                                                                                                                                          |[0x80000a58]:KSLRA32_U t6, t5, t4<br> [0x80000a5c]:sd t6, 208(ra)<br>     |
|  47|[0x800034f0]<br>0xFFFFFF00FFFFE000|- rs2_val == -262145<br> - rs1_w1_val == 4294966783<br> - rs1_w0_val == 4294950911<br>                                                                                                            |[0x80000a7c]:KSLRA32_U t6, t5, t4<br> [0x80000a80]:sd t6, 224(ra)<br>     |
|  48|[0x80003500]<br>0x0004000000000001|- rs2_val == -131073<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 1<br>                                                                                                                         |[0x80000a9c]:KSLRA32_U t6, t5, t4<br> [0x80000aa0]:sd t6, 240(ra)<br>     |
|  49|[0x80003510]<br>0xFFFFFF800000000A|- rs2_val == -65537<br> - rs1_w1_val == 4294967039<br>                                                                                                                                            |[0x80000abc]:KSLRA32_U t6, t5, t4<br> [0x80000ac0]:sd t6, 256(ra)<br>     |
|  50|[0x80003520]<br>0xFE000000FFFFFFFF|- rs2_val == -32769<br> - rs1_w0_val == 4294967294<br>                                                                                                                                            |[0x80000adc]:KSLRA32_U t6, t5, t4<br> [0x80000ae0]:sd t6, 272(ra)<br>     |
|  51|[0x80003530]<br>0x00000400FFFC0000|- rs2_val == -16385<br> - rs1_w1_val == 2048<br>                                                                                                                                                  |[0x80000b00]:KSLRA32_U t6, t5, t4<br> [0x80000b04]:sd t6, 288(ra)<br>     |
|  52|[0x80003540]<br>0x10000000FFFFF800|- rs2_val == -8193<br> - rs1_w0_val == 4294963199<br>                                                                                                                                             |[0x80000b2c]:KSLRA32_U t6, t5, t4<br> [0x80000b30]:sd t6, 304(ra)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFCFFFFE000|- rs2_val == -4097<br>                                                                                                                                                                            |[0x80000b50]:KSLRA32_U t6, t5, t4<br> [0x80000b54]:sd t6, 320(ra)<br>     |
|  54|[0x80003560]<br>0x00000006FFFFFFFF|- rs2_val == -2049<br>                                                                                                                                                                            |[0x80000b70]:KSLRA32_U t6, t5, t4<br> [0x80000b74]:sd t6, 336(ra)<br>     |
|  55|[0x80003570]<br>0x0000000500000003|- rs2_val == -1025<br>                                                                                                                                                                            |[0x80000b8c]:KSLRA32_U t6, t5, t4<br> [0x80000b90]:sd t6, 352(ra)<br>     |
|  56|[0x80003580]<br>0xC0000000D5555555|- rs2_val == -513<br> - rs1_w0_val == 2863311530<br>                                                                                                                                              |[0x80000bb8]:KSLRA32_U t6, t5, t4<br> [0x80000bbc]:sd t6, 368(ra)<br>     |
|  57|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -257<br> - rs1_w1_val == 4294967293<br>                                                                                                                                              |[0x80000bd4]:KSLRA32_U t6, t5, t4<br> [0x80000bd8]:sd t6, 384(ra)<br>     |
|  58|[0x800035a0]<br>0x0010000000800000|- rs2_val == -129<br>                                                                                                                                                                             |[0x80000bf0]:KSLRA32_U t6, t5, t4<br> [0x80000bf4]:sd t6, 400(ra)<br>     |
|  59|[0x800035b0]<br>0x4000000008000000|- rs2_val == -65<br>                                                                                                                                                                              |[0x80000c10]:KSLRA32_U t6, t5, t4<br> [0x80000c14]:sd t6, 416(ra)<br>     |
|  60|[0x800035c0]<br>0x8000000080000000|- rs2_val == -33<br> - rs1_w1_val == 4294967231<br>                                                                                                                                               |[0x80000c30]:KSLRA32_U t6, t5, t4<br> [0x80000c34]:sd t6, 432(ra)<br>     |
|  61|[0x800035d0]<br>0xFFFFFF80FFFFFFFE|- rs2_val == -17<br> - rs1_w0_val == 4294705151<br>                                                                                                                                               |[0x80000c54]:KSLRA32_U t6, t5, t4<br> [0x80000c58]:sd t6, 448(ra)<br>     |
|  62|[0x800035e0]<br>0x00000000FFFFFFFF|- rs2_val == -9<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 4294967039<br>                                                                                                                 |[0x80000c68]:KSLRA32_U t6, t5, t4<br> [0x80000c6c]:sd t6, 464(ra)<br>     |
|  63|[0x800035f0]<br>0x0000040000000000|- rs2_val == -5<br>                                                                                                                                                                               |[0x80000c84]:KSLRA32_U t6, t5, t4<br> [0x80000c88]:sd t6, 480(ra)<br>     |
|  64|[0x80003600]<br>0x0000800000000001|- rs2_val == -3<br>                                                                                                                                                                               |[0x80000ca0]:KSLRA32_U t6, t5, t4<br> [0x80000ca4]:sd t6, 496(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFFFC000000000|- rs2_val == -2<br>                                                                                                                                                                               |[0x80000cbc]:KSLRA32_U t6, t5, t4<br> [0x80000cc0]:sd t6, 512(ra)<br>     |
|  66|[0x80003620]<br>0xFFDFFFFF00000001|- rs2_val == -9223372036854775808<br> - rs1_w1_val == 4292870143<br>                                                                                                                              |[0x80000ce0]:KSLRA32_U t6, t5, t4<br> [0x80000ce4]:sd t6, 528(ra)<br>     |
|  67|[0x80003630]<br>0xFFFBFFFF00000040|- rs2_val == 4096<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 64<br>                                                                                                                       |[0x80000d00]:KSLRA32_U t6, t5, t4<br> [0x80000d04]:sd t6, 544(ra)<br>     |
|  68|[0x80003640]<br>0x0000020000000010|- rs1_w0_val == 32<br>                                                                                                                                                                            |[0x80000d24]:KSLRA32_U t6, t5, t4<br> [0x80000d28]:sd t6, 560(ra)<br>     |
|  69|[0x80003650]<br>0x0010000000000008|- rs2_val == 70368744177664<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 8<br>                                                                                                                 |[0x80000d44]:KSLRA32_U t6, t5, t4<br> [0x80000d48]:sd t6, 576(ra)<br>     |
|  70|[0x80003660]<br>0x0000000200000002|- rs1_w1_val == 4<br> - rs1_w0_val == 4<br>                                                                                                                                                       |[0x80000d68]:KSLRA32_U t6, t5, t4<br> [0x80000d6c]:sd t6, 592(ra)<br>     |
|  71|[0x80003670]<br>0xFFF8000000000001|- rs2_val == -288230376151711745<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 2<br>                                                                                                         |[0x80000d90]:KSLRA32_U t6, t5, t4<br> [0x80000d94]:sd t6, 608(ra)<br>     |
|  72|[0x80003680]<br>0x0000000000000080|- rs1_w1_val == 4294836223<br> - rs2_val == -6148914691236517206<br>                                                                                                                              |[0x80000dc8]:KSLRA32_U t6, t5, t4<br> [0x80000dcc]:sd t6, 624(ra)<br>     |
|  73|[0x80003690]<br>0xFFFFFFFE00000011|- rs2_val == 4611686018427387904<br>                                                                                                                                                              |[0x80000de8]:KSLRA32_U t6, t5, t4<br> [0x80000dec]:sd t6, 640(ra)<br>     |
|  74|[0x800036a0]<br>0x00000011DFFFFFFF|- rs2_val == 2305843009213693952<br> - rs1_w0_val == 3758096383<br>                                                                                                                               |[0x80000e08]:KSLRA32_U t6, t5, t4<br> [0x80000e0c]:sd t6, 656(ra)<br>     |
|  75|[0x800036b0]<br>0xFFFFFFFD00000010|- rs2_val == 1152921504606846976<br>                                                                                                                                                              |[0x80000e28]:KSLRA32_U t6, t5, t4<br> [0x80000e2c]:sd t6, 672(ra)<br>     |
|  76|[0x800036c0]<br>0x00000800FFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                                                                               |[0x80000e4c]:KSLRA32_U t6, t5, t4<br> [0x80000e50]:sd t6, 688(ra)<br>     |
|  77|[0x800036d0]<br>0x0001000020000000|- rs2_val == 288230376151711744<br>                                                                                                                                                               |[0x80000e6c]:KSLRA32_U t6, t5, t4<br> [0x80000e70]:sd t6, 704(ra)<br>     |
|  78|[0x800036e0]<br>0x000200000000000C|- rs2_val == 144115188075855872<br>                                                                                                                                                               |[0x80000e8c]:KSLRA32_U t6, t5, t4<br> [0x80000e90]:sd t6, 720(ra)<br>     |
|  79|[0x800036f0]<br>0x00000002FDFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                |[0x80000eac]:KSLRA32_U t6, t5, t4<br> [0x80000eb0]:sd t6, 736(ra)<br>     |
|  80|[0x80003700]<br>0xFFFFFEFFFFFFFFBF|- rs2_val == 36028797018963968<br>                                                                                                                                                                |[0x80000ecc]:KSLRA32_U t6, t5, t4<br> [0x80000ed0]:sd t6, 752(ra)<br>     |
|  81|[0x80003710]<br>0x0800000020000000|- rs2_val == 18014398509481984<br> - rs1_w1_val == 134217728<br>                                                                                                                                  |[0x80000eec]:KSLRA32_U t6, t5, t4<br> [0x80000ef0]:sd t6, 768(ra)<br>     |
|  82|[0x80003720]<br>0xFFFFFFBFFFF7FFFF|- rs2_val == 9007199254740992<br>                                                                                                                                                                 |[0x80000f10]:KSLRA32_U t6, t5, t4<br> [0x80000f14]:sd t6, 784(ra)<br>     |
|  83|[0x80003730]<br>0x0040000000080000|- rs2_val == 4503599627370496<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 524288<br>                                                                                                          |[0x80000f34]:KSLRA32_U t6, t5, t4<br> [0x80000f38]:sd t6, 800(ra)<br>     |
|  84|[0x80003740]<br>0x0000001102000000|- rs2_val == 2251799813685248<br> - rs1_w0_val == 33554432<br>                                                                                                                                    |[0x80000f54]:KSLRA32_U t6, t5, t4<br> [0x80000f58]:sd t6, 816(ra)<br>     |
|  85|[0x80003750]<br>0x08000000FF7FFFFF|- rs2_val == 1125899906842624<br>                                                                                                                                                                 |[0x80000f7c]:KSLRA32_U t6, t5, t4<br> [0x80000f80]:sd t6, 832(ra)<br>     |
|  86|[0x80003760]<br>0xFFFFFFF7FFFBFFFF|- rs2_val == 562949953421312<br>                                                                                                                                                                  |[0x80000fa0]:KSLRA32_U t6, t5, t4<br> [0x80000fa4]:sd t6, 848(ra)<br>     |
|  87|[0x80003770]<br>0x000200000000000A|- rs2_val == 281474976710656<br>                                                                                                                                                                  |[0x80000fc0]:KSLRA32_U t6, t5, t4<br> [0x80000fc4]:sd t6, 864(ra)<br>     |
|  88|[0x80003780]<br>0xFDFFFFFFFFFFFBFF|- rs2_val == 140737488355328<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4294966271<br>                                                                                                    |[0x80000fe0]:KSLRA32_U t6, t5, t4<br> [0x80000fe4]:sd t6, 880(ra)<br>     |
|  89|[0x80003790]<br>0xFFFFFBFF0000000F|- rs2_val == 35184372088832<br> - rs1_w1_val == 4294966271<br>                                                                                                                                    |[0x80001000]:KSLRA32_U t6, t5, t4<br> [0x80001004]:sd t6, 896(ra)<br>     |
|  90|[0x800037a0]<br>0x0000001200000800|- rs2_val == 17592186044416<br> - rs1_w0_val == 2048<br>                                                                                                                                          |[0x80001024]:KSLRA32_U t6, t5, t4<br> [0x80001028]:sd t6, 912(ra)<br>     |
|  91|[0x800037b0]<br>0x00400000FFFFFFFB|- rs2_val == 8796093022208<br>                                                                                                                                                                    |[0x80001048]:KSLRA32_U t6, t5, t4<br> [0x8000104c]:sd t6, 928(ra)<br>     |
|  92|[0x800037c0]<br>0x020000007FFFFFFF|- rs2_val == 4398046511104<br> - rs1_w0_val == 2147483647<br>                                                                                                                                     |[0x8000106c]:KSLRA32_U t6, t5, t4<br> [0x80001070]:sd t6, 944(ra)<br>     |
|  93|[0x800037d0]<br>0xFFFFFDFFFFFFBFFF|- rs2_val == 2199023255552<br>                                                                                                                                                                    |[0x80001090]:KSLRA32_U t6, t5, t4<br> [0x80001094]:sd t6, 960(ra)<br>     |
|  94|[0x800037e0]<br>0xDFFFFFFF00000000|- rs2_val == 1099511627776<br>                                                                                                                                                                    |[0x800010b0]:KSLRA32_U t6, t5, t4<br> [0x800010b4]:sd t6, 976(ra)<br>     |
|  95|[0x800037f0]<br>0x0000200000000800|- rs2_val == 549755813888<br> - rs1_w1_val == 8192<br>                                                                                                                                            |[0x800010d8]:KSLRA32_U t6, t5, t4<br> [0x800010dc]:sd t6, 992(ra)<br>     |
|  96|[0x80003800]<br>0x00040000FF7FFFFF|- rs2_val == 274877906944<br>                                                                                                                                                                     |[0x800010fc]:KSLRA32_U t6, t5, t4<br> [0x80001100]:sd t6, 1008(ra)<br>    |
|  97|[0x80003810]<br>0xFDFFFFFF04000000|- rs2_val == 137438953472<br> - rs1_w0_val == 67108864<br>                                                                                                                                        |[0x80001120]:KSLRA32_U t6, t5, t4<br> [0x80001124]:sd t6, 1024(ra)<br>    |
|  98|[0x80003820]<br>0x2000000000020000|- rs2_val == 68719476736<br> - rs1_w0_val == 131072<br>                                                                                                                                           |[0x80001144]:KSLRA32_U t6, t5, t4<br> [0x80001148]:sd t6, 1040(ra)<br>    |
|  99|[0x80003830]<br>0x0020000000000400|- rs2_val == 34359738368<br> - rs1_w0_val == 1024<br>                                                                                                                                             |[0x80001164]:KSLRA32_U t6, t5, t4<br> [0x80001168]:sd t6, 1056(ra)<br>    |
| 100|[0x80003840]<br>0x0000800000000080|- rs2_val == 17179869184<br> - rs1_w0_val == 128<br>                                                                                                                                              |[0x80001184]:KSLRA32_U t6, t5, t4<br> [0x80001188]:sd t6, 1072(ra)<br>    |
| 101|[0x80003850]<br>0xFFFFFFFE00000013|- rs2_val == 8589934592<br>                                                                                                                                                                       |[0x800011a4]:KSLRA32_U t6, t5, t4<br> [0x800011a8]:sd t6, 1088(ra)<br>    |
| 102|[0x80003860]<br>0x000000037FFFFFFF|- rs2_val == 4294967296<br>                                                                                                                                                                       |[0x800011c4]:KSLRA32_U t6, t5, t4<br> [0x800011c8]:sd t6, 1104(ra)<br>    |
| 103|[0x80003870]<br>0x0800000000000000|- rs2_val == 2147483648<br>                                                                                                                                                                       |[0x800011e0]:KSLRA32_U t6, t5, t4<br> [0x800011e4]:sd t6, 1120(ra)<br>    |
| 104|[0x80003880]<br>0x0000002000000011|- rs2_val == 1073741824<br>                                                                                                                                                                       |[0x800011fc]:KSLRA32_U t6, t5, t4<br> [0x80001200]:sd t6, 1136(ra)<br>    |
| 105|[0x80003890]<br>0x0000000100000800|- rs2_val == 536870912<br> - rs1_w1_val == 1<br>                                                                                                                                                  |[0x8000121c]:KSLRA32_U t6, t5, t4<br> [0x80001220]:sd t6, 1152(ra)<br>    |
| 106|[0x800038a0]<br>0x0000200000000005|- rs2_val == 268435456<br>                                                                                                                                                                        |[0x80001238]:KSLRA32_U t6, t5, t4<br> [0x8000123c]:sd t6, 1168(ra)<br>    |
| 107|[0x800038b0]<br>0xFFFFDFFF04000000|- rs2_val == 134217728<br>                                                                                                                                                                        |[0x80001254]:KSLRA32_U t6, t5, t4<br> [0x80001258]:sd t6, 1184(ra)<br>    |
| 108|[0x800038c0]<br>0x0000001E00000002|- rs2_val == 1<br>                                                                                                                                                                                |[0x80001270]:KSLRA32_U t6, t5, t4<br> [0x80001274]:sd t6, 1200(ra)<br>    |
| 109|[0x800038d0]<br>0xAAAAAAAAFFFFFFFE|- rs1_w1_val == 2863311530<br>                                                                                                                                                                    |[0x80001294]:KSLRA32_U t6, t5, t4<br> [0x80001298]:sd t6, 1216(ra)<br>    |
| 110|[0x800038f0]<br>0xE000000004000000|- rs1_w1_val == 3221225471<br> - rs1_w0_val == 134217728<br>                                                                                                                                      |[0x800012e0]:KSLRA32_U t6, t5, t4<br> [0x800012e4]:sd t6, 1248(ra)<br>    |
| 111|[0x80003900]<br>0xF800000000000010|- rs1_w1_val == 4026531839<br>                                                                                                                                                                    |[0x80001308]:KSLRA32_U t6, t5, t4<br> [0x8000130c]:sd t6, 1264(ra)<br>    |
| 112|[0x80003910]<br>0xF7FFFFFF00020000|- rs1_w1_val == 4160749567<br>                                                                                                                                                                    |[0x80001330]:KSLRA32_U t6, t5, t4<br> [0x80001334]:sd t6, 1280(ra)<br>    |
| 113|[0x80003920]<br>0xFFC0000000000400|- rs1_w1_val == 4286578687<br>                                                                                                                                                                    |[0x80001360]:KSLRA32_U t6, t5, t4<br> [0x80001364]:sd t6, 1296(ra)<br>    |
| 114|[0x80003930]<br>0xFFE0000000200000|- rs1_w1_val == 4290772991<br>                                                                                                                                                                    |[0x80001388]:KSLRA32_U t6, t5, t4<br> [0x8000138c]:sd t6, 1312(ra)<br>    |
| 115|[0x80003940]<br>0xFFF7FFFF00200000|- rs2_val == 1024<br> - rs1_w1_val == 4294443007<br>                                                                                                                                              |[0x800013a4]:KSLRA32_U t6, t5, t4<br> [0x800013a8]:sd t6, 1328(ra)<br>    |
| 116|[0x80003950]<br>0xFFFFF800FFFFFC00|- rs1_w1_val == 4294901759<br> - rs1_w0_val == 4294934527<br>                                                                                                                                     |[0x800013c8]:KSLRA32_U t6, t5, t4<br> [0x800013cc]:sd t6, 1344(ra)<br>    |
| 117|[0x80003960]<br>0xFFFFC000C0000000|- rs1_w1_val == 4294934527<br>                                                                                                                                                                    |[0x800013e8]:KSLRA32_U t6, t5, t4<br> [0x800013ec]:sd t6, 1360(ra)<br>    |
| 118|[0x80003970]<br>0xFFFFF800FFFFF800|- rs1_w1_val == 4294963199<br>                                                                                                                                                                    |[0x80001410]:KSLRA32_U t6, t5, t4<br> [0x80001414]:sd t6, 1376(ra)<br>    |
| 119|[0x80003980]<br>0xFFFFFFC000000000|- rs1_w1_val == 4294967167<br>                                                                                                                                                                    |[0x80001430]:KSLRA32_U t6, t5, t4<br> [0x80001434]:sd t6, 1392(ra)<br>    |
| 120|[0x80003990]<br>0xFFFFFFF8FFFF8000|- rs1_w1_val == 4294967279<br>                                                                                                                                                                    |[0x80001454]:KSLRA32_U t6, t5, t4<br> [0x80001458]:sd t6, 1408(ra)<br>    |
| 121|[0x800039a0]<br>0xFFFFFFFEFE000000|- rs1_w1_val == 4294967291<br>                                                                                                                                                                    |[0x80001474]:KSLRA32_U t6, t5, t4<br> [0x80001478]:sd t6, 1424(ra)<br>    |
| 122|[0x800039b0]<br>0x1000000000100000|- rs1_w1_val == 268435456<br>                                                                                                                                                                     |[0x80001498]:KSLRA32_U t6, t5, t4<br> [0x8000149c]:sd t6, 1440(ra)<br>    |
| 123|[0x800039c0]<br>0x0000200000002000|- rs1_w1_val == 16384<br> - rs1_w0_val == 16384<br>                                                                                                                                               |[0x800014c0]:KSLRA32_U t6, t5, t4<br> [0x800014c4]:sd t6, 1456(ra)<br>    |
| 124|[0x800039d0]<br>0x00040000FFFFEE00|- rs1_w1_val == 512<br>                                                                                                                                                                           |[0x800014dc]:KSLRA32_U t6, t5, t4<br> [0x800014e0]:sd t6, 1472(ra)<br>    |
| 125|[0x800039e0]<br>0x0000008000000200|- rs1_w1_val == 256<br>                                                                                                                                                                           |[0x800014fc]:KSLRA32_U t6, t5, t4<br> [0x80001500]:sd t6, 1488(ra)<br>    |
| 126|[0x800039f0]<br>0x0000004000000400|- rs1_w1_val == 128<br>                                                                                                                                                                           |[0x80001524]:KSLRA32_U t6, t5, t4<br> [0x80001528]:sd t6, 1504(ra)<br>    |
| 127|[0x80003a00]<br>0x0000002000001000|- rs1_w1_val == 64<br> - rs1_w0_val == 8192<br>                                                                                                                                                   |[0x80001544]:KSLRA32_U t6, t5, t4<br> [0x80001548]:sd t6, 1520(ra)<br>    |
| 128|[0x80003a10]<br>0x00000000FFFFFFF0|- rs1_w1_val == 8<br>                                                                                                                                                                             |[0x8000157c]:KSLRA32_U t6, t5, t4<br> [0x80001580]:sd t6, 1536(ra)<br>    |
| 129|[0x80003a20]<br>0x08000000E0000000|- rs1_w0_val == 3221225471<br>                                                                                                                                                                    |[0x800015a4]:KSLRA32_U t6, t5, t4<br> [0x800015a8]:sd t6, 1552(ra)<br>    |
| 130|[0x80003a30]<br>0xC0000000FC000000|- rs1_w0_val == 4160749567<br>                                                                                                                                                                    |[0x800015cc]:KSLRA32_U t6, t5, t4<br> [0x800015d0]:sd t6, 1568(ra)<br>    |
| 131|[0x80003a40]<br>0x00000007FEFFFFFF|- rs2_val == 256<br> - rs1_w0_val == 4278190079<br>                                                                                                                                               |[0x800015e8]:KSLRA32_U t6, t5, t4<br> [0x800015ec]:sd t6, 1584(ra)<br>    |
| 132|[0x80003a50]<br>0x00010000FFDFFFFF|- rs1_w0_val == 4292870143<br>                                                                                                                                                                    |[0x8000160c]:KSLRA32_U t6, t5, t4<br> [0x80001610]:sd t6, 1600(ra)<br>    |
| 133|[0x80003a60]<br>0xFFFFFFEFFFEFFFFF|- rs1_w0_val == 4293918719<br>                                                                                                                                                                    |[0x80001630]:KSLRA32_U t6, t5, t4<br> [0x80001634]:sd t6, 1616(ra)<br>    |
| 134|[0x80003a70]<br>0x2AAAAAABFFFF0000|- rs1_w0_val == 4294836223<br>                                                                                                                                                                    |[0x8000165c]:KSLRA32_U t6, t5, t4<br> [0x80001660]:sd t6, 1632(ra)<br>    |
| 135|[0x80003a80]<br>0xFFFF800000000080|- rs1_w0_val == 256<br>                                                                                                                                                                           |[0x80001684]:KSLRA32_U t6, t5, t4<br> [0x80001688]:sd t6, 1648(ra)<br>    |
| 136|[0x80003a90]<br>0xDFFFFFFFFFFFDFFF|- rs1_w0_val == 4294959103<br>                                                                                                                                                                    |[0x800016ac]:KSLRA32_U t6, t5, t4<br> [0x800016b0]:sd t6, 1664(ra)<br>    |
| 137|[0x80003aa0]<br>0x00008000FFFFFC00|- rs1_w0_val == 4294965247<br>                                                                                                                                                                    |[0x800016dc]:KSLRA32_U t6, t5, t4<br> [0x800016e0]:sd t6, 1680(ra)<br>    |
| 138|[0x80003ab0]<br>0xFFFDFFFFFFFFFF7F|- rs1_w0_val == 4294967167<br>                                                                                                                                                                    |[0x800016fc]:KSLRA32_U t6, t5, t4<br> [0x80001700]:sd t6, 1696(ra)<br>    |
| 139|[0x80003ac0]<br>0xFFFF7FFF00800000|- rs2_val == 67108864<br>                                                                                                                                                                         |[0x80001718]:KSLRA32_U t6, t5, t4<br> [0x8000171c]:sd t6, 1712(ra)<br>    |
| 140|[0x80003ad0]<br>0xFFFFFFDF0000000E|- rs2_val == 33554432<br>                                                                                                                                                                         |[0x80001734]:KSLRA32_U t6, t5, t4<br> [0x80001738]:sd t6, 1728(ra)<br>    |
| 141|[0x80003ae0]<br>0xFFFFFFF7EFFFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                         |[0x80001750]:KSLRA32_U t6, t5, t4<br> [0x80001754]:sd t6, 1744(ra)<br>    |
| 142|[0x80003af0]<br>0x0002000001000000|- rs2_val == 8388608<br>                                                                                                                                                                          |[0x8000176c]:KSLRA32_U t6, t5, t4<br> [0x80001770]:sd t6, 1760(ra)<br>    |
| 143|[0x80003b00]<br>0xEFFFFFFF0000000B|- rs2_val == 4194304<br>                                                                                                                                                                          |[0x8000178c]:KSLRA32_U t6, t5, t4<br> [0x80001790]:sd t6, 1776(ra)<br>    |
| 144|[0x80003b10]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 2097152<br>                                                                                                                                                                          |[0x800017a0]:KSLRA32_U t6, t5, t4<br> [0x800017a4]:sd t6, 1792(ra)<br>    |
| 145|[0x80003b20]<br>0x0040000000000010|- rs2_val == 1048576<br>                                                                                                                                                                          |[0x800017bc]:KSLRA32_U t6, t5, t4<br> [0x800017c0]:sd t6, 1808(ra)<br>    |
| 146|[0x80003b30]<br>0xFFFEFFFF0000000B|- rs2_val == 524288<br>                                                                                                                                                                           |[0x800017dc]:KSLRA32_U t6, t5, t4<br> [0x800017e0]:sd t6, 1824(ra)<br>    |
| 147|[0x80003b40]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 262144<br>                                                                                                                                                                           |[0x800017f4]:KSLRA32_U t6, t5, t4<br> [0x800017f8]:sd t6, 1840(ra)<br>    |
| 148|[0x80003b50]<br>0xEFFFFFFF00020000|- rs2_val == 131072<br>                                                                                                                                                                           |[0x80001818]:KSLRA32_U t6, t5, t4<br> [0x8000181c]:sd t6, 1856(ra)<br>    |
| 149|[0x80003b60]<br>0xFFFFFFFB00000000|- rs2_val == 65536<br>                                                                                                                                                                            |[0x80001830]:KSLRA32_U t6, t5, t4<br> [0x80001834]:sd t6, 1872(ra)<br>    |
| 150|[0x80003b70]<br>0xF7FFFFFFFFFFFBFF|- rs2_val == 32768<br>                                                                                                                                                                            |[0x8000184c]:KSLRA32_U t6, t5, t4<br> [0x80001850]:sd t6, 1888(ra)<br>    |
| 151|[0x80003b80]<br>0xFFFFFDFF00008000|- rs2_val == 16384<br>                                                                                                                                                                            |[0x80001868]:KSLRA32_U t6, t5, t4<br> [0x8000186c]:sd t6, 1904(ra)<br>    |
| 152|[0x80003b90]<br>0xFFFBFFFFFDFFFFFF|- rs2_val == 8192<br>                                                                                                                                                                             |[0x80001888]:KSLRA32_U t6, t5, t4<br> [0x8000188c]:sd t6, 1920(ra)<br>    |
| 153|[0x80003ba0]<br>0xFFFFFFFF00040000|- rs1_w0_val == 262144<br>                                                                                                                                                                        |[0x800018a8]:KSLRA32_U t6, t5, t4<br> [0x800018ac]:sd t6, 1936(ra)<br>    |
| 154|[0x80003bb0]<br>0x0000040000000004|- rs2_val == 2048<br>                                                                                                                                                                             |[0x800018c8]:KSLRA32_U t6, t5, t4<br> [0x800018cc]:sd t6, 1952(ra)<br>    |
| 155|[0x80003bc0]<br>0xFF80000000008000|- rs1_w0_val == 65536<br>                                                                                                                                                                         |[0x800018f4]:KSLRA32_U t6, t5, t4<br> [0x800018f8]:sd t6, 1968(ra)<br>    |
| 156|[0x80003bd0]<br>0x00400000FFFFFFFE|- rs2_val == 512<br>                                                                                                                                                                              |[0x80001914]:KSLRA32_U t6, t5, t4<br> [0x80001918]:sd t6, 1984(ra)<br>    |
| 157|[0x80003be0]<br>0xFFFFFFFBFFFFFFDF|- rs2_val == 128<br>                                                                                                                                                                              |[0x80001930]:KSLRA32_U t6, t5, t4<br> [0x80001934]:sd t6, 2000(ra)<br>    |
| 158|[0x80003bf0]<br>0x00000012FFFFFFFF|- rs2_val == 64<br>                                                                                                                                                                               |[0x8000194c]:KSLRA32_U t6, t5, t4<br> [0x80001950]:sd t6, 2016(ra)<br>    |
| 159|[0x80003c10]<br>0xEFFF0000000D0000|- rs2_val == 16<br>                                                                                                                                                                               |[0x80001998]:KSLRA32_U t6, t5, t4<br> [0x8000199c]:sd t6, 0(ra)<br>       |
| 160|[0x80003c20]<br>0x0000200000000600|- rs2_val == 8<br>                                                                                                                                                                                |[0x800019bc]:KSLRA32_U t6, t5, t4<br> [0x800019c0]:sd t6, 0(ra)<br>       |
| 161|[0x80003c30]<br>0x00000200000000B0|- rs2_val == 4<br>                                                                                                                                                                                |[0x800019d8]:KSLRA32_U t6, t5, t4<br> [0x800019dc]:sd t6, 16(ra)<br>      |
| 162|[0x80003c40]<br>0x0000001CEFFFFFFC|- rs2_val == 2<br>                                                                                                                                                                                |[0x800019f4]:KSLRA32_U t6, t5, t4<br> [0x800019f8]:sd t6, 32(ra)<br>      |
