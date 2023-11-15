//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Nov  8 19:14:32 2023
//Host        : DESKTOP-CA1TKI1 running 64-bit major release  (build 9200)
//Command     : generate_target RV_RTDS_wrapper.bd
//Design      : RV_RTDS_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module rv_rtds_top(
  //SYS Signals
  input         sys_clock,
  input         reset_rtl,
  //GPIO
  input  [7:0]  gpio_i,
  output [0:0]  gpio_out,
  //LED
  output        neoled_o,
  //OW IF
  output        onewire_o,
  //PWM
  output [3:0]  pwm,
  //SDI
  input         sdi_clk_i,
  input         sdi_csn_i,
  input         sdi_dat_i,
  output        sdi_dat_o,
  //SPI
  output        spi_clk_o,
  output [0:0]  spi_csn0,
  input         spi_dat_i,
  output        spi_dat_o,
  //UART (RS232)
  input         uart0_cts_i,
  output        uart0_rts_o,
  input         uart0_rxd_i,
  output        uart0_txd_o,
  input         uart1_cts_i,
  output        uart1_rts_o,
  input         uart1_rxd_i,
  output        uart1_txd_o,
  //AXIS
  output [31 : 0] s0_axis_tdata  , //
  output          s0_axis_tvalid , //
  input           s0_axis_tready , //
  // Sink --
  input  [31 : 0] s1_axis_tdata  , //
  input           s1_axis_tvalid , //
  output          s1_axis_tready   //
);
  
  localparam CLOCK_FREQUENCY                    = 0,  
  localparam HART_ID                            = 0,
  localparam VENDOR_ID                          = 0,
  localparam INT_BOOTLOADER_EN                  = 1,
  // On-Chip Debugger (OCD)
  localparam ON_CHIP_DEBUGGER_EN                = 0,
  localparam DM_LEGACY_MODE                     = 0,
  // RISC-V CPU Extensions --
  localparam CPU_EXTENSION_RISCV_A              = 0,
  localparam CPU_EXTENSION_RISCV_B              = 0,
  localparam CPU_EXTENSION_RISCV_C              = 0,
  localparam CPU_EXTENSION_RISCV_E              = 0,
  localparam CPU_EXTENSION_RISCV_M              = 0,
  localparam CPU_EXTENSION_RISCV_U              = 0,
  localparam CPU_EXTENSION_RISCV_Zfinx          = 0,
  localparam CPU_EXTENSION_RISCV_Zicntr         = 1,
  localparam CPU_EXTENSION_RISCV_Zihpm          = 0,
  localparam CPU_EXTENSION_RISCV_Zmmul          = 0,
  localparam CPU_EXTENSION_RISCV_Zxcfu          = 0, 
  // Extension Options -- 
  localparam FAST_MUL_EN                        = 0,
  localparam FAST_SHIFT_EN                      = 0,
  // Physical Memory Protection (PMP) --
  localparam PMP_NUM_REGIONS                    = 0,        // number of regions (0..16)
  localparam PMP_MIN_GRANULARITY                = 4,        // minimal region granularity in bytes, has to be a power of 2, min 4 bytes
  // Hardware Performance Monitor        
  localparam HPM_NUM_CNTS                       = 0,        // number of implemented HPM counters (0..29)
  localparam HPM_CNT_WIDTH                      = 40,        // total size of HPM counters (0..64)
  // Atomic Memory Access - Reservation Set Granularity --
  localparam AMO_RVS_GRANULARITY                = 4,        // size in bytes, has to be a power of 2, min 4
  // Internal Instruction memory --
  localparam MEM_INT_IMEM_EN                    = 1,        // implement processor-internal instruction memory
  localparam MEM_INT_IMEM_SIZE                  = 16*1024,        // size of processor-internal instruction memory in bytes
  // Internal Data memory --
  localparam MEM_INT_DMEM_EN                    = 1,        // implement processor-internal data memory
  localparam MEM_INT_DMEM_SIZE                  = 8*1024,        // size of processor-internal data memory in bytes
  // Internal Cache memory --
  localparam ICACHE_EN                          = 0,        // implement instruction cache
  localparam ICACHE_NUM_BLOCKS                  = 4,        // i-cache: number of blocks (min 1), has to be a power of 2
  localparam ICACHE_BLOCK_SIZE                  = 64,        // i-cache: block size in bytes (min 4), has to be a power of 2
  localparam ICACHE_ASSOCIATIVITY               = 1,        // i-cache: associativity / number of sets (1=direct_mapped), has to be a power of 2
  // Internal Data Cache (dCACHE) --
  localparam DCACHE_EN                          = 0,        // implement data cache
  localparam DCACHE_NUM_BLOCKS                  = 4,        // d-cache: number of blocks (min 1), has to be a power of 2
  localparam DCACHE_BLOCK_SIZE                  = 64,        // d-cache: block size in bytes (min 4), has to be a power of 2
  // External Interrupts Controller (XIRQ) --
  localparam XIRQ_NUM_CH                        = 0,        // number of external IRQ channels (0..32)
  localparam XIRQ_TRIGGER_TYPE                  = 'hFFFFFFFF,        // trigger type: 0=level, 1=edge
  localparam XIRQ_TRIGGER_POLARITY              = 'hFFFFFFFF,        // trigger polarity: 0=low-level/falling-edge, 1=high-level/rising-edge
  // Processor peripherals --
  localparam IO_GPIO_NUM                        = 0,            // number of GPIO input/output pairs (0..64)
  localparam IO_MTIME_EN                        = 1,            // implement machine system timer (MTIME)?
  localparam IO_UART0_EN                        = 1,            // implement primary universal asynchronous receiver/transmitter (UART0)?
  localparam IO_UART0_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  localparam IO_UART0_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  localparam IO_UART1_EN                        = 1,            // implement secondary universal asynchronous receiver/transmitter (UART1)?
  localparam IO_UART1_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  localparam IO_UART1_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  localparam IO_SPI_EN                          = 1,            // implement serial peripheral interface (SPI)?
  localparam IO_SPI_FIFO                        = 1,            // SPI RTX fifo depth, has to be a power of two, min 1
  localparam IO_SDI_EN                          = 0,            // implement serial data interface (SDI)?
  localparam IO_SDI_FIFO                        = 1,            // RTX fifo depth, has to be zero or a power of two, min 1
  localparam IO_TWI_EN                          = 1,            // implement two-wire interface (TWI)?
  localparam IO_PWM_NUM_CH                      = 0,            // number of PWM channels to implement (0..12); 0 = disabled
  localparam IO_WDT_EN                          = 1,            // implement watch dog timer (WDT)?
  localparam IO_TRNG_EN                         = 1,            // implement true random number generator (TRNG)?
  localparam IO_TRNG_FIFO                       = 1,            // TRNG fifo depth, has to be a power of two, min 1
  localparam IO_CFS_EN                          = 0,            // implement custom functions subsystem (CFS)?
  localparam IO_CFS_CONFIG                      = 0,            // custom CFS configuration generic
  localparam IO_CFS_IN_SIZE                     = 32,            // size of CFS input conduit in bits
  localparam IO_CFS_OUT_SIZE                    = 32,            // size of CFS output conduit in bits
  localparam IO_NEOLED_EN                       = 1,            // implement NeoPixel-compatible smart LED interface (NEOLED)?
  localparam IO_NEOLED_TX_FIFO                  = 1,            // NEOLED TX FIFO depth, 1..32k, has to be a power of two
  localparam IO_GPTMR_EN                        = 0,            // implement general purpose timer (GPTMR)?
  localparam IO_XIP_EN                          = 0,            // implement execute in place module (XIP)?
  localparam IO_ONEWIRE_EN                      = 0,            // implement 1-wire interface (ONEWIRE)?
  localparam IO_DMA_EN                          = 0,            // implement direct memory access controller (DMA)?
  localparam IO_SLINK_EN                        = 0,            // implement stream link interface (SLINK)?
  localparam IO_SLINK_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  localparam IO_SLINK_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  localparam IO_CRC_EN                          = 0             // implement cyclic redundancy check unit (CRC)?
  // ------------------------------------------------------------
    // AXI4-Lite-Compatible Master Interface --
    // ------------------------------------------------------------
    // Clock and Reset --
    wire m_axi_aclk,    //
    wire m_axi_aresetn, //
    // Write Addre
    wire [31 : 0] m_axi_awaddr ; //
    wire [2  : 0] m_axi_awprot ; //
    wire          m_axi_awvalid; //
    wire          m_axi_awready; //
    // Write Data Channel --
    wire [31 : 0] m_axi_wdata  ; //
    wire [3  : 0] m_axi_wstrb  ; //
    wire          m_axi_wvalid ; //
    wire          m_axi_wready ; //
    // Read Address Channel --
    wire [31 : 0] m_axi_araddr  ; //
    wire [2  : 0] m_axi_arprot  ; //
    wire          m_axi_arvalid ; //
    wire          m_axi_arready ; //
    // Read Data Channel --
    wire [31 : 0] m_axi_rdata  ; //
    wire [1 :  0] m_axi_rresp  ; //
    wire          m_axi_rvalid ; //
    wire          m_axi_rready ; //
    // Write Response Channel --
    wire [1  : 0] m_axi_bresp  ; //
    wire          m_axi_bvalid ; //
    wire          m_axi_bready ; //
    // ------------------------------------------------------------
    // AXI4-Stream-Compatible Interface --
    // ------------------------------------------------------------
    // Source --
    wire [31 : 0] s0_axis_tdata  ; //
    wire          s0_axis_tvalid ; //
    wire          s0_axis_tready ; //
    // Sink --
    wire [31 : 0] s1_axis_tdata  ; //
    wire          s1_axis_tvalid ; //
    wire          s1_axis_tready ; //
    // ------------------------------------------------------------
    // JTAG on-chip debugger interface (available if ON_CHIP_DEBUGGER_EN = true) --
    // ------------------------------------------------------------
    wire jtag_trst_i   ;  // low-active TAP reset (optional)
    wire jtag_tck_i    ;  // serial clock
    wire jtag_tdi_i    ;  // serial data input
    wire jtag_tdo_o    ;  // serial data output
    wire jtag_tms_i    ;  // mode select
    // ------------------------------------------------------------
    // Processor IO --
    // ------------------------------------------------------------
    // XIP (execute in place via SPI) signals (available if IO_XIP_EN = true) --
    wire xip_csn_o     ;  // chip-select, low-active
    wire xip_clk_o     ;  // serial clock
    wire xip_dat_i     ;  // device data input
    wire xip_dat_o     ;  // controller data output
    // GPIO (available if IO_GPIO_EN = true) --
    wire [31 : 0] gpio_o ;  // parallel output
    wire [31 : 0] gpio_i ;  // parallel input
    // primary UART0 (available if IO_UART0_EN = true) --
    wire uart0_txd_o   ;  // UART0 send data
    wire uart0_rxd_i   ;  // UART0 receive data
    wire uart0_rts_o   ;  // HW flow control: UART0.RX ready to receive ("RTR"), low-active, optional
    wire uart0_cts_i   ;  // HW flow control: UART0.TX allowed to transmit, low-active, optional
    // secondary UART1 (available if IO_UART1_EN = true) --
    wire uart1_txd_o   ;  // UART1 send data
    wire uart1_rxd_i   ;  // UART1 receive data
    wire uart1_rts_o   ;  // HW flow control: UART1.RX ready to receive ("RTR"), low-active, optional
    wire uart1_cts_i   ;  // HW flow control: UART1.TX allowed to transmit, low-active, optional
    // SPI (available if IO_SPI_EN = true) --
    wire spi_clk_o     ;  // SPI serial clock
    wire spi_dat_o     ;  // controller data out, peripheral data in
    wire spi_dat_i     ;  // controller data in, peripheral data out
    wire spi_csn_o     ;  // SPI CS
    // SDI (available if IO_SDI_EN = true) --
    wire  sdi_clk_i    ;  // SDI serial clock
    wire sdi_dat_o     ;  // controller data out, peripheral data in
    wire sdi_dat_i     ;  // controller data in, peripheral data out
    wire sdi_csn_i     ;  // chip-select
    // TWI (available if IO_TWI_EN = true) --
    wire twi_sda_i     ;  // serial data line sense input
    wire twi_sda_o     ;  // serial data line output (pull low only)
    wire twi_scl_i     ;  // serial clock line sense input
    wire twi_scl_o     ;  // serial clock line output (pull low only)
    // 1-Wire Interface (available if IO_ONEWIRE_EN = true) --
    wire onewire_i     ,  // 1-wire bus sense input
    wire onewire_o     ;  // 1-wire bus output (pull low only)
    // PWM (available if IO_PWM_NUM_CH > 0) --
    wire pwm_o         ;  // pwm channels
    // Custom Functions Subsystem IO (available if IO_CFS_EN = true) --
    wire  cfs_in_i     ;  // custom inputs
    wire cfs_out_o     ;  // custom outputs
    // NeoPixel-compatible smart LED interface (available if IO_NEOLED_EN = true) --
    wire neoled_o      ;  // async serial data line
    // External platform interrupts (available if XIRQ_NUM_CH > 0) --
    wire  xirq_i        ;  // IRQ channels
    // CPU Interrupts --
    wire        mtime_irq_i   ;  // machine timer interrupt, available if IO_MTIME_EN = false
    wire        msw_irq_i     ;  // machine software interrupt
    wire        mext_irq_i    ;  // machine external interrupt
    wire [7:0]  gpio_i;
    wire [0:0]  gpio_out;
    wire        neoled_o;
    wire        onewire_o;
    wire [3:0]  pwm;
    wire        reset_rtl;
    wire        sdi_clk_i;
    wire        sdi_csn_i;
    wire        sdi_dat_i;
    wire        sdi_dat_o;
    wire        spi_clk_o;
    wire [0:0]  spi_csn0;
    wire        spi_dat_i;
    wire        spi_dat_o;
    wire        sys_clock;
    wire        uart0_cts_i;
    wire        uart0_rxd_i;
    wire        uart0_txd_o;
    wire        uart1_cts_i;
    wire        uart1_rts_o;
    wire        uart1_rxd_i;
    wire        uart1_txd_o;

  neorv32_integration_top #(
    .CLOCK_FREQUENCY                (CLOCK_FREQUENCY        ),      // clock frequency of clk_i in Hz
    .HART_ID                        (HART_ID                ),      // hardware thread ID
    .VENDOR_ID                      (VENDOR_ID              ),      // vendor's JEDEC ID
    .INT_BOOTLOADER_EN              (INT_BOOTLOADER_EN      ),      // boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    //On-Chip Debugger (OCD) 
    .ON_CHIP_DEBUGGER_EN            (ON_CHIP_DEBUGGER_EN    ),       // implement on-chip debugger
    .DM_LEGACY_MODE                 (DM_LEGACY_MODE         ),       // debug module spec version: false = v1.0, true = v0.13
    // RISC-V CPU Extensions --
    .CPU_EXTENSION_RISCV_A          (CPU_EXTENSION_RISCV_A  ),       // implement atomic memory operations extension?
    .CPU_EXTENSION_RISCV_B          (CPU_EXTENSION_RISCV_B  ),       // implement bit-manipulation extension?
    .CPU_EXTENSION_RISCV_C          (CPU_EXTENSION_RISCV_C  ),       // implement compressed extension?
    .CPU_EXTENSION_RISCV_E          (CPU_EXTENSION_RISCV_E  ),       // implement embedded RF extension?
    .CPU_EXTENSION_RISCV_M          (CPU_EXTENSION_RISCV_M  ),       // implement muld/div extension?
    .CPU_EXTENSION_RISCV_U          (CPU_EXTENSION_RISCV_U      ),   // implement user mode extension?
    .CPU_EXTENSION_RISCV_Zfinx      (CPU_EXTENSION_RISCV_Zfinx  ),   // implement 32-bit floating-point extension (using INT reg!)
    .CPU_EXTENSION_RISCV_Zicntr     (CPU_EXTENSION_RISCV_Zicntr ),   // implement base counters?
    .CPU_EXTENSION_RISCV_Zihpm      (CPU_EXTENSION_RISCV_Zihpm  ),   // implement hardware performance monitors?
    .CPU_EXTENSION_RISCV_Zmmul      (CPU_EXTENSION_RISCV_Zmmul  ),   // implement multiply-only M sub-extension?
    .CPU_EXTENSION_RISCV_Zxcfu      (CPU_EXTENSION_RISCV_Zxcfu  ),   // implement custom (instr.) functions unit?
    // Extension Options --
    .FAST_MUL_EN            (FAST_MUL_EN            ),        // use DSPs for M extension's multiplier
    .FAST_SHIFT_EN          (FAST_SHIFT_EN          ),        // use barrel shifter for shift operations
    // Physical Memory Protection (PMP) --
    .PMP_NUM_REGIONS        (PMP_NUM_REGIONS        ),        // number of regions (0..16)
    .PMP_MIN_GRANULARITY    (PMP_MIN_GRANULARITY    ),        // minimal region granularity in bytes, has to be a power of 2, min 4 bytes
    // Hardware Performance Monitors (HPM) --
    .HPM_NUM_CNTS           (HPM_NUM_CNTS           ),        // number of implemented HPM counters (0..29)
    .HPM_CNT_WIDTH          (HPM_CNT_WIDTH          ),        // total size of HPM counters (0..64)
    // Atomic Memory Access - Reservation Set Granularity --
    .AMO_RVS_GRANULARITY    (AMO_RVS_GRANULARITY    ),        // size in bytes, has to be a power of 2, min 4
    // Internal Instruction memory --
    .MEM_INT_IMEM_EN        (MEM_INT_IMEM_EN        ),        // implement processor-internal instruction memory
    .MEM_INT_IMEM_SIZE      (MEM_INT_IMEM_SIZE      ),        // size of processor-internal instruction memory in bytes
    // Internal Data memory --
    .MEM_INT_DMEM_EN        (MEM_INT_DMEM_EN        ),        // implement processor-internal data memory
    .MEM_INT_DMEM_SIZE      (MEM_INT_DMEM_SIZE      ),        // size of processor-internal data memory in bytes
    // Internal Cache memory --
    .ICACHE_EN              (ICACHE_EN              ),        // implement instruction cache
    .ICACHE_NUM_BLOCKS      (ICACHE_NUM_BLOCKS      ),        // i-cache: number of blocks (min 1), has to be a power of 2
    .ICACHE_BLOCK_SIZE      (ICACHE_BLOCK_SIZE      ),        // i-cache: block size in bytes (min 4), has to be a power of 2
    .ICACHE_ASSOCIATIVITY   (ICACHE_ASSOCIATIVITY   ),        // i-cache: associativity / number of sets (1=direct_mapped), has to be a power of 2
    // Internal Data Cache (dCACHE) --
    .DCACHE_EN              (DCACHE_EN              ),        // implement data cache
    .DCACHE_NUM_BLOCKS      (DCACHE_NUM_BLOCKS      ),        // d-cache: number of blocks (min 1), has to be a power of 2
    .DCACHE_BLOCK_SIZE      (DCACHE_BLOCK_SIZE      ),        // d-cache: block size in bytes (min 4), has to be a power of 2
    // External Interrupts Controller (XIRQ) --
    .XIRQ_NUM_CH            (XIRQ_NUM_CH            ),        // number of external IRQ channels (0..32)
    .XIRQ_TRIGGER_TYPE      (XIRQ_TRIGGER_TYPE      ),        // trigger type: 0=level, 1=edge
    .XIRQ_TRIGGER_POLARITY  (XIRQ_TRIGGER_POLARITY  ),        // trigger polarity: 0=low-level/falling-edge, 1=high-level/rising-edge
    // Processor peripherals --
    .IO_GPIO_NUM      (IO_GPIO_NUM      ),            // number of GPIO input/output pairs (0..64)
    .IO_MTIME_EN      (IO_MTIME_EN      ),            // implement machine system timer (MTIME)?
    .IO_UART0_EN      (IO_UART0_EN      ),            // implement primary universal asynchronous receiver/transmitter (UART0)?
    .IO_UART0_RX_FIFO (IO_UART0_RX_FIFO ),            // RX fifo depth, has to be a power of two, min 1
    .IO_UART0_TX_FIFO (IO_UART0_TX_FIFO ),            // TX fifo depth, has to be a power of two, min 1
    .IO_UART1_EN      (IO_UART1_EN      ),            // implement secondary universal asynchronous receiver/transmitter (UART1)?
    .IO_UART1_RX_FIFO (IO_UART1_RX_FIFO ),            // RX fifo depth, has to be a power of two, min 1
    .IO_UART1_TX_FIFO (IO_UART1_TX_FIFO ),            // TX fifo depth, has to be a power of two, min 1
    .IO_SPI_EN        (IO_SPI_EN        ),            // implement serial peripheral interface (SPI)?
    .IO_SPI_FIFO      (IO_SPI_FIFO      ),            // SPI RTX fifo depth, has to be a power of two, min 1
    .IO_SDI_EN        (IO_SDI_EN        ),            // implement serial data interface (SDI)?
    .IO_SDI_FIFO      (IO_SDI_FIFO      ),            // RTX fifo depth, has to be zero or a power of two, min 1
    .IO_TWI_EN        (IO_TWI_EN        ),            // implement two-wire interface (TWI)?
    .IO_PWM_NUM_CH    (IO_PWM_NUM_CH    ),            // number of PWM channels to implement (0..12); 0 = disabled
    .IO_WDT_EN        (IO_WDT_EN        ),            // implement watch dog timer (WDT)?
    .IO_TRNG_EN       (IO_TRNG_EN       ),            // implement true random number generator (TRNG)?
    .IO_TRNG_FIFO     (IO_TRNG_FIFO     ),            // TRNG fifo depth, has to be a power of two, min 1
    .IO_CFS_EN        (IO_CFS_EN        ),            // implement custom functions subsystem (CFS)?
    .IO_CFS_CONFIG    (IO_CFS_CONFIG    ),            // custom CFS configuration generic
    .IO_CFS_IN_SIZE   (IO_CFS_IN_SIZE   ),            // size of CFS input conduit in bits
    .IO_CFS_OUT_SIZE  (IO_CFS_OUT_SIZE  ),            // size of CFS output conduit in bits
    .IO_NEOLED_EN     (IO_NEOLED_EN     ),            // implement NeoPixel-compatible smart LED interface (NEOLED)?
    .IO_NEOLED_TX_FIFO(IO_NEOLED_TX_FIFO),            // NEOLED TX FIFO depth, 1..32k, has to be a power of two
    .IO_GPTMR_EN      (IO_GPTMR_EN      ),            // implement general purpose timer (GPTMR)?
    .IO_XIP_EN        (IO_XIP_EN        ),            // implement execute in place module (XIP)?
    .IO_ONEWIRE_EN    (IO_ONEWIRE_EN    ),            // implement 1-wire interface (ONEWIRE)?
    .IO_DMA_EN        (IO_DMA_EN        ),            // implement direct memory access controller (DMA)?
    .IO_SLINK_EN      (IO_SLINK_EN      ),            // implement stream link interface (SLINK)?
    .IO_SLINK_RX_FIFO (IO_SLINK_RX_FIFO ),            // RX fifo depth, has to be a power of two, min 1
    .IO_SLINK_TX_FIFO (IO_SLINK_TX_FIFO ),            // TX fifo depth, has to be a power of two, min 1
    .IO_CRC_EN        (IO_CRC_EN        )             // implement cyclic redundancy check unit (CRC)?
  ) rv_top_i (
    // ------------------------------------------------------------
    // AXI4-Lite-Compatible Master Interface --
    // ------------------------------------------------------------
    // Clock and Reset --
    .m_axi_aclk    (m_axi_aclk   ), //
    .m_axi_aresetn (m_axi_aresetn), //
    // Write Address Channel --
    .m_axi_awaddr  (m_axi_awaddr ), //
    .m_axi_awprot  (m_axi_awprot ), //
    .m_axi_awvalid (m_axi_awvalid), //
    .m_axi_awready (m_axi_awready), //
    // Write Data Channel --
    .m_axi_wdata   (m_axi_wdata  ), //
    .m_axi_wstrb   (m_axi_wstrb  ), //
    .m_axi_wvalid  (m_axi_wvalid ), //
    .m_axi_wready  (m_axi_wready ), //
    // Read Address Channel --
    .m_axi_araddr  (m_axi_araddr ), //
    .m_axi_arprot  (m_axi_arprot ), //
    .m_axi_arvalid (m_axi_arvalid), //
    .m_axi_arready (m_axi_arready), //
    // Read Data Channel --
    .m_axi_rdata   (m_axi_rdata  ), //
    .m_axi_rresp   (m_axi_rresp  ), //
    .m_axi_rvalid  (m_axi_rvalid ), //
    .m_axi_rready  (m_axi_rready ), //
    // Write Response Channel --
    .m_axi_bresp   (m_axi_bresp  ), //
    .m_axi_bvalid  (m_axi_bvalid ), //
    .m_axi_bready  (m_axi_bready ), //
    // ------------------------------------------------------------
    // AXI4-Stream-Compatible Interface --
    // ------------------------------------------------------------
    // Source --
    .s0_axis_tdata (s0_axis_tdata ), //
    .s0_axis_tvalid(s0_axis_tvalid), //
    .s0_axis_tready(s0_axis_tready), //
    // Sink --
    .s1_axis_tdata (s1_axis_tdata ), //
    .s1_axis_tvalid(s1_axis_tvalid), //
    .s1_axis_tready(s1_axis_tready), //
    // ------------------------------------------------------------
    // JTAG on-chip debugger interface (available if ON_CHIP_DEBUGGER_EN = true) --
    // ------------------------------------------------------------
    .jtag_trst_i   (jtag_trst_i   ),  // low-active TAP reset (optional)
    .jtag_tck_i    (jtag_tck_i    ),  // serial clock
    .jtag_tdi_i    (jtag_tdi_i    ),  // serial data input
    .jtag_tdo_o    (jtag_tdo_o    ),  // serial data output
    .jtag_tms_i    (jtag_tms_i    ),  // mode select
    // ------------------------------------------------------------
    // Processor IO --
    // ------------------------------------------------------------
    // XIP (execute in place via SPI) signals (available if IO_XIP_EN = true) --
    .xip_csn_o     (xip_csn_o     ),  // chip-select, low-active
    .xip_clk_o     (xip_clk_o     ),  // serial clock
    .xip_dat_i     (xip_dat_i     ),  // device data input
    .xip_dat_o     (xip_dat_o     ),  // controller data output
    // GPIO (available if IO_GPIO_EN = true) --
    .gpio_o        ({32'd0,gpio_o}),  // /63/|000.../31/|gpio|/0/ - parallel output
    .gpio_i        ({32'd0,gpio_i}),  // /63/|000.../31/|gpio|/0/ - parallel input
    // primary UART0 (available if IO_UART0_EN = true) --
    .uart0_txd_o   (uart0_txd_o   ),  // UART0 send data
    .uart0_rxd_i   (uart0_rxd_i   ),  // UART0 receive data
    .uart0_rts_o   (uart0_rts_o   ),  // HW flow control: UART0.RX ready to receive ("RTR"), low-active, optional
    .uart0_cts_i   (uart0_cts_i   ),  // HW flow control: UART0.TX allowed to transmit, low-active, optional
    // secondary UART1 (available if IO_UART1_EN = true) --
    .uart1_txd_o   (uart1_txd_o   ),  // UART1 send data
    .uart1_rxd_i   (uart1_rxd_i   ),  // UART1 receive data
    .uart1_rts_o   (uart1_rts_o   ),  // HW flow control: UART1.RX ready to receive ("RTR"), low-active, optional
    .uart1_cts_i   (uart1_cts_i   ),  // HW flow control: UART1.TX allowed to transmit, low-active, optional
    // SPI (available if IO_SPI_EN = true) --
    .spi_clk_o     (spi_clk_o     ),  // SPI serial clock
    .spi_dat_o     (spi_dat_o     ),  // controller data out, peripheral data in
    .spi_dat_i     (spi_dat_i     ),  // controller data in, peripheral data out
    .spi_csn_o     (spi_csn_o     ),  // SPI CS
    // SDI (available if IO_SDI_EN = true) --
    .sdi_clk_i     (sdi_clk_i     ),  // SDI serial clock
    .sdi_dat_o     (sdi_dat_o     ),  // controller data out, peripheral data in
    .sdi_dat_i     (sdi_dat_i     ),  // controller data in, peripheral data out
    .sdi_csn_i     (sdi_csn_i     ),  // chip-select
    // TWI (available if IO_TWI_EN = true) --
    .twi_sda_i     (twi_sda_i     ),  // serial data line sense input
    .twi_sda_o     (twi_sda_o     ),  // serial data line output (pull low only)
    .twi_scl_i     (twi_scl_i     ),  // serial clock line sense input
    .twi_scl_o     (twi_scl_o     ),  // serial clock line output (pull low only)
    // 1-Wire Interface (available if IO_ONEWIRE_EN = true) --
    .onewire_i     (onewire_i     ),  // 1-wire bus sense input
    .onewire_o     (onewire_o     ),  // 1-wire bus output (pull low only)
    // PWM (available if IO_PWM_NUM_CH > 0) --
    .pwm_o         (pwm_o         ),  // pwm channels
    // Custom Functions Subsystem IO (available if IO_CFS_EN = true) --
    .cfs_in_i      (cfs_in_i      ),  // custom inputs
    .cfs_out_o     (cfs_out_o     ),  // custom outputs
    // NeoPixel-compatible smart LED interface (available if IO_NEOLED_EN = true) --
    .neoled_o      (neoled_o      ),  // async serial data line
    // External platform interrupts (available if XIRQ_NUM_CH > 0) --
    .xirq_i        (xirq_i        ),  // IRQ channels
    // CPU Interrupts --
    .mtime_irq_i   (mtime_irq_i   ),  // machine timer interrupt, available if IO_MTIME_EN = false
    .msw_irq_i     (msw_irq_i     ),  // machine software interrupt
    .mext_irq_i    (mext_irq_i    )   // machine external interrupt
  );

  RV_RTDS_wrapper RV_RTDS_wrapper_i
    (.gpio_i       (gpio_i),
     .gpio_out     (gpio_out),
     .neoled_o     (neoled_o),
     .onewire_o    (onewire_o),
     .pwm          (pwm),
     .reset_rtl    (reset_rtl),
     .sdi_clk_i    (sdi_clk_i),
     .sdi_csn_i    (sdi_csn_i),
     .sdi_dat_i    (sdi_dat_i),
     .sdi_dat_o    (sdi_dat_o),
     .spi_clk_o    (spi_clk_o),
     .spi_csn0     (spi_csn0),
     .spi_dat_i    (spi_dat_i),
     .spi_dat_o    (spi_dat_o),
     .sys_clock    (sys_clock),
     .uart0_cts_i  (uart0_cts_i),
     .uart0_rts_o  (uart0_rts_o),
     .uart0_rxd_i  (uart0_rxd_i),
     .uart0_txd_o  (uart0_txd_o),
     .uart1_cts_i  (uart1_cts_i),
     .uart1_rts_o  (uart1_rts_o),
     .uart1_rxd_i  (uart1_rxd_i),
     .uart1_txd_o  (uart1_txd_o)
  );


endmodule : rv_rtds_top
