
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a80')]      |
| SIG_REGION                | [('0x80003210', '0x80003af0', '284 dwords')]      |
| COV_LABELS                | uksubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uksubw-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 284      |
| STAT1                     | 136      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 142     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001230]:UKSUBW t6, t5, t4
      [0x80001234]:sd t6, 960(sp)
 -- Signature Address: 0x800037b0 Data: 0x000000000000000C
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w0_val == 0
      - rs1_w1_val == 4293918719




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013b0]:UKSUBW t6, t5, t4
      [0x800013b4]:sd t6, 1104(sp)
 -- Signature Address: 0x80003840 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 1073741824
      - rs2_w0_val == 4261412863
      - rs1_w1_val == 4294950911




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000158c]:UKSUBW t6, t5, t4
      [0x80001590]:sd t6, 1296(sp)
 -- Signature Address: 0x80003900 Data: 0xFFFFFFFFFFFBFEFF
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294901759
      - rs2_w0_val == 256
      - rs1_w1_val == 0
      - rs1_w0_val == 4294705151




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001870]:UKSUBW t6, t5, t4
      [0x80001874]:sd t6, 1568(sp)
 -- Signature Address: 0x80003a10 Data: 0xFFFFFFFFFFFFFFEC
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 512
      - rs1_w1_val == 2863311530
      - rs1_w0_val == 4294967287




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a20]:UKSUBW t6, t5, t4
      [0x80001a24]:sd t6, 1744(sp)
 -- Signature Address: 0x80003ac0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 4294950911
      - rs2_w0_val == 32
      - rs1_w1_val == 4294959103




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a48]:UKSUBW t6, t5, t4
      [0x80001a4c]:sd t6, 1760(sp)
 -- Signature Address: 0x80003ad0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294967263
      - rs2_w0_val == 4294966271
      - rs1_w1_val == 8192
      - rs1_w0_val == 4294966271






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksubw', 'rs1 : x23', 'rs2 : x23', 'rd : x11', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 32', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800003c0]:UKSUBW a1, s7, s7
	-[0x800003c4]:sd a1, 0(gp)
Current Store : [0x800003c8] : sd s7, 8(gp) -- Store: [0x80003218]:0xFFFFBFFF00000020




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x15', 'rs1 == rs2 == rd', 'rs2_w1_val == 8', 'rs2_w0_val == 4294967287', 'rs1_w1_val == 8', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800003e4]:UKSUBW a5, a5, a5
	-[0x800003e8]:sd a5, 16(gp)
Current Store : [0x800003ec] : sd a5, 24(gp) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 8192', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000040c]:UKSUBW zero, t2, a3
	-[0x80000410]:sd zero, 32(gp)
Current Store : [0x80000414] : sd t2, 40(gp) -- Store: [0x80003238]:0x00002000FFFFFBFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x2', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 16384', 'rs1_w1_val == 4294967293', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x8000043c]:UKSUBW sp, sp, s6
	-[0x80000440]:sd sp, 48(gp)
Current Store : [0x80000444] : sd sp, 56(gp) -- Store: [0x80003248]:0xFFFFFFFFFFDFBFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x27', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80000464]:UKSUBW s11, s5, s11
	-[0x80000468]:sd s11, 64(gp)
Current Store : [0x8000046c] : sd s5, 72(gp) -- Store: [0x80003258]:0x0000001000000009




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x28', 'rs2_w1_val == 2147483647', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000048c]:UKSUBW t3, t1, a1
	-[0x80000490]:sd t3, 80(gp)
Current Store : [0x80000494] : sd t1, 88(gp) -- Store: [0x80003268]:0x0000000D00004000




Last Coverpoint : ['rs1 : x8', 'rs2 : x14', 'rd : x31', 'rs2_w1_val == 3221225471', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800004b8]:UKSUBW t6, fp, a4
	-[0x800004bc]:sd t6, 96(gp)
Current Store : [0x800004c0] : sd fp, 104(gp) -- Store: [0x80003278]:0x00000007FFFFFFBF




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x6', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 1073741824', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x800004e4]:UKSUBW t1, a4, ra
	-[0x800004e8]:sd t1, 112(gp)
Current Store : [0x800004ec] : sd a4, 120(gp) -- Store: [0x80003288]:0x00000003FFFDFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x5', 'rd : x22', 'rs2_w1_val == 4026531839', 'rs1_w1_val == 256', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x8000050c]:UKSUBW s6, a6, t0
	-[0x80000510]:sd s6, 128(gp)
Current Store : [0x80000514] : sd a6, 136(gp) -- Store: [0x80003298]:0x00000100AAAAAAAA




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x9', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 67108864', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000534]:UKSUBW s1, s9, tp
	-[0x80000538]:sd s1, 144(gp)
Current Store : [0x8000053c] : sd s9, 152(gp) -- Store: [0x800032a8]:0x0000001001000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x23', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 2048', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000564]:UKSUBW s7, s10, s2
	-[0x80000568]:sd s7, 160(gp)
Current Store : [0x8000056c] : sd s10, 168(gp) -- Store: [0x800032b8]:0x4000000000000004




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x19', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000590]:UKSUBW s3, a7, t4
	-[0x80000594]:sd s3, 176(gp)
Current Store : [0x80000598] : sd a7, 184(gp) -- Store: [0x800032c8]:0x00000008FFFFFFBF




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x5', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 4294950911', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800005c0]:UKSUBW t0, s1, s4
	-[0x800005c4]:sd t0, 192(gp)
Current Store : [0x800005c8] : sd s1, 200(gp) -- Store: [0x800032d8]:0xFFFFFEFFFFFBFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x31', 'rd : x30', 'rs2_w1_val == 4286578687', 'rs1_w1_val == 1048576', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800005f0]:UKSUBW t5, s4, t6
	-[0x800005f4]:sd t5, 208(gp)
Current Store : [0x800005f8] : sd s4, 216(gp) -- Store: [0x800032e8]:0x00100000FFFFF7FF




Last Coverpoint : ['rs1 : x13', 'rs2 : x17', 'rd : x14', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 4', 'rs1_w1_val == 2863311530']
Last Code Sequence : 
	-[0x80000624]:UKSUBW a4, a3, a7
	-[0x80000628]:sd a4, 0(s1)
Current Store : [0x8000062c] : sd a3, 8(s1) -- Store: [0x800032f8]:0xAAAAAAAA00000011




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x4', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000064c]:UKSUBW tp, t0, a0
	-[0x80000650]:sd tp, 16(s1)
Current Store : [0x80000654] : sd t0, 24(s1) -- Store: [0x80003308]:0x0000000300000400




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x20', 'rs2_w1_val == 4293918719', 'rs1_w1_val == 4294967231', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000674]:UKSUBW s4, t6, gp
	-[0x80000678]:sd s4, 32(s1)
Current Store : [0x8000067c] : sd t6, 40(s1) -- Store: [0x80003318]:0xFFFFFFBFFFFFFFFB




Last Coverpoint : ['rs1 : x3', 'rs2 : x6', 'rd : x13', 'rs2_w1_val == 4294443007', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x800006a4]:UKSUBW a3, gp, t1
	-[0x800006a8]:sd a3, 48(s1)
Current Store : [0x800006ac] : sd gp, 56(s1) -- Store: [0x80003328]:0xFFDFFFFF00004000




Last Coverpoint : ['rs1 : x10', 'rs2 : x8', 'rd : x12', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800006d8]:UKSUBW a2, a0, fp
	-[0x800006dc]:sd a2, 64(s1)
Current Store : [0x800006e0] : sd a0, 72(s1) -- Store: [0x80003338]:0x00040000FFFBFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rd : x1', 'rs2_w1_val == 4294836223', 'rs2_w0_val == 131072', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000704]:UKSUBW ra, t3, s10
	-[0x80000708]:sd ra, 80(s1)
Current Store : [0x8000070c] : sd t3, 88(s1) -- Store: [0x80003348]:0x0000800001000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x10', 'rs2_w1_val == 4294901759']
Last Code Sequence : 
	-[0x8000072c]:UKSUBW a0, s8, s5
	-[0x80000730]:sd a0, 96(s1)
Current Store : [0x80000734] : sd s8, 104(s1) -- Store: [0x80003358]:0x001000000000000B




Last Coverpoint : ['rs1 : x4', 'rs2 : x2', 'rd : x24', 'rs2_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80000758]:UKSUBW s8, tp, sp
	-[0x8000075c]:sd s8, 112(s1)
Current Store : [0x80000760] : sd tp, 120(s1) -- Store: [0x80003368]:0xFFDFFFFF0000000C




Last Coverpoint : ['rs1 : x18', 'rs2 : x12', 'rd : x8', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 4294967291', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80000780]:UKSUBW fp, s2, a2
	-[0x80000784]:sd fp, 128(s1)
Current Store : [0x80000788] : sd s2, 136(s1) -- Store: [0x80003378]:0xFFFFFFDFFFFDFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x26', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800007ac]:UKSUBW s10, s11, t5
	-[0x800007b0]:sd s10, 144(s1)
Current Store : [0x800007b4] : sd s11, 152(s1) -- Store: [0x80003388]:0x0000000604000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x18', 'rs2_w1_val == 4294965247', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800007dc]:UKSUBW s2, s3, a6
	-[0x800007e0]:sd s2, 160(s1)
Current Store : [0x800007e4] : sd s3, 168(s1) -- Store: [0x80003398]:0x7FFFFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x7', 'rd : x21', 'rs1_w0_val == 0', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 33554432', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000804]:UKSUBW s5, zero, t2
	-[0x80000808]:sd s5, 176(s1)
Current Store : [0x8000080c] : sd zero, 184(s1) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x3', 'rs2_w1_val == 4294966783', 'rs1_w1_val == 32', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000830]:UKSUBW gp, t5, t3
	-[0x80000834]:sd gp, 192(s1)
Current Store : [0x80000838] : sd t5, 200(s1) -- Store: [0x800033b8]:0x00000020FBFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x16', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 256', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000850]:UKSUBW a6, s6, s8
	-[0x80000854]:sd a6, 208(s1)
Current Store : [0x80000858] : sd s6, 216(s1) -- Store: [0x800033c8]:0x0000000802000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x29', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000874]:UKSUBW t4, a2, s3
	-[0x80000878]:sd t4, 224(s1)
Current Store : [0x8000087c] : sd a2, 232(s1) -- Store: [0x800033d8]:0x0000000D01000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x7', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000898]:UKSUBW t2, a1, zero
	-[0x8000089c]:sd t2, 240(s1)
Current Store : [0x800008a0] : sd a1, 248(s1) -- Store: [0x800033e8]:0x00000100FFFFFFEF




Last Coverpoint : ['rs1 : x1', 'rs2 : x25', 'rd : x17', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 1', 'rs1_w1_val == 4194304', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008c8]:UKSUBW a7, ra, s9
	-[0x800008cc]:sd a7, 0(sp)
Current Store : [0x800008d0] : sd ra, 8(sp) -- Store: [0x800033f8]:0x004000007FFFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x9', 'rd : x25', 'rs2_w1_val == 4294967287', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800008f0]:UKSUBW s9, t4, s1
	-[0x800008f4]:sd s9, 16(sp)
Current Store : [0x800008f8] : sd t4, 24(sp) -- Store: [0x80003408]:0xFFFFFFFD00000013




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80000918]:UKSUBW t6, t5, t4
	-[0x8000091c]:sd t6, 32(sp)
Current Store : [0x80000920] : sd t5, 40(sp) -- Store: [0x80003418]:0xFF7FFFFF00000003




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000093c]:UKSUBW t6, t5, t4
	-[0x80000940]:sd t6, 48(sp)
Current Store : [0x80000944] : sd t5, 56(sp) -- Store: [0x80003428]:0x000000010000000E




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 4294967294', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x80000964]:UKSUBW t6, t5, t4
	-[0x80000968]:sd t6, 64(sp)
Current Store : [0x8000096c] : sd t5, 72(sp) -- Store: [0x80003438]:0xFBFFFFFF0000000C




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs1_w1_val == 2097152', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000988]:UKSUBW t6, t5, t4
	-[0x8000098c]:sd t6, 80(sp)
Current Store : [0x80000990] : sd t5, 88(sp) -- Store: [0x80003448]:0x0020000000000080




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 134217728', 'rs1_w1_val == 4294966271', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800009b4]:UKSUBW t6, t5, t4
	-[0x800009b8]:sd t6, 96(sp)
Current Store : [0x800009bc] : sd t5, 104(sp) -- Store: [0x80003458]:0xFFFFFBFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 1024', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800009dc]:UKSUBW t6, t5, t4
	-[0x800009e0]:sd t6, 112(sp)
Current Store : [0x800009e4] : sd t5, 120(sp) -- Store: [0x80003468]:0x00200000FDFFFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 8388608', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000a08]:UKSUBW t6, t5, t4
	-[0x80000a0c]:sd t6, 128(sp)
Current Store : [0x80000a10] : sd t5, 136(sp) -- Store: [0x80003478]:0x00800000FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == 33554432', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000a2c]:UKSUBW t6, t5, t4
	-[0x80000a30]:sd t6, 144(sp)
Current Store : [0x80000a34] : sd t5, 152(sp) -- Store: [0x80003488]:0x0200000000000002




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == 512', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000a5c]:UKSUBW t6, t5, t4
	-[0x80000a60]:sd t6, 160(sp)
Current Store : [0x80000a64] : sd t5, 168(sp) -- Store: [0x80003498]:0x00000200FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 2048', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000a84]:UKSUBW t6, t5, t4
	-[0x80000a88]:sd t6, 176(sp)
Current Store : [0x80000a8c] : sd t5, 184(sp) -- Store: [0x800034a8]:0x00000800FFFFBFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 4294836223', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000ab4]:UKSUBW t6, t5, t4
	-[0x80000ab8]:sd t6, 192(sp)
Current Store : [0x80000abc] : sd t5, 200(sp) -- Store: [0x800034b8]:0xFFFFFF7FDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000ad8]:UKSUBW t6, t5, t4
	-[0x80000adc]:sd t6, 208(sp)
Current Store : [0x80000ae0] : sd t5, 216(sp) -- Store: [0x800034c8]:0x0000000500000007




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 4194304', 'rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80000b00]:UKSUBW t6, t5, t4
	-[0x80000b04]:sd t6, 224(sp)
Current Store : [0x80000b08] : sd t5, 232(sp) -- Store: [0x800034d8]:0xFFFFFFFE00000007




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b24]:UKSUBW t6, t5, t4
	-[0x80000b28]:sd t6, 240(sp)
Current Store : [0x80000b2c] : sd t5, 248(sp) -- Store: [0x800034e8]:0x0000000800020000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000b54]:UKSUBW t6, t5, t4
	-[0x80000b58]:sd t6, 256(sp)
Current Store : [0x80000b5c] : sd t5, 264(sp) -- Store: [0x800034f8]:0x00004000FFFFFFFB




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 16777216', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000b74]:UKSUBW t6, t5, t4
	-[0x80000b78]:sd t6, 272(sp)
Current Store : [0x80000b7c] : sd t5, 280(sp) -- Store: [0x80003508]:0x0000001320000000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000b98]:UKSUBW t6, t5, t4
	-[0x80000b9c]:sd t6, 288(sp)
Current Store : [0x80000ba0] : sd t5, 296(sp) -- Store: [0x80003518]:0x0000000500800000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 536870912', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000bc4]:UKSUBW t6, t5, t4
	-[0x80000bc8]:sd t6, 304(sp)
Current Store : [0x80000bcc] : sd t5, 312(sp) -- Store: [0x80003528]:0x7FFFFFFFFF7FFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 524288', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000bf0]:UKSUBW t6, t5, t4
	-[0x80000bf4]:sd t6, 320(sp)
Current Store : [0x80000bf8] : sd t5, 328(sp) -- Store: [0x80003538]:0x00080000EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000c18]:UKSUBW t6, t5, t4
	-[0x80000c1c]:sd t6, 336(sp)
Current Store : [0x80000c20] : sd t5, 344(sp) -- Store: [0x80003548]:0x040000000000000A




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c40]:UKSUBW t6, t5, t4
	-[0x80000c44]:sd t6, 352(sp)
Current Store : [0x80000c48] : sd t5, 360(sp) -- Store: [0x80003558]:0x0000080000040000




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w1_val == 4293918719', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c6c]:UKSUBW t6, t5, t4
	-[0x80000c70]:sd t6, 368(sp)
Current Store : [0x80000c74] : sd t5, 376(sp) -- Store: [0x80003568]:0xFFEFFFFF00010000




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c8c]:UKSUBW t6, t5, t4
	-[0x80000c90]:sd t6, 384(sp)
Current Store : [0x80000c94] : sd t5, 392(sp) -- Store: [0x80003578]:0x0000004000002000




Last Coverpoint : ['rs2_w0_val == 4294934527', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cbc]:UKSUBW t6, t5, t4
	-[0x80000cc0]:sd t6, 400(sp)
Current Store : [0x80000cc4] : sd t5, 408(sp) -- Store: [0x80003588]:0xFFFFFBFF00001000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000ce8]:UKSUBW t6, t5, t4
	-[0x80000cec]:sd t6, 416(sp)
Current Store : [0x80000cf0] : sd t5, 424(sp) -- Store: [0x80003598]:0x0000000C00000800




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 4294959103', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d10]:UKSUBW t6, t5, t4
	-[0x80000d14]:sd t6, 432(sp)
Current Store : [0x80000d18] : sd t5, 440(sp) -- Store: [0x800035a8]:0xFFFFFF7F00000200




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d38]:UKSUBW t6, t5, t4
	-[0x80000d3c]:sd t6, 448(sp)
Current Store : [0x80000d40] : sd t5, 456(sp) -- Store: [0x800035b8]:0x5555555500000100




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000d60]:UKSUBW t6, t5, t4
	-[0x80000d64]:sd t6, 464(sp)
Current Store : [0x80000d68] : sd t5, 472(sp) -- Store: [0x800035c8]:0xFFFFFBFF00000020




Last Coverpoint : ['rs1_w1_val == 4096', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d90]:UKSUBW t6, t5, t4
	-[0x80000d94]:sd t6, 480(sp)
Current Store : [0x80000d98] : sd t5, 488(sp) -- Store: [0x800035d8]:0x0000100000000010




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000db8]:UKSUBW t6, t5, t4
	-[0x80000dbc]:sd t6, 496(sp)
Current Store : [0x80000dc0] : sd t5, 504(sp) -- Store: [0x800035e8]:0x0000000800000008




Last Coverpoint : ['rs2_w0_val == 4278190079', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000de0]:UKSUBW t6, t5, t4
	-[0x80000de4]:sd t6, 512(sp)
Current Store : [0x80000de8] : sd t5, 520(sp) -- Store: [0x800035f8]:0x0000400000000001




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x80000e0c]:UKSUBW t6, t5, t4
	-[0x80000e10]:sd t6, 528(sp)
Current Store : [0x80000e14] : sd t5, 536(sp) -- Store: [0x80003608]:0xFFFF7FFF00000003




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == 4294959103', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000e34]:UKSUBW t6, t5, t4
	-[0x80000e38]:sd t6, 544(sp)
Current Store : [0x80000e3c] : sd t5, 552(sp) -- Store: [0x80003618]:0xFFFFDFFFFFFFFF7F




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000e5c]:UKSUBW t6, t5, t4
	-[0x80000e60]:sd t6, 560(sp)
Current Store : [0x80000e64] : sd t5, 568(sp) -- Store: [0x80003628]:0x0000000EFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000e84]:UKSUBW t6, t5, t4
	-[0x80000e88]:sd t6, 576(sp)
Current Store : [0x80000e8c] : sd t5, 584(sp) -- Store: [0x80003638]:0x0010000000100000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000eb0]:UKSUBW t6, t5, t4
	-[0x80000eb4]:sd t6, 592(sp)
Current Store : [0x80000eb8] : sd t5, 600(sp) -- Store: [0x80003648]:0xFDFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000ed4]:UKSUBW t6, t5, t4
	-[0x80000ed8]:sd t6, 608(sp)
Current Store : [0x80000edc] : sd t5, 616(sp) -- Store: [0x80003658]:0x0000000C00100000




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80000efc]:UKSUBW t6, t5, t4
	-[0x80000f00]:sd t6, 624(sp)
Current Store : [0x80000f04] : sd t5, 632(sp) -- Store: [0x80003668]:0x0000000AEFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000f24]:UKSUBW t6, t5, t4
	-[0x80000f28]:sd t6, 640(sp)
Current Store : [0x80000f2c] : sd t5, 648(sp) -- Store: [0x80003678]:0x00400000FEFFFFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 4294967295']
Last Code Sequence : 
	-[0x80000f48]:UKSUBW t6, t5, t4
	-[0x80000f4c]:sd t6, 656(sp)
Current Store : [0x80000f50] : sd t5, 664(sp) -- Store: [0x80003688]:0xFFFFFFFF0000000E




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x80000f6c]:UKSUBW t6, t5, t4
	-[0x80000f70]:sd t6, 672(sp)
Current Store : [0x80000f74] : sd t5, 680(sp) -- Store: [0x80003698]:0x0000010000010000




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80000f90]:UKSUBW t6, t5, t4
	-[0x80000f94]:sd t6, 688(sp)
Current Store : [0x80000f98] : sd t5, 696(sp) -- Store: [0x800036a8]:0x00000100FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80000fb4]:UKSUBW t6, t5, t4
	-[0x80000fb8]:sd t6, 704(sp)
Current Store : [0x80000fbc] : sd t5, 712(sp) -- Store: [0x800036b8]:0xFFFFFEFF00000006




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000fd8]:UKSUBW t6, t5, t4
	-[0x80000fdc]:sd t6, 720(sp)
Current Store : [0x80000fe0] : sd t5, 728(sp) -- Store: [0x800036c8]:0x0200000008000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000ffc]:UKSUBW t6, t5, t4
	-[0x80001000]:sd t6, 736(sp)
Current Store : [0x80001004] : sd t5, 744(sp) -- Store: [0x800036d8]:0x0000000B00080000




Last Coverpoint : ['rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001030]:UKSUBW t6, t5, t4
	-[0x80001034]:sd t6, 752(sp)
Current Store : [0x80001038] : sd t5, 760(sp) -- Store: [0x800036e8]:0x00004000FFDFFFFF




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80001058]:UKSUBW t6, t5, t4
	-[0x8000105c]:sd t6, 768(sp)
Current Store : [0x80001060] : sd t5, 776(sp) -- Store: [0x800036f8]:0xFFFFEFFFFDFFFFFF




Last Coverpoint : ['rs2_w0_val == 3221225471', 'rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x80001078]:UKSUBW t6, t5, t4
	-[0x8000107c]:sd t6, 784(sp)
Current Store : [0x80001080] : sd t5, 792(sp) -- Store: [0x80003708]:0xFFFFFFFB01000000




Last Coverpoint : ['rs2_w0_val == 4160749567', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800010a0]:UKSUBW t6, t5, t4
	-[0x800010a4]:sd t6, 800(sp)
Current Store : [0x800010a8] : sd t5, 808(sp) -- Store: [0x80003718]:0x000000800000000E




Last Coverpoint : ['rs2_w0_val == 4227858431', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800010c8]:UKSUBW t6, t5, t4
	-[0x800010cc]:sd t6, 816(sp)
Current Store : [0x800010d0] : sd t5, 824(sp) -- Store: [0x80003728]:0x0000000EFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800010f4]:UKSUBW t6, t5, t4
	-[0x800010f8]:sd t6, 832(sp)
Current Store : [0x800010fc] : sd t5, 840(sp) -- Store: [0x80003738]:0x0000000DFFFFBFFF




Last Coverpoint : ['rs2_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80001120]:UKSUBW t6, t5, t4
	-[0x80001124]:sd t6, 848(sp)
Current Store : [0x80001128] : sd t5, 856(sp) -- Store: [0x80003748]:0xFFFFFFFDAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001144]:UKSUBW t6, t5, t4
	-[0x80001148]:sd t6, 864(sp)
Current Store : [0x8000114c] : sd t5, 872(sp) -- Store: [0x80003758]:0x00000002FFFFFF7F




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000116c]:UKSUBW t6, t5, t4
	-[0x80001170]:sd t6, 880(sp)
Current Store : [0x80001174] : sd t5, 888(sp) -- Store: [0x80003768]:0xAAAAAAAAFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x80001194]:UKSUBW t6, t5, t4
	-[0x80001198]:sd t6, 896(sp)
Current Store : [0x8000119c] : sd t5, 904(sp) -- Store: [0x80003778]:0xFFF7FFFFFFDFFFFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x800011b8]:UKSUBW t6, t5, t4
	-[0x800011bc]:sd t6, 912(sp)
Current Store : [0x800011c0] : sd t5, 920(sp) -- Store: [0x80003788]:0x0080000000000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x800011e0]:UKSUBW t6, t5, t4
	-[0x800011e4]:sd t6, 928(sp)
Current Store : [0x800011e8] : sd t5, 936(sp) -- Store: [0x80003798]:0x00000005FFFDFFFF




Last Coverpoint : ['rs2_w0_val == 4294967295', 'rs1_w1_val == 4294705151']
Last Code Sequence : 
	-[0x8000120c]:UKSUBW t6, t5, t4
	-[0x80001210]:sd t6, 944(sp)
Current Store : [0x80001214] : sd t5, 952(sp) -- Store: [0x800037a8]:0xFFFBFFFF00000008




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == 0', 'rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80001230]:UKSUBW t6, t5, t4
	-[0x80001234]:sd t6, 960(sp)
Current Store : [0x80001238] : sd t5, 968(sp) -- Store: [0x800037b8]:0xFFEFFFFF0000000C




Last Coverpoint : ['rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x80001250]:UKSUBW t6, t5, t4
	-[0x80001254]:sd t6, 976(sp)
Current Store : [0x80001258] : sd t5, 984(sp) -- Store: [0x800037c8]:0xBFFFFFFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80001274]:UKSUBW t6, t5, t4
	-[0x80001278]:sd t6, 992(sp)
Current Store : [0x8000127c] : sd t5, 1000(sp) -- Store: [0x800037d8]:0xDFFFFFFF00000009




Last Coverpoint : ['rs1_w1_val == 4026531839', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800012a8]:UKSUBW t6, t5, t4
	-[0x800012ac]:sd t6, 1008(sp)
Current Store : [0x800012b0] : sd t5, 1016(sp) -- Store: [0x800037e8]:0xEFFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x800012d8]:UKSUBW t6, t5, t4
	-[0x800012dc]:sd t6, 1024(sp)
Current Store : [0x800012e0] : sd t5, 1032(sp) -- Store: [0x800037f8]:0xF7FFFFFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == 4278190079']
Last Code Sequence : 
	-[0x80001300]:UKSUBW t6, t5, t4
	-[0x80001304]:sd t6, 1040(sp)
Current Store : [0x80001308] : sd t5, 1048(sp) -- Store: [0x80003808]:0xFEFFFFFF01000000




Last Coverpoint : ['rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x80001320]:UKSUBW t6, t5, t4
	-[0x80001324]:sd t6, 1056(sp)
Current Store : [0x80001328] : sd t5, 1064(sp) -- Store: [0x80003818]:0xFFBFFFFF00800000




Last Coverpoint : ['rs1_w1_val == 4294836223']
Last Code Sequence : 
	-[0x8000134c]:UKSUBW t6, t5, t4
	-[0x80001350]:sd t6, 1072(sp)
Current Store : [0x80001354] : sd t5, 1080(sp) -- Store: [0x80003828]:0xFFFDFFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == 4294901759']
Last Code Sequence : 
	-[0x80001380]:UKSUBW t6, t5, t4
	-[0x80001384]:sd t6, 1088(sp)
Current Store : [0x80001388] : sd t5, 1096(sp) -- Store: [0x80003838]:0xFFFEFFFF0000000D




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 1073741824', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x800013b0]:UKSUBW t6, t5, t4
	-[0x800013b4]:sd t6, 1104(sp)
Current Store : [0x800013b8] : sd t5, 1112(sp) -- Store: [0x80003848]:0xFFFFBFFF0000000C




Last Coverpoint : ['rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x800013d4]:UKSUBW t6, t5, t4
	-[0x800013d8]:sd t6, 1120(sp)
Current Store : [0x800013dc] : sd t5, 1128(sp) -- Store: [0x80003858]:0xFFFFF7FFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w1_val == 4294966783', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80001400]:UKSUBW t6, t5, t4
	-[0x80001404]:sd t6, 1136(sp)
Current Store : [0x80001408] : sd t5, 1144(sp) -- Store: [0x80003868]:0xFFFFFDFF00000040




Last Coverpoint : ['rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x80001424]:UKSUBW t6, t5, t4
	-[0x80001428]:sd t6, 1152(sp)
Current Store : [0x8000142c] : sd t5, 1160(sp) -- Store: [0x80003878]:0xFFFFFFEF00001000




Last Coverpoint : ['rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80001448]:UKSUBW t6, t5, t4
	-[0x8000144c]:sd t6, 1168(sp)
Current Store : [0x80001450] : sd t5, 1176(sp) -- Store: [0x80003888]:0xFFFFFFF704000000




Last Coverpoint : ['rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x80001470]:UKSUBW t6, t5, t4
	-[0x80001474]:sd t6, 1184(sp)
Current Store : [0x80001478] : sd t5, 1192(sp) -- Store: [0x80003898]:0x8000000000000040




Last Coverpoint : ['rs1_w1_val == 536870912', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800014a4]:UKSUBW t6, t5, t4
	-[0x800014a8]:sd t6, 1200(sp)
Current Store : [0x800014ac] : sd t5, 1208(sp) -- Store: [0x800038a8]:0x20000000FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800014d0]:UKSUBW t6, t5, t4
	-[0x800014d4]:sd t6, 1216(sp)
Current Store : [0x800014d8] : sd t5, 1224(sp) -- Store: [0x800038b8]:0x1000000000001000




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x800014f4]:UKSUBW t6, t5, t4
	-[0x800014f8]:sd t6, 1232(sp)
Current Store : [0x800014fc] : sd t5, 1240(sp) -- Store: [0x800038c8]:0x0800000000000001




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001514]:UKSUBW t6, t5, t4
	-[0x80001518]:sd t6, 1248(sp)
Current Store : [0x8000151c] : sd t5, 1256(sp) -- Store: [0x800038d8]:0x01000000FFFFFDFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000153c]:UKSUBW t6, t5, t4
	-[0x80001540]:sd t6, 1264(sp)
Current Store : [0x80001544] : sd t5, 1272(sp) -- Store: [0x800038e8]:0x0000040000002000




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001560]:UKSUBW t6, t5, t4
	-[0x80001564]:sd t6, 1280(sp)
Current Store : [0x80001568] : sd t5, 1288(sp) -- Store: [0x800038f8]:0x00000004FFFFFFFB




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 256', 'rs1_w1_val == 0', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x8000158c]:UKSUBW t6, t5, t4
	-[0x80001590]:sd t6, 1296(sp)
Current Store : [0x80001594] : sd t5, 1304(sp) -- Store: [0x80003908]:0x00000000FFFBFFFF




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800015c0]:UKSUBW t6, t5, t4
	-[0x800015c4]:sd t6, 1312(sp)
Current Store : [0x800015c8] : sd t5, 1320(sp) -- Store: [0x80003918]:0xDFFFFFFF55555555




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800015ec]:UKSUBW t6, t5, t4
	-[0x800015f0]:sd t6, 1328(sp)
Current Store : [0x800015f4] : sd t5, 1336(sp) -- Store: [0x80003928]:0x00000100F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x8000160c]:UKSUBW t6, t5, t4
	-[0x80001610]:sd t6, 1344(sp)
Current Store : [0x80001614] : sd t5, 1352(sp) -- Store: [0x80003938]:0x0002000002000000




Last Coverpoint : ['rs2_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000163c]:UKSUBW t6, t5, t4
	-[0x80001640]:sd t6, 1360(sp)
Current Store : [0x80001644] : sd t5, 1368(sp) -- Store: [0x80003948]:0x0000000DFFDFFFFF




Last Coverpoint : ['rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80001668]:UKSUBW t6, t5, t4
	-[0x8000166c]:sd t6, 1376(sp)
Current Store : [0x80001670] : sd t5, 1384(sp) -- Store: [0x80003958]:0x00200000FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80001694]:UKSUBW t6, t5, t4
	-[0x80001698]:sd t6, 1392(sp)
Current Store : [0x8000169c] : sd t5, 1400(sp) -- Store: [0x80003968]:0x0000001000080000




Last Coverpoint : ['rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800016b8]:UKSUBW t6, t5, t4
	-[0x800016bc]:sd t6, 1408(sp)
Current Store : [0x800016c0] : sd t5, 1416(sp) -- Store: [0x80003978]:0x00000008FFFFFFBF




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800016ec]:UKSUBW t6, t5, t4
	-[0x800016f0]:sd t6, 1424(sp)
Current Store : [0x800016f4] : sd t5, 1432(sp) -- Store: [0x80003988]:0x0010000000200000




Last Coverpoint : ['rs2_w0_val == 4294967039', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001714]:UKSUBW t6, t5, t4
	-[0x80001718]:sd t6, 1440(sp)
Current Store : [0x8000171c] : sd t5, 1448(sp) -- Store: [0x80003998]:0x0001000000040000




Last Coverpoint : ['rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x8000173c]:UKSUBW t6, t5, t4
	-[0x80001740]:sd t6, 1456(sp)
Current Store : [0x80001744] : sd t5, 1464(sp) -- Store: [0x800039a8]:0x0000001100000100




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80001770]:UKSUBW t6, t5, t4
	-[0x80001774]:sd t6, 1472(sp)
Current Store : [0x80001778] : sd t5, 1480(sp) -- Store: [0x800039b8]:0x08000000FFFFDFFF




Last Coverpoint : ['rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001794]:UKSUBW t6, t5, t4
	-[0x80001798]:sd t6, 1488(sp)
Current Store : [0x8000179c] : sd t5, 1496(sp) -- Store: [0x800039c8]:0x00000007FEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800017c4]:UKSUBW t6, t5, t4
	-[0x800017c8]:sd t6, 1504(sp)
Current Store : [0x800017cc] : sd t5, 1512(sp) -- Store: [0x800039d8]:0xFDFFFFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800017f0]:UKSUBW t6, t5, t4
	-[0x800017f4]:sd t6, 1520(sp)
Current Store : [0x800017f8] : sd t5, 1528(sp) -- Store: [0x800039e8]:0xFFF7FFFFFFF7FFFF




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x8000181c]:UKSUBW t6, t5, t4
	-[0x80001820]:sd t6, 1536(sp)
Current Store : [0x80001824] : sd t5, 1544(sp) -- Store: [0x800039f8]:0x00040000FFFFFEFF




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80001848]:UKSUBW t6, t5, t4
	-[0x8000184c]:sd t6, 1552(sp)
Current Store : [0x80001850] : sd t5, 1560(sp) -- Store: [0x80003a08]:0x04000000FFFFFFDF




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 512', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80001870]:UKSUBW t6, t5, t4
	-[0x80001874]:sd t6, 1568(sp)
Current Store : [0x80001878] : sd t5, 1576(sp) -- Store: [0x80003a18]:0xAAAAAAAAFFFFFFF7




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001890]:UKSUBW t6, t5, t4
	-[0x80001894]:sd t6, 1584(sp)
Current Store : [0x80001898] : sd t5, 1592(sp) -- Store: [0x80003a28]:0x00000200FFFFFFFB




Last Coverpoint : ['rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800018b8]:UKSUBW t6, t5, t4
	-[0x800018bc]:sd t6, 1600(sp)
Current Store : [0x800018c0] : sd t5, 1608(sp) -- Store: [0x80003a38]:0x0000040080000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800018dc]:UKSUBW t6, t5, t4
	-[0x800018e0]:sd t6, 1616(sp)
Current Store : [0x800018e4] : sd t5, 1624(sp) -- Store: [0x80003a48]:0x0200000040000000




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001900]:UKSUBW t6, t5, t4
	-[0x80001904]:sd t6, 1632(sp)
Current Store : [0x80001908] : sd t5, 1640(sp) -- Store: [0x80003a58]:0x000000050000000E




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001928]:UKSUBW t6, t5, t4
	-[0x8000192c]:sd t6, 1648(sp)
Current Store : [0x80001930] : sd t5, 1656(sp) -- Store: [0x80003a68]:0xFFFBFFFF10000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80001950]:UKSUBW t6, t5, t4
	-[0x80001954]:sd t6, 1664(sp)
Current Store : [0x80001958] : sd t5, 1672(sp) -- Store: [0x80003a78]:0xFFFF7FFFBFFFFFFF




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80001980]:UKSUBW t6, t5, t4
	-[0x80001984]:sd t6, 1680(sp)
Current Store : [0x80001988] : sd t5, 1688(sp) -- Store: [0x80003a88]:0x00004000FFFFFFFB




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800019a4]:UKSUBW t6, t5, t4
	-[0x800019a8]:sd t6, 1696(sp)
Current Store : [0x800019ac] : sd t5, 1704(sp) -- Store: [0x80003a98]:0xFFFFEFFF01000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800019cc]:UKSUBW t6, t5, t4
	-[0x800019d0]:sd t6, 1712(sp)
Current Store : [0x800019d4] : sd t5, 1720(sp) -- Store: [0x80003aa8]:0x0000008000400000




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800019f8]:UKSUBW t6, t5, t4
	-[0x800019fc]:sd t6, 1728(sp)
Current Store : [0x80001a00] : sd t5, 1736(sp) -- Store: [0x80003ab8]:0xFFFFFFFF00000008




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 32', 'rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x80001a20]:UKSUBW t6, t5, t4
	-[0x80001a24]:sd t6, 1744(sp)
Current Store : [0x80001a28] : sd t5, 1752(sp) -- Store: [0x80003ac8]:0xFFFFDFFF00000000




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 8192', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80001a48]:UKSUBW t6, t5, t4
	-[0x80001a4c]:sd t6, 1760(sp)
Current Store : [0x80001a50] : sd t5, 1768(sp) -- Store: [0x80003ad8]:0x00002000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 4294967231', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001a6c]:UKSUBW t6, t5, t4
	-[0x80001a70]:sd t6, 1776(sp)
Current Store : [0x80001a74] : sd t5, 1784(sp) -- Store: [0x80003ae8]:0x00000100FFFFFFEF





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

|s.no|            signature             |                                                                                                                                                                   coverpoints                                                                                                                                                                    |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : uksubw<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 32<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 32<br> |[0x800003c0]:UKSUBW a1, s7, s7<br> [0x800003c4]:sd a1, 0(gp)<br>      |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 8<br> - rs2_w0_val == 4294967287<br> - rs1_w1_val == 8<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                                   |[0x800003e4]:UKSUBW a5, a5, a5<br> [0x800003e8]:sd a5, 16(gp)<br>     |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x13<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 4294966271<br>                                                             |[0x8000040c]:UKSUBW zero, t2, a3<br> [0x80000410]:sd zero, 32(gp)<br> |
|   4|[0x80003240]<br>0xFFFFFFFFFFDFBFFF|- rs1 : x2<br> - rs2 : x22<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 4292870143<br>                                                                                   |[0x8000043c]:UKSUBW sp, sp, s6<br> [0x80000440]:sd sp, 48(gp)<br>     |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs1_w1_val == 16<br>                                                                                                                                                                                                                       |[0x80000464]:UKSUBW s11, s5, s11<br> [0x80000468]:sd s11, 64(gp)<br>  |
|   6|[0x80003260]<br>0x0000000000003FF6|- rs1 : x6<br> - rs2 : x11<br> - rd : x28<br> - rs2_w1_val == 2147483647<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                            |[0x8000048c]:UKSUBW t3, t1, a1<br> [0x80000490]:sd t3, 80(gp)<br>     |
|   7|[0x80003270]<br>0xFFFFFFFFFFFFBFBF|- rs1 : x8<br> - rs2 : x14<br> - rd : x31<br> - rs2_w1_val == 3221225471<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                       |[0x800004b8]:UKSUBW t6, fp, a4<br> [0x800004bc]:sd t6, 96(gp)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFBFFDFFFF|- rs1 : x14<br> - rs2 : x1<br> - rd : x6<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                                         |[0x800004e4]:UKSUBW t1, a4, ra<br> [0x800004e8]:sd t1, 112(gp)<br>    |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x5<br> - rd : x22<br> - rs2_w1_val == 4026531839<br> - rs1_w1_val == 256<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                               |[0x8000050c]:UKSUBW s6, a6, t0<br> [0x80000510]:sd s6, 128(gp)<br>    |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x4<br> - rd : x9<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 67108864<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                             |[0x80000534]:UKSUBW s1, s9, tp<br> [0x80000538]:sd s1, 144(gp)<br>    |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x18<br> - rd : x23<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 2048<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 4<br>                                                                                                                                                                                       |[0x80000564]:UKSUBW s7, s10, s2<br> [0x80000568]:sd s7, 160(gp)<br>   |
|  12|[0x800032c0]<br>0x00000000000FFFC0|- rs1 : x17<br> - rs2 : x29<br> - rd : x19<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 4293918719<br>                                                                                                                                                                                                                                      |[0x80000590]:UKSUBW s3, a7, t4<br> [0x80000594]:sd s3, 176(gp)<br>    |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x20<br> - rd : x5<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4294950911<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                          |[0x800005c0]:UKSUBW t0, s1, s4<br> [0x800005c4]:sd t0, 192(gp)<br>    |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x31<br> - rd : x30<br> - rs2_w1_val == 4286578687<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                          |[0x800005f0]:UKSUBW t5, s4, t6<br> [0x800005f4]:sd t5, 208(gp)<br>    |
|  15|[0x800032f0]<br>0x000000000000000D|- rs1 : x13<br> - rs2 : x17<br> - rd : x14<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 4<br> - rs1_w1_val == 2863311530<br>                                                                                                                                                                                                                |[0x80000624]:UKSUBW a4, a3, a7<br> [0x80000628]:sd a4, 0(s1)<br>      |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x10<br> - rd : x4<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                               |[0x8000064c]:UKSUBW tp, t0, a0<br> [0x80000650]:sd tp, 16(s1)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFFFF0|- rs1 : x31<br> - rs2 : x3<br> - rd : x20<br> - rs2_w1_val == 4293918719<br> - rs1_w1_val == 4294967231<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                                        |[0x80000674]:UKSUBW s4, t6, gp<br> [0x80000678]:sd s4, 32(s1)<br>     |
|  18|[0x80003320]<br>0x0000000000003FF6|- rs1 : x3<br> - rs2 : x6<br> - rd : x13<br> - rs2_w1_val == 4294443007<br> - rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                                        |[0x800006a4]:UKSUBW a3, gp, t1<br> [0x800006a8]:sd a3, 48(s1)<br>     |
|  19|[0x80003330]<br>0x00000000007C0000|- rs1 : x10<br> - rs2 : x8<br> - rd : x12<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                            |[0x800006d8]:UKSUBW a2, a0, fp<br> [0x800006dc]:sd a2, 64(s1)<br>     |
|  20|[0x80003340]<br>0x0000000000FE0000|- rs1 : x28<br> - rs2 : x26<br> - rd : x1<br> - rs2_w1_val == 4294836223<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                 |[0x80000704]:UKSUBW ra, t3, s10<br> [0x80000708]:sd ra, 80(s1)<br>    |
|  21|[0x80003350]<br>0x0000000000000008|- rs1 : x24<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                     |[0x8000072c]:UKSUBW a0, s8, s5<br> [0x80000730]:sd a0, 96(s1)<br>     |
|  22|[0x80003360]<br>0x0000000000000008|- rs1 : x4<br> - rs2 : x2<br> - rd : x24<br> - rs2_w1_val == 4294934527<br>                                                                                                                                                                                                                                                                       |[0x80000758]:UKSUBW s8, tp, sp<br> [0x8000075c]:sd s8, 112(s1)<br>    |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x12<br> - rd : x8<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 4294967291<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                                                                        |[0x80000780]:UKSUBW fp, s2, a2<br> [0x80000784]:sd fp, 128(s1)<br>    |
|  24|[0x80003380]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x30<br> - rd : x26<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                         |[0x800007ac]:UKSUBW s10, s11, t5<br> [0x800007b0]:sd s10, 144(s1)<br> |
|  25|[0x80003390]<br>0xFFFFFFFFBFFFFFF5|- rs1 : x19<br> - rs2 : x16<br> - rd : x18<br> - rs2_w1_val == 4294965247<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                                       |[0x800007dc]:UKSUBW s2, s3, a6<br> [0x800007e0]:sd s2, 160(s1)<br>    |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x7<br> - rd : x21<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 0<br>                                                                                                                                                                                              |[0x80000804]:UKSUBW s5, zero, t2<br> [0x80000808]:sd s5, 176(s1)<br>  |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x28<br> - rd : x3<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                |[0x80000830]:UKSUBW gp, t5, t3<br> [0x80000834]:sd gp, 192(s1)<br>    |
|  28|[0x800033c0]<br>0x0000000001FFFF00|- rs1 : x22<br> - rs2 : x24<br> - rd : x16<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 256<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                |[0x80000850]:UKSUBW a6, s6, s8<br> [0x80000854]:sd a6, 208(s1)<br>    |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x19<br> - rd : x29<br> - rs2_w1_val == 4294967167<br> - rs2_w0_val == 4294967231<br>                                                                                                                                                                                                                                      |[0x80000874]:UKSUBW t4, a2, s3<br> [0x80000878]:sd t4, 224(s1)<br>    |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x11<br> - rs2 : x0<br> - rd : x7<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                           |[0x80000898]:UKSUBW t2, a1, zero<br> [0x8000089c]:sd t2, 240(s1)<br>  |
|  31|[0x800033f0]<br>0x000000007FFFFFFE|- rs1 : x1<br> - rs2 : x25<br> - rd : x17<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 1<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                     |[0x800008c8]:UKSUBW a7, ra, s9<br> [0x800008cc]:sd a7, 0(sp)<br>      |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x9<br> - rd : x25<br> - rs2_w1_val == 4294967287<br> - rs2_w0_val == 4294965247<br>                                                                                                                                                                                                                                       |[0x800008f0]:UKSUBW s9, t4, s1<br> [0x800008f4]:sd s9, 16(sp)<br>     |
|  33|[0x80003410]<br>0x0000000000000000|- rs2_w1_val == 4294967291<br> - rs1_w1_val == 4286578687<br>                                                                                                                                                                                                                                                                                     |[0x80000918]:UKSUBW t6, t5, t4<br> [0x8000091c]:sd t6, 32(sp)<br>     |
|  34|[0x80003420]<br>0x0000000000000002|- rs2_w1_val == 4294967293<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x8000093c]:UKSUBW t6, t5, t4<br> [0x80000940]:sd t6, 48(sp)<br>     |
|  35|[0x80003430]<br>0x0000000000000000|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 4294967294<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                                                      |[0x80000964]:UKSUBW t6, t5, t4<br> [0x80000968]:sd t6, 64(sp)<br>     |
|  36|[0x80003440]<br>0x000000000000007C|- rs2_w1_val == 2147483648<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                |[0x80000988]:UKSUBW t6, t5, t4<br> [0x8000098c]:sd t6, 80(sp)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFFF7EFFFFF|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                        |[0x800009b4]:UKSUBW t6, t5, t4<br> [0x800009b8]:sd t6, 96(sp)<br>     |
|  38|[0x80003460]<br>0xFFFFFFFFFDFFFBFF|- rs2_w1_val == 536870912<br> - rs2_w0_val == 1024<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                                             |[0x800009dc]:UKSUBW t6, t5, t4<br> [0x800009e0]:sd t6, 112(sp)<br>    |
|  39|[0x80003470]<br>0x0000000000000003|- rs2_w1_val == 268435456<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                                                          |[0x80000a08]:UKSUBW t6, t5, t4<br> [0x80000a0c]:sd t6, 128(sp)<br>    |
|  40|[0x80003480]<br>0x0000000000000000|- rs2_w1_val == 134217728<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                  |[0x80000a2c]:UKSUBW t6, t5, t4<br> [0x80000a30]:sd t6, 144(sp)<br>    |
|  41|[0x80003490]<br>0x0000000000004000|- rs2_w1_val == 67108864<br> - rs1_w1_val == 512<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                                                               |[0x80000a5c]:UKSUBW t6, t5, t4<br> [0x80000a60]:sd t6, 160(sp)<br>    |
|  42|[0x800034a0]<br>0x000000007FFFBFFF|- rs2_w1_val == 33554432<br> - rs2_w0_val == 2147483648<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                               |[0x80000a84]:UKSUBW t6, t5, t4<br> [0x80000a88]:sd t6, 176(sp)<br>    |
|  43|[0x800034b0]<br>0x0000000000000000|- rs2_w1_val == 16777216<br> - rs2_w0_val == 4294836223<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                         |[0x80000ab4]:UKSUBW t6, t5, t4<br> [0x80000ab8]:sd t6, 192(sp)<br>    |
|  44|[0x800034c0]<br>0x0000000000000000|- rs2_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                       |[0x80000ad8]:UKSUBW t6, t5, t4<br> [0x80000adc]:sd t6, 208(sp)<br>    |
|  45|[0x800034d0]<br>0x0000000000000000|- rs2_w1_val == 4194304<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                                            |[0x80000b00]:UKSUBW t6, t5, t4<br> [0x80000b04]:sd t6, 224(sp)<br>    |
|  46|[0x800034e0]<br>0x000000000001FFEE|- rs2_w1_val == 2097152<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                            |[0x80000b24]:UKSUBW t6, t5, t4<br> [0x80000b28]:sd t6, 240(sp)<br>    |
|  47|[0x800034f0]<br>0x00000000001FFFFC|- rs2_w1_val == 1048576<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                              |[0x80000b54]:UKSUBW t6, t5, t4<br> [0x80000b58]:sd t6, 256(sp)<br>    |
|  48|[0x80003500]<br>0x000000001F000000|- rs2_w1_val == 524288<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                             |[0x80000b74]:UKSUBW t6, t5, t4<br> [0x80000b78]:sd t6, 272(sp)<br>    |
|  49|[0x80003510]<br>0x00000000007FFFF3|- rs2_w1_val == 262144<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                            |[0x80000b98]:UKSUBW t6, t5, t4<br> [0x80000b9c]:sd t6, 288(sp)<br>    |
|  50|[0x80003520]<br>0xFFFFFFFFDF7FFFFF|- rs2_w1_val == 131072<br> - rs2_w0_val == 536870912<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                                                                                           |[0x80000bc4]:UKSUBW t6, t5, t4<br> [0x80000bc8]:sd t6, 304(sp)<br>    |
|  51|[0x80003530]<br>0x0000000000000000|- rs2_w1_val == 65536<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                |[0x80000bf0]:UKSUBW t6, t5, t4<br> [0x80000bf4]:sd t6, 320(sp)<br>    |
|  52|[0x80003540]<br>0x0000000000000000|- rs2_w1_val == 32768<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                             |[0x80000c18]:UKSUBW t6, t5, t4<br> [0x80000c1c]:sd t6, 336(sp)<br>    |
|  53|[0x80003550]<br>0x000000000003FFF8|- rs2_w0_val == 8<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                  |[0x80000c40]:UKSUBW t6, t5, t4<br> [0x80000c44]:sd t6, 352(sp)<br>    |
|  54|[0x80003560]<br>0x0000000000000000|- rs2_w0_val == 268435456<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                            |[0x80000c6c]:UKSUBW t6, t5, t4<br> [0x80000c70]:sd t6, 368(sp)<br>    |
|  55|[0x80003570]<br>0x0000000000000000|- rs1_w1_val == 64<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                   |[0x80000c8c]:UKSUBW t6, t5, t4<br> [0x80000c90]:sd t6, 384(sp)<br>    |
|  56|[0x80003580]<br>0x0000000000000000|- rs2_w0_val == 4294934527<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                           |[0x80000cbc]:UKSUBW t6, t5, t4<br> [0x80000cc0]:sd t6, 400(sp)<br>    |
|  57|[0x80003590]<br>0x00000000000007F3|- rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                                          |[0x80000ce8]:UKSUBW t6, t5, t4<br> [0x80000cec]:sd t6, 416(sp)<br>    |
|  58|[0x800035a0]<br>0x0000000000000000|- rs2_w1_val == 256<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                    |[0x80000d10]:UKSUBW t6, t5, t4<br> [0x80000d14]:sd t6, 432(sp)<br>    |
|  59|[0x800035b0]<br>0x0000000000000000|- rs2_w0_val == 4096<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                   |[0x80000d38]:UKSUBW t6, t5, t4<br> [0x80000d3c]:sd t6, 448(sp)<br>    |
|  60|[0x800035c0]<br>0x0000000000000000|- rs2_w1_val == 128<br> - rs2_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                                            |[0x80000d60]:UKSUBW t6, t5, t4<br> [0x80000d64]:sd t6, 464(sp)<br>    |
|  61|[0x800035d0]<br>0x0000000000000000|- rs1_w1_val == 4096<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                   |[0x80000d90]:UKSUBW t6, t5, t4<br> [0x80000d94]:sd t6, 480(sp)<br>    |
|  62|[0x800035e0]<br>0x0000000000000000|- rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                             |[0x80000db8]:UKSUBW t6, t5, t4<br> [0x80000dbc]:sd t6, 496(sp)<br>    |
|  63|[0x800035f0]<br>0x0000000000000000|- rs2_w0_val == 4278190079<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000de0]:UKSUBW t6, t5, t4<br> [0x80000de4]:sd t6, 512(sp)<br>    |
|  64|[0x80003600]<br>0x0000000000000000|- rs2_w1_val == 16384<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                                                                                                                                                          |[0x80000e0c]:UKSUBW t6, t5, t4<br> [0x80000e10]:sd t6, 528(sp)<br>    |
|  65|[0x80003610]<br>0x0000000000000000|- rs2_w1_val == 8192<br> - rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                            |[0x80000e34]:UKSUBW t6, t5, t4<br> [0x80000e38]:sd t6, 544(sp)<br>    |
|  66|[0x80003620]<br>0x0000000000000000|- rs2_w1_val == 4096<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                           |[0x80000e5c]:UKSUBW t6, t5, t4<br> [0x80000e60]:sd t6, 560(sp)<br>    |
|  67|[0x80003630]<br>0x0000000000000000|- rs2_w1_val == 2048<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                              |[0x80000e84]:UKSUBW t6, t5, t4<br> [0x80000e88]:sd t6, 576(sp)<br>    |
|  68|[0x80003640]<br>0xFFFFFFFFFFF7FFFA|- rs2_w1_val == 1024<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                                                            |[0x80000eb0]:UKSUBW t6, t5, t4<br> [0x80000eb4]:sd t6, 592(sp)<br>    |
|  69|[0x80003650]<br>0x00000000000FFFF3|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                           |[0x80000ed4]:UKSUBW t6, t5, t4<br> [0x80000ed8]:sd t6, 608(sp)<br>    |
|  70|[0x80003660]<br>0x0000000045555555|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                            |[0x80000efc]:UKSUBW t6, t5, t4<br> [0x80000f00]:sd t6, 624(sp)<br>    |
|  71|[0x80003670]<br>0xFFFFFFFFFEFFFFFE|- rs2_w1_val == 32<br> - rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                             |[0x80000f24]:UKSUBW t6, t5, t4<br> [0x80000f28]:sd t6, 640(sp)<br>    |
|  72|[0x80003680]<br>0x0000000000000000|- rs2_w1_val == 16<br> - rs1_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                                             |[0x80000f48]:UKSUBW t6, t5, t4<br> [0x80000f4c]:sd t6, 656(sp)<br>    |
|  73|[0x80003690]<br>0x000000000000FFF4|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                             |[0x80000f6c]:UKSUBW t6, t5, t4<br> [0x80000f70]:sd t6, 672(sp)<br>    |
|  74|[0x800036a0]<br>0xFFFFFFFFFFFFFBFA|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                             |[0x80000f90]:UKSUBW t6, t5, t4<br> [0x80000f94]:sd t6, 688(sp)<br>    |
|  75|[0x800036b0]<br>0x0000000000000000|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                             |[0x80000fb4]:UKSUBW t6, t5, t4<br> [0x80000fb8]:sd t6, 704(sp)<br>    |
|  76|[0x800036c0]<br>0x0000000007FFFFF6|- rs2_w1_val == 4294967295<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                      |[0x80000fd8]:UKSUBW t6, t5, t4<br> [0x80000fdc]:sd t6, 720(sp)<br>    |
|  77|[0x800036d0]<br>0x0000000000000000|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                        |[0x80000ffc]:UKSUBW t6, t5, t4<br> [0x80001000]:sd t6, 736(sp)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFFFAA8AAAAA|- rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                    |[0x80001030]:UKSUBW t6, t5, t4<br> [0x80001034]:sd t6, 752(sp)<br>    |
|  79|[0x800036f0]<br>0x000000007E000000|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                                     |[0x80001058]:UKSUBW t6, t5, t4<br> [0x8000105c]:sd t6, 768(sp)<br>    |
|  80|[0x80003700]<br>0x0000000000000000|- rs2_w0_val == 3221225471<br> - rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                                                                                     |[0x80001078]:UKSUBW t6, t5, t4<br> [0x8000107c]:sd t6, 784(sp)<br>    |
|  81|[0x80003710]<br>0x0000000000000000|- rs2_w0_val == 4160749567<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                            |[0x800010a0]:UKSUBW t6, t5, t4<br> [0x800010a4]:sd t6, 800(sp)<br>    |
|  82|[0x80003720]<br>0x0000000003FF0000|- rs2_w0_val == 4227858431<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                     |[0x800010c8]:UKSUBW t6, t5, t4<br> [0x800010cc]:sd t6, 816(sp)<br>    |
|  83|[0x80003730]<br>0x000000000007C000|- rs2_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                                                                    |[0x800010f4]:UKSUBW t6, t5, t4<br> [0x800010f8]:sd t6, 832(sp)<br>    |
|  84|[0x80003740]<br>0x0000000000000000|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                                                    |[0x80001120]:UKSUBW t6, t5, t4<br> [0x80001124]:sd t6, 848(sp)<br>    |
|  85|[0x80003750]<br>0xFFFFFFFFFFFFFD7F|- rs2_w0_val == 512<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                     |[0x80001144]:UKSUBW t6, t5, t4<br> [0x80001148]:sd t6, 864(sp)<br>    |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFF7D|- rs2_w0_val == 128<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                            |[0x8000116c]:UKSUBW t6, t5, t4<br> [0x80001170]:sd t6, 880(sp)<br>    |
|  87|[0x80003770]<br>0xFFFFFFFFFFDFFFBF|- rs2_w0_val == 64<br> - rs1_w1_val == 4294443007<br>                                                                                                                                                                                                                                                                                             |[0x80001194]:UKSUBW t6, t5, t4<br> [0x80001198]:sd t6, 896(sp)<br>    |
|  88|[0x80003780]<br>0x0000000000000000|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                            |[0x800011b8]:UKSUBW t6, t5, t4<br> [0x800011bc]:sd t6, 912(sp)<br>    |
|  89|[0x80003790]<br>0xFFFFFFFFFFFDFFFD|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                             |[0x800011e0]:UKSUBW t6, t5, t4<br> [0x800011e4]:sd t6, 928(sp)<br>    |
|  90|[0x800037a0]<br>0x0000000000000000|- rs2_w0_val == 4294967295<br> - rs1_w1_val == 4294705151<br>                                                                                                                                                                                                                                                                                     |[0x8000120c]:UKSUBW t6, t5, t4<br> [0x80001210]:sd t6, 944(sp)<br>    |
|  91|[0x800037c0]<br>0x000000007FFFFDFF|- rs1_w1_val == 3221225471<br>                                                                                                                                                                                                                                                                                                                    |[0x80001250]:UKSUBW t6, t5, t4<br> [0x80001254]:sd t6, 976(sp)<br>    |
|  92|[0x800037d0]<br>0x0000000000000000|- rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                                                                    |[0x80001274]:UKSUBW t6, t5, t4<br> [0x80001278]:sd t6, 992(sp)<br>    |
|  93|[0x800037e0]<br>0x0000000000000000|- rs1_w1_val == 4026531839<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                          |[0x800012a8]:UKSUBW t6, t5, t4<br> [0x800012ac]:sd t6, 1008(sp)<br>   |
|  94|[0x800037f0]<br>0x0000000000000000|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                    |[0x800012d8]:UKSUBW t6, t5, t4<br> [0x800012dc]:sd t6, 1024(sp)<br>   |
|  95|[0x80003800]<br>0x0000000000000000|- rs1_w1_val == 4278190079<br>                                                                                                                                                                                                                                                                                                                    |[0x80001300]:UKSUBW t6, t5, t4<br> [0x80001304]:sd t6, 1040(sp)<br>   |
|  96|[0x80003810]<br>0x0000000000000000|- rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                                                                                                    |[0x80001320]:UKSUBW t6, t5, t4<br> [0x80001324]:sd t6, 1056(sp)<br>   |
|  97|[0x80003820]<br>0xFFFFFFFFAA9AAAAA|- rs1_w1_val == 4294836223<br>                                                                                                                                                                                                                                                                                                                    |[0x8000134c]:UKSUBW t6, t5, t4<br> [0x80001350]:sd t6, 1072(sp)<br>   |
|  98|[0x80003830]<br>0x0000000000000000|- rs1_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                                                                    |[0x80001380]:UKSUBW t6, t5, t4<br> [0x80001384]:sd t6, 1088(sp)<br>   |
|  99|[0x80003850]<br>0xFFFFFFFFFFFFFFBD|- rs1_w1_val == 4294965247<br>                                                                                                                                                                                                                                                                                                                    |[0x800013d4]:UKSUBW t6, t5, t4<br> [0x800013d8]:sd t6, 1120(sp)<br>   |
| 100|[0x80003860]<br>0x0000000000000000|- rs2_w0_val == 65536<br> - rs1_w1_val == 4294966783<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                   |[0x80001400]:UKSUBW t6, t5, t4<br> [0x80001404]:sd t6, 1136(sp)<br>   |
| 101|[0x80003870]<br>0x0000000000000FFA|- rs1_w1_val == 4294967279<br>                                                                                                                                                                                                                                                                                                                    |[0x80001424]:UKSUBW t6, t5, t4<br> [0x80001428]:sd t6, 1152(sp)<br>   |
| 102|[0x80003880]<br>0x0000000000000000|- rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                                                                                                                    |[0x80001448]:UKSUBW t6, t5, t4<br> [0x8000144c]:sd t6, 1168(sp)<br>   |
| 103|[0x80003890]<br>0x0000000000000000|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                    |[0x80001470]:UKSUBW t6, t5, t4<br> [0x80001474]:sd t6, 1184(sp)<br>   |
| 104|[0x800038a0]<br>0xFFFFFFFFFFFF7FF8|- rs1_w1_val == 536870912<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                      |[0x800014a4]:UKSUBW t6, t5, t4<br> [0x800014a8]:sd t6, 1200(sp)<br>   |
| 105|[0x800038b0]<br>0x0000000000000000|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                     |[0x800014d0]:UKSUBW t6, t5, t4<br> [0x800014d4]:sd t6, 1216(sp)<br>   |
| 106|[0x800038c0]<br>0x0000000000000000|- rs2_w0_val == 1048576<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                         |[0x800014f4]:UKSUBW t6, t5, t4<br> [0x800014f8]:sd t6, 1232(sp)<br>   |
| 107|[0x800038d0]<br>0xFFFFFFFFFFFFFDF4|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                      |[0x80001514]:UKSUBW t6, t5, t4<br> [0x80001518]:sd t6, 1248(sp)<br>   |
| 108|[0x800038e0]<br>0x0000000000001FF8|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                          |[0x8000153c]:UKSUBW t6, t5, t4<br> [0x80001540]:sd t6, 1264(sp)<br>   |
| 109|[0x800038f0]<br>0xFFFFFFFFFFFFFFF9|- rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                                                             |[0x80001560]:UKSUBW t6, t5, t4<br> [0x80001564]:sd t6, 1280(sp)<br>   |
| 110|[0x80003910]<br>0x0000000055555552|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                    |[0x800015c0]:UKSUBW t6, t5, t4<br> [0x800015c4]:sd t6, 1312(sp)<br>   |
| 111|[0x80003920]<br>0x0000000000000000|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                    |[0x800015ec]:UKSUBW t6, t5, t4<br> [0x800015f0]:sd t6, 1328(sp)<br>   |
| 112|[0x80003930]<br>0x0000000002000000|- rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                        |[0x8000160c]:UKSUBW t6, t5, t4<br> [0x80001610]:sd t6, 1344(sp)<br>   |
| 113|[0x80003940]<br>0x0000000000000000|- rs2_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                                    |[0x8000163c]:UKSUBW t6, t5, t4<br> [0x80001640]:sd t6, 1360(sp)<br>   |
| 114|[0x80003950]<br>0xFFFFFFFFBFBFFFFF|- rs1_w0_val == 4290772991<br>                                                                                                                                                                                                                                                                                                                    |[0x80001668]:UKSUBW t6, t5, t4<br> [0x8000166c]:sd t6, 1376(sp)<br>   |
| 115|[0x80003960]<br>0x0000000000000000|- rs2_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                                                                    |[0x80001694]:UKSUBW t6, t5, t4<br> [0x80001698]:sd t6, 1392(sp)<br>   |
| 116|[0x80003970]<br>0x00000000000001C0|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                    |[0x800016b8]:UKSUBW t6, t5, t4<br> [0x800016bc]:sd t6, 1408(sp)<br>   |
| 117|[0x80003980]<br>0x0000000000000000|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                       |[0x800016ec]:UKSUBW t6, t5, t4<br> [0x800016f0]:sd t6, 1424(sp)<br>   |
| 118|[0x80003990]<br>0x0000000000000000|- rs2_w0_val == 4294967039<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                          |[0x80001714]:UKSUBW t6, t5, t4<br> [0x80001718]:sd t6, 1440(sp)<br>   |
| 119|[0x800039a0]<br>0x0000000000000000|- rs2_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                    |[0x8000173c]:UKSUBW t6, t5, t4<br> [0x80001740]:sd t6, 1456(sp)<br>   |
| 120|[0x800039b0]<br>0xFFFFFFFFFFFFDFF9|- rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                                                                                                                    |[0x80001770]:UKSUBW t6, t5, t4<br> [0x80001774]:sd t6, 1472(sp)<br>   |
| 121|[0x800039c0]<br>0x0000000000000000|- rs2_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                                                    |[0x80001794]:UKSUBW t6, t5, t4<br> [0x80001798]:sd t6, 1488(sp)<br>   |
| 122|[0x800039d0]<br>0xFFFFFFFFFFFFEFFC|- rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                                                                    |[0x800017c4]:UKSUBW t6, t5, t4<br> [0x800017c8]:sd t6, 1504(sp)<br>   |
| 123|[0x800039e0]<br>0x0000000000000000|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                                                    |[0x800017f0]:UKSUBW t6, t5, t4<br> [0x800017f4]:sd t6, 1520(sp)<br>   |
| 124|[0x800039f0]<br>0xFFFFFFFFFFFFFAFF|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                    |[0x8000181c]:UKSUBW t6, t5, t4<br> [0x80001820]:sd t6, 1536(sp)<br>   |
| 125|[0x80003a00]<br>0x00000000000FFFE0|- rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                    |[0x80001848]:UKSUBW t6, t5, t4<br> [0x8000184c]:sd t6, 1552(sp)<br>   |
| 126|[0x80003a20]<br>0xFFFFFFFFFF7FFFFB|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                       |[0x80001890]:UKSUBW t6, t5, t4<br> [0x80001894]:sd t6, 1584(sp)<br>   |
| 127|[0x80003a30]<br>0x0000000000000000|- rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                    |[0x800018b8]:UKSUBW t6, t5, t4<br> [0x800018bc]:sd t6, 1600(sp)<br>   |
| 128|[0x80003a40]<br>0x000000003FFFFFEF|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                    |[0x800018dc]:UKSUBW t6, t5, t4<br> [0x800018e0]:sd t6, 1616(sp)<br>   |
| 129|[0x80003a50]<br>0x0000000000000000|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                       |[0x80001900]:UKSUBW t6, t5, t4<br> [0x80001904]:sd t6, 1632(sp)<br>   |
| 130|[0x80003a60]<br>0x000000000FFFFFEE|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                     |[0x80001928]:UKSUBW t6, t5, t4<br> [0x8000192c]:sd t6, 1648(sp)<br>   |
| 131|[0x80003a70]<br>0xFFFFFFFFBFF7FFFF|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                                        |[0x80001950]:UKSUBW t6, t5, t4<br> [0x80001954]:sd t6, 1664(sp)<br>   |
| 132|[0x80003a80]<br>0xFFFFFFFFFFFBFFFB|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                        |[0x80001980]:UKSUBW t6, t5, t4<br> [0x80001984]:sd t6, 1680(sp)<br>   |
| 133|[0x80003a90]<br>0x0000000000FF8000|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                         |[0x800019a4]:UKSUBW t6, t5, t4<br> [0x800019a8]:sd t6, 1696(sp)<br>   |
| 134|[0x80003aa0]<br>0x00000000003FFC00|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                       |[0x800019cc]:UKSUBW t6, t5, t4<br> [0x800019d0]:sd t6, 1712(sp)<br>   |
| 135|[0x80003ab0]<br>0x0000000000000000|- rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                          |[0x800019f8]:UKSUBW t6, t5, t4<br> [0x800019fc]:sd t6, 1728(sp)<br>   |
| 136|[0x80003ae0]<br>0x0000000000000070|- rs2_w1_val == 4294967231<br> - rs2_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                                     |[0x80001a6c]:UKSUBW t6, t5, t4<br> [0x80001a70]:sd t6, 1776(sp)<br>   |
