
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800020f0')]      |
| SIG_REGION                | [('0x80004010', '0x80004900', '286 dwords')]      |
| COV_LABELS                | roriw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/temp/riscof_work/roriw-01.S/ref.S    |
| Total Number of coverpoints| 356     |
| Total Coverpoints Hit     | 351      |
| Total Signature Updates   | 286      |
| STAT1                     | 285      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800020e8]:roriw
      [0x800020ec]:sd
 -- Signature Address: 0x800048f8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : roriw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0x9568400000000000 and imm_val == 0x00 #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```

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

|s.no|            signature             |                                                            coverpoints                                                            |                   code                    |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
|   1|[0x80004010]<br>0xffffffffffffffff|- opcode : roriw<br> - rs1 : x16<br> - rd : x20<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFFFFFFFFFF and imm_val == 0x1B #nosat<br> |[0x8000039c]:roriw<br> [0x800003a0]:sd<br> |
|   2|[0x80004018]<br>0x0000000012af8f73|- rs1 : x17<br> - rd : x17<br> - rs1 == rd<br> - imm_val == 0x00 and rs1_val == 0xE917333212AF8F73 #nosat<br>                      |[0x800003c4]:roriw<br> [0x800003c8]:sd<br> |
|   3|[0x80004020]<br>0xffffffffbf6507e8|- rs1 : x3<br> - rd : x1<br> - imm_val == 0x10 and rs1_val == 0xCC381E1007E8BF65 #nosat<br>                                        |[0x800003ec]:roriw<br> [0x800003f0]:sd<br> |
|   4|[0x80004028]<br>0xfffffffff4532858|- rs1 : x30<br> - rd : x19<br> - imm_val == 0x18 and rs1_val == 0xFAE216DC58F45328 #nosat<br>                                      |[0x80000414]:roriw<br> [0x80000418]:sd<br> |
|   5|[0x80004030]<br>0xffffffff89517c67|- rs1 : x2<br> - rd : x22<br> - imm_val == 0x0C and rs1_val == 0xE6A56AE617C67895 #nosat<br>                                       |[0x8000043c]:roriw<br> [0x80000440]:sd<br> |
|   6|[0x80004038]<br>0x0000000054124282|- rs1 : x25<br> - rd : x3<br> - imm_val == 0x12 and rs1_val == 0x6AEB7DBD0A095049 #nosat<br>                                       |[0x80000464]:roriw<br> [0x80000468]:sd<br> |
|   7|[0x80004040]<br>0xffffffff8bdf718a|- rs1 : x19<br> - rd : x31<br> - imm_val == 0x07 and rs1_val == 0xF644D360EFB8C545 #nosat<br>                                      |[0x8000048c]:roriw<br> [0x80000490]:sd<br> |
|   8|[0x80004048]<br>0x0000000000000000|- rs1 : x8<br> - rd : x25<br> - rs1_val == 0x0000000000000000 and imm_val == 0x0F #nosat<br>                                       |[0x80000498]:roriw<br> [0x8000049c]:sd<br> |
|   9|[0x80004050]<br>0x0000000000000000|- rs1 : x22<br> - rd : x14<br> - rs1_val == 0x8000000000000000 and imm_val == 0x11 #nosat<br>                                      |[0x800004a8]:roriw<br> [0x800004ac]:sd<br> |
|  10|[0x80004058]<br>0x0000000000000000|- rs1 : x28<br> - rd : x12<br> - rs1_val == 0xC000000000000000 and imm_val == 0x08 #nosat<br>                                      |[0x800004b8]:roriw<br> [0x800004bc]:sd<br> |
|  11|[0x80004060]<br>0x0000000000000000|- rs1 : x23<br> - rd : x5<br> - rs1_val == 0x6000000000000000 and imm_val == 0x00 #nosat<br>                                       |[0x800004c8]:roriw<br> [0x800004cc]:sd<br> |
|  12|[0x80004068]<br>0x0000000000000000|- rs1 : x14<br> - rd : x4<br> - rs1_val == 0xF000000000000000 and imm_val == 0x10 #nosat<br>                                       |[0x800004d8]:roriw<br> [0x800004dc]:sd<br> |
|  13|[0x80004070]<br>0x0000000000000000|- rs1 : x4<br> - rd : x26<br> - rs1_val == 0x1800000000000000 and imm_val == 0x0D #nosat<br>                                       |[0x800004e8]:roriw<br> [0x800004ec]:sd<br> |
|  14|[0x80004078]<br>0x0000000000000000|- rs1 : x13<br> - rd : x16<br> - rs1_val == 0x4400000000000000 and imm_val == 0x1C #nosat<br>                                      |[0x800004f8]:roriw<br> [0x800004fc]:sd<br> |
|  15|[0x80004080]<br>0x0000000000000000|- rs1 : x27<br> - rd : x11<br> - rs1_val == 0x3E00000000000000 and imm_val == 0x02 #nosat<br>                                      |[0x80000508]:roriw<br> [0x8000050c]:sd<br> |
|  16|[0x80004088]<br>0x0000000000000000|- rs1 : x20<br> - rd : x7<br> - rs1_val == 0x3500000000000000 and imm_val == 0x0A #nosat<br>                                       |[0x80000518]:roriw<br> [0x8000051c]:sd<br> |
|  17|[0x80004090]<br>0x0000000000000000|- rs1 : x11<br> - rd : x30<br> - rs1_val == 0x6F80000000000000 and imm_val == 0x1C #nosat<br>                                      |[0x80000528]:roriw<br> [0x8000052c]:sd<br> |
|  18|[0x80004098]<br>0x0000000000000000|- rs1 : x1<br> - rd : x28<br> - rs1_val == 0x4EC0000000000000 and imm_val == 0x16 #nosat<br>                                       |[0x80000538]:roriw<br> [0x8000053c]:sd<br> |
|  19|[0x800040a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x23<br>                                                                                                      |[0x80000544]:roriw<br> [0x80000548]:sd<br> |
|  20|[0x800040a8]<br>0x0000000000000000|- rs1 : x9<br> - rd : x21<br> - rs1_val == 0x1910000000000000 and imm_val == 0x0E #nosat<br>                                       |[0x80000554]:roriw<br> [0x80000558]:sd<br> |
|  21|[0x800040b0]<br>0x0000000000000000|- rs1 : x7<br> - rd : x15<br> - rs1_val == 0x1248000000000000 and imm_val == 0x11 #nosat<br>                                       |[0x80000564]:roriw<br> [0x80000568]:sd<br> |
|  22|[0x800040b8]<br>0x0000000000000000|- rs1 : x24<br> - rd : x27<br> - rs1_val == 0xBF84000000000000 and imm_val == 0x14 #nosat<br>                                      |[0x80000578]:roriw<br> [0x8000057c]:sd<br> |
|  23|[0x800040c0]<br>0x0000000000000000|- rs1 : x10<br> - rd : x6<br> - rs1_val == 0xC116000000000000 and imm_val == 0x09 #nosat<br>                                       |[0x8000058c]:roriw<br> [0x80000590]:sd<br> |
|  24|[0x800040c8]<br>0x0000000000000000|- rs1 : x29<br> - rd : x8<br> - rs1_val == 0xD631000000000000 and imm_val == 0x17 #nosat<br>                                       |[0x800005a8]:roriw<br> [0x800005ac]:sd<br> |
|  25|[0x800040d0]<br>0x0000000000000000|- rs1 : x6<br> - rd : x10<br> - rs1_val == 0x17B2800000000000 and imm_val == 0x0F #nosat<br>                                       |[0x800005bc]:roriw<br> [0x800005c0]:sd<br> |
|  26|[0x800040d8]<br>0x0000000000000000|- rs1 : x12<br> - rd : x0<br> - rs1_val == 0x9568400000000000 and imm_val == 0x00 #nosat<br>                                       |[0x800005d0]:roriw<br> [0x800005d4]:sd<br> |
|  27|[0x800040e0]<br>0x0000000000000000|- rs1 : x18<br> - rd : x13<br> - rs1_val == 0x8B06600000000000 and imm_val == 0x15 #nosat<br>                                      |[0x800005e4]:roriw<br> [0x800005e8]:sd<br> |
|  28|[0x800040e8]<br>0x0000000000000000|- rs1 : x21<br> - rd : x24<br> - rs1_val == 0xB93DF00000000000 and imm_val == 0x00 #nosat<br>                                      |[0x800005f8]:roriw<br> [0x800005fc]:sd<br> |
|  29|[0x800040f0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x9<br> - rs1_val == 0x88ADB80000000000 and imm_val == 0x0E #nosat<br>                                       |[0x8000060c]:roriw<br> [0x80000610]:sd<br> |
|  30|[0x800040f8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x18<br> - rs1_val == 0xE180E40000000000 and imm_val == 0x17 #nosat<br>                                       |[0x80000620]:roriw<br> [0x80000624]:sd<br> |
|  31|[0x80004100]<br>0x0000000000000000|- rs1 : x26<br> - rd : x29<br> - rs1_val == 0xD5CB7E0000000000 and imm_val == 0x0A #nosat<br>                                      |[0x80000634]:roriw<br> [0x80000638]:sd<br> |
|  32|[0x80004108]<br>0x0000000000000000|- rs1 : x31<br> - rd : x2<br> - rs1_val == 0xA438230000000000 and imm_val == 0x1E #nosat<br>                                       |[0x80000648]:roriw<br> [0x8000064c]:sd<br> |
|  33|[0x80004110]<br>0x0000000000000000|- rs1_val == 0xB9BE488000000000 and imm_val == 0x12 #nosat<br>                                                                     |[0x8000065c]:roriw<br> [0x80000660]:sd<br> |
|  34|[0x80004118]<br>0x0000000000000000|- rs1_val == 0xE5ABA74000000000 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000670]:roriw<br> [0x80000674]:sd<br> |
|  35|[0x80004120]<br>0x0000000000000000|- rs1_val == 0xF2124BA000000000 and imm_val == 0x03 #nosat<br>                                                                     |[0x80000684]:roriw<br> [0x80000688]:sd<br> |
|  36|[0x80004128]<br>0x0000000000000000|- rs1_val == 0x96EBEC5000000000 and imm_val == 0x11 #nosat<br>                                                                     |[0x80000698]:roriw<br> [0x8000069c]:sd<br> |
|  37|[0x80004130]<br>0x0000000000000000|- rs1_val == 0x6CA53BC800000000 and imm_val == 0x11 #nosat<br>                                                                     |[0x800006ac]:roriw<br> [0x800006b0]:sd<br> |
|  38|[0x80004138]<br>0x0000000000000000|- rs1_val == 0x035FF31C00000000 and imm_val == 0x0E #nosat<br>                                                                     |[0x800006c0]:roriw<br> [0x800006c4]:sd<br> |
|  39|[0x80004140]<br>0x0000000000000000|- rs1_val == 0x8B38E95A00000000 and imm_val == 0x06 #nosat<br>                                                                     |[0x800006d4]:roriw<br> [0x800006d8]:sd<br> |
|  40|[0x80004148]<br>0x0000000000000000|- rs1_val == 0x0B21BBBB00000000 and imm_val == 0x0D #nosat<br>                                                                     |[0x800006e8]:roriw<br> [0x800006ec]:sd<br> |
|  41|[0x80004150]<br>0x0000000000000010|- rs1_val == 0x9C6FFFDC80000000 and imm_val == 0x1B #nosat<br>                                                                     |[0x80000700]:roriw<br> [0x80000704]:sd<br> |
|  42|[0x80004158]<br>0x0000000020000000|- rs1_val == 0x8217FFBE40000000 and imm_val == 0x01 #nosat<br>                                                                     |[0x8000071c]:roriw<br> [0x80000720]:sd<br> |
|  43|[0x80004160]<br>0x0000000000000004|- rs1_val == 0x60E68CB720000000 and imm_val == 0x1B #nosat<br>                                                                     |[0x80000738]:roriw<br> [0x8000073c]:sd<br> |
|  44|[0x80004168]<br>0x0000000000020000|- rs1_val == 0xF5D02B2010000000 and imm_val == 0x0B #nosat<br>                                                                     |[0x80000754]:roriw<br> [0x80000758]:sd<br> |
|  45|[0x80004170]<br>0x00000000000001c0|- rs1_val == 0x4204DE9838000000 and imm_val == 0x15 #nosat<br>                                                                     |[0x80000770]:roriw<br> [0x80000774]:sd<br> |
|  46|[0x80004178]<br>0x0000000001e80000|- rs1_val == 0xF6B1F180F4000000 and imm_val == 0x07 #nosat<br>                                                                     |[0x8000078c]:roriw<br> [0x80000790]:sd<br> |
|  47|[0x80004180]<br>0x0000000000000066|- rs1_val == 0xF5BB75A166000000 and imm_val == 0x18 #nosat<br>                                                                     |[0x800007a8]:roriw<br> [0x800007ac]:sd<br> |
|  48|[0x80004188]<br>0x0000000000000072|- rs1_val == 0xAA5B397039000000 and imm_val == 0x17 #nosat<br>                                                                     |[0x800007c4]:roriw<br> [0x800007c8]:sd<br> |
|  49|[0x80004190]<br>0x0000000000005480|- rs1_val == 0x0E7BD5B154800000 and imm_val == 0x10 #nosat<br>                                                                     |[0x800007e0]:roriw<br> [0x800007e4]:sd<br> |
|  50|[0x80004198]<br>0x0000000000d20000|- rs1_val == 0xB7A2A2301A400000 and imm_val == 0x05 #nosat<br>                                                                     |[0x800007fc]:roriw<br> [0x80000800]:sd<br> |
|  51|[0x800041a0]<br>0x000000006000007b|- rs1_val == 0x29EF41AF7B600000 and imm_val == 0x18 #nosat<br>                                                                     |[0x80000818]:roriw<br> [0x8000081c]:sd<br> |
|  52|[0x800041a8]<br>0xffffffffbec00003|- rs1_val == 0xDD8AB0BCEFB00000 and imm_val == 0x1E #nosat<br>                                                                     |[0x80000834]:roriw<br> [0x80000838]:sd<br> |
|  53|[0x800041b0]<br>0xffffffff82000009|- rs1_val == 0xFA3B344326080000 and imm_val == 0x1A #nosat<br>                                                                     |[0x80000850]:roriw<br> [0x80000854]:sd<br> |
|  54|[0x800041b8]<br>0x0000000002a82000|- rs1_val == 0xBF06387955040000 and imm_val == 0x05 #nosat<br>                                                                     |[0x80000874]:roriw<br> [0x80000878]:sd<br> |
|  55|[0x800041c0]<br>0x000000000f3f4000|- rs1_val == 0x7D49F3CA79FA0000 and imm_val == 0x03 #nosat<br>                                                                     |[0x80000898]:roriw<br> [0x8000089c]:sd<br> |
|  56|[0x800041c8]<br>0x000000000003c8c0|- rs1_val == 0xAAB48A1C0F230000 and imm_val == 0x0A #nosat<br>                                                                     |[0x800008bc]:roriw<br> [0x800008c0]:sd<br> |
|  57|[0x800041d0]<br>0x000000000035cb80|- rs1_val == 0xA25E549735CB8000 and imm_val == 0x08 #nosat<br>                                                                     |[0x800008e0]:roriw<br> [0x800008e4]:sd<br> |
|  58|[0x800041d8]<br>0x0000000001e46880|- rs1_val == 0x49E43C96F2344000 and imm_val == 0x07 #nosat<br>                                                                     |[0x80000904]:roriw<br> [0x80000908]:sd<br> |
|  59|[0x800041e0]<br>0x0000000055440009|- rs1_val == 0x971662E94AAA2000 and imm_val == 0x1B #nosat<br>                                                                     |[0x80000928]:roriw<br> [0x8000092c]:sd<br> |
|  60|[0x800041e8]<br>0x00000000400134ad|- rs1_val == 0xFA51CD1D4D2B5000 and imm_val == 0x0E #nosat<br>                                                                     |[0x8000094c]:roriw<br> [0x80000950]:sd<br> |
|  61|[0x800041f0]<br>0x0000000003405d00|- rs1_val == 0xEBC398261A02E800 and imm_val == 0x03 #nosat<br>                                                                     |[0x80000974]:roriw<br> [0x80000978]:sd<br> |
|  62|[0x800041f8]<br>0x0000000006536020|- rs1_val == 0x5334BAB9CA6C0400 and imm_val == 0x05 #nosat<br>                                                                     |[0x8000099c]:roriw<br> [0x800009a0]:sd<br> |
|  63|[0x80004200]<br>0xffffffffde100199|- rs1_val == 0xEC133026333BC200 and imm_val == 0x15 #nosat<br>                                                                     |[0x800009c4]:roriw<br> [0x800009c8]:sd<br> |
|  64|[0x80004208]<br>0xffffffffb000f1c6|- rs1_val == 0x82CC710F0F1C6B00 and imm_val == 0x0C #nosat<br>                                                                     |[0x800009ec]:roriw<br> [0x800009f0]:sd<br> |
|  65|[0x80004210]<br>0xffffffffe4062967|- rs1_val == 0x7AA3D594C52CFC80 and imm_val == 0x0D #nosat<br>                                                                     |[0x80000a14]:roriw<br> [0x80000a18]:sd<br> |
|  66|[0x80004218]<br>0x000000006deb8130|- rs1_val == 0x29DB927E9836F5C0 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000a3c]:roriw<br> [0x80000a40]:sd<br> |
|  67|[0x80004220]<br>0x00000000706e58b0|- rs1_val == 0x0DA598F1DCB160E0 and imm_val == 0x09 #nosat<br>                                                                     |[0x80000a64]:roriw<br> [0x80000a68]:sd<br> |
|  68|[0x80004228]<br>0xffffffff874032ab|- rs1_val == 0xD45AF1CB0CAAE1D0 and imm_val == 0x0E #nosat<br>                                                                     |[0x80000a8c]:roriw<br> [0x80000a90]:sd<br> |
|  69|[0x80004230]<br>0xffffffff8a013741|- rs1_val == 0x25B37C62314026E8 and imm_val == 0x1D #nosat<br>                                                                     |[0x80000ab4]:roriw<br> [0x80000ab8]:sd<br> |
|  70|[0x80004238]<br>0xfffffffff22a27d3|- rs1_val == 0x7FBFA447FC8A89F4 and imm_val == 0x1E #nosat<br>                                                                     |[0x80000adc]:roriw<br> [0x80000ae0]:sd<br> |
|  71|[0x80004240]<br>0x000000004902e9ce|- rs1_val == 0xC36673FE4902E9CE and imm_val == 0x00 #nosat<br>                                                                     |[0x80000b04]:roriw<br> [0x80000b08]:sd<br> |
|  72|[0x80004248]<br>0xfffffffff5db7de5|- rs1_val == 0x44DCDA6A797D76DF and imm_val == 0x16 #nosat<br>                                                                     |[0x80000b2c]:roriw<br> [0x80000b30]:sd<br> |
|  73|[0x80004250]<br>0xffffffff963f00d0|- imm_val == 0x02 and rs1_val == 0x20D68CEC58FC0342 #nosat<br>                                                                     |[0x80000b54]:roriw<br> [0x80000b58]:sd<br> |
|  74|[0x80004258]<br>0xffffffffd8cd36d2|- imm_val == 0x09 and rs1_val == 0x636A75E39A6DA5B1 #nosat<br>                                                                     |[0x80000b7c]:roriw<br> [0x80000b80]:sd<br> |
|  75|[0x80004260]<br>0x0000000000111b65|- imm_val == 0x1B and rs1_val == 0x37E0DE00280088DB #nosat<br>                                                                     |[0x80000ba4]:roriw<br> [0x80000ba8]:sd<br> |
|  76|[0x80004268]<br>0x00000000781aee1e|- imm_val == 0x07 and rs1_val == 0x1CA7BD1F0D770F3C #nosat<br>                                                                     |[0x80000bcc]:roriw<br> [0x80000bd0]:sd<br> |
|  77|[0x80004270]<br>0xffffffffa098c784|- imm_val == 0x0F and rs1_val == 0x5536B8D863C2504C #nosat<br>                                                                     |[0x80000bf4]:roriw<br> [0x80000bf8]:sd<br> |
|  78|[0x80004278]<br>0xffffffff8c363f7f|- imm_val == 0x1F and rs1_val == 0x4E6EE408C61B1FBF #nosat<br>                                                                     |[0x80000c1c]:roriw<br> [0x80000c20]:sd<br> |
|  79|[0x80004280]<br>0xffffffff846394cc|- rs1_val == 0xC215E193118E5332 and imm_val == 0x02 #nosat<br>                                                                     |[0x80000c44]:roriw<br> [0x80000c48]:sd<br> |
|  80|[0x80004288]<br>0x000000000b2e5b06|- rs1_val == 0x75EE935F65CB60C1 and imm_val == 0x05 #nosat<br>                                                                     |[0x80000c6c]:roriw<br> [0x80000c70]:sd<br> |
|  81|[0x80004290]<br>0xffffffff859bb6ce|- rs1_val == 0x09C161626CE859BB and imm_val == 0x14 #nosat<br>                                                                     |[0x80000c94]:roriw<br> [0x80000c98]:sd<br> |
|  82|[0x80004298]<br>0xffffffffbd5f1cd0|- rs1_val == 0xA4053175342F57C7 and imm_val == 0x16 #nosat<br>                                                                     |[0x80000cbc]:roriw<br> [0x80000cc0]:sd<br> |
|  83|[0x800042a0]<br>0xfffffffff267cdf2|- rs1_val == 0x499006C897933E6F and imm_val == 0x1B #nosat<br>                                                                     |[0x80000ce4]:roriw<br> [0x80000ce8]:sd<br> |
|  84|[0x800042a8]<br>0xffffffff943eb60c|- rs1_val == 0xC5DD85CA5B064A1F and imm_val == 0x0F #nosat<br>                                                                     |[0x80000d0c]:roriw<br> [0x80000d10]:sd<br> |
|  85|[0x800042b0]<br>0x00000000567e8460|- rs1_val == 0x6CC30F7242302B3F and imm_val == 0x0F #nosat<br>                                                                     |[0x80000d34]:roriw<br> [0x80000d38]:sd<br> |
|  86|[0x800042b8]<br>0xffffffffa3fb6723|- rs1_val == 0xAF1DBF276CE4747F and imm_val == 0x0D #nosat<br>                                                                     |[0x80000d5c]:roriw<br> [0x80000d60]:sd<br> |
|  87|[0x800042c0]<br>0x0000000008ffbd06|- rs1_val == 0x25784F4FBD0608FF and imm_val == 0x10 #nosat<br>                                                                     |[0x80000d84]:roriw<br> [0x80000d88]:sd<br> |
|  88|[0x800042c8]<br>0x000000007fd81321|- rs1_val == 0x805A391B604C85FF and imm_val == 0x0A #nosat<br>                                                                     |[0x80000dac]:roriw<br> [0x80000db0]:sd<br> |
|  89|[0x800042d0]<br>0xffffffffd2fac6ff|- rs1_val == 0xCC7EB77D4BEB1BFF and imm_val == 0x02 #nosat<br>                                                                     |[0x80000dd4]:roriw<br> [0x80000dd8]:sd<br> |
|  90|[0x800042d8]<br>0xffffffffbff9c8cf|- rs1_val == 0xAB647BCA3919F7FF and imm_val == 0x0D #nosat<br>                                                                     |[0x80000dfc]:roriw<br> [0x80000e00]:sd<br> |
|  91|[0x800042e0]<br>0xffffffff9ec8bffc|- rs1_val == 0x7F1E7F8627B22FFF and imm_val == 0x1E #nosat<br>                                                                     |[0x80000e24]:roriw<br> [0x80000e28]:sd<br> |
|  92|[0x800042e8]<br>0xffffffffb4fff80b|- rs1_val == 0x51D6D6DA01769FFF and imm_val == 0x15 #nosat<br>                                                                     |[0x80000e4c]:roriw<br> [0x80000e50]:sd<br> |
|  93|[0x800042f0]<br>0xfffffffff6812fff|- rs1_val == 0xD5A2038FDA04BFFF and imm_val == 0x02 #nosat<br>                                                                     |[0x80000e74]:roriw<br> [0x80000e78]:sd<br> |
|  94|[0x800042f8]<br>0x0000000076ffffe0|- rs1_val == 0x784ABEBBF03B7FFF and imm_val == 0x17 #nosat<br>                                                                     |[0x80000e9c]:roriw<br> [0x80000ea0]:sd<br> |
|  95|[0x80004300]<br>0xfffffffffe81efff|- rs1_val == 0x44D988FBE81EFFFF and imm_val == 0x04 #nosat<br>                                                                     |[0x80000ec4]:roriw<br> [0x80000ec8]:sd<br> |
|  96|[0x80004308]<br>0x000000003fffe3e3|- rs1_val == 0x6875944E1F19FFFF and imm_val == 0x13 #nosat<br>                                                                     |[0x80000eec]:roriw<br> [0x80000ef0]:sd<br> |
|  97|[0x80004310]<br>0x000000007fffe40c|- rs1_val == 0xFF7746E52063FFFF and imm_val == 0x13 #nosat<br>                                                                     |[0x80000f0c]:roriw<br> [0x80000f10]:sd<br> |
|  98|[0x80004318]<br>0xffffffffa527ffff|- rs1_val == 0x17B8B123A527FFFF and imm_val == 0x00 #nosat<br>                                                                     |[0x80000f2c]:roriw<br> [0x80000f30]:sd<br> |
|  99|[0x80004320]<br>0x000000007fffffc4|- rs1_val == 0x70890268F88FFFFF and imm_val == 0x15 #nosat<br>                                                                     |[0x80000f4c]:roriw<br> [0x80000f50]:sd<br> |
| 100|[0x80004328]<br>0xffffffffc467ffff|- rs1_val == 0x6DDC74E6119FFFFF and imm_val == 0x02 #nosat<br>                                                                     |[0x80000f6c]:roriw<br> [0x80000f70]:sd<br> |
| 101|[0x80004330]<br>0xfffffffffff9afff|- rs1_val == 0x39BE2172E6BFFFFF and imm_val == 0x0A #nosat<br>                                                                     |[0x80000f8c]:roriw<br> [0x80000f90]:sd<br> |
| 102|[0x80004338]<br>0xfffffffffe54ffff|- rs1_val == 0xC99324582A7FFFFF and imm_val == 0x07 #nosat<br>                                                                     |[0x80000fac]:roriw<br> [0x80000fb0]:sd<br> |
| 103|[0x80004340]<br>0xfffffffffff2efff|- rs1_val == 0x4B9A6C802EFFFFFF and imm_val == 0x0C #nosat<br>                                                                     |[0x80000fcc]:roriw<br> [0x80000fd0]:sd<br> |
| 104|[0x80004348]<br>0xfffffffffffffacf|- rs1_val == 0x9541240E59FFFFFF and imm_val == 0x15 #nosat<br>                                                                     |[0x80000fec]:roriw<br> [0x80000ff0]:sd<br> |
| 105|[0x80004350]<br>0xffffffffe4ffffff|- rs1_val == 0xB3A8D61293FFFFFF and imm_val == 0x02 #nosat<br>                                                                     |[0x8000100c]:roriw<br> [0x80001010]:sd<br> |
| 106|[0x80004358]<br>0xfffffffff5ffffff|- rs1_val == 0x9E03793FD7FFFFFF and imm_val == 0x02 #nosat<br>                                                                     |[0x8000102c]:roriw<br> [0x80001030]:sd<br> |
| 107|[0x80004360]<br>0xfffffffffffd7fff|- rs1_val == 0x7F1071ECAFFFFFFF and imm_val == 0x0D #nosat<br>                                                                     |[0x8000104c]:roriw<br> [0x80001050]:sd<br> |
| 108|[0x80004368]<br>0xffffffffffffbfff|- rs1_val == 0xF8A75516DFFFFFFF and imm_val == 0x0F #nosat<br>                                                                     |[0x80001064]:roriw<br> [0x80001068]:sd<br> |
| 109|[0x80004370]<br>0xffffffffffbfffff|- rs1_val == 0xB76D454DBFFFFFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x80001084]:roriw<br> [0x80001088]:sd<br> |
| 110|[0x80004378]<br>0xfffffffffffffeff|- rs1_val == 0xB494A73D7FFFFFFF and imm_val == 0x17 #nosat<br>                                                                     |[0x800010a4]:roriw<br> [0x800010a8]:sd<br> |
| 111|[0x80004380]<br>0xffffffffffffffff|- rs1_val == 0xC28CB594FFFFFFFF and imm_val == 0x16 #nosat<br>                                                                     |[0x800010bc]:roriw<br> [0x800010c0]:sd<br> |
| 112|[0x80004388]<br>0xffffffffffffffff|- rs1_val == 0x69DA8A2DFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x800010d4]:roriw<br> [0x800010d8]:sd<br> |
| 113|[0x80004390]<br>0xffffffffffffffff|- rs1_val == 0x40F27003FFFFFFFF and imm_val == 0x0A #nosat<br>                                                                     |[0x800010ec]:roriw<br> [0x800010f0]:sd<br> |
| 114|[0x80004398]<br>0xffffffffffffffff|- rs1_val == 0xB2B8AF97FFFFFFFF and imm_val == 0x1C #nosat<br>                                                                     |[0x80001104]:roriw<br> [0x80001108]:sd<br> |
| 115|[0x800043a0]<br>0xffffffffffffffff|- rs1_val == 0x24496FEFFFFFFFFF and imm_val == 0x1F #nosat<br>                                                                     |[0x8000111c]:roriw<br> [0x80001120]:sd<br> |
| 116|[0x800043a8]<br>0xffffffffffffffff|- rs1_val == 0xDE14BFDFFFFFFFFF and imm_val == 0x02 #nosat<br>                                                                     |[0x80001134]:roriw<br> [0x80001138]:sd<br> |
| 117|[0x800043b0]<br>0xffffffffffffffff|- rs1_val == 0x008EEF3FFFFFFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x8000114c]:roriw<br> [0x80001150]:sd<br> |
| 118|[0x800043b8]<br>0xffffffffffffffff|- rs1_val == 0x6E2D707FFFFFFFFF and imm_val == 0x1D #nosat<br>                                                                     |[0x80001164]:roriw<br> [0x80001168]:sd<br> |
| 119|[0x800043c0]<br>0xffffffffffffffff|- rs1_val == 0x5DCF00FFFFFFFFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x8000117c]:roriw<br> [0x80001180]:sd<br> |
| 120|[0x800043c8]<br>0xffffffffffffffff|- rs1_val == 0x3C5569FFFFFFFFFF and imm_val == 0x0C #nosat<br>                                                                     |[0x80001194]:roriw<br> [0x80001198]:sd<br> |
| 121|[0x800043d0]<br>0xffffffffffffffff|- rs1_val == 0x7DA8D3FFFFFFFFFF and imm_val == 0x0F #nosat<br>                                                                     |[0x800011ac]:roriw<br> [0x800011b0]:sd<br> |
| 122|[0x800043d8]<br>0xffffffffffffffff|- rs1_val == 0xE3A707FFFFFFFFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x800011c4]:roriw<br> [0x800011c8]:sd<br> |
| 123|[0x800043e0]<br>0xffffffffffffffff|- rs1_val == 0x9B01EFFFFFFFFFFF and imm_val == 0x11 #nosat<br>                                                                     |[0x800011dc]:roriw<br> [0x800011e0]:sd<br> |
| 124|[0x800043e8]<br>0xffffffffffffffff|- rs1_val == 0x5F011FFFFFFFFFFF and imm_val == 0x1D #nosat<br>                                                                     |[0x800011f4]:roriw<br> [0x800011f8]:sd<br> |
| 125|[0x800043f0]<br>0xffffffffffffffff|- rs1_val == 0x2DEDBFFFFFFFFFFF and imm_val == 0x16 #nosat<br>                                                                     |[0x8000120c]:roriw<br> [0x80001210]:sd<br> |
| 126|[0x800043f8]<br>0xffffffffffffffff|- rs1_val == 0x2D377FFFFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                     |[0x80001224]:roriw<br> [0x80001228]:sd<br> |
| 127|[0x80004400]<br>0xffffffffffffffff|- rs1_val == 0xAD44FFFFFFFFFFFF and imm_val == 0x1C #nosat<br>                                                                     |[0x8000123c]:roriw<br> [0x80001240]:sd<br> |
| 128|[0x80004408]<br>0xffffffffffffffff|- rs1_val == 0x72C9FFFFFFFFFFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x80001254]:roriw<br> [0x80001258]:sd<br> |
| 129|[0x80004410]<br>0xffffffffffffffff|- rs1_val == 0xD1D3FFFFFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x8000126c]:roriw<br> [0x80001270]:sd<br> |
| 130|[0x80004418]<br>0xffffffffffffffff|- rs1_val == 0x5057FFFFFFFFFFFF and imm_val == 0x07 #nosat<br>                                                                     |[0x80001284]:roriw<br> [0x80001288]:sd<br> |
| 131|[0x80004420]<br>0xffffffffffffffff|- rs1_val == 0x5D2FFFFFFFFFFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x80001298]:roriw<br> [0x8000129c]:sd<br> |
| 132|[0x80004428]<br>0xffffffffffffffff|- rs1_val == 0xE5DFFFFFFFFFFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x800012ac]:roriw<br> [0x800012b0]:sd<br> |
| 133|[0x80004430]<br>0xffffffffffffffff|- rs1_val == 0xD9BFFFFFFFFFFFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x800012c0]:roriw<br> [0x800012c4]:sd<br> |
| 134|[0x80004438]<br>0xffffffffffffffff|- rs1_val == 0x237FFFFFFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x800012d4]:roriw<br> [0x800012d8]:sd<br> |
| 135|[0x80004440]<br>0xffffffffffffffff|- rs1_val == 0x72FFFFFFFFFFFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x800012e8]:roriw<br> [0x800012ec]:sd<br> |
| 136|[0x80004448]<br>0xffffffffffffffff|- rs1_val == 0xDDFFFFFFFFFFFFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x800012fc]:roriw<br> [0x80001300]:sd<br> |
| 137|[0x80004450]<br>0xffffffffffffffff|- rs1_val == 0x43FFFFFFFFFFFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x80001310]:roriw<br> [0x80001314]:sd<br> |
| 138|[0x80004458]<br>0xffffffffffffffff|- rs1_val == 0x27FFFFFFFFFFFFFF and imm_val == 0x00 #nosat<br>                                                                     |[0x80001324]:roriw<br> [0x80001328]:sd<br> |
| 139|[0x80004460]<br>0xffffffffffffffff|- rs1_val == 0x4FFFFFFFFFFFFFFF and imm_val == 0x01 #nosat<br>                                                                     |[0x80001338]:roriw<br> [0x8000133c]:sd<br> |
| 140|[0x80004468]<br>0xffffffffffffffff|- rs1_val == 0x1FFFFFFFFFFFFFFF and imm_val == 0x0D #nosat<br>                                                                     |[0x8000134c]:roriw<br> [0x80001350]:sd<br> |
| 141|[0x80004470]<br>0xffffffffffffffff|- rs1_val == 0x3FFFFFFFFFFFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x80001360]:roriw<br> [0x80001364]:sd<br> |
| 142|[0x80004478]<br>0xffffffffffffffff|- rs1_val == 0x7FFFFFFFFFFFFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x80001374]:roriw<br> [0x80001378]:sd<br> |
| 143|[0x80004480]<br>0xffffffffffffffff|- rs1_val == 0xFFFFFFFFFFFFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x80001380]:roriw<br> [0x80001384]:sd<br> |
| 144|[0x80004488]<br>0xffffffffbdefcb47|- imm_val == 0x12 and rs1_val == 0x482EA7602D1EF7BF #nosat<br>                                                                     |[0x800013a8]:roriw<br> [0x800013ac]:sd<br> |
| 145|[0x80004490]<br>0x000000000769c867|- imm_val == 0x0E and rs1_val == 0x3FC2A9087219C1DA #nosat<br>                                                                     |[0x800013d0]:roriw<br> [0x800013d4]:sd<br> |
| 146|[0x80004498]<br>0x000000005043e3ef|- imm_val == 0x04 and rs1_val == 0x11B41900043E3EF5 #nosat<br>                                                                     |[0x800013f8]:roriw<br> [0x800013fc]:sd<br> |
| 147|[0x800044a0]<br>0xffffffffbd5b03b9|- imm_val == 0x03 and rs1_val == 0xEA3A0683EAD81DCD #nosat<br>                                                                     |[0x80001420]:roriw<br> [0x80001424]:sd<br> |
| 148|[0x800044a8]<br>0x000000004ea17b38|- imm_val == 0x01 and rs1_val == 0x12FAD8029D42F670 #nosat<br>                                                                     |[0x80001448]:roriw<br> [0x8000144c]:sd<br> |
| 149|[0x800044b0]<br>0xffffffffb869135c|- imm_val == 0x00 and rs1_val == 0xFA285A0DB869135C #nosat<br>                                                                     |[0x80001470]:roriw<br> [0x80001474]:sd<br> |
| 150|[0x800044b8]<br>0xffffffff87e963d2|- rs1_val == 0x852395744B1E943F and imm_val == 0x0B #nosat<br>                                                                     |[0x80001498]:roriw<br> [0x8000149c]:sd<br> |
| 151|[0x800044c0]<br>0xffffffff839310de|- rs1_val == 0x6BBA8D2141C9886F and imm_val == 0x1F #nosat<br>                                                                     |[0x800014c0]:roriw<br> [0x800014c4]:sd<br> |
| 152|[0x800044c8]<br>0xffffffff84207e1e|- rs1_val == 0x3D65693B3D0840FC and imm_val == 0x19 #nosat<br>                                                                     |[0x800014e8]:roriw<br> [0x800014ec]:sd<br> |
| 153|[0x800044d0]<br>0xffffffff85941bea|- rs1_val == 0x19E803191BEA8594 and imm_val == 0x10 #nosat<br>                                                                     |[0x80001510]:roriw<br> [0x80001514]:sd<br> |
| 154|[0x800044d8]<br>0xffffffffa1af927b|- rs1_val == 0x0C2282666BE49EE8 and imm_val == 0x06 #nosat<br>                                                                     |[0x80001538]:roriw<br> [0x8000153c]:sd<br> |
| 155|[0x800044e0]<br>0xffffffff870eb980|- rs1_val == 0x07862EACE1D73010 and imm_val == 0x05 #nosat<br>                                                                     |[0x80001560]:roriw<br> [0x80001564]:sd<br> |
| 156|[0x800044e8]<br>0xffffffffdd8734af|- rs1_val == 0x033C1A7FAFDD8734 and imm_val == 0x18 #nosat<br>                                                                     |[0x80001580]:roriw<br> [0x80001584]:sd<br> |
| 157|[0x800044f0]<br>0xffffffffab1bd4ae|- rs1_val == 0x0104A795BD4AEAB1 and imm_val == 0x0C #nosat<br>                                                                     |[0x800015a8]:roriw<br> [0x800015ac]:sd<br> |
| 158|[0x800044f8]<br>0x000000003b2e6cce|- rs1_val == 0x0096C6C8B9B338EC and imm_val == 0x0A #nosat<br>                                                                     |[0x800015c8]:roriw<br> [0x800015cc]:sd<br> |
| 159|[0x80004500]<br>0xffffffffea61d11c|- rs1_val == 0x00775505E88E7530 and imm_val == 0x0F #nosat<br>                                                                     |[0x800015e8]:roriw<br> [0x800015ec]:sd<br> |
| 160|[0x80004508]<br>0x0000000063dab412|- rs1_val == 0x00356991A0931ED5 and imm_val == 0x13 #nosat<br>                                                                     |[0x80001608]:roriw<br> [0x8000160c]:sd<br> |
| 161|[0x80004510]<br>0x000000000abbba94|- rs1_val == 0x00174145DDD4A055 and imm_val == 0x0B #nosat<br>                                                                     |[0x80001628]:roriw<br> [0x8000162c]:sd<br> |
| 162|[0x80004518]<br>0xffffffff9ed5157e|- rs1_val == 0x000F19FDD5157E9E and imm_val == 0x08 #nosat<br>                                                                     |[0x80001648]:roriw<br> [0x8000164c]:sd<br> |
| 163|[0x80004520]<br>0xffffffff82463ea0|- rs1_val == 0x0005D99A20918FA8 and imm_val == 0x1E #nosat<br>                                                                     |[0x80001668]:roriw<br> [0x8000166c]:sd<br> |
| 164|[0x80004528]<br>0xfffffffff93ff84a|- rs1_val == 0x00032C075F27FF09 and imm_val == 0x1D #nosat<br>                                                                     |[0x80001680]:roriw<br> [0x80001684]:sd<br> |
| 165|[0x80004530]<br>0xfffffffff0ce1c07|- rs1_val == 0x0001BCE703F8670E and imm_val == 0x17 #nosat<br>                                                                     |[0x800016a0]:roriw<br> [0x800016a4]:sd<br> |
| 166|[0x80004538]<br>0x0000000017a46adf|- rs1_val == 0x00009B8B356F8BD2 and imm_val == 0x0F #nosat<br>                                                                     |[0x800016c0]:roriw<br> [0x800016c4]:sd<br> |
| 167|[0x80004540]<br>0xffffffff889651fb|- rs1_val == 0x0000545212CA3F71 and imm_val == 0x05 #nosat<br>                                                                     |[0x800016e0]:roriw<br> [0x800016e4]:sd<br> |
| 168|[0x80004548]<br>0xffffffff8dd9f4d4|- rs1_val == 0x00003090D48DD9F4 and imm_val == 0x18 #nosat<br>                                                                     |[0x80001700]:roriw<br> [0x80001704]:sd<br> |
| 169|[0x80004550]<br>0xffffffff9c2e5013|- rs1_val == 0x00001DD8027385CA and imm_val == 0x15 #nosat<br>                                                                     |[0x80001718]:roriw<br> [0x8000171c]:sd<br> |
| 170|[0x80004558]<br>0x000000001e1c3697|- rs1_val == 0x0000082236971E1C and imm_val == 0x10 #nosat<br>                                                                     |[0x80001730]:roriw<br> [0x80001734]:sd<br> |
| 171|[0x80004560]<br>0xfffffffffb0563c9|- rs1_val == 0x000004440AC793F6 and imm_val == 0x09 #nosat<br>                                                                     |[0x80001748]:roriw<br> [0x8000174c]:sd<br> |
| 172|[0x80004568]<br>0xffffffffabfbbc5b|- rs1_val == 0x000003D5FEEF16EA and imm_val == 0x06 #nosat<br>                                                                     |[0x80001760]:roriw<br> [0x80001764]:sd<br> |
| 173|[0x80004570]<br>0xfffffffff88d799a|- rs1_val == 0x0000010735F11AF3 and imm_val == 0x19 #nosat<br>                                                                     |[0x80001778]:roriw<br> [0x8000177c]:sd<br> |
| 174|[0x80004578]<br>0x000000007fbb4f1c|- rs1_val == 0x000000ACFF769E38 and imm_val == 0x01 #nosat<br>                                                                     |[0x80001790]:roriw<br> [0x80001794]:sd<br> |
| 175|[0x80004580]<br>0x00000000291148a2|- rs1_val == 0x000000764511488A and imm_val == 0x13 #nosat<br>                                                                     |[0x800017a8]:roriw<br> [0x800017ac]:sd<br> |
| 176|[0x80004588]<br>0xfffffffffd74106a|- rs1_val == 0x0000002DFD74106A and imm_val == 0x00 #nosat<br>                                                                     |[0x800017c0]:roriw<br> [0x800017c4]:sd<br> |
| 177|[0x80004590]<br>0x0000000074ddf007|- rs1_val == 0x000000101DD377C0 and imm_val == 0x1A #nosat<br>                                                                     |[0x800017d8]:roriw<br> [0x800017dc]:sd<br> |
| 178|[0x80004598]<br>0x0000000052b08e6b|- rs1_val == 0x0000000A6B52B08E and imm_val == 0x18 #nosat<br>                                                                     |[0x800017f0]:roriw<br> [0x800017f4]:sd<br> |
| 179|[0x800045a0]<br>0xfffffffffbfc3b66|- rs1_val == 0x00000004FC3B66FB and imm_val == 0x08 #nosat<br>                                                                     |[0x80001808]:roriw<br> [0x8000180c]:sd<br> |
| 180|[0x800045a8]<br>0xfffffffffd0728a6|- rs1_val == 0x00000002728A6FD0 and imm_val == 0x0C #nosat<br>                                                                     |[0x80001820]:roriw<br> [0x80001824]:sd<br> |
| 181|[0x800045b0]<br>0x0000000008cae9ca|- rs1_val == 0x00000001AE9CA08C and imm_val == 0x0C #nosat<br>                                                                     |[0x80001838]:roriw<br> [0x8000183c]:sd<br> |
| 182|[0x800045b8]<br>0x0000000043f98133|- rs1_val == 0x00000000CC099A1F and imm_val == 0x0B #nosat<br>                                                                     |[0x80001850]:roriw<br> [0x80001854]:sd<br> |
| 183|[0x800045c0]<br>0x00000000166f9582|- rs1_val == 0x0000000042CDF2B0 and imm_val == 0x1D #nosat<br>                                                                     |[0x80001860]:roriw<br> [0x80001864]:sd<br> |
| 184|[0x800045c8]<br>0x000000006489d3a8|- rs1_val == 0x000000002274EA19 and imm_val == 0x06 #nosat<br>                                                                     |[0x80001870]:roriw<br> [0x80001874]:sd<br> |
| 185|[0x800045d0]<br>0xffffffffca241de2|- rs1_val == 0x00000000120EF165 and imm_val == 0x07 #nosat<br>                                                                     |[0x80001880]:roriw<br> [0x80001884]:sd<br> |
| 186|[0x800045d8]<br>0x0000000049153c83|- rs1_val == 0x000000000D2454F2 and imm_val == 0x1A #nosat<br>                                                                     |[0x80001890]:roriw<br> [0x80001894]:sd<br> |
| 187|[0x800045e0]<br>0xffffffffd37dc0c7|- rs1_val == 0x00000000063E9BEE and imm_val == 0x13 #nosat<br>                                                                     |[0x800018a0]:roriw<br> [0x800018a4]:sd<br> |
| 188|[0x800045e8]<br>0x000000003e6801a6|- rs1_val == 0x00000000034C7CD0 and imm_val == 0x11 #nosat<br>                                                                     |[0x800018b0]:roriw<br> [0x800018b4]:sd<br> |
| 189|[0x800045f0]<br>0x0000000031001777|- rs1_val == 0x0000000001777310 and imm_val == 0x0C #nosat<br>                                                                     |[0x800018c0]:roriw<br> [0x800018c4]:sd<br> |
| 190|[0x800045f8]<br>0x00000000688b0480|- rs1_val == 0x0000000000D11609 and imm_val == 0x19 #nosat<br>                                                                     |[0x800018d0]:roriw<br> [0x800018d4]:sd<br> |
| 191|[0x80004600]<br>0x00000000000d017c|- rs1_val == 0x0000000000680BE0 and imm_val == 0x03 #nosat<br>                                                                     |[0x800018e0]:roriw<br> [0x800018e4]:sd<br> |
| 192|[0x80004608]<br>0x0000000000294b16|- rs1_val == 0x0000000000294B16 and imm_val == 0x00 #nosat<br>                                                                     |[0x800018f0]:roriw<br> [0x800018f4]:sd<br> |
| 193|[0x80004610]<br>0xffffffff8009468d|- rs1_val == 0x0000000000128D1B and imm_val == 0x01 #nosat<br>                                                                     |[0x80001900]:roriw<br> [0x80001904]:sd<br> |
| 194|[0x80004618]<br>0x0000000026848002|- rs1_val == 0x0000000000089A12 and imm_val == 0x12 #nosat<br>                                                                     |[0x80001910]:roriw<br> [0x80001914]:sd<br> |
| 195|[0x80004620]<br>0x000000006c001749|- rs1_val == 0x000000000005D25B and imm_val == 0x06 #nosat<br>                                                                     |[0x80001920]:roriw<br> [0x80001924]:sd<br> |
| 196|[0x80004628]<br>0xffffffffe8b0c000|- rs1_val == 0x000000000003A2C3 and imm_val == 0x12 #nosat<br>                                                                     |[0x80001930]:roriw<br> [0x80001934]:sd<br> |
| 197|[0x80004630]<br>0x00000000102fd000|- rs1_val == 0x00000000000102FD and imm_val == 0x14 #nosat<br>                                                                     |[0x80001940]:roriw<br> [0x80001944]:sd<br> |
| 198|[0x80004638]<br>0xffffffff98000535|- rs1_val == 0x000000000000A6B3 and imm_val == 0x05 #nosat<br>                                                                     |[0x80001950]:roriw<br> [0x80001954]:sd<br> |
| 199|[0x80004640]<br>0x00000000291c0000|- rs1_val == 0x0000000000005238 and imm_val == 0x11 #nosat<br>                                                                     |[0x80001960]:roriw<br> [0x80001964]:sd<br> |
| 200|[0x80004648]<br>0x0000000050000111|- rs1_val == 0x000000000000222A and imm_val == 0x05 #nosat<br>                                                                     |[0x80001970]:roriw<br> [0x80001974]:sd<br> |
| 201|[0x80004650]<br>0x0000000004584000|- rs1_val == 0x0000000000001161 and imm_val == 0x12 #nosat<br>                                                                     |[0x80001980]:roriw<br> [0x80001984]:sd<br> |
| 202|[0x80004658]<br>0xffffffffdb900000|- rs1_val == 0x0000000000000DB9 and imm_val == 0x0C #nosat<br>                                                                     |[0x80001990]:roriw<br> [0x80001994]:sd<br> |
| 203|[0x80004660]<br>0x00000000004c1000|- rs1_val == 0x00000000000004C1 and imm_val == 0x14 #nosat<br>                                                                     |[0x8000199c]:roriw<br> [0x800019a0]:sd<br> |
| 204|[0x80004668]<br>0x00000000000001c8|- rs1_val == 0x0000000000000390 and imm_val == 0x01 #nosat<br>                                                                     |[0x800019a8]:roriw<br> [0x800019ac]:sd<br> |
| 205|[0x80004670]<br>0x000000001d400000|- rs1_val == 0x00000000000001D4 and imm_val == 0x0C #nosat<br>                                                                     |[0x800019b4]:roriw<br> [0x800019b8]:sd<br> |
| 206|[0x80004678]<br>0x000000007000000a|- rs1_val == 0x00000000000000A7 and imm_val == 0x04 #nosat<br>                                                                     |[0x800019c0]:roriw<br> [0x800019c4]:sd<br> |
| 207|[0x80004680]<br>0x000000001e400000|- rs1_val == 0x0000000000000079 and imm_val == 0x0A #nosat<br>                                                                     |[0x800019cc]:roriw<br> [0x800019d0]:sd<br> |
| 208|[0x80004688]<br>0x0000000000001600|- rs1_val == 0x000000000000002C and imm_val == 0x19 #nosat<br>                                                                     |[0x800019d8]:roriw<br> [0x800019dc]:sd<br> |
| 209|[0x80004690]<br>0x0000000040000007|- rs1_val == 0x000000000000001D and imm_val == 0x02 #nosat<br>                                                                     |[0x800019e4]:roriw<br> [0x800019e8]:sd<br> |
| 210|[0x80004698]<br>0x0000000000018000|- rs1_val == 0x000000000000000C and imm_val == 0x13 #nosat<br>                                                                     |[0x800019f0]:roriw<br> [0x800019f4]:sd<br> |
| 211|[0x800046a0]<br>0x0000000000c00000|- rs1_val == 0x0000000000000006 and imm_val == 0x0B #nosat<br>                                                                     |[0x800019fc]:roriw<br> [0x80001a00]:sd<br> |
| 212|[0x800046a8]<br>0x000000000000000c|- rs1_val == 0x0000000000000003 and imm_val == 0x1E #nosat<br>                                                                     |[0x80001a08]:roriw<br> [0x80001a0c]:sd<br> |
| 213|[0x800046b0]<br>0x0000000000100000|- rs1_val == 0x0000000000000001 and imm_val == 0x0C #nosat<br>                                                                     |[0x80001a14]:roriw<br> [0x80001a18]:sd<br> |
| 214|[0x800046b8]<br>0x0000000000000000|- rs1_val == 0x0000000000000000 and imm_val == 0x1D #nosat<br>                                                                     |[0x80001a20]:roriw<br> [0x80001a24]:sd<br> |
| 215|[0x800046c0]<br>0xffffffffcc51a8d9|- imm_val == 0x06 and rs1_val == 0x976AD220146A3673 #nosat<br>                                                                     |[0x80001a48]:roriw<br> [0x80001a4c]:sd<br> |
| 216|[0x800046c8]<br>0x00000000529dc312|- imm_val == 0x14 and rs1_val == 0xFC6113A3312529DC #nosat<br>                                                                     |[0x80001a70]:roriw<br> [0x80001a74]:sd<br> |
| 217|[0x800046d0]<br>0xffffffff8c827f9e|- imm_val == 0x1A and rs1_val == 0x242A809B7A3209FE #nosat<br>                                                                     |[0x80001a98]:roriw<br> [0x80001a9c]:sd<br> |
| 218|[0x800046d8]<br>0x0000000050827332|- imm_val == 0x1D and rs1_val == 0xE380A1764A104E66 #nosat<br>                                                                     |[0x80001ac0]:roriw<br> [0x80001ac4]:sd<br> |
| 219|[0x800046e0]<br>0x0000000051545023|- imm_val == 0x1E and rs1_val == 0xA0E0BD86D4551408 #nosat<br>                                                                     |[0x80001ae8]:roriw<br> [0x80001aec]:sd<br> |
| 220|[0x800046e8]<br>0x0000000010d836f0|- imm_val == 0x1F and rs1_val == 0xAFE08A13086C1B78 #nosat<br>                                                                     |[0x80001b10]:roriw<br> [0x80001b14]:sd<br> |
| 221|[0x800046f0]<br>0xffffffff9213fbd5|- rs1_val == 0x3CC279B3BD59213F and imm_val == 0x14 #nosat<br>                                                                     |[0x80001b38]:roriw<br> [0x80001b3c]:sd<br> |
| 222|[0x800046f8]<br>0xffffffffbcb62f0a|- rs1_val == 0x941060376C5E1579 and imm_val == 0x09 #nosat<br>                                                                     |[0x80001b60]:roriw<br> [0x80001b64]:sd<br> |
| 223|[0x80004700]<br>0x000000002efbf85f|- rs1_val == 0xC9EA3210E5DF7F0B and imm_val == 0x1D #nosat<br>                                                                     |[0x80001b88]:roriw<br> [0x80001b8c]:sd<br> |
| 224|[0x80004708]<br>0xffffffffe0f057dd|- rs1_val == 0xE9E93D5257DDE0F0 and imm_val == 0x10 #nosat<br>                                                                     |[0x80001bb0]:roriw<br> [0x80001bb4]:sd<br> |
| 225|[0x80004710]<br>0x0000000064c47e8c|- rs1_val == 0xF048E341C64C47E8 and imm_val == 0x1C #nosat<br>                                                                     |[0x80001bd8]:roriw<br> [0x80001bdc]:sd<br> |
| 226|[0x80004718]<br>0x0000000075249004|- rs1_val == 0xF969730123A92480 and imm_val == 0x1B #nosat<br>                                                                     |[0x80001c00]:roriw<br> [0x80001c04]:sd<br> |
| 227|[0x80004720]<br>0xffffffffaaba39d1|- rs1_val == 0xFC20CE1CD55D1CE8 and imm_val == 0x1F #nosat<br>                                                                     |[0x80001c28]:roriw<br> [0x80001c2c]:sd<br> |
| 228|[0x80004728]<br>0x0000000037521769|- rs1_val == 0xFED775C526EA42ED and imm_val == 0x1D #nosat<br>                                                                     |[0x80001c48]:roriw<br> [0x80001c4c]:sd<br> |
| 229|[0x80004730]<br>0x00000000206792c9|- rs1_val == 0xFF01DFA30CF25924 and imm_val == 0x05 #nosat<br>                                                                     |[0x80001c68]:roriw<br> [0x80001c6c]:sd<br> |
| 230|[0x80004738]<br>0x0000000017046ab6|- rs1_val == 0xFF912F0A7046AB61 and imm_val == 0x04 #nosat<br>                                                                     |[0x80001c88]:roriw<br> [0x80001c8c]:sd<br> |
| 231|[0x80004740]<br>0xffffffffd43db43f|- rs1_val == 0xFFCA96C9D43DB43F and imm_val == 0x00 #nosat<br>                                                                     |[0x80001ca8]:roriw<br> [0x80001cac]:sd<br> |
| 232|[0x80004748]<br>0x00000000504d6946|- rs1_val == 0xFFEB4B49194135A5 and imm_val == 0x1A #nosat<br>                                                                     |[0x80001cc8]:roriw<br> [0x80001ccc]:sd<br> |
| 233|[0x80004750]<br>0x000000003a63fa4b|- rs1_val == 0xFFF1A2ADB3A63FA4 and imm_val == 0x1C #nosat<br>                                                                     |[0x80001ce8]:roriw<br> [0x80001cec]:sd<br> |
| 234|[0x80004758]<br>0x0000000013cc2ad9|- rs1_val == 0xFFF8306E89E6156C and imm_val == 0x1F #nosat<br>                                                                     |[0x80001d08]:roriw<br> [0x80001d0c]:sd<br> |
| 235|[0x80004760]<br>0x0000000004d1d88b|- rs1_val == 0xFFFDA6CA22C13476 and imm_val == 0x16 #nosat<br>                                                                     |[0x80001d28]:roriw<br> [0x80001d2c]:sd<br> |
| 236|[0x80004768]<br>0x000000004f4819d6|- rs1_val == 0xFFFE03B4AC9E9033 and imm_val == 0x19 #nosat<br>                                                                     |[0x80001d48]:roriw<br> [0x80001d4c]:sd<br> |
| 237|[0x80004770]<br>0x000000002023dd6a|- rs1_val == 0xFFFF3AD31011EEB5 and imm_val == 0x1F #nosat<br>                                                                     |[0x80001d68]:roriw<br> [0x80001d6c]:sd<br> |
| 238|[0x80004778]<br>0x000000000a4bd153|- rs1_val == 0xFFFF90F48525E8A9 and imm_val == 0x1F #nosat<br>                                                                     |[0x80001d88]:roriw<br> [0x80001d8c]:sd<br> |
| 239|[0x80004780]<br>0xffffffffc2f1de3f|- rs1_val == 0xFFFFD6E6BC7F85E3 and imm_val == 0x11 #nosat<br>                                                                     |[0x80001da0]:roriw<br> [0x80001da4]:sd<br> |
| 240|[0x80004788]<br>0xffffffffc0af58c1|- rs1_val == 0xFFFFE7F6AC60E057 and imm_val == 0x0F #nosat<br>                                                                     |[0x80001dc0]:roriw<br> [0x80001dc4]:sd<br> |
| 241|[0x80004790]<br>0xffffffffc7fb0300|- rs1_val == 0xFFFFF12863FD8180 and imm_val == 0x1F #nosat<br>                                                                     |[0x80001dd8]:roriw<br> [0x80001ddc]:sd<br> |
| 242|[0x80004798]<br>0xffffffffc31cacf2|- rs1_val == 0xFFFFFB5472B3CB0C and imm_val == 0x0A #nosat<br>                                                                     |[0x80001df0]:roriw<br> [0x80001df4]:sd<br> |
| 243|[0x800047a0]<br>0xffffffff85223e1c|- rs1_val == 0xFFFFFD8D3E1C8522 and imm_val == 0x10 #nosat<br>                                                                     |[0x80001e08]:roriw<br> [0x80001e0c]:sd<br> |
| 244|[0x800047a8]<br>0x0000000077cdc54e|- rs1_val == 0xFFFFFE8F54E77CDC and imm_val == 0x14 #nosat<br>                                                                     |[0x80001e20]:roriw<br> [0x80001e24]:sd<br> |
| 245|[0x800047b0]<br>0x0000000062ded4de|- rs1_val == 0xFFFFFF048B7B5379 and imm_val == 0x02 #nosat<br>                                                                     |[0x80001e38]:roriw<br> [0x80001e3c]:sd<br> |
| 246|[0x800047b8]<br>0x000000006f4930c9|- rs1_val == 0xFFFFFF856F4930C9 and imm_val == 0x00 #nosat<br>                                                                     |[0x80001e50]:roriw<br> [0x80001e54]:sd<br> |
| 247|[0x800047c0]<br>0xffffffff97467c5d|- rs1_val == 0xFFFFFFDCC5D97467 and imm_val == 0x14 #nosat<br>                                                                     |[0x80001e68]:roriw<br> [0x80001e6c]:sd<br> |
| 248|[0x800047c8]<br>0x000000001c2bf24f|- rs1_val == 0xFFFFFFE5C70AFC93 and imm_val == 0x1E #nosat<br>                                                                     |[0x80001e80]:roriw<br> [0x80001e84]:sd<br> |
| 249|[0x800047d0]<br>0xffffffffabf5222c|- rs1_val == 0xFFFFFFF6A911655F and imm_val == 0x0B #nosat<br>                                                                     |[0x80001e98]:roriw<br> [0x80001e9c]:sd<br> |
| 250|[0x800047d8]<br>0xffffffff8e5d2ac2|- rs1_val == 0xFFFFFFF974AB0A39 and imm_val == 0x0A #nosat<br>                                                                     |[0x80001eb0]:roriw<br> [0x80001eb4]:sd<br> |
| 251|[0x800047e0]<br>0x0000000079016eb4|- rs1_val == 0xFFFFFFFCDD68F202 and imm_val == 0x11 #nosat<br>                                                                     |[0x80001ec8]:roriw<br> [0x80001ecc]:sd<br> |
| 252|[0x800047e8]<br>0x00000000042497a9|- rs1_val == 0xFFFFFFFE24BD4821 and imm_val == 0x0B #nosat<br>                                                                     |[0x80001ee0]:roriw<br> [0x80001ee4]:sd<br> |
| 253|[0x800047f0]<br>0xfffffffff3339f6b|- rs1_val == 0xFFFFFFFF3ED7E667 and imm_val == 0x11 #nosat<br>                                                                     |[0x80001ef8]:roriw<br> [0x80001efc]:sd<br> |
| 254|[0x800047f8]<br>0xffffffff871cfdfb|- rs1_val == 0xFFFFFFFFB871CFDF and imm_val == 0x1C #nosat<br>                                                                     |[0x80001f08]:roriw<br> [0x80001f0c]:sd<br> |
| 255|[0x80004800]<br>0x00000000538235da|- rs1_val == 0xFFFFFFFFD29C11AE and imm_val == 0x1B #nosat<br>                                                                     |[0x80001f18]:roriw<br> [0x80001f1c]:sd<br> |
| 256|[0x80004808]<br>0xffffffff99ae1097|- rs1_val == 0xFFFFFFFFE109799A and imm_val == 0x0C #nosat<br>                                                                     |[0x80001f28]:roriw<br> [0x80001f2c]:sd<br> |
| 257|[0x80004810]<br>0x000000004fd3a02c|- rs1_val == 0xFFFFFFFFF4E80B13 and imm_val == 0x06 #nosat<br>                                                                     |[0x80001f38]:roriw<br> [0x80001f3c]:sd<br> |
| 258|[0x80004818]<br>0x00000000317cdbf5|- rs1_val == 0xFFFFFFFFF9B7EA62 and imm_val == 0x09 #nosat<br>                                                                     |[0x80001f48]:roriw<br> [0x80001f4c]:sd<br> |
| 259|[0x80004820]<br>0xffffffffa3ec71f8|- rs1_val == 0xFFFFFFFFFC51F638 and imm_val == 0x17 #nosat<br>                                                                     |[0x80001f58]:roriw<br> [0x80001f5c]:sd<br> |
| 260|[0x80004828]<br>0x000000007ff4931e|- rs1_val == 0xFFFFFFFFFE9263CF and imm_val == 0x05 #nosat<br>                                                                     |[0x80001f68]:roriw<br> [0x80001f6c]:sd<br> |
| 261|[0x80004830]<br>0x000000003ff21682|- rs1_val == 0xFFFFFFFFFF216823 and imm_val == 0x04 #nosat<br>                                                                     |[0x80001f78]:roriw<br> [0x80001f7c]:sd<br> |
| 262|[0x80004838]<br>0x000000003fe1850e|- rs1_val == 0xFFFFFFFFFF861438 and imm_val == 0x02 #nosat<br>                                                                     |[0x80001f88]:roriw<br> [0x80001f8c]:sd<br> |
| 263|[0x80004840]<br>0xfffffffff632743f|- rs1_val == 0xFFFFFFFFFFD8C9D0 and imm_val == 0x1A #nosat<br>                                                                     |[0x80001f98]:roriw<br> [0x80001f9c]:sd<br> |
| 264|[0x80004848]<br>0x000000005dbff935|- rs1_val == 0xFFFFFFFFFFE4D576 and imm_val == 0x0A #nosat<br>                                                                     |[0x80001fa8]:roriw<br> [0x80001fac]:sd<br> |
| 265|[0x80004850]<br>0x0000000018c67fff|- rs1_val == 0xFFFFFFFFFFF18C67 and imm_val == 0x14 #nosat<br>                                                                     |[0x80001fb8]:roriw<br> [0x80001fbc]:sd<br> |
| 266|[0x80004858]<br>0xffffffff8fffbb99|- rs1_val == 0xFFFFFFFFFFFBB998 and imm_val == 0x04 #nosat<br>                                                                     |[0x80001fc8]:roriw<br> [0x80001fcc]:sd<br> |
| 267|[0x80004860]<br>0xffffffffffc2561f|- rs1_val == 0xFFFFFFFFFFFC2561 and imm_val == 0x1C #nosat<br>                                                                     |[0x80001fd8]:roriw<br> [0x80001fdc]:sd<br> |
| 268|[0x80004868]<br>0xffffffffd56bfffd|- rs1_val == 0xFFFFFFFFFFFEEAB5 and imm_val == 0x0F #nosat<br>                                                                     |[0x80001fe8]:roriw<br> [0x80001fec]:sd<br> |
| 269|[0x80004870]<br>0xffffffffe0ca3fff|- rs1_val == 0xFFFFFFFFFFFF0651 and imm_val == 0x13 #nosat<br>                                                                     |[0x80001ff8]:roriw<br> [0x80001ffc]:sd<br> |
| 270|[0x80004878]<br>0x000000000e4ffff9|- rs1_val == 0xFFFFFFFFFFFF90E4 and imm_val == 0x0C #nosat<br>                                                                     |[0x80002008]:roriw<br> [0x8000200c]:sd<br> |
| 271|[0x80004880]<br>0xffffffffffffca23|- rs1_val == 0xFFFFFFFFFFFFCA23 and imm_val == 0x00 #nosat<br>                                                                     |[0x80002018]:roriw<br> [0x8000201c]:sd<br> |
| 272|[0x80004888]<br>0xffffffffffe2a0ff|- rs1_val == 0xFFFFFFFFFFFFE2A0 and imm_val == 0x18 #nosat<br>                                                                     |[0x80002028]:roriw<br> [0x8000202c]:sd<br> |
| 273|[0x80004890]<br>0xffffffffe599ffff|- rs1_val == 0xFFFFFFFFFFFFF2CC and imm_val == 0x0F #nosat<br>                                                                     |[0x80002038]:roriw<br> [0x8000203c]:sd<br> |
| 274|[0x80004898]<br>0xffffffffb4fffffa|- rs1_val == 0xFFFFFFFFFFFFFAB4 and imm_val == 0x08 #nosat<br>                                                                     |[0x80002044]:roriw<br> [0x80002048]:sd<br> |
| 275|[0x800048a0]<br>0xffffffffff9ddfff|- rs1_val == 0xFFFFFFFFFFFFFCEE and imm_val == 0x13 #nosat<br>                                                                     |[0x80002050]:roriw<br> [0x80002054]:sd<br> |
| 276|[0x800048a8]<br>0xfffffffffe04ffff|- rs1_val == 0xFFFFFFFFFFFFFE04 and imm_val == 0x10 #nosat<br>                                                                     |[0x8000205c]:roriw<br> [0x80002060]:sd<br> |
| 277|[0x800048b0]<br>0xffffffffffff2aff|- rs1_val == 0xFFFFFFFFFFFFFF2A and imm_val == 0x18 #nosat<br>                                                                     |[0x80002068]:roriw<br> [0x8000206c]:sd<br> |
| 278|[0x800048b8]<br>0xffffffff9dffffff|- rs1_val == 0xFFFFFFFFFFFFFF9D and imm_val == 0x08 #nosat<br>                                                                     |[0x80002074]:roriw<br> [0x80002078]:sd<br> |
| 279|[0x800048c0]<br>0xffffffffffff8fff|- rs1_val == 0xFFFFFFFFFFFFFFC7 and imm_val == 0x17 #nosat<br>                                                                     |[0x80002080]:roriw<br> [0x80002084]:sd<br> |
| 280|[0x800048c8]<br>0xffffffffffc9ffff|- rs1_val == 0xFFFFFFFFFFFFFFE4 and imm_val == 0x0F #nosat<br>                                                                     |[0x80002094]:roriw<br> [0x80002098]:sd<br> |
| 281|[0x800048d0]<br>0xffffffffffffffe5|- rs1_val == 0xFFFFFFFFFFFFFFF2 and imm_val == 0x1F #nosat<br>                                                                     |[0x800020a0]:roriw<br> [0x800020a4]:sd<br> |
| 282|[0x800048d8]<br>0xfffffffffe3fffff|- rs1_val == 0xFFFFFFFFFFFFFFF8 and imm_val == 0x0A #nosat<br>                                                                     |[0x800020ac]:roriw<br> [0x800020b0]:sd<br> |
| 283|[0x800048e0]<br>0xfffffffffffffffb|- rs1_val == 0xFFFFFFFFFFFFFFFD and imm_val == 0x1F #nosat<br>                                                                     |[0x800020b8]:roriw<br> [0x800020bc]:sd<br> |
| 284|[0x800048e8]<br>0xfffffffffffffffe|- rs1_val == 0xFFFFFFFFFFFFFFFE and imm_val == 0x00 #nosat<br>                                                                     |[0x800020c4]:roriw<br> [0x800020c8]:sd<br> |
| 285|[0x800048f0]<br>0x0000000000000000|- rs1_val == 0x1E20000000000000 and imm_val == 0x1E #nosat<br>                                                                     |[0x800020d4]:roriw<br> [0x800020d8]:sd<br> |
