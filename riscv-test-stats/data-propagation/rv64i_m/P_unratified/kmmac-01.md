
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001d30')]      |
| SIG_REGION                | [('0x80003210', '0x80003b90', '304 dwords')]      |
| COV_LABELS                | kmmac      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmac-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 304      |
| STAT1                     | 149      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 152     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001cc0]:KMMAC t6, t5, t4
      [0x80001cc4]:sd t6, 1920(sp)
 -- Signature Address: 0x80003b60 Data: 0x9FD817DE77FE5F5E
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -134217729
      - rs2_w0_val == 2048
      - rs1_w0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001cf4]:KMMAC t6, t5, t4
      [0x80001cf8]:sd t6, 1936(sp)
 -- Signature Address: 0x80003b70 Data: 0x9FDC17DE77FE5E90
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -4194305
      - rs2_w0_val == -513
      - rs1_w1_val == -268435457




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001d1c]:KMMAC t6, t5, t4
      [0x80001d20]:sd t6, 1952(sp)
 -- Signature Address: 0x80003b80 Data: 0x9FDC17E077FE5E29
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -129
      - rs1_w1_val == -67108865
      - rs1_w0_val == -513






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmac', 'rs1 : x29', 'rs2 : x29', 'rd : x18', 'rs1 == rs2 != rd', 'rs2_w1_val == 16384', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800003d0]:KMMAC s2, t4, t4
	-[0x800003d4]:sd s2, 0(fp)
Current Store : [0x800003d8] : sd t4, 8(fp) -- Store: [0x80003218]:0x00004000AAAAAAAB




Last Coverpoint : ['rs1 : x26', 'rs2 : x26', 'rd : x26', 'rs1 == rs2 == rd', 'rs2_w1_val == -1431655766', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800003fc]:KMMAC s10, s10, s10
	-[0x80000400]:sd s10, 16(fp)
Current Store : [0x80000404] : sd s10, 24(fp) -- Store: [0x80003228]:0xC71C71C600000006




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x22', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -2', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000420]:KMMAC s6, gp, a6
	-[0x80000424]:sd s6, 32(fp)
Current Store : [0x80000428] : sd gp, 40(fp) -- Store: [0x80003238]:0x8000000000000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x10', 'rs1 == rd != rs2', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000460]:KMMAC a0, a0, t2
	-[0x80000464]:sd a0, 48(fp)
Current Store : [0x80000468] : sd a0, 56(fp) -- Store: [0x80003248]:0x000017FFFFFF8753




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 32', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000048c]:KMMAC t3, sp, t3
	-[0x80000490]:sd t3, 64(fp)
Current Store : [0x80000494] : sd sp, 72(fp) -- Store: [0x80003258]:0x5555555500000008




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rd : x27', 'rs2_w1_val == -536870913', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800004c8]:KMMAC s11, ra, s8
	-[0x800004cc]:sd s11, 80(fp)
Current Store : [0x800004d0] : sd ra, 88(fp) -- Store: [0x80003268]:0xFFFBFFFFFFFF4AFD




Last Coverpoint : ['rs1 : x28', 'rs2 : x15', 'rd : x24', 'rs2_w1_val == -268435457', 'rs1_w1_val == -5', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000500]:KMMAC s8, t3, a5
	-[0x80000504]:sd s8, 96(fp)
Current Store : [0x80000508] : sd t3, 104(fp) -- Store: [0x80003278]:0xFFFFFFFBFFFBFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x0', 'rs2_w1_val == -134217729', 'rs2_w0_val == 2048', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000538]:KMMAC zero, t0, a3
	-[0x8000053c]:sd zero, 112(fp)
Current Store : [0x80000540] : sd t0, 120(fp) -- Store: [0x80003288]:0x0000B50500002000




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x20', 'rs2_w1_val == -67108865', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000568]:KMMAC s4, s7, s9
	-[0x8000056c]:sd s4, 128(fp)
Current Store : [0x80000570] : sd s7, 136(fp) -- Store: [0x80003298]:0x2000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x3', 'rd : x6', 'rs2_w1_val == -33554433', 'rs2_w0_val == 8388608', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000594]:KMMAC t1, a4, gp
	-[0x80000598]:sd t1, 144(fp)
Current Store : [0x8000059c] : sd a4, 152(fp) -- Store: [0x800032a8]:0x0000B504FFFFFF7F




Last Coverpoint : ['rs1 : x16', 'rs2 : x19', 'rd : x31', 'rs2_w1_val == -16777217']
Last Code Sequence : 
	-[0x800005c8]:KMMAC t6, a6, s3
	-[0x800005cc]:sd t6, 160(fp)
Current Store : [0x800005d0] : sd a6, 168(fp) -- Store: [0x800032b8]:0x3FFFFFFF3FFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x9', 'rd : x25', 'rs2_w1_val == -8388609', 'rs2_w0_val == -257', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800005f0]:KMMAC s9, tp, s1
	-[0x800005f4]:sd s9, 176(fp)
Current Store : [0x800005f8] : sd tp, 184(fp) -- Store: [0x800032c8]:0x8000000000001000




Last Coverpoint : ['rs1 : x0', 'rs2 : x10', 'rd : x30', 'rs2_w1_val == -4194305', 'rs2_w0_val == -513', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000624]:KMMAC t5, zero, a0
	-[0x80000628]:sd t5, 192(fp)
Current Store : [0x8000062c] : sd zero, 200(fp) -- Store: [0x800032d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x17', 'rs2_w1_val == -2097153', 'rs2_w0_val == -4097', 'rs1_w1_val == -1073741825', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000660]:KMMAC a7, a5, t0
	-[0x80000664]:sd a7, 208(fp)
Current Store : [0x80000668] : sd a5, 216(fp) -- Store: [0x800032e8]:0xBFFFFFFFAAAAAAAA




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x12', 'rs2_w1_val == -1048577', 'rs2_w0_val == 0', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000694]:KMMAC a2, a1, s6
	-[0x80000698]:sd a2, 0(ra)
Current Store : [0x8000069c] : sd a1, 8(ra) -- Store: [0x800032f8]:0xFFFBFFFFFFFFF7FF




Last Coverpoint : ['rs1 : x8', 'rs2 : x6', 'rd : x14', 'rs2_w1_val == -524289', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800006b8]:KMMAC a4, fp, t1
	-[0x800006bc]:sd a4, 16(ra)
Current Store : [0x800006c0] : sd fp, 24(ra) -- Store: [0x80003308]:0x0000400004000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x31', 'rd : x4', 'rs2_w1_val == -262145', 'rs2_w0_val == 16', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800006e4]:KMMAC tp, s6, t6
	-[0x800006e8]:sd tp, 32(ra)
Current Store : [0x800006ec] : sd s6, 40(ra) -- Store: [0x80003318]:0x0000B503FEFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x15', 'rs2_w1_val == -131073', 'rs2_w0_val == 1024', 'rs1_w1_val == 16777216', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000710]:KMMAC a5, t5, s4
	-[0x80000714]:sd a5, 48(ra)
Current Store : [0x80000718] : sd t5, 56(ra) -- Store: [0x80003328]:0x0100000002000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x27', 'rd : x3', 'rs2_w1_val == -65537']
Last Code Sequence : 
	-[0x80000754]:KMMAC gp, t6, s11
	-[0x80000758]:sd gp, 64(ra)
Current Store : [0x8000075c] : sd t6, 72(ra) -- Store: [0x80003338]:0xAAAAAAAA33333333




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x8', 'rs2_w1_val == -32769', 'rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000774]:KMMAC fp, s3, tp
	-[0x80000778]:sd fp, 80(ra)
Current Store : [0x8000077c] : sd s3, 88(ra) -- Store: [0x80003348]:0x0000000000002000




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x23', 'rs2_w1_val == -16385', 'rs2_w0_val == 33554432', 'rs1_w1_val == 32', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000798]:KMMAC s7, t1, sp
	-[0x8000079c]:sd s7, 96(ra)
Current Store : [0x800007a0] : sd t1, 104(ra) -- Store: [0x80003358]:0x0000002000000010




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x16', 'rs2_w1_val == -8193', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800007bc]:KMMAC a6, s9, t5
	-[0x800007c0]:sd a6, 112(ra)
Current Store : [0x800007c4] : sd s9, 120(ra) -- Store: [0x80003368]:0x6666666700000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x19', 'rs2_w1_val == -4097', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800007f0]:KMMAC s3, s4, a1
	-[0x800007f4]:sd s3, 128(ra)
Current Store : [0x800007f8] : sd s4, 136(ra) -- Store: [0x80003378]:0xFFFFF7FF0000B504




Last Coverpoint : ['rs1 : x18', 'rs2 : x14', 'rd : x5', 'rs2_w1_val == -2049', 'rs2_w0_val == 131072', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x8000081c]:KMMAC t0, s2, a4
	-[0x80000820]:sd t0, 144(ra)
Current Store : [0x80000824] : sd s2, 152(ra) -- Store: [0x80003388]:0xAAAAAAAA00010000




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x29', 'rs2_w1_val == -1025', 'rs1_w1_val == 4', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000844]:KMMAC t4, s8, fp
	-[0x80000848]:sd t4, 160(ra)
Current Store : [0x8000084c] : sd s8, 168(ra) -- Store: [0x80003398]:0x00000004FFDFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x9', 'rs2_w1_val == -513', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x8000086c]:KMMAC s1, a3, s7
	-[0x80000870]:sd s1, 176(ra)
Current Store : [0x80000874] : sd a3, 184(ra) -- Store: [0x800033a8]:0xFFFFFFF900000040




Last Coverpoint : ['rs1 : x12', 'rs2 : x17', 'rd : x11', 'rs2_w1_val == -257', 'rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80000890]:KMMAC a1, a2, a7
	-[0x80000894]:sd a1, 192(ra)
Current Store : [0x80000898] : sd a2, 200(ra) -- Store: [0x800033b8]:0x00000000FFDFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rd : x2', 'rs2_w1_val == 0', 'rs1_w1_val == -67108865', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800008b8]:KMMAC sp, s5, zero
	-[0x800008bc]:sd sp, 208(ra)
Current Store : [0x800008c0] : sd s5, 216(ra) -- Store: [0x800033c8]:0xFBFFFFFFFFFFFDFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x21', 'rd : x7', 'rs2_w1_val == -65', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800008e0]:KMMAC t2, a7, s5
	-[0x800008e4]:sd t2, 224(ra)
Current Store : [0x800008e8] : sd a7, 232(ra) -- Store: [0x800033d8]:0x10000000FFFFFFF6




Last Coverpoint : ['rs1 : x27', 'rs2 : x12', 'rd : x13', 'rs2_w1_val == -33']
Last Code Sequence : 
	-[0x80000914]:KMMAC a3, s11, a2
	-[0x80000918]:sd a3, 0(sp)
Current Store : [0x8000091c] : sd s11, 8(sp) -- Store: [0x800033e8]:0x55555555FFFF4AFC




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x1', 'rs2_w1_val == -17', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000093c]:KMMAC ra, t2, s2
	-[0x80000940]:sd ra, 16(sp)
Current Store : [0x80000944] : sd t2, 24(sp) -- Store: [0x800033f8]:0x8000000002000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x1', 'rd : x21', 'rs2_w1_val == -9', 'rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000964]:KMMAC s5, s1, ra
	-[0x80000968]:sd s5, 32(sp)
Current Store : [0x8000096c] : sd s1, 40(sp) -- Store: [0x80003408]:0x5555555604000000




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000994]:KMMAC t6, t5, t4
	-[0x80000998]:sd t6, 48(sp)
Current Store : [0x8000099c] : sd t5, 56(sp) -- Store: [0x80003418]:0x3FFFFFFFFFFFF7FF




Last Coverpoint : ['rs2_w1_val == -3', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800009b8]:KMMAC t6, t5, t4
	-[0x800009bc]:sd t6, 64(sp)
Current Store : [0x800009c0] : sd t5, 72(sp) -- Store: [0x80003428]:0x0000000055555555




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 2097152', 'rs1_w1_val == 1', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800009dc]:KMMAC t6, t5, t4
	-[0x800009e0]:sd t6, 80(sp)
Current Store : [0x800009e4] : sd t5, 88(sp) -- Store: [0x80003438]:0x0000000100100000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -2049', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000a04]:KMMAC t6, t5, t4
	-[0x80000a08]:sd t6, 96(sp)
Current Store : [0x80000a0c] : sd t5, 104(sp) -- Store: [0x80003448]:0x0000000000000002




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000a28]:KMMAC t6, t5, t4
	-[0x80000a2c]:sd t6, 112(sp)
Current Store : [0x80000a30] : sd t5, 120(sp) -- Store: [0x80003458]:0x00000040AAAAAAAB




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000a60]:KMMAC t6, t5, t4
	-[0x80000a64]:sd t6, 128(sp)
Current Store : [0x80000a68] : sd t5, 136(sp) -- Store: [0x80003468]:0xFFFFFFFBFFFF7FFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000a88]:KMMAC t6, t5, t4
	-[0x80000a8c]:sd t6, 144(sp)
Current Store : [0x80000a90] : sd t5, 152(sp) -- Store: [0x80003478]:0x00020000FFFFFFF8




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000aac]:KMMAC t6, t5, t4
	-[0x80000ab0]:sd t6, 160(sp)
Current Store : [0x80000ab4] : sd t5, 168(sp) -- Store: [0x80003488]:0xFFFFFF7F00001000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 128', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000ad0]:KMMAC t6, t5, t4
	-[0x80000ad4]:sd t6, 176(sp)
Current Store : [0x80000ad8] : sd t5, 184(sp) -- Store: [0x80003498]:0x3FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000b08]:KMMAC t6, t5, t4
	-[0x80000b0c]:sd t6, 192(sp)
Current Store : [0x80000b10] : sd t5, 200(sp) -- Store: [0x800034a8]:0x000040000000B505




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == -8388609', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000b30]:KMMAC t6, t5, t4
	-[0x80000b34]:sd t6, 208(sp)
Current Store : [0x80000b38] : sd t5, 216(sp) -- Store: [0x800034b8]:0xFF7FFFFFDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == -4194305', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000b5c]:KMMAC t6, t5, t4
	-[0x80000b60]:sd t6, 224(sp)
Current Store : [0x80000b64] : sd t5, 232(sp) -- Store: [0x800034c8]:0xFFBFFFFFBFFFFFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000b8c]:KMMAC t6, t5, t4
	-[0x80000b90]:sd t6, 240(sp)
Current Store : [0x80000b94] : sd t5, 248(sp) -- Store: [0x800034d8]:0xFFFFFF7FFFFFFBFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80000bc0]:KMMAC t6, t5, t4
	-[0x80000bc4]:sd t6, 256(sp)
Current Store : [0x80000bc8] : sd t5, 264(sp) -- Store: [0x800034e8]:0xFFFF4AFDAAAAAAAA




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000bf0]:KMMAC t6, t5, t4
	-[0x80000bf4]:sd t6, 272(sp)
Current Store : [0x80000bf8] : sd t5, 280(sp) -- Store: [0x800034f8]:0x0000000400000004




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80000c14]:KMMAC t6, t5, t4
	-[0x80000c18]:sd t6, 288(sp)
Current Store : [0x80000c1c] : sd t5, 296(sp) -- Store: [0x80003508]:0x0004000000000000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == -5', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c3c]:KMMAC t6, t5, t4
	-[0x80000c40]:sd t6, 304(sp)
Current Store : [0x80000c44] : sd t5, 312(sp) -- Store: [0x80003518]:0x0000002000008000




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000c68]:KMMAC t6, t5, t4
	-[0x80000c6c]:sd t6, 320(sp)
Current Store : [0x80000c70] : sd t5, 328(sp) -- Store: [0x80003528]:0xAAAAAAABC0000000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000c8c]:KMMAC t6, t5, t4
	-[0x80000c90]:sd t6, 336(sp)
Current Store : [0x80000c94] : sd t5, 344(sp) -- Store: [0x80003538]:0x0000000200000004




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80000cb4]:KMMAC t6, t5, t4
	-[0x80000cb8]:sd t6, 352(sp)
Current Store : [0x80000cbc] : sd t5, 360(sp) -- Store: [0x80003548]:0x0000001000002000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000cf0]:KMMAC t6, t5, t4
	-[0x80000cf4]:sd t6, 368(sp)
Current Store : [0x80000cf8] : sd t5, 376(sp) -- Store: [0x80003558]:0x33333332FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x80000d18]:KMMAC t6, t5, t4
	-[0x80000d1c]:sd t6, 384(sp)
Current Store : [0x80000d20] : sd t5, 392(sp) -- Store: [0x80003568]:0xFFFFFDFF00008000




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000d44]:KMMAC t6, t5, t4
	-[0x80000d48]:sd t6, 400(sp)
Current Store : [0x80000d4c] : sd t5, 408(sp) -- Store: [0x80003578]:0xFFFFFFFE66666666




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 4', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000d70]:KMMAC t6, t5, t4
	-[0x80000d74]:sd t6, 416(sp)
Current Store : [0x80000d78] : sd t5, 424(sp) -- Store: [0x80003588]:0xDFFFFFFFFFDFFFFF




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000d94]:KMMAC t6, t5, t4
	-[0x80000d98]:sd t6, 432(sp)
Current Store : [0x80000d9c] : sd t5, 440(sp) -- Store: [0x80003598]:0x0000000100000004




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000dc4]:KMMAC t6, t5, t4
	-[0x80000dc8]:sd t6, 448(sp)
Current Store : [0x80000dcc] : sd t5, 456(sp) -- Store: [0x800035a8]:0x08000000FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000dec]:KMMAC t6, t5, t4
	-[0x80000df0]:sd t6, 464(sp)
Current Store : [0x80000df4] : sd t5, 472(sp) -- Store: [0x800035b8]:0x00000003FFFFFFFD




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000e18]:KMMAC t6, t5, t4
	-[0x80000e1c]:sd t6, 480(sp)
Current Store : [0x80000e20] : sd t5, 488(sp) -- Store: [0x800035c8]:0xFFBFFFFF00000800




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000e34]:KMMAC t6, t5, t4
	-[0x80000e38]:sd t6, 496(sp)
Current Store : [0x80000e3c] : sd t5, 504(sp) -- Store: [0x800035d8]:0x0000000000000400




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000e54]:KMMAC t6, t5, t4
	-[0x80000e58]:sd t6, 512(sp)
Current Store : [0x80000e5c] : sd t5, 520(sp) -- Store: [0x800035e8]:0x0000200000000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000e7c]:KMMAC t6, t5, t4
	-[0x80000e80]:sd t6, 528(sp)
Current Store : [0x80000e84] : sd t5, 536(sp) -- Store: [0x800035f8]:0x3333333400000100




Last Coverpoint : ['rs1_w1_val == 1024', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000ea0]:KMMAC t6, t5, t4
	-[0x80000ea4]:sd t6, 544(sp)
Current Store : [0x80000ea8] : sd t5, 552(sp) -- Store: [0x80003608]:0x0000040000000080




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000ebc]:KMMAC t6, t5, t4
	-[0x80000ec0]:sd t6, 560(sp)
Current Store : [0x80000ec4] : sd t5, 568(sp) -- Store: [0x80003618]:0x0000000000000020




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000ee8]:KMMAC t6, t5, t4
	-[0x80000eec]:sd t6, 576(sp)
Current Store : [0x80000ef0] : sd t5, 584(sp) -- Store: [0x80003628]:0xAAAAAAAA00000001




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80000f0c]:KMMAC t6, t5, t4
	-[0x80000f10]:sd t6, 592(sp)
Current Store : [0x80000f14] : sd t5, 600(sp) -- Store: [0x80003638]:0x8000000000000002




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000f30]:KMMAC t6, t5, t4
	-[0x80000f34]:sd t6, 608(sp)
Current Store : [0x80000f38] : sd t5, 616(sp) -- Store: [0x80003648]:0x0800000000000004




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000f58]:KMMAC t6, t5, t4
	-[0x80000f5c]:sd t6, 624(sp)
Current Store : [0x80000f60] : sd t5, 632(sp) -- Store: [0x80003658]:0x0000200000000007




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x80000f80]:KMMAC t6, t5, t4
	-[0x80000f84]:sd t6, 640(sp)
Current Store : [0x80000f88] : sd t5, 648(sp) -- Store: [0x80003668]:0x100000000000B505




Last Coverpoint : ['rs2_w1_val == 4']
Last Code Sequence : 
	-[0x80000fa8]:KMMAC t6, t5, t4
	-[0x80000fac]:sd t6, 656(sp)
Current Store : [0x80000fb0] : sd t5, 664(sp) -- Store: [0x80003678]:0xFFBFFFFFFFFFFFF9




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80000fc8]:KMMAC t6, t5, t4
	-[0x80000fcc]:sd t6, 672(sp)
Current Store : [0x80000fd0] : sd t5, 680(sp) -- Store: [0x80003688]:0x0000100080000000




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000fec]:KMMAC t6, t5, t4
	-[0x80000ff0]:sd t6, 688(sp)
Current Store : [0x80000ff4] : sd t5, 696(sp) -- Store: [0x80003698]:0x6666666700000002




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80001008]:KMMAC t6, t5, t4
	-[0x8000100c]:sd t6, 704(sp)
Current Store : [0x80001010] : sd t5, 712(sp) -- Store: [0x800036a8]:0x0080000000000080




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80001024]:KMMAC t6, t5, t4
	-[0x80001028]:sd t6, 720(sp)
Current Store : [0x8000102c] : sd t5, 728(sp) -- Store: [0x800036b8]:0x0000000204000000




Last Coverpoint : ['rs2_w0_val == 1431655765', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001058]:KMMAC t6, t5, t4
	-[0x8000105c]:sd t6, 736(sp)
Current Store : [0x80001060] : sd t5, 744(sp) -- Store: [0x800036c8]:0x0008000000000006




Last Coverpoint : ['rs2_w0_val == -1073741825', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80001084]:KMMAC t6, t5, t4
	-[0x80001088]:sd t6, 752(sp)
Current Store : [0x8000108c] : sd t5, 760(sp) -- Store: [0x800036d8]:0xFDFFFFFF00000200




Last Coverpoint : ['rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x800010a8]:KMMAC t6, t5, t4
	-[0x800010ac]:sd t6, 768(sp)
Current Store : [0x800010b0] : sd t5, 776(sp) -- Store: [0x800036e8]:0x0004000000000006




Last Coverpoint : ['rs2_w0_val == -134217729', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800010dc]:KMMAC t6, t5, t4
	-[0x800010e0]:sd t6, 784(sp)
Current Store : [0x800010e4] : sd t5, 792(sp) -- Store: [0x800036f8]:0x0020000055555555




Last Coverpoint : ['rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x80001108]:KMMAC t6, t5, t4
	-[0x8000110c]:sd t6, 800(sp)
Current Store : [0x80001110] : sd t5, 808(sp) -- Store: [0x80003708]:0xFFFF4AFCFFFBFFFF




Last Coverpoint : ['rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001130]:KMMAC t6, t5, t4
	-[0x80001134]:sd t6, 816(sp)
Current Store : [0x80001138] : sd t5, 824(sp) -- Store: [0x80003718]:0xFFFFFF7FFFFF4AFC




Last Coverpoint : ['rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000115c]:KMMAC t6, t5, t4
	-[0x80001160]:sd t6, 832(sp)
Current Store : [0x80001164] : sd t5, 840(sp) -- Store: [0x80003728]:0x0000000333333334




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001184]:KMMAC t6, t5, t4
	-[0x80001188]:sd t6, 848(sp)
Current Store : [0x8000118c] : sd t5, 856(sp) -- Store: [0x80003738]:0xFFFFFFF900000080




Last Coverpoint : ['rs2_w0_val == -4194305', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800011ac]:KMMAC t6, t5, t4
	-[0x800011b0]:sd t6, 864(sp)
Current Store : [0x800011b4] : sd t5, 872(sp) -- Store: [0x80003748]:0xFFFFFFF700000000




Last Coverpoint : ['rs2_w0_val == -1048577', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800011d8]:KMMAC t6, t5, t4
	-[0x800011dc]:sd t6, 880(sp)
Current Store : [0x800011e0] : sd t5, 888(sp) -- Store: [0x80003758]:0xFEFFFFFF00000003




Last Coverpoint : ['rs2_w0_val == -524289', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001200]:KMMAC t6, t5, t4
	-[0x80001204]:sd t6, 896(sp)
Current Store : [0x80001208] : sd t5, 904(sp) -- Store: [0x80003768]:0x0000010000000010




Last Coverpoint : ['rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x8000122c]:KMMAC t6, t5, t4
	-[0x80001230]:sd t6, 912(sp)
Current Store : [0x80001234] : sd t5, 920(sp) -- Store: [0x80003778]:0x08000000FFFFFFFF




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80001258]:KMMAC t6, t5, t4
	-[0x8000125c]:sd t6, 928(sp)
Current Store : [0x80001260] : sd t5, 936(sp) -- Store: [0x80003788]:0x0000002000000800




Last Coverpoint : ['rs2_w0_val == -65537', 'rs1_w1_val == -134217729', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80001288]:KMMAC t6, t5, t4
	-[0x8000128c]:sd t6, 944(sp)
Current Store : [0x80001290] : sd t5, 952(sp) -- Store: [0x80003798]:0xF7FFFFFF00040000




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x800012b0]:KMMAC t6, t5, t4
	-[0x800012b4]:sd t6, 960(sp)
Current Store : [0x800012b8] : sd t5, 968(sp) -- Store: [0x800037a8]:0x0000000000000004




Last Coverpoint : ['rs2_w1_val == -129', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x800012d8]:KMMAC t6, t5, t4
	-[0x800012dc]:sd t6, 976(sp)
Current Store : [0x800012e0] : sd t5, 984(sp) -- Store: [0x800037b8]:0x8000000000000006




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800012f8]:KMMAC t6, t5, t4
	-[0x800012fc]:sd t6, 992(sp)
Current Store : [0x80001300] : sd t5, 1000(sp) -- Store: [0x800037c8]:0x0000000700000000




Last Coverpoint : ['rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80001328]:KMMAC t6, t5, t4
	-[0x8000132c]:sd t6, 1008(sp)
Current Store : [0x80001330] : sd t5, 1016(sp) -- Store: [0x800037d8]:0xAAAAAAAA80000000




Last Coverpoint : ['rs2_w0_val == -17']
Last Code Sequence : 
	-[0x8000135c]:KMMAC t6, t5, t4
	-[0x80001360]:sd t6, 1024(sp)
Current Store : [0x80001364] : sd t5, 1032(sp) -- Store: [0x800037e8]:0x0000B50455555554




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80001390]:KMMAC t6, t5, t4
	-[0x80001394]:sd t6, 1040(sp)
Current Store : [0x80001398] : sd t5, 1048(sp) -- Store: [0x800037f8]:0x10000000FFFEFFFF




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w1_val == -65', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800013b4]:KMMAC t6, t5, t4
	-[0x800013b8]:sd t6, 1056(sp)
Current Store : [0x800013bc] : sd t5, 1064(sp) -- Store: [0x80003808]:0xFFFFFFBFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800013e4]:KMMAC t6, t5, t4
	-[0x800013e8]:sd t6, 1072(sp)
Current Store : [0x800013ec] : sd t5, 1080(sp) -- Store: [0x80003818]:0x0010000000002000




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001414]:KMMAC t6, t5, t4
	-[0x80001418]:sd t6, 1088(sp)
Current Store : [0x8000141c] : sd t5, 1096(sp) -- Store: [0x80003828]:0x00080000FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001440]:KMMAC t6, t5, t4
	-[0x80001444]:sd t6, 1104(sp)
Current Store : [0x80001448] : sd t5, 1112(sp) -- Store: [0x80003838]:0xFFFFFBFF00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001474]:KMMAC t6, t5, t4
	-[0x80001478]:sd t6, 1120(sp)
Current Store : [0x8000147c] : sd t5, 1128(sp) -- Store: [0x80003848]:0x7FFFFFFFAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w1_val == 2048', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000149c]:KMMAC t6, t5, t4
	-[0x800014a0]:sd t6, 1136(sp)
Current Store : [0x800014a4] : sd t5, 1144(sp) -- Store: [0x80003858]:0x0000080008000000




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == -4097', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800014c0]:KMMAC t6, t5, t4
	-[0x800014c4]:sd t6, 1152(sp)
Current Store : [0x800014c8] : sd t5, 1160(sp) -- Store: [0x80003868]:0xFFFFEFFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800014dc]:KMMAC t6, t5, t4
	-[0x800014e0]:sd t6, 1168(sp)
Current Store : [0x800014e4] : sd t5, 1176(sp) -- Store: [0x80003878]:0x0000000000200000




Last Coverpoint : ['rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80001510]:KMMAC t6, t5, t4
	-[0x80001514]:sd t6, 1184(sp)
Current Store : [0x80001518] : sd t5, 1192(sp) -- Store: [0x80003888]:0xFFDFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001538]:KMMAC t6, t5, t4
	-[0x8000153c]:sd t6, 1200(sp)
Current Store : [0x80001540] : sd t5, 1208(sp) -- Store: [0x80003898]:0xFFEFFFFFFF7FFFFF




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80001568]:KMMAC t6, t5, t4
	-[0x8000156c]:sd t6, 1216(sp)
Current Store : [0x80001570] : sd t5, 1224(sp) -- Store: [0x800038a8]:0xFFF7FFFF00000004




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x8000159c]:KMMAC t6, t5, t4
	-[0x800015a0]:sd t6, 1232(sp)
Current Store : [0x800015a4] : sd t5, 1240(sp) -- Store: [0x800038b8]:0xFFFEFFFF55555555




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800015dc]:KMMAC t6, t5, t4
	-[0x800015e0]:sd t6, 1248(sp)
Current Store : [0x800015e4] : sd t5, 1256(sp) -- Store: [0x800038c8]:0xFFFF7FFFFFFF4AFD




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001600]:KMMAC t6, t5, t4
	-[0x80001604]:sd t6, 1264(sp)
Current Store : [0x80001608] : sd t5, 1272(sp) -- Store: [0x800038d8]:0xFFFFBFFF00000000




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80001620]:KMMAC t6, t5, t4
	-[0x80001624]:sd t6, 1280(sp)
Current Store : [0x80001628] : sd t5, 1288(sp) -- Store: [0x800038e8]:0xFFFFDFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001644]:KMMAC t6, t5, t4
	-[0x80001648]:sd t6, 1296(sp)
Current Store : [0x8000164c] : sd t5, 1304(sp) -- Store: [0x800038f8]:0xFFFFFEFF01000000




Last Coverpoint : ['rs1_w1_val == -33', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000166c]:KMMAC t6, t5, t4
	-[0x80001670]:sd t6, 1312(sp)
Current Store : [0x80001674] : sd t5, 1320(sp) -- Store: [0x80003908]:0xFFFFFFDF00004000




Last Coverpoint : ['rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80001694]:KMMAC t6, t5, t4
	-[0x80001698]:sd t6, 1328(sp)
Current Store : [0x8000169c] : sd t5, 1336(sp) -- Store: [0x80003918]:0xFFFFFFEF00000004




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800016b4]:KMMAC t6, t5, t4
	-[0x800016b8]:sd t6, 1344(sp)
Current Store : [0x800016bc] : sd t5, 1352(sp) -- Store: [0x80003928]:0xFFFFFFFD00200000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800016e0]:KMMAC t6, t5, t4
	-[0x800016e4]:sd t6, 1360(sp)
Current Store : [0x800016e8] : sd t5, 1368(sp) -- Store: [0x80003938]:0x400000007FFFFFFF




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001714]:KMMAC t6, t5, t4
	-[0x80001718]:sd t6, 1376(sp)
Current Store : [0x8000171c] : sd t5, 1384(sp) -- Store: [0x80003948]:0x04000000FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x8000173c]:KMMAC t6, t5, t4
	-[0x80001740]:sd t6, 1392(sp)
Current Store : [0x80001744] : sd t5, 1400(sp) -- Store: [0x80003958]:0x02000000FFFFFFFA




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == 4194304', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001774]:KMMAC t6, t5, t4
	-[0x80001778]:sd t6, 1408(sp)
Current Store : [0x8000177c] : sd t5, 1416(sp) -- Store: [0x80003968]:0x00400000FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x8000179c]:KMMAC t6, t5, t4
	-[0x800017a0]:sd t6, 1424(sp)
Current Store : [0x800017a4] : sd t5, 1432(sp) -- Store: [0x80003978]:0x00010000FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800017c4]:KMMAC t6, t5, t4
	-[0x800017c8]:sd t6, 1440(sp)
Current Store : [0x800017cc] : sd t5, 1448(sp) -- Store: [0x80003988]:0x0000020000000006




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800017ec]:KMMAC t6, t5, t4
	-[0x800017f0]:sd t6, 1456(sp)
Current Store : [0x800017f4] : sd t5, 1464(sp) -- Store: [0x80003998]:0x00000080FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001824]:KMMAC t6, t5, t4
	-[0x80001828]:sd t6, 1472(sp)
Current Store : [0x8000182c] : sd t5, 1480(sp) -- Store: [0x800039a8]:0x00000008FFFF4AFC




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x8000184c]:KMMAC t6, t5, t4
	-[0x80001850]:sd t6, 1488(sp)
Current Store : [0x80001854] : sd t5, 1496(sp) -- Store: [0x800039b8]:0xFFFFFFFF00002000




Last Coverpoint : ['rs1_w1_val == -268435457', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001878]:KMMAC t6, t5, t4
	-[0x8000187c]:sd t6, 1504(sp)
Current Store : [0x80001880] : sd t5, 1512(sp) -- Store: [0x800039c8]:0xEFFFFFFFEFFFFFFF




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800018a8]:KMMAC t6, t5, t4
	-[0x800018ac]:sd t6, 1520(sp)
Current Store : [0x800018b0] : sd t5, 1528(sp) -- Store: [0x800039d8]:0xFFFFFBFFF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800018d0]:KMMAC t6, t5, t4
	-[0x800018d4]:sd t6, 1536(sp)
Current Store : [0x800018d8] : sd t5, 1544(sp) -- Store: [0x800039e8]:0xFFFFFBFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800018f4]:KMMAC t6, t5, t4
	-[0x800018f8]:sd t6, 1552(sp)
Current Store : [0x800018fc] : sd t5, 1560(sp) -- Store: [0x800039f8]:0x00000004FDFFFFFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001914]:KMMAC t6, t5, t4
	-[0x80001918]:sd t6, 1568(sp)
Current Store : [0x8000191c] : sd t5, 1576(sp) -- Store: [0x80003a08]:0xFFFFFFFE33333334




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000193c]:KMMAC t6, t5, t4
	-[0x80001940]:sd t6, 1584(sp)
Current Store : [0x80001944] : sd t5, 1592(sp) -- Store: [0x80003a18]:0x0000B505FFEFFFFF




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001964]:KMMAC t6, t5, t4
	-[0x80001968]:sd t6, 1600(sp)
Current Store : [0x8000196c] : sd t5, 1608(sp) -- Store: [0x80003a28]:0x00000004FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001998]:KMMAC t6, t5, t4
	-[0x8000199c]:sd t6, 1616(sp)
Current Store : [0x800019a0] : sd t5, 1624(sp) -- Store: [0x80003a38]:0x00002000FFFFDFFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800019c0]:KMMAC t6, t5, t4
	-[0x800019c4]:sd t6, 1632(sp)
Current Store : [0x800019c8] : sd t5, 1640(sp) -- Store: [0x80003a48]:0x00000006FFFFFEFF




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800019e8]:KMMAC t6, t5, t4
	-[0x800019ec]:sd t6, 1648(sp)
Current Store : [0x800019f0] : sd t5, 1656(sp) -- Store: [0x80003a58]:0x3FFFFFFFFFFFFFEF




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001a10]:KMMAC t6, t5, t4
	-[0x80001a14]:sd t6, 1664(sp)
Current Store : [0x80001a18] : sd t5, 1672(sp) -- Store: [0x80003a68]:0x0002000000010000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001a38]:KMMAC t6, t5, t4
	-[0x80001a3c]:sd t6, 1680(sp)
Current Store : [0x80001a40] : sd t5, 1688(sp) -- Store: [0x80003a78]:0xFFBFFFFFFFFFFFF7




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001a6c]:KMMAC t6, t5, t4
	-[0x80001a70]:sd t6, 1696(sp)
Current Store : [0x80001a74] : sd t5, 1704(sp) -- Store: [0x80003a88]:0xF7FFFFFFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001aa0]:KMMAC t6, t5, t4
	-[0x80001aa4]:sd t6, 1712(sp)
Current Store : [0x80001aa8] : sd t5, 1720(sp) -- Store: [0x80003a98]:0xFFFF4AFCFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001ac0]:KMMAC t6, t5, t4
	-[0x80001ac4]:sd t6, 1728(sp)
Current Store : [0x80001ac8] : sd t5, 1736(sp) -- Store: [0x80003aa8]:0x0000000740000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001ae8]:KMMAC t6, t5, t4
	-[0x80001aec]:sd t6, 1744(sp)
Current Store : [0x80001af0] : sd t5, 1752(sp) -- Store: [0x80003ab8]:0x2000000020000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001b10]:KMMAC t6, t5, t4
	-[0x80001b14]:sd t6, 1760(sp)
Current Store : [0x80001b18] : sd t5, 1768(sp) -- Store: [0x80003ac8]:0x0000100010000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80001b3c]:KMMAC t6, t5, t4
	-[0x80001b40]:sd t6, 1776(sp)
Current Store : [0x80001b44] : sd t5, 1784(sp) -- Store: [0x80003ad8]:0x0000000400000002




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001b60]:KMMAC t6, t5, t4
	-[0x80001b64]:sd t6, 1792(sp)
Current Store : [0x80001b68] : sd t5, 1800(sp) -- Store: [0x80003ae8]:0xFFFFFFF800800000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001b84]:KMMAC t6, t5, t4
	-[0x80001b88]:sd t6, 1808(sp)
Current Store : [0x80001b8c] : sd t5, 1816(sp) -- Store: [0x80003af8]:0xFFFFFFF600400000




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80001bb4]:KMMAC t6, t5, t4
	-[0x80001bb8]:sd t6, 1824(sp)
Current Store : [0x80001bbc] : sd t5, 1832(sp) -- Store: [0x80003b08]:0x0000000100000800




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001bdc]:KMMAC t6, t5, t4
	-[0x80001be0]:sd t6, 1840(sp)
Current Store : [0x80001be4] : sd t5, 1848(sp) -- Store: [0x80003b18]:0x0000040000080000




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001c08]:KMMAC t6, t5, t4
	-[0x80001c0c]:sd t6, 1856(sp)
Current Store : [0x80001c10] : sd t5, 1864(sp) -- Store: [0x80003b28]:0x0000800000000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80001c34]:KMMAC t6, t5, t4
	-[0x80001c38]:sd t6, 1872(sp)
Current Store : [0x80001c3c] : sd t5, 1880(sp) -- Store: [0x80003b38]:0xAAAAAAAA00020000




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80001c5c]:KMMAC t6, t5, t4
	-[0x80001c60]:sd t6, 1888(sp)
Current Store : [0x80001c64] : sd t5, 1896(sp) -- Store: [0x80003b48]:0xAAAAAAAAFFFFFBFF




Last Coverpoint : ['rs1_w1_val == -131073', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001c88]:KMMAC t6, t5, t4
	-[0x80001c8c]:sd t6, 1904(sp)
Current Store : [0x80001c90] : sd t5, 1912(sp) -- Store: [0x80003b58]:0xFFFDFFFFFFBFFFFF




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -134217729', 'rs2_w0_val == 2048', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80001cc0]:KMMAC t6, t5, t4
	-[0x80001cc4]:sd t6, 1920(sp)
Current Store : [0x80001cc8] : sd t5, 1928(sp) -- Store: [0x80003b68]:0x0000B50500002000




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -4194305', 'rs2_w0_val == -513', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001cf4]:KMMAC t6, t5, t4
	-[0x80001cf8]:sd t6, 1936(sp)
Current Store : [0x80001cfc] : sd t5, 1944(sp) -- Store: [0x80003b78]:0xEFFFFFFF66666665




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w1_val == -129', 'rs1_w1_val == -67108865', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001d1c]:KMMAC t6, t5, t4
	-[0x80001d20]:sd t6, 1952(sp)
Current Store : [0x80001d24] : sd t5, 1960(sp) -- Store: [0x80003b88]:0xFBFFFFFFFFFFFDFF





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

|s.no|            signature             |                                                                                              coverpoints                                                                                               |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xDF56FF76FBC8C692|- opcode : kmmac<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 16384<br> - rs1_w1_val == 16384<br>                                                          |[0x800003d0]:KMMAC s2, t4, t4<br> [0x800003d4]:sd s2, 0(fp)<br>       |
|   2|[0x80003220]<br>0xC71C71C600000006|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs1_w1_val == -1431655766<br>                                                                   |[0x800003fc]:KMMAC s10, s10, s10<br> [0x80000400]:sd s10, 16(fp)<br>  |
|   3|[0x80003230]<br>0x434AC54C6DF56FF7|- rs1 : x3<br> - rs2 : x16<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -2<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 0<br> |[0x80000420]:KMMAC s6, gp, a6<br> [0x80000424]:sd s6, 32(fp)<br>      |
|   4|[0x80003240]<br>0x000017FFFFFF8753|- rs1 : x10<br> - rs2 : x7<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == 4096<br>                                            |[0x80000460]:KMMAC a0, a0, t2<br> [0x80000464]:sd a0, 48(fp)<br>      |
|   5|[0x80003250]<br>0xAAAAAAA900000020|- rs1 : x2<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 32<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 8<br>                        |[0x8000048c]:KMMAC t3, sp, t3<br> [0x80000490]:sd t3, 64(fp)<br>      |
|   6|[0x80003260]<br>0xBB702B7FBB6F6317|- rs1 : x1<br> - rs2 : x24<br> - rd : x27<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == -262145<br>                                                                                                |[0x800004c8]:KMMAC s11, ra, s8<br> [0x800004cc]:sd s11, 80(fp)<br>    |
|   7|[0x80003270]<br>0xDFFFFFFF6664CCCC|- rs1 : x28<br> - rs2 : x15<br> - rd : x24<br> - rs2_w1_val == -268435457<br> - rs1_w1_val == -5<br> - rs1_w0_val == -262145<br>                                                                        |[0x80000500]:KMMAC s8, t3, a5<br> [0x80000504]:sd s8, 96(fp)<br>      |
|   8|[0x80003280]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x13<br> - rd : x0<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 8192<br>                                                                           |[0x80000538]:KMMAC zero, t0, a3<br> [0x8000053c]:sd zero, 112(fp)<br> |
|   9|[0x80003290]<br>0xB755BFDCB7D5BFDD|- rs1 : x23<br> - rs2 : x25<br> - rd : x20<br> - rs2_w1_val == -67108865<br> - rs1_w1_val == 536870912<br>                                                                                              |[0x80000568]:KMMAC s4, s7, s9<br> [0x8000056c]:sd s4, 128(fp)<br>     |
|  10|[0x800032a0]<br>0xFFFFFE9580002FFF|- rs1 : x14<br> - rs2 : x3<br> - rd : x6<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 8388608<br> - rs1_w0_val == -129<br>                                                                         |[0x80000594]:KMMAC t1, a4, gp<br> [0x80000598]:sd t1, 144(fp)<br>     |
|  11|[0x800032b0]<br>0xFB76FAB6FBB6CD76|- rs1 : x16<br> - rs2 : x19<br> - rd : x31<br> - rs2_w1_val == -16777217<br>                                                                                                                            |[0x800005c8]:KMMAC t6, a6, s3<br> [0x800005cc]:sd t6, 160(fp)<br>     |
|  12|[0x800032c0]<br>0xFC3FFFFF66666665|- rs1 : x4<br> - rs2 : x9<br> - rd : x25<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -257<br> - rs1_w0_val == 4096<br>                                                                             |[0x800005f0]:KMMAC s9, tp, s1<br> [0x800005f4]:sd s9, 176(fp)<br>     |
|  13|[0x800032d0]<br>0xF76DF56FF76DF56F|- rs1 : x0<br> - rs2 : x10<br> - rd : x30<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -513<br> - rs1_w1_val == 0<br>                                                                               |[0x80000624]:KMMAC t5, zero, a0<br> [0x80000628]:sd t5, 192(fp)<br>   |
|  14|[0x800032e0]<br>0xBEB5FEEDBEAE0442|- rs1 : x15<br> - rs2 : x5<br> - rd : x17<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -4097<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -1431655766<br>                                    |[0x80000660]:KMMAC a7, a5, t0<br> [0x80000664]:sd a7, 208(fp)<br>     |
|  15|[0x800032f0]<br>0xD5BFDDF7D5BFDDB7|- rs1 : x11<br> - rs2 : x22<br> - rd : x12<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 0<br> - rs1_w0_val == -2049<br>                                                                             |[0x80000694]:KMMAC a2, a1, s6<br> [0x80000698]:sd a2, 0(ra)<br>       |
|  16|[0x80003300]<br>0x0000B501FFFFFF7F|- rs1 : x8<br> - rs2 : x6<br> - rd : x14<br> - rs2_w1_val == -524289<br> - rs1_w0_val == 67108864<br>                                                                                                   |[0x800006b8]:KMMAC a4, fp, t1<br> [0x800006bc]:sd a4, 16(ra)<br>      |
|  17|[0x80003310]<br>0x8000000000000FFF|- rs1 : x22<br> - rs2 : x31<br> - rd : x4<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 16<br> - rs1_w0_val == -16777217<br>                                                                          |[0x800006e4]:KMMAC tp, s6, t6<br> [0x800006e8]:sd tp, 32(ra)<br>      |
|  18|[0x80003320]<br>0xBFFFFDFEAAAAAAB2|- rs1 : x30<br> - rs2 : x20<br> - rd : x15<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 33554432<br>                                           |[0x80000710]:KMMAC a5, t5, s4<br> [0x80000714]:sd a5, 48(ra)<br>      |
|  19|[0x80003330]<br>0xFE005554EF6EEEEE|- rs1 : x31<br> - rs2 : x27<br> - rd : x3<br> - rs2_w1_val == -65537<br>                                                                                                                                |[0x80000754]:KMMAC gp, t6, s11<br> [0x80000758]:sd gp, 64(ra)<br>     |
|  20|[0x80003340]<br>0x0000400004000000|- rs1 : x19<br> - rs2 : x4<br> - rd : x8<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 2<br>                                                                                                           |[0x80000774]:KMMAC fp, s3, tp<br> [0x80000778]:sd fp, 80(ra)<br>      |
|  21|[0x80003350]<br>0x1FFFFFFF00000000|- rs1 : x6<br> - rs2 : x2<br> - rd : x23<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 32<br> - rs1_w0_val == 16<br>                                                      |[0x80000798]:KMMAC s7, t1, sp<br> [0x8000079c]:sd s7, 96(ra)<br>      |
|  22|[0x80003360]<br>0x3FFFF3313FFFFFFF|- rs1 : x25<br> - rs2 : x30<br> - rd : x16<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 4194304<br>                                                                                                    |[0x800007bc]:KMMAC a6, s9, t5<br> [0x800007c0]:sd a6, 112(ra)<br>     |
|  23|[0x80003370]<br>0x0000000000002000|- rs1 : x20<br> - rs2 : x11<br> - rd : x19<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -2049<br>                                                                                                      |[0x800007f0]:KMMAC s3, s4, a1<br> [0x800007f4]:sd s3, 128(ra)<br>     |
|  24|[0x80003380]<br>0xFFE002AAFFFFF001|- rs1 : x18<br> - rs2 : x14<br> - rd : x5<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 131072<br> - rs1_w0_val == 65536<br>                                                                            |[0x8000081c]:KMMAC t0, s2, a4<br> [0x80000820]:sd t0, 144(ra)<br>     |
|  25|[0x80003390]<br>0x00003FFFAAAAAA6A|- rs1 : x24<br> - rs2 : x8<br> - rd : x29<br> - rs2_w1_val == -1025<br> - rs1_w1_val == 4<br> - rs1_w0_val == -2097153<br>                                                                              |[0x80000844]:KMMAC t4, s8, fp<br> [0x80000848]:sd t4, 160(ra)<br>     |
|  26|[0x800033a0]<br>0xFF7FFFFFFFFFFEFE|- rs1 : x13<br> - rs2 : x23<br> - rd : x9<br> - rs2_w1_val == -513<br> - rs1_w0_val == 64<br>                                                                                                           |[0x8000086c]:KMMAC s1, a3, s7<br> [0x80000870]:sd s1, 176(ra)<br>     |
|  27|[0x800033b0]<br>0xFFFFEFFF00000010|- rs1 : x12<br> - rs2 : x17<br> - rd : x11<br> - rs2_w1_val == -257<br> - rs2_w0_val == -1<br>                                                                                                          |[0x80000890]:KMMAC a1, a2, a7<br> [0x80000894]:sd a1, 192(ra)<br>     |
|  28|[0x800033c0]<br>0xFFFFBFFF02000000|- rs1 : x21<br> - rs2 : x0<br> - rd : x2<br> - rs2_w1_val == 0<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -513<br>                                                                               |[0x800008b8]:KMMAC sp, s5, zero<br> [0x800008bc]:sd sp, 208(ra)<br>   |
|  29|[0x800033d0]<br>0x7FFFFFFAAAAAAAAA|- rs1 : x17<br> - rs2 : x21<br> - rd : x7<br> - rs2_w1_val == -65<br> - rs1_w1_val == 268435456<br>                                                                                                     |[0x800008e0]:KMMAC t2, a7, s5<br> [0x800008e4]:sd t2, 224(ra)<br>     |
|  30|[0x800033e0]<br>0xFFFFFFEE00000040|- rs1 : x27<br> - rs2 : x12<br> - rd : x13<br> - rs2_w1_val == -33<br>                                                                                                                                  |[0x80000914]:KMMAC a3, s11, a2<br> [0x80000918]:sd a3, 0(sp)<br>      |
|  31|[0x800033f0]<br>0x00000008800032EE|- rs1 : x7<br> - rs2 : x18<br> - rd : x1<br> - rs2_w1_val == -17<br> - rs2_w0_val == -129<br>                                                                                                           |[0x8000093c]:KMMAC ra, t2, s2<br> [0x80000940]:sd ra, 16(sp)<br>      |
|  32|[0x80003400]<br>0xFFFFFFBB003FFFFC|- rs1 : x9<br> - rs2 : x1<br> - rd : x21<br> - rs2_w1_val == -9<br> - rs2_w0_val == 268435456<br>                                                                                                       |[0x80000964]:KMMAC s5, s1, ra<br> [0x80000968]:sd s5, 32(sp)<br>      |
|  33|[0x80003410]<br>0xAAAAAAA833333334|- rs2_w1_val == -5<br> - rs2_w0_val == -2097153<br>                                                                                                                                                     |[0x80000994]:KMMAC t6, t5, t4<br> [0x80000998]:sd t6, 48(sp)<br>      |
|  34|[0x80003420]<br>0xAAAAAAA83332F6DD|- rs2_w1_val == -3<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                   |[0x800009b8]:KMMAC t6, t5, t4<br> [0x800009bc]:sd t6, 64(sp)<br>      |
|  35|[0x80003430]<br>0xAAAAAAA73332F8DD|- rs2_w1_val == -2<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 1<br> - rs1_w0_val == 1048576<br>                                                                                                    |[0x800009dc]:KMMAC t6, t5, t4<br> [0x800009e0]:sd t6, 80(sp)<br>      |
|  36|[0x80003440]<br>0xAAAAAAA73332F8DC|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 2<br>                                                                                                                         |[0x80000a04]:KMMAC t6, t5, t4<br> [0x80000a08]:sd t6, 96(sp)<br>      |
|  37|[0x80003450]<br>0xAAAAAAB73332F8DC|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 64<br>                                                                                                                                                   |[0x80000a28]:KMMAC t6, t5, t4<br> [0x80000a2c]:sd t6, 112(sp)<br>     |
|  38|[0x80003460]<br>0xAAAAAAB63332DF42|- rs2_w1_val == 536870912<br> - rs1_w0_val == -32769<br>                                                                                                                                                |[0x80000a60]:KMMAC t6, t5, t4<br> [0x80000a64]:sd t6, 128(sp)<br>     |
|  39|[0x80003470]<br>0xAAAACAB63332DF41|- rs2_w1_val == 268435456<br> - rs1_w1_val == 131072<br>                                                                                                                                                |[0x80000a88]:KMMAC t6, t5, t4<br> [0x80000a8c]:sd t6, 144(sp)<br>     |
|  40|[0x80003480]<br>0xAAAACAB13332DF41|- rs2_w1_val == 134217728<br> - rs1_w1_val == -129<br>                                                                                                                                                  |[0x80000aac]:KMMAC t6, t5, t4<br> [0x80000ab0]:sd t6, 160(sp)<br>     |
|  41|[0x80003490]<br>0xABAACAB03332DF40|- rs2_w1_val == 67108864<br> - rs2_w0_val == 128<br> - rs1_w0_val == -1<br>                                                                                                                             |[0x80000ad0]:KMMAC t6, t5, t4<br> [0x80000ad4]:sd t6, 176(sp)<br>     |
|  42|[0x800034a0]<br>0xABAACB303332DF3F|- rs2_w1_val == 33554432<br> - rs2_w0_val == -8193<br>                                                                                                                                                  |[0x80000b08]:KMMAC t6, t5, t4<br> [0x80000b0c]:sd t6, 192(sp)<br>     |
|  43|[0x800034b0]<br>0xABAA4B2F3332DF3E|- rs2_w1_val == 16777216<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -536870913<br>                                                                                                                |[0x80000b30]:KMMAC t6, t5, t4<br> [0x80000b34]:sd t6, 208(sp)<br>     |
|  44|[0x800034c0]<br>0xABAA2B2E3332DFBE|- rs2_w1_val == 8388608<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -1073741825<br>                                                                                                                |[0x80000b5c]:KMMAC t6, t5, t4<br> [0x80000b60]:sd t6, 224(sp)<br>     |
|  45|[0x800034d0]<br>0xABAA2B2D3332DE23|- rs2_w1_val == 4194304<br> - rs1_w0_val == -1025<br>                                                                                                                                                   |[0x80000b8c]:KMMAC t6, t5, t4<br> [0x80000b90]:sd t6, 240(sp)<br>     |
|  46|[0x800034e0]<br>0xABAA2B163332DF78|- rs2_w1_val == 2097152<br> - rs2_w0_val == -1025<br>                                                                                                                                                   |[0x80000bc0]:KMMAC t6, t5, t4<br> [0x80000bc4]:sd t6, 256(sp)<br>     |
|  47|[0x800034f0]<br>0xABAA2B163332DF79|- rs2_w1_val == 1048576<br> - rs1_w0_val == 4<br>                                                                                                                                                       |[0x80000bf0]:KMMAC t6, t5, t4<br> [0x80000bf4]:sd t6, 272(sp)<br>     |
|  48|[0x80003500]<br>0xABAA2B363332DF79|- rs2_w1_val == 524288<br> - rs1_w1_val == 262144<br>                                                                                                                                                   |[0x80000c14]:KMMAC t6, t5, t4<br> [0x80000c18]:sd t6, 288(sp)<br>     |
|  49|[0x80003510]<br>0xABAA2B363332DF78|- rs2_w1_val == 262144<br> - rs2_w0_val == -5<br> - rs1_w0_val == 32768<br>                                                                                                                             |[0x80000c3c]:KMMAC t6, t5, t4<br> [0x80000c40]:sd t6, 304(sp)<br>     |
|  50|[0x80003520]<br>0xABA9808B332ADF78|- rs2_w1_val == 131072<br>                                                                                                                                                                              |[0x80000c68]:KMMAC t6, t5, t4<br> [0x80000c6c]:sd t6, 320(sp)<br>     |
|  51|[0x80003530]<br>0xABA9808B332ADF78|- rs2_w1_val == 65536<br> - rs1_w1_val == 2<br>                                                                                                                                                         |[0x80000c8c]:KMMAC t6, t5, t4<br> [0x80000c90]:sd t6, 336(sp)<br>     |
|  52|[0x80003540]<br>0xABA9808B332ADF77|- rs2_w1_val == 32768<br> - rs1_w1_val == 16<br>                                                                                                                                                        |[0x80000cb4]:KMMAC t6, t5, t4<br> [0x80000cb8]:sd t6, 352(sp)<br>     |
|  53|[0x80003550]<br>0xABA986F1332ADF78|- rs2_w1_val == 8192<br> - rs1_w0_val == -131073<br>                                                                                                                                                    |[0x80000cf0]:KMMAC t6, t5, t4<br> [0x80000cf4]:sd t6, 368(sp)<br>     |
|  54|[0x80003560]<br>0xABA986F0332ADF77|- rs2_w1_val == 4096<br> - rs1_w1_val == -513<br>                                                                                                                                                       |[0x80000d18]:KMMAC t6, t5, t4<br> [0x80000d1c]:sd t6, 384(sp)<br>     |
|  55|[0x80003570]<br>0xABA986EF5C20A205|- rs2_w1_val == 2048<br> - rs1_w1_val == -2<br>                                                                                                                                                         |[0x80000d44]:KMMAC t6, t5, t4<br> [0x80000d48]:sd t6, 400(sp)<br>     |
|  56|[0x80003580]<br>0xABA9866E5C20A204|- rs2_w1_val == 1024<br> - rs2_w0_val == 4<br> - rs1_w1_val == -536870913<br>                                                                                                                           |[0x80000d70]:KMMAC t6, t5, t4<br> [0x80000d74]:sd t6, 416(sp)<br>     |
|  57|[0x80003590]<br>0xABA9866E5C20A203|- rs2_w1_val == 512<br>                                                                                                                                                                                 |[0x80000d94]:KMMAC t6, t5, t4<br> [0x80000d98]:sd t6, 432(sp)<br>     |
|  58|[0x800035a0]<br>0xABA986765C20A202|- rs2_w1_val == 256<br> - rs1_w1_val == 134217728<br>                                                                                                                                                   |[0x80000dc4]:KMMAC t6, t5, t4<br> [0x80000dc8]:sd t6, 448(sp)<br>     |
|  59|[0x800035b0]<br>0xABA986765C20A201|- rs2_w1_val == 128<br> - rs1_w0_val == -3<br>                                                                                                                                                          |[0x80000dec]:KMMAC t6, t5, t4<br> [0x80000df0]:sd t6, 464(sp)<br>     |
|  60|[0x800035c0]<br>0xABA986765C20A001|- rs1_w0_val == 2048<br>                                                                                                                                                                                |[0x80000e18]:KMMAC t6, t5, t4<br> [0x80000e1c]:sd t6, 480(sp)<br>     |
|  61|[0x800035d0]<br>0xABA986765C20A001|- rs2_w0_val == 524288<br> - rs1_w0_val == 1024<br>                                                                                                                                                     |[0x80000e34]:KMMAC t6, t5, t4<br> [0x80000e38]:sd t6, 496(sp)<br>     |
|  62|[0x800035e0]<br>0xABA988765C20A001|- rs1_w1_val == 8192<br> - rs1_w0_val == 512<br>                                                                                                                                                        |[0x80000e54]:KMMAC t6, t5, t4<br> [0x80000e58]:sd t6, 512(sp)<br>     |
|  63|[0x800035f0]<br>0xABA988685C20A001|- rs1_w0_val == 256<br>                                                                                                                                                                                 |[0x80000e7c]:KMMAC t6, t5, t4<br> [0x80000e80]:sd t6, 528(sp)<br>     |
|  64|[0x80003600]<br>0xABA988675C20A000|- rs1_w1_val == 1024<br> - rs1_w0_val == 128<br>                                                                                                                                                        |[0x80000ea0]:KMMAC t6, t5, t4<br> [0x80000ea4]:sd t6, 544(sp)<br>     |
|  65|[0x80003610]<br>0xABA988675C209FFF|- rs2_w0_val == -3<br> - rs1_w0_val == 32<br>                                                                                                                                                           |[0x80000ebc]:KMMAC t6, t5, t4<br> [0x80000ec0]:sd t6, 560(sp)<br>     |
|  66|[0x80003620]<br>0xABA99DBC5C209FFE|- rs2_w0_val == -268435457<br> - rs1_w0_val == 1<br>                                                                                                                                                    |[0x80000ee8]:KMMAC t6, t5, t4<br> [0x80000eec]:sd t6, 576(sp)<br>     |
|  67|[0x80003630]<br>0xABA99D9C5C209FFD|- rs2_w1_val == 64<br>                                                                                                                                                                                  |[0x80000f0c]:KMMAC t6, t5, t4<br> [0x80000f10]:sd t6, 592(sp)<br>     |
|  68|[0x80003640]<br>0xABA99D9D5C209FFE|- rs2_w1_val == 32<br> - rs2_w0_val == 2147483647<br>                                                                                                                                                   |[0x80000f30]:KMMAC t6, t5, t4<br> [0x80000f34]:sd t6, 608(sp)<br>     |
|  69|[0x80003650]<br>0xABA99D9D5C209FFE|- rs2_w1_val == 16<br>                                                                                                                                                                                  |[0x80000f58]:KMMAC t6, t5, t4<br> [0x80000f5c]:sd t6, 624(sp)<br>     |
|  70|[0x80003660]<br>0xABA99D9D5C209FFE|- rs2_w1_val == 8<br>                                                                                                                                                                                   |[0x80000f80]:KMMAC t6, t5, t4<br> [0x80000f84]:sd t6, 640(sp)<br>     |
|  71|[0x80003670]<br>0xABA99D9C5C209FFE|- rs2_w1_val == 4<br>                                                                                                                                                                                   |[0x80000fa8]:KMMAC t6, t5, t4<br> [0x80000fac]:sd t6, 656(sp)<br>     |
|  72|[0x80003680]<br>0xABA99D9C5C209FFE|- rs1_w0_val == -2147483648<br> - rs2_w1_val == 2<br>                                                                                                                                                   |[0x80000fc8]:KMMAC t6, t5, t4<br> [0x80000fcc]:sd t6, 672(sp)<br>     |
|  73|[0x80003690]<br>0xABA99D9C5C209FFE|- rs2_w1_val == 1<br> - rs2_w0_val == 536870912<br>                                                                                                                                                     |[0x80000fec]:KMMAC t6, t5, t4<br> [0x80000ff0]:sd t6, 688(sp)<br>     |
|  74|[0x800036a0]<br>0xABA99D9C5C209FFE|- rs1_w1_val == 8388608<br>                                                                                                                                                                             |[0x80001008]:KMMAC t6, t5, t4<br> [0x8000100c]:sd t6, 704(sp)<br>     |
|  75|[0x800036b0]<br>0xABA99D9B5C209FFE|- rs2_w1_val == -1<br>                                                                                                                                                                                  |[0x80001024]:KMMAC t6, t5, t4<br> [0x80001028]:sd t6, 720(sp)<br>     |
|  76|[0x800036c0]<br>0xABA9A19B5C209FFF|- rs2_w0_val == 1431655765<br> - rs1_w1_val == 524288<br>                                                                                                                                               |[0x80001058]:KMMAC t6, t5, t4<br> [0x8000105c]:sd t6, 736(sp)<br>     |
|  77|[0x800036d0]<br>0xABA9A19F5C209F7E|- rs2_w0_val == -1073741825<br> - rs1_w1_val == -33554433<br>                                                                                                                                           |[0x80001084]:KMMAC t6, t5, t4<br> [0x80001088]:sd t6, 752(sp)<br>     |
|  78|[0x800036e0]<br>0xABA9A19F5C209F7D|- rs2_w0_val == -536870913<br>                                                                                                                                                                          |[0x800010a8]:KMMAC t6, t5, t4<br> [0x800010ac]:sd t6, 768(sp)<br>     |
|  79|[0x800036f0]<br>0xABA9A1A75975F4D2|- rs2_w0_val == -134217729<br> - rs1_w1_val == 2097152<br>                                                                                                                                              |[0x800010dc]:KMMAC t6, t5, t4<br> [0x800010e0]:sd t6, 784(sp)<br>     |
|  80|[0x80003700]<br>0xABA9A1A9597604D2|- rs2_w0_val == -67108865<br>                                                                                                                                                                           |[0x80001108]:KMMAC t6, t5, t4<br> [0x8000110c]:sd t6, 800(sp)<br>     |
|  81|[0x80003710]<br>0xABA9A1A95976063C|- rs2_w0_val == -33554433<br>                                                                                                                                                                           |[0x80001130]:KMMAC t6, t5, t4<br> [0x80001134]:sd t6, 816(sp)<br>     |
|  82|[0x80003720]<br>0xABA9A1A85942D308|- rs2_w0_val == -16777217<br>                                                                                                                                                                           |[0x8000115c]:KMMAC t6, t5, t4<br> [0x80001160]:sd t6, 832(sp)<br>     |
|  83|[0x80003730]<br>0xABA9A1A75942D307|- rs2_w0_val == -8388609<br>                                                                                                                                                                            |[0x80001184]:KMMAC t6, t5, t4<br> [0x80001188]:sd t6, 848(sp)<br>     |
|  84|[0x80003740]<br>0xABA9A1A75942D307|- rs2_w0_val == -4194305<br> - rs1_w1_val == -9<br>                                                                                                                                                     |[0x800011ac]:KMMAC t6, t5, t4<br> [0x800011b0]:sd t6, 864(sp)<br>     |
|  85|[0x80003750]<br>0xABA9A1A65942D306|- rs2_w0_val == -1048577<br> - rs1_w1_val == -16777217<br>                                                                                                                                              |[0x800011d8]:KMMAC t6, t5, t4<br> [0x800011dc]:sd t6, 880(sp)<br>     |
|  86|[0x80003760]<br>0xABA9A1A65942D305|- rs2_w0_val == -524289<br> - rs1_w1_val == 256<br>                                                                                                                                                     |[0x80001200]:KMMAC t6, t5, t4<br> [0x80001204]:sd t6, 896(sp)<br>     |
|  87|[0x80003770]<br>0xABA9A74E5942D305|- rs2_w0_val == -262145<br>                                                                                                                                                                             |[0x8000122c]:KMMAC t6, t5, t4<br> [0x80001230]:sd t6, 912(sp)<br>     |
|  88|[0x80003780]<br>0xABA9A74E5942D304|- rs2_w0_val == -131073<br>                                                                                                                                                                             |[0x80001258]:KMMAC t6, t5, t4<br> [0x8000125c]:sd t6, 928(sp)<br>     |
|  89|[0x80003790]<br>0xABA9A73D5942D2FF|- rs2_w0_val == -65537<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 262144<br>                                                                                                                    |[0x80001288]:KMMAC t6, t5, t4<br> [0x8000128c]:sd t6, 944(sp)<br>     |
|  90|[0x800037a0]<br>0xABA9A73D5942D2FE|- rs2_w0_val == -32769<br>                                                                                                                                                                              |[0x800012b0]:KMMAC t6, t5, t4<br> [0x800012b4]:sd t6, 960(sp)<br>     |
|  91|[0x800037b0]<br>0xABA9A77D5942D2FD|- rs2_w1_val == -129<br> - rs2_w0_val == -16385<br>                                                                                                                                                     |[0x800012d8]:KMMAC t6, t5, t4<br> [0x800012dc]:sd t6, 976(sp)<br>     |
|  92|[0x800037c0]<br>0xABA9A77C5942D2FD|- rs2_w0_val == -65<br>                                                                                                                                                                                 |[0x800012f8]:KMMAC t6, t5, t4<br> [0x800012fc]:sd t6, 992(sp)<br>     |
|  93|[0x800037d0]<br>0xAB9452265942D30D|- rs2_w0_val == -33<br>                                                                                                                                                                                 |[0x80001328]:KMMAC t6, t5, t4<br> [0x8000132c]:sd t6, 1008(sp)<br>    |
|  94|[0x800037e0]<br>0xAB9424E55942D307|- rs2_w0_val == -17<br>                                                                                                                                                                                 |[0x8000135c]:KMMAC t6, t5, t4<br> [0x80001360]:sd t6, 1024(sp)<br>    |
|  95|[0x800037f0]<br>0xA63ECF8F5942D307|- rs2_w0_val == -9<br> - rs1_w0_val == -65537<br>                                                                                                                                                       |[0x80001390]:KMMAC t6, t5, t4<br> [0x80001394]:sd t6, 1040(sp)<br>    |
|  96|[0x80003800]<br>0xA63ECF8F5942DB07|- rs2_w0_val == -2147483648<br> - rs1_w1_val == -65<br> - rs1_w0_val == -4097<br>                                                                                                                       |[0x800013b4]:KMMAC t6, t5, t4<br> [0x800013b8]:sd t6, 1056(sp)<br>    |
|  97|[0x80003810]<br>0xA64424E45942E307|- rs2_w0_val == 1073741824<br> - rs1_w1_val == 1048576<br>                                                                                                                                              |[0x800013e4]:KMMAC t6, t5, t4<br> [0x800013e8]:sd t6, 1072(sp)<br>    |
|  98|[0x80003820]<br>0xA646CF8E5942E304|- rs2_w0_val == 134217728<br> - rs1_w0_val == -65<br>                                                                                                                                                   |[0x80001414]:KMMAC t6, t5, t4<br> [0x80001418]:sd t6, 1088(sp)<br>    |
|  99|[0x80003830]<br>0xA646CDF45942E304|- rs2_w0_val == 67108864<br> - rs1_w1_val == -1025<br>                                                                                                                                                  |[0x80001440]:KMMAC t6, t5, t4<br> [0x80001444]:sd t6, 1104(sp)<br>    |
| 100|[0x80003840]<br>0xA646C5F358ED8DAE|- rs2_w0_val == 16777216<br> - rs1_w1_val == 2147483647<br>                                                                                                                                             |[0x80001474]:KMMAC t6, t5, t4<br> [0x80001478]:sd t6, 1120(sp)<br>    |
| 101|[0x80003850]<br>0xA646C5F258ED8DB0|- rs2_w0_val == 64<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 134217728<br>                                                                                                                           |[0x8000149c]:KMMAC t6, t5, t4<br> [0x800014a0]:sd t6, 1136(sp)<br>    |
| 102|[0x80003860]<br>0xA646C4F158ED8DAF|- rs2_w0_val == 8<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -33<br>                                                                                                                                 |[0x800014c0]:KMMAC t6, t5, t4<br> [0x800014c4]:sd t6, 1152(sp)<br>    |
| 103|[0x80003870]<br>0xA646C4F158ED8DAF|- rs2_w0_val == 1<br> - rs1_w0_val == 2097152<br>                                                                                                                                                       |[0x800014dc]:KMMAC t6, t5, t4<br> [0x800014e0]:sd t6, 1168(sp)<br>    |
| 104|[0x80003880]<br>0xA646C4F0755F54CB|- rs1_w1_val == -2097153<br>                                                                                                                                                                            |[0x80001510]:KMMAC t6, t5, t4<br> [0x80001514]:sd t6, 1184(sp)<br>    |
| 105|[0x80003890]<br>0xA646C4EF755F54CA|- rs1_w1_val == -1048577<br> - rs1_w0_val == -8388609<br>                                                                                                                                               |[0x80001538]:KMMAC t6, t5, t4<br> [0x8000153c]:sd t6, 1200(sp)<br>    |
| 106|[0x800038a0]<br>0xA646D4EF755F54CA|- rs2_w0_val == 1048576<br> - rs1_w1_val == -524289<br>                                                                                                                                                 |[0x80001568]:KMMAC t6, t5, t4<br> [0x8000156c]:sd t6, 1216(sp)<br>    |
| 107|[0x800038b0]<br>0xA646D4EE7FFFFFFF|- rs1_w1_val == -65537<br>                                                                                                                                                                              |[0x8000159c]:KMMAC t6, t5, t4<br> [0x800015a0]:sd t6, 1232(sp)<br>    |
| 108|[0x800038c0]<br>0xA646A1BA7FFFB797|- rs1_w1_val == -32769<br>                                                                                                                                                                              |[0x800015dc]:KMMAC t6, t5, t4<br> [0x800015e0]:sd t6, 1248(sp)<br>    |
| 109|[0x800038d0]<br>0xA646A1B97FFFB797|- rs1_w1_val == -16385<br>                                                                                                                                                                              |[0x80001600]:KMMAC t6, t5, t4<br> [0x80001604]:sd t6, 1264(sp)<br>    |
| 110|[0x800038e0]<br>0xA646A1B97FFF9796|- rs1_w1_val == -8193<br>                                                                                                                                                                               |[0x80001620]:KMMAC t6, t5, t4<br> [0x80001624]:sd t6, 1280(sp)<br>    |
| 111|[0x800038f0]<br>0xA646A1B87FFF9795|- rs1_w1_val == -257<br> - rs1_w0_val == 16777216<br>                                                                                                                                                   |[0x80001644]:KMMAC t6, t5, t4<br> [0x80001648]:sd t6, 1296(sp)<br>    |
| 112|[0x80003900]<br>0xA646A1B77FFF9794|- rs1_w1_val == -33<br> - rs1_w0_val == 16384<br>                                                                                                                                                       |[0x8000166c]:KMMAC t6, t5, t4<br> [0x80001670]:sd t6, 1312(sp)<br>    |
| 113|[0x80003910]<br>0xA646A1B67FFF9793|- rs1_w1_val == -17<br>                                                                                                                                                                                 |[0x80001694]:KMMAC t6, t5, t4<br> [0x80001698]:sd t6, 1328(sp)<br>    |
| 114|[0x80003920]<br>0xA646A1B57FFFFFFF|- rs1_w1_val == -3<br>                                                                                                                                                                                  |[0x800016b4]:KMMAC t6, t5, t4<br> [0x800016b8]:sd t6, 1344(sp)<br>    |
| 115|[0x80003930]<br>0xA646A1947FFFFFFF|- rs2_w0_val == 262144<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 2147483647<br>                                                                                                                |[0x800016e0]:KMMAC t6, t5, t4<br> [0x800016e4]:sd t6, 1360(sp)<br>    |
| 116|[0x80003940]<br>0xA7E03B2D7FFFFFFF|- rs1_w1_val == 67108864<br>                                                                                                                                                                            |[0x80001714]:KMMAC t6, t5, t4<br> [0x80001718]:sd t6, 1376(sp)<br>    |
| 117|[0x80003950]<br>0xA7E03B2C7FFFFFFE|- rs1_w1_val == 33554432<br>                                                                                                                                                                            |[0x8000173c]:KMMAC t6, t5, t4<br> [0x80001740]:sd t6, 1392(sp)<br>    |
| 118|[0x80003960]<br>0xA7ED07F87FFFFFFD|- rs2_w0_val == 8192<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -16385<br>                                                                                                                         |[0x80001774]:KMMAC t6, t5, t4<br> [0x80001778]:sd t6, 1408(sp)<br>    |
| 119|[0x80003970]<br>0xA7ECC7F87FFFFFFC|- rs1_w1_val == 65536<br>                                                                                                                                                                               |[0x8000179c]:KMMAC t6, t5, t4<br> [0x800017a0]:sd t6, 1424(sp)<br>    |
| 120|[0x80003980]<br>0xA7ECC7F87FFFFFFB|- rs1_w1_val == 512<br>                                                                                                                                                                                 |[0x800017c4]:KMMAC t6, t5, t4<br> [0x800017c8]:sd t6, 1440(sp)<br>    |
| 121|[0x80003990]<br>0xA7ECC7F87FFFFFFB|- rs1_w1_val == 128<br>                                                                                                                                                                                 |[0x800017ec]:KMMAC t6, t5, t4<br> [0x800017f0]:sd t6, 1456(sp)<br>    |
| 122|[0x800039a0]<br>0xA7ECC7F77FFFC3A4|- rs1_w1_val == 8<br>                                                                                                                                                                                   |[0x80001824]:KMMAC t6, t5, t4<br> [0x80001828]:sd t6, 1472(sp)<br>    |
| 123|[0x800039b0]<br>0xA7ECC7F77FFFC3A4|- rs1_w1_val == -1<br>                                                                                                                                                                                  |[0x8000184c]:KMMAC t6, t5, t4<br> [0x80001850]:sd t6, 1488(sp)<br>    |
| 124|[0x800039c0]<br>0xA7ECC8377FFFC3A3|- rs1_w1_val == -268435457<br> - rs1_w0_val == -268435457<br>                                                                                                                                           |[0x80001878]:KMMAC t6, t5, t4<br> [0x8000187c]:sd t6, 1504(sp)<br>    |
| 125|[0x800039d0]<br>0xA7ECC8397FFF43A2|- rs1_w0_val == -134217729<br>                                                                                                                                                                          |[0x800018a8]:KMMAC t6, t5, t4<br> [0x800018ac]:sd t6, 1520(sp)<br>    |
| 126|[0x800039e0]<br>0xA7ECC8397FFF43A2|- rs1_w0_val == -67108865<br>                                                                                                                                                                           |[0x800018d0]:KMMAC t6, t5, t4<br> [0x800018d4]:sd t6, 1536(sp)<br>    |
| 127|[0x800039f0]<br>0xA7ECC8397FFF43A2|- rs1_w0_val == -33554433<br>                                                                                                                                                                           |[0x800018f4]:KMMAC t6, t5, t4<br> [0x800018f8]:sd t6, 1552(sp)<br>    |
| 128|[0x80003a00]<br>0xA7ECC8397FFF5D3B|- rs2_w0_val == 32768<br>                                                                                                                                                                               |[0x80001914]:KMMAC t6, t5, t4<br> [0x80001918]:sd t6, 1568(sp)<br>    |
| 129|[0x80003a10]<br>0xA7ECC8387FFD5D3A|- rs1_w0_val == -1048577<br>                                                                                                                                                                            |[0x8000193c]:KMMAC t6, t5, t4<br> [0x80001940]:sd t6, 1584(sp)<br>    |
| 130|[0x80003a20]<br>0xA7ECC8387FFD5D39|- rs2_w0_val == 256<br> - rs1_w0_val == -524289<br>                                                                                                                                                     |[0x80001964]:KMMAC t6, t5, t4<br> [0x80001968]:sd t6, 1600(sp)<br>    |
| 131|[0x80003a30]<br>0xA7ECC8387FFD5D38|- rs1_w0_val == -8193<br>                                                                                                                                                                               |[0x80001998]:KMMAC t6, t5, t4<br> [0x8000199c]:sd t6, 1616(sp)<br>    |
| 132|[0x80003a40]<br>0xA7ECC8377FFD5D04|- rs1_w0_val == -257<br>                                                                                                                                                                                |[0x800019c0]:KMMAC t6, t5, t4<br> [0x800019c4]:sd t6, 1632(sp)<br>    |
| 133|[0x80003a50]<br>0x9FECC8367FFD5D03|- rs1_w0_val == -17<br>                                                                                                                                                                                 |[0x800019e8]:KMMAC t6, t5, t4<br> [0x800019ec]:sd t6, 1648(sp)<br>    |
| 134|[0x80003a60]<br>0x9FECC8367FFD5D03|- rs2_w0_val == 4096<br>                                                                                                                                                                                |[0x80001a10]:KMMAC t6, t5, t4<br> [0x80001a14]:sd t6, 1664(sp)<br>    |
| 135|[0x80003a70]<br>0x9FECC8357FFD5D03|- rs1_w0_val == -9<br>                                                                                                                                                                                  |[0x80001a38]:KMMAC t6, t5, t4<br> [0x80001a3c]:sd t6, 1680(sp)<br>    |
| 136|[0x80003a80]<br>0x9FCCC8347FFD5D02|- rs1_w0_val == -5<br>                                                                                                                                                                                  |[0x80001a6c]:KMMAC t6, t5, t4<br> [0x80001a70]:sd t6, 1696(sp)<br>    |
| 137|[0x80003a90]<br>0x9FCCC8357FFD5D01|- rs1_w0_val == -2<br>                                                                                                                                                                                  |[0x80001aa0]:KMMAC t6, t5, t4<br> [0x80001aa4]:sd t6, 1712(sp)<br>    |
| 138|[0x80003aa0]<br>0x9FCCC8347FFE5D01|- rs1_w0_val == 1073741824<br>                                                                                                                                                                          |[0x80001ac0]:KMMAC t6, t5, t4<br> [0x80001ac4]:sd t6, 1728(sp)<br>    |
| 139|[0x80003ab0]<br>0x9FECC83477FE5D01|- rs1_w0_val == 536870912<br>                                                                                                                                                                           |[0x80001ae8]:KMMAC t6, t5, t4<br> [0x80001aec]:sd t6, 1744(sp)<br>    |
| 140|[0x80003ac0]<br>0x9FECC83477FE5D81|- rs1_w0_val == 268435456<br>                                                                                                                                                                           |[0x80001b10]:KMMAC t6, t5, t4<br> [0x80001b14]:sd t6, 1760(sp)<br>    |
| 141|[0x80003ad0]<br>0x9FECC83477FE5D81|- rs2_w0_val == 65536<br>                                                                                                                                                                               |[0x80001b3c]:KMMAC t6, t5, t4<br> [0x80001b40]:sd t6, 1776(sp)<br>    |
| 142|[0x80003ae0]<br>0x9FECC83377FE5D81|- rs1_w0_val == 8388608<br>                                                                                                                                                                             |[0x80001b60]:KMMAC t6, t5, t4<br> [0x80001b64]:sd t6, 1792(sp)<br>    |
| 143|[0x80003af0]<br>0x9FECC83277FE5D81|- rs1_w0_val == 4194304<br>                                                                                                                                                                             |[0x80001b84]:KMMAC t6, t5, t4<br> [0x80001b88]:sd t6, 1808(sp)<br>    |
| 144|[0x80003b00]<br>0x9FECC83177FE5D81|- rs2_w0_val == 16384<br>                                                                                                                                                                               |[0x80001bb4]:KMMAC t6, t5, t4<br> [0x80001bb8]:sd t6, 1824(sp)<br>    |
| 145|[0x80003b10]<br>0x9FECC83177FE5D60|- rs1_w0_val == 524288<br>                                                                                                                                                                              |[0x80001bdc]:KMMAC t6, t5, t4<br> [0x80001be0]:sd t6, 1840(sp)<br>    |
| 146|[0x80003b20]<br>0x9FECC83077FE5D60|- rs1_w1_val == 32768<br>                                                                                                                                                                               |[0x80001c08]:KMMAC t6, t5, t4<br> [0x80001c0c]:sd t6, 1856(sp)<br>    |
| 147|[0x80003b30]<br>0x9FD772DA77FE5F60|- rs1_w0_val == 131072<br>                                                                                                                                                                              |[0x80001c34]:KMMAC t6, t5, t4<br> [0x80001c38]:sd t6, 1872(sp)<br>    |
| 148|[0x80003b40]<br>0x9FD772DC77FE5F5F|- rs2_w0_val == 512<br>                                                                                                                                                                                 |[0x80001c5c]:KMMAC t6, t5, t4<br> [0x80001c60]:sd t6, 1888(sp)<br>    |
| 149|[0x80003b50]<br>0x9FD81D8777FE5F5E|- rs1_w1_val == -131073<br> - rs1_w0_val == -4194305<br>                                                                                                                                                |[0x80001c88]:KMMAC t6, t5, t4<br> [0x80001c8c]:sd t6, 1904(sp)<br>    |
