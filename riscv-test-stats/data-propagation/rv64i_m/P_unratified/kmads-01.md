
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a10')]      |
| SIG_REGION                | [('0x80003210', '0x80003840', '198 dwords')]      |
| COV_LABELS                | kmads      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmads-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 198      |
| STAT1                     | 98      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 99     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c0]:KMADS t6, t5, t4
      [0x800019c4]:sd t6, 1264(sp)
 -- Signature Address: 0x80003820 Data: 0xC2B4C006E29A7DDF
 -- Redundant Coverpoints hit by the op
      - opcode : kmads
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -9
      - rs2_h2_val == -1
      - rs2_h1_val == -65
      - rs2_h0_val == 32
      - rs1_h2_val == -32768






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmads', 'rs1 : x3', 'rs2 : x3', 'rd : x13', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -9', 'rs2_h2_val == -1', 'rs2_h1_val == -65', 'rs2_h0_val == 32', 'rs1_h3_val == -9', 'rs1_h2_val == -1', 'rs1_h1_val == -65', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800003cc]:KMADS a3, gp, gp
	-[0x800003d0]:sd a3, 0(tp)
Current Store : [0x800003d4] : sd gp, 8(tp) -- Store: [0x80003218]:0xFFF7FFFFFFBF0020




Last Coverpoint : ['rs1 : x0', 'rs2 : x0', 'rd : x0', 'rs1 == rs2 == rd', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000408]:KMADS zero, zero, zero
	-[0x8000040c]:sd zero, 16(tp)
Current Store : [0x80000410] : sd zero, 24(tp) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x27', 'rd : x19', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 2', 'rs2_h2_val == 1024', 'rs2_h1_val == -1', 'rs2_h0_val == -1', 'rs1_h3_val == -5', 'rs1_h1_val == 16384', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000043c]:KMADS s3, sp, s11
	-[0x80000440]:sd s3, 32(tp)
Current Store : [0x80000444] : sd sp, 40(tp) -- Store: [0x80003238]:0xFFFB000740000800




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rd : x9', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -1', 'rs2_h2_val == -21846', 'rs1_h2_val == -2049', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000470]:KMADS s1, s1, s2
	-[0x80000474]:sd s1, 48(tp)
Current Store : [0x80000478] : sd s1, 56(tp) -- Store: [0x80003248]:0xFD58F2A600013FBF




Last Coverpoint : ['rs1 : x6', 'rs2 : x24', 'rd : x24', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 4', 'rs2_h1_val == -9', 'rs2_h0_val == 32767', 'rs1_h3_val == 2048', 'rs1_h1_val == -5', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800004ac]:KMADS s8, t1, s8
	-[0x800004b0]:sd s8, 64(tp)
Current Store : [0x800004b4] : sd t1, 72(tp) -- Store: [0x80003258]:0x0800FFFFFFFB7FFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x17', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 32', 'rs2_h2_val == -9', 'rs2_h1_val == 1', 'rs2_h0_val == 8', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x800004e8]:KMADS a7, s2, a3
	-[0x800004ec]:sd a7, 80(tp)
Current Store : [0x800004f0] : sd s2, 88(tp) -- Store: [0x80003268]:0xFFF6FFF70000FFFC




Last Coverpoint : ['rs1 : x29', 'rs2 : x8', 'rd : x7', 'rs2_h3_val == -32768', 'rs2_h1_val == -2', 'rs1_h2_val == -21846', 'rs1_h1_val == -2', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000524]:KMADS t2, t4, fp
	-[0x80000528]:sd t2, 96(tp)
Current Store : [0x8000052c] : sd t4, 104(tp) -- Store: [0x80003278]:0x0000AAAAFFFEEFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x15', 'rd : x11', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == 21845', 'rs2_h1_val == 8', 'rs1_h3_val == -4097', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80000560]:KMADS a1, a3, a5
	-[0x80000564]:sd a1, 112(tp)
Current Store : [0x80000568] : sd a3, 120(tp) -- Store: [0x80003288]:0xEFFF0010FFBF0003




Last Coverpoint : ['rs1 : x21', 'rs2 : x2', 'rd : x14', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 16384', 'rs2_h0_val == -4097', 'rs1_h2_val == 512', 'rs1_h1_val == 128', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000598]:KMADS a4, s5, sp
	-[0x8000059c]:sd a4, 128(tp)
Current Store : [0x800005a0] : sd s5, 136(tp) -- Store: [0x80003298]:0x000302000080FFDF




Last Coverpoint : ['rs1 : x23', 'rs2 : x14', 'rd : x1', 'rs2_h3_val == -21846', 'rs2_h2_val == 16', 'rs1_h1_val == -513', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005d4]:KMADS ra, s7, a4
	-[0x800005d8]:sd ra, 144(tp)
Current Store : [0x800005dc] : sd s7, 152(tp) -- Store: [0x800032a8]:0xFFFCFFFCFDFF0001




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rd : x15', 'rs2_h3_val == 21845', 'rs2_h1_val == -129', 'rs1_h3_val == 4', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000610]:KMADS a5, a4, t0
	-[0x80000614]:sd a5, 160(tp)
Current Store : [0x80000618] : sd a4, 168(tp) -- Store: [0x800032b8]:0x0004FFF8DFFF0003




Last Coverpoint : ['rs1 : x25', 'rs2 : x10', 'rd : x26', 'rs1_h0_val == -32768', 'rs2_h3_val == -16385', 'rs2_h2_val == 1', 'rs2_h1_val == 256', 'rs1_h3_val == -65', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000644]:KMADS s10, s9, a0
	-[0x80000648]:sd s10, 176(tp)
Current Store : [0x8000064c] : sd s9, 184(tp) -- Store: [0x800032c8]:0xFFBFF7FFFFFF8000




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x2', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -8193', 'rs2_h2_val == -33', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000680]:KMADS sp, t0, s10
	-[0x80000684]:sd sp, 192(tp)
Current Store : [0x80000688] : sd t0, 200(tp) -- Store: [0x800032d8]:0x000600090003FFF9




Last Coverpoint : ['rs1 : x7', 'rs2 : x11', 'rd : x21', 'rs2_h3_val == -4097', 'rs2_h1_val == 16', 'rs1_h3_val == 16', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x800006bc]:KMADS s5, t2, a1
	-[0x800006c0]:sd s5, 208(tp)
Current Store : [0x800006c4] : sd t2, 216(tp) -- Store: [0x800032e8]:0x00100004C0000800




Last Coverpoint : ['rs1 : x1', 'rs2 : x28', 'rd : x5', 'rs2_h3_val == -2049', 'rs2_h2_val == 8192', 'rs2_h0_val == -129', 'rs1_h3_val == 32', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800006f8]:KMADS t0, ra, t3
	-[0x800006fc]:sd t0, 224(tp)
Current Store : [0x80000700] : sd ra, 232(tp) -- Store: [0x800032f8]:0x00203FFF00020001




Last Coverpoint : ['rs1 : x27', 'rs2 : x16', 'rd : x23', 'rs2_h3_val == -1025', 'rs2_h2_val == 4096', 'rs2_h1_val == 2048', 'rs2_h0_val == -1025', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x80000730]:KMADS s7, s11, a6
	-[0x80000734]:sd s7, 240(tp)
Current Store : [0x80000738] : sd s11, 248(tp) -- Store: [0x80003308]:0xFFFC010000050003




Last Coverpoint : ['rs1 : x26', 'rs2 : x7', 'rd : x16', 'rs2_h3_val == -513', 'rs2_h2_val == 128', 'rs2_h0_val == -65', 'rs1_h2_val == 1', 'rs1_h1_val == -3', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000076c]:KMADS a6, s10, t2
	-[0x80000770]:sd a6, 256(tp)
Current Store : [0x80000774] : sd s10, 264(tp) -- Store: [0x80003318]:0x00090001FFFDFFFD




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rd : x10', 'rs2_h3_val == -257', 'rs2_h2_val == 512', 'rs2_h0_val == 64', 'rs1_h3_val == -2', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800007a8]:KMADS a0, s6, a2
	-[0x800007ac]:sd a0, 272(tp)
Current Store : [0x800007b0] : sd s6, 280(tp) -- Store: [0x80003328]:0xFFFE00100040FFF9




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rd : x27', 'rs2_h3_val == -129', 'rs2_h2_val == -129', 'rs2_h1_val == -5', 'rs2_h0_val == 512', 'rs1_h3_val == 512', 'rs1_h1_val == 16', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800007ec]:KMADS s11, s4, tp
	-[0x800007f0]:sd s11, 0(sp)
Current Store : [0x800007f4] : sd s4, 8(sp) -- Store: [0x80003338]:0x020001000010BFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x6', 'rd : x25', 'rs2_h3_val == -65', 'rs2_h1_val == -1025', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000824]:KMADS s9, a1, t1
	-[0x80000828]:sd s9, 16(sp)
Current Store : [0x8000082c] : sd a1, 24(sp) -- Store: [0x80003348]:0xFFF60000FDFF4000




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x3', 'rs2_h3_val == -33', 'rs2_h1_val == -21846', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x80000860]:KMADS gp, s8, s3
	-[0x80000864]:sd gp, 32(sp)
Current Store : [0x80000868] : sd s8, 40(sp) -- Store: [0x80003358]:0x00030008FFF9FFFD




Last Coverpoint : ['rs1 : x28', 'rs2 : x22', 'rd : x18', 'rs2_h3_val == -5', 'rs1_h3_val == 16384', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000089c]:KMADS s2, t3, s6
	-[0x800008a0]:sd s2, 48(sp)
Current Store : [0x800008a4] : sd t3, 56(sp) -- Store: [0x80003368]:0x4000000401003FFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rd : x20', 'rs2_h3_val == -3', 'rs2_h0_val == 2048', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x800008d4]:KMADS s4, t6, a7
	-[0x800008d8]:sd s4, 64(sp)
Current Store : [0x800008dc] : sd t6, 72(sp) -- Store: [0x80003378]:0xFFFA1000DFFFC000




Last Coverpoint : ['rs1 : x17', 'rs2 : x21', 'rd : x28', 'rs2_h3_val == -2', 'rs2_h2_val == -1025', 'rs2_h1_val == -32768', 'rs2_h0_val == -8193', 'rs1_h3_val == 64', 'rs1_h2_val == 2', 'rs1_h1_val == -17', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000910]:KMADS t3, a7, s5
	-[0x80000914]:sd t3, 80(sp)
Current Store : [0x80000918] : sd a7, 88(sp) -- Store: [0x80003388]:0x00400002FFEF0040




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x29', 'rs2_h3_val == 16384', 'rs2_h2_val == -513', 'rs1_h3_val == 4096', 'rs1_h2_val == -17', 'rs1_h1_val == 1024', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000094c]:KMADS t4, tp, s4
	-[0x80000950]:sd t4, 96(sp)
Current Store : [0x80000954] : sd tp, 104(sp) -- Store: [0x80003398]:0x1000FFEF0400FFBF




Last Coverpoint : ['rs1 : x30', 'rs2 : x29', 'rd : x22', 'rs2_h3_val == 8192', 'rs2_h0_val == 21845', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000988]:KMADS s6, t5, t4
	-[0x8000098c]:sd s6, 112(sp)
Current Store : [0x80000990] : sd t5, 120(sp) -- Store: [0x800033a8]:0x000400070010FDFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x6', 'rs2_h3_val == 4096', 'rs2_h2_val == 2048', 'rs1_h3_val == 32767', 'rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x800009c4]:KMADS t1, a2, t6
	-[0x800009c8]:sd t1, 128(sp)
Current Store : [0x800009cc] : sd a2, 136(sp) -- Store: [0x800033b8]:0x7FFFDFFF0400FFFC




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x4', 'rs2_h3_val == 2048', 'rs2_h1_val == -17', 'rs1_h3_val == -129', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000a00]:KMADS tp, a5, ra
	-[0x80000a04]:sd tp, 144(sp)
Current Store : [0x80000a08] : sd a5, 152(sp) -- Store: [0x800033c8]:0xFF7FF7FFFFDF3FFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x31', 'rs2_h3_val == 1024', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000a3c]:KMADS t6, a6, s9
	-[0x80000a40]:sd t6, 160(sp)
Current Store : [0x80000a44] : sd a6, 168(sp) -- Store: [0x800033d8]:0xFFBF00010040FFFA




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x12', 'rs2_h3_val == 512', 'rs2_h1_val == 128', 'rs1_h2_val == -16385', 'rs1_h1_val == 8192', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000a70]:KMADS a2, fp, s1
	-[0x80000a74]:sd a2, 176(sp)
Current Store : [0x80000a78] : sd fp, 184(sp) -- Store: [0x800033e8]:0x0004BFFF20000010




Last Coverpoint : ['rs1 : x10', 'rs2 : x23', 'rd : x30', 'rs2_h3_val == 128', 'rs2_h1_val == -33', 'rs1_h2_val == 2048', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000aa0]:KMADS t5, a0, s7
	-[0x80000aa4]:sd t5, 192(sp)
Current Store : [0x80000aa8] : sd a0, 200(sp) -- Store: [0x800033f8]:0x00000800FBFF0001




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x8', 'rs2_h3_val == 64', 'rs2_h2_val == -65', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80000adc]:KMADS fp, s3, t5
	-[0x80000ae0]:sd fp, 208(sp)
Current Store : [0x80000ae4] : sd s3, 216(sp) -- Store: [0x80003408]:0x0003FFEFFFBF0009




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -5', 'rs1_h2_val == 128', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000b18]:KMADS t6, t5, t4
	-[0x80000b1c]:sd t6, 224(sp)
Current Store : [0x80000b20] : sd t5, 232(sp) -- Store: [0x80003418]:0x00400080FEFF0800




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h2_val == -8193', 'rs2_h1_val == 4096', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000b54]:KMADS t6, t5, t4
	-[0x80000b58]:sd t6, 240(sp)
Current Store : [0x80000b5c] : sd t5, 248(sp) -- Store: [0x80003428]:0x1000F7FFFF7FFFF6




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80000b8c]:KMADS t6, t5, t4
	-[0x80000b90]:sd t6, 256(sp)
Current Store : [0x80000b94] : sd t5, 264(sp) -- Store: [0x80003438]:0x00108000FFFA0006




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h2_val == -3', 'rs1_h1_val == -32768', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000bc8]:KMADS t6, t5, t4
	-[0x80000bcc]:sd t6, 272(sp)
Current Store : [0x80000bd0] : sd t5, 280(sp) -- Store: [0x80003448]:0x0005FFFD8000FBFF




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h3_val == 8', 'rs1_h2_val == -129', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c04]:KMADS t6, t5, t4
	-[0x80000c08]:sd t6, 288(sp)
Current Store : [0x80000c0c] : sd t5, 296(sp) -- Store: [0x80003458]:0x0008FF7F1000EFFF




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000c44]:KMADS t6, t5, t4
	-[0x80000c48]:sd t6, 304(sp)
Current Store : [0x80000c4c] : sd t5, 312(sp) -- Store: [0x80003468]:0x0009800008008000




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h3_val == -33', 'rs1_h2_val == 32767', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000c80]:KMADS t6, t5, t4
	-[0x80000c84]:sd t6, 320(sp)
Current Store : [0x80000c88] : sd t5, 328(sp) -- Store: [0x80003478]:0xFFDF7FFF0200FFF8




Last Coverpoint : ['rs2_h1_val == -4097', 'rs2_h0_val == -21846', 'rs1_h3_val == 2', 'rs1_h2_val == -4097', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000cb8]:KMADS t6, t5, t4
	-[0x80000cbc]:sd t6, 336(sp)
Current Store : [0x80000cc0] : sd t5, 344(sp) -- Store: [0x80003488]:0x0002EFFF0020C000




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000cec]:KMADS t6, t5, t4
	-[0x80000cf0]:sd t6, 352(sp)
Current Store : [0x80000cf4] : sd t5, 360(sp) -- Store: [0x80003498]:0x0001FFF70008FFF8




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h2_val == -2', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000d20]:KMADS t6, t5, t4
	-[0x80000d24]:sd t6, 368(sp)
Current Store : [0x80000d28] : sd t5, 376(sp) -- Store: [0x800034a8]:0xFFF7FFFE0004C000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -5', 'rs1_h1_val == -9', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000d54]:KMADS t6, t5, t4
	-[0x80000d58]:sd t6, 384(sp)
Current Store : [0x80000d5c] : sd t5, 392(sp) -- Store: [0x800034b8]:0xFFF7FF7FFFF7AAAA




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h3_val == 256', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000d8c]:KMADS t6, t5, t4
	-[0x80000d90]:sd t6, 400(sp)
Current Store : [0x80000d94] : sd t5, 408(sp) -- Store: [0x800034c8]:0x0100FFFFFFFD5555




Last Coverpoint : ['rs2_h2_val == 16384', 'rs2_h1_val == -3', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000dc4]:KMADS t6, t5, t4
	-[0x80000dc8]:sd t6, 416(sp)
Current Store : [0x80000dcc] : sd t5, 424(sp) -- Store: [0x800034d8]:0xFFF93FFFFFFDDFFF




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -17', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000df4]:KMADS t6, t5, t4
	-[0x80000df8]:sd t6, 432(sp)
Current Store : [0x80000dfc] : sd t5, 440(sp) -- Store: [0x800034e8]:0x10000003FFFDF7FF




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h3_val == -32768', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000e30]:KMADS t6, t5, t4
	-[0x80000e34]:sd t6, 448(sp)
Current Store : [0x80000e38] : sd t5, 456(sp) -- Store: [0x800034f8]:0x8000FFF70008FEFF




Last Coverpoint : ['rs2_h0_val == 4096', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000e64]:KMADS t6, t5, t4
	-[0x80000e68]:sd t6, 464(sp)
Current Store : [0x80000e6c] : sd t5, 472(sp) -- Store: [0x80003508]:0x0010C0000003FF7F




Last Coverpoint : ['rs2_h1_val == 1024', 'rs2_h0_val == -513', 'rs1_h1_val == -21846', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000ea8]:KMADS t6, t5, t4
	-[0x80000eac]:sd t6, 480(sp)
Current Store : [0x80000eb0] : sd t5, 488(sp) -- Store: [0x80003518]:0xC0000080AAAAFFEF




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h2_val == 64', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ee4]:KMADS t6, t5, t4
	-[0x80000ee8]:sd t6, 496(sp)
Current Store : [0x80000eec] : sd t5, 504(sp) -- Store: [0x80003528]:0xFF7F00400200FFF7




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h3_val == 128', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000f20]:KMADS t6, t5, t4
	-[0x80000f24]:sd t6, 512(sp)
Current Store : [0x80000f28] : sd t5, 520(sp) -- Store: [0x80003538]:0x00800000FFFEFFFB




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h2_val == 1024', 'rs1_h1_val == -4097', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f54]:KMADS t6, t5, t4
	-[0x80000f58]:sd t6, 528(sp)
Current Store : [0x80000f5c] : sd t5, 536(sp) -- Store: [0x80003548]:0xFF7F0400EFFFFFFE




Last Coverpoint : ['rs1_h3_val == -1', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f8c]:KMADS t6, t5, t4
	-[0x80000f90]:sd t6, 544(sp)
Current Store : [0x80000f94] : sd t5, 552(sp) -- Store: [0x80003558]:0xFFFF0003FFEF2000




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h0_val == -9', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000fc4]:KMADS t6, t5, t4
	-[0x80000fc8]:sd t6, 560(sp)
Current Store : [0x80000fcc] : sd t5, 568(sp) -- Store: [0x80003568]:0x00070200FFDF1000




Last Coverpoint : ['rs1_h3_val == -17', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80001000]:KMADS t6, t5, t4
	-[0x80001004]:sd t6, 576(sp)
Current Store : [0x80001008] : sd t5, 584(sp) -- Store: [0x80003578]:0xFFEFFFF7FBFF0400




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001044]:KMADS t6, t5, t4
	-[0x80001048]:sd t6, 592(sp)
Current Store : [0x8000104c] : sd t5, 600(sp) -- Store: [0x80003588]:0xC000FFEFC000FDFF




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80001080]:KMADS t6, t5, t4
	-[0x80001084]:sd t6, 608(sp)
Current Store : [0x80001088] : sd t5, 616(sp) -- Store: [0x80003598]:0x0009FFFFDFFF0010




Last Coverpoint : ['rs2_h1_val == 32767', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800010b4]:KMADS t6, t5, t4
	-[0x800010b8]:sd t6, 624(sp)
Current Store : [0x800010bc] : sd t5, 632(sp) -- Store: [0x800035a8]:0x0008BFFFFFFE0005




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800010ec]:KMADS t6, t5, t4
	-[0x800010f0]:sd t6, 640(sp)
Current Store : [0x800010f4] : sd t5, 648(sp) -- Store: [0x800035b8]:0x01000008FF7F0400




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80001120]:KMADS t6, t5, t4
	-[0x80001124]:sd t6, 656(sp)
Current Store : [0x80001128] : sd t5, 664(sp) -- Store: [0x800035c8]:0xFFF9AAAA00090040




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x8000115c]:KMADS t6, t5, t4
	-[0x80001160]:sd t6, 672(sp)
Current Store : [0x80001164] : sd t5, 680(sp) -- Store: [0x800035d8]:0xFFFF000600023FFF




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001190]:KMADS t6, t5, t4
	-[0x80001194]:sd t6, 688(sp)
Current Store : [0x80001198] : sd t5, 696(sp) -- Store: [0x800035e8]:0x000000045555FFF7




Last Coverpoint : ['rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x800011cc]:KMADS t6, t5, t4
	-[0x800011d0]:sd t6, 704(sp)
Current Store : [0x800011d4] : sd t5, 712(sp) -- Store: [0x800035f8]:0xAAAAFFFAFFF8FFF7




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h1_val == 32', 'rs1_h3_val == 21845', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001204]:KMADS t6, t5, t4
	-[0x80001208]:sd t6, 720(sp)
Current Store : [0x8000120c] : sd t5, 728(sp) -- Store: [0x80003608]:0x5555FFF8BFFF0006




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001240]:KMADS t6, t5, t4
	-[0x80001244]:sd t6, 736(sp)
Current Store : [0x80001248] : sd t5, 744(sp) -- Store: [0x80003618]:0x0010F7FFFFF90200




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h3_val == -16385', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80001284]:KMADS t6, t5, t4
	-[0x80001288]:sd t6, 752(sp)
Current Store : [0x8000128c] : sd t5, 760(sp) -- Store: [0x80003628]:0xBFFF002020000800




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800012c0]:KMADS t6, t5, t4
	-[0x800012c4]:sd t6, 768(sp)
Current Store : [0x800012c8] : sd t5, 776(sp) -- Store: [0x80003638]:0x0009010000070100




Last Coverpoint : ['rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x800012f8]:KMADS t6, t5, t4
	-[0x800012fc]:sd t6, 784(sp)
Current Store : [0x80001300] : sd t5, 792(sp) -- Store: [0x80003648]:0xDFFF800000063FFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h2_val == -257', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001334]:KMADS t6, t5, t4
	-[0x80001338]:sd t6, 800(sp)
Current Store : [0x8000133c] : sd t5, 808(sp) -- Store: [0x80003658]:0xFFF6FEFF00100080




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_h3_val == -2049', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000136c]:KMADS t6, t5, t4
	-[0x80001370]:sd t6, 816(sp)
Current Store : [0x80001374] : sd t5, 824(sp) -- Store: [0x80003668]:0xF7FF1000FFFD0004




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x800013a0]:KMADS t6, t5, t4
	-[0x800013a4]:sd t6, 832(sp)
Current Store : [0x800013a8] : sd t5, 840(sp) -- Store: [0x80003678]:0xFBFFDFFFC0000200




Last Coverpoint : ['rs1_h3_val == -513']
Last Code Sequence : 
	-[0x800013dc]:KMADS t6, t5, t4
	-[0x800013e0]:sd t6, 848(sp)
Current Store : [0x800013e4] : sd t5, 856(sp) -- Store: [0x80003688]:0xFDFF04000006FFDF




Last Coverpoint : ['rs2_h2_val == -16385']
Last Code Sequence : 
	-[0x80001418]:KMADS t6, t5, t4
	-[0x8000141c]:sd t6, 864(sp)
Current Store : [0x80001420] : sd t5, 872(sp) -- Store: [0x80003698]:0xFFFC00075555FFF6




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001450]:KMADS t6, t5, t4
	-[0x80001454]:sd t6, 880(sp)
Current Store : [0x80001458] : sd t5, 888(sp) -- Store: [0x800036a8]:0x0400EFFF0800C000




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x8000148c]:KMADS t6, t5, t4
	-[0x80001490]:sd t6, 896(sp)
Current Store : [0x80001494] : sd t5, 904(sp) -- Store: [0x800036b8]:0x00807FFF0400DFFF




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x800014c8]:KMADS t6, t5, t4
	-[0x800014cc]:sd t6, 912(sp)
Current Store : [0x800014d0] : sd t5, 920(sp) -- Store: [0x800036c8]:0x00400040FFFEBFFF




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001500]:KMADS t6, t5, t4
	-[0x80001504]:sd t6, 928(sp)
Current Store : [0x80001508] : sd t5, 936(sp) -- Store: [0x800036d8]:0x40005555FFFF0000




Last Coverpoint : ['rs2_h2_val == -32768']
Last Code Sequence : 
	-[0x80001538]:KMADS t6, t5, t4
	-[0x8000153c]:sd t6, 944(sp)
Current Store : [0x80001540] : sd t5, 952(sp) -- Store: [0x800036e8]:0x10000001FFFC1000




Last Coverpoint : ['rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80001574]:KMADS t6, t5, t4
	-[0x80001578]:sd t6, 960(sp)
Current Store : [0x8000157c] : sd t5, 968(sp) -- Store: [0x800036f8]:0x0080FBFFFFFFF7FF




Last Coverpoint : ['rs1_h2_val == -513']
Last Code Sequence : 
	-[0x800015ac]:KMADS t6, t5, t4
	-[0x800015b0]:sd t6, 976(sp)
Current Store : [0x800015b4] : sd t5, 984(sp) -- Store: [0x80003708]:0x7FFFFDFFFFFE0003




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x800015e8]:KMADS t6, t5, t4
	-[0x800015ec]:sd t6, 992(sp)
Current Store : [0x800015f0] : sd t5, 1000(sp) -- Store: [0x80003718]:0x4000FFFE0005FFF7




Last Coverpoint : ['rs1_h2_val == -65']
Last Code Sequence : 
	-[0x80001624]:KMADS t6, t5, t4
	-[0x80001628]:sd t6, 1008(sp)
Current Store : [0x8000162c] : sd t5, 1016(sp) -- Store: [0x80003728]:0x0003FFBF0004FBFF




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x8000165c]:KMADS t6, t5, t4
	-[0x80001660]:sd t6, 1024(sp)
Current Store : [0x80001664] : sd t5, 1032(sp) -- Store: [0x80003738]:0x0080FFDFDFFF2000




Last Coverpoint : ['rs2_h2_val == 2', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80001698]:KMADS t6, t5, t4
	-[0x8000169c]:sd t6, 1040(sp)
Current Store : [0x800016a0] : sd t5, 1048(sp) -- Store: [0x80003748]:0xFFF6FFFB00010005




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800016d4]:KMADS t6, t5, t4
	-[0x800016d8]:sd t6, 1056(sp)
Current Store : [0x800016dc] : sd t5, 1064(sp) -- Store: [0x80003758]:0x00010000F7FF0010




Last Coverpoint : ['rs1_h2_val == 16384', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001708]:KMADS t6, t5, t4
	-[0x8000170c]:sd t6, 1072(sp)
Current Store : [0x80001710] : sd t5, 1080(sp) -- Store: [0x80003768]:0x7FFF400000090002




Last Coverpoint : ['rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001744]:KMADS t6, t5, t4
	-[0x80001748]:sd t6, 1088(sp)
Current Store : [0x8000174c] : sd t5, 1096(sp) -- Store: [0x80003778]:0xEFFF2000FEFF0003




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000177c]:KMADS t6, t5, t4
	-[0x80001780]:sd t6, 1104(sp)
Current Store : [0x80001784] : sd t5, 1112(sp) -- Store: [0x80003788]:0xFEFF000340000001




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x800017b8]:KMADS t6, t5, t4
	-[0x800017bc]:sd t6, 1120(sp)
Current Store : [0x800017c0] : sd t5, 1128(sp) -- Store: [0x80003798]:0x0100FFFBFFF8F7FF




Last Coverpoint : ['rs2_h1_val == -2049']
Last Code Sequence : 
	-[0x800017fc]:KMADS t6, t5, t4
	-[0x80001800]:sd t6, 1136(sp)
Current Store : [0x80001804] : sd t5, 1144(sp) -- Store: [0x800037a8]:0x0009FFFBFFF70002




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x80001838]:KMADS t6, t5, t4
	-[0x8000183c]:sd t6, 1152(sp)
Current Store : [0x80001840] : sd t5, 1160(sp) -- Store: [0x800037b8]:0xFBFFFFFA5555FF7F




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80001874]:KMADS t6, t5, t4
	-[0x80001878]:sd t6, 1168(sp)
Current Store : [0x8000187c] : sd t5, 1176(sp) -- Store: [0x800037c8]:0x0080FDFF00090008




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800018a8]:KMADS t6, t5, t4
	-[0x800018ac]:sd t6, 1184(sp)
Current Store : [0x800018b0] : sd t5, 1192(sp) -- Store: [0x800037d8]:0xFFF700057FFFEFFF




Last Coverpoint : ['rs1_h3_val == -3']
Last Code Sequence : 
	-[0x800018d8]:KMADS t6, t5, t4
	-[0x800018dc]:sd t6, 1200(sp)
Current Store : [0x800018e0] : sd t5, 1208(sp) -- Store: [0x800037e8]:0xFFFDFFDFAAAA2000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001914]:KMADS t6, t5, t4
	-[0x80001918]:sd t6, 1216(sp)
Current Store : [0x8000191c] : sd t5, 1224(sp) -- Store: [0x800037f8]:0xFBFF04005555FFFF




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80001950]:KMADS t6, t5, t4
	-[0x80001954]:sd t6, 1232(sp)
Current Store : [0x80001958] : sd t5, 1240(sp) -- Store: [0x80003808]:0x2000FFFEFFDF0002




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x8000198c]:KMADS t6, t5, t4
	-[0x80001990]:sd t6, 1248(sp)
Current Store : [0x80001994] : sd t5, 1256(sp) -- Store: [0x80003818]:0x00083FFF00205555




Last Coverpoint : ['opcode : kmads', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -9', 'rs2_h2_val == -1', 'rs2_h1_val == -65', 'rs2_h0_val == 32', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x800019c0]:KMADS t6, t5, t4
	-[0x800019c4]:sd t6, 1264(sp)
Current Store : [0x800019c8] : sd t5, 1272(sp) -- Store: [0x80003828]:0xC000800000078000




Last Coverpoint : ['rs2_h3_val == -17']
Last Code Sequence : 
	-[0x800019fc]:KMADS t6, t5, t4
	-[0x80001a00]:sd t6, 1280(sp)
Current Store : [0x80001a04] : sd t5, 1288(sp) -- Store: [0x80003838]:0xFFEF002000100009





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                                                  |                                  code                                   |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xEADFEF2BEADFFB5C|- opcode : kmads<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -9<br> - rs2_h2_val == -1<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32<br> - rs1_h3_val == -9<br> - rs1_h2_val == -1<br> - rs1_h1_val == -65<br> - rs1_h0_val == 32<br> |[0x800003cc]:KMADS a3, gp, gp<br> [0x800003d0]:sd a3, 0(tp)<br>          |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                             |[0x80000408]:KMADS zero, zero, zero<br> [0x8000040c]:sd zero, 16(tp)<br> |
|   3|[0x80003230]<br>0x6FAB63B16FAB47BB|- rs1 : x2<br> - rs2 : x27<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 2<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -1<br> - rs2_h0_val == -1<br> - rs1_h3_val == -5<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 2048<br>                 |[0x8000043c]:KMADS s3, sp, s11<br> [0x80000440]:sd s3, 32(tp)<br>        |
|   4|[0x80003240]<br>0xFD58F2A600013FBF|- rs1 : x9<br> - rs2 : x18<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -1<br> - rs2_h2_val == -21846<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                          |[0x80000470]:KMADS s1, s1, s2<br> [0x80000474]:sd s1, 48(tp)<br>         |
|   5|[0x80003250]<br>0x7FFFFFFFBFF8802B|- rs1 : x6<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 4<br> - rs2_h1_val == -9<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 2048<br> - rs1_h1_val == -5<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                |[0x800004ac]:KMADS s8, t1, s8<br> [0x800004b0]:sd s8, 64(tp)<br>         |
|   6|[0x80003260]<br>0xBEADFD5CBEADFF0D|- rs1 : x18<br> - rs2 : x13<br> - rd : x17<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 32<br> - rs2_h2_val == -9<br> - rs2_h1_val == 1<br> - rs2_h0_val == 8<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x800004e8]:KMADS a7, s2, a3<br> [0x800004ec]:sd a7, 80(tp)<br>         |
|   7|[0x80003270]<br>0xB7FE0C54BBFBE6FD|- rs1 : x29<br> - rs2 : x8<br> - rd : x7<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -2<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -2<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000524]:KMADS t2, t4, fp<br> [0x80000528]:sd t2, 96(tp)<br>         |
|   8|[0x80003280]<br>0xAB6A651FAB7FB979|- rs1 : x13<br> - rs2 : x15<br> - rd : x11<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == 256<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 8<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000560]:KMADS a1, a3, a5<br> [0x80000564]:sd a1, 112(tp)<br>        |
|   9|[0x80003290]<br>0xF56FE97CF58DE74C|- rs1 : x21<br> - rs2 : x2<br> - rd : x14<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -4097<br> - rs1_h2_val == 512<br> - rs1_h1_val == 128<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000598]:KMADS a4, s5, sp<br> [0x8000059c]:sd a4, 128(tp)<br>        |
|  10|[0x800032a0]<br>0xFEEF1445FEEDB2AD|- rs1 : x23<br> - rs2 : x14<br> - rd : x1<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 16<br> - rs1_h1_val == -513<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005d4]:KMADS ra, s7, a4<br> [0x800005d8]:sd ra, 144(tp)<br>        |
|  11|[0x800032b0]<br>0x0101AA590017A07E|- rs1 : x14<br> - rs2 : x5<br> - rd : x15<br> - rs2_h3_val == 21845<br> - rs2_h1_val == -129<br> - rs1_h3_val == 4<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000610]:KMADS a5, a4, t0<br> [0x80000614]:sd a5, 160(tp)<br>        |
|  12|[0x800032c0]<br>0x76EF9F4176DF55FF|- rs1 : x25<br> - rs2 : x10<br> - rd : x26<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 1<br> - rs2_h1_val == 256<br> - rs1_h3_val == -65<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000644]:KMADS s10, s9, a0<br> [0x80000648]:sd s10, 176(tp)<br>      |
|  13|[0x800032d0]<br>0x0004412A4000F024|- rs1 : x5<br> - rs2 : x26<br> - rd : x2<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -33<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000680]:KMADS sp, t0, s10<br> [0x80000684]:sd sp, 192(tp)<br>       |
|  14|[0x800032e0]<br>0x0002020C007D1FDF|- rs1 : x7<br> - rs2 : x11<br> - rd : x21<br> - rs2_h3_val == -4097<br> - rs2_h1_val == 16<br> - rs1_h3_val == 16<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800006bc]:KMADS s5, t2, a1<br> [0x800006c0]:sd s5, 208(tp)<br>        |
|  15|[0x800032f0]<br>0xF8051FE900040086|- rs1 : x1<br> - rs2 : x28<br> - rd : x5<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 8192<br> - rs2_h0_val == -129<br> - rs1_h3_val == 32<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800006f8]:KMADS t0, ra, t3<br> [0x800006fc]:sd t0, 224(tp)<br>        |
|  16|[0x80003300]<br>0xFFED1000FDFF3404|- rs1 : x27<br> - rs2 : x16<br> - rd : x23<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -1025<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000730]:KMADS s7, s11, a6<br> [0x80000734]:sd s7, 240(tp)<br>       |
|  17|[0x80003310]<br>0xFBFEFD770800FB42|- rs1 : x26<br> - rs2 : x7<br> - rd : x16<br> - rs2_h3_val == -513<br> - rs2_h2_val == 128<br> - rs2_h0_val == -65<br> - rs1_h2_val == 1<br> - rs1_h1_val == -3<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000076c]:KMADS a6, s10, t2<br> [0x80000770]:sd a6, 256(tp)<br>       |
|  18|[0x80003320]<br>0xBFFEE20301000040|- rs1 : x22<br> - rs2 : x12<br> - rd : x10<br> - rs2_h3_val == -257<br> - rs2_h2_val == 512<br> - rs2_h0_val == 64<br> - rs1_h3_val == -2<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800007a8]:KMADS a0, s6, a2<br> [0x800007ac]:sd a0, 272(tp)<br>        |
|  19|[0x80003330]<br>0xFFFB8000008501B3|- rs1 : x20<br> - rs2 : x4<br> - rd : x27<br> - rs2_h3_val == -129<br> - rs2_h2_val == -129<br> - rs2_h1_val == -5<br> - rs2_h0_val == 512<br> - rs1_h3_val == 512<br> - rs1_h1_val == 16<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800007ec]:KMADS s11, s4, tp<br> [0x800007f0]:sd s11, 0(sp)<br>        |
|  20|[0x80003340]<br>0xFFBFFA8900068601|- rs1 : x11<br> - rs2 : x6<br> - rd : x25<br> - rs2_h3_val == -65<br> - rs2_h1_val == -1025<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000824]:KMADS s9, a1, t1<br> [0x80000828]:sd s9, 16(sp)<br>         |
|  21|[0x80003350]<br>0xFFF5FFA4FFC15B7A|- rs1 : x24<br> - rs2 : x19<br> - rd : x3<br> - rs2_h3_val == -33<br> - rs2_h1_val == -21846<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000860]:KMADS gp, s8, s3<br> [0x80000864]:sd gp, 32(sp)<br>         |
|  22|[0x80003360]<br>0xFFF5C07BF0013EFB|- rs1 : x28<br> - rs2 : x22<br> - rd : x18<br> - rs2_h3_val == -5<br> - rs1_h3_val == 16384<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000089c]:KMADS s2, t3, s6<br> [0x800008a0]:sd s2, 48(sp)<br>         |
|  23|[0x80003370]<br>0x01FFC1120211E008|- rs1 : x31<br> - rs2 : x17<br> - rd : x20<br> - rs2_h3_val == -3<br> - rs2_h0_val == 2048<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800008d4]:KMADS s4, t6, a7<br> [0x800008d8]:sd s4, 64(sp)<br>         |
|  24|[0x80003380]<br>0x400007860110C03F|- rs1 : x17<br> - rs2 : x21<br> - rd : x28<br> - rs2_h3_val == -2<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 64<br> - rs1_h2_val == 2<br> - rs1_h1_val == -17<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                               |[0x80000910]:KMADS t3, a7, s5<br> [0x80000914]:sd t3, 80(sp)<br>         |
|  25|[0x80003390]<br>0x04008899FFFEE575|- rs1 : x4<br> - rs2 : x20<br> - rd : x29<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -513<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -17<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x8000094c]:KMADS t4, tp, s4<br> [0x80000950]:sd t4, 96(sp)<br>         |
|  26|[0x800033a0]<br>0xFFFC7FFB006A3EC4|- rs1 : x30<br> - rs2 : x29<br> - rd : x22<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 21845<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000988]:KMADS s6, t5, t4<br> [0x8000098c]:sd s6, 112(sp)<br>        |
|  27|[0x800033b0]<br>0x08BFA2AAFBFF23E8|- rs1 : x12<br> - rs2 : x31<br> - rd : x6<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 2048<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800009c4]:KMADS t1, a2, t6<br> [0x800009c8]:sd t1, 128(sp)<br>        |
|  28|[0x800033c0]<br>0x0FFCEFEE040041F3|- rs1 : x15<br> - rs2 : x1<br> - rd : x4<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -17<br> - rs1_h3_val == -129<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000a00]:KMADS tp, a5, ra<br> [0x80000a04]:sd tp, 144(sp)<br>        |
|  29|[0x800033d0]<br>0x0FFF44000009FF33|- rs1 : x16<br> - rs2 : x25<br> - rd : x31<br> - rs2_h3_val == 1024<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a3c]:KMADS t6, a6, s9<br> [0x80000a40]:sd t6, 160(sp)<br>        |
|  30|[0x800033e0]<br>0x7FFFFFFF0410FF6C|- rs1 : x8<br> - rs2 : x9<br> - rd : x12<br> - rs2_h3_val == 512<br> - rs2_h1_val == 128<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a70]:KMADS a2, fp, s1<br> [0x80000a74]:sd a2, 176(sp)<br>        |
|  31|[0x800033f0]<br>0x000380070011C220|- rs1 : x10<br> - rs2 : x23<br> - rd : x30<br> - rs2_h3_val == 128<br> - rs2_h1_val == -33<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000aa0]:KMADS t5, a0, s7<br> [0x80000aa4]:sd t5, 192(sp)<br>        |
|  32|[0x80003400]<br>0x0004BC6E20104036|- rs1 : x19<br> - rs2 : x30<br> - rd : x8<br> - rs2_h3_val == 64<br> - rs2_h2_val == -65<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000adc]:KMADS fp, s3, t5<br> [0x80000ae0]:sd fp, 208(sp)<br>        |
|  33|[0x80003410]<br>0x0FFF4A800009E054|- rs2_h3_val == 16<br> - rs2_h2_val == -5<br> - rs1_h2_val == 128<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b18]:KMADS t6, t5, t4<br> [0x80000b1c]:sd t6, 224(sp)<br>        |
|  34|[0x80003420]<br>0x0EFFA27F000525A6|- rs2_h3_val == 8<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b54]:KMADS t6, t5, t4<br> [0x80000b58]:sd t6, 240(sp)<br>        |
|  35|[0x80003430]<br>0x0EFBA2BF00053DAC|- rs2_h3_val == 4<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b8c]:KMADS t6, t5, t4<br> [0x80000b90]:sd t6, 256(sp)<br>        |
|  36|[0x80003440]<br>0x0EFB9CC1E004B98B|- rs2_h3_val == 1<br> - rs1_h2_val == -3<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000bc8]:KMADS t6, t5, t4<br> [0x80000bcc]:sd t6, 272(sp)<br>        |
|  37|[0x80003450]<br>0x0EF99828E004598A|- rs2_h0_val == -16385<br> - rs1_h3_val == 8<br> - rs1_h2_val == -129<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c04]:KMADS t6, t5, t4<br> [0x80000c08]:sd t6, 288(sp)<br>        |
|  38|[0x80003460]<br>0x0EDA38280CAED98A|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c44]:KMADS t6, t5, t4<br> [0x80000c48]:sd t6, 304(sp)<br>        |
|  39|[0x80003470]<br>0x0ED7A7AD0CAEBF8A|- rs2_h0_val == 256<br> - rs1_h3_val == -33<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c80]:KMADS t6, t5, t4<br> [0x80000c84]:sd t6, 320(sp)<br>        |
|  40|[0x80003480]<br>0x0ED71722F7573F6A|- rs2_h1_val == -4097<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 2<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000cb8]:KMADS t6, t5, t4<br> [0x80000cbc]:sd t6, 336(sp)<br>        |
|  41|[0x80003490]<br>0x0ED6D722F7593F6A|- rs1_h3_val == 1<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000cec]:KMADS t6, t5, t4<br> [0x80000cf0]:sd t6, 352(sp)<br>        |
|  42|[0x800034a0]<br>0x0ED6E017D758FF66|- rs2_h0_val == -32768<br> - rs1_h2_val == -2<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d20]:KMADS t6, t5, t4<br> [0x80000d24]:sd t6, 368(sp)<br>        |
|  43|[0x800034b0]<br>0x0ED6E29CD75754A6|- rs2_h1_val == 2<br> - rs2_h0_val == -5<br> - rs1_h1_val == -9<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d54]:KMADS t6, t5, t4<br> [0x80000d58]:sd t6, 384(sp)<br>        |
|  44|[0x800034c0]<br>0x0EDEE27BD72C9226|- rs2_h0_val == 128<br> - rs1_h3_val == 256<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d8c]:KMADS t6, t5, t4<br> [0x80000d90]:sd t6, 400(sp)<br>        |
|  45|[0x800034d0]<br>0xFEDF2274D734926F|- rs2_h2_val == 16384<br> - rs2_h1_val == -3<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dc4]:KMADS t6, t5, t4<br> [0x80000dc8]:sd t6, 416(sp)<br>        |
|  46|[0x800034e0]<br>0xFEDF0577D7340A61|- rs2_h2_val == -257<br> - rs2_h0_val == -17<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000df4]:KMADS t6, t5, t4<br> [0x80000df8]:sd t6, 432(sp)<br>        |
|  47|[0x800034f0]<br>0xFEDD89F7D7341A21|- rs2_h0_val == 16<br> - rs1_h3_val == -32768<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e30]:KMADS t6, t5, t4<br> [0x80000e34]:sd t6, 448(sp)<br>        |
|  48|[0x80003500]<br>0xFEDE49C7D73CEA1E|- rs2_h0_val == 4096<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e64]:KMADS t6, t5, t4<br> [0x80000e68]:sd t6, 464(sp)<br>        |
|  49|[0x80003510]<br>0xFEEE9A47D5E7700D|- rs2_h1_val == 1024<br> - rs2_h0_val == -513<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ea8]:KMADS t6, t5, t4<br> [0x80000eac]:sd t6, 480(sp)<br>        |
|  50|[0x80003520]<br>0xFEF69802D5E7EF74|- rs2_h1_val == 64<br> - rs1_h2_val == 64<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ee4]:KMADS t6, t5, t4<br> [0x80000ee8]:sd t6, 496(sp)<br>        |
|  51|[0x80003530]<br>0xFEF49782D5E7C75D|- rs2_h0_val == -2049<br> - rs1_h3_val == 128<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f20]:KMADS t6, t5, t4<br> [0x80000f24]:sd t6, 512(sp)<br>        |
|  52|[0x80003540]<br>0xFEF48F42D4E7B759|- rs2_h0_val == -2<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f54]:KMADS t6, t5, t4<br> [0x80000f58]:sd t6, 528(sp)<br>        |
|  53|[0x80003550]<br>0xFEF4F9EDD4E857E1|- rs1_h3_val == -1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f8c]:KMADS t6, t5, t4<br> [0x80000f90]:sd t6, 544(sp)<br>        |
|  54|[0x80003560]<br>0xFEF139EDD4E8E8C8|- rs2_h2_val == 256<br> - rs2_h0_val == -9<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000fc4]:KMADS t6, t5, t4<br> [0x80000fc8]:sd t6, 560(sp)<br>        |
|  55|[0x80003570]<br>0xFEF1827ED63F1A1E|- rs1_h3_val == -17<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001000]:KMADS t6, t5, t4<br> [0x80001004]:sd t6, 576(sp)<br>        |
|  56|[0x80003580]<br>0xFEF7426DD63C171D|- rs2_h1_val == 4<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001044]:KMADS t6, t5, t4<br> [0x80001048]:sd t6, 592(sp)<br>        |
|  57|[0x80003590]<br>0xFEFA4260D63BB74A|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001080]:KMADS t6, t5, t4<br> [0x80001084]:sd t6, 608(sp)<br>        |
|  58|[0x800035a0]<br>0xFEF9425AD639774C|- rs2_h1_val == 32767<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010b4]:KMADS t6, t5, t4<br> [0x800010b8]:sd t6, 624(sp)<br>        |
|  59|[0x800035b0]<br>0xFEFA429AD5B9764A|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800010ec]:KMADS t6, t5, t4<br> [0x800010f0]:sd t6, 640(sp)<br>        |
|  60|[0x800035c0]<br>0xFEE496E4D5B89A4A|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001120]:KMADS t6, t5, t4<br> [0x80001124]:sd t6, 656(sp)<br>        |
|  61|[0x800035d0]<br>0xFEE496B7D5B89A4A|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000115c]:KMADS t6, t5, t4<br> [0x80001160]:sd t6, 672(sp)<br>        |
|  62|[0x800035e0]<br>0xFEE34163DB0DEA53|- rs2_h0_val == 1<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001190]:KMADS t6, t5, t4<br> [0x80001194]:sd t6, 688(sp)<br>        |
|  63|[0x800035f0]<br>0xFED89703DB0DEE6D|- rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800011cc]:KMADS t6, t5, t4<br> [0x800011d0]:sd t6, 704(sp)<br>        |
|  64|[0x80003600]<br>0xFED79744DB05EE4D|- rs2_h2_val == 8<br> - rs2_h1_val == 32<br> - rs1_h3_val == 21845<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001204]:KMADS t6, t5, t4<br> [0x80001208]:sd t6, 720(sp)<br>        |
|  65|[0x80003610]<br>0xFEDB7730DB25E24D|- rs2_h1_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001240]:KMADS t6, t5, t4<br> [0x80001244]:sd t6, 736(sp)<br>        |
|  66|[0x80003620]<br>0xF6DB5330D723CA4D|- rs2_h2_val == 32<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001284]:KMADS t6, t5, t4<br> [0x80001288]:sd t6, 752(sp)<br>        |
|  67|[0x80003630]<br>0xF6DB48A7D7244B07|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800012c0]:KMADS t6, t5, t4<br> [0x800012c4]:sd t6, 768(sp)<br>        |
|  68|[0x80003640]<br>0xF6E568E8D3215B07|- rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800012f8]:KMADS t6, t5, t4<br> [0x800012fc]:sd t6, 784(sp)<br>        |
|  69|[0x80003650]<br>0xF6E56BE1D320DB57|- rs2_h2_val == -17<br> - rs1_h2_val == -257<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001334]:KMADS t6, t5, t4<br> [0x80001338]:sd t6, 800(sp)<br>        |
|  70|[0x80003660]<br>0xF76553DCD3215B57|- rs2_h2_val == -2049<br> - rs1_h3_val == -2049<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000136c]:KMADS t6, t5, t4<br> [0x80001370]:sd t6, 816(sp)<br>        |
|  71|[0x80003670]<br>0xF767185BD3119D57|- rs2_h2_val == -2<br> - rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013a0]:KMADS t6, t5, t4<br> [0x800013a4]:sd t6, 832(sp)<br>        |
|  72|[0x80003680]<br>0xF8BC705BD3119D12|- rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013dc]:KMADS t6, t5, t4<br> [0x800013e0]:sd t6, 848(sp)<br>        |
|  73|[0x80003690]<br>0xF8BE2F62D2E64D33|- rs2_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001418]:KMADS t6, t5, t4<br> [0x8000141c]:sd t6, 864(sp)<br>        |
|  74|[0x800036a0]<br>0xF8BEA36AD2D4C533|- rs2_h1_val == -513<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001450]:KMADS t6, t5, t4<br> [0x80001454]:sd t6, 880(sp)<br>        |
|  75|[0x800036b0]<br>0x00BE12E9D2ECC573|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000148c]:KMADS t6, t5, t4<br> [0x80001490]:sd t6, 896(sp)<br>        |
|  76|[0x800036c0]<br>0x00BE33A9D2EE8572|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800014c8]:KMADS t6, t5, t4<br> [0x800014cc]:sd t6, 912(sp)<br>        |
|  77|[0x800036d0]<br>0x007FF3A7D2EE4572|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001500]:KMADS t6, t5, t4<br> [0x80001504]:sd t6, 928(sp)<br>        |
|  78|[0x800036e0]<br>0x00C073A7D2EE5572|- rs2_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001538]:KMADS t6, t5, t4<br> [0x8000153c]:sd t6, 944(sp)<br>        |
|  79|[0x800036f0]<br>0x00E02F96D2EE6554|- rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001574]:KMADS t6, t5, t4<br> [0x80001578]:sd t6, 960(sp)<br>        |
|  80|[0x80003700]<br>0xE0DFDF8FD2EE6534|- rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015ac]:KMADS t6, t5, t4<br> [0x800015b0]:sd t6, 976(sp)<br>        |
|  81|[0x80003710]<br>0xE0CFA00FD2ED24DA|- rs2_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800015e8]:KMADS t6, t5, t4<br> [0x800015ec]:sd t6, 992(sp)<br>        |
|  82|[0x80003720]<br>0xE0CD97BCD2E51F59|- rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001624]:KMADS t6, t5, t4<br> [0x80001628]:sd t6, 1008(sp)<br>       |
|  83|[0x80003730]<br>0xE0D5D91BD2E45F56|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000165c]:KMADS t6, t5, t4<br> [0x80001660]:sd t6, 1024(sp)<br>       |
|  84|[0x80003740]<br>0xE0D5D885D2E31F6B|- rs2_h2_val == 2<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001698]:KMADS t6, t5, t4<br> [0x8000169c]:sd t6, 1040(sp)<br>       |
|  85|[0x80003750]<br>0xE0D5D87BD2E25F63|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016d4]:KMADS t6, t5, t4<br> [0x800016d8]:sd t6, 1056(sp)<br>       |
|  86|[0x80003760]<br>0xE0D3D87DD2E263D5|- rs1_h2_val == 16384<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001708]:KMADS t6, t5, t4<br> [0x8000170c]:sd t6, 1072(sp)<br>       |
|  87|[0x80003770]<br>0xE0D1F86DD2E36519|- rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001744]:KMADS t6, t5, t4<br> [0x80001748]:sd t6, 1088(sp)<br>       |
|  88|[0x80003780]<br>0xE11236EDE8389519|- rs2_h1_val == 21845<br> - rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000177c]:KMADS t6, t5, t4<br> [0x80001780]:sd t6, 1104(sp)<br>       |
|  89|[0x80003790]<br>0xE113370BE7F98520|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017b8]:KMADS t6, t5, t4<br> [0x800017bc]:sd t6, 1120(sp)<br>       |
|  90|[0x800037a0]<br>0xE112F70BE7F9CD17|- rs2_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017fc]:KMADS t6, t5, t4<br> [0x80001800]:sd t6, 1136(sp)<br>       |
|  91|[0x800037b0]<br>0xE26A2461E7A4A3C2|- rs2_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001838]:KMADS t6, t5, t4<br> [0x8000183c]:sd t6, 1152(sp)<br>       |
|  92|[0x800037c0]<br>0xE2B24461E7A4EBBA|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001874]:KMADS t6, t5, t4<br> [0x80001878]:sd t6, 1168(sp)<br>       |
|  93|[0x800037d0]<br>0xE2B241D8F7ACCC3A|- rs2_h1_val == 8192<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800018a8]:KMADS t6, t5, t4<br> [0x800018ac]:sd t6, 1184(sp)<br>       |
|  94|[0x800037e0]<br>0xE2B243EEE25FC190|- rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800018d8]:KMADS t6, t5, t4<br> [0x800018dc]:sd t6, 1200(sp)<br>       |
|  95|[0x800037f0]<br>0xE2B2C00FE25FB98F|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001914]:KMADS t6, t5, t4<br> [0x80001918]:sd t6, 1216(sp)<br>       |
|  96|[0x80003800]<br>0xE2B20007E25F7F91|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001950]:KMADS t6, t5, t4<br> [0x80001954]:sd t6, 1232(sp)<br>       |
|  97|[0x80003810]<br>0xC2B30006E28A7FA6|- rs2_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000198c]:KMADS t6, t5, t4<br> [0x80001990]:sd t6, 1248(sp)<br>       |
|  98|[0x80003830]<br>0xC2B4C547E29A7D7B|- rs2_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800019fc]:KMADS t6, t5, t4<br> [0x80001a00]:sd t6, 1280(sp)<br>       |
