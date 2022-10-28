
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a60')]      |
| SIG_REGION                | [('0x80003210', '0x80003ae0', '282 dwords')]      |
| COV_LABELS                | kmaxds32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmaxds32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 282      |
| STAT1                     | 136      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 141     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012d8]:KMAXDS32 t6, t5, t4
      [0x800012dc]:sd t6, 1008(ra)
 -- Signature Address: 0x800037f0 Data: 0xF3FB174E2FFC33B0
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w1_val == -134217729
      - rs2_w0_val == 0
      - rs1_w0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001830]:KMAXDS32 t6, t5, t4
      [0x80001834]:sd t6, 1520(ra)
 -- Signature Address: 0x800039f0 Data: 0xEB65FB20E55DC7B5
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -16777217
      - rs1_w1_val == 2147483647
      - rs1_w0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a0c]:KMAXDS32 t6, t5, t4
      [0x80001a10]:sd t6, 1712(ra)
 -- Signature Address: 0x80003ab0 Data: 0xB60FA5EB637FD263
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -1073741825
      - rs2_w0_val == -16385
      - rs1_w1_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a30]:KMAXDS32 t6, t5, t4
      [0x80001a34]:sd t6, 1728(ra)
 -- Signature Address: 0x80003ac0 Data: 0xB60FA5CB637FB063
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 512
      - rs2_w0_val == -17
      - rs1_w1_val == 512
      - rs1_w0_val == 268435456




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a54]:KMAXDS32 t6, t5, t4
      [0x80001a58]:sd t6, 1744(ra)
 -- Signature Address: 0x80003ad0 Data: 0xB60FA5CA237F8C5A
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxds32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == -1025
      - rs1_w0_val == -9






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x30', 'rd : x23', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -16385', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800003c0]:KMAXDS32 s7, t5, t5
	-[0x800003c4]:sd s7, 0(t0)
Current Store : [0x800003c8] : sd t5, 8(t0) -- Store: [0x80003218]:0xBFFFFFFFFFFFBFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x25', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 512', 'rs2_w0_val == -17', 'rs1_w1_val == 512', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800003e4]:KMAXDS32 s9, s9, s9
	-[0x800003e8]:sd s9, 16(t0)
Current Store : [0x800003ec] : sd s9, 24(t0) -- Store: [0x80003228]:0x00000200FFFFFFEF




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x13', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 67108864', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x8000040c]:KMAXDS32 a3, s5, s11
	-[0x80000410]:sd a3, 32(t0)
Current Store : [0x80000414] : sd s5, 40(t0) -- Store: [0x80003238]:0xFFFFFFFD00000007




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rd : x3', 'rs1 == rd != rs2', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -257', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000043c]:KMAXDS32 gp, gp, zero
	-[0x80000440]:sd gp, 48(t0)
Current Store : [0x80000444] : sd gp, 56(t0) -- Store: [0x80003248]:0xFFFFFEFFFFFFFFFE




Last Coverpoint : ['rs1 : x9', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_w1_val == -33554433', 'rs2_w0_val == -33554433', 'rs1_w1_val == -33554433', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000470]:KMAXDS32 ra, s1, ra
	-[0x80000474]:sd ra, 64(t0)
Current Store : [0x80000478] : sd s1, 72(t0) -- Store: [0x80003258]:0xFDFFFFFFFDFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x23', 'rd : x24', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 4', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000498]:KMAXDS32 s8, t6, s7
	-[0x8000049c]:sd s8, 80(t0)
Current Store : [0x800004a0] : sd t6, 88(t0) -- Store: [0x80003268]:0xFFFFFFFCFFEFFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x28', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -268435457', 'rs2_w0_val == 512', 'rs1_w1_val == 16384', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800004c0]:KMAXDS32 t3, a6, t2
	-[0x800004c4]:sd t3, 96(t0)
Current Store : [0x800004c8] : sd a6, 104(t0) -- Store: [0x80003278]:0x0000400000200000




Last Coverpoint : ['rs1 : x27', 'rs2 : x19', 'rd : x12', 'rs2_w1_val == -1431655766', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800004f0]:KMAXDS32 a2, s11, s3
	-[0x800004f4]:sd a2, 112(t0)
Current Store : [0x800004f8] : sd s11, 120(t0) -- Store: [0x80003288]:0x0000000900080000




Last Coverpoint : ['rs1 : x23', 'rs2 : x21', 'rd : x6', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 2048', 'rs1_w1_val == -536870913', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000528]:KMAXDS32 t1, s7, s5
	-[0x8000052c]:sd t1, 128(t0)
Current Store : [0x80000530] : sd s7, 136(t0) -- Store: [0x80003298]:0xDFFFFFFF00001000




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rd : x31', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -67108865', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000550]:KMAXDS32 t6, a1, t4
	-[0x80000554]:sd t6, 144(t0)
Current Store : [0x80000558] : sd a1, 152(t0) -- Store: [0x800032a8]:0x0000000710000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x29', 'rs2_w1_val == -536870913', 'rs1_w1_val == 536870912', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000574]:KMAXDS32 t4, a3, t1
	-[0x80000578]:sd t4, 160(t0)
Current Store : [0x8000057c] : sd a3, 168(t0) -- Store: [0x800032b8]:0x2000000000000020




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x19', 'rs2_w1_val == -134217729', 'rs1_w1_val == 256', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800005a0]:KMAXDS32 s3, s8, fp
	-[0x800005a4]:sd s3, 176(t0)
Current Store : [0x800005a8] : sd s8, 184(t0) -- Store: [0x800032c8]:0x0000010000000800




Last Coverpoint : ['rs1 : x15', 'rs2 : x10', 'rd : x30', 'rs2_w1_val == -67108865', 'rs2_w0_val == -65', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800005c8]:KMAXDS32 t5, a5, a0
	-[0x800005cc]:sd t5, 192(t0)
Current Store : [0x800005d0] : sd a5, 200(t0) -- Store: [0x800032d8]:0xFFFFDFFF3FFFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x9', 'rd : x7', 'rs2_w1_val == -16777217', 'rs2_w0_val == 1048576', 'rs1_w1_val == 65536', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800005f8]:KMAXDS32 t2, t4, s1
	-[0x800005fc]:sd t2, 208(t0)
Current Store : [0x80000600] : sd t4, 216(t0) -- Store: [0x800032e8]:0x00010000DFFFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x2', 'rd : x17', 'rs2_w1_val == -8388609', 'rs2_w0_val == -2097153', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000062c]:KMAXDS32 a7, s6, sp
	-[0x80000630]:sd a7, 224(t0)
Current Store : [0x80000634] : sd s6, 232(t0) -- Store: [0x800032f8]:0x3FFFFFFF00010000




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x14', 'rs2_w1_val == -4194305', 'rs2_w0_val == -1', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000658]:KMAXDS32 a4, zero, a5
	-[0x8000065c]:sd a4, 240(t0)
Current Store : [0x80000660] : sd zero, 248(t0) -- Store: [0x80003308]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x11', 'rd : x4', 'rs2_w1_val == -2097153', 'rs2_w0_val == -4097', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000684]:KMAXDS32 tp, fp, a1
	-[0x80000688]:sd tp, 256(t0)
Current Store : [0x8000068c] : sd fp, 264(t0) -- Store: [0x80003318]:0x0000200010000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x9', 'rs2_w1_val == -1048577', 'rs2_w0_val == 4096', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800006b4]:KMAXDS32 s1, tp, s2
	-[0x800006b8]:sd s1, 0(s7)
Current Store : [0x800006bc] : sd tp, 8(s7) -- Store: [0x80003328]:0x000000007FFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rd : x16', 'rs2_w1_val == -524289', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800006d8]:KMAXDS32 a6, a4, t0
	-[0x800006dc]:sd a6, 16(s7)
Current Store : [0x800006e0] : sd a4, 24(s7) -- Store: [0x80003338]:0xFFFFFFF97FFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x17', 'rd : x26', 'rs2_w1_val == -262145', 'rs2_w0_val == 268435456', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000700]:KMAXDS32 s10, s2, a7
	-[0x80000704]:sd s10, 32(s7)
Current Store : [0x80000708] : sd s2, 40(s7) -- Store: [0x80003348]:0xFFFFDFFF00000400




Last Coverpoint : ['rs1 : x28', 'rs2 : x31', 'rd : x5', 'rs2_w1_val == -131073', 'rs1_w1_val == -17', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000728]:KMAXDS32 t0, t3, t6
	-[0x8000072c]:sd t0, 48(s7)
Current Store : [0x80000730] : sd t3, 56(s7) -- Store: [0x80003358]:0xFFFFFFEF00040000




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rd : x8', 'rs2_w1_val == -65537', 'rs2_w0_val == 16', 'rs1_w1_val == 2', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000754]:KMAXDS32 fp, a2, s4
	-[0x80000758]:sd fp, 64(s7)
Current Store : [0x8000075c] : sd a2, 72(s7) -- Store: [0x80003368]:0x00000002FFFF7FFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x20', 'rs2_w1_val == -32769', 'rs1_w1_val == -16777217', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000784]:KMAXDS32 s4, a0, a6
	-[0x80000788]:sd s4, 80(s7)
Current Store : [0x8000078c] : sd a0, 88(s7) -- Store: [0x80003378]:0xFEFFFFFFFBFFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x12', 'rd : x21', 'rs2_w1_val == -16385', 'rs2_w0_val == -257', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800007a8]:KMAXDS32 s5, ra, a2
	-[0x800007ac]:sd s5, 96(s7)
Current Store : [0x800007b0] : sd ra, 104(s7) -- Store: [0x80003388]:0xFFFFFFF600800000




Last Coverpoint : ['rs1 : x7', 'rs2 : x13', 'rd : x11', 'rs2_w1_val == -4097', 'rs2_w0_val == -5', 'rs1_w1_val == 8388608', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800007d8]:KMAXDS32 a1, t2, a3
	-[0x800007dc]:sd a1, 112(s7)
Current Store : [0x800007e0] : sd t2, 120(s7) -- Store: [0x80003398]:0x00800000FFFDFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x24', 'rd : x15', 'rs2_w1_val == -2049', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -4097', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000800]:KMAXDS32 a5, t0, s8
	-[0x80000804]:sd a5, 128(s7)
Current Store : [0x80000808] : sd t0, 136(s7) -- Store: [0x800033a8]:0xFFFFEFFF20000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x0', 'rs2_w1_val == -1025', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000824]:KMAXDS32 zero, sp, t3
	-[0x80000828]:sd zero, 144(s7)
Current Store : [0x8000082c] : sd sp, 152(s7) -- Store: [0x800033b8]:0x00000005FFFFFFF7




Last Coverpoint : ['rs1 : x26', 'rs2 : x4', 'rd : x10', 'rs2_w1_val == -513', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000848]:KMAXDS32 a0, s10, tp
	-[0x8000084c]:sd a0, 160(s7)
Current Store : [0x80000850] : sd s10, 168(s7) -- Store: [0x800033c8]:0x8000000000000006




Last Coverpoint : ['rs1 : x17', 'rs2 : x14', 'rd : x22', 'rs2_w1_val == -257', 'rs2_w0_val == -1025', 'rs1_w1_val == 33554432', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000086c]:KMAXDS32 s6, a7, a4
	-[0x80000870]:sd s6, 176(s7)
Current Store : [0x80000874] : sd a7, 184(s7) -- Store: [0x800033d8]:0x0200000000000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x3', 'rd : x18', 'rs2_w1_val == -129', 'rs2_w0_val == 131072', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000890]:KMAXDS32 s2, s3, gp
	-[0x80000894]:sd s2, 192(s7)
Current Store : [0x80000898] : sd s3, 200(s7) -- Store: [0x800033e8]:0x0000004000000020




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x27', 'rs2_w1_val == -65', 'rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800008b4]:KMAXDS32 s11, t1, s6
	-[0x800008b8]:sd s11, 208(s7)
Current Store : [0x800008bc] : sd t1, 216(s7) -- Store: [0x800033f8]:0x0000010000000006




Last Coverpoint : ['rs1 : x20', 'rs2 : x26', 'rd : x2', 'rs2_w1_val == -33']
Last Code Sequence : 
	-[0x800008e0]:KMAXDS32 sp, s4, s10
	-[0x800008e4]:sd sp, 0(ra)
Current Store : [0x800008e8] : sd s4, 8(ra) -- Store: [0x80003408]:0x0000000700800000




Last Coverpoint : ['rs2_w1_val == -17', 'rs2_w0_val == 33554432', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000904]:KMAXDS32 t6, t5, t4
	-[0x80000908]:sd t6, 16(ra)
Current Store : [0x8000090c] : sd t5, 24(ra) -- Store: [0x80003418]:0x2000000000000008




Last Coverpoint : ['rs2_w1_val == -9', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000928]:KMAXDS32 t6, t5, t4
	-[0x8000092c]:sd t6, 32(ra)
Current Store : [0x80000930] : sd t5, 40(ra) -- Store: [0x80003428]:0xFFFFFFFEDFFFFFFF




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == -3', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x8000094c]:KMAXDS32 t6, t5, t4
	-[0x80000950]:sd t6, 48(ra)
Current Store : [0x80000954] : sd t5, 56(ra) -- Store: [0x80003438]:0x00000004DFFFFFFF




Last Coverpoint : ['rs2_w1_val == -3']
Last Code Sequence : 
	-[0x80000970]:KMAXDS32 t6, t5, t4
	-[0x80000974]:sd t6, 64(ra)
Current Store : [0x80000978] : sd t5, 72(ra) -- Store: [0x80003448]:0xFFFFFFFCFFFFFFFE




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000990]:KMAXDS32 t6, t5, t4
	-[0x80000994]:sd t6, 80(ra)
Current Store : [0x80000998] : sd t5, 88(ra) -- Store: [0x80003458]:0xFFFFFFFD01000000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x800009bc]:KMAXDS32 t6, t5, t4
	-[0x800009c0]:sd t6, 96(ra)
Current Store : [0x800009c4] : sd t5, 104(ra) -- Store: [0x80003468]:0xFBFFFFFF00000009




Last Coverpoint : ['rs2_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800009e8]:KMAXDS32 t6, t5, t4
	-[0x800009ec]:sd t6, 112(ra)
Current Store : [0x800009f0] : sd t5, 120(ra) -- Store: [0x80003478]:0xBFFFFFFF20000000




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000a18]:KMAXDS32 t6, t5, t4
	-[0x80000a1c]:sd t6, 128(ra)
Current Store : [0x80000a20] : sd t5, 136(ra) -- Store: [0x80003488]:0x00000002FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 1024', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000a3c]:KMAXDS32 t6, t5, t4
	-[0x80000a40]:sd t6, 144(ra)
Current Store : [0x80000a44] : sd t5, 152(ra) -- Store: [0x80003498]:0xC000000000000002




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -131073', 'rs1_w1_val == 4194304', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000a78]:KMAXDS32 t6, t5, t4
	-[0x80000a7c]:sd t6, 160(ra)
Current Store : [0x80000a80] : sd t5, 168(ra) -- Store: [0x800034a8]:0x00400000FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == 128', 'rs1_w1_val == -65', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000a9c]:KMAXDS32 t6, t5, t4
	-[0x80000aa0]:sd t6, 176(ra)
Current Store : [0x80000aa4] : sd t5, 184(ra) -- Store: [0x800034b8]:0xFFFFFFBF00004000




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 536870912', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000abc]:KMAXDS32 t6, t5, t4
	-[0x80000ac0]:sd t6, 192(ra)
Current Store : [0x80000ac4] : sd t5, 200(ra) -- Store: [0x800034c8]:0xFFFFFFBF40000000




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000ae8]:KMAXDS32 t6, t5, t4
	-[0x80000aec]:sd t6, 208(ra)
Current Store : [0x80000af0] : sd t5, 216(ra) -- Store: [0x800034d8]:0xFEFFFFFF00000040




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80000b1c]:KMAXDS32 t6, t5, t4
	-[0x80000b20]:sd t6, 224(ra)
Current Store : [0x80000b24] : sd t5, 232(ra) -- Store: [0x800034e8]:0xAAAAAAAA00040000




Last Coverpoint : ['rs2_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000b3c]:KMAXDS32 t6, t5, t4
	-[0x80000b40]:sd t6, 240(ra)
Current Store : [0x80000b44] : sd t5, 248(ra) -- Store: [0x800034f8]:0xFFFFFFFDC0000000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000b58]:KMAXDS32 t6, t5, t4
	-[0x80000b5c]:sd t6, 256(ra)
Current Store : [0x80000b60] : sd t5, 264(ra) -- Store: [0x80003508]:0x0000000000000010




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == -1431655766', 'rs1_w1_val == -129', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000b8c]:KMAXDS32 t6, t5, t4
	-[0x80000b90]:sd t6, 272(ra)
Current Store : [0x80000b94] : sd t5, 280(ra) -- Store: [0x80003518]:0xFFFFFF7FFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 1', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000bb0]:KMAXDS32 t6, t5, t4
	-[0x80000bb4]:sd t6, 288(ra)
Current Store : [0x80000bb8] : sd t5, 296(ra) -- Store: [0x80003528]:0x00000001FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 32768', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000bdc]:KMAXDS32 t6, t5, t4
	-[0x80000be0]:sd t6, 304(ra)
Current Store : [0x80000be4] : sd t5, 312(ra) -- Store: [0x80003538]:0x4000000000004000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000c04]:KMAXDS32 t6, t5, t4
	-[0x80000c08]:sd t6, 320(ra)
Current Store : [0x80000c0c] : sd t5, 328(ra) -- Store: [0x80003548]:0xFFFFFFEFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == -262145', 'rs1_w1_val == 128', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c2c]:KMAXDS32 t6, t5, t4
	-[0x80000c30]:sd t6, 336(ra)
Current Store : [0x80000c34] : sd t5, 344(ra) -- Store: [0x80003558]:0x0000008002000000




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w1_val == -32769', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c58]:KMAXDS32 t6, t5, t4
	-[0x80000c5c]:sd t6, 352(ra)
Current Store : [0x80000c60] : sd t5, 360(ra) -- Store: [0x80003568]:0xFFFF7FFF00400000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c88]:KMAXDS32 t6, t5, t4
	-[0x80000c8c]:sd t6, 368(ra)
Current Store : [0x80000c90] : sd t5, 376(ra) -- Store: [0x80003578]:0xFFFFFFF900100000




Last Coverpoint : ['rs2_w1_val == -8193', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cb4]:KMAXDS32 t6, t5, t4
	-[0x80000cb8]:sd t6, 384(ra)
Current Store : [0x80000cbc] : sd t5, 392(ra) -- Store: [0x80003588]:0x7FFFFFFF00020000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == -2097153', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ce0]:KMAXDS32 t6, t5, t4
	-[0x80000ce4]:sd t6, 400(ra)
Current Store : [0x80000ce8] : sd t5, 408(ra) -- Store: [0x80003598]:0xFFDFFFFF00008000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d04]:KMAXDS32 t6, t5, t4
	-[0x80000d08]:sd t6, 416(ra)
Current Store : [0x80000d0c] : sd t5, 424(ra) -- Store: [0x800035a8]:0x0000004000002000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d28]:KMAXDS32 t6, t5, t4
	-[0x80000d2c]:sd t6, 432(ra)
Current Store : [0x80000d30] : sd t5, 440(ra) -- Store: [0x800035b8]:0xFFFFFEFF00000200




Last Coverpoint : ['rs2_w0_val == -129', 'rs1_w1_val == 16777216', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d4c]:KMAXDS32 t6, t5, t4
	-[0x80000d50]:sd t6, 448(ra)
Current Store : [0x80000d54] : sd t5, 456(ra) -- Store: [0x800035c8]:0x0100000000000100




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d74]:KMAXDS32 t6, t5, t4
	-[0x80000d78]:sd t6, 464(ra)
Current Store : [0x80000d7c] : sd t5, 472(ra) -- Store: [0x800035d8]:0x8000000000000080




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d98]:KMAXDS32 t6, t5, t4
	-[0x80000d9c]:sd t6, 480(ra)
Current Store : [0x80000da0] : sd t5, 488(ra) -- Store: [0x800035e8]:0x1000000000000004




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000dbc]:KMAXDS32 t6, t5, t4
	-[0x80000dc0]:sd t6, 496(ra)
Current Store : [0x80000dc4] : sd t5, 504(ra) -- Store: [0x800035f8]:0x0000000700000000




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000de0]:KMAXDS32 t6, t5, t4
	-[0x80000de4]:sd t6, 512(ra)
Current Store : [0x80000de8] : sd t5, 520(ra) -- Store: [0x80003608]:0xFFFFFFEFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000e0c]:KMAXDS32 t6, t5, t4
	-[0x80000e10]:sd t6, 528(ra)
Current Store : [0x80000e14] : sd t5, 536(ra) -- Store: [0x80003618]:0x00000001FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000e34]:KMAXDS32 t6, t5, t4
	-[0x80000e38]:sd t6, 544(ra)
Current Store : [0x80000e3c] : sd t5, 552(ra) -- Store: [0x80003628]:0xFFFFFFF800000040




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000e58]:KMAXDS32 t6, t5, t4
	-[0x80000e5c]:sd t6, 560(ra)
Current Store : [0x80000e60] : sd t5, 568(ra) -- Store: [0x80003638]:0xFFFFFFEFFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == 16384', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000e80]:KMAXDS32 t6, t5, t4
	-[0x80000e84]:sd t6, 576(ra)
Current Store : [0x80000e88] : sd t5, 584(ra) -- Store: [0x80003648]:0x002000007FFFFFFF




Last Coverpoint : ['rs2_w1_val == 1024']
Last Code Sequence : 
	-[0x80000eac]:KMAXDS32 t6, t5, t4
	-[0x80000eb0]:sd t6, 592(ra)
Current Store : [0x80000eb4] : sd t5, 600(ra) -- Store: [0x80003658]:0x3FFFFFFF00004000




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000ed4]:KMAXDS32 t6, t5, t4
	-[0x80000ed8]:sd t6, 608(ra)
Current Store : [0x80000edc] : sd t5, 616(ra) -- Store: [0x80003668]:0xFFFFFFFE00000010




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 2048', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000ef8]:KMAXDS32 t6, t5, t4
	-[0x80000efc]:sd t6, 624(ra)
Current Store : [0x80000f00] : sd t5, 632(ra) -- Store: [0x80003678]:0x0000080008000000




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80000f18]:KMAXDS32 t6, t5, t4
	-[0x80000f1c]:sd t6, 640(ra)
Current Store : [0x80000f20] : sd t5, 648(ra) -- Store: [0x80003688]:0x0000000000000100




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000f40]:KMAXDS32 t6, t5, t4
	-[0x80000f44]:sd t6, 656(ra)
Current Store : [0x80000f48] : sd t5, 664(ra) -- Store: [0x80003698]:0x0040000008000000




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000f68]:KMAXDS32 t6, t5, t4
	-[0x80000f6c]:sd t6, 672(ra)
Current Store : [0x80000f70] : sd t5, 680(ra) -- Store: [0x800036a8]:0xFFFFFFF800000004




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000f94]:KMAXDS32 t6, t5, t4
	-[0x80000f98]:sd t6, 688(ra)
Current Store : [0x80000f9c] : sd t5, 696(ra) -- Store: [0x800036b8]:0xFFBFFFFF00800000




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000fc0]:KMAXDS32 t6, t5, t4
	-[0x80000fc4]:sd t6, 704(ra)
Current Store : [0x80000fc8] : sd t5, 712(ra) -- Store: [0x800036c8]:0x00020000FFFFFFF8




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000fec]:KMAXDS32 t6, t5, t4
	-[0x80000ff0]:sd t6, 720(ra)
Current Store : [0x80000ff4] : sd t5, 728(ra) -- Store: [0x800036d8]:0xFFBFFFFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x8000101c]:KMAXDS32 t6, t5, t4
	-[0x80001020]:sd t6, 736(ra)
Current Store : [0x80001024] : sd t5, 744(ra) -- Store: [0x800036e8]:0x00800000FFFFDFFF




Last Coverpoint : ['rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001050]:KMAXDS32 t6, t5, t4
	-[0x80001054]:sd t6, 752(ra)
Current Store : [0x80001058] : sd t5, 760(ra) -- Store: [0x800036f8]:0x00400000FFFFFFF9




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001084]:KMAXDS32 t6, t5, t4
	-[0x80001088]:sd t6, 768(ra)
Current Store : [0x8000108c] : sd t5, 776(ra) -- Store: [0x80003708]:0xFFEFFFFF00004000




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800010ac]:KMAXDS32 t6, t5, t4
	-[0x800010b0]:sd t6, 784(ra)
Current Store : [0x800010b4] : sd t5, 792(ra) -- Store: [0x80003718]:0x00000004FFFFFF7F




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x800010e0]:KMAXDS32 t6, t5, t4
	-[0x800010e4]:sd t6, 800(ra)
Current Store : [0x800010e8] : sd t5, 808(ra) -- Store: [0x80003728]:0x40000000FFEFFFFF




Last Coverpoint : ['rs2_w0_val == -524289', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001110]:KMAXDS32 t6, t5, t4
	-[0x80001114]:sd t6, 816(ra)
Current Store : [0x80001118] : sd t5, 824(ra) -- Store: [0x80003738]:0x7FFFFFFFFF7FFFFF




Last Coverpoint : ['rs2_w0_val == -65537', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001138]:KMAXDS32 t6, t5, t4
	-[0x8000113c]:sd t6, 832(ra)
Current Store : [0x80001140] : sd t5, 840(ra) -- Store: [0x80003748]:0xFFFFFFF9FFFFFFFB




Last Coverpoint : ['rs2_w0_val == -32769', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001164]:KMAXDS32 t6, t5, t4
	-[0x80001168]:sd t6, 848(ra)
Current Store : [0x8000116c] : sd t5, 856(ra) -- Store: [0x80003758]:0xFFFF7FFF04000000




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x8000118c]:KMAXDS32 t6, t5, t4
	-[0x80001190]:sd t6, 864(ra)
Current Store : [0x80001194] : sd t5, 872(ra) -- Store: [0x80003768]:0x0000020000000800




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x800011b4]:KMAXDS32 t6, t5, t4
	-[0x800011b8]:sd t6, 880(ra)
Current Store : [0x800011bc] : sd t5, 888(ra) -- Store: [0x80003778]:0xF7FFFFFF00000040




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800011dc]:KMAXDS32 t6, t5, t4
	-[0x800011e0]:sd t6, 896(ra)
Current Store : [0x800011e4] : sd t5, 904(ra) -- Store: [0x80003788]:0x0004000000001000




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w1_val == 8', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80001200]:KMAXDS32 t6, t5, t4
	-[0x80001204]:sd t6, 912(ra)
Current Store : [0x80001208] : sd t5, 920(ra) -- Store: [0x80003798]:0x00000008FFFFFBFF




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001224]:KMAXDS32 t6, t5, t4
	-[0x80001228]:sd t6, 928(ra)
Current Store : [0x8000122c] : sd t5, 936(ra) -- Store: [0x800037a8]:0xFFFFFBFF02000000




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x8000124c]:KMAXDS32 t6, t5, t4
	-[0x80001250]:sd t6, 944(ra)
Current Store : [0x80001254] : sd t5, 952(ra) -- Store: [0x800037b8]:0x00000800FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001270]:KMAXDS32 t6, t5, t4
	-[0x80001274]:sd t6, 960(ra)
Current Store : [0x80001278] : sd t5, 968(ra) -- Store: [0x800037c8]:0xF7FFFFFFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001290]:KMAXDS32 t6, t5, t4
	-[0x80001294]:sd t6, 976(ra)
Current Store : [0x80001298] : sd t5, 984(ra) -- Store: [0x800037d8]:0x0000000200000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800012b4]:KMAXDS32 t6, t5, t4
	-[0x800012b8]:sd t6, 992(ra)
Current Store : [0x800012bc] : sd t5, 1000(ra) -- Store: [0x800037e8]:0x0000000300000008




Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == -134217729', 'rs2_w0_val == 0', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800012d8]:KMAXDS32 t6, t5, t4
	-[0x800012dc]:sd t6, 1008(ra)
Current Store : [0x800012e0] : sd t5, 1016(ra) -- Store: [0x800037f8]:0xFFFFFFF800002000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80001304]:KMAXDS32 t6, t5, t4
	-[0x80001308]:sd t6, 1024(ra)
Current Store : [0x8000130c] : sd t5, 1032(ra) -- Store: [0x80003808]:0x5555555500010000




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x8000132c]:KMAXDS32 t6, t5, t4
	-[0x80001330]:sd t6, 1040(ra)
Current Store : [0x80001334] : sd t5, 1048(ra) -- Store: [0x80003818]:0xEFFFFFFFFFFFFFFE




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80001350]:KMAXDS32 t6, t5, t4
	-[0x80001354]:sd t6, 1056(ra)
Current Store : [0x80001358] : sd t5, 1064(ra) -- Store: [0x80003828]:0xFF7FFFFFFFFFFFF9




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80001378]:KMAXDS32 t6, t5, t4
	-[0x8000137c]:sd t6, 1072(ra)
Current Store : [0x80001380] : sd t5, 1080(ra) -- Store: [0x80003838]:0xFFF7FFFF00400000




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800013a0]:KMAXDS32 t6, t5, t4
	-[0x800013a4]:sd t6, 1088(ra)
Current Store : [0x800013a8] : sd t5, 1096(ra) -- Store: [0x80003848]:0xFFFBFFFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800013d0]:KMAXDS32 t6, t5, t4
	-[0x800013d4]:sd t6, 1104(ra)
Current Store : [0x800013d8] : sd t5, 1112(ra) -- Store: [0x80003858]:0xFFFDFFFF00002000




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800013f4]:KMAXDS32 t6, t5, t4
	-[0x800013f8]:sd t6, 1120(ra)
Current Store : [0x800013fc] : sd t5, 1128(ra) -- Store: [0x80003868]:0xFFFEFFFF00800000




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001420]:KMAXDS32 t6, t5, t4
	-[0x80001424]:sd t6, 1136(ra)
Current Store : [0x80001428] : sd t5, 1144(ra) -- Store: [0x80003878]:0xFFFFBFFF00000100




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x8000144c]:KMAXDS32 t6, t5, t4
	-[0x80001450]:sd t6, 1152(ra)
Current Store : [0x80001454] : sd t5, 1160(ra) -- Store: [0x80003888]:0xFFFFF7FF00000005




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80001474]:KMAXDS32 t6, t5, t4
	-[0x80001478]:sd t6, 1168(ra)
Current Store : [0x8000147c] : sd t5, 1176(ra) -- Store: [0x80003898]:0xFFFFFDFF08000000




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80001498]:KMAXDS32 t6, t5, t4
	-[0x8000149c]:sd t6, 1184(ra)
Current Store : [0x800014a0] : sd t5, 1192(ra) -- Store: [0x800038a8]:0xFFFFFFDF00000010




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800014bc]:KMAXDS32 t6, t5, t4
	-[0x800014c0]:sd t6, 1200(ra)
Current Store : [0x800014c4] : sd t5, 1208(ra) -- Store: [0x800038b8]:0xFFFFFFF7FFFFFFFE




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800014e4]:KMAXDS32 t6, t5, t4
	-[0x800014e8]:sd t6, 1216(ra)
Current Store : [0x800014ec] : sd t5, 1224(ra) -- Store: [0x800038c8]:0xFFFFFFFB00001000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x8000150c]:KMAXDS32 t6, t5, t4
	-[0x80001510]:sd t6, 1232(ra)
Current Store : [0x80001514] : sd t5, 1240(ra) -- Store: [0x800038d8]:0x0800000000100000




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001538]:KMAXDS32 t6, t5, t4
	-[0x8000153c]:sd t6, 1248(ra)
Current Store : [0x80001540] : sd t5, 1256(ra) -- Store: [0x800038e8]:0x0400000000002000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80001568]:KMAXDS32 t6, t5, t4
	-[0x8000156c]:sd t6, 1264(ra)
Current Store : [0x80001570] : sd t5, 1272(ra) -- Store: [0x800038f8]:0x0010000000000040




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001594]:KMAXDS32 t6, t5, t4
	-[0x80001598]:sd t6, 1280(ra)
Current Store : [0x8000159c] : sd t5, 1288(ra) -- Store: [0x80003908]:0x0008000080000000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800015cc]:KMAXDS32 t6, t5, t4
	-[0x800015d0]:sd t6, 1296(ra)
Current Store : [0x800015d4] : sd t5, 1304(ra) -- Store: [0x80003918]:0x00008000FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800015f4]:KMAXDS32 t6, t5, t4
	-[0x800015f8]:sd t6, 1312(ra)
Current Store : [0x800015fc] : sd t5, 1320(ra) -- Store: [0x80003928]:0x00001000FFFFFEFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000161c]:KMAXDS32 t6, t5, t4
	-[0x80001620]:sd t6, 1328(ra)
Current Store : [0x80001624] : sd t5, 1336(ra) -- Store: [0x80003938]:0x00000400FFFBFFFF




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001644]:KMAXDS32 t6, t5, t4
	-[0x80001648]:sd t6, 1344(ra)
Current Store : [0x8000164c] : sd t5, 1352(ra) -- Store: [0x80003948]:0x0000002000020000




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80001674]:KMAXDS32 t6, t5, t4
	-[0x80001678]:sd t6, 1360(ra)
Current Store : [0x8000167c] : sd t5, 1368(ra) -- Store: [0x80003958]:0x0000001000000005




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001694]:KMAXDS32 t6, t5, t4
	-[0x80001698]:sd t6, 1376(ra)
Current Store : [0x8000169c] : sd t5, 1384(ra) -- Store: [0x80003968]:0xFFFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == -33', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800016cc]:KMAXDS32 t6, t5, t4
	-[0x800016d0]:sd t6, 1392(ra)
Current Store : [0x800016d4] : sd t5, 1400(ra) -- Store: [0x80003978]:0x3FFFFFFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001700]:KMAXDS32 t6, t5, t4
	-[0x80001704]:sd t6, 1408(ra)
Current Store : [0x80001708] : sd t5, 1416(ra) -- Store: [0x80003988]:0x0000080055555555




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000172c]:KMAXDS32 t6, t5, t4
	-[0x80001730]:sd t6, 1424(ra)
Current Store : [0x80001734] : sd t5, 1432(ra) -- Store: [0x80003998]:0xFFFBFFFFBFFFFFFF




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000175c]:KMAXDS32 t6, t5, t4
	-[0x80001760]:sd t6, 1440(ra)
Current Store : [0x80001764] : sd t5, 1448(ra) -- Store: [0x800039a8]:0xEFFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001780]:KMAXDS32 t6, t5, t4
	-[0x80001784]:sd t6, 1456(ra)
Current Store : [0x80001788] : sd t5, 1464(ra) -- Store: [0x800039b8]:0xFFFFFBFFFEFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800017ac]:KMAXDS32 t6, t5, t4
	-[0x800017b0]:sd t6, 1472(ra)
Current Store : [0x800017b4] : sd t5, 1480(ra) -- Store: [0x800039c8]:0x04000000FFBFFFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800017d8]:KMAXDS32 t6, t5, t4
	-[0x800017dc]:sd t6, 1488(ra)
Current Store : [0x800017e0] : sd t5, 1496(ra) -- Store: [0x800039d8]:0xFFFFFDFFFFDFFFFF




Last Coverpoint : ['rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80001800]:KMAXDS32 t6, t5, t4
	-[0x80001804]:sd t6, 1504(ra)
Current Store : [0x80001808] : sd t5, 1512(ra) -- Store: [0x800039e8]:0xFFFFFEFF00080000




Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -16777217', 'rs1_w1_val == 2147483647', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001830]:KMAXDS32 t6, t5, t4
	-[0x80001834]:sd t6, 1520(ra)
Current Store : [0x80001838] : sd t5, 1528(ra) -- Store: [0x800039f8]:0x7FFFFFFFFFFFBFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001860]:KMAXDS32 t6, t5, t4
	-[0x80001864]:sd t6, 1536(ra)
Current Store : [0x80001868] : sd t5, 1544(ra) -- Store: [0x80003a08]:0x01000000FFFFEFFF




Last Coverpoint : ['rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80001884]:KMAXDS32 t6, t5, t4
	-[0x80001888]:sd t6, 1552(ra)
Current Store : [0x8000188c] : sd t5, 1560(ra) -- Store: [0x80003a18]:0x0000000400040000




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800018ac]:KMAXDS32 t6, t5, t4
	-[0x800018b0]:sd t6, 1568(ra)
Current Store : [0x800018b4] : sd t5, 1576(ra) -- Store: [0x80003a28]:0x00800000FFFFFFEF




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800018cc]:KMAXDS32 t6, t5, t4
	-[0x800018d0]:sd t6, 1584(ra)
Current Store : [0x800018d4] : sd t5, 1592(ra) -- Store: [0x80003a38]:0xFFFFFFFD00000200




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800018f8]:KMAXDS32 t6, t5, t4
	-[0x800018fc]:sd t6, 1600(ra)
Current Store : [0x80001900] : sd t5, 1608(ra) -- Store: [0x80003a48]:0xAAAAAAAAFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x8000191c]:KMAXDS32 t6, t5, t4
	-[0x80001920]:sd t6, 1616(ra)
Current Store : [0x80001924] : sd t5, 1624(ra) -- Store: [0x80003a58]:0xFFFFFFF8FFFFFFBF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001948]:KMAXDS32 t6, t5, t4
	-[0x8000194c]:sd t6, 1632(ra)
Current Store : [0x80001950] : sd t5, 1640(ra) -- Store: [0x80003a68]:0x00200000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001968]:KMAXDS32 t6, t5, t4
	-[0x8000196c]:sd t6, 1648(ra)
Current Store : [0x80001970] : sd t5, 1656(ra) -- Store: [0x80003a78]:0xFFFFFFEF00000100




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001994]:KMAXDS32 t6, t5, t4
	-[0x80001998]:sd t6, 1664(ra)
Current Store : [0x8000199c] : sd t5, 1672(ra) -- Store: [0x80003a88]:0xFFFFFFFEFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800019b8]:KMAXDS32 t6, t5, t4
	-[0x800019bc]:sd t6, 1680(ra)
Current Store : [0x800019c0] : sd t5, 1688(ra) -- Store: [0x80003a98]:0x0000000400000002




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800019e4]:KMAXDS32 t6, t5, t4
	-[0x800019e8]:sd t6, 1696(ra)
Current Store : [0x800019ec] : sd t5, 1704(ra) -- Store: [0x80003aa8]:0xFBFFFFFF00002000




Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == -16385', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001a0c]:KMAXDS32 t6, t5, t4
	-[0x80001a10]:sd t6, 1712(ra)
Current Store : [0x80001a14] : sd t5, 1720(ra) -- Store: [0x80003ab8]:0x0000000880000000




Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 512', 'rs2_w0_val == -17', 'rs1_w1_val == 512', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a30]:KMAXDS32 t6, t5, t4
	-[0x80001a34]:sd t6, 1728(ra)
Current Store : [0x80001a38] : sd t5, 1736(ra) -- Store: [0x80003ac8]:0x0000020010000000




Last Coverpoint : ['opcode : kmaxds32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -1025', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001a54]:KMAXDS32 t6, t5, t4
	-[0x80001a58]:sd t6, 1744(ra)
Current Store : [0x80001a5c] : sd t5, 1752(ra) -- Store: [0x80003ad8]:0x00000005FFFFFFF7





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

|s.no|            signature             |                                                                                                                                                                           coverpoints                                                                                                                                                                            |                                  code                                   |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xB6FAB7FBB6FAB7FB|- opcode : kmaxds32<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -16385<br> |[0x800003c0]:KMAXDS32 s7, t5, t5<br> [0x800003c4]:sd s7, 0(t0)<br>       |
|   2|[0x80003220]<br>0x00000200FFFFFFEF|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 512<br> - rs2_w0_val == -17<br> - rs1_w1_val == 512<br> - rs1_w0_val == -17<br>                                                                                                                                                     |[0x800003e4]:KMAXDS32 s9, s9, s9<br> [0x800003e8]:sd s9, 16(t0)<br>      |
|   3|[0x80003230]<br>0xEADFEEDBCEDFEEED|- rs1 : x21<br> - rs2 : x27<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 67108864<br> - rs1_w1_val == -3<br>                                                                    |[0x8000040c]:KMAXDS32 a3, s5, s11<br> [0x80000410]:sd a3, 32(t0)<br>     |
|   4|[0x80003240]<br>0xFFFFFEFFFFFFFFFE|- rs1 : x3<br> - rs2 : x0<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -257<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                    |[0x8000043c]:KMAXDS32 gp, gp, zero<br> [0x80000440]:sd gp, 48(t0)<br>    |
|   5|[0x80003250]<br>0xFDFFFFFFFDFFFFFF|- rs1 : x9<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                        |[0x80000470]:KMAXDS32 ra, s1, ra<br> [0x80000474]:sd ra, 64(t0)<br>      |
|   6|[0x80003260]<br>0xDB7D5BFDDBBD5BE9|- rs1 : x31<br> - rs2 : x23<br> - rd : x24<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                         |[0x80000498]:KMAXDS32 s8, t6, s7<br> [0x8000049c]:sd s8, 80(t0)<br>      |
|   7|[0x80003270]<br>0xDDB9D5BFDE57D5BF|- rs1 : x16<br> - rs2 : x7<br> - rd : x28<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 512<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 2097152<br>                                                                                                                        |[0x800004c0]:KMAXDS32 t3, a6, t2<br> [0x800004c4]:sd t3, 96(t0)<br>      |
|   8|[0x80003280]<br>0xD5C28862806D9DAE|- rs1 : x27<br> - rs2 : x19<br> - rd : x12<br> - rs2_w1_val == -1431655766<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                         |[0x800004f0]:KMAXDS32 a2, s11, s3<br> [0x800004f4]:sd a2, 112(t0)<br>    |
|   9|[0x80003290]<br>0xFFFFF9AB2AAAD800|- rs1 : x23<br> - rs2 : x21<br> - rd : x6<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 2048<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                     |[0x80000528]:KMAXDS32 t1, s7, s5<br> [0x8000052c]:sd t1, 128(t0)<br>     |
|  10|[0x800032a0]<br>0xF7FFFFFCF3EFFFF8|- rs1 : x11<br> - rs2 : x29<br> - rd : x31<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                         |[0x80000550]:KMAXDS32 t6, a1, t4<br> [0x80000554]:sd t6, 144(t0)<br>     |
|  11|[0x800032b0]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x6<br> - rd : x29<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                 |[0x80000574]:KMAXDS32 t4, a3, t1<br> [0x80000578]:sd t4, 160(t0)<br>     |
|  12|[0x800032c0]<br>0xAAAAAAEAFFFFCEFF|- rs1 : x24<br> - rs2 : x8<br> - rd : x19<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == 256<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                     |[0x800005a0]:KMAXDS32 s3, s8, fp<br> [0x800005a4]:sd s3, 176(t0)<br>     |
|  13|[0x800032d0]<br>0xC10000003C07E03F|- rs1 : x15<br> - rs2 : x10<br> - rd : x30<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -65<br> - rs1_w1_val == -8193<br>                                                                                                                                                                                                                                    |[0x800005c8]:KMAXDS32 t5, a5, a0<br> [0x800005cc]:sd t5, 192(t0)<br>     |
|  14|[0x800032e0]<br>0xEFE0000EDF0001FF|- rs1 : x29<br> - rs2 : x9<br> - rd : x7<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == 65536<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                   |[0x800005f8]:KMAXDS32 t2, t4, s1<br> [0x800005fc]:sd t2, 208(t0)<br>     |
|  15|[0x800032f0]<br>0xBEA5FF6D7ECEFEEE|- rs1 : x22<br> - rs2 : x2<br> - rd : x17<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                 |[0x8000062c]:KMAXDS32 a7, s6, sp<br> [0x80000630]:sd a7, 224(t0)<br>     |
|  16|[0x80003300]<br>0xF56FF76DF56FF76D|- rs1 : x0<br> - rs2 : x15<br> - rd : x14<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -1<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                     |[0x80000658]:KMAXDS32 a4, zero, a5<br> [0x8000065c]:sd a4, 240(t0)<br>   |
|  17|[0x80003310]<br>0xBFDFB7D5CDDD97D5|- rs1 : x8<br> - rs2 : x11<br> - rd : x4<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -4097<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                                      |[0x80000684]:KMAXDS32 tp, fp, a1<br> [0x80000688]:sd tp, 256(t0)<br>     |
|  18|[0x80003320]<br>0xFF07FFFF7FFFFFFF|- rs1 : x4<br> - rs2 : x18<br> - rd : x9<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 4096<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                 |[0x800006b4]:KMAXDS32 s1, tp, s2<br> [0x800006b8]:sd s1, 0(s7)<br>       |
|  19|[0x80003330]<br>0x0004400080180E06|- rs1 : x14<br> - rs2 : x5<br> - rd : x16<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                |[0x800006d8]:KMAXDS32 a6, a4, t0<br> [0x800006dc]:sd a6, 16(s7)<br>      |
|  20|[0x80003340]<br>0x76DF54FF76DF5AFF|- rs1 : x18<br> - rs2 : x17<br> - rd : x26<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 268435456<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                 |[0x80000700]:KMAXDS32 s10, s2, a7<br> [0x80000704]:sd s10, 32(s7)<br>    |
|  21|[0x80003350]<br>0xFFF800080003FDAA|- rs1 : x28<br> - rs2 : x31<br> - rd : x5<br> - rs2_w1_val == -131073<br> - rs1_w1_val == -17<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                      |[0x80000728]:KMAXDS32 t0, t3, t6<br> [0x8000072c]:sd t0, 48(s7)<br>      |
|  22|[0x80003360]<br>0x00001FFF8FFE801F|- rs1 : x12<br> - rs2 : x20<br> - rd : x8<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 16<br> - rs1_w1_val == 2<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                  |[0x80000754]:KMAXDS32 fp, a2, s4<br> [0x80000758]:sd fp, 64(s7)<br>      |
|  23|[0x80003370]<br>0xFFFEFE3EFCFFC010|- rs1 : x10<br> - rs2 : x16<br> - rd : x20<br> - rs2_w1_val == -32769<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                             |[0x80000784]:KMAXDS32 s4, a0, a6<br> [0x80000788]:sd s4, 80(s7)<br>      |
|  24|[0x80003380]<br>0x555555750080120A|- rs1 : x1<br> - rs2 : x12<br> - rd : x21<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -257<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                     |[0x800007a8]:KMAXDS32 s5, ra, a2<br> [0x800007ac]:sd s5, 96(s7)<br>      |
|  25|[0x80003390]<br>0xFFDFFFFFDD7DDFFE|- rs1 : x7<br> - rs2 : x13<br> - rd : x11<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -5<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                            |[0x800007d8]:KMAXDS32 a1, t2, a3<br> [0x800007dc]:sd a1, 112(s7)<br>     |
|  26|[0x800033a0]<br>0xFFC0050060001000|- rs1 : x5<br> - rs2 : x24<br> - rd : x15<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                   |[0x80000800]:KMAXDS32 a5, t0, s8<br> [0x80000804]:sd a5, 128(s7)<br>     |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x28<br> - rd : x0<br> - rs2_w1_val == -1025<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                     |[0x80000824]:KMAXDS32 zero, sp, t3<br> [0x80000828]:sd zero, 144(s7)<br> |
|  28|[0x800033c0]<br>0xFF000004FC000C05|- rs1 : x26<br> - rs2 : x4<br> - rd : x10<br> - rs2_w1_val == -513<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                            |[0x80000848]:KMAXDS32 a0, s10, tp<br> [0x8000084c]:sd a0, 160(s7)<br>    |
|  29|[0x800033d0]<br>0x3FFFFFF6FE010101|- rs1 : x17<br> - rs2 : x14<br> - rd : x22<br> - rs2_w1_val == -257<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                              |[0x8000086c]:KMAXDS32 s6, a7, a4<br> [0x80000870]:sd s6, 176(s7)<br>     |
|  30|[0x800033e0]<br>0xFFFFDFFF00801420|- rs1 : x19<br> - rs2 : x3<br> - rd : x18<br> - rs2_w1_val == -129<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                          |[0x80000890]:KMAXDS32 s2, s3, gp<br> [0x80000894]:sd s2, 192(s7)<br>     |
|  31|[0x800033f0]<br>0x0000000920080186|- rs1 : x6<br> - rs2 : x22<br> - rd : x27<br> - rs2_w1_val == -65<br> - rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                 |[0x800008b4]:KMAXDS32 s11, t1, s6<br> [0x800008b8]:sd s11, 208(s7)<br>   |
|  32|[0x80003400]<br>0x000000061080001A|- rs1 : x20<br> - rs2 : x26<br> - rd : x2<br> - rs2_w1_val == -33<br>                                                                                                                                                                                                                                                                                             |[0x800008e0]:KMAXDS32 sp, s4, s10<br> [0x800008e4]:sd sp, 0(ra)<br>      |
|  33|[0x80003410]<br>0x003DFFFF0000008D|- rs2_w1_val == -17<br> - rs2_w0_val == 33554432<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                        |[0x80000904]:KMAXDS32 t6, t5, t4<br> [0x80000908]:sd t6, 16(ra)<br>      |
|  34|[0x80003420]<br>0x003DFFFDE0000886|- rs2_w1_val == -9<br> - rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                     |[0x80000928]:KMAXDS32 t6, t5, t4<br> [0x8000092c]:sd t6, 32(ra)<br>      |
|  35|[0x80003430]<br>0x003DFFFD40000875|- rs2_w1_val == -5<br> - rs2_w0_val == -3<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                               |[0x8000094c]:KMAXDS32 t6, t5, t4<br> [0x80000950]:sd t6, 48(ra)<br>      |
|  36|[0x80003440]<br>0x003DFFFD40001873|- rs2_w1_val == -3<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000970]:KMAXDS32 t6, t5, t4<br> [0x80000974]:sd t6, 64(ra)<br>      |
|  37|[0x80003450]<br>0x003DFFFBC2001876|- rs2_w1_val == -2<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                |[0x80000990]:KMAXDS32 t6, t5, t4<br> [0x80000994]:sd t6, 80(ra)<br>      |
|  38|[0x80003460]<br>0x003E000846001A77|- rs2_w1_val == -2147483648<br> - rs1_w1_val == -67108865<br>                                                                                                                                                                                                                                                                                                     |[0x800009bc]:KMAXDS32 t6, t5, t4<br> [0x800009c0]:sd t6, 96(ra)<br>      |
|  39|[0x80003470]<br>0xF836000845E01A77|- rs2_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                    |[0x800009e8]:KMAXDS32 t6, t5, t4<br> [0x800009ec]:sd t6, 112(ra)<br>     |
|  40|[0x80003480]<br>0xF8360108E5E01A75|- rs2_w1_val == 536870912<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                           |[0x80000a18]:KMAXDS32 t6, t5, t4<br> [0x80000a1c]:sd t6, 128(ra)<br>     |
|  41|[0x80003490]<br>0xF8360008C5E01A75|- rs2_w1_val == 268435456<br> - rs2_w0_val == 1024<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                      |[0x80000a3c]:KMAXDS32 t6, t5, t4<br> [0x80000a40]:sd t6, 144(ra)<br>     |
|  42|[0x800034a0]<br>0xF8361F88CDA01A75|- rs2_w1_val == 134217728<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                 |[0x80000a78]:KMAXDS32 t6, t5, t4<br> [0x80000a7c]:sd t6, 160(ra)<br>     |
|  43|[0x800034b0]<br>0xF8361F08CD9FF9F5|- rs2_w1_val == 33554432<br> - rs2_w0_val == 128<br> - rs1_w1_val == -65<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                            |[0x80000a9c]:KMAXDS32 t6, t5, t4<br> [0x80000aa0]:sd t6, 176(ra)<br>     |
|  44|[0x800034c0]<br>0xF7F61F00AD9FF9F5|- rs2_w1_val == 16777216<br> - rs2_w0_val == 536870912<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                         |[0x80000abc]:KMAXDS32 t6, t5, t4<br> [0x80000ac0]:sd t6, 192(ra)<br>     |
|  45|[0x800034d0]<br>0xF7F61F018E9FFAF6|- rs2_w1_val == 8388608<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                |[0x80000ae8]:KMAXDS32 t6, t5, t4<br> [0x80000aec]:sd t6, 208(ra)<br>     |
|  46|[0x800034e0]<br>0xF800C8AC8EB5504C|- rs2_w1_val == 4194304<br> - rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                                                                                       |[0x80000b1c]:KMAXDS32 t6, t5, t4<br> [0x80000b20]:sd t6, 224(ra)<br>     |
|  47|[0x800034f0]<br>0xF808C8AC8EB54ECC|- rs2_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000b3c]:KMAXDS32 t6, t5, t4<br> [0x80000b40]:sd t6, 240(ra)<br>     |
|  48|[0x80003500]<br>0xF808C8AC8DB54ECC|- rs2_w1_val == 1048576<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                |[0x80000b58]:KMAXDS32 t6, t5, t4<br> [0x80000b5c]:sd t6, 256(ra)<br>     |
|  49|[0x80003510]<br>0xF808C9178DBD4F22|- rs2_w1_val == 524288<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == -129<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                   |[0x80000b8c]:KMAXDS32 t6, t5, t4<br> [0x80000b90]:sd t6, 272(ra)<br>     |
|  50|[0x80003520]<br>0xF808C917A5C14F22|- rs2_w1_val == 262144<br> - rs1_w1_val == 1<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                         |[0x80000bb0]:KMAXDS32 t6, t5, t4<br> [0x80000bb4]:sd t6, 288(ra)<br>     |
|  51|[0x80003530]<br>0xF808E91725C14F22|- rs2_w1_val == 131072<br> - rs2_w0_val == 32768<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                               |[0x80000bdc]:KMAXDS32 t6, t5, t4<br> [0x80000be0]:sd t6, 304(ra)<br>     |
|  52|[0x80003540]<br>0xF808F10EA5C24F33|- rs2_w1_val == 65536<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                          |[0x80000c04]:KMAXDS32 t6, t5, t4<br> [0x80000c08]:sd t6, 320(ra)<br>     |
|  53|[0x80003550]<br>0xF808F10F25C24EB3|- rs2_w0_val == -262145<br> - rs1_w1_val == 128<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                  |[0x80000c2c]:KMAXDS32 t6, t5, t4<br> [0x80000c30]:sd t6, 336(ra)<br>     |
|  54|[0x80003560]<br>0xF808F12EA6014EB3|- rs2_w0_val == 65536<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                  |[0x80000c58]:KMAXDS32 t6, t5, t4<br> [0x80000c5c]:sd t6, 352(ra)<br>     |
|  55|[0x80003570]<br>0xF808F1B0FB66A40D|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000c88]:KMAXDS32 t6, t5, t4<br> [0x80000c8c]:sd t6, 368(ra)<br>     |
|  56|[0x80003580]<br>0xF808F1AE3B68A413|- rs2_w1_val == -8193<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                               |[0x80000cb4]:KMAXDS32 t6, t5, t4<br> [0x80000cb8]:sd t6, 384(ra)<br>     |
|  57|[0x80003590]<br>0xF808F18E1B67A413|- rs2_w1_val == 16384<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                  |[0x80000ce0]:KMAXDS32 t6, t5, t4<br> [0x80000ce4]:sd t6, 400(ra)<br>     |
|  58|[0x800035a0]<br>0xF808F18E1B684193|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000d04]:KMAXDS32 t6, t5, t4<br> [0x80000d08]:sd t6, 416(ra)<br>     |
|  59|[0x800035b0]<br>0xF808F1921F684E94|- rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000d28]:KMAXDS32 t6, t5, t4<br> [0x80000d2c]:sd t6, 432(ra)<br>     |
|  60|[0x800035c0]<br>0xF808F1919E684E94|- rs2_w0_val == -129<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                     |[0x80000d4c]:KMAXDS32 t6, t5, t4<br> [0x80000d50]:sd t6, 448(ra)<br>     |
|  61|[0x800035d0]<br>0xF808F2721E684E94|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000d74]:KMAXDS32 t6, t5, t4<br> [0x80000d78]:sd t6, 464(ra)<br>     |
|  62|[0x800035e0]<br>0xF408F2720E684EAC|- rs1_w1_val == 268435456<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                               |[0x80000d98]:KMAXDS32 t6, t5, t4<br> [0x80000d9c]:sd t6, 480(ra)<br>     |
|  63|[0x800035f0]<br>0xF408F2720E676EA5|- rs2_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000dbc]:KMAXDS32 t6, t5, t4<br> [0x80000dc0]:sd t6, 496(ra)<br>     |
|  64|[0x80003600]<br>0xF408F27206076EA5|- rs2_w0_val == 8388608<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                |[0x80000de0]:KMAXDS32 t6, t5, t4<br> [0x80000de4]:sd t6, 512(ra)<br>     |
|  65|[0x80003610]<br>0xF408F2728607EEA1|- rs2_w1_val == 32768<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                              |[0x80000e0c]:KMAXDS32 t6, t5, t4<br> [0x80000e10]:sd t6, 528(ra)<br>     |
|  66|[0x80003620]<br>0xF408F272867FEEA9|- rs2_w1_val == 8192<br> - rs2_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                             |[0x80000e34]:KMAXDS32 t6, t5, t4<br> [0x80000e38]:sd t6, 544(ra)<br>     |
|  67|[0x80003630]<br>0xF408F272868FDCA9|- rs2_w1_val == 4096<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                 |[0x80000e58]:KMAXDS32 t6, t5, t4<br> [0x80000e5c]:sd t6, 560(ra)<br>     |
|  68|[0x80003640]<br>0xF408EE7A868FE4A9|- rs2_w1_val == 2048<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                    |[0x80000e80]:KMAXDS32 t6, t5, t4<br> [0x80000e84]:sd t6, 576(ra)<br>     |
|  69|[0x80003650]<br>0xF408EDFA458FE6AA|- rs2_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000eac]:KMAXDS32 t6, t5, t4<br> [0x80000eb0]:sd t6, 592(ra)<br>     |
|  70|[0x80003660]<br>0xF408EDFA858FD6AC|- rs2_w1_val == 256<br> - rs2_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                            |[0x80000ed4]:KMAXDS32 t6, t5, t4<br> [0x80000ed8]:sd t6, 608(ra)<br>     |
|  71|[0x80003670]<br>0xF408EDF6858FAEAC|- rs2_w1_val == 128<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                                                    |[0x80000ef8]:KMAXDS32 t6, t5, t4<br> [0x80000efc]:sd t6, 624(ra)<br>     |
|  72|[0x80003680]<br>0xF408EDF6858F6EAC|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000f18]:KMAXDS32 t6, t5, t4<br> [0x80000f1c]:sd t6, 640(ra)<br>     |
|  73|[0x80003690]<br>0xF408ADF5854F6EAC|- rs2_w1_val == 32<br> - rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                              |[0x80000f40]:KMAXDS32 t6, t5, t4<br> [0x80000f44]:sd t6, 656(ra)<br>     |
|  74|[0x800036a0]<br>0xF408ADF5874F6E74|- rs2_w1_val == 16<br> - rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                               |[0x80000f68]:KMAXDS32 t6, t5, t4<br> [0x80000f6c]:sd t6, 672(ra)<br>     |
|  75|[0x800036b0]<br>0xF408B1F5839F6E75|- rs2_w1_val == 8<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                                                |[0x80000f94]:KMAXDS32 t6, t5, t4<br> [0x80000f98]:sd t6, 688(ra)<br>     |
|  76|[0x800036c0]<br>0xF408B1F5939F6E85|- rs2_w1_val == 2<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                  |[0x80000fc0]:KMAXDS32 t6, t5, t4<br> [0x80000fc4]:sd t6, 704(ra)<br>     |
|  77|[0x800036d0]<br>0xF408B1F597DF8E97|- rs2_w1_val == 1<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                   |[0x80000fec]:KMAXDS32 t6, t5, t4<br> [0x80000ff0]:sd t6, 720(ra)<br>     |
|  78|[0x800036e0]<br>0xF408B1F59B5F6E96|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                            |[0x8000101c]:KMAXDS32 t6, t5, t4<br> [0x80001020]:sd t6, 736(ra)<br>     |
|  79|[0x800036f0]<br>0xF41E074AF0676E8F|- rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001050]:KMAXDS32 t6, t5, t4<br> [0x80001054]:sd t6, 752(ra)<br>     |
|  80|[0x80003700]<br>0xF41F034B00776E90|- rs2_w0_val == -268435457<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                                                       |[0x80001084]:KMAXDS32 t6, t5, t4<br> [0x80001088]:sd t6, 768(ra)<br>     |
|  81|[0x80003710]<br>0xF41F034AE0674E0B|- rs2_w0_val == -134217729<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                           |[0x800010ac]:KMAXDS32 t6, t5, t4<br> [0x800010b0]:sd t6, 784(ra)<br>     |
|  82|[0x80003720]<br>0xF3FF034A90574D0A|- rs2_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                                      |[0x800010e0]:KMAXDS32 t6, t5, t4<br> [0x800010e4]:sd t6, 800(ra)<br>     |
|  83|[0x80003730]<br>0xF3FB03460FDF450A|- rs2_w0_val == -524289<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                          |[0x80001110]:KMAXDS32 t6, t5, t4<br> [0x80001114]:sd t6, 816(ra)<br>     |
|  84|[0x80003740]<br>0xF3FB03460FE5A50C|- rs2_w0_val == -65537<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                 |[0x80001138]:KMAXDS32 t6, t5, t4<br> [0x8000113c]:sd t6, 832(ra)<br>     |
|  85|[0x80003750]<br>0xF3FB134653E6A50D|- rs2_w0_val == -32769<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                           |[0x80001164]:KMAXDS32 t6, t5, t4<br> [0x80001168]:sd t6, 848(ra)<br>     |
|  86|[0x80003760]<br>0xF3FB13465BE6650D|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000118c]:KMAXDS32 t6, t5, t4<br> [0x80001190]:sd t6, 864(ra)<br>     |
|  87|[0x80003770]<br>0xF3FB12465BE6494D|- rs2_w0_val == 8192<br> - rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                                                                           |[0x800011b4]:KMAXDS32 t6, t5, t4<br> [0x800011b8]:sd t6, 880(ra)<br>     |
|  88|[0x80003780]<br>0xF3FB16465FE6494D|- rs2_w0_val == 256<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                                                |[0x800011dc]:KMAXDS32 t6, t5, t4<br> [0x800011e0]:sd t6, 896(ra)<br>     |
|  89|[0x80003790]<br>0xF3FB16465FE84BCD|- rs2_w0_val == 64<br> - rs1_w1_val == 8<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                                                            |[0x80001200]:KMAXDS32 t6, t5, t4<br> [0x80001204]:sd t6, 912(ra)<br>     |
|  90|[0x800037a0]<br>0xF3FB164653E7CBAD|- rs2_w0_val == 32<br> - rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                                  |[0x80001224]:KMAXDS32 t6, t5, t4<br> [0x80001228]:sd t6, 928(ra)<br>     |
|  91|[0x800037b0]<br>0xF3FB164E53F80BAD|- rs2_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                                             |[0x8000124c]:KMAXDS32 t6, t5, t4<br> [0x80001250]:sd t6, 944(ra)<br>     |
|  92|[0x800037c0]<br>0xF3FB164E33FC13A9|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                                             |[0x80001270]:KMAXDS32 t6, t5, t4<br> [0x80001274]:sd t6, 960(ra)<br>     |
|  93|[0x800037d0]<br>0xF3FB164E33FC13AD|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                             |[0x80001290]:KMAXDS32 t6, t5, t4<br> [0x80001294]:sd t6, 976(ra)<br>     |
|  94|[0x800037e0]<br>0xF3FB164E2FFC13B0|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                             |[0x800012b4]:KMAXDS32 t6, t5, t4<br> [0x800012b8]:sd t6, 992(ra)<br>     |
|  95|[0x80003800]<br>0xF405C1F8DE9D33B0|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001304]:KMAXDS32 t6, t5, t4<br> [0x80001308]:sd t6, 1024(ra)<br>    |
|  96|[0x80003810]<br>0xF405BFF8DEA513B0|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                                                                                                    |[0x8000132c]:KMAXDS32 t6, t5, t4<br> [0x80001330]:sd t6, 1040(ra)<br>    |
|  97|[0x80003820]<br>0xF425BFF91CE513A9|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001350]:KMAXDS32 t6, t5, t4<br> [0x80001354]:sd t6, 1056(ra)<br>    |
|  98|[0x80003830]<br>0xF426BFD93CED13AA|- rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                                                                                                       |[0x80001378]:KMAXDS32 t6, t5, t4<br> [0x8000137c]:sd t6, 1072(ra)<br>    |
|  99|[0x80003840]<br>0xF426BFD83AE51327|- rs1_w1_val == -262145<br>                                                                                                                                                                                                                                                                                                                                       |[0x800013a0]:KMAXDS32 t6, t5, t4<br> [0x800013a4]:sd t6, 1088(ra)<br>    |
| 100|[0x80003850]<br>0xF426BFD87AE73328|- rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                                                                                       |[0x800013d0]:KMAXDS32 t6, t5, t4<br> [0x800013d4]:sd t6, 1104(ra)<br>    |
| 101|[0x80003860]<br>0xF426BFD3FAE6B328|- rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                                                        |[0x800013f4]:KMAXDS32 t6, t5, t4<br> [0x800013f8]:sd t6, 1120(ra)<br>    |
| 102|[0x80003870]<br>0xF426BFD7FAEEF329|- rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                        |[0x80001420]:KMAXDS32 t6, t5, t4<br> [0x80001424]:sd t6, 1136(ra)<br>    |
| 103|[0x80003880]<br>0xF426BFD3E66EF329|- rs1_w1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000144c]:KMAXDS32 t6, t5, t4<br> [0x80001450]:sd t6, 1152(ra)<br>    |
| 104|[0x80003890]<br>0xF426BFD43672F52A|- rs1_w1_val == -513<br>                                                                                                                                                                                                                                                                                                                                          |[0x80001474]:KMAXDS32 t6, t5, t4<br> [0x80001478]:sd t6, 1168(ra)<br>    |
| 105|[0x800038a0]<br>0xF426BFD43672EC85|- rs1_w1_val == -33<br>                                                                                                                                                                                                                                                                                                                                           |[0x80001498]:KMAXDS32 t6, t5, t4<br> [0x8000149c]:sd t6, 1184(ra)<br>    |
| 106|[0x800038b0]<br>0xF426BFD43672EC74|- rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                            |[0x800014bc]:KMAXDS32 t6, t5, t4<br> [0x800014c0]:sd t6, 1200(ra)<br>    |
| 107|[0x800038c0]<br>0xF426BFD45672EC79|- rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                                                                                            |[0x800014e4]:KMAXDS32 t6, t5, t4<br> [0x800014e8]:sd t6, 1216(ra)<br>    |
| 108|[0x800038d0]<br>0xF427BFD45642EC79|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                                                                     |[0x8000150c]:KMAXDS32 t6, t5, t4<br> [0x80001510]:sd t6, 1232(ra)<br>    |
| 109|[0x800038e0]<br>0xF41FBFCC5242EC79|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001538]:KMAXDS32 t6, t5, t4<br> [0x8000153c]:sd t6, 1248(ra)<br>    |
| 110|[0x800038f0]<br>0xF41FBFCA51F2EC79|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                       |[0x80001568]:KMAXDS32 t6, t5, t4<br> [0x8000156c]:sd t6, 1264(ra)<br>    |
| 111|[0x80003900]<br>0xEC1FBFD9D1F2EC79|- rs1_w0_val == -2147483648<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                        |[0x80001594]:KMAXDS32 t6, t5, t4<br> [0x80001598]:sd t6, 1280(ra)<br>    |
| 112|[0x80003910]<br>0xEC1FEFDA51F24C78|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                         |[0x800015cc]:KMAXDS32 t6, t5, t4<br> [0x800015d0]:sd t6, 1296(ra)<br>    |
| 113|[0x80003920]<br>0xEC1FEFDA51E20B77|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                          |[0x800015f4]:KMAXDS32 t6, t5, t4<br> [0x800015f8]:sd t6, 1312(ra)<br>    |
| 114|[0x80003930]<br>0xEC1FF0DA52320B77|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                          |[0x8000161c]:KMAXDS32 t6, t5, t4<br> [0x80001620]:sd t6, 1328(ra)<br>    |
| 115|[0x80003940]<br>0xEC1FB0DA52320957|- rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001644]:KMAXDS32 t6, t5, t4<br> [0x80001648]:sd t6, 1344(ra)<br>    |
| 116|[0x80003950]<br>0xEC1FB0DB92220947|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001674]:KMAXDS32 t6, t5, t4<br> [0x80001678]:sd t6, 1360(ra)<br>    |
| 117|[0x80003960]<br>0xEBFFB0DB86220947|- rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001694]:KMAXDS32 t6, t5, t4<br> [0x80001698]:sd t6, 1376(ra)<br>    |
| 118|[0x80003970]<br>0xEBFFBB7DF0CCC968|- rs2_w0_val == -33<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                           |[0x800016cc]:KMAXDS32 t6, t5, t4<br> [0x800016d0]:sd t6, 1392(ra)<br>    |
| 119|[0x80003980]<br>0xEB5510D386CCC968|- rs2_w0_val == 524288<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                         |[0x80001700]:KMAXDS32 t6, t5, t4<br> [0x80001704]:sd t6, 1408(ra)<br>    |
| 120|[0x80003990]<br>0xEB5710D386FCC972|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000172c]:KMAXDS32 t6, t5, t4<br> [0x80001730]:sd t6, 1424(ra)<br>    |
| 121|[0x800039a0]<br>0xEB5F50D39780C973|- rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                                                                    |[0x8000175c]:KMAXDS32 t6, t5, t4<br> [0x80001760]:sd t6, 1440(ra)<br>    |
| 122|[0x800039b0]<br>0xEB5F50B39280C976|- rs2_w0_val == 134217728<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                       |[0x80001780]:KMAXDS32 t6, t5, t4<br> [0x80001784]:sd t6, 1456(ra)<br>    |
| 123|[0x800039c0]<br>0xEB5B50B36640C975|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017ac]:KMAXDS32 t6, t5, t4<br> [0x800017b0]:sd t6, 1472(ra)<br>    |
| 124|[0x800039d0]<br>0xEB65FB5E6635FEBA|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017d8]:KMAXDS32 t6, t5, t4<br> [0x800017dc]:sd t6, 1488(ra)<br>    |
| 125|[0x800039e0]<br>0xEB65FB5E665E07BB|- rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001800]:KMAXDS32 t6, t5, t4<br> [0x80001804]:sd t6, 1504(ra)<br>    |
| 126|[0x80003a00]<br>0xEB65FB40E54DB6B4|- rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001860]:KMAXDS32 t6, t5, t4<br> [0x80001864]:sd t6, 1536(ra)<br>    |
| 127|[0x80003a10]<br>0xEB660340E551B690|- rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001884]:KMAXDS32 t6, t5, t4<br> [0x80001888]:sd t6, 1552(ra)<br>    |
| 128|[0x80003a20]<br>0xEB660340E451B6C3|- rs2_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                                            |[0x800018ac]:KMAXDS32 t6, t5, t4<br> [0x800018b0]:sd t6, 1568(ra)<br>    |
| 129|[0x80003a30]<br>0xEB6603426451B2C3|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                                   |[0x800018cc]:KMAXDS32 t6, t5, t4<br> [0x800018d0]:sd t6, 1584(ra)<br>    |
| 130|[0x80003a40]<br>0xD610ADECE451D2C5|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                    |[0x800018f8]:KMAXDS32 t6, t5, t4<br> [0x800018fc]:sd t6, 1600(ra)<br>    |
| 131|[0x80003a50]<br>0xD610ADED2451CA6C|- rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                                                                           |[0x8000191c]:KMAXDS32 t6, t5, t4<br> [0x80001920]:sd t6, 1616(ra)<br>    |
| 132|[0x80003a60]<br>0xD610A5ED2539CA6C|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                           |[0x80001948]:KMAXDS32 t6, t5, t4<br> [0x8000194c]:sd t6, 1632(ra)<br>    |
| 133|[0x80003a70]<br>0xD610A5ECE139D26C|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001968]:KMAXDS32 t6, t5, t4<br> [0x8000196c]:sd t6, 1648(ra)<br>    |
| 134|[0x80003a80]<br>0xD610A5ECDFB1D269|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                                            |[0x80001994]:KMAXDS32 t6, t5, t4<br> [0x80001998]:sd t6, 1664(ra)<br>    |
| 135|[0x80003a90]<br>0xD610A5ECE3C1D26B|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                      |[0x800019b8]:KMAXDS32 t6, t5, t4<br> [0x800019bc]:sd t6, 1680(ra)<br>    |
| 136|[0x80003aa0]<br>0xD60FA5EBE381D26B|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                                       |[0x800019e4]:KMAXDS32 t6, t5, t4<br> [0x800019e8]:sd t6, 1696(ra)<br>    |
