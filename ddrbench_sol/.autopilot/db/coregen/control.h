// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of mem
//        bit 31~0 - mem[31:0] (Read/Write)
// 0x14 : Data signal of mem
//        bit 31~0 - mem[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of dataNum
//        bit 31~0 - dataNum[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of rw
//        bit 0  - rw[0] (Read/Write)
//        others - reserved
// 0x28 : reserved
// 0x2c : Data signal of res
//        bit 31~0 - res[31:0] (Read/Write)
// 0x30 : Data signal of res
//        bit 31~0 - res[63:32] (Read/Write)
// 0x34 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL      0x00
#define CONTROL_ADDR_GIE          0x04
#define CONTROL_ADDR_IER          0x08
#define CONTROL_ADDR_ISR          0x0c
#define CONTROL_ADDR_MEM_DATA     0x10
#define CONTROL_BITS_MEM_DATA     64
#define CONTROL_ADDR_DATANUM_DATA 0x1c
#define CONTROL_BITS_DATANUM_DATA 32
#define CONTROL_ADDR_RW_DATA      0x24
#define CONTROL_BITS_RW_DATA      1
#define CONTROL_ADDR_RES_DATA     0x2c
#define CONTROL_BITS_RES_DATA     64
