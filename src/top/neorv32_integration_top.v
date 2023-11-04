module neorv32_integration_top #(
  parameter CLOCK_FREQUENCY                    = 0,  
  parameter HART_ID                            = 0,
  parameter VENDOR_ID                          = 0,
  parameter INT_BOOTLOADER_EN                  = 1,
  // On-Chip Debugger (OCD)
  parameter ON_CHIP_DEBUGGER_EN                = 0,
  parameter DM_LEGACY_MODE                     = 0,
  // RISC-V CPU Extensions --
  parameter CPU_EXTENSION_RISCV_A              = 0,
  parameter CPU_EXTENSION_RISCV_B              = 0,
  parameter CPU_EXTENSION_RISCV_C              = 0,
  parameter CPU_EXTENSION_RISCV_E              = 0,
  parameter CPU_EXTENSION_RISCV_M              = 0,
  parameter CPU_EXTENSION_RISCV_U              = 0,
  parameter CPU_EXTENSION_RISCV_Zfinx          = 0,
  parameter CPU_EXTENSION_RISCV_Zicntr         = 1,
  parameter CPU_EXTENSION_RISCV_Zihpm          = 0,
  parameter CPU_EXTENSION_RISCV_Zmmul          = 0,
  parameter CPU_EXTENSION_RISCV_Zxcfu          = 0, 
  // Extension Options -- 
  parameter FAST_MUL_EN                        = 0,
  parameter FAST_SHIFT_EN                      = 0,
  // Physical Memory Protection (PMP) --
  parameter PMP_NUM_REGIONS                    = 0,        // number of regions (0..16)
  parameter PMP_MIN_GRANULARITY                = 4,        // minimal region granularity in bytes, has to be a power of 2, min 4 bytes
  // Hardware Performance Monitor        
  parameter HPM_NUM_CNTS                       = 0,        // number of implemented HPM counters (0..29)
  parameter HPM_CNT_WIDTH                      = 40,        // total size of HPM counters (0..64)
  // Atomic Memory Access - Reservation Set Granularity --
  parameter AMO_RVS_GRANULARITY                = 4,        // size in bytes, has to be a power of 2, min 4
  // Internal Instruction memory --
  parameter MEM_INT_IMEM_EN                    = 1,        // implement processor-internal instruction memory
  parameter MEM_INT_IMEM_SIZE                  = 16*1024,        // size of processor-internal instruction memory in bytes
  // Internal Data memory --
  parameter MEM_INT_DMEM_EN                    = 1,        // implement processor-internal data memory
  parameter MEM_INT_DMEM_SIZE                  = 8*1024,        // size of processor-internal data memory in bytes
  // Internal Cache memory --
  parameter ICACHE_EN                          = 0,        // implement instruction cache
  parameter ICACHE_NUM_BLOCKS                  = 4,        // i-cache: number of blocks (min 1), has to be a power of 2
  parameter ICACHE_BLOCK_SIZE                  = 64,        // i-cache: block size in bytes (min 4), has to be a power of 2
  parameter ICACHE_ASSOCIATIVITY               = 1,        // i-cache: associativity / number of sets (1=direct_mapped), has to be a power of 2
  // Internal Data Cache (dCACHE) --
  parameter DCACHE_EN                          = 0,        // implement data cache
  parameter DCACHE_NUM_BLOCKS                  = 4,        // d-cache: number of blocks (min 1), has to be a power of 2
  parameter DCACHE_BLOCK_SIZE                  = 64,        // d-cache: block size in bytes (min 4), has to be a power of 2
  // External Interrupts Controller (XIRQ) --
  parameter XIRQ_NUM_CH                        = 0,        // number of external IRQ channels (0..32)
  parameter XIRQ_TRIGGER_TYPE                  = 'hFFFFFFFF,        // trigger type: 0=level, 1=edge
  parameter XIRQ_TRIGGER_POLARITY              = 'hFFFFFFFF,        // trigger polarity: 0=low-level/falling-edge, 1=high-level/rising-edge
  // Processor peripherals --
  parameter IO_GPIO_NUM                        = 0,            // number of GPIO input/output pairs (0..64)
  parameter IO_MTIME_EN                        = 1,            // implement machine system timer (MTIME)?
  parameter IO_UART0_EN                        = 1,            // implement primary universal asynchronous receiver/transmitter (UART0)?
  parameter IO_UART0_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  parameter IO_UART0_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  parameter IO_UART1_EN                        = 1,            // implement secondary universal asynchronous receiver/transmitter (UART1)?
  parameter IO_UART1_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  parameter IO_UART1_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  parameter IO_SPI_EN                          = 1,            // implement serial peripheral interface (SPI)?
  parameter IO_SPI_FIFO                        = 1,            // SPI RTX fifo depth, has to be a power of two, min 1
  parameter IO_SDI_EN                          = 0,            // implement serial data interface (SDI)?
  parameter IO_SDI_FIFO                        = 1,            // RTX fifo depth, has to be zero or a power of two, min 1
  parameter IO_TWI_EN                          = 1,            // implement two-wire interface (TWI)?
  parameter IO_PWM_NUM_CH                      = 0,            // number of PWM channels to implement (0..12); 0 = disabled
  parameter IO_WDT_EN                          = 1,            // implement watch dog timer (WDT)?
  parameter IO_TRNG_EN                         = 1,            // implement true random number generator (TRNG)?
  parameter IO_TRNG_FIFO                       = 1,            // TRNG fifo depth, has to be a power of two, min 1
  parameter IO_CFS_EN                          = 0,            // implement custom functions subsystem (CFS)?
  parameter IO_CFS_CONFIG                      = 0,            // custom CFS configuration generic
  parameter IO_CFS_IN_SIZE                     = 32,            // size of CFS input conduit in bits
  parameter IO_CFS_OUT_SIZE                    = 32,            // size of CFS output conduit in bits
  parameter IO_NEOLED_EN                       = 1,            // implement NeoPixel-compatible smart LED interface (NEOLED)?
  parameter IO_NEOLED_TX_FIFO                  = 1,            // NEOLED TX FIFO depth, 1..32k, has to be a power of two
  parameter IO_GPTMR_EN                        = 0,            // implement general purpose timer (GPTMR)?
  parameter IO_XIP_EN                          = 0,            // implement execute in place module (XIP)?
  parameter IO_ONEWIRE_EN                      = 0,            // implement 1-wire interface (ONEWIRE)?
  parameter IO_DMA_EN                          = 0,            // implement direct memory access controller (DMA)?
  parameter IO_SLINK_EN                        = 0,            // implement stream link interface (SLINK)?
  parameter IO_SLINK_RX_FIFO                   = 1,            // RX fifo depth, has to be a power of two, min 1
  parameter IO_SLINK_TX_FIFO                   = 1,            // TX fifo depth, has to be a power of two, min 1
  parameter IO_CRC_EN                          = 0             // implement cyclic redundancy check unit (CRC)?
)(
  // ------------------------------------------------------------
    // AXI4-Lite-Compatible Master Interface --
    // ------------------------------------------------------------
    // Clock and Reset --
    input m_axi_aclk,   
    input m_axi_aresetn,
    // Write Addre
    output [31 : 0] m_axi_awaddr , //
    output [2  : 0] m_axi_awprot , //
    output          m_axi_awvalid, //
    input           m_axi_awready, //
    // Write Data Channel --
    output [31 : 0] m_axi_wdata  , //
    output [3  : 0] m_axi_wstrb  , //
    output          m_axi_wvalid , //
    input           m_axi_wready , //
    // Read Address Channel --
    output [31 : 0] m_axi_araddr  , //
    output [2  : 0] m_axi_arprot  , //
    output          m_axi_arvalid , //
    input           m_axi_arready , //
    // Read Data Channel --
    input  [31 : 0] m_axi_rdata  , //
    input  [1 :  0] m_axi_rresp  , //
    input           m_axi_rvalid , //
    output          m_axi_rready , //
    // Write Response Channel --
    input  [1  : 0] m_axi_bresp  , //
    input           m_axi_bvalid , //
    output          m_axi_bready , //
    // ------------------------------------------------------------
    // AXI4-Stream-Compatible Interface --
    // ------------------------------------------------------------
    // Source --
    output [31 : 0] s0_axis_tdata  , //
    output          s0_axis_tvalid , //
    input           s0_axis_tready , //
    // Sink --
    input  [31 : 0] s1_axis_tdata  , //
    input           s1_axis_tvalid , //
    output          s1_axis_tready , //
    // ------------------------------------------------------------
    // JTAG on-chip debugger interface (available if ON_CHIP_DEBUGGER_EN = true) --
    // ------------------------------------------------------------
    input  jtag_trst_i   ,  // low-active TAP reset (optional)
    input  jtag_tck_i    ,  // serial clock
    input  jtag_tdi_i    ,  // serial data input
    output jtag_tdo_o    ,  // serial data output
    input  jtag_tms_i    ,  // mode select
    // ------------------------------------------------------------
    // Processor IO --
    // ------------------------------------------------------------
    // XIP (execute in place via SPI) signals (available if IO_XIP_EN = true) --
    output xip_csn_o     ,  // chip-select, low-active
    output xip_clk_o     ,  // serial clock
    input  xip_dat_i     ,  // device data input
    output xip_dat_o     ,  // controller data output
    // GPIO (available if IO_GPIO_EN = true) --
    output [63 : 0] gpio_o ,  // parallel output
    input  [63 : 0] gpio_i ,  // parallel input
    // primary UART0 (available if IO_UART0_EN = true) --
    output uart0_txd_o   ,  // UART0 send data
    input  uart0_rxd_i   ,  // UART0 receive data
    output uart0_rts_o   ,  // HW flow control: UART0.RX ready to receive ("RTR"), low-active, optional
    input  uart0_cts_i   ,  // HW flow control: UART0.TX allowed to transmit, low-active, optional
    // secondary UART1 (available if IO_UART1_EN = true) --
    output uart1_txd_o   ,  // UART1 send data
    input  uart1_rxd_i   ,  // UART1 receive data
    output uart1_rts_o   ,  // HW flow control: UART1.RX ready to receive ("RTR"), low-active, optional
    input  uart1_cts_i   ,  // HW flow control: UART1.TX allowed to transmit, low-active, optional
    // SPI (available if IO_SPI_EN = true) --
    output spi_clk_o     ,  // SPI serial clock
    output spi_dat_o     ,  // controller data out, peripheral data in
    input  spi_dat_i     ,  // controller data in, peripheral data out
    output spi_csn_o     ,  // SPI CS
    // SDI (available if IO_SDI_EN = true) --
    input  sdi_clk_i     ,  // SDI serial clock
    output sdi_dat_o     ,  // controller data out, peripheral data in
    input  sdi_dat_i     ,  // controller data in, peripheral data out
    input  sdi_csn_i     ,  // chip-select
    // TWI (available if IO_TWI_EN = true) --
    input  twi_sda_i     ,  // serial data line sense input
    output twi_sda_o     ,  // serial data line output (pull low only)
    input  twi_scl_i     ,  // serial clock line sense input
    output twi_scl_o     ,  // serial clock line output (pull low only)
    // 1-Wire Interface (available if IO_ONEWIRE_EN = true) --
    input  onewire_i     ,  // 1-wire bus sense input
    output onewire_o     ,  // 1-wire bus output (pull low only)
    // PWM (available if IO_PWM_NUM_CH > 0) --
    output pwm_o         ,  // pwm channels
    // Custom Functions Subsystem IO (available if IO_CFS_EN = true) --
    input  cfs_in_i      ,  // custom inputs
    output cfs_out_o     ,  // custom outputs
    // NeoPixel-compatible smart LED interface (available if IO_NEOLED_EN = true) --
    output neoled_o      ,  // async serial data line
    // External platform interrupts (available if XIRQ_NUM_CH > 0) --
    input  xirq_i        ,  // IRQ channels
    // CPU Interrupts --
    input  mtime_irq_i   ,  // machine timer interrupt, available if IO_MTIME_EN = false
    input  msw_irq_i     ,  // machine software interrupt
    input  mext_irq_i       // machine external interrupt
);


  neorv32_SystemTop_axi4lite #(
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
  ) rv_top (
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
    .gpio_o        (gpio_o        ),  // parallel output
    .gpio_i        (gpio_i        ),  // parallel input
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


endmodule : neorv32_integration_top