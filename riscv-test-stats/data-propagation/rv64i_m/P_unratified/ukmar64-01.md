
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b70')]      |
| SIG_REGION                | [('0x80003210', '0x80003fe0', '442 dwords')]      |
| COV_LABELS                | ukmar64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukmar64-01.S    |
| Total Number of coverpoints| 367     |
| Total Coverpoints Hit     | 361      |
| Total Signature Updates   | 294      |
| STAT1                     | 142      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 147     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012e0]:UKMAR64 t6, t5, t4
      [0x800012e4]:sd t6, 1656(ra)
 -- Signature Address: 0x80003ae0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 4294836223
      - rs2_w0_val == 0
      - rs1_w1_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001490]:UKMAR64 t6, t5, t4
      [0x80001494]:sd t6, 1896(ra)
 -- Signature Address: 0x80003bd0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 1048576
      - rs2_w0_val == 2097152
      - rs1_w1_val == 4294965247
      - rs1_w0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001854]:UKMAR64 t6, t5, t4
      [0x80001858]:sd t6, 360(ra)
 -- Signature Address: 0x80003de0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 64
      - rs2_w0_val == 512
      - rs1_w1_val == 4286578687
      - rs1_w0_val == 4294443007




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b14]:UKMAR64 t6, t5, t4
      [0x80001b18]:sd t6, 792(ra)
 -- Signature Address: 0x80003f90 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 4294965247
      - rs2_w0_val == 2147483648
      - rs1_w1_val == 3758096383




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b3c]:UKMAR64 t6, t5, t4
      [0x80001b40]:sd t6, 816(ra)
 -- Signature Address: 0x80003fa8 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4
      - rs2_w0_val == 4294443007
      - rs1_w1_val == 4






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukmar64', 'rs1 : x5', 'rs2 : x5', 'rd : x24', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800003bc]:UKMAR64 s8, t0, t0
	-[0x800003c0]:sd s8, 0(gp)
Current Store : [0x800003c4] : sd t0, 8(gp) -- Store: [0x80003218]:0xFFFFF7FF80000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x6', 'rs1 == rs2 == rd', 'rs2_w1_val == 4', 'rs2_w0_val == 4294443007', 'rs1_w1_val == 4', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800003e4]:UKMAR64 t1, t1, t1
	-[0x800003e8]:sd t1, 24(gp)
Current Store : [0x800003ec] : sd t1, 32(gp) -- Store: [0x80003230]:0xFFF0004300080010




Last Coverpoint : ['rs1 : x17', 'rs2 : x26', 'rd : x20', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 2097152', 'rs2_w0_val == 4', 'rs1_w1_val == 4293918719', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000040c]:UKMAR64 s4, a7, s10
	-[0x80000410]:sd s4, 48(gp)
Current Store : [0x80000414] : sd a7, 56(gp) -- Store: [0x80003248]:0xFFEFFFFF00000004




Last Coverpoint : ['rs1 : x14', 'rs2 : x13', 'rd : x14', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs1_w1_val == 3221225471', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000043c]:UKMAR64 a4, a4, a3
	-[0x80000440]:sd a4, 72(gp)
Current Store : [0x80000444] : sd a4, 80(gp) -- Store: [0x80003260]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 4294967039', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000468]:UKMAR64 a2, a5, a2
	-[0x8000046c]:sd a2, 96(gp)
Current Store : [0x80000470] : sd a5, 104(gp) -- Store: [0x80003278]:0xFFFFFEFFFFFBFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x1', 'rd : x18', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 65536', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000494]:UKMAR64 s2, a1, ra
	-[0x80000498]:sd s2, 120(gp)
Current Store : [0x8000049c] : sd a1, 128(gp) -- Store: [0x80003290]:0x0000000C00000040




Last Coverpoint : ['rs1 : x19', 'rs2 : x29', 'rd : x26', 'rs2_w1_val == 3221225471', 'rs2_w0_val == 1024', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800004bc]:UKMAR64 s10, s3, t4
	-[0x800004c0]:sd s10, 144(gp)
Current Store : [0x800004c4] : sd s3, 152(gp) -- Store: [0x800032a8]:0x0000001000000009




Last Coverpoint : ['rs1 : x24', 'rs2 : x27', 'rd : x22', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 131072', 'rs1_w1_val == 536870912', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800004ec]:UKMAR64 s6, s8, s11
	-[0x800004f0]:sd s6, 168(gp)
Current Store : [0x800004f4] : sd s8, 176(gp) -- Store: [0x800032c0]:0x20000000FFFFFFFE




Last Coverpoint : ['rs1 : x27', 'rs2 : x7', 'rd : x28', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 2097152', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000514]:UKMAR64 t3, s11, t2
	-[0x80000518]:sd t3, 192(gp)
Current Store : [0x8000051c] : sd s11, 200(gp) -- Store: [0x800032d8]:0x000000037FFFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x23', 'rd : x4', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 4294967263', 'rs1_w1_val == 131072', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x8000053c]:UKMAR64 tp, s4, s7
	-[0x80000540]:sd tp, 216(gp)
Current Store : [0x80000544] : sd s4, 224(gp) -- Store: [0x800032f0]:0x00020000F7FFFFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x2', 'rs2_w1_val == 4227858431', 'rs1_w1_val == 4194304', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000564]:UKMAR64 sp, s1, a4
	-[0x80000568]:sd sp, 240(gp)
Current Store : [0x8000056c] : sd s1, 248(gp) -- Store: [0x80003308]:0x0040000004000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x10', 'rs2_w1_val == 4261412863', 'rs1_w1_val == 67108864', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000590]:UKMAR64 a0, s5, a1
	-[0x80000594]:sd a0, 264(gp)
Current Store : [0x80000598] : sd s5, 272(gp) -- Store: [0x80003320]:0x0400000000800000




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x8', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800005c0]:UKMAR64 fp, t5, s4
	-[0x800005c4]:sd fp, 288(gp)
Current Store : [0x800005c8] : sd t5, 296(gp) -- Store: [0x80003338]:0xFEFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x30', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 8192', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000600]:UKMAR64 t5, s2, t6
	-[0x80000604]:sd t5, 0(a1)
Current Store : [0x80000608] : sd s2, 8(a1) -- Store: [0x80003350]:0xFFFDFFFF00000800




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x16', 'rs2_w1_val == 4290772991', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x80000630]:UKMAR64 a6, s7, tp
	-[0x80000634]:sd a6, 24(a1)
Current Store : [0x80000638] : sd s7, 32(a1) -- Store: [0x80003368]:0xFBFFFFFF00000011




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4026531839', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80000658]:UKMAR64 fp, a6, sp
	-[0x8000065c]:sd fp, 48(a1)
Current Store : [0x80000660] : sd a6, 56(a1) -- Store: [0x80003380]:0xFFFFFFFE0000000B




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 4294967287', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000680]:UKMAR64 t1, ra, zero
	-[0x80000684]:sd t1, 72(a1)
Current Store : [0x80000688] : sd ra, 80(a1) -- Store: [0x80003398]:0xFFFFFFF7FFFDFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 16777216', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800006ac]:UKMAR64 t4, a3, s1
	-[0x800006b0]:sd t4, 96(a1)
Current Store : [0x800006b4] : sd a3, 104(a1) -- Store: [0x800033b0]:0x01000000FFFFFBFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x30', 'rs2_w1_val == 4294705151', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800006d4]:UKMAR64 s9, t2, t5
	-[0x800006d8]:sd s9, 120(a1)
Current Store : [0x800006dc] : sd t2, 128(a1) -- Store: [0x800033c8]:0x0000000100000004




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rs2_w1_val == 4294836223', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000700]:UKMAR64 s5, t6, gp
	-[0x80000704]:sd s5, 144(a1)
Current Store : [0x80000708] : sd t6, 152(a1) -- Store: [0x800033e0]:0x00000001FFFFFF7F




Last Coverpoint : ['rs1 : x28', 'rs2 : x21', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000072c]:UKMAR64 t0, t3, s5
	-[0x80000730]:sd t0, 168(a1)
Current Store : [0x80000734] : sd t3, 176(a1) -- Store: [0x800033f8]:0x0040000000400000




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 8388608', 'rs1_w1_val == 33554432', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000754]:UKMAR64 a7, tp, t3
	-[0x80000758]:sd a7, 192(a1)
Current Store : [0x8000075c] : sd tp, 200(a1) -- Store: [0x80003410]:0x02000000DFFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x17', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 4160749567', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000077c]:UKMAR64 t2, s10, a7
	-[0x80000780]:sd t2, 216(a1)
Current Store : [0x80000784] : sd s10, 224(a1) -- Store: [0x80003428]:0x0000008000000013




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rs2_w1_val == 4294959103']
Last Code Sequence : 
	-[0x800007a4]:UKMAR64 a0, a2, a5
	-[0x800007a8]:sd a0, 240(a1)
Current Store : [0x800007ac] : sd a2, 248(a1) -- Store: [0x80003440]:0x040000000000000F




Last Coverpoint : ['rs1 : x22', 'rs2 : x19', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 4294967231', 'rs1_w1_val == 65536', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800007c8]:UKMAR64 a4, s6, s3
	-[0x800007cc]:sd a4, 264(a1)
Current Store : [0x800007d0] : sd s6, 272(a1) -- Store: [0x80003458]:0x0001000000080000




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 256', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800007f8]:UKMAR64 a4, a0, a6
	-[0x800007fc]:sd a4, 0(ra)
Current Store : [0x80000800] : sd a0, 8(ra) -- Store: [0x80003470]:0xFFFFFFFEFFEFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rs2_w1_val == 4294966783']
Last Code Sequence : 
	-[0x8000081c]:UKMAR64 gp, t4, s6
	-[0x80000820]:sd gp, 24(ra)
Current Store : [0x80000824] : sd t4, 32(ra) -- Store: [0x80003488]:0x0001000000000003




Last Coverpoint : ['rs1 : x2', 'rs2 : x10', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 128', 'rs1_w1_val == 4292870143', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000848]:UKMAR64 a2, sp, a0
	-[0x8000084c]:sd a2, 48(ra)
Current Store : [0x80000850] : sd sp, 56(ra) -- Store: [0x800034a0]:0xFFDFFFFFFFFFEFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x25', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 4294965247', 'rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x80000870]:UKMAR64 t1, fp, s9
	-[0x80000874]:sd t1, 72(ra)
Current Store : [0x80000878] : sd fp, 80(ra) -- Store: [0x800034b8]:0xFFFFFFBF00000009




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rs2_w1_val == 4294967231']
Last Code Sequence : 
	-[0x800008a4]:UKMAR64 s11, s9, s2
	-[0x800008a8]:sd s11, 96(ra)
Current Store : [0x800008ac] : sd s9, 104(ra) -- Store: [0x800034d0]:0x02000000FFFDFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rs1_w0_val == 0', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 4294705151', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800008cc]:UKMAR64 s10, zero, fp
	-[0x800008d0]:sd s10, 120(ra)
Current Store : [0x800008d4] : sd zero, 128(ra) -- Store: [0x800034e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 4294967287', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800008f4]:UKMAR64 t0, gp, s8
	-[0x800008f8]:sd t0, 144(ra)
Current Store : [0x800008fc] : sd gp, 152(ra) -- Store: [0x80003500]:0xFFFDFFFF00000080




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000914]:UKMAR64 t6, t5, t4
	-[0x80000918]:sd t6, 168(ra)
Current Store : [0x8000091c] : sd t5, 176(ra) -- Store: [0x80003518]:0x0000000520000000




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000938]:UKMAR64 t6, t5, t4
	-[0x8000093c]:sd t6, 192(ra)
Current Store : [0x80000940] : sd t5, 200(ra) -- Store: [0x80003530]:0x0000000400000005




Last Coverpoint : ['rs2_w1_val == 4294967293']
Last Code Sequence : 
	-[0x8000095c]:UKMAR64 t6, t5, t4
	-[0x80000960]:sd t6, 216(ra)
Current Store : [0x80000964] : sd t5, 224(ra) -- Store: [0x80003548]:0xFFFFFFFEDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80000984]:UKMAR64 t6, t5, t4
	-[0x80000988]:sd t6, 240(ra)
Current Store : [0x8000098c] : sd t5, 248(ra) -- Store: [0x80003560]:0x00020000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800009ac]:UKMAR64 t6, t5, t4
	-[0x800009b0]:sd t6, 264(ra)
Current Store : [0x800009b4] : sd t5, 272(ra) -- Store: [0x80003578]:0x0000000100000010




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 536870912', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800009d4]:UKMAR64 t6, t5, t4
	-[0x800009d8]:sd t6, 288(ra)
Current Store : [0x800009dc] : sd t5, 296(ra) -- Store: [0x80003590]:0xFFFFFF7F00020000




Last Coverpoint : ['rs2_w1_val == 536870912']
Last Code Sequence : 
	-[0x800009f8]:UKMAR64 t6, t5, t4
	-[0x800009fc]:sd t6, 312(ra)
Current Store : [0x80000a00] : sd t5, 320(ra) -- Store: [0x800035a8]:0x0040000080000000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 16384', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000a20]:UKMAR64 t6, t5, t4
	-[0x80000a24]:sd t6, 336(ra)
Current Store : [0x80000a28] : sd t5, 344(ra) -- Store: [0x800035c0]:0x0000000A00000020




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000a44]:UKMAR64 t6, t5, t4
	-[0x80000a48]:sd t6, 360(ra)
Current Store : [0x80000a4c] : sd t5, 368(ra) -- Store: [0x800035d8]:0xFFFFFEFFFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000a70]:UKMAR64 t6, t5, t4
	-[0x80000a74]:sd t6, 384(ra)
Current Store : [0x80000a78] : sd t5, 392(ra) -- Store: [0x800035f0]:0x0000001080000000




Last Coverpoint : ['rs2_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000a94]:UKMAR64 t6, t5, t4
	-[0x80000a98]:sd t6, 408(ra)
Current Store : [0x80000a9c] : sd t5, 416(ra) -- Store: [0x80003608]:0x0000000500000012




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 2863311530']
Last Code Sequence : 
	-[0x80000abc]:UKMAR64 t6, t5, t4
	-[0x80000ac0]:sd t6, 432(ra)
Current Store : [0x80000ac4] : sd t5, 440(ra) -- Store: [0x80003620]:0xAAAAAAAA00000011




Last Coverpoint : ['rs2_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000ad8]:UKMAR64 t6, t5, t4
	-[0x80000adc]:sd t6, 456(ra)
Current Store : [0x80000ae0] : sd t5, 464(ra) -- Store: [0x80003638]:0x0000000000000011




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000b00]:UKMAR64 t6, t5, t4
	-[0x80000b04]:sd t6, 480(ra)
Current Store : [0x80000b08] : sd t5, 488(ra) -- Store: [0x80003650]:0x00000080FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000b2c]:UKMAR64 t6, t5, t4
	-[0x80000b30]:sd t6, 504(ra)
Current Store : [0x80000b34] : sd t5, 512(ra) -- Store: [0x80003668]:0x0000000C04000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000b54]:UKMAR64 t6, t5, t4
	-[0x80000b58]:sd t6, 528(ra)
Current Store : [0x80000b5c] : sd t5, 536(ra) -- Store: [0x80003680]:0x00000004FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000b8c]:UKMAR64 t6, t5, t4
	-[0x80000b90]:sd t6, 552(ra)
Current Store : [0x80000b94] : sd t5, 560(ra) -- Store: [0x80003698]:0x20000000EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000bb4]:UKMAR64 t6, t5, t4
	-[0x80000bb8]:sd t6, 576(ra)
Current Store : [0x80000bbc] : sd t5, 584(ra) -- Store: [0x800036b0]:0x04000000FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 2048', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80000be8]:UKMAR64 t6, t5, t4
	-[0x80000bec]:sd t6, 600(ra)
Current Store : [0x80000bf0] : sd t5, 608(ra) -- Store: [0x800036c8]:0xDFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 4294836223', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000c10]:UKMAR64 t6, t5, t4
	-[0x80000c14]:sd t6, 624(ra)
Current Store : [0x80000c18] : sd t5, 632(ra) -- Store: [0x800036e0]:0x0000000CFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 64', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000c34]:UKMAR64 t6, t5, t4
	-[0x80000c38]:sd t6, 648(ra)
Current Store : [0x80000c3c] : sd t5, 656(ra) -- Store: [0x800036f8]:0x4000000000000040




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000c54]:UKMAR64 t6, t5, t4
	-[0x80000c58]:sd t6, 672(ra)
Current Store : [0x80000c5c] : sd t5, 680(ra) -- Store: [0x80003710]:0x0000000004000000




Last Coverpoint : ['rs1_w1_val == 4294967295', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c88]:UKMAR64 t6, t5, t4
	-[0x80000c8c]:sd t6, 696(ra)
Current Store : [0x80000c90] : sd t5, 704(ra) -- Store: [0x80003728]:0xFFFFFFFF00010000




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 32', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cb4]:UKMAR64 t6, t5, t4
	-[0x80000cb8]:sd t6, 720(ra)
Current Store : [0x80000cbc] : sd t5, 728(ra) -- Store: [0x80003740]:0xBFFFFFFF00008000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cdc]:UKMAR64 t6, t5, t4
	-[0x80000ce0]:sd t6, 744(ra)
Current Store : [0x80000ce4] : sd t5, 752(ra) -- Store: [0x80003758]:0x0100000000004000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cfc]:UKMAR64 t6, t5, t4
	-[0x80000d00]:sd t6, 768(ra)
Current Store : [0x80000d04] : sd t5, 776(ra) -- Store: [0x80003770]:0xFFFFFFFF00002000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d28]:UKMAR64 t6, t5, t4
	-[0x80000d2c]:sd t6, 792(ra)
Current Store : [0x80000d30] : sd t5, 800(ra) -- Store: [0x80003788]:0x0000001300001000




Last Coverpoint : ['rs1_w1_val == 134217728', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d4c]:UKMAR64 t6, t5, t4
	-[0x80000d50]:sd t6, 816(ra)
Current Store : [0x80000d54] : sd t5, 824(ra) -- Store: [0x800037a0]:0x0800000000000400




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d74]:UKMAR64 t6, t5, t4
	-[0x80000d78]:sd t6, 840(ra)
Current Store : [0x80000d7c] : sd t5, 848(ra) -- Store: [0x800037b8]:0x0000000400000200




Last Coverpoint : ['rs1_w1_val == 4294934527', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d9c]:UKMAR64 t6, t5, t4
	-[0x80000da0]:sd t6, 864(ra)
Current Store : [0x80000da4] : sd t5, 872(ra) -- Store: [0x800037d0]:0xFFFF7FFF00000100




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000dc0]:UKMAR64 t6, t5, t4
	-[0x80000dc4]:sd t6, 888(ra)
Current Store : [0x80000dc8] : sd t5, 896(ra) -- Store: [0x800037e8]:0x0000001000000008




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000de4]:UKMAR64 t6, t5, t4
	-[0x80000de8]:sd t6, 912(ra)
Current Store : [0x80000dec] : sd t5, 920(ra) -- Store: [0x80003800]:0x0020000000000002




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 4286578687', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e0c]:UKMAR64 t6, t5, t4
	-[0x80000e10]:sd t6, 936(ra)
Current Store : [0x80000e14] : sd t5, 944(ra) -- Store: [0x80003818]:0xFF7FFFFF00000001




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000e3c]:UKMAR64 t6, t5, t4
	-[0x80000e40]:sd t6, 960(ra)
Current Store : [0x80000e44] : sd t5, 968(ra) -- Store: [0x80003830]:0xFFFF7FFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000e64]:UKMAR64 t6, t5, t4
	-[0x80000e68]:sd t6, 984(ra)
Current Store : [0x80000e6c] : sd t5, 992(ra) -- Store: [0x80003848]:0xFFFDFFFF20000000




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000e98]:UKMAR64 t6, t5, t4
	-[0x80000e9c]:sd t6, 1008(ra)
Current Store : [0x80000ea0] : sd t5, 1016(ra) -- Store: [0x80003860]:0x0010000000010000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000ebc]:UKMAR64 t6, t5, t4
	-[0x80000ec0]:sd t6, 1032(ra)
Current Store : [0x80000ec4] : sd t5, 1040(ra) -- Store: [0x80003878]:0xFFFDFFFF10000000




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000ee8]:UKMAR64 t6, t5, t4
	-[0x80000eec]:sd t6, 1056(ra)
Current Store : [0x80000ef0] : sd t5, 1064(ra) -- Store: [0x80003890]:0xAAAAAAAA00000020




Last Coverpoint : ['rs2_w1_val == 256']
Last Code Sequence : 
	-[0x80000f14]:UKMAR64 t6, t5, t4
	-[0x80000f18]:sd t6, 1080(ra)
Current Store : [0x80000f1c] : sd t5, 1088(ra) -- Store: [0x800038a8]:0xFBFFFFFF00800000




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000f38]:UKMAR64 t6, t5, t4
	-[0x80000f3c]:sd t6, 1104(ra)
Current Store : [0x80000f40] : sd t5, 1112(ra) -- Store: [0x800038c0]:0x0000000A00000004




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80000f60]:UKMAR64 t6, t5, t4
	-[0x80000f64]:sd t6, 1128(ra)
Current Store : [0x80000f68] : sd t5, 1136(ra) -- Store: [0x800038d8]:0xEFFFFFFF00000002




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x80000f84]:UKMAR64 t6, t5, t4
	-[0x80000f88]:sd t6, 1152(ra)
Current Store : [0x80000f8c] : sd t5, 1160(ra) -- Store: [0x800038f0]:0x0000000900000007




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000fa8]:UKMAR64 t6, t5, t4
	-[0x80000fac]:sd t6, 1176(ra)
Current Store : [0x80000fb0] : sd t5, 1184(ra) -- Store: [0x80003908]:0x0000008000000013




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000fd0]:UKMAR64 t6, t5, t4
	-[0x80000fd4]:sd t6, 1200(ra)
Current Store : [0x80000fd8] : sd t5, 1208(ra) -- Store: [0x80003920]:0xFF7FFFFF00100000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000ff0]:UKMAR64 t6, t5, t4
	-[0x80000ff4]:sd t6, 1224(ra)
Current Store : [0x80000ff8] : sd t5, 1232(ra) -- Store: [0x80003938]:0x00008000FFFDFFFF




Last Coverpoint : ['rs2_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80001020]:UKMAR64 t6, t5, t4
	-[0x80001024]:sd t6, 1248(ra)
Current Store : [0x80001028] : sd t5, 1256(ra) -- Store: [0x80003950]:0x00000001FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 3221225471', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80001048]:UKMAR64 t6, t5, t4
	-[0x8000104c]:sd t6, 1272(ra)
Current Store : [0x80001050] : sd t5, 1280(ra) -- Store: [0x80003968]:0xFFF7FFFFFFFFFFFD




Last Coverpoint : ['rs2_w1_val == 4293918719', 'rs2_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80001070]:UKMAR64 t6, t5, t4
	-[0x80001074]:sd t6, 1296(ra)
Current Store : [0x80001078] : sd t5, 1304(ra) -- Store: [0x80003980]:0xFFFFFEFF0000000B




Last Coverpoint : ['rs2_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001094]:UKMAR64 t6, t5, t4
	-[0x80001098]:sd t6, 1320(ra)
Current Store : [0x8000109c] : sd t5, 1328(ra) -- Store: [0x80003998]:0x0000000910000000




Last Coverpoint : ['rs2_w0_val == 4261412863', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800010b8]:UKMAR64 t6, t5, t4
	-[0x800010bc]:sd t6, 1344(ra)
Current Store : [0x800010c0] : sd t5, 1352(ra) -- Store: [0x800039b0]:0x0004000000000006




Last Coverpoint : ['rs2_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800010e4]:UKMAR64 t6, t5, t4
	-[0x800010e8]:sd t6, 1368(ra)
Current Store : [0x800010ec] : sd t5, 1376(ra) -- Store: [0x800039c8]:0x0000001300010000




Last Coverpoint : ['rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80001114]:UKMAR64 t6, t5, t4
	-[0x80001118]:sd t6, 1392(ra)
Current Store : [0x8000111c] : sd t5, 1400(ra) -- Store: [0x800039e0]:0xFFFFFF7F00000400




Last Coverpoint : ['rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80001144]:UKMAR64 t6, t5, t4
	-[0x80001148]:sd t6, 1416(ra)
Current Store : [0x8000114c] : sd t5, 1424(ra) -- Store: [0x800039f8]:0xFF7FFFFF00002000




Last Coverpoint : ['rs2_w0_val == 4294959103', 'rs1_w1_val == 32', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001174]:UKMAR64 t6, t5, t4
	-[0x80001178]:sd t6, 1440(ra)
Current Store : [0x8000117c] : sd t5, 1448(ra) -- Store: [0x80003a10]:0x00000020FFFFFFEF




Last Coverpoint : ['rs2_w0_val == 4294966271', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800011a8]:UKMAR64 t6, t5, t4
	-[0x800011ac]:sd t6, 1464(ra)
Current Store : [0x800011b0] : sd t5, 1472(ra) -- Store: [0x80003a28]:0x55555555FDFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294966783', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800011d4]:UKMAR64 t6, t5, t4
	-[0x800011d8]:sd t6, 1488(ra)
Current Store : [0x800011dc] : sd t5, 1496(ra) -- Store: [0x80003a40]:0xFF7FFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967291', 'rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x800011f8]:UKMAR64 t6, t5, t4
	-[0x800011fc]:sd t6, 1512(ra)
Current Store : [0x80001200] : sd t5, 1520(ra) -- Store: [0x80003a58]:0xFFFFFBFFFFFFFBFF




Last Coverpoint : ['rs2_w0_val == 4294967293', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80001220]:UKMAR64 t6, t5, t4
	-[0x80001224]:sd t6, 1536(ra)
Current Store : [0x80001228] : sd t5, 1544(ra) -- Store: [0x80003a70]:0xFFFFFFDFFDFFFFFF




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80001240]:UKMAR64 t6, t5, t4
	-[0x80001244]:sd t6, 1560(ra)
Current Store : [0x80001248] : sd t5, 1568(ra) -- Store: [0x80003a88]:0x55555555FFFFFBFF




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x80001268]:UKMAR64 t6, t5, t4
	-[0x8000126c]:sd t6, 1584(ra)
Current Store : [0x80001270] : sd t5, 1592(ra) -- Store: [0x80003aa0]:0xFFFFFFEF00000007




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001290]:UKMAR64 t6, t5, t4
	-[0x80001294]:sd t6, 1608(ra)
Current Store : [0x80001298] : sd t5, 1616(ra) -- Store: [0x80003ab8]:0x0800000000020000




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800012bc]:UKMAR64 t6, t5, t4
	-[0x800012c0]:sd t6, 1632(ra)
Current Store : [0x800012c4] : sd t5, 1640(ra) -- Store: [0x80003ad0]:0x00000800FFFFFBFF




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4294836223', 'rs2_w0_val == 0', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800012e0]:UKMAR64 t6, t5, t4
	-[0x800012e4]:sd t6, 1656(ra)
Current Store : [0x800012e8] : sd t5, 1664(ra) -- Store: [0x80003ae8]:0x004000000000000D




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001308]:UKMAR64 t6, t5, t4
	-[0x8000130c]:sd t6, 1680(ra)
Current Store : [0x80001310] : sd t5, 1688(ra) -- Store: [0x80003b00]:0x7FFFFFFF00000010




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x80001334]:UKMAR64 t6, t5, t4
	-[0x80001338]:sd t6, 1704(ra)
Current Store : [0x8000133c] : sd t5, 1712(ra) -- Store: [0x80003b18]:0xF7FFFFFFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == 4261412863']
Last Code Sequence : 
	-[0x80001364]:UKMAR64 t6, t5, t4
	-[0x80001368]:sd t6, 1728(ra)
Current Store : [0x8000136c] : sd t5, 1736(ra) -- Store: [0x80003b30]:0xFDFFFFFF00100000




Last Coverpoint : ['rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x80001390]:UKMAR64 t6, t5, t4
	-[0x80001394]:sd t6, 1752(ra)
Current Store : [0x80001398] : sd t5, 1760(ra) -- Store: [0x80003b48]:0xFFBFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 4294705151']
Last Code Sequence : 
	-[0x800013bc]:UKMAR64 t6, t5, t4
	-[0x800013c0]:sd t6, 1776(ra)
Current Store : [0x800013c4] : sd t5, 1784(ra) -- Store: [0x80003b60]:0xFFFBFFFF00010000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800013ec]:UKMAR64 t6, t5, t4
	-[0x800013f0]:sd t6, 1800(ra)
Current Store : [0x800013f4] : sd t5, 1808(ra) -- Store: [0x80003b78]:0xFFFEFFFFAAAAAAAA




Last Coverpoint : ['rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x80001414]:UKMAR64 t6, t5, t4
	-[0x80001418]:sd t6, 1824(ra)
Current Store : [0x8000141c] : sd t5, 1832(ra) -- Store: [0x80003b90]:0xFFFFBFFFFFFFFEFF




Last Coverpoint : ['rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x80001440]:UKMAR64 t6, t5, t4
	-[0x80001444]:sd t6, 1848(ra)
Current Store : [0x80001448] : sd t5, 1856(ra) -- Store: [0x80003ba8]:0xFFFFDFFFF7FFFFFF




Last Coverpoint : ['rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80001464]:UKMAR64 t6, t5, t4
	-[0x80001468]:sd t6, 1872(ra)
Current Store : [0x8000146c] : sd t5, 1880(ra) -- Store: [0x80003bc0]:0xFFFFEFFF00800000




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 1048576', 'rs2_w0_val == 2097152', 'rs1_w1_val == 4294965247', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80001490]:UKMAR64 t6, t5, t4
	-[0x80001494]:sd t6, 1896(ra)
Current Store : [0x80001498] : sd t5, 1904(ra) -- Store: [0x80003bd8]:0xFFFFF7FF00000400




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x800014b8]:UKMAR64 t6, t5, t4
	-[0x800014bc]:sd t6, 1920(ra)
Current Store : [0x800014c0] : sd t5, 1928(ra) -- Store: [0x80003bf0]:0xFFFFFDFF00000002




Last Coverpoint : ['rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x800014dc]:UKMAR64 t6, t5, t4
	-[0x800014e0]:sd t6, 1944(ra)
Current Store : [0x800014e4] : sd t5, 1952(ra) -- Store: [0x80003c08]:0xFFFFFFFB00000002




Last Coverpoint : ['rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x80001500]:UKMAR64 t6, t5, t4
	-[0x80001504]:sd t6, 1968(ra)
Current Store : [0x80001508] : sd t5, 1976(ra) -- Store: [0x80003c20]:0xFFFFFFFDFFFFFF7F




Last Coverpoint : ['rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x80001528]:UKMAR64 t6, t5, t4
	-[0x8000152c]:sd t6, 1992(ra)
Current Store : [0x80001530] : sd t5, 2000(ra) -- Store: [0x80003c38]:0x80000000F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80001558]:UKMAR64 t6, t5, t4
	-[0x8000155c]:sd t6, 2016(ra)
Current Store : [0x80001560] : sd t5, 2024(ra) -- Store: [0x80003c50]:0x10000000FFFFEFFF




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001588]:UKMAR64 t6, t5, t4
	-[0x8000158c]:sd t6, 0(ra)
Current Store : [0x80001590] : sd t5, 8(ra) -- Store: [0x80003c68]:0x0080000000200000




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x800015c0]:UKMAR64 t6, t5, t4
	-[0x800015c4]:sd t6, 0(ra)
Current Store : [0x800015c8] : sd t5, 8(ra) -- Store: [0x80003c80]:0x0008000000200000




Last Coverpoint : ['rs1_w1_val == 16384', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800015f4]:UKMAR64 t6, t5, t4
	-[0x800015f8]:sd t6, 24(ra)
Current Store : [0x800015fc] : sd t5, 32(ra) -- Store: [0x80003c98]:0x00004000FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001620]:UKMAR64 t6, t5, t4
	-[0x80001624]:sd t6, 48(ra)
Current Store : [0x80001628] : sd t5, 56(ra) -- Store: [0x80003cb0]:0x0000200000040000




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001650]:UKMAR64 t6, t5, t4
	-[0x80001654]:sd t6, 72(ra)
Current Store : [0x80001658] : sd t5, 80(ra) -- Store: [0x80003cc8]:0x0000100000100000




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001684]:UKMAR64 t6, t5, t4
	-[0x80001688]:sd t6, 96(ra)
Current Store : [0x8000168c] : sd t5, 104(ra) -- Store: [0x80003ce0]:0x00000400FFFFF7FF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800016a8]:UKMAR64 t6, t5, t4
	-[0x800016ac]:sd t6, 120(ra)
Current Store : [0x800016b0] : sd t5, 128(ra) -- Store: [0x80003cf8]:0x00000200FFFFFFEF




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800016d4]:UKMAR64 t6, t5, t4
	-[0x800016d8]:sd t6, 144(ra)
Current Store : [0x800016dc] : sd t5, 152(ra) -- Store: [0x80003d10]:0x00000100FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800016fc]:UKMAR64 t6, t5, t4
	-[0x80001700]:sd t6, 168(ra)
Current Store : [0x80001704] : sd t5, 176(ra) -- Store: [0x80003d28]:0x0000004000000006




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001720]:UKMAR64 t6, t5, t4
	-[0x80001724]:sd t6, 192(ra)
Current Store : [0x80001728] : sd t5, 200(ra) -- Store: [0x80003d40]:0x00000008BFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000174c]:UKMAR64 t6, t5, t4
	-[0x80001750]:sd t6, 216(ra)
Current Store : [0x80001754] : sd t5, 224(ra) -- Store: [0x80003d58]:0x00000002FFFFDFFF




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001774]:UKMAR64 t6, t5, t4
	-[0x80001778]:sd t6, 240(ra)
Current Store : [0x8000177c] : sd t5, 248(ra) -- Store: [0x80003d70]:0x0000000855555555




Last Coverpoint : ['rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800017a4]:UKMAR64 t6, t5, t4
	-[0x800017a8]:sd t6, 264(ra)
Current Store : [0x800017ac] : sd t5, 272(ra) -- Store: [0x80003d88]:0xEFFFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800017cc]:UKMAR64 t6, t5, t4
	-[0x800017d0]:sd t6, 288(ra)
Current Store : [0x800017d4] : sd t5, 296(ra) -- Store: [0x80003da0]:0x00000020FEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800017f8]:UKMAR64 t6, t5, t4
	-[0x800017fc]:sd t6, 312(ra)
Current Store : [0x80001800] : sd t5, 320(ra) -- Store: [0x80003db8]:0x80000000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80001828]:UKMAR64 t6, t5, t4
	-[0x8000182c]:sd t6, 336(ra)
Current Store : [0x80001830] : sd t5, 344(ra) -- Store: [0x80003dd0]:0xFFBFFFFFFFDFFFFF




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 64', 'rs2_w0_val == 512', 'rs1_w1_val == 4286578687', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80001854]:UKMAR64 t6, t5, t4
	-[0x80001858]:sd t6, 360(ra)
Current Store : [0x8000185c] : sd t5, 368(ra) -- Store: [0x80003de8]:0xFF7FFFFFFFF7FFFF




Last Coverpoint : ['rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80001880]:UKMAR64 t6, t5, t4
	-[0x80001884]:sd t6, 384(ra)
Current Store : [0x80001888] : sd t5, 392(ra) -- Store: [0x80003e00]:0xBFFFFFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800018b0]:UKMAR64 t6, t5, t4
	-[0x800018b4]:sd t6, 408(ra)
Current Store : [0x800018b8] : sd t5, 416(ra) -- Store: [0x80003e18]:0x00000020FFFFBFFF




Last Coverpoint : ['rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800018dc]:UKMAR64 t6, t5, t4
	-[0x800018e0]:sd t6, 432(ra)
Current Store : [0x800018e4] : sd t5, 440(ra) -- Store: [0x80003e30]:0x40000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001900]:UKMAR64 t6, t5, t4
	-[0x80001904]:sd t6, 456(ra)
Current Store : [0x80001908] : sd t5, 464(ra) -- Store: [0x80003e48]:0x00000008FFFFBFFF




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80001924]:UKMAR64 t6, t5, t4
	-[0x80001928]:sd t6, 480(ra)
Current Store : [0x8000192c] : sd t5, 488(ra) -- Store: [0x80003e60]:0x00000000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001944]:UKMAR64 t6, t5, t4
	-[0x80001948]:sd t6, 504(ra)
Current Store : [0x8000194c] : sd t5, 512(ra) -- Store: [0x80003e78]:0xFFFFFFEFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001970]:UKMAR64 t6, t5, t4
	-[0x80001974]:sd t6, 528(ra)
Current Store : [0x80001978] : sd t5, 536(ra) -- Store: [0x80003e90]:0xBFFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x8000199c]:UKMAR64 t6, t5, t4
	-[0x800019a0]:sd t6, 552(ra)
Current Store : [0x800019a4] : sd t5, 560(ra) -- Store: [0x80003ea8]:0x04000000FFFFFFF7




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x800019c0]:UKMAR64 t6, t5, t4
	-[0x800019c4]:sd t6, 576(ra)
Current Store : [0x800019c8] : sd t5, 584(ra) -- Store: [0x80003ec0]:0x000200000000000D




Last Coverpoint : ['rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800019e4]:UKMAR64 t6, t5, t4
	-[0x800019e8]:sd t6, 600(ra)
Current Store : [0x800019ec] : sd t5, 608(ra) -- Store: [0x80003ed8]:0x0000000DFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001a0c]:UKMAR64 t6, t5, t4
	-[0x80001a10]:sd t6, 624(ra)
Current Store : [0x80001a14] : sd t5, 632(ra) -- Store: [0x80003ef0]:0x8000000000000004




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001a2c]:UKMAR64 t6, t5, t4
	-[0x80001a30]:sd t6, 648(ra)
Current Store : [0x80001a34] : sd t5, 656(ra) -- Store: [0x80003f08]:0x0000001340000000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001a50]:UKMAR64 t6, t5, t4
	-[0x80001a54]:sd t6, 672(ra)
Current Store : [0x80001a58] : sd t5, 680(ra) -- Store: [0x80003f20]:0xFF7FFFFF20000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001a74]:UKMAR64 t6, t5, t4
	-[0x80001a78]:sd t6, 696(ra)
Current Store : [0x80001a7c] : sd t5, 704(ra) -- Store: [0x80003f38]:0x0000000902000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001aa4]:UKMAR64 t6, t5, t4
	-[0x80001aa8]:sd t6, 720(ra)
Current Store : [0x80001aac] : sd t5, 728(ra) -- Store: [0x80003f50]:0x0000040001000000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001ac8]:UKMAR64 t6, t5, t4
	-[0x80001acc]:sd t6, 744(ra)
Current Store : [0x80001ad0] : sd t5, 752(ra) -- Store: [0x80003f68]:0xFFF7FFFFFFFFFFF7




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001af0]:UKMAR64 t6, t5, t4
	-[0x80001af4]:sd t6, 768(ra)
Current Store : [0x80001af8] : sd t5, 776(ra) -- Store: [0x80003f80]:0xFFFFBFFF08000000




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80001b14]:UKMAR64 t6, t5, t4
	-[0x80001b18]:sd t6, 792(ra)
Current Store : [0x80001b1c] : sd t5, 800(ra) -- Store: [0x80003f98]:0xDFFFFFFF00000000




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4', 'rs2_w0_val == 4294443007', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001b3c]:UKMAR64 t6, t5, t4
	-[0x80001b40]:sd t6, 816(ra)
Current Store : [0x80001b44] : sd t5, 824(ra) -- Store: [0x80003fb0]:0x0000000400000009




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001b64]:UKMAR64 t6, t5, t4
	-[0x80001b68]:sd t6, 840(ra)
Current Store : [0x80001b6c] : sd t5, 848(ra) -- Store: [0x80003fc8]:0xFFFFFFF7FFFDFFFF





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

|s.no|            signature             |                                                                                                                                                                           coverpoints                                                                                                                                                                           |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFFF|- opcode : ukmar64<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 2147483648<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 2147483648<br> |[0x800003bc]:UKMAR64 s8, t0, t0<br> [0x800003c0]:sd s8, 0(gp)<br>       |
|   2|[0x80003228]<br>0xFFF0004300080010|- rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 4<br> - rs2_w0_val == 4294443007<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                     |[0x800003e4]:UKMAR64 t1, t1, t1<br> [0x800003e8]:sd t1, 24(gp)<br>      |
|   3|[0x80003240]<br>0xB7F5BDDDB7B5BFED|- rs1 : x17<br> - rs2 : x26<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 2097152<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 4<br>                                                                                         |[0x8000040c]:UKMAR64 s4, a7, s10<br> [0x80000410]:sd s4, 48(gp)<br>     |
|   4|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x13<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs1_w1_val == 3221225471<br> - rs1_w0_val == 262144<br>                                                                                                                              |[0x8000043c]:UKMAR64 a4, a4, a3<br> [0x80000440]:sd a4, 72(gp)<br>      |
|   5|[0x80003270]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 4294967039<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                |[0x80000468]:UKMAR64 a2, a5, a2<br> [0x8000046c]:sd a2, 96(gp)<br>      |
|   6|[0x80003288]<br>0xDF56FF7CDF96FF6A|- rs1 : x11<br> - rs2 : x1<br> - rd : x18<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 65536<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                    |[0x80000494]:UKMAR64 s2, a1, ra<br> [0x80000498]:sd s2, 120(gp)<br>     |
|   7|[0x800032a0]<br>0x0020000C000023F4|- rs1 : x19<br> - rs2 : x29<br> - rd : x26<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 16<br>                                                                                                                                                                                                                                    |[0x800004bc]:UKMAR64 s10, s3, t4<br> [0x800004c0]:sd s10, 144(gp)<br>   |
|   8|[0x800032b8]<br>0x89F76FF74DF16FF7|- rs1 : x24<br> - rs2 : x27<br> - rd : x22<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                            |[0x800004ec]:UKMAR64 s6, s8, s11<br> [0x800004f0]:sd s6, 168(gp)<br>    |
|   9|[0x800032d0]<br>0xDDC7D5C2AD97D5BC|- rs1 : x27<br> - rs2 : x7<br> - rd : x28<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                          |[0x80000514]:UKMAR64 t3, s11, t2<br> [0x80000518]:sd t3, 192(gp)<br>    |
|  10|[0x800032e8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x23<br> - rd : x4<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4294967263<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 4160749567<br>                                                                                                                                                                                            |[0x8000053c]:UKMAR64 tp, s4, s7<br> [0x80000540]:sd tp, 216(gp)<br>     |
|  11|[0x80003300]<br>0xFFB5DF571336DF56|- rs1 : x9<br> - rs2 : x14<br> - rd : x2<br> - rs2_w1_val == 4227858431<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                             |[0x80000564]:UKMAR64 sp, s1, a4<br> [0x80000568]:sd sp, 240(gp)<br>     |
|  12|[0x80003318]<br>0x03F7FFFFFF000200|- rs1 : x21<br> - rs2 : x11<br> - rd : x10<br> - rs2_w1_val == 4261412863<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                           |[0x80000590]:UKMAR64 a0, s5, a1<br> [0x80000594]:sd a0, 264(gp)<br>     |
|  13|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rs2 : x20<br> - rd : x8<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                        |[0x800005c0]:UKMAR64 fp, t5, s4<br> [0x800005c4]:sd fp, 288(gp)<br>     |
|  14|[0x80003348]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rs2 : x31<br> - rd : x30<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                   |[0x80000600]:UKMAR64 t5, s2, t6<br> [0x80000604]:sd t5, 0(a1)<br>       |
|  15|[0x80003360]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x4<br> - rd : x16<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                                                      |[0x80000630]:UKMAR64 a6, s7, tp<br> [0x80000634]:sd a6, 24(a1)<br>      |
|  16|[0x80003378]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x2<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4026531839<br> - rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                      |[0x80000658]:UKMAR64 fp, a6, sp<br> [0x8000065c]:sd fp, 48(a1)<br>      |
|  17|[0x80003390]<br>0xFFF0004300080010|- rs1 : x1<br> - rs2 : x0<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 4294967287<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                                                          |[0x80000680]:UKMAR64 t1, ra, zero<br> [0x80000684]:sd t1, 72(a1)<br>    |
|  18|[0x800033a8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x9<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                                                                         |[0x800006ac]:UKMAR64 t4, a3, s1<br> [0x800006b0]:sd t4, 96(a1)<br>      |
|  19|[0x800033c0]<br>0xEDBEADFFEDBAAE41|- rs1 : x7<br> - rs2 : x30<br> - rs2_w1_val == 4294705151<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                              |[0x800006d4]:UKMAR64 s9, t2, t5<br> [0x800006d8]:sd s9, 120(a1)<br>     |
|  20|[0x800033d8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rs2 : x3<br> - rs2_w1_val == 4294836223<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                      |[0x80000700]:UKMAR64 s5, t6, gp<br> [0x80000704]:sd s5, 144(a1)<br>     |
|  21|[0x800033f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x28<br> - rs2 : x21<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                        |[0x8000072c]:UKMAR64 t0, t3, s5<br> [0x80000730]:sd t0, 168(a1)<br>     |
|  22|[0x80003408]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x28<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                            |[0x80000754]:UKMAR64 a7, tp, t3<br> [0x80000758]:sd a7, 192(a1)<br>     |
|  23|[0x80003420]<br>0x0000009367DFFF71|- rs1 : x26<br> - rs2 : x17<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 4160749567<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                            |[0x8000077c]:UKMAR64 t2, s10, a7<br> [0x80000780]:sd t2, 216(a1)<br>    |
|  24|[0x80003438]<br>0x07F7FF8EF38001F1|- rs1 : x12<br> - rs2 : x15<br> - rs2_w1_val == 4294959103<br>                                                                                                                                                                                                                                                                                                   |[0x800007a4]:UKMAR64 a0, a2, a5<br> [0x800007a8]:sd a0, 240(a1)<br>     |
|  25|[0x80003450]<br>0xFC08FFFEEDF70005|- rs1 : x22<br> - rs2 : x19<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4294967231<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                               |[0x800007c8]:UKMAR64 a4, s6, s3<br> [0x800007cc]:sd a4, 264(a1)<br>     |
|  26|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x16<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 256<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                                            |[0x800007f8]:UKMAR64 a4, a0, a6<br> [0x800007fc]:sd a4, 0(ra)<br>       |
|  27|[0x80003480]<br>0xFFFEFFFFFDFE001A|- rs1 : x29<br> - rs2 : x22<br> - rs2_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                                   |[0x8000081c]:UKMAR64 gp, t4, s6<br> [0x80000820]:sd gp, 24(ra)<br>      |
|  28|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x10<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 128<br> - rs1_w1_val == 4292870143<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                                              |[0x80000848]:UKMAR64 a2, sp, a0<br> [0x8000084c]:sd a2, 48(ra)<br>      |
|  29|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rs2 : x25<br> - rs2_w1_val == 4294967167<br> - rs2_w0_val == 4294965247<br> - rs1_w1_val == 4294967231<br>                                                                                                                                                                                                                                      |[0x80000870]:UKMAR64 t1, fp, s9<br> [0x80000874]:sd t1, 72(ra)<br>      |
|  30|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x18<br> - rs2_w1_val == 4294967231<br>                                                                                                                                                                                                                                                                                                   |[0x800008a4]:UKMAR64 s11, s9, s2<br> [0x800008a8]:sd s11, 96(ra)<br>    |
|  31|[0x800034e0]<br>0x0000008000000013|- rs1 : x0<br> - rs2 : x8<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 4294705151<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                                          |[0x800008cc]:UKMAR64 s10, zero, fp<br> [0x800008d0]:sd s10, 120(ra)<br> |
|  32|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x24<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                             |[0x800008f4]:UKMAR64 t0, gp, s8<br> [0x800008f8]:sd t0, 144(ra)<br>     |
|  33|[0x80003510]<br>0x20000004DFFFFF52|- rs2_w1_val == 4294967287<br> - rs2_w0_val == 4294967279<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                      |[0x80000914]:UKMAR64 t6, t5, t4<br> [0x80000918]:sd t6, 168(ra)<br>     |
|  34|[0x80003528]<br>0x2000000DDFFFFF39|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                                                    |[0x80000938]:UKMAR64 t6, t5, t4<br> [0x8000093c]:sd t6, 192(ra)<br>     |
|  35|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000095c]:UKMAR64 t6, t5, t4<br> [0x80000960]:sd t6, 216(ra)<br>     |
|  36|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000984]:UKMAR64 t6, t5, t4<br> [0x80000988]:sd t6, 240(ra)<br>     |
|  37|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2147483648<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                             |[0x800009ac]:UKMAR64 t6, t5, t4<br> [0x800009b0]:sd t6, 264(ra)<br>     |
|  38|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                           |[0x800009d4]:UKMAR64 t6, t5, t4<br> [0x800009d8]:sd t6, 288(ra)<br>     |
|  39|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                                    |[0x800009f8]:UKMAR64 t6, t5, t4<br> [0x800009fc]:sd t6, 312(ra)<br>     |
|  40|[0x800035b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 268435456<br> - rs2_w0_val == 16384<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                   |[0x80000a20]:UKMAR64 t6, t5, t4<br> [0x80000a24]:sd t6, 336(ra)<br>     |
|  41|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 134217728<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                                     |[0x80000a44]:UKMAR64 t6, t5, t4<br> [0x80000a48]:sd t6, 360(ra)<br>     |
|  42|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000a70]:UKMAR64 t6, t5, t4<br> [0x80000a74]:sd t6, 384(ra)<br>     |
|  43|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000a94]:UKMAR64 t6, t5, t4<br> [0x80000a98]:sd t6, 408(ra)<br>     |
|  44|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16777216<br> - rs1_w1_val == 2863311530<br>                                                                                                                                                                                                                                                                                                      |[0x80000abc]:UKMAR64 t6, t5, t4<br> [0x80000ac0]:sd t6, 432(ra)<br>     |
|  45|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                      |[0x80000ad8]:UKMAR64 t6, t5, t4<br> [0x80000adc]:sd t6, 456(ra)<br>     |
|  46|[0x80003648]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4194304<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                                       |[0x80000b00]:UKMAR64 t6, t5, t4<br> [0x80000b04]:sd t6, 480(ra)<br>     |
|  47|[0x80003660]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 1048576<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                       |[0x80000b2c]:UKMAR64 t6, t5, t4<br> [0x80000b30]:sd t6, 504(ra)<br>     |
|  48|[0x80003678]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 524288<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                                                        |[0x80000b54]:UKMAR64 t6, t5, t4<br> [0x80000b58]:sd t6, 528(ra)<br>     |
|  49|[0x80003690]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 262144<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                         |[0x80000b8c]:UKMAR64 t6, t5, t4<br> [0x80000b90]:sd t6, 552(ra)<br>     |
|  50|[0x800036a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 131072<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                                                                        |[0x80000bb4]:UKMAR64 t6, t5, t4<br> [0x80000bb8]:sd t6, 576(ra)<br>     |
|  51|[0x800036c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 65536<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                                |[0x80000be8]:UKMAR64 t6, t5, t4<br> [0x80000bec]:sd t6, 600(ra)<br>     |
|  52|[0x800036d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 32768<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                          |[0x80000c10]:UKMAR64 t6, t5, t4<br> [0x80000c14]:sd t6, 624(ra)<br>     |
|  53|[0x800036f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16384<br> - rs2_w0_val == 64<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                  |[0x80000c34]:UKMAR64 t6, t5, t4<br> [0x80000c38]:sd t6, 648(ra)<br>     |
|  54|[0x80003708]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000c54]:UKMAR64 t6, t5, t4<br> [0x80000c58]:sd t6, 672(ra)<br>     |
|  55|[0x80003720]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294967295<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                         |[0x80000c88]:UKMAR64 t6, t5, t4<br> [0x80000c8c]:sd t6, 696(ra)<br>     |
|  56|[0x80003738]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 128<br> - rs2_w0_val == 32<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                         |[0x80000cb4]:UKMAR64 t6, t5, t4<br> [0x80000cb8]:sd t6, 720(ra)<br>     |
|  57|[0x80003750]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000cdc]:UKMAR64 t6, t5, t4<br> [0x80000ce0]:sd t6, 744(ra)<br>     |
|  58|[0x80003768]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000cfc]:UKMAR64 t6, t5, t4<br> [0x80000d00]:sd t6, 768(ra)<br>     |
|  59|[0x80003780]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000d28]:UKMAR64 t6, t5, t4<br> [0x80000d2c]:sd t6, 792(ra)<br>     |
|  60|[0x80003798]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 134217728<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                           |[0x80000d4c]:UKMAR64 t6, t5, t4<br> [0x80000d50]:sd t6, 816(ra)<br>     |
|  61|[0x800037b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000d74]:UKMAR64 t6, t5, t4<br> [0x80000d78]:sd t6, 840(ra)<br>     |
|  62|[0x800037c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294934527<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                           |[0x80000d9c]:UKMAR64 t6, t5, t4<br> [0x80000da0]:sd t6, 864(ra)<br>     |
|  63|[0x800037e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                      |[0x80000dc0]:UKMAR64 t6, t5, t4<br> [0x80000dc4]:sd t6, 888(ra)<br>     |
|  64|[0x800037f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 2097152<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                |[0x80000de4]:UKMAR64 t6, t5, t4<br> [0x80000de8]:sd t6, 912(ra)<br>     |
|  65|[0x80003810]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16<br> - rs1_w1_val == 4286578687<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                      |[0x80000e0c]:UKMAR64 t6, t5, t4<br> [0x80000e10]:sd t6, 936(ra)<br>     |
|  66|[0x80003828]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294950911<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                                                    |[0x80000e3c]:UKMAR64 t6, t5, t4<br> [0x80000e40]:sd t6, 960(ra)<br>     |
|  67|[0x80003840]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000e64]:UKMAR64 t6, t5, t4<br> [0x80000e68]:sd t6, 984(ra)<br>     |
|  68|[0x80003858]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2048<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                             |[0x80000e98]:UKMAR64 t6, t5, t4<br> [0x80000e9c]:sd t6, 1008(ra)<br>    |
|  69|[0x80003870]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 1024<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                           |[0x80000ebc]:UKMAR64 t6, t5, t4<br> [0x80000ec0]:sd t6, 1032(ra)<br>    |
|  70|[0x80003888]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000ee8]:UKMAR64 t6, t5, t4<br> [0x80000eec]:sd t6, 1056(ra)<br>    |
|  71|[0x800038a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000f14]:UKMAR64 t6, t5, t4<br> [0x80000f18]:sd t6, 1080(ra)<br>    |
|  72|[0x800038b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 64<br> - rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                    |[0x80000f38]:UKMAR64 t6, t5, t4<br> [0x80000f3c]:sd t6, 1104(ra)<br>    |
|  73|[0x800038d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 32<br> - rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                                                                                                            |[0x80000f60]:UKMAR64 t6, t5, t4<br> [0x80000f64]:sd t6, 1128(ra)<br>    |
|  74|[0x800038e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000f84]:UKMAR64 t6, t5, t4<br> [0x80000f88]:sd t6, 1152(ra)<br>    |
|  75|[0x80003900]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 1<br> - rs2_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                                             |[0x80000fa8]:UKMAR64 t6, t5, t4<br> [0x80000fac]:sd t6, 1176(ra)<br>    |
|  76|[0x80003918]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967295<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                       |[0x80000fd0]:UKMAR64 t6, t5, t4<br> [0x80000fd4]:sd t6, 1200(ra)<br>    |
|  77|[0x80003930]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 262144<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                             |[0x80000ff0]:UKMAR64 t6, t5, t4<br> [0x80000ff4]:sd t6, 1224(ra)<br>    |
|  78|[0x80003948]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 2863311530<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001020]:UKMAR64 t6, t5, t4<br> [0x80001024]:sd t6, 1248(ra)<br>    |
|  79|[0x80003960]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 3221225471<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                     |[0x80001048]:UKMAR64 t6, t5, t4<br> [0x8000104c]:sd t6, 1272(ra)<br>    |
|  80|[0x80003978]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4293918719<br> - rs2_w0_val == 3758096383<br>                                                                                                                                                                                                                                                                                                    |[0x80001070]:UKMAR64 t6, t5, t4<br> [0x80001074]:sd t6, 1296(ra)<br>    |
|  81|[0x80003990]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001094]:UKMAR64 t6, t5, t4<br> [0x80001098]:sd t6, 1320(ra)<br>    |
|  82|[0x800039a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4261412863<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                        |[0x800010b8]:UKMAR64 t6, t5, t4<br> [0x800010bc]:sd t6, 1344(ra)<br>    |
|  83|[0x800039c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                   |[0x800010e4]:UKMAR64 t6, t5, t4<br> [0x800010e8]:sd t6, 1368(ra)<br>    |
|  84|[0x800039d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001114]:UKMAR64 t6, t5, t4<br> [0x80001118]:sd t6, 1392(ra)<br>    |
|  85|[0x800039f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001144]:UKMAR64 t6, t5, t4<br> [0x80001148]:sd t6, 1416(ra)<br>    |
|  86|[0x80003a08]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294959103<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                             |[0x80001174]:UKMAR64 t6, t5, t4<br> [0x80001178]:sd t6, 1440(ra)<br>    |
|  87|[0x80003a20]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294966271<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                                                     |[0x800011a8]:UKMAR64 t6, t5, t4<br> [0x800011ac]:sd t6, 1464(ra)<br>    |
|  88|[0x80003a38]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294966783<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                                                                                                                    |[0x800011d4]:UKMAR64 t6, t5, t4<br> [0x800011d8]:sd t6, 1488(ra)<br>    |
|  89|[0x80003a50]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967291<br> - rs1_w1_val == 4294966271<br>                                                                                                                                                                                                                                                                                                    |[0x800011f8]:UKMAR64 t6, t5, t4<br> [0x800011fc]:sd t6, 1512(ra)<br>    |
|  90|[0x80003a68]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967293<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                                                    |[0x80001220]:UKMAR64 t6, t5, t4<br> [0x80001224]:sd t6, 1536(ra)<br>    |
|  91|[0x80003a80]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                                          |[0x80001240]:UKMAR64 t6, t5, t4<br> [0x80001244]:sd t6, 1560(ra)<br>    |
|  92|[0x80003a98]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 8<br> - rs1_w1_val == 4294967279<br>                                                                                                                                                                                                                                                                                                             |[0x80001268]:UKMAR64 t6, t5, t4<br> [0x8000126c]:sd t6, 1584(ra)<br>    |
|  93|[0x80003ab0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001290]:UKMAR64 t6, t5, t4<br> [0x80001294]:sd t6, 1608(ra)<br>    |
|  94|[0x80003ac8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 1<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                   |[0x800012bc]:UKMAR64 t6, t5, t4<br> [0x800012c0]:sd t6, 1632(ra)<br>    |
|  95|[0x80003af8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001308]:UKMAR64 t6, t5, t4<br> [0x8000130c]:sd t6, 1680(ra)<br>    |
|  96|[0x80003b10]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4096<br> - rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                          |[0x80001334]:UKMAR64 t6, t5, t4<br> [0x80001338]:sd t6, 1704(ra)<br>    |
|  97|[0x80003b28]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4261412863<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001364]:UKMAR64 t6, t5, t4<br> [0x80001368]:sd t6, 1728(ra)<br>    |
|  98|[0x80003b40]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001390]:UKMAR64 t6, t5, t4<br> [0x80001394]:sd t6, 1752(ra)<br>    |
|  99|[0x80003b58]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294705151<br>                                                                                                                                                                                                                                                                                                                                   |[0x800013bc]:UKMAR64 t6, t5, t4<br> [0x800013c0]:sd t6, 1776(ra)<br>    |
| 100|[0x80003b70]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 524288<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                                                                         |[0x800013ec]:UKMAR64 t6, t5, t4<br> [0x800013f0]:sd t6, 1800(ra)<br>    |
| 101|[0x80003b88]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001414]:UKMAR64 t6, t5, t4<br> [0x80001418]:sd t6, 1824(ra)<br>    |
| 102|[0x80003ba0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294959103<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001440]:UKMAR64 t6, t5, t4<br> [0x80001444]:sd t6, 1848(ra)<br>    |
| 103|[0x80003bb8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001464]:UKMAR64 t6, t5, t4<br> [0x80001468]:sd t6, 1872(ra)<br>    |
| 104|[0x80003be8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                                   |[0x800014b8]:UKMAR64 t6, t5, t4<br> [0x800014bc]:sd t6, 1920(ra)<br>    |
| 105|[0x80003c00]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                                                                                                                                   |[0x800014dc]:UKMAR64 t6, t5, t4<br> [0x800014e0]:sd t6, 1944(ra)<br>    |
| 106|[0x80003c18]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001500]:UKMAR64 t6, t5, t4<br> [0x80001504]:sd t6, 1968(ra)<br>    |
| 107|[0x80003c30]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001528]:UKMAR64 t6, t5, t4<br> [0x8000152c]:sd t6, 1992(ra)<br>    |
| 108|[0x80003c48]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001558]:UKMAR64 t6, t5, t4<br> [0x8000155c]:sd t6, 2016(ra)<br>    |
| 109|[0x80003c60]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 8388608<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                          |[0x80001588]:UKMAR64 t6, t5, t4<br> [0x8000158c]:sd t6, 0(ra)<br>       |
| 110|[0x80003c78]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                       |[0x800015c0]:UKMAR64 t6, t5, t4<br> [0x800015c4]:sd t6, 0(ra)<br>       |
| 111|[0x80003c90]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 16384<br> - rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                                                                                                         |[0x800015f4]:UKMAR64 t6, t5, t4<br> [0x800015f8]:sd t6, 24(ra)<br>      |
| 112|[0x80003ca8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001620]:UKMAR64 t6, t5, t4<br> [0x80001624]:sd t6, 48(ra)<br>      |
| 113|[0x80003cc0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001650]:UKMAR64 t6, t5, t4<br> [0x80001654]:sd t6, 72(ra)<br>      |
| 114|[0x80003cd8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001684]:UKMAR64 t6, t5, t4<br> [0x80001688]:sd t6, 96(ra)<br>      |
| 115|[0x80003cf0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                          |[0x800016a8]:UKMAR64 t6, t5, t4<br> [0x800016ac]:sd t6, 120(ra)<br>     |
| 116|[0x80003d08]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 16777216<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                             |[0x800016d4]:UKMAR64 t6, t5, t4<br> [0x800016d8]:sd t6, 144(ra)<br>     |
| 117|[0x80003d20]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                           |[0x800016fc]:UKMAR64 t6, t5, t4<br> [0x80001700]:sd t6, 168(ra)<br>     |
| 118|[0x80003d38]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001720]:UKMAR64 t6, t5, t4<br> [0x80001724]:sd t6, 192(ra)<br>     |
| 119|[0x80003d50]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                            |[0x8000174c]:UKMAR64 t6, t5, t4<br> [0x80001750]:sd t6, 216(ra)<br>     |
| 120|[0x80003d68]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001774]:UKMAR64 t6, t5, t4<br> [0x80001778]:sd t6, 240(ra)<br>     |
| 121|[0x80003d80]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                                                                                   |[0x800017a4]:UKMAR64 t6, t5, t4<br> [0x800017a8]:sd t6, 264(ra)<br>     |
| 122|[0x80003d98]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                                                                   |[0x800017cc]:UKMAR64 t6, t5, t4<br> [0x800017d0]:sd t6, 288(ra)<br>     |
| 123|[0x80003db0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4286578687<br>                                                                                                                                                                                                                                                                                                                                   |[0x800017f8]:UKMAR64 t6, t5, t4<br> [0x800017fc]:sd t6, 312(ra)<br>     |
| 124|[0x80003dc8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001828]:UKMAR64 t6, t5, t4<br> [0x8000182c]:sd t6, 336(ra)<br>     |
| 125|[0x80003df8]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001880]:UKMAR64 t6, t5, t4<br> [0x80001884]:sd t6, 384(ra)<br>     |
| 126|[0x80003e10]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                                   |[0x800018b0]:UKMAR64 t6, t5, t4<br> [0x800018b4]:sd t6, 408(ra)<br>     |
| 127|[0x80003e28]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967294<br>                                                                                                                                                                                                                                                                                                                                   |[0x800018dc]:UKMAR64 t6, t5, t4<br> [0x800018e0]:sd t6, 432(ra)<br>     |
| 128|[0x80003e40]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001900]:UKMAR64 t6, t5, t4<br> [0x80001904]:sd t6, 456(ra)<br>     |
| 129|[0x80003e58]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001924]:UKMAR64 t6, t5, t4<br> [0x80001928]:sd t6, 480(ra)<br>     |
| 130|[0x80003e70]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001944]:UKMAR64 t6, t5, t4<br> [0x80001948]:sd t6, 504(ra)<br>     |
| 131|[0x80003e88]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001970]:UKMAR64 t6, t5, t4<br> [0x80001974]:sd t6, 528(ra)<br>     |
| 132|[0x80003ea0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967287<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000199c]:UKMAR64 t6, t5, t4<br> [0x800019a0]:sd t6, 552(ra)<br>     |
| 133|[0x80003eb8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                     |[0x800019c0]:UKMAR64 t6, t5, t4<br> [0x800019c4]:sd t6, 576(ra)<br>     |
| 134|[0x80003ed0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                                                   |[0x800019e4]:UKMAR64 t6, t5, t4<br> [0x800019e8]:sd t6, 600(ra)<br>     |
| 135|[0x80003ee8]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001a0c]:UKMAR64 t6, t5, t4<br> [0x80001a10]:sd t6, 624(ra)<br>     |
| 136|[0x80003f00]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001a2c]:UKMAR64 t6, t5, t4<br> [0x80001a30]:sd t6, 648(ra)<br>     |
| 137|[0x80003f18]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001a50]:UKMAR64 t6, t5, t4<br> [0x80001a54]:sd t6, 672(ra)<br>     |
| 138|[0x80003f30]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001a74]:UKMAR64 t6, t5, t4<br> [0x80001a78]:sd t6, 696(ra)<br>     |
| 139|[0x80003f48]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001aa4]:UKMAR64 t6, t5, t4<br> [0x80001aa8]:sd t6, 720(ra)<br>     |
| 140|[0x80003f60]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                        |[0x80001ac8]:UKMAR64 t6, t5, t4<br> [0x80001acc]:sd t6, 744(ra)<br>     |
| 141|[0x80003f78]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001af0]:UKMAR64 t6, t5, t4<br> [0x80001af4]:sd t6, 768(ra)<br>     |
| 142|[0x80003fc0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001b64]:UKMAR64 t6, t5, t4<br> [0x80001b68]:sd t6, 840(ra)<br>     |
