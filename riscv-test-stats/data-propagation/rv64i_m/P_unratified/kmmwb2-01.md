
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001bd0')]      |
| SIG_REGION                | [('0x80003210', '0x800039e0', '250 dwords')]      |
| COV_LABELS                | kmmwb2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmwb2-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 250      |
| STAT1                     | 122      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 125     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016e0]:KMMWB2 t6, t5, t4
      [0x800016e4]:sd t6, 1136(ra)
 -- Signature Address: 0x80003840 Data: 0x00000000FFFFFFCF
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 32
      - rs1_w1_val == 0
      - rs1_w0_val == -262145




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b54]:KMMWB2 t6, t5, t4
      [0x80001b58]:sd t6, 1504(ra)
 -- Signature Address: 0x800039b0 Data: 0xFFFFDFFFC0000000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_h3_val == -16385
      - rs2_h2_val == 16
      - rs2_h1_val == 8
      - rs2_h0_val == 16384
      - rs1_w1_val == -16777217




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bbc]:KMMWB2 t6, t5, t4
      [0x80001bc0]:sd t6, 1536(ra)
 -- Signature Address: 0x800039d0 Data: 0xFFFFFFFF000000E0
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -2
      - rs2_h2_val == 8
      - rs2_h1_val == -1
      - rs1_w0_val == 1048576






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x3', 'rs2 : x3', 'rd : x14', 'rs1 == rs2 != rd', 'rs2_h3_val == -16385', 'rs2_h2_val == 16', 'rs2_h1_val == 8', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800003c4]:KMMWB2 a4, gp, gp
	-[0x800003c8]:sd a4, 0(t0)
Current Store : [0x800003cc] : sd gp, 8(t0) -- Store: [0x80003218]:0xBFFF001000084000




Last Coverpoint : ['rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h2_val == -257', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x800003fc]:KMMWB2 a2, a2, a2
	-[0x80000400]:sd a2, 16(t0)
Current Store : [0x80000404] : sd a2, 24(t0) -- Store: [0x80003228]:0x00AB54AC0005FFFA




Last Coverpoint : ['rs1 : x25', 'rs2 : x2', 'rd : x21', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h1_val == 4096', 'rs2_h0_val == -32768', 'rs1_w1_val == -65537', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000438]:KMMWB2 s5, s9, sp
	-[0x8000043c]:sd s5, 32(t0)
Current Store : [0x80000440] : sd s9, 40(t0) -- Store: [0x80003238]:0xFFFEFFFF00010000




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x6', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == -32768', 'rs2_h1_val == 32', 'rs2_h0_val == 128', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000470]:KMMWB2 t1, t1, t3
	-[0x80000474]:sd t1, 48(t0)
Current Store : [0x80000478] : sd t1, 56(t0) -- Store: [0x80003248]:0x5555555600001000




Last Coverpoint : ['rs1 : x19', 'rs2 : x7', 'rd : x7', 'rs2 == rd != rs1', 'rs2_h3_val == -8193', 'rs2_h0_val == -16385', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800004a0]:KMMWB2 t2, s3, t2
	-[0x800004a4]:sd t2, 64(t0)
Current Store : [0x800004a8] : sd s3, 72(t0) -- Store: [0x80003258]:0x0040000000000009




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x18', 'rs2_h3_val == -4097', 'rs2_h2_val == 32', 'rs2_h1_val == 16384', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800004d8]:KMMWB2 s2, s5, a4
	-[0x800004dc]:sd s2, 80(t0)
Current Store : [0x800004e0] : sd s5, 88(t0) -- Store: [0x80003268]:0x555555557FFFFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x13', 'rs2_h3_val == -2049', 'rs2_h2_val == -2', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000504]:KMMWB2 a3, s7, s9
	-[0x80000508]:sd a3, 96(t0)
Current Store : [0x8000050c] : sd s7, 104(t0) -- Store: [0x80003278]:0xFFFFFFF6BFFFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x15', 'rs2_h3_val == -1025', 'rs2_h2_val == 128', 'rs2_h1_val == 2048', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000538]:KMMWB2 a5, a7, s7
	-[0x8000053c]:sd a5, 112(t0)
Current Store : [0x80000540] : sd a7, 120(t0) -- Store: [0x80003288]:0x00080000FFFFFFF6




Last Coverpoint : ['rs1 : x8', 'rs2 : x29', 'rd : x1', 'rs2_h3_val == -513', 'rs2_h1_val == -1025', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000056c]:KMMWB2 ra, fp, t4
	-[0x80000570]:sd ra, 128(t0)
Current Store : [0x80000574] : sd fp, 136(t0) -- Store: [0x80003298]:0x00000005FFFFFFDF




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x23', 'rs2_h3_val == -257', 'rs2_h2_val == -1025', 'rs2_h0_val == -2', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800005a0]:KMMWB2 s7, zero, s1
	-[0x800005a4]:sd s7, 144(t0)
Current Store : [0x800005a8] : sd zero, 152(t0) -- Store: [0x800032a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x31', 'rs2_h3_val == -129', 'rs2_h2_val == 32767', 'rs2_h1_val == -9', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800005d0]:KMMWB2 t6, a1, s3
	-[0x800005d4]:sd t6, 160(t0)
Current Store : [0x800005d8] : sd a1, 168(t0) -- Store: [0x800032b8]:0xAAAAAAAA00000004




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x16', 'rs2_h3_val == -65', 'rs2_h1_val == -4097', 'rs1_w1_val == -65', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800005f8]:KMMWB2 a6, t3, s4
	-[0x800005fc]:sd a6, 176(t0)
Current Store : [0x80000600] : sd t3, 184(t0) -- Store: [0x800032c8]:0xFFFFFFBF00000040




Last Coverpoint : ['rs1 : x4', 'rs2 : x1', 'rd : x22', 'rs2_h3_val == -33', 'rs2_h2_val == -9', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000628]:KMMWB2 s6, tp, ra
	-[0x8000062c]:sd s6, 192(t0)
Current Store : [0x80000630] : sd tp, 200(t0) -- Store: [0x800032d8]:0x0000000600100000




Last Coverpoint : ['rs1 : x18', 'rs2 : x11', 'rd : x26', 'rs2_h3_val == -17', 'rs2_h0_val == -2049', 'rs1_w1_val == 16384', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000654]:KMMWB2 s10, s2, a1
	-[0x80000658]:sd s10, 208(t0)
Current Store : [0x8000065c] : sd s2, 216(t0) -- Store: [0x800032e8]:0x0000400000000020




Last Coverpoint : ['rs1 : x7', 'rs2 : x27', 'rd : x2', 'rs2_h3_val == -9', 'rs2_h2_val == 2048', 'rs2_h1_val == 2', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000684]:KMMWB2 sp, t2, s11
	-[0x80000688]:sd sp, 224(t0)
Current Store : [0x8000068c] : sd t2, 232(t0) -- Store: [0x800032f8]:0x00400000FFFFFDFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x4', 'rd : x8', 'rs2_h3_val == -5', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800006bc]:KMMWB2 fp, s1, tp
	-[0x800006c0]:sd fp, 0(sp)
Current Store : [0x800006c4] : sd s1, 8(sp) -- Store: [0x80003308]:0x0000000900000006




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x19', 'rs2_h3_val == -3', 'rs2_h1_val == -2', 'rs2_h0_val == 1024', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800006f0]:KMMWB2 s3, t0, a3
	-[0x800006f4]:sd s3, 16(sp)
Current Store : [0x800006f8] : sd t0, 24(sp) -- Store: [0x80003318]:0x5555555500000008




Last Coverpoint : ['rs1 : x20', 'rs2 : x18', 'rd : x0', 'rs2_h3_val == -2', 'rs2_h2_val == 8', 'rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000720]:KMMWB2 zero, s4, s2
	-[0x80000724]:sd zero, 32(sp)
Current Store : [0x80000728] : sd s4, 40(sp) -- Store: [0x80003328]:0xFFFFFFFA00100000




Last Coverpoint : ['rs1 : x14', 'rs2 : x16', 'rd : x3', 'rs2_h3_val == -32768', 'rs2_h2_val == -2049', 'rs1_w1_val == -4194305', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000758]:KMMWB2 gp, a4, a6
	-[0x8000075c]:sd gp, 48(sp)
Current Store : [0x80000760] : sd a4, 56(sp) -- Store: [0x80003338]:0xFFBFFFFFFFF7FFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x24', 'rs2_h3_val == 16384']
Last Code Sequence : 
	-[0x80000788]:KMMWB2 s8, a0, t5
	-[0x8000078c]:sd s8, 64(sp)
Current Store : [0x80000790] : sd a0, 72(sp) -- Store: [0x80003348]:0xFFFFFFBF00100000




Last Coverpoint : ['rs1 : x29', 'rs2 : x21', 'rd : x28', 'rs2_h3_val == 8192', 'rs2_h2_val == -3', 'rs2_h1_val == 32767', 'rs2_h0_val == 0', 'rs1_w1_val == 64', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800007b4]:KMMWB2 t3, t4, s5
	-[0x800007b8]:sd t3, 80(sp)
Current Store : [0x800007bc] : sd t4, 88(sp) -- Store: [0x80003358]:0x00000040FFFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x20', 'rs2_h3_val == 4096', 'rs2_h1_val == -3', 'rs2_h0_val == -1', 'rs1_w1_val == 33554432', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800007f0]:KMMWB2 s4, s11, t1
	-[0x800007f4]:sd s4, 96(sp)
Current Store : [0x800007f8] : sd s11, 104(sp) -- Store: [0x80003368]:0x02000000FFFFBFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x27', 'rs1_w0_val == -2147483648', 'rs2_h3_val == 2048']
Last Code Sequence : 
	-[0x80000820]:KMMWB2 s11, s6, s8
	-[0x80000824]:sd s11, 112(sp)
Current Store : [0x80000828] : sd s6, 120(sp) -- Store: [0x80003378]:0xFFBFFFFF80000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rd : x25', 'rs2_h3_val == 1024', 'rs2_h2_val == 16384', 'rs1_w1_val == -1025', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000850]:KMMWB2 s9, a5, t6
	-[0x80000854]:sd s9, 128(sp)
Current Store : [0x80000858] : sd a5, 136(sp) -- Store: [0x80003388]:0xFFFFFBFF08000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x0', 'rd : x4', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000880]:KMMWB2 tp, a3, zero
	-[0x80000884]:sd tp, 144(sp)
Current Store : [0x80000888] : sd a3, 152(sp) -- Store: [0x80003398]:0x0000004000000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x15', 'rd : x9', 'rs2_h3_val == 256', 'rs2_h2_val == -5', 'rs2_h1_val == 8192', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x800008b4]:KMMWB2 s1, t5, a5
	-[0x800008b8]:sd s1, 160(sp)
Current Store : [0x800008bc] : sd t5, 168(sp) -- Store: [0x800033a8]:0xFDFFFFFF00000007




Last Coverpoint : ['rs1 : x26', 'rs2 : x17', 'rd : x10', 'rs2_h3_val == 128', 'rs2_h1_val == 256', 'rs2_h0_val == 2', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800008e4]:KMMWB2 a0, s10, a7
	-[0x800008e8]:sd a0, 176(sp)
Current Store : [0x800008ec] : sd s10, 184(sp) -- Store: [0x800033b8]:0xFDFFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x22', 'rd : x11', 'rs2_h3_val == 64', 'rs1_w1_val == -2097153', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000918]:KMMWB2 a1, ra, s6
	-[0x8000091c]:sd a1, 192(sp)
Current Store : [0x80000920] : sd ra, 200(sp) -- Store: [0x800033c8]:0xFFDFFFFF00000100




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x5', 'rs2_h3_val == 32', 'rs2_h2_val == 8192', 'rs2_h1_val == 512', 'rs1_w1_val == -67108865', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000948]:KMMWB2 t0, s8, s10
	-[0x8000094c]:sd t0, 0(ra)
Current Store : [0x80000950] : sd s8, 8(ra) -- Store: [0x800033d8]:0xFBFFFFFFFFFFFFF7




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x30', 'rs2_h3_val == 16', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000974]:KMMWB2 t5, a6, fp
	-[0x80000978]:sd t5, 16(ra)
Current Store : [0x8000097c] : sd a6, 24(ra) -- Store: [0x800033e8]:0x0000400000000020




Last Coverpoint : ['rs1 : x31', 'rs2 : x10', 'rd : x29', 'rs2_h3_val == 8', 'rs2_h2_val == -4097', 'rs2_h1_val == -513', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800009a8]:KMMWB2 t4, t6, a0
	-[0x800009ac]:sd t4, 32(ra)
Current Store : [0x800009b0] : sd t6, 40(ra) -- Store: [0x800033f8]:0xFFDFFFFF00010000




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x17', 'rs2_h3_val == 4', 'rs2_h2_val == -65', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800009d0]:KMMWB2 a7, sp, t0
	-[0x800009d4]:sd a7, 48(ra)
Current Store : [0x800009d8] : sd sp, 56(ra) -- Store: [0x80003408]:0x0000004000000200




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -17', 'rs2_h0_val == 512', 'rs1_w1_val == 1073741824', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000a00]:KMMWB2 t6, t5, t4
	-[0x80000a04]:sd t6, 64(ra)
Current Store : [0x80000a08] : sd t5, 72(ra) -- Store: [0x80003418]:0x40000000FBFFFFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == -32768', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000a2c]:KMMWB2 t6, t5, t4
	-[0x80000a30]:sd t6, 80(ra)
Current Store : [0x80000a34] : sd t5, 88(ra) -- Store: [0x80003428]:0x08000000FFFFFDFF




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000a60]:KMMWB2 t6, t5, t4
	-[0x80000a64]:sd t6, 96(ra)
Current Store : [0x80000a68] : sd t5, 104(ra) -- Store: [0x80003438]:0xFFFFFBFFFFFF7FFF




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == -21846', 'rs2_h1_val == 4', 'rs1_w1_val == 32768', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a8c]:KMMWB2 t6, t5, t4
	-[0x80000a90]:sd t6, 112(ra)
Current Store : [0x80000a94] : sd t5, 120(ra) -- Store: [0x80003448]:0x00008000FFFFFFFB




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h0_val == -5', 'rs1_w1_val == -5', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000abc]:KMMWB2 t6, t5, t4
	-[0x80000ac0]:sd t6, 128(ra)
Current Store : [0x80000ac4] : sd t5, 136(ra) -- Store: [0x80003458]:0xFFFFFFFB00800000




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000af8]:KMMWB2 t6, t5, t4
	-[0x80000afc]:sd t6, 144(ra)
Current Store : [0x80000b00] : sd t5, 152(ra) -- Store: [0x80003468]:0xBFFFFFFF00000001




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == -5', 'rs2_h0_val == 32', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000b2c]:KMMWB2 t6, t5, t4
	-[0x80000b30]:sd t6, 160(ra)
Current Store : [0x80000b34] : sd t5, 168(ra) -- Store: [0x80003478]:0xFFFFDFFF00000001




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h0_val == -257', 'rs1_w1_val == 256', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000b5c]:KMMWB2 t6, t5, t4
	-[0x80000b60]:sd t6, 176(ra)
Current Store : [0x80000b64] : sd t5, 184(ra) -- Store: [0x80003488]:0x0000010000000080




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h1_val == -21846', 'rs2_h0_val == -21846', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000b8c]:KMMWB2 t6, t5, t4
	-[0x80000b90]:sd t6, 192(ra)
Current Store : [0x80000b94] : sd t5, 200(ra) -- Store: [0x80003498]:0xFFFFFFF7FFFFFFFA




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80000bc4]:KMMWB2 t6, t5, t4
	-[0x80000bc8]:sd t6, 208(ra)
Current Store : [0x80000bcc] : sd t5, 216(ra) -- Store: [0x800034a8]:0x0000040000010000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w1_val == 16', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000bf4]:KMMWB2 t6, t5, t4
	-[0x80000bf8]:sd t6, 224(ra)
Current Store : [0x80000bfc] : sd t5, 232(ra) -- Store: [0x800034b8]:0x0000001000200000




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c20]:KMMWB2 t6, t5, t4
	-[0x80000c24]:sd t6, 240(ra)
Current Store : [0x80000c28] : sd t5, 248(ra) -- Store: [0x800034c8]:0xFFFFFDFF00080000




Last Coverpoint : ['rs1_w1_val == -3', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c50]:KMMWB2 t6, t5, t4
	-[0x80000c54]:sd t6, 256(ra)
Current Store : [0x80000c58] : sd t5, 264(ra) -- Store: [0x800034d8]:0xFFFFFFFD00040000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c80]:KMMWB2 t6, t5, t4
	-[0x80000c84]:sd t6, 272(ra)
Current Store : [0x80000c88] : sd t5, 280(ra) -- Store: [0x800034e8]:0xFFFFFFFB00020000




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_w1_val == 32', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cac]:KMMWB2 t6, t5, t4
	-[0x80000cb0]:sd t6, 288(ra)
Current Store : [0x80000cb4] : sd t5, 296(ra) -- Store: [0x800034f8]:0x0000002000008000




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000ce4]:KMMWB2 t6, t5, t4
	-[0x80000ce8]:sd t6, 304(ra)
Current Store : [0x80000cec] : sd t5, 312(ra) -- Store: [0x80003508]:0xAAAAAAAA00004000




Last Coverpoint : ['rs1_w1_val == -32769', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d1c]:KMMWB2 t6, t5, t4
	-[0x80000d20]:sd t6, 320(ra)
Current Store : [0x80000d24] : sd t5, 328(ra) -- Store: [0x80003518]:0xFFFF7FFF00002000




Last Coverpoint : ['rs2_h1_val == 1024', 'rs1_w1_val == 2', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d4c]:KMMWB2 t6, t5, t4
	-[0x80000d50]:sd t6, 336(ra)
Current Store : [0x80000d54] : sd t5, 344(ra) -- Store: [0x80003528]:0x0000000200001000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_w1_val == 8', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d7c]:KMMWB2 t6, t5, t4
	-[0x80000d80]:sd t6, 352(ra)
Current Store : [0x80000d84] : sd t5, 360(ra) -- Store: [0x80003538]:0x0000000800000800




Last Coverpoint : ['rs1_w1_val == 262144', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000dac]:KMMWB2 t6, t5, t4
	-[0x80000db0]:sd t6, 368(ra)
Current Store : [0x80000db4] : sd t5, 376(ra) -- Store: [0x80003548]:0x0004000000000400




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == -65', 'rs1_w1_val == -16777217', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000ddc]:KMMWB2 t6, t5, t4
	-[0x80000de0]:sd t6, 384(ra)
Current Store : [0x80000de4] : sd t5, 392(ra) -- Store: [0x80003558]:0xFEFFFFFF00000010




Last Coverpoint : ['rs1_w1_val == -268435457', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e10]:KMMWB2 t6, t5, t4
	-[0x80000e14]:sd t6, 400(ra)
Current Store : [0x80000e18] : sd t5, 408(ra) -- Store: [0x80003568]:0xEFFFFFFF00000002




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e3c]:KMMWB2 t6, t5, t4
	-[0x80000e40]:sd t6, 416(ra)
Current Store : [0x80000e44] : sd t5, 424(ra) -- Store: [0x80003578]:0x0000010000000000




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000e70]:KMMWB2 t6, t5, t4
	-[0x80000e74]:sd t6, 432(ra)
Current Store : [0x80000e78] : sd t5, 440(ra) -- Store: [0x80003588]:0xFFFFDFFF00000020




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80000ea0]:KMMWB2 t6, t5, t4
	-[0x80000ea4]:sd t6, 448(ra)
Current Store : [0x80000ea8] : sd t5, 456(ra) -- Store: [0x80003598]:0xFFFFFFFD00100000




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000ed4]:KMMWB2 t6, t5, t4
	-[0x80000ed8]:sd t6, 464(ra)
Current Store : [0x80000edc] : sd t5, 472(ra) -- Store: [0x800035a8]:0xFFF7FFFF00000002




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x80000efc]:KMMWB2 t6, t5, t4
	-[0x80000f00]:sd t6, 480(ra)
Current Store : [0x80000f04] : sd t5, 488(ra) -- Store: [0x800035b8]:0x0000000600004000




Last Coverpoint : ['rs2_h2_val == 1', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80000f2c]:KMMWB2 t6, t5, t4
	-[0x80000f30]:sd t6, 496(ra)
Current Store : [0x80000f34] : sd t5, 504(ra) -- Store: [0x800035c8]:0xFFEFFFFFFFFFFFFF




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000f60]:KMMWB2 t6, t5, t4
	-[0x80000f64]:sd t6, 512(ra)
Current Store : [0x80000f68] : sd t5, 520(ra) -- Store: [0x800035d8]:0x00100000BFFFFFFF




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80000f90]:KMMWB2 t6, t5, t4
	-[0x80000f94]:sd t6, 528(ra)
Current Store : [0x80000f98] : sd t5, 536(ra) -- Store: [0x800035e8]:0x00004000BFFFFFFF




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000fb8]:KMMWB2 t6, t5, t4
	-[0x80000fbc]:sd t6, 544(ra)
Current Store : [0x80000fc0] : sd t5, 552(ra) -- Store: [0x800035f8]:0xFFFFFFFDDFFFFFFF




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x80000ff0]:KMMWB2 t6, t5, t4
	-[0x80000ff4]:sd t6, 560(ra)
Current Store : [0x80000ff8] : sd t5, 568(ra) -- Store: [0x80003608]:0xC000000000000007




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == -17', 'rs1_w1_val == -134217729', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001028]:KMMWB2 t6, t5, t4
	-[0x8000102c]:sd t6, 576(ra)
Current Store : [0x80001030] : sd t5, 584(ra) -- Store: [0x80003618]:0xF7FFFFFFFFFDFFFF




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x80001054]:KMMWB2 t6, t5, t4
	-[0x80001058]:sd t6, 592(ra)
Current Store : [0x8000105c] : sd t5, 600(ra) -- Store: [0x80003628]:0xFFBFFFFFFFFFFFF8




Last Coverpoint : ['rs2_h1_val == -129', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80001080]:KMMWB2 t6, t5, t4
	-[0x80001084]:sd t6, 608(ra)
Current Store : [0x80001088] : sd t5, 616(ra) -- Store: [0x80003638]:0xC000000000000010




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x800010b0]:KMMWB2 t6, t5, t4
	-[0x800010b4]:sd t6, 624(ra)
Current Store : [0x800010b8] : sd t5, 632(ra) -- Store: [0x80003648]:0x0001000000000005




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_w1_val == 536870912', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800010e4]:KMMWB2 t6, t5, t4
	-[0x800010e8]:sd t6, 640(ra)
Current Store : [0x800010ec] : sd t5, 648(ra) -- Store: [0x80003658]:0x2000000004000000




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80001114]:KMMWB2 t6, t5, t4
	-[0x80001118]:sd t6, 656(ra)
Current Store : [0x8000111c] : sd t5, 664(ra) -- Store: [0x80003668]:0xFFFFFDFFFFFFFFF6




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001140]:KMMWB2 t6, t5, t4
	-[0x80001144]:sd t6, 672(ra)
Current Store : [0x80001148] : sd t5, 680(ra) -- Store: [0x80003678]:0x00000100FFFFFFFF




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001170]:KMMWB2 t6, t5, t4
	-[0x80001174]:sd t6, 688(ra)
Current Store : [0x80001178] : sd t5, 696(ra) -- Store: [0x80003688]:0xFFDFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800011a8]:KMMWB2 t6, t5, t4
	-[0x800011ac]:sd t6, 704(ra)
Current Store : [0x800011b0] : sd t5, 712(ra) -- Store: [0x80003698]:0x7FFFFFFF00010000




Last Coverpoint : ['rs1_w1_val == -536870913', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800011e0]:KMMWB2 t6, t5, t4
	-[0x800011e4]:sd t6, 720(ra)
Current Store : [0x800011e8] : sd t5, 728(ra) -- Store: [0x800036a8]:0xDFFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x80001214]:KMMWB2 t6, t5, t4
	-[0x80001218]:sd t6, 736(ra)
Current Store : [0x8000121c] : sd t5, 744(ra) -- Store: [0x800036b8]:0xFF7FFFFF00000001




Last Coverpoint : ['rs1_w1_val == -262145', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001254]:KMMWB2 t6, t5, t4
	-[0x80001258]:sd t6, 752(ra)
Current Store : [0x8000125c] : sd t5, 760(ra) -- Store: [0x800036c8]:0xFFFBFFFFFFFFDFFF




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80001284]:KMMWB2 t6, t5, t4
	-[0x80001288]:sd t6, 768(ra)
Current Store : [0x8000128c] : sd t5, 776(ra) -- Store: [0x800036d8]:0xFFFDFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x800012bc]:KMMWB2 t6, t5, t4
	-[0x800012c0]:sd t6, 784(ra)
Current Store : [0x800012c4] : sd t5, 792(ra) -- Store: [0x800036e8]:0xFFFFBFFFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == -4097', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800012e4]:KMMWB2 t6, t5, t4
	-[0x800012e8]:sd t6, 800(ra)
Current Store : [0x800012ec] : sd t5, 808(ra) -- Store: [0x800036f8]:0xFFFFEFFFFFFEFFFF




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80001318]:KMMWB2 t6, t5, t4
	-[0x8000131c]:sd t6, 816(ra)
Current Store : [0x80001320] : sd t5, 824(ra) -- Store: [0x80003708]:0xFFFFF7FF00000009




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_w1_val == -257', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001348]:KMMWB2 t6, t5, t4
	-[0x8000134c]:sd t6, 832(ra)
Current Store : [0x80001350] : sd t5, 840(ra) -- Store: [0x80003718]:0xFFFFFEFFFFFFFF7F




Last Coverpoint : ['rs1_w1_val == -129', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000137c]:KMMWB2 t6, t5, t4
	-[0x80001380]:sd t6, 848(ra)
Current Store : [0x80001384] : sd t5, 856(ra) -- Store: [0x80003728]:0xFFFFFF7FEFFFFFFF




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x800013ac]:KMMWB2 t6, t5, t4
	-[0x800013b0]:sd t6, 864(ra)
Current Store : [0x800013b4] : sd t5, 872(ra) -- Store: [0x80003738]:0xFFFFFFDF00200000




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800013e0]:KMMWB2 t6, t5, t4
	-[0x800013e4]:sd t6, 880(ra)
Current Store : [0x800013e8] : sd t5, 888(ra) -- Store: [0x80003748]:0xFFFFFFEFFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x8000140c]:KMMWB2 t6, t5, t4
	-[0x80001410]:sd t6, 896(ra)
Current Store : [0x80001414] : sd t5, 904(ra) -- Store: [0x80003758]:0xFFFFFFFE00000020




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x8000143c]:KMMWB2 t6, t5, t4
	-[0x80001440]:sd t6, 912(ra)
Current Store : [0x80001444] : sd t5, 920(ra) -- Store: [0x80003768]:0x8000000000000100




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x8000146c]:KMMWB2 t6, t5, t4
	-[0x80001470]:sd t6, 928(ra)
Current Store : [0x80001474] : sd t5, 936(ra) -- Store: [0x80003778]:0x1000000000000004




Last Coverpoint : ['rs2_h3_val == 512', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000149c]:KMMWB2 t6, t5, t4
	-[0x800014a0]:sd t6, 944(ra)
Current Store : [0x800014a4] : sd t5, 952(ra) -- Store: [0x80003788]:0x0400000000000200




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800014d0]:KMMWB2 t6, t5, t4
	-[0x800014d4]:sd t6, 960(ra)
Current Store : [0x800014d8] : sd t5, 968(ra) -- Store: [0x80003798]:0x0100000000008000




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80001504]:KMMWB2 t6, t5, t4
	-[0x80001508]:sd t6, 976(ra)
Current Store : [0x8000150c] : sd t5, 984(ra) -- Store: [0x800037a8]:0x0080000000002000




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80001538]:KMMWB2 t6, t5, t4
	-[0x8000153c]:sd t6, 992(ra)
Current Store : [0x80001540] : sd t5, 1000(ra) -- Store: [0x800037b8]:0x00200000FFFFFFF9




Last Coverpoint : ['rs1_w1_val == 131072', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001568]:KMMWB2 t6, t5, t4
	-[0x8000156c]:sd t6, 1008(ra)
Current Store : [0x80001570] : sd t5, 1016(ra) -- Store: [0x800037c8]:0x00020000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80001594]:KMMWB2 t6, t5, t4
	-[0x80001598]:sd t6, 1024(ra)
Current Store : [0x8000159c] : sd t5, 1032(ra) -- Store: [0x800037d8]:0x0000200000000400




Last Coverpoint : ['rs1_w1_val == 4096', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800015c0]:KMMWB2 t6, t5, t4
	-[0x800015c4]:sd t6, 1040(ra)
Current Store : [0x800015c8] : sd t5, 1048(ra) -- Store: [0x800037e8]:0x00001000FFFFFEFF




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800015f4]:KMMWB2 t6, t5, t4
	-[0x800015f8]:sd t6, 1056(ra)
Current Store : [0x800015fc] : sd t5, 1064(ra) -- Store: [0x800037f8]:0x00000800FFBFFFFF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001628]:KMMWB2 t6, t5, t4
	-[0x8000162c]:sd t6, 1072(ra)
Current Store : [0x80001630] : sd t5, 1080(ra) -- Store: [0x80003808]:0x00000200FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001654]:KMMWB2 t6, t5, t4
	-[0x80001658]:sd t6, 1088(ra)
Current Store : [0x8000165c] : sd t5, 1096(ra) -- Store: [0x80003818]:0x00000080FFFFFFF6




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001684]:KMMWB2 t6, t5, t4
	-[0x80001688]:sd t6, 1104(ra)
Current Store : [0x8000168c] : sd t5, 1112(ra) -- Store: [0x80003828]:0x0000000400000400




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800016b4]:KMMWB2 t6, t5, t4
	-[0x800016b8]:sd t6, 1120(ra)
Current Store : [0x800016bc] : sd t5, 1128(ra) -- Store: [0x80003838]:0x0000000108000000




Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 32', 'rs1_w1_val == 0', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800016e0]:KMMWB2 t6, t5, t4
	-[0x800016e4]:sd t6, 1136(ra)
Current Store : [0x800016e8] : sd t5, 1144(ra) -- Store: [0x80003848]:0x00000000FFFBFFFF




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001710]:KMMWB2 t6, t5, t4
	-[0x80001714]:sd t6, 1152(ra)
Current Store : [0x80001718] : sd t5, 1160(ra) -- Store: [0x80003858]:0xFFFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000174c]:KMMWB2 t6, t5, t4
	-[0x80001750]:sd t6, 1168(ra)
Current Store : [0x80001754] : sd t5, 1176(ra) -- Store: [0x80003868]:0xDFFFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001780]:KMMWB2 t6, t5, t4
	-[0x80001784]:sd t6, 1184(ra)
Current Store : [0x80001788] : sd t5, 1192(ra) -- Store: [0x80003878]:0x0000000255555555




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800017a4]:KMMWB2 t6, t5, t4
	-[0x800017a8]:sd t6, 1200(ra)
Current Store : [0x800017ac] : sd t5, 1208(ra) -- Store: [0x80003888]:0xFFFFFFF840000000




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800017dc]:KMMWB2 t6, t5, t4
	-[0x800017e0]:sd t6, 1216(ra)
Current Store : [0x800017e4] : sd t5, 1224(ra) -- Store: [0x80003898]:0xC0000000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001804]:KMMWB2 t6, t5, t4
	-[0x80001808]:sd t6, 1232(ra)
Current Store : [0x8000180c] : sd t5, 1240(ra) -- Store: [0x800038a8]:0x0000004001000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001838]:KMMWB2 t6, t5, t4
	-[0x8000183c]:sd t6, 1248(ra)
Current Store : [0x80001840] : sd t5, 1256(ra) -- Store: [0x800038b8]:0x80000000FFFFFFF6




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000186c]:KMMWB2 t6, t5, t4
	-[0x80001870]:sd t6, 1264(ra)
Current Store : [0x80001874] : sd t5, 1272(ra) -- Store: [0x800038c8]:0x00000010FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800018a4]:KMMWB2 t6, t5, t4
	-[0x800018a8]:sd t6, 1280(ra)
Current Store : [0x800018ac] : sd t5, 1288(ra) -- Store: [0x800038d8]:0xF7FFFFFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800018dc]:KMMWB2 t6, t5, t4
	-[0x800018e0]:sd t6, 1296(ra)
Current Store : [0x800018e4] : sd t5, 1304(ra) -- Store: [0x800038e8]:0x00040000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000190c]:KMMWB2 t6, t5, t4
	-[0x80001910]:sd t6, 1312(ra)
Current Store : [0x80001914] : sd t5, 1320(ra) -- Store: [0x800038f8]:0x00000100FFFFFBFF




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x8000193c]:KMMWB2 t6, t5, t4
	-[0x80001940]:sd t6, 1328(ra)
Current Store : [0x80001944] : sd t5, 1336(ra) -- Store: [0x80003908]:0xFFFFFFF900040000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001970]:KMMWB2 t6, t5, t4
	-[0x80001974]:sd t6, 1344(ra)
Current Store : [0x80001978] : sd t5, 1352(ra) -- Store: [0x80003918]:0x04000000FFFFFFBF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800019ac]:KMMWB2 t6, t5, t4
	-[0x800019b0]:sd t6, 1360(ra)
Current Store : [0x800019b4] : sd t5, 1368(ra) -- Store: [0x80003928]:0x00400000FFFBFFFF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800019e4]:KMMWB2 t6, t5, t4
	-[0x800019e8]:sd t6, 1376(ra)
Current Store : [0x800019ec] : sd t5, 1384(ra) -- Store: [0x80003938]:0xFFFFEFFFFFFFFFEF




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001a14]:KMMWB2 t6, t5, t4
	-[0x80001a18]:sd t6, 1392(ra)
Current Store : [0x80001a1c] : sd t5, 1400(ra) -- Store: [0x80003948]:0x00000005FFFFFFFD




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001a34]:KMMWB2 t6, t5, t4
	-[0x80001a38]:sd t6, 1408(ra)
Current Store : [0x80001a3c] : sd t5, 1416(ra) -- Store: [0x80003958]:0xFFFFFFFFFFFFFFFE




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a68]:KMMWB2 t6, t5, t4
	-[0x80001a6c]:sd t6, 1424(ra)
Current Store : [0x80001a70] : sd t5, 1432(ra) -- Store: [0x80003968]:0x3FFFFFFF10000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001aa0]:KMMWB2 t6, t5, t4
	-[0x80001aa4]:sd t6, 1440(ra)
Current Store : [0x80001aa8] : sd t5, 1448(ra) -- Store: [0x80003978]:0x0080000020000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001ad0]:KMMWB2 t6, t5, t4
	-[0x80001ad4]:sd t6, 1456(ra)
Current Store : [0x80001ad8] : sd t5, 1464(ra) -- Store: [0x80003988]:0x0000080002000000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80001af8]:KMMWB2 t6, t5, t4
	-[0x80001afc]:sd t6, 1472(ra)
Current Store : [0x80001b00] : sd t5, 1480(ra) -- Store: [0x80003998]:0xFFEFFFFF10000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001b28]:KMMWB2 t6, t5, t4
	-[0x80001b2c]:sd t6, 1488(ra)
Current Store : [0x80001b30] : sd t5, 1496(ra) -- Store: [0x800039a8]:0xFFFFFDFF00400000




Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_h3_val == -16385', 'rs2_h2_val == 16', 'rs2_h1_val == 8', 'rs2_h0_val == 16384', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80001b54]:KMMWB2 t6, t5, t4
	-[0x80001b58]:sd t6, 1504(ra)
Current Store : [0x80001b5c] : sd t5, 1512(ra) -- Store: [0x800039b8]:0xFEFFFFFF80000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001b8c]:KMMWB2 t6, t5, t4
	-[0x80001b90]:sd t6, 1520(ra)
Current Store : [0x80001b94] : sd t5, 1528(ra) -- Store: [0x800039c8]:0x00000002FEFFFFFF




Last Coverpoint : ['opcode : kmmwb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == -2', 'rs2_h2_val == 8', 'rs2_h1_val == -1', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001bbc]:KMMWB2 t6, t5, t4
	-[0x80001bc0]:sd t6, 1536(ra)
Current Store : [0x80001bc4] : sd t5, 1544(ra) -- Store: [0x800039d8]:0xFFFFFFFA00100000





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

|s.no|            signature             |                                                                                                            coverpoints                                                                                                             |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFF7FFE000042000|- opcode : kmmwb2<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 16<br> - rs2_h1_val == 8<br> - rs2_h0_val == 16384<br>                                         |[0x800003c4]:KMMWB2 a4, gp, gp<br> [0x800003c8]:sd a4, 0(t0)<br>      |
|   2|[0x80003220]<br>0x00AB54AC0005FFFA|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -257<br> - rs2_h1_val == 21845<br>                                                                                 |[0x800003fc]:KMMWB2 a2, a2, a2<br> [0x80000400]:sd a2, 16(t0)<br>     |
|   3|[0x80003230]<br>0xFFFFFFF9FFFF0000|- rs1 : x25<br> - rs2 : x2<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -32768<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 65536<br>      |[0x80000438]:KMMWB2 s5, s9, sp<br> [0x8000043c]:sd s5, 32(t0)<br>     |
|   4|[0x80003240]<br>0x5555555600001000|- rs1 : x6<br> - rs2 : x28<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 32<br> - rs2_h0_val == 128<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 1048576<br> |[0x80000470]:KMMWB2 t1, t1, t3<br> [0x80000474]:sd t1, 48(t0)<br>     |
|   5|[0x80003250]<br>0x00000380FFFFFFFB|- rs1 : x19<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs2_h3_val == -8193<br> - rs2_h0_val == -16385<br> - rs1_w1_val == 4194304<br>                                                                                |[0x800004a0]:KMMWB2 t2, s3, t2<br> [0x800004a4]:sd t2, 64(t0)<br>     |
|   6|[0x80003260]<br>0x00155555C0000000|- rs1 : x21<br> - rs2 : x14<br> - rd : x18<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 32<br> - rs2_h1_val == 16384<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 2147483647<br>                                             |[0x800004d8]:KMMWB2 s2, s5, a4<br> [0x800004dc]:sd s2, 80(t0)<br>     |
|   7|[0x80003270]<br>0x0000000040000001|- rs1 : x23<br> - rs2 : x25<br> - rd : x13<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -2<br> - rs1_w0_val == -1073741825<br>                                                                                                     |[0x80000504]:KMMWB2 a3, s7, s9<br> [0x80000508]:sd a3, 96(t0)<br>     |
|   8|[0x80003280]<br>0x00000800FFFFFFFF|- rs1 : x17<br> - rs2 : x23<br> - rd : x15<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 128<br> - rs2_h1_val == 2048<br> - rs1_w1_val == 524288<br>                                                                                |[0x80000538]:KMMWB2 a5, a7, s7<br> [0x8000053c]:sd a5, 112(t0)<br>    |
|   9|[0x80003290]<br>0x0000000000000010|- rs1 : x8<br> - rs2 : x29<br> - rd : x1<br> - rs2_h3_val == -513<br> - rs2_h1_val == -1025<br> - rs1_w0_val == -33<br>                                                                                                             |[0x8000056c]:KMMWB2 ra, fp, t4<br> [0x80000570]:sd ra, 128(t0)<br>    |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x23<br> - rs2_h3_val == -257<br> - rs2_h2_val == -1025<br> - rs2_h0_val == -2<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                  |[0x800005a0]:KMMWB2 s7, zero, s1<br> [0x800005a4]:sd s7, 144(t0)<br>  |
|  11|[0x800032b0]<br>0xAAAB555400000001|- rs1 : x11<br> - rs2 : x19<br> - rd : x31<br> - rs2_h3_val == -129<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -9<br> - rs1_w0_val == 4<br>                                                                                      |[0x800005d0]:KMMWB2 t6, a1, s3<br> [0x800005d4]:sd t6, 160(t0)<br>    |
|  12|[0x800032c0]<br>0x00000041FFFFFFFF|- rs1 : x28<br> - rs2 : x20<br> - rd : x16<br> - rs2_h3_val == -65<br> - rs2_h1_val == -4097<br> - rs1_w1_val == -65<br> - rs1_w0_val == 64<br>                                                                                     |[0x800005f8]:KMMWB2 a6, t3, s4<br> [0x800005fc]:sd a6, 176(t0)<br>    |
|  13|[0x800032d0]<br>0xFFFFFFFFFFFF7FE0|- rs1 : x4<br> - rs2 : x1<br> - rd : x22<br> - rs2_h3_val == -33<br> - rs2_h2_val == -9<br> - rs2_h0_val == -1025<br>                                                                                                               |[0x80000628]:KMMWB2 s6, tp, ra<br> [0x8000062c]:sd s6, 192(t0)<br>    |
|  14|[0x800032e0]<br>0xFFFFE000FFFFFFFD|- rs1 : x18<br> - rs2 : x11<br> - rd : x26<br> - rs2_h3_val == -17<br> - rs2_h0_val == -2049<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 32<br>                                                                                   |[0x80000654]:KMMWB2 s10, s2, a1<br> [0x80000658]:sd s10, 208(t0)<br>  |
|  15|[0x800032f0]<br>0x0004000000000010|- rs1 : x7<br> - rs2 : x27<br> - rd : x2<br> - rs2_h3_val == -9<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 2<br> - rs1_w0_val == -513<br>                                                                                         |[0x80000684]:KMMWB2 sp, t2, s11<br> [0x80000688]:sd sp, 224(t0)<br>   |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x4<br> - rd : x8<br> - rs2_h3_val == -5<br> - rs2_h0_val == 256<br>                                                                                                                                          |[0x800006bc]:KMMWB2 fp, s1, tp<br> [0x800006c0]:sd fp, 0(sp)<br>      |
|  17|[0x80003310]<br>0xD555555500000000|- rs1 : x5<br> - rs2 : x13<br> - rd : x19<br> - rs2_h3_val == -3<br> - rs2_h1_val == -2<br> - rs2_h0_val == 1024<br> - rs1_w0_val == 8<br>                                                                                          |[0x800006f0]:KMMWB2 s3, t0, a3<br> [0x800006f4]:sd s3, 16(sp)<br>     |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x18<br> - rd : x0<br> - rs2_h3_val == -2<br> - rs2_h2_val == 8<br> - rs2_h1_val == -1<br>                                                                                                                   |[0x80000720]:KMMWB2 zero, s4, s2<br> [0x80000724]:sd zero, 32(sp)<br> |
|  19|[0x80003330]<br>0x0004008000008010|- rs1 : x14<br> - rs2 : x16<br> - rd : x3<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -2049<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -524289<br>                                                                         |[0x80000758]:KMMWB2 gp, a4, a6<br> [0x8000075c]:sd gp, 48(sp)<br>     |
|  20|[0x80003340]<br>0xFFFFFFFFFFFEFFE0|- rs1 : x10<br> - rs2 : x30<br> - rd : x24<br> - rs2_h3_val == 16384<br>                                                                                                                                                            |[0x80000788]:KMMWB2 s8, a0, t5<br> [0x8000078c]:sd s8, 64(sp)<br>     |
|  21|[0x80003350]<br>0xFFFFFFFF00000000|- rs1 : x29<br> - rs2 : x21<br> - rd : x28<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -3<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 0<br> - rs1_w1_val == 64<br> - rs1_w0_val == -1<br>                                        |[0x800007b4]:KMMWB2 t3, t4, s5<br> [0x800007b8]:sd t3, 80(sp)<br>     |
|  22|[0x80003360]<br>0x0002000000000000|- rs1 : x27<br> - rs2 : x6<br> - rd : x20<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -3<br> - rs2_h0_val == -1<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -16385<br>                                                        |[0x800007f0]:KMMWB2 s4, s11, t1<br> [0x800007f4]:sd s4, 96(sp)<br>    |
|  23|[0x80003370]<br>0xFFFFBFFF40010000|- rs1 : x22<br> - rs2 : x24<br> - rd : x27<br> - rs1_w0_val == -2147483648<br> - rs2_h3_val == 2048<br>                                                                                                                             |[0x80000820]:KMMWB2 s11, s6, s8<br> [0x80000824]:sd s11, 112(sp)<br>  |
|  24|[0x80003380]<br>0xFFFFFDFF00006000|- rs1 : x15<br> - rs2 : x31<br> - rd : x25<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 16384<br> - rs1_w1_val == -1025<br> - rs1_w0_val == 134217728<br>                                                                           |[0x80000850]:KMMWB2 s9, a5, t6<br> [0x80000854]:sd s9, 128(sp)<br>    |
|  25|[0x80003390]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x0<br> - rd : x4<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs1_w0_val == 1<br>                                                                                                |[0x80000880]:KMMWB2 tp, a3, zero<br> [0x80000884]:sd tp, 144(sp)<br>  |
|  26|[0x800033a0]<br>0x00001400FFFFFFFF|- rs1 : x30<br> - rs2 : x15<br> - rd : x9<br> - rs2_h3_val == 256<br> - rs2_h2_val == -5<br> - rs2_h1_val == 8192<br> - rs1_w1_val == -33554433<br>                                                                                 |[0x800008b4]:KMMWB2 s1, t5, a5<br> [0x800008b8]:sd s1, 160(sp)<br>    |
|  27|[0x800033b0]<br>0x02000001FFFFDFFF|- rs1 : x26<br> - rs2 : x17<br> - rd : x10<br> - rs2_h3_val == 128<br> - rs2_h1_val == 256<br> - rs2_h0_val == 2<br> - rs1_w0_val == -134217729<br>                                                                                 |[0x800008e4]:KMMWB2 a0, s10, a7<br> [0x800008e8]:sd a0, 176(sp)<br>   |
|  28|[0x800033c0]<br>0xFFE0003F00000008|- rs1 : x1<br> - rs2 : x22<br> - rd : x11<br> - rs2_h3_val == 64<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 256<br>                                                                                                           |[0x80000918]:KMMWB2 a1, ra, s6<br> [0x8000091c]:sd a1, 192(sp)<br>    |
|  29|[0x800033d0]<br>0xFEFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x26<br> - rd : x5<br> - rs2_h3_val == 32<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 512<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -9<br>                                                          |[0x80000948]:KMMWB2 t0, s8, s10<br> [0x8000094c]:sd t0, 0(ra)<br>     |
|  30|[0x800033e0]<br>0x0000000200000004|- rs1 : x16<br> - rs2 : x8<br> - rd : x30<br> - rs2_h3_val == 16<br> - rs2_h0_val == 4096<br>                                                                                                                                       |[0x80000974]:KMMWB2 t5, a6, fp<br> [0x80000978]:sd t5, 16(ra)<br>     |
|  31|[0x800033f0]<br>0x0004004000004000|- rs1 : x31<br> - rs2 : x10<br> - rd : x29<br> - rs2_h3_val == 8<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -513<br> - rs2_h0_val == 8192<br>                                                                                    |[0x800009a8]:KMMWB2 t4, t6, a0<br> [0x800009ac]:sd t4, 32(ra)<br>     |
|  32|[0x80003400]<br>0xFFFFFFFF00000004|- rs1 : x2<br> - rs2 : x5<br> - rd : x17<br> - rs2_h3_val == 4<br> - rs2_h2_val == -65<br> - rs1_w0_val == 512<br>                                                                                                                  |[0x800009d0]:KMMWB2 a7, sp, t0<br> [0x800009d4]:sd a7, 48(ra)<br>     |
|  33|[0x80003410]<br>0xFFF78000FFEFFFFF|- rs2_h3_val == 2<br> - rs2_h2_val == -17<br> - rs2_h0_val == 512<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -67108865<br>                                                                                                  |[0x80000a00]:KMMWB2 t6, t5, t4<br> [0x80000a04]:sd t6, 64(ra)<br>     |
|  34|[0x80003420]<br>0x00010000FFFFFFFF|- rs2_h3_val == 1<br> - rs2_h1_val == -32768<br> - rs1_w1_val == 134217728<br>                                                                                                                                                      |[0x80000a2c]:KMMWB2 t6, t5, t4<br> [0x80000a30]:sd t6, 80(ra)<br>     |
|  35|[0x80003430]<br>0x0000008000002001|- rs2_h0_val == -8193<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                |[0x80000a60]:KMMWB2 t6, t5, t4<br> [0x80000a64]:sd t6, 96(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFAAAA00000000|- rs2_h3_val == -1<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 4<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -5<br>                                                                                                            |[0x80000a8c]:KMMWB2 t6, t5, t4<br> [0x80000a90]:sd t6, 112(ra)<br>    |
|  37|[0x80003450]<br>0xFFFFFFFCFFFFFB00|- rs2_h2_val == 21845<br> - rs2_h0_val == -5<br> - rs1_w1_val == -5<br> - rs1_w0_val == 8388608<br>                                                                                                                                 |[0x80000abc]:KMMWB2 t6, t5, t4<br> [0x80000ac0]:sd t6, 128(ra)<br>    |
|  38|[0x80003460]<br>0x20008000FFFFFFFF|- rs2_h2_val == -16385<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                          |[0x80000af8]:KMMWB2 t6, t5, t4<br> [0x80000afc]:sd t6, 144(ra)<br>    |
|  39|[0x80003470]<br>0x0000080000000000|- rs2_h2_val == -8193<br> - rs2_h1_val == -5<br> - rs2_h0_val == 32<br> - rs1_w1_val == -8193<br>                                                                                                                                   |[0x80000b2c]:KMMWB2 t6, t5, t4<br> [0x80000b30]:sd t6, 160(ra)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFBFFFFFFFE|- rs2_h2_val == -513<br> - rs2_h0_val == -257<br> - rs1_w1_val == 256<br> - rs1_w0_val == 128<br>                                                                                                                                   |[0x80000b5c]:KMMWB2 t6, t5, t4<br> [0x80000b60]:sd t6, 176(ra)<br>    |
|  41|[0x80003490]<br>0x0000000000000004|- rs2_h2_val == -129<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -21846<br> - rs1_w1_val == -9<br>                                                                                                                               |[0x80000b8c]:KMMWB2 t6, t5, t4<br> [0x80000b90]:sd t6, 192(ra)<br>    |
|  42|[0x800034a0]<br>0xFFFFFFFEFFFFFFEC|- rs2_h2_val == -33<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                    |[0x80000bc4]:KMMWB2 t6, t5, t4<br> [0x80000bc8]:sd t6, 208(ra)<br>    |
|  43|[0x800034b0]<br>0x0000000000020000|- rs2_h0_val == 2048<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2097152<br>                                                                                                                                                         |[0x80000bf4]:KMMWB2 t6, t5, t4<br> [0x80000bf8]:sd t6, 224(ra)<br>    |
|  44|[0x800034c0]<br>0x0000010000010000|- rs1_w1_val == -513<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                 |[0x80000c20]:KMMWB2 t6, t5, t4<br> [0x80000c24]:sd t6, 240(ra)<br>    |
|  45|[0x800034d0]<br>0xFFFFFFFD00000030|- rs1_w1_val == -3<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                   |[0x80000c50]:KMMWB2 t6, t5, t4<br> [0x80000c54]:sd t6, 256(ra)<br>    |
|  46|[0x800034e0]<br>0xFFFFFFFF00000018|- rs2_h2_val == 256<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                  |[0x80000c80]:KMMWB2 t6, t5, t4<br> [0x80000c84]:sd t6, 272(ra)<br>    |
|  47|[0x800034f0]<br>0x00000004FFFF8000|- rs2_h2_val == 4096<br> - rs1_w1_val == 32<br> - rs1_w0_val == 32768<br>                                                                                                                                                           |[0x80000cac]:KMMWB2 t6, t5, t4<br> [0x80000cb0]:sd t6, 288(ra)<br>    |
|  48|[0x80003500]<br>0x2AAAAAAB00000008|- rs2_h0_val == 16<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                    |[0x80000ce4]:KMMWB2 t6, t5, t4<br> [0x80000ce8]:sd t6, 304(ra)<br>    |
|  49|[0x80003510]<br>0x00004001FFFFFFFF|- rs1_w1_val == -32769<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                 |[0x80000d1c]:KMMWB2 t6, t5, t4<br> [0x80000d20]:sd t6, 320(ra)<br>    |
|  50|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == 1024<br> - rs1_w1_val == 2<br> - rs1_w0_val == 4096<br>                                                                                                                                                             |[0x80000d4c]:KMMWB2 t6, t5, t4<br> [0x80000d50]:sd t6, 336(ra)<br>    |
|  51|[0x80003530]<br>0xFFFFFFFF00000000|- rs2_h0_val == 8<br> - rs1_w1_val == 8<br> - rs1_w0_val == 2048<br>                                                                                                                                                                |[0x80000d7c]:KMMWB2 t6, t5, t4<br> [0x80000d80]:sd t6, 352(ra)<br>    |
|  52|[0x80003540]<br>0xFFFFFFC800000000|- rs1_w1_val == 262144<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                 |[0x80000dac]:KMMWB2 t6, t5, t4<br> [0x80000db0]:sd t6, 368(ra)<br>    |
|  53|[0x80003550]<br>0x01000001FFFFFFFF|- rs2_h1_val == 16<br> - rs2_h0_val == -65<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 16<br>                                                                                                                                 |[0x80000ddc]:KMMWB2 t6, t5, t4<br> [0x80000de0]:sd t6, 384(ra)<br>    |
|  54|[0x80003560]<br>0xFEFFFFFF00000000|- rs1_w1_val == -268435457<br> - rs1_w0_val == 2<br>                                                                                                                                                                                |[0x80000e10]:KMMWB2 t6, t5, t4<br> [0x80000e14]:sd t6, 400(ra)<br>    |
|  55|[0x80003570]<br>0xFFFFFFFF00000000|- rs2_h0_val == 21845<br>                                                                                                                                                                                                           |[0x80000e3c]:KMMWB2 t6, t5, t4<br> [0x80000e40]:sd t6, 416(ra)<br>    |
|  56|[0x80003580]<br>0xFFFFFEFFFFFFFFFF|- rs2_h2_val == 1024<br> - rs2_h1_val == -65<br>                                                                                                                                                                                    |[0x80000e70]:KMMWB2 t6, t5, t4<br> [0x80000e74]:sd t6, 432(ra)<br>    |
|  57|[0x80003590]<br>0xFFFFFFFF00010000|- rs2_h2_val == 64<br>                                                                                                                                                                                                              |[0x80000ea0]:KMMWB2 t6, t5, t4<br> [0x80000ea4]:sd t6, 448(ra)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFBFFFFFFFFF|- rs2_h2_val == 4<br> - rs1_w1_val == -524289<br>                                                                                                                                                                                   |[0x80000ed4]:KMMWB2 t6, t5, t4<br> [0x80000ed8]:sd t6, 464(ra)<br>    |
|  59|[0x800035b0]<br>0x0000000000000010|- rs2_h2_val == 2<br>                                                                                                                                                                                                               |[0x80000efc]:KMMWB2 t6, t5, t4<br> [0x80000f00]:sd t6, 480(ra)<br>    |
|  60|[0x800035c0]<br>0xFFFFFFDF00000000|- rs2_h2_val == 1<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                  |[0x80000f2c]:KMMWB2 t6, t5, t4<br> [0x80000f30]:sd t6, 496(ra)<br>    |
|  61|[0x800035d0]<br>0x00000000FFFF7FFF|- rs2_h0_val == 1<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                   |[0x80000f60]:KMMWB2 t6, t5, t4<br> [0x80000f64]:sd t6, 512(ra)<br>    |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFEFFFF|- rs2_h2_val == -1<br> - rs2_h1_val == -33<br>                                                                                                                                                                                      |[0x80000f90]:KMMWB2 t6, t5, t4<br> [0x80000f94]:sd t6, 528(ra)<br>    |
|  63|[0x800035f0]<br>0x0000000000014000|- rs2_h1_val == -16385<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                           |[0x80000fb8]:KMMWB2 t6, t5, t4<br> [0x80000fbc]:sd t6, 544(ra)<br>    |
|  64|[0x80003600]<br>0xC000800000000000|- rs2_h1_val == -8193<br>                                                                                                                                                                                                           |[0x80000ff0]:KMMWB2 t6, t5, t4<br> [0x80000ff4]:sd t6, 560(ra)<br>    |
|  65|[0x80003610]<br>0xFFEFFFFF00000044|- rs2_h1_val == -2049<br> - rs2_h0_val == -17<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -131073<br>                                                                                                                        |[0x80001028]:KMMWB2 t6, t5, t4<br> [0x8000102c]:sd t6, 576(ra)<br>    |
|  66|[0x80003620]<br>0x00000180FFFFFFFE|- rs2_h1_val == -257<br>                                                                                                                                                                                                            |[0x80001054]:KMMWB2 t6, t5, t4<br> [0x80001058]:sd t6, 592(ra)<br>    |
|  67|[0x80003630]<br>0x1000800000000000|- rs2_h1_val == -129<br> - rs2_h0_val == 64<br>                                                                                                                                                                                     |[0x80001080]:KMMWB2 t6, t5, t4<br> [0x80001084]:sd t6, 608(ra)<br>    |
|  68|[0x80003640]<br>0x0000020000000000|- rs2_h1_val == -17<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                   |[0x800010b0]:KMMWB2 t6, t5, t4<br> [0x800010b4]:sd t6, 624(ra)<br>    |
|  69|[0x80003650]<br>0xFFFD8000FFFDF800|- rs2_h1_val == 128<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 67108864<br>                                                                                                                                                  |[0x800010e4]:KMMWB2 t6, t5, t4<br> [0x800010e8]:sd t6, 640(ra)<br>    |
|  70|[0x80003660]<br>0x0000000100000000|- rs2_h1_val == 64<br>                                                                                                                                                                                                              |[0x80001114]:KMMWB2 t6, t5, t4<br> [0x80001118]:sd t6, 656(ra)<br>    |
|  71|[0x80003670]<br>0x0000000000000000|- rs2_h1_val == 1<br>                                                                                                                                                                                                               |[0x80001140]:KMMWB2 t6, t5, t4<br> [0x80001144]:sd t6, 672(ra)<br>    |
|  72|[0x80003680]<br>0x00000100FFFFFEFF|- rs2_h0_val == 4<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                  |[0x80001170]:KMMWB2 t6, t5, t4<br> [0x80001174]:sd t6, 688(ra)<br>    |
|  73|[0x80003690]<br>0x0001FFFFFFFFFFFC|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                      |[0x800011a8]:KMMWB2 t6, t5, t4<br> [0x800011ac]:sd t6, 704(ra)<br>    |
|  74|[0x800036a0]<br>0x00804000FFFFFFC7|- rs1_w1_val == -536870913<br> - rs1_w0_val == -262145<br>                                                                                                                                                                          |[0x800011e0]:KMMWB2 t6, t5, t4<br> [0x800011e4]:sd t6, 720(ra)<br>    |
|  75|[0x800036b0]<br>0xFFFFDFFFFFFFFFFF|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                        |[0x80001214]:KMMWB2 t6, t5, t4<br> [0x80001218]:sd t6, 736(ra)<br>    |
|  76|[0x800036c0]<br>0xFFFDFFFF00001556|- rs1_w1_val == -262145<br> - rs1_w0_val == -8193<br>                                                                                                                                                                               |[0x80001254]:KMMWB2 t6, t5, t4<br> [0x80001258]:sd t6, 752(ra)<br>    |
|  77|[0x800036d0]<br>0x00000004FFFB0000|- rs1_w1_val == -131073<br>                                                                                                                                                                                                         |[0x80001284]:KMMWB2 t6, t5, t4<br> [0x80001288]:sd t6, 768(ra)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFEFFFFFFFFF|- rs1_w1_val == -16385<br>                                                                                                                                                                                                          |[0x800012bc]:KMMWB2 t6, t5, t4<br> [0x800012c0]:sd t6, 784(ra)<br>    |
|  79|[0x800036f0]<br>0x0000000000000000|- rs1_w1_val == -4097<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                |[0x800012e4]:KMMWB2 t6, t5, t4<br> [0x800012e8]:sd t6, 800(ra)<br>    |
|  80|[0x80003700]<br>0xFFFFFBFF00000000|- rs1_w1_val == -2049<br>                                                                                                                                                                                                           |[0x80001318]:KMMWB2 t6, t5, t4<br> [0x8000131c]:sd t6, 816(ra)<br>    |
|  81|[0x80003710]<br>0x0000001000000000|- rs2_h0_val == -9<br> - rs1_w1_val == -257<br> - rs1_w0_val == -129<br>                                                                                                                                                            |[0x80001348]:KMMWB2 t6, t5, t4<br> [0x8000134c]:sd t6, 832(ra)<br>    |
|  82|[0x80003720]<br>0xFFFFFFBFFFFF7FFF|- rs1_w1_val == -129<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                             |[0x8000137c]:KMMWB2 t6, t5, t4<br> [0x80001380]:sd t6, 848(ra)<br>    |
|  83|[0x80003730]<br>0xFFFFFFFF00155540|- rs1_w1_val == -33<br>                                                                                                                                                                                                             |[0x800013ac]:KMMWB2 t6, t5, t4<br> [0x800013b0]:sd t6, 864(ra)<br>    |
|  84|[0x80003740]<br>0x00000000FFFFBFFF|- rs1_w1_val == -17<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                |[0x800013e0]:KMMWB2 t6, t5, t4<br> [0x800013e4]:sd t6, 880(ra)<br>    |
|  85|[0x80003750]<br>0x0000000000000000|- rs1_w1_val == -2<br>                                                                                                                                                                                                              |[0x8000140c]:KMMWB2 t6, t5, t4<br> [0x80001410]:sd t6, 896(ra)<br>    |
|  86|[0x80003760]<br>0xFFF9000000000002|- rs1_w1_val == -2147483648<br>                                                                                                                                                                                                     |[0x8000143c]:KMMWB2 t6, t5, t4<br> [0x80001440]:sd t6, 912(ra)<br>    |
|  87|[0x80003770]<br>0xF555400000000000|- rs1_w1_val == 268435456<br>                                                                                                                                                                                                       |[0x8000146c]:KMMWB2 t6, t5, t4<br> [0x80001470]:sd t6, 928(ra)<br>    |
|  88|[0x80003780]<br>0x01000000FFFFFFFB|- rs2_h3_val == 512<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                |[0x8000149c]:KMMWB2 t6, t5, t4<br> [0x800014a0]:sd t6, 944(ra)<br>    |
|  89|[0x80003790]<br>0x00100000FFFFFBFF|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                        |[0x800014d0]:KMMWB2 t6, t5, t4<br> [0x800014d4]:sd t6, 960(ra)<br>    |
|  90|[0x800037a0]<br>0xFFFFDF0000000008|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                         |[0x80001504]:KMMWB2 t6, t5, t4<br> [0x80001508]:sd t6, 976(ra)<br>    |
|  91|[0x800037b0]<br>0xFFFFFBC000000000|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                         |[0x80001538]:KMMWB2 t6, t5, t4<br> [0x8000153c]:sd t6, 992(ra)<br>    |
|  92|[0x800037c0]<br>0x0000001401000000|- rs1_w1_val == 131072<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                            |[0x80001568]:KMMWB2 t6, t5, t4<br> [0x8000156c]:sd t6, 1008(ra)<br>   |
|  93|[0x800037d0]<br>0xFFFFFFFF00000080|- rs1_w1_val == 8192<br>                                                                                                                                                                                                            |[0x80001594]:KMMWB2 t6, t5, t4<br> [0x80001598]:sd t6, 1024(ra)<br>   |
|  94|[0x800037e0]<br>0x0000000200000000|- rs1_w1_val == 4096<br> - rs1_w0_val == -257<br>                                                                                                                                                                                   |[0x800015c0]:KMMWB2 t6, t5, t4<br> [0x800015c4]:sd t6, 1040(ra)<br>   |
|  95|[0x800037f0]<br>0xFFFFFF7FFFFBFFFF|- rs1_w1_val == 2048<br>                                                                                                                                                                                                            |[0x800015f4]:KMMWB2 t6, t5, t4<br> [0x800015f8]:sd t6, 1056(ra)<br>   |
|  96|[0x80003800]<br>0xFFFFFF0000001556|- rs1_w1_val == 512<br>                                                                                                                                                                                                             |[0x80001628]:KMMWB2 t6, t5, t4<br> [0x8000162c]:sd t6, 1072(ra)<br>   |
|  97|[0x80003810]<br>0xFFFFFFFE0000000A|- rs1_w1_val == 128<br>                                                                                                                                                                                                             |[0x80001654]:KMMWB2 t6, t5, t4<br> [0x80001658]:sd t6, 1088(ra)<br>   |
|  98|[0x80003820]<br>0x0000000000000000|- rs1_w1_val == 4<br>                                                                                                                                                                                                               |[0x80001684]:KMMWB2 t6, t5, t4<br> [0x80001688]:sd t6, 1104(ra)<br>   |
|  99|[0x80003830]<br>0xFFFFFFFFFC000000|- rs1_w1_val == 1<br>                                                                                                                                                                                                               |[0x800016b4]:KMMWB2 t6, t5, t4<br> [0x800016b8]:sd t6, 1120(ra)<br>   |
| 100|[0x80003850]<br>0x00000000FFEF0000|- rs1_w1_val == -1<br>                                                                                                                                                                                                              |[0x80001710]:KMMWB2 t6, t5, t4<br> [0x80001714]:sd t6, 1152(ra)<br>   |
| 101|[0x80003860]<br>0xF0003FFFFFFEAAAA|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                     |[0x8000174c]:KMMWB2 t6, t5, t4<br> [0x80001750]:sd t6, 1168(ra)<br>   |
| 102|[0x80003870]<br>0x00000000FFFC0000|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                      |[0x80001780]:KMMWB2 t6, t5, t4<br> [0x80001784]:sd t6, 1184(ra)<br>   |
| 103|[0x80003880]<br>0xFFFFFFFF00200000|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                      |[0x800017a4]:KMMWB2 t6, t5, t4<br> [0x800017a8]:sd t6, 1200(ra)<br>   |
| 104|[0x80003890]<br>0xFF000000FFFFEFFF|- rs2_h2_val == 512<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                |[0x800017dc]:KMMWB2 t6, t5, t4<br> [0x800017e0]:sd t6, 1216(ra)<br>   |
| 105|[0x800038a0]<br>0xFFFFFFFF00008000|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                        |[0x80001804]:KMMWB2 t6, t5, t4<br> [0x80001808]:sd t6, 1232(ra)<br>   |
| 106|[0x800038b0]<br>0x0004000000000000|- rs2_h0_val == -33<br>                                                                                                                                                                                                             |[0x80001838]:KMMWB2 t6, t5, t4<br> [0x8000183c]:sd t6, 1248(ra)<br>   |
| 107|[0x800038c0]<br>0xFFFFFFFF00004020|- rs2_h0_val == -513<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                               |[0x8000186c]:KMMWB2 t6, t5, t4<br> [0x80001870]:sd t6, 1264(ra)<br>   |
| 108|[0x800038d0]<br>0x00011000FFFFFFFB|- rs1_w0_val == -4097<br>                                                                                                                                                                                                           |[0x800018a4]:KMMWB2 t6, t5, t4<br> [0x800018a8]:sd t6, 1280(ra)<br>   |
| 109|[0x800038e0]<br>0xFFFFFEF8FFFFFBFF|- rs1_w0_val == -2049<br>                                                                                                                                                                                                           |[0x800018dc]:KMMWB2 t6, t5, t4<br> [0x800018e0]:sd t6, 1296(ra)<br>   |
| 110|[0x800038f0]<br>0xFFFFFFFE00000100|- rs1_w0_val == -1025<br>                                                                                                                                                                                                           |[0x8000190c]:KMMWB2 t6, t5, t4<br> [0x80001910]:sd t6, 1312(ra)<br>   |
| 111|[0x80003900]<br>0x000000000003FFF8|- rs2_h0_val == 32767<br>                                                                                                                                                                                                           |[0x8000193c]:KMMWB2 t6, t5, t4<br> [0x80001940]:sd t6, 1328(ra)<br>   |
| 112|[0x80003910]<br>0xFFFFC80000000000|- rs1_w0_val == -65<br>                                                                                                                                                                                                             |[0x80001970]:KMMWB2 t6, t5, t4<br> [0x80001974]:sd t6, 1344(ra)<br>   |
| 113|[0x80003920]<br>0x0000048000008008|- rs2_h0_val == -4097<br>                                                                                                                                                                                                           |[0x800019ac]:KMMWB2 t6, t5, t4<br> [0x800019b0]:sd t6, 1360(ra)<br>   |
| 114|[0x80003930]<br>0xFFFFFBFF00000000|- rs1_w0_val == -17<br>                                                                                                                                                                                                             |[0x800019e4]:KMMWB2 t6, t5, t4<br> [0x800019e8]:sd t6, 1376(ra)<br>   |
| 115|[0x80003940]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == -3<br>                                                                                                                                                                                                              |[0x80001a14]:KMMWB2 t6, t5, t4<br> [0x80001a18]:sd t6, 1392(ra)<br>   |
| 116|[0x80003950]<br>0x0000000000000000|- rs1_w0_val == -2<br>                                                                                                                                                                                                              |[0x80001a34]:KMMWB2 t6, t5, t4<br> [0x80001a38]:sd t6, 1408(ra)<br>   |
| 117|[0x80003960]<br>0xC0000001FFEFE000|- rs2_h0_val == -129<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                              |[0x80001a68]:KMMWB2 t6, t5, t4<br> [0x80001a6c]:sd t6, 1424(ra)<br>   |
| 118|[0x80003970]<br>0xFFFFF700FFFBC000|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                       |[0x80001aa0]:KMMWB2 t6, t5, t4<br> [0x80001aa4]:sd t6, 1440(ra)<br>   |
| 119|[0x80003980]<br>0xFFFFFFFE01FFFC00|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                        |[0x80001ad0]:KMMWB2 t6, t5, t4<br> [0x80001ad4]:sd t6, 1456(ra)<br>   |
| 120|[0x80003990]<br>0x00004020FFFFA000|- rs2_h0_val == -3<br>                                                                                                                                                                                                              |[0x80001af8]:KMMWB2 t6, t5, t4<br> [0x80001afc]:sd t6, 1472(ra)<br>   |
| 121|[0x800039a0]<br>0xFFFFFFFEFFFFBF80|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                         |[0x80001b28]:KMMWB2 t6, t5, t4<br> [0x80001b2c]:sd t6, 1488(ra)<br>   |
| 122|[0x800039c0]<br>0xFFFFFFFFFFFFEDFF|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                       |[0x80001b8c]:KMMWB2 t6, t5, t4<br> [0x80001b90]:sd t6, 1520(ra)<br>   |
