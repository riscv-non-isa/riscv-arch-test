
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b60')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | kdmtt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmtt16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 212      |
| STAT1                     | 102      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001178]:KDMTT16 t6, t5, t4
      [0x8000117c]:sd t6, 672(sp)
 -- Signature Address: 0x800035e0 Data: 0xFEAAA80000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 512
      - rs2_h2_val == 2048
      - rs2_h1_val == 0
      - rs2_h0_val == 32767
      - rs1_h3_val == -21846
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015b4]:KDMTT16 t6, t5, t4
      [0x800015b8]:sd t6, 976(sp)
 -- Signature Address: 0x80003710 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 1024
      - rs2_h2_val == 21845
      - rs2_h1_val == 0
      - rs1_h3_val == 0
      - rs1_h1_val == -17
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001740]:KDMTT16 t6, t5, t4
      [0x80001744]:sd t6, 1088(sp)
 -- Signature Address: 0x80003780 Data: 0xFFFFFFC4FFFFFF34
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h2_val == 32767
      - rs2_h0_val == 256
      - rs1_h2_val == -17
      - rs1_h1_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b10]:KDMTT16 t6, t5, t4
      [0x80001b14]:sd t6, 1360(sp)
 -- Signature Address: 0x80003890 Data: 0x00015558FFFBC000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -21846
      - rs2_h2_val == -5
      - rs2_h1_val == -17
      - rs2_h0_val == -65
      - rs1_h3_val == -2
      - rs1_h1_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmtt16', 'rs1 : x30', 'rs2 : x30', 'rd : x1', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 0', 'rs2_h2_val == -3', 'rs2_h0_val == -513', 'rs1_h3_val == 0', 'rs1_h2_val == -3', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800003d0]:KDMTT16 ra, t5, t5
	-[0x800003d4]:sd ra, 0(a0)
Current Store : [0x800003d8] : sd t5, 8(a0) -- Store: [0x80003218]:0x0000FFFDFFFCFDFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -3', 'rs2_h2_val == -17', 'rs2_h1_val == -129', 'rs1_h3_val == -3', 'rs1_h2_val == -17', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000408]:KDMTT16 t4, t4, t4
	-[0x8000040c]:sd t4, 16(a0)
Current Store : [0x80000410] : sd t4, 24(a0) -- Store: [0x80003228]:0x0000001200008202




Last Coverpoint : ['rs1 : x2', 'rs2 : x4', 'rd : x7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 1', 'rs2_h2_val == 2048', 'rs1_h2_val == 8', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000444]:KDMTT16 t2, sp, tp
	-[0x80000448]:sd t2, 32(a0)
Current Store : [0x8000044c] : sd sp, 40(a0) -- Store: [0x80003238]:0xFFF60008FFF8FFFE




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x25', 'rs1 == rd != rs2', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 2', 'rs1_h1_val == -32768', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000480]:KDMTT16 s9, s9, zero
	-[0x80000484]:sd s9, 48(a0)
Current Store : [0x80000488] : sd s9, 56(a0) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h0_val == 512', 'rs1_h3_val == 128', 'rs1_h2_val == -5', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800004bc]:KDMTT16 sp, a6, sp
	-[0x800004c0]:sd sp, 64(a0)
Current Store : [0x800004c4] : sd a6, 72(a0) -- Store: [0x80003258]:0x0080FFFB00070002




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x28', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 32', 'rs2_h2_val == 21845', 'rs2_h0_val == 21845', 'rs1_h3_val == -32768', 'rs1_h2_val == 21845', 'rs1_h1_val == -17', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004f8]:KDMTT16 t3, s6, t1
	-[0x800004fc]:sd t3, 80(a0)
Current Store : [0x80000500] : sd s6, 88(a0) -- Store: [0x80003268]:0x80005555FFEFBFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x20', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 32767', 'rs2_h1_val == -2', 'rs2_h0_val == -16385', 'rs1_h3_val == -21846', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000534]:KDMTT16 s4, t6, s2
	-[0x80000538]:sd s4, 96(a0)
Current Store : [0x8000053c] : sd t6, 104(a0) -- Store: [0x80003278]:0xAAAAFFFDC0000040




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x26', 'rs2_h3_val == -65', 'rs2_h2_val == 2', 'rs2_h1_val == -1025', 'rs1_h3_val == -65', 'rs1_h2_val == -4097', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000568]:KDMTT16 s10, tp, s5
	-[0x8000056c]:sd s10, 112(a0)
Current Store : [0x80000570] : sd tp, 120(a0) -- Store: [0x80003288]:0xFFBFEFFFFBFFFFFE




Last Coverpoint : ['rs1 : x17', 'rs2 : x14', 'rd : x31', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 512', 'rs2_h2_val == -5', 'rs2_h0_val == 2048', 'rs1_h3_val == 64', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005a4]:KDMTT16 t6, a7, a4
	-[0x800005a8]:sd t6, 128(a0)
Current Store : [0x800005ac] : sd a7, 136(a0) -- Store: [0x80003298]:0x0040FFFC00060100




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x13', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -513', 'rs2_h2_val == 16384', 'rs2_h1_val == -8193', 'rs2_h0_val == 8192', 'rs1_h1_val == 4096', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800005d8]:KDMTT16 a3, t3, s3
	-[0x800005dc]:sd a3, 144(a0)
Current Store : [0x800005e0] : sd t3, 152(a0) -- Store: [0x800032a8]:0x0009FFFB10002000




Last Coverpoint : ['rs1 : x19', 'rs2 : x20', 'rd : x0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -21846', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h3_val == -2', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000060c]:KDMTT16 zero, s3, s4
	-[0x80000610]:sd zero, 160(a0)
Current Store : [0x80000614] : sd s3, 168(a0) -- Store: [0x800032b8]:0xFFFE000520000003




Last Coverpoint : ['rs1 : x14', 'rs2 : x16', 'rd : x22', 'rs2_h3_val == 21845', 'rs2_h1_val == 32767', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000648]:KDMTT16 s6, a4, a6
	-[0x8000064c]:sd s6, 176(a0)
Current Store : [0x80000650] : sd a4, 184(a0) -- Store: [0x800032c8]:0xFFF6000580000020




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x3', 'rs2_h3_val == -16385', 'rs2_h1_val == 16384', 'rs2_h0_val == 8', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000684]:KDMTT16 gp, a2, a5
	-[0x80000688]:sd gp, 192(a0)
Current Store : [0x8000068c] : sd a2, 200(a0) -- Store: [0x800032d8]:0x8000FFFCFFF6FFDF




Last Coverpoint : ['rs1 : x1', 'rs2 : x5', 'rd : x18', 'rs2_h3_val == -8193', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800006b4]:KDMTT16 s2, ra, t0
	-[0x800006b8]:sd s2, 208(a0)
Current Store : [0x800006bc] : sd ra, 216(a0) -- Store: [0x800032e8]:0xC000000000030000




Last Coverpoint : ['rs1 : x9', 'rs2 : x25', 'rd : x17', 'rs2_h3_val == -4097', 'rs2_h0_val == 2', 'rs1_h3_val == 16384', 'rs1_h2_val == -21846', 'rs1_h1_val == 0', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800006ec]:KDMTT16 a7, s1, s9
	-[0x800006f0]:sd a7, 224(a0)
Current Store : [0x800006f4] : sd s1, 232(a0) -- Store: [0x800032f8]:0x4000AAAA00001000




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x23', 'rs2_h3_val == -2049', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x8000071c]:KDMTT16 s7, a5, s6
	-[0x80000720]:sd s7, 240(a0)
Current Store : [0x80000724] : sd a5, 248(a0) -- Store: [0x80003308]:0xBFFFFFF800000040




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x30', 'rs2_h3_val == -1025', 'rs2_h2_val == 128', 'rs2_h1_val == 1024', 'rs2_h0_val == 32', 'rs1_h3_val == -1', 'rs1_h1_val == -8193', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000758]:KDMTT16 t5, a3, gp
	-[0x8000075c]:sd t5, 256(a0)
Current Store : [0x80000760] : sd a3, 264(a0) -- Store: [0x80003318]:0xFFFF0005DFFF0010




Last Coverpoint : ['rs1 : x20', 'rs2 : x13', 'rd : x19', 'rs2_h3_val == -257', 'rs2_h2_val == -33', 'rs2_h0_val == 32767', 'rs1_h3_val == 4096', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000794]:KDMTT16 s3, s4, a3
	-[0x80000798]:sd s3, 272(a0)
Current Store : [0x8000079c] : sd s4, 280(a0) -- Store: [0x80003328]:0x1000FFFAFFEFFFEF




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x8', 'rs2_h3_val == -129', 'rs2_h2_val == 1024', 'rs2_h1_val == -513', 'rs2_h0_val == -32768', 'rs1_h2_val == 8192', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800007cc]:KDMTT16 fp, s5, t3
	-[0x800007d0]:sd fp, 288(a0)
Current Store : [0x800007d4] : sd s5, 296(a0) -- Store: [0x80003338]:0x00802000FFF9AAAA




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rd : x12', 'rs2_h3_val == -33', 'rs2_h2_val == -257', 'rs2_h1_val == 256', 'rs2_h0_val == 64', 'rs1_h2_val == 32', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000808]:KDMTT16 a2, t1, s10
	-[0x8000080c]:sd a2, 0(sp)
Current Store : [0x80000810] : sd t1, 8(sp) -- Store: [0x80003348]:0xFFFD00200400FFFE




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x24', 'rs2_h3_val == -17', 'rs2_h1_val == -16385', 'rs2_h0_val == -17', 'rs1_h3_val == 16', 'rs1_h1_val == -513', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000083c]:KDMTT16 s8, s10, a0
	-[0x80000840]:sd s8, 16(sp)
Current Store : [0x80000844] : sd s10, 24(sp) -- Store: [0x80003358]:0x00100005FDFF0001




Last Coverpoint : ['rs1 : x27', 'rs2 : x7', 'rd : x6', 'rs2_h3_val == -9', 'rs1_h3_val == 32767', 'rs1_h1_val == 32767', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000874]:KDMTT16 t1, s11, t2
	-[0x80000878]:sd t1, 32(sp)
Current Store : [0x8000087c] : sd s11, 40(sp) -- Store: [0x80003368]:0x7FFF00057FFF4000




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x9', 'rs2_h3_val == -5', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800008a8]:KDMTT16 s1, t0, a1
	-[0x800008ac]:sd s1, 48(sp)
Current Store : [0x800008b0] : sd t0, 56(sp) -- Store: [0x80003378]:0x0009FFF800070006




Last Coverpoint : ['rs1 : x8', 'rs2 : x17', 'rd : x11', 'rs2_h3_val == -2', 'rs1_h3_val == 1', 'rs1_h2_val == 4', 'rs1_h1_val == -16385', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800008e4]:KDMTT16 a1, fp, a7
	-[0x800008e8]:sd a1, 64(sp)
Current Store : [0x800008ec] : sd fp, 72(sp) -- Store: [0x80003388]:0x00010004BFFFEFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x27', 'rs2_h3_val == 16384', 'rs2_h2_val == -32768', 'rs2_h1_val == -65', 'rs1_h2_val == 16', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x8000091c]:KDMTT16 s11, a0, ra
	-[0x80000920]:sd s11, 80(sp)
Current Store : [0x80000924] : sd a0, 88(sp) -- Store: [0x80003398]:0x00050010FFF74000




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x16', 'rs2_h3_val == 8192', 'rs2_h1_val == 21845', 'rs2_h0_val == -2', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000960]:KDMTT16 a6, t2, s1
	-[0x80000964]:sd a6, 96(sp)
Current Store : [0x80000968] : sd t2, 104(sp) -- Store: [0x800033a8]:0xFFBFEFFF55550003




Last Coverpoint : ['rs1 : x23', 'rs2 : x31', 'rd : x10', 'rs2_h3_val == 4096', 'rs2_h2_val == 32', 'rs2_h1_val == 1', 'rs2_h0_val == -5', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800009a4]:KDMTT16 a0, s7, t6
	-[0x800009a8]:sd a0, 112(sp)
Current Store : [0x800009ac] : sd s7, 120(sp) -- Store: [0x800033b8]:0xAAAAFFFB4000EFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x12', 'rd : x21', 'rs2_h3_val == 2048', 'rs2_h0_val == 1024', 'rs1_h2_val == -32768', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800009d8]:KDMTT16 s5, s8, a2
	-[0x800009dc]:sd s5, 128(sp)
Current Store : [0x800009e0] : sd s8, 136(sp) -- Store: [0x800033c8]:0xFFFD8000FFF80200




Last Coverpoint : ['rs1 : x18', 'rs2 : x24', 'rd : x5', 'rs2_h3_val == 1024', 'rs2_h2_val == -129', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000a0c]:KDMTT16 t0, s2, s8
	-[0x80000a10]:sd t0, 144(sp)
Current Store : [0x80000a14] : sd s2, 152(sp) -- Store: [0x800033d8]:0x4000FFF6FFF74000




Last Coverpoint : ['rs1 : x11', 'rs2 : x8', 'rd : x4', 'rs2_h3_val == 256', 'rs1_h3_val == -4097', 'rs1_h2_val == -8193', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000a44]:KDMTT16 tp, a1, fp
	-[0x80000a48]:sd tp, 160(sp)
Current Store : [0x80000a4c] : sd a1, 168(sp) -- Store: [0x800033e8]:0xEFFFDFFFFFDF0003




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x14', 'rs2_h3_val == 128', 'rs2_h2_val == 8', 'rs1_h2_val == -129', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000a80]:KDMTT16 a4, gp, s11
	-[0x80000a84]:sd a4, 176(sp)
Current Store : [0x80000a88] : sd gp, 184(sp) -- Store: [0x800033f8]:0x0040FF7F0010FFF9




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x15', 'rs2_h3_val == 64', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80000abc]:KDMTT16 a5, zero, s7
	-[0x80000ac0]:sd a5, 192(sp)
Current Store : [0x80000ac4] : sd zero, 200(sp) -- Store: [0x80003408]:0x0000000000000000




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h1_val == 64', 'rs1_h3_val == -5', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x80000af0]:KDMTT16 t6, t5, t4
	-[0x80000af4]:sd t6, 208(sp)
Current Store : [0x80000af8] : sd t5, 216(sp) -- Store: [0x80003418]:0xFFFB01001000FDFF




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == -257', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80000b24]:KDMTT16 t6, t5, t4
	-[0x80000b28]:sd t6, 224(sp)
Current Store : [0x80000b2c] : sd t5, 232(sp) -- Store: [0x80003428]:0xFFFA0800FF7FFFF7




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h0_val == -1025', 'rs1_h2_val == -65', 'rs1_h1_val == -2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000b60]:KDMTT16 t6, t5, t4
	-[0x80000b64]:sd t6, 240(sp)
Current Store : [0x80000b68] : sd t5, 248(sp) -- Store: [0x80003438]:0x0002FFBFFFFEFF7F




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -65', 'rs1_h3_val == -33', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000b9c]:KDMTT16 t6, t5, t4
	-[0x80000ba0]:sd t6, 256(sp)
Current Store : [0x80000ba4] : sd t5, 264(sp) -- Store: [0x80003448]:0xFFDFFFFA7FFF0080




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h1_val == 4096', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000bd4]:KDMTT16 t6, t5, t4
	-[0x80000bd8]:sd t6, 272(sp)
Current Store : [0x80000bdc] : sd t5, 280(sp) -- Store: [0x80003458]:0xFFFF5555FFFBFFF6




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 256', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000c0c]:KDMTT16 t6, t5, t4
	-[0x80000c10]:sd t6, 288(sp)
Current Store : [0x80000c14] : sd t5, 296(sp) -- Store: [0x80003468]:0xC0000008FFFD0200




Last Coverpoint : ['rs1_h2_val == -1', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000c40]:KDMTT16 t6, t5, t4
	-[0x80000c44]:sd t6, 304(sp)
Current Store : [0x80000c48] : sd t5, 312(sp) -- Store: [0x80003478]:0x0040FFFF08002000




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == 128', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000c7c]:KDMTT16 t6, t5, t4
	-[0x80000c80]:sd t6, 320(sp)
Current Store : [0x80000c84] : sd t5, 328(sp) -- Store: [0x80003488]:0xFFFF00080200FFFA




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h3_val == 4', 'rs1_h2_val == 512', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000cac]:KDMTT16 t6, t5, t4
	-[0x80000cb0]:sd t6, 336(sp)
Current Store : [0x80000cb4] : sd t5, 344(sp) -- Store: [0x80003498]:0x0004020001000080




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == 4096', 'rs1_h3_val == 2048', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000ce8]:KDMTT16 t6, t5, t4
	-[0x80000cec]:sd t6, 352(sp)
Current Store : [0x80000cf0] : sd t5, 360(sp) -- Store: [0x800034a8]:0x0800200000804000




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000d24]:KDMTT16 t6, t5, t4
	-[0x80000d28]:sd t6, 368(sp)
Current Store : [0x80000d2c] : sd t5, 376(sp) -- Store: [0x800034b8]:0x40003FFF00400010




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000d5c]:KDMTT16 t6, t5, t4
	-[0x80000d60]:sd t6, 384(sp)
Current Store : [0x80000d64] : sd t5, 392(sp) -- Store: [0x800034c8]:0xFFDFFFF800200020




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d94]:KDMTT16 t6, t5, t4
	-[0x80000d98]:sd t6, 400(sp)
Current Store : [0x80000d9c] : sd t5, 408(sp) -- Store: [0x800034d8]:0x0001FFBF00082000




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h3_val == -32768', 'rs2_h1_val == 8192', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000dcc]:KDMTT16 t6, t5, t4
	-[0x80000dd0]:sd t6, 416(sp)
Current Store : [0x80000dd4] : sd t5, 424(sp) -- Store: [0x800034e8]:0x0006FFF800048000




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h2_val == -16385', 'rs1_h1_val == 2', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000e04]:KDMTT16 t6, t5, t4
	-[0x80000e08]:sd t6, 432(sp)
Current Store : [0x80000e0c] : sd t5, 440(sp) -- Store: [0x800034f8]:0xFFF6BFFF00020400




Last Coverpoint : ['rs1_h2_val == 16384', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000e44]:KDMTT16 t6, t5, t4
	-[0x80000e48]:sd t6, 448(sp)
Current Store : [0x80000e4c] : sd t5, 456(sp) -- Store: [0x80003508]:0xAAAA400000010007




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000e80]:KDMTT16 t6, t5, t4
	-[0x80000e84]:sd t6, 464(sp)
Current Store : [0x80000e88] : sd t5, 472(sp) -- Store: [0x80003518]:0xBFFFFFF9FFFF0100




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000eb4]:KDMTT16 t6, t5, t4
	-[0x80000eb8]:sd t6, 480(sp)
Current Store : [0x80000ebc] : sd t5, 488(sp) -- Store: [0x80003528]:0xFFF93FFF00035555




Last Coverpoint : ['rs1_h3_val == -129', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000ef0]:KDMTT16 t6, t5, t4
	-[0x80000ef4]:sd t6, 496(sp)
Current Store : [0x80000ef8] : sd t5, 504(sp) -- Store: [0x80003538]:0xFF7FFFF600087FFF




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000f30]:KDMTT16 t6, t5, t4
	-[0x80000f34]:sd t6, 512(sp)
Current Store : [0x80000f38] : sd t5, 520(sp) -- Store: [0x80003548]:0x000300200020DFFF




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h2_val == 1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000f6c]:KDMTT16 t6, t5, t4
	-[0x80000f70]:sd t6, 528(sp)
Current Store : [0x80000f74] : sd t5, 536(sp) -- Store: [0x80003558]:0x040000010005F7FF




Last Coverpoint : ['rs1_h2_val == 1024', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000fa0]:KDMTT16 t6, t5, t4
	-[0x80000fa4]:sd t6, 544(sp)
Current Store : [0x80000fa8] : sd t5, 552(sp) -- Store: [0x80003568]:0x000904000040FBFF




Last Coverpoint : ['rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000fdc]:KDMTT16 t6, t5, t4
	-[0x80000fe0]:sd t6, 560(sp)
Current Store : [0x80000fe4] : sd t5, 568(sp) -- Store: [0x80003578]:0xFFFEC000FFF6FEFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h0_val == -9', 'rs1_h3_val == -2049', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80001018]:KDMTT16 t6, t5, t4
	-[0x8000101c]:sd t6, 576(sp)
Current Store : [0x80001020] : sd t5, 584(sp) -- Store: [0x80003588]:0xF7FF0020FFEFFFBF




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h1_val == -2049', 'rs1_h2_val == -1025', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80001050]:KDMTT16 t6, t5, t4
	-[0x80001054]:sd t6, 592(sp)
Current Store : [0x80001058] : sd t5, 600(sp) -- Store: [0x80003598]:0x0010FBFF0100FFFB




Last Coverpoint : ['rs1_h1_val == -21846', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000108c]:KDMTT16 t6, t5, t4
	-[0x80001090]:sd t6, 608(sp)
Current Store : [0x80001094] : sd t5, 616(sp) -- Store: [0x800035a8]:0x00040020AAAAFFFD




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == 16', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800010cc]:KDMTT16 t6, t5, t4
	-[0x800010d0]:sd t6, 624(sp)
Current Store : [0x800010d4] : sd t5, 632(sp) -- Store: [0x800035b8]:0xC000002010000800




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h1_val == -3', 'rs1_h3_val == 256', 'rs1_h2_val == -9', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80001108]:KDMTT16 t6, t5, t4
	-[0x8000110c]:sd t6, 640(sp)
Current Store : [0x80001110] : sd t5, 648(sp) -- Store: [0x800035c8]:0x0100FFF700400008




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == 4']
Last Code Sequence : 
	-[0x8000113c]:KDMTT16 t6, t5, t4
	-[0x80001140]:sd t6, 656(sp)
Current Store : [0x80001144] : sd t5, 664(sp) -- Store: [0x800035d8]:0x0003FFFB7FFFFFEF




Last Coverpoint : ['opcode : kdmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 512', 'rs2_h2_val == 2048', 'rs2_h1_val == 0', 'rs2_h0_val == 32767', 'rs1_h3_val == -21846', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001178]:KDMTT16 t6, t5, t4
	-[0x8000117c]:sd t6, 672(sp)
Current Store : [0x80001180] : sd t5, 680(sp) -- Store: [0x800035e8]:0xAAAAFFF9FFFA0080




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x800011b0]:KDMTT16 t6, t5, t4
	-[0x800011b4]:sd t6, 688(sp)
Current Store : [0x800011b8] : sd t5, 696(sp) -- Store: [0x800035f8]:0x2000002000022000




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x800011ec]:KDMTT16 t6, t5, t4
	-[0x800011f0]:sd t6, 704(sp)
Current Store : [0x800011f4] : sd t5, 712(sp) -- Store: [0x80003608]:0x0002FEFF00070005




Last Coverpoint : ['rs2_h1_val == -32768', 'rs2_h0_val == -8193', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001228]:KDMTT16 t6, t5, t4
	-[0x8000122c]:sd t6, 720(sp)
Current Store : [0x80001230] : sd t5, 728(sp) -- Store: [0x80003618]:0x00028000FFFAFFFF




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x8000126c]:KDMTT16 t6, t5, t4
	-[0x80001270]:sd t6, 736(sp)
Current Store : [0x80001274] : sd t5, 744(sp) -- Store: [0x80003628]:0x555555555555DFFF




Last Coverpoint : ['rs2_h2_val == 4096', 'rs2_h1_val == -9', 'rs2_h0_val == -2049', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x800012a8]:KDMTT16 t6, t5, t4
	-[0x800012ac]:sd t6, 752(sp)
Current Store : [0x800012b0] : sd t5, 760(sp) -- Store: [0x80003638]:0xDFFF0400FFFC7FFF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800012dc]:KDMTT16 t6, t5, t4
	-[0x800012e0]:sd t6, 768(sp)
Current Store : [0x800012e4] : sd t5, 776(sp) -- Store: [0x80003648]:0xFFF9FFF9FDFFFFFE




Last Coverpoint : ['rs2_h1_val == 2048', 'rs2_h0_val == -129', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001318]:KDMTT16 t6, t5, t4
	-[0x8000131c]:sd t6, 784(sp)
Current Store : [0x80001320] : sd t5, 792(sp) -- Store: [0x80003658]:0x0006100000070100




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001350]:KDMTT16 t6, t5, t4
	-[0x80001354]:sd t6, 800(sp)
Current Store : [0x80001358] : sd t5, 808(sp) -- Store: [0x80003668]:0xFFFA1000AAAAAAAA




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80001384]:KDMTT16 t6, t5, t4
	-[0x80001388]:sd t6, 816(sp)
Current Store : [0x8000138c] : sd t5, 824(sp) -- Store: [0x80003678]:0x3FFFAAAA7FFFFFF6




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h0_val == 16', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x800013b8]:KDMTT16 t6, t5, t4
	-[0x800013bc]:sd t6, 832(sp)
Current Store : [0x800013c0] : sd t5, 840(sp) -- Store: [0x80003688]:0x0010F7FF3FFFBFFF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800013f4]:KDMTT16 t6, t5, t4
	-[0x800013f8]:sd t6, 848(sp)
Current Store : [0x800013fc] : sd t5, 856(sp) -- Store: [0x80003698]:0xFFFC000400030200




Last Coverpoint : ['rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x80001428]:KDMTT16 t6, t5, t4
	-[0x8000142c]:sd t6, 864(sp)
Current Store : [0x80001430] : sd t5, 872(sp) -- Store: [0x800036a8]:0xFBFFFFFAFFFBFBFF




Last Coverpoint : ['rs1_h3_val == -513']
Last Code Sequence : 
	-[0x80001458]:KDMTT16 t6, t5, t4
	-[0x8000145c]:sd t6, 880(sp)
Current Store : [0x80001460] : sd t5, 888(sp) -- Store: [0x800036b8]:0xFDFFFBFFFF7F2000




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80001494]:KDMTT16 t6, t5, t4
	-[0x80001498]:sd t6, 896(sp)
Current Store : [0x8000149c] : sd t5, 904(sp) -- Store: [0x800036c8]:0xF7FFBFFFFFFEFFBF




Last Coverpoint : ['rs1_h3_val == 512', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800014c8]:KDMTT16 t6, t5, t4
	-[0x800014cc]:sd t6, 912(sp)
Current Store : [0x800014d0] : sd t5, 920(sp) -- Store: [0x800036d8]:0x020000023FFFFFFD




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80001500]:KDMTT16 t6, t5, t4
	-[0x80001504]:sd t6, 928(sp)
Current Store : [0x80001508] : sd t5, 936(sp) -- Store: [0x800036e8]:0xFFFBF7FF0008FF7F




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x8000153c]:KDMTT16 t6, t5, t4
	-[0x80001540]:sd t6, 944(sp)
Current Store : [0x80001544] : sd t5, 952(sp) -- Store: [0x800036f8]:0x0020FFF600020100




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x80001578]:KDMTT16 t6, t5, t4
	-[0x8000157c]:sd t6, 960(sp)
Current Store : [0x80001580] : sd t5, 968(sp) -- Store: [0x80003708]:0x000801000004DFFF




Last Coverpoint : ['opcode : kdmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 1024', 'rs2_h2_val == 21845', 'rs2_h1_val == 0', 'rs1_h3_val == 0', 'rs1_h1_val == -17', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800015b4]:KDMTT16 t6, t5, t4
	-[0x800015b8]:sd t6, 976(sp)
Current Store : [0x800015bc] : sd t5, 984(sp) -- Store: [0x80003718]:0x0000FFFCFFEF0040




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x800015e4]:KDMTT16 t6, t5, t4
	-[0x800015e8]:sd t6, 992(sp)
Current Store : [0x800015ec] : sd t5, 1000(sp) -- Store: [0x80003728]:0x0004AAAAFFFF2000




Last Coverpoint : ['rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001618]:KDMTT16 t6, t5, t4
	-[0x8000161c]:sd t6, 1008(sp)
Current Store : [0x80001620] : sd t5, 1016(sp) -- Store: [0x80003738]:0xFFFC7FFF3FFFFFDF




Last Coverpoint : ['rs2_h2_val == 512']
Last Code Sequence : 
	-[0x80001650]:KDMTT16 t6, t5, t4
	-[0x80001654]:sd t6, 1024(sp)
Current Store : [0x80001658] : sd t5, 1032(sp) -- Store: [0x80003748]:0x00090003AAAA0000




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x8000168c]:KDMTT16 t6, t5, t4
	-[0x80001690]:sd t6, 1040(sp)
Current Store : [0x80001694] : sd t5, 1048(sp) -- Store: [0x80003758]:0x0009FFDFFFFBFFEF




Last Coverpoint : ['rs2_h2_val == 16']
Last Code Sequence : 
	-[0x800016c4]:KDMTT16 t6, t5, t4
	-[0x800016c8]:sd t6, 1056(sp)
Current Store : [0x800016cc] : sd t5, 1064(sp) -- Store: [0x80003768]:0x0006000202004000




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x80001708]:KDMTT16 t6, t5, t4
	-[0x8000170c]:sd t6, 1072(sp)
Current Store : [0x80001710] : sd t5, 1080(sp) -- Store: [0x80003778]:0xFFF7010000090020




Last Coverpoint : ['opcode : kdmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == 32767', 'rs2_h0_val == 256', 'rs1_h2_val == -17', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001740]:KDMTT16 t6, t5, t4
	-[0x80001744]:sd t6, 1088(sp)
Current Store : [0x80001748] : sd t5, 1096(sp) -- Store: [0x80003788]:0xFFFAFFEFFFEFC000




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80001770]:KDMTT16 t6, t5, t4
	-[0x80001774]:sd t6, 1104(sp)
Current Store : [0x80001778] : sd t5, 1112(sp) -- Store: [0x80003798]:0x0004555500000080




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800017ac]:KDMTT16 t6, t5, t4
	-[0x800017b0]:sd t6, 1120(sp)
Current Store : [0x800017b4] : sd t5, 1128(sp) -- Store: [0x800037a8]:0x3FFF0040FFFB0080




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x800017e0]:KDMTT16 t6, t5, t4
	-[0x800017e4]:sd t6, 1136(sp)
Current Store : [0x800017e8] : sd t5, 1144(sp) -- Store: [0x800037b8]:0x4000FFF70040AAAA




Last Coverpoint : ['rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000181c]:KDMTT16 t6, t5, t4
	-[0x80001820]:sd t6, 1152(sp)
Current Store : [0x80001824] : sd t5, 1160(sp) -- Store: [0x800037c8]:0xFEFFFFFD00070003




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001858]:KDMTT16 t6, t5, t4
	-[0x8000185c]:sd t6, 1168(sp)
Current Store : [0x80001860] : sd t5, 1176(sp) -- Store: [0x800037d8]:0xFFF8C000FFFA0004




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80001898]:KDMTT16 t6, t5, t4
	-[0x8000189c]:sd t6, 1184(sp)
Current Store : [0x800018a0] : sd t5, 1192(sp) -- Store: [0x800037e8]:0xFDFF7FFFAAAA0800




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x800018d4]:KDMTT16 t6, t5, t4
	-[0x800018d8]:sd t6, 1200(sp)
Current Store : [0x800018dc] : sd t5, 1208(sp) -- Store: [0x800037f8]:0xFFEF0010FFEF0010




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001900]:KDMTT16 t6, t5, t4
	-[0x80001904]:sd t6, 1216(sp)
Current Store : [0x80001908] : sd t5, 1224(sp) -- Store: [0x80003808]:0x0007BFFFEFFFFFFF




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001948]:KDMTT16 t6, t5, t4
	-[0x8000194c]:sd t6, 1232(sp)
Current Store : [0x80001950] : sd t5, 1240(sp) -- Store: [0x80003818]:0xDFFFFBFFF7FF0005




Last Coverpoint : ['rs2_h1_val == 512']
Last Code Sequence : 
	-[0x80001984]:KDMTT16 t6, t5, t4
	-[0x80001988]:sd t6, 1248(sp)
Current Store : [0x8000198c] : sd t5, 1256(sp) -- Store: [0x80003828]:0xFFF8FF7FFFDFDFFF




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800019c0]:KDMTT16 t6, t5, t4
	-[0x800019c4]:sd t6, 1264(sp)
Current Store : [0x800019c8] : sd t5, 1272(sp) -- Store: [0x80003838]:0xFBFFFBFFFEFF0007




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800019f8]:KDMTT16 t6, t5, t4
	-[0x800019fc]:sd t6, 1280(sp)
Current Store : [0x80001a00] : sd t5, 1288(sp) -- Store: [0x80003848]:0xFFDF3FFFFFBF0006




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x80001a34]:KDMTT16 t6, t5, t4
	-[0x80001a38]:sd t6, 1296(sp)
Current Store : [0x80001a3c] : sd t5, 1304(sp) -- Store: [0x80003858]:0x0001F7FF0001FFFD




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80001a68]:KDMTT16 t6, t5, t4
	-[0x80001a6c]:sd t6, 1312(sp)
Current Store : [0x80001a70] : sd t5, 1320(sp) -- Store: [0x80003868]:0xFF7FFFFEAAAA0009




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001aa4]:KDMTT16 t6, t5, t4
	-[0x80001aa8]:sd t6, 1328(sp)
Current Store : [0x80001aac] : sd t5, 1336(sp) -- Store: [0x80003878]:0x02000000FFFEFFF9




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001adc]:KDMTT16 t6, t5, t4
	-[0x80001ae0]:sd t6, 1344(sp)
Current Store : [0x80001ae4] : sd t5, 1352(sp) -- Store: [0x80003888]:0xFFFD0080FFFA2000




Last Coverpoint : ['opcode : kdmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == -5', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h3_val == -2', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80001b10]:KDMTT16 t6, t5, t4
	-[0x80001b14]:sd t6, 1360(sp)
Current Store : [0x80001b18] : sd t5, 1368(sp) -- Store: [0x80003898]:0xFFFE000520000003




Last Coverpoint : ['rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80001b4c]:KDMTT16 t6, t5, t4
	-[0x80001b50]:sd t6, 1376(sp)
Current Store : [0x80001b54] : sd t5, 1384(sp) -- Store: [0x800038a8]:0x7FFFFDFF20000006





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

|s.no|            signature             |                                                                                                                                                                                                                                        coverpoints                                                                                                                                                                                                                                         |                                  code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000020|- opcode : kdmtt16<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 0<br> - rs2_h2_val == -3<br> - rs2_h0_val == -513<br> - rs1_h3_val == 0<br> - rs1_h2_val == -3<br> - rs1_h0_val == -513<br> |[0x800003d0]:KDMTT16 ra, t5, t5<br> [0x800003d4]:sd ra, 0(a0)<br>       |
|   2|[0x80003220]<br>0x0000001200008202|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -3<br> - rs2_h2_val == -17<br> - rs2_h1_val == -129<br> - rs1_h3_val == -3<br> - rs1_h2_val == -17<br> - rs1_h1_val == -129<br>                                                                                                                                                                                       |[0x80000408]:KDMTT16 t4, t4, t4<br> [0x8000040c]:sd t4, 16(a0)<br>      |
|   3|[0x80003230]<br>0xFFFFFFEC00000070|- rs1 : x2<br> - rs2 : x4<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 1<br> - rs2_h2_val == 2048<br> - rs1_h2_val == 8<br> - rs1_h0_val == -2<br>                                                                                           |[0x80000444]:KDMTT16 t2, sp, tp<br> [0x80000448]:sd t2, 32(a0)<br>      |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 2<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                              |[0x80000480]:KDMTT16 s9, s9, zero<br> [0x80000484]:sd s9, 48(a0)<br>    |
|   5|[0x80003250]<br>0x00000100FFFFFFAC|- rs1 : x16<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h0_val == 512<br> - rs1_h3_val == 128<br> - rs1_h2_val == -5<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                            |[0x800004bc]:KDMTT16 sp, a6, sp<br> [0x800004c0]:sd sp, 64(a0)<br>      |
|   6|[0x80003260]<br>0xFFE00000FFFFFF12|- rs1 : x22<br> - rs2 : x6<br> - rd : x28<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 32<br> - rs2_h2_val == 21845<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -17<br> - rs1_h0_val == -16385<br>                                                                                                                                                                            |[0x800004f8]:KDMTT16 t3, s6, t1<br> [0x800004fc]:sd t3, 80(a0)<br>      |
|   7|[0x80003270]<br>0xAAAAAAAC00010000|- rs1 : x31<br> - rs2 : x18<br> - rd : x20<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -2<br> - rs2_h0_val == -16385<br> - rs1_h3_val == -21846<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                      |[0x80000534]:KDMTT16 s4, t6, s2<br> [0x80000538]:sd s4, 96(a0)<br>      |
|   8|[0x80003280]<br>0x0000210200201002|- rs1 : x4<br> - rs2 : x21<br> - rd : x26<br> - rs2_h3_val == -65<br> - rs2_h2_val == 2<br> - rs2_h1_val == -1025<br> - rs1_h3_val == -65<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                           |[0x80000568]:KDMTT16 s10, tp, s5<br> [0x8000056c]:sd s10, 112(a0)<br>   |
|   9|[0x80003290]<br>0x0001000000000024|- rs1 : x17<br> - rs2 : x14<br> - rd : x31<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == 512<br> - rs2_h2_val == -5<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 64<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                               |[0x800005a4]:KDMTT16 t6, a7, a4<br> [0x800005a8]:sd t6, 128(a0)<br>     |
|  10|[0x800032a0]<br>0xFFFFDBEEFBFFE000|- rs1 : x28<br> - rs2 : x19<br> - rd : x13<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -513<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                              |[0x800005d8]:KDMTT16 a3, t3, s3<br> [0x800005dc]:sd a3, 144(a0)<br>     |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x20<br> - rd : x0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h1_val == -17<br> - rs2_h0_val == -65<br> - rs1_h3_val == -2<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                            |[0x8000060c]:KDMTT16 zero, s3, s4<br> [0x80000610]:sd zero, 160(a0)<br> |
|  12|[0x800032c0]<br>0xFFF9555C80010000|- rs1 : x14<br> - rs2 : x16<br> - rd : x22<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000648]:KDMTT16 s6, a4, a6<br> [0x8000064c]:sd s6, 176(a0)<br>     |
|  13|[0x800032d0]<br>0x40010000FFFB0000|- rs1 : x12<br> - rs2 : x15<br> - rd : x3<br> - rs2_h3_val == -16385<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 8<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000684]:KDMTT16 gp, a2, a5<br> [0x80000688]:sd gp, 192(a0)<br>     |
|  14|[0x800032e0]<br>0x10008000FFFFFFD6|- rs1 : x1<br> - rs2 : x5<br> - rd : x18<br> - rs2_h3_val == -8193<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x800006b4]:KDMTT16 s2, ra, t0<br> [0x800006b8]:sd s2, 208(a0)<br>     |
|  15|[0x800032f0]<br>0xF7FF800000000000|- rs1 : x9<br> - rs2 : x25<br> - rd : x17<br> - rs2_h3_val == -4097<br> - rs2_h0_val == 2<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 0<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                           |[0x800006ec]:KDMTT16 a7, s1, s9<br> [0x800006f0]:sd a7, 224(a0)<br>     |
|  16|[0x80003300]<br>0x0400900200000000|- rs1 : x15<br> - rs2 : x22<br> - rd : x23<br> - rs2_h3_val == -2049<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000071c]:KDMTT16 s7, a5, s6<br> [0x80000720]:sd s7, 240(a0)<br>     |
|  17|[0x80003310]<br>0x00000802FEFFF800|- rs1 : x13<br> - rs2 : x3<br> - rd : x30<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 128<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32<br> - rs1_h3_val == -1<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                     |[0x80000758]:KDMTT16 t5, a3, gp<br> [0x8000075c]:sd t5, 256(a0)<br>     |
|  18|[0x80003320]<br>0xFFDFE000FFEF0022|- rs1 : x20<br> - rs2 : x13<br> - rd : x19<br> - rs2_h3_val == -257<br> - rs2_h2_val == -33<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 4096<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                  |[0x80000794]:KDMTT16 s3, s4, a3<br> [0x80000798]:sd s3, 272(a0)<br>     |
|  19|[0x80003330]<br>0xFFFF7F0000001C0E|- rs1 : x21<br> - rs2 : x28<br> - rd : x8<br> - rs2_h3_val == -129<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -513<br> - rs2_h0_val == -32768<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                     |[0x800007cc]:KDMTT16 fp, s5, t3<br> [0x800007d0]:sd fp, 288(a0)<br>     |
|  20|[0x80003340]<br>0x000000C600080000|- rs1 : x6<br> - rs2 : x26<br> - rd : x12<br> - rs2_h3_val == -33<br> - rs2_h2_val == -257<br> - rs2_h1_val == 256<br> - rs2_h0_val == 64<br> - rs1_h2_val == 32<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                               |[0x80000808]:KDMTT16 a2, t1, s10<br> [0x8000080c]:sd a2, 0(sp)<br>      |
|  21|[0x80003350]<br>0xFFFFFDE001008402|- rs1 : x26<br> - rs2 : x10<br> - rd : x24<br> - rs2_h3_val == -17<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -17<br> - rs1_h3_val == 16<br> - rs1_h1_val == -513<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x8000083c]:KDMTT16 s8, s10, a0<br> [0x80000840]:sd s8, 16(sp)<br>     |
|  22|[0x80003360]<br>0xFFF70012C0008000|- rs1 : x27<br> - rs2 : x7<br> - rd : x6<br> - rs2_h3_val == -9<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000874]:KDMTT16 t1, s11, t2<br> [0x80000878]:sd t1, 32(sp)<br>     |
|  23|[0x80003370]<br>0xFFFFFFA6FFFFF8F2|- rs1 : x5<br> - rs2 : x11<br> - rd : x9<br> - rs2_h3_val == -5<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800008a8]:KDMTT16 s1, t0, a1<br> [0x800008ac]:sd s1, 48(sp)<br>      |
|  24|[0x80003380]<br>0xFFFFFFFC20010002|- rs1 : x8<br> - rs2 : x17<br> - rd : x11<br> - rs2_h3_val == -2<br> - rs1_h3_val == 1<br> - rs1_h2_val == 4<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                       |[0x800008e4]:KDMTT16 a1, fp, a7<br> [0x800008e8]:sd a1, 64(sp)<br>      |
|  25|[0x80003390]<br>0x0002800000000492|- rs1 : x10<br> - rs2 : x1<br> - rd : x27<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -65<br> - rs1_h2_val == 16<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                    |[0x8000091c]:KDMTT16 s11, a0, ra<br> [0x80000920]:sd s11, 80(sp)<br>    |
|  26|[0x800033a0]<br>0xFFEFC00038E31C72|- rs1 : x7<br> - rs2 : x9<br> - rd : x16<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -2<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000960]:KDMTT16 a6, t2, s1<br> [0x80000964]:sd a6, 96(sp)<br>      |
|  27|[0x800033b0]<br>0xF555400000008000|- rs1 : x23<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 32<br> - rs2_h1_val == 1<br> - rs2_h0_val == -5<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                       |[0x800009a4]:KDMTT16 a0, s7, t6<br> [0x800009a8]:sd a0, 112(sp)<br>     |
|  28|[0x800033c0]<br>0xFFFFD00000002010|- rs1 : x24<br> - rs2 : x12<br> - rd : x21<br> - rs2_h3_val == 2048<br> - rs2_h0_val == 1024<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                         |[0x800009d8]:KDMTT16 s5, s8, a2<br> [0x800009dc]:sd s5, 128(sp)<br>     |
|  29|[0x800033d0]<br>0x02000000FFFFEE00|- rs1 : x18<br> - rs2 : x24<br> - rd : x5<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -129<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a0c]:KDMTT16 t0, s2, s8<br> [0x80000a10]:sd t0, 144(sp)<br>     |
|  30|[0x800033e0]<br>0xFFDFFE00FFFFBE00|- rs1 : x11<br> - rs2 : x8<br> - rd : x4<br> - rs2_h3_val == 256<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000a44]:KDMTT16 tp, a1, fp<br> [0x80000a48]:sd tp, 160(sp)<br>     |
|  31|[0x800033f0]<br>0x00004000FFFFFDE0|- rs1 : x3<br> - rs2 : x27<br> - rd : x14<br> - rs2_h3_val == 128<br> - rs2_h2_val == 8<br> - rs1_h2_val == -129<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000a80]:KDMTT16 a4, gp, s11<br> [0x80000a84]:sd a4, 176(sp)<br>    |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x15<br> - rs2_h3_val == 64<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000abc]:KDMTT16 a5, zero, s7<br> [0x80000ac0]:sd a5, 192(sp)<br>   |
|  33|[0x80003410]<br>0xFFFFFF6000080000|- rs2_h3_val == 16<br> - rs2_h1_val == 64<br> - rs1_h3_val == -5<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000af0]:KDMTT16 t6, t5, t4<br> [0x80000af4]:sd t6, 208(sp)<br>     |
|  34|[0x80003420]<br>0xFFFFFFA000010302|- rs2_h3_val == 8<br> - rs2_h1_val == -257<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b24]:KDMTT16 t6, t5, t4<br> [0x80000b28]:sd t6, 224(sp)<br>     |
|  35|[0x80003430]<br>0x00000010FFFFFFFC|- rs2_h3_val == 4<br> - rs2_h0_val == -1025<br> - rs1_h2_val == -65<br> - rs1_h1_val == -2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b60]:KDMTT16 t6, t5, t4<br> [0x80000b64]:sd t6, 240(sp)<br>     |
|  36|[0x80003440]<br>0xFFFFFF7CFFFE0004|- rs2_h3_val == 2<br> - rs2_h2_val == -65<br> - rs1_h3_val == -33<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b9c]:KDMTT16 t6, t5, t4<br> [0x80000ba0]:sd t6, 256(sp)<br>     |
|  37|[0x80003450]<br>0xFFFFE000FFFF6000|- rs2_h2_val == 4<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bd4]:KDMTT16 t6, t5, t4<br> [0x80000bd8]:sd t6, 272(sp)<br>     |
|  38|[0x80003460]<br>0xFFF80000FFFFFFF4|- rs2_h1_val == 2<br> - rs2_h0_val == 256<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c0c]:KDMTT16 t6, t5, t4<br> [0x80000c10]:sd t6, 288(sp)<br>     |
|  39|[0x80003470]<br>0x0004000000005000|- rs1_h2_val == -1<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c40]:KDMTT16 t6, t5, t4<br> [0x80000c44]:sd t6, 304(sp)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFC00000C00|- rs2_h2_val == -2049<br> - rs2_h0_val == 128<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c7c]:KDMTT16 t6, t5, t4<br> [0x80000c80]:sd t6, 320(sp)<br>     |
|  41|[0x80003490]<br>0xFFFFFFF0FFFEFE00|- rs2_h2_val == -1025<br> - rs1_h3_val == 4<br> - rs1_h2_val == 512<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000cac]:KDMTT16 t6, t5, t4<br> [0x80000cb0]:sd t6, 336(sp)<br>     |
|  42|[0x800034a0]<br>0xFFBFF00000008000|- rs2_h1_val == 128<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ce8]:KDMTT16 t6, t5, t4<br> [0x80000cec]:sd t6, 352(sp)<br>     |
|  43|[0x800034b0]<br>0x1000000000000280|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d24]:KDMTT16 t6, t5, t4<br> [0x80000d28]:sd t6, 368(sp)<br>     |
|  44|[0x800034c0]<br>0xFFFFFBE0FFFEFFC0|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d5c]:KDMTT16 t6, t5, t4<br> [0x80000d60]:sd t6, 384(sp)<br>     |
|  45|[0x800034d0]<br>0x0000000AFFFFF7F0|- rs2_h0_val == 4<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d94]:KDMTT16 t6, t5, t4<br> [0x80000d98]:sd t6, 400(sp)<br>     |
|  46|[0x800034e0]<br>0xFFFA000000010000|- rs1_h0_val == -32768<br> - rs2_h3_val == -32768<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000dcc]:KDMTT16 t6, t5, t4<br> [0x80000dd0]:sd t6, 416(sp)<br>     |
|  47|[0x800034f0]<br>0x0006AAB800000004|- rs2_h2_val == 256<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 2<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e04]:KDMTT16 t6, t5, t4<br> [0x80000e08]:sd t6, 432(sp)<br>     |
|  48|[0x80003500]<br>0xEAAA800000007FFE|- rs1_h2_val == 16384<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e44]:KDMTT16 t6, t5, t4<br> [0x80000e48]:sd t6, 448(sp)<br>     |
|  49|[0x80003510]<br>0x0002800AFFFF8002|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000e80]:KDMTT16 t6, t5, t4<br> [0x80000e84]:sd t6, 464(sp)<br>     |
|  50|[0x80003520]<br>0xFFFFFF8200000180|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000eb4]:KDMTT16 t6, t5, t4<br> [0x80000eb8]:sd t6, 480(sp)<br>     |
|  51|[0x80003530]<br>0x0004090200000800|- rs1_h3_val == -129<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ef0]:KDMTT16 t6, t5, t4<br> [0x80000ef4]:sd t6, 496(sp)<br>     |
|  52|[0x80003540]<br>0x00018000FFFEFFC0|- rs2_h2_val == -1<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f30]:KDMTT16 t6, t5, t4<br> [0x80000f34]:sd t6, 512(sp)<br>     |
|  53|[0x80003550]<br>0xFFFF78000000001E|- rs1_h3_val == 1024<br> - rs1_h2_val == 1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f6c]:KDMTT16 t6, t5, t4<br> [0x80000f70]:sd t6, 528(sp)<br>     |
|  54|[0x80003560]<br>0x00000120FFFFFC80|- rs1_h2_val == 1024<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000fa0]:KDMTT16 t6, t5, t4<br> [0x80000fa4]:sd t6, 544(sp)<br>     |
|  55|[0x80003570]<br>0xFFFFFC00FFFFEC00|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000fdc]:KDMTT16 t6, t5, t4<br> [0x80000fe0]:sd t6, 560(sp)<br>     |
|  56|[0x80003580]<br>0x0000A01400000044|- rs2_h2_val == 64<br> - rs2_h0_val == -9<br> - rs1_h3_val == -2049<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001018]:KDMTT16 t6, t5, t4<br> [0x8000101c]:sd t6, 576(sp)<br>     |
|  57|[0x80003590]<br>0xFFFDFFE0FFEFFE00|- rs2_h2_val == -9<br> - rs2_h1_val == -2049<br> - rs1_h2_val == -1025<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001050]:KDMTT16 t6, t5, t4<br> [0x80001054]:sd t6, 592(sp)<br>     |
|  58|[0x800035a0]<br>0xFFFFBFF80003555C|- rs1_h1_val == -21846<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000108c]:KDMTT16 t6, t5, t4<br> [0x80001090]:sd t6, 608(sp)<br>     |
|  59|[0x800035b0]<br>0x0002000000020000|- rs2_h2_val == -16385<br> - rs2_h1_val == 16<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800010cc]:KDMTT16 t6, t5, t4<br> [0x800010d0]:sd t6, 624(sp)<br>     |
|  60|[0x800035c0]<br>0x007FFE00FFFFFE80|- rs2_h2_val == 1<br> - rs2_h1_val == -3<br> - rs1_h3_val == 256<br> - rs1_h2_val == -9<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x80001108]:KDMTT16 t6, t5, t4<br> [0x8000110c]:sd t6, 640(sp)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFD00003FFF8|- rs2_h2_val == -513<br> - rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000113c]:KDMTT16 t6, t5, t4<br> [0x80001140]:sd t6, 656(sp)<br>     |
|  62|[0x800035f0]<br>0xFFEFC000FFFFFFFC|- rs2_h1_val == -1<br> - rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800011b0]:KDMTT16 t6, t5, t4<br> [0x800011b4]:sd t6, 688(sp)<br>     |
|  63|[0x80003600]<br>0x0000020000038000|- rs2_h0_val == -21846<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800011ec]:KDMTT16 t6, t5, t4<br> [0x800011f0]:sd t6, 704(sp)<br>     |
|  64|[0x80003610]<br>0xFFFFFFF800060000|- rs2_h1_val == -32768<br> - rs2_h0_val == -8193<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001228]:KDMTT16 t6, t5, t4<br> [0x8000122c]:sd t6, 720(sp)<br>     |
|  65|[0x80003620]<br>0xFFFCAAAE15554000|- rs2_h0_val == -4097<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000126c]:KDMTT16 t6, t5, t4<br> [0x80001270]:sd t6, 736(sp)<br>     |
|  66|[0x80003630]<br>0x0000000000000048|- rs2_h2_val == 4096<br> - rs2_h1_val == -9<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x800012a8]:KDMTT16 t6, t5, t4<br> [0x800012ac]:sd t6, 752(sp)<br>     |
|  67|[0x80003640]<br>0x0000002A00001008|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800012dc]:KDMTT16 t6, t5, t4<br> [0x800012e0]:sd t6, 768(sp)<br>     |
|  68|[0x80003650]<br>0xFFFF3FF400007000|- rs2_h1_val == 2048<br> - rs2_h0_val == -129<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001318]:KDMTT16 t6, t5, t4<br> [0x8000131c]:sd t6, 784(sp)<br>     |
|  69|[0x80003660]<br>0xFFFFFD00FD555000|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001350]:KDMTT16 t6, t5, t4<br> [0x80001354]:sd t6, 800(sp)<br>     |
|  70|[0x80003670]<br>0xFFFB001403FFF800|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001384]:KDMTT16 t6, t5, t4<br> [0x80001388]:sd t6, 816(sp)<br>     |
|  71|[0x80003680]<br>0xFFFFFEE01FFF8000|- rs2_h2_val == 8192<br> - rs2_h0_val == 16<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800013b8]:KDMTT16 t6, t5, t4<br> [0x800013bc]:sd t6, 832(sp)<br>     |
|  72|[0x80003690]<br>0x00001008FFFFFFE8|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013f4]:KDMTT16 t6, t5, t4<br> [0x800013f8]:sd t6, 848(sp)<br>     |
|  73|[0x800036a0]<br>0x0000481200000000|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001428]:KDMTT16 t6, t5, t4<br> [0x8000142c]:sd t6, 864(sp)<br>     |
|  74|[0x800036b0]<br>0x00040602FFDFC000|- rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001458]:KDMTT16 t6, t5, t4<br> [0x8000145c]:sd t6, 880(sp)<br>     |
|  75|[0x800036c0]<br>0xFFFF8FF2FFFFFE00|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001494]:KDMTT16 t6, t5, t4<br> [0x80001498]:sd t6, 896(sp)<br>     |
|  76|[0x800036d0]<br>0xFF7FFC0000047FEE|- rs1_h3_val == 512<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014c8]:KDMTT16 t6, t5, t4<br> [0x800014cc]:sd t6, 912(sp)<br>     |
|  77|[0x800036e0]<br>0x0000014AFFFFFFF0|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001500]:KDMTT16 t6, t5, t4<br> [0x80001504]:sd t6, 928(sp)<br>     |
|  78|[0x800036f0]<br>0x0001000000001000|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000153c]:KDMTT16 t6, t5, t4<br> [0x80001540]:sd t6, 944(sp)<br>     |
|  79|[0x80003700]<br>0xFFFFFEF000000018|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001578]:KDMTT16 t6, t5, t4<br> [0x8000157c]:sd t6, 960(sp)<br>     |
|  80|[0x80003720]<br>0x00000000FFFFFE00|- rs2_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800015e4]:KDMTT16 t6, t5, t4<br> [0x800015e8]:sd t6, 992(sp)<br>     |
|  81|[0x80003730]<br>0xFFFFE000C0010000|- rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001618]:KDMTT16 t6, t5, t4<br> [0x8000161c]:sd t6, 1008(sp)<br>    |
|  82|[0x80003740]<br>0x00000900FF555400|- rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001650]:KDMTT16 t6, t5, t4<br> [0x80001654]:sd t6, 1024(sp)<br>    |
|  83|[0x80003750]<br>0xFFFFFFEEFFFFFB00|- rs2_h3_val == -1<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000168c]:KDMTT16 t6, t5, t4<br> [0x80001690]:sd t6, 1040(sp)<br>    |
|  84|[0x80003760]<br>0x0000000C00002400|- rs2_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016c4]:KDMTT16 t6, t5, t4<br> [0x800016c8]:sd t6, 1056(sp)<br>    |
|  85|[0x80003770]<br>0x00012012FFF9FFF4|- rs2_h1_val == -21846<br> - rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001708]:KDMTT16 t6, t5, t4<br> [0x8000170c]:sd t6, 1072(sp)<br>    |
|  86|[0x80003790]<br>0x0000800000000000|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001770]:KDMTT16 t6, t5, t4<br> [0x80001774]:sd t6, 1104(sp)<br>    |
|  87|[0x800037a0]<br>0x03FFF00000000046|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017ac]:KDMTT16 t6, t5, t4<br> [0x800017b0]:sd t6, 1120(sp)<br>    |
|  88|[0x800037b0]<br>0xFFFB0000FFFFEF80|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800017e0]:KDMTT16 t6, t5, t4<br> [0x800017e4]:sd t6, 1136(sp)<br>    |
|  89|[0x800037c0]<br>0xFFDFE000000000E0|- rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000181c]:KDMTT16 t6, t5, t4<br> [0x80001820]:sd t6, 1152(sp)<br>    |
|  90|[0x800037d0]<br>0xFFFFFFF0FFFFFFB8|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001858]:KDMTT16 t6, t5, t4<br> [0x8000185c]:sd t6, 1168(sp)<br>    |
|  91|[0x800037e0]<br>0xFFFFDBEEFFEAAA80|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001898]:KDMTT16 t6, t5, t4<br> [0x8000189c]:sd t6, 1184(sp)<br>    |
|  92|[0x800037f0]<br>0xFFFFFFBC00000022|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800018d4]:KDMTT16 t6, t5, t4<br> [0x800018d8]:sd t6, 1200(sp)<br>    |
|  93|[0x80003800]<br>0x00000054FEFFF000|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001900]:KDMTT16 t6, t5, t4<br> [0x80001904]:sd t6, 1216(sp)<br>    |
|  94|[0x80003810]<br>0xEAAA155600081102|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001948]:KDMTT16 t6, t5, t4<br> [0x8000194c]:sd t6, 1232(sp)<br>    |
|  95|[0x80003820]<br>0xFFFFFFD0FFFF7C00|- rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001984]:KDMTT16 t6, t5, t4<br> [0x80001988]:sd t6, 1248(sp)<br>    |
|  96|[0x80003830]<br>0xFFDFF800FFFFBFC0|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800019c0]:KDMTT16 t6, t5, t4<br> [0x800019c4]:sd t6, 1264(sp)<br>    |
|  97|[0x80003840]<br>0x000840420000028A|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800019f8]:KDMTT16 t6, t5, t4<br> [0x800019fc]:sd t6, 1280(sp)<br>    |
|  98|[0x80003850]<br>0xFFFFFF7EFFFFFFFE|- rs2_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001a34]:KDMTT16 t6, t5, t4<br> [0x80001a38]:sd t6, 1296(sp)<br>    |
|  99|[0x80003860]<br>0x0000418200AB56AC|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a68]:KDMTT16 t6, t5, t4<br> [0x80001a6c]:sd t6, 1312(sp)<br>    |
| 100|[0x80003870]<br>0xFFFFBC00FFFFFFE0|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001aa4]:KDMTT16 t6, t5, t4<br> [0x80001aa8]:sd t6, 1328(sp)<br>    |
| 101|[0x80003880]<br>0x000000120000060C|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001adc]:KDMTT16 t6, t5, t4<br> [0x80001ae0]:sd t6, 1344(sp)<br>    |
| 102|[0x800038a0]<br>0x003FFF80FFFEC000|- rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001b4c]:KDMTT16 t6, t5, t4<br> [0x80001b50]:sd t6, 1376(sp)<br>    |
