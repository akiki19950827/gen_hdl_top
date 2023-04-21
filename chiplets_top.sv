// Node(0, 0): north=None, south=Node(1, 0), east=Node(0, 1), west=None
// Node(0, 1): north=None, south=Node(1, 1), east=None, west=Node(0, 0)
// Node(1, 0): north=Node(0, 0), south=Node(2, 0), east=Node(1, 1), west=None
// Node(1, 1): north=Node(0, 1), south=Node(2, 1), east=None, west=Node(1, 0)
// Node(2, 0): north=Node(1, 0), south=None, east=Node(2, 1), west=None
// Node(2, 1): north=Node(1, 1), south=None, east=None, west=Node(2, 0)

module chiplets_top;

    logic [79:0] 10_00_rx;
    logic [79:0] 10_00_tx;
    logic 10_00_fs_fwd_clk;
    logic 10_00_fs_fwd_clkb;
    logic 10_00_fs_sr_clk;
    logic 10_00_fs_sr_clkb;
    logic 10_00_fs_sr_load;
    logic 10_00_fs_sr_data;
    logic 10_00_fs_mac_rdy;
    logic 10_00_fs_adapter_rstn;
    logic 10_00_ns_fwd_clkb;
    logic 10_00_ns_fwd_clk;
    logic 10_00_ns_sr_clkb;
    logic 10_00_ns_sr_clk;
    logic 10_00_ns_sr_load;
    logic 10_00_ns_sr_data;
    logic 10_00_ns_mac_rdy;
    logic 10_00_ns_adapter_rstn;
    logic [79:0] 01_00_rx;
    logic [79:0] 01_00_tx;
    logic 01_00_fs_fwd_clk;
    logic 01_00_fs_fwd_clkb;
    logic 01_00_fs_sr_clk;
    logic 01_00_fs_sr_clkb;
    logic 01_00_fs_sr_load;
    logic 01_00_fs_sr_data;
    logic 01_00_fs_mac_rdy;
    logic 01_00_fs_adapter_rstn;
    logic 01_00_ns_fwd_clk;
    logic 01_00_ns_fwd_clkb;
    logic 01_00_ns_sr_clk;
    logic 01_00_ns_sr_clkb;
    logic 01_00_ns_sr_load;
    logic 01_00_ns_sr_data;
    logic 01_00_ns_mac_rdy;
    logic 01_00_ns_adapter_rstn;
    logic [79:0] 11_01_rx;
    logic [79:0] 11_01_tx;
    logic 11_01_fs_fwd_clk;
    logic 11_01_fs_fwd_clkb;
    logic 11_01_fs_sr_clk;
    logic 11_01_fs_sr_clkb;
    logic 11_01_fs_sr_load;
    logic 11_01_fs_sr_data;
    logic 11_01_fs_mac_rdy;
    logic 11_01_fs_adapter_rstn;
    logic 11_01_ns_fwd_clkb;
    logic 11_01_ns_fwd_clk;
    logic 11_01_ns_sr_clkb;
    logic 11_01_ns_sr_clk;
    logic 11_01_ns_sr_load;
    logic 11_01_ns_sr_data;
    logic 11_01_ns_mac_rdy;
    logic 11_01_ns_adapter_rstn;
    logic [79:0] 20_10_rx;
    logic [79:0] 20_10_tx;
    logic 20_10_fs_fwd_clk;
    logic 20_10_fs_fwd_clkb;
    logic 20_10_fs_sr_clk;
    logic 20_10_fs_sr_clkb;
    logic 20_10_fs_sr_load;
    logic 20_10_fs_sr_data;
    logic 20_10_fs_mac_rdy;
    logic 20_10_fs_adapter_rstn;
    logic 20_10_ns_fwd_clkb;
    logic 20_10_ns_fwd_clk;
    logic 20_10_ns_sr_clkb;
    logic 20_10_ns_sr_clk;
    logic 20_10_ns_sr_load;
    logic 20_10_ns_sr_data;
    logic 20_10_ns_mac_rdy;
    logic 20_10_ns_adapter_rstn;
    logic [79:0] 11_10_rx;
    logic [79:0] 11_10_tx;
    logic 11_10_fs_fwd_clk;
    logic 11_10_fs_fwd_clkb;
    logic 11_10_fs_sr_clk;
    logic 11_10_fs_sr_clkb;
    logic 11_10_fs_sr_load;
    logic 11_10_fs_sr_data;
    logic 11_10_fs_mac_rdy;
    logic 11_10_fs_adapter_rstn;
    logic 11_10_ns_fwd_clk;
    logic 11_10_ns_fwd_clkb;
    logic 11_10_ns_sr_clk;
    logic 11_10_ns_sr_clkb;
    logic 11_10_ns_sr_load;
    logic 11_10_ns_sr_data;
    logic 11_10_ns_mac_rdy;
    logic 11_10_ns_adapter_rstn;
    logic [79:0] 21_11_rx;
    logic [79:0] 21_11_tx;
    logic 21_11_fs_fwd_clk;
    logic 21_11_fs_fwd_clkb;
    logic 21_11_fs_sr_clk;
    logic 21_11_fs_sr_clkb;
    logic 21_11_fs_sr_load;
    logic 21_11_fs_sr_data;
    logic 21_11_fs_mac_rdy;
    logic 21_11_fs_adapter_rstn;
    logic 21_11_ns_fwd_clkb;
    logic 21_11_ns_fwd_clk;
    logic 21_11_ns_sr_clkb;
    logic 21_11_ns_sr_clk;
    logic 21_11_ns_sr_load;
    logic 21_11_ns_sr_data;
    logic 21_11_ns_mac_rdy;
    logic 21_11_ns_adapter_rstn;
    logic [79:0] 21_20_rx;
    logic [79:0] 21_20_tx;
    logic 21_20_fs_fwd_clk;
    logic 21_20_fs_fwd_clkb;
    logic 21_20_fs_sr_clk;
    logic 21_20_fs_sr_clkb;
    logic 21_20_fs_sr_load;
    logic 21_20_fs_sr_data;
    logic 21_20_fs_mac_rdy;
    logic 21_20_fs_adapter_rstn;
    logic 21_20_ns_fwd_clk;
    logic 21_20_ns_fwd_clkb;
    logic 21_20_ns_sr_clk;
    logic 21_20_ns_sr_clkb;
    logic 21_20_ns_sr_load;
    logic 21_20_ns_sr_data;
    logic 21_20_ns_mac_rdy;
    logic 21_20_ns_adapter_rstn;
    logic [7:0] u00_cfg_io; // input
    logic u00_uart0_rx_i; // input
    logic u00_uart0_tx_o; // output
    logic u00_uart1_rx_i; // input
    logic u00_uart1_tx_o; // output
    logic u00_spi_s0_clk_i; // input
    logic u00_spi_s0_cs_i; // input
    logic u00_spi_s0_sdo0_o; // output
    logic u00_spi_s0_sdi0_i; // input
    logic u00_spi_s1_clk_i; // input
    logic u00_spi_s1_cs_i; // input
    logic u00_spi_s1_sdo0_o; // output
    logic u00_spi_s1_sdi0_i; // input
    logic u00_spi_m_clk_o; // output
    logic u00_spi_m_csn0_o; // output
    logic u00_spi_m_csn1_o; // output
    logic u00_spi_m_csn2_o; // output
    logic u00_spi_m_csn3_o; // output
    logic u00_spi_m_sdo0_o; // output
    logic u00_spi_m_sdi0_i; // input
    logic u00_tck_i; // input
    logic u00_trstn_i; // input
    logic u00_tms_i; // input
    logic u00_tdi_i; // input
    logic u00_tdo_o; // output
    logic [3:0] u00_sdram_dqm; // output
    logic [3:0] u00_sdram_cs_n_o; // output
    logic [14:0] u00_sdram_addr_o; // output
    logic [3:0] u00_sdram_cke_o; // output
    logic u00_sdram_ras_n_o; // output
    logic u00_sdram_cas_n_o; // output
    logic u00_sdram_we_n_o; // output
    logic u00_sdram_clk_o; // output
    logic u00_pll_atest0; // output
    logic u00_pll_atest1; // output
    logic [9:0] u00_dbg_mux_cfg; // input
    logic u00_test_signal_out; // output
    logic clk; // input
    logic rstn; // input
    logic [1:0] chip_mode; // input
    logic [2:0] u00_x; // input
    logic [2:0] u00_y; // input
    logic 10_00_dcc_atb; // output
    logic 10_00_spare1_out; // output
    logic 10_00_spare0_out; // output
    logic 10_00_spare1_in; // input
    logic 10_00_spare0_in; // input
    logic 01_00_dcc_atb; // output
    logic 01_00_spare1_out; // output
    logic 01_00_spare0_out; // output
    logic 01_00_spare1_in; // input
    logic 01_00_spare0_in; // input
    logic [7:0] u01_cfg_io; // input
    logic u01_uart0_rx_i; // input
    logic u01_uart0_tx_o; // output
    logic u01_uart1_rx_i; // input
    logic u01_uart1_tx_o; // output
    logic u01_spi_s0_clk_i; // input
    logic u01_spi_s0_cs_i; // input
    logic u01_spi_s0_sdo0_o; // output
    logic u01_spi_s0_sdi0_i; // input
    logic u01_spi_s1_clk_i; // input
    logic u01_spi_s1_cs_i; // input
    logic u01_spi_s1_sdo0_o; // output
    logic u01_spi_s1_sdi0_i; // input
    logic u01_spi_m_clk_o; // output
    logic u01_spi_m_csn0_o; // output
    logic u01_spi_m_csn1_o; // output
    logic u01_spi_m_csn2_o; // output
    logic u01_spi_m_csn3_o; // output
    logic u01_spi_m_sdo0_o; // output
    logic u01_spi_m_sdi0_i; // input
    logic u01_tck_i; // input
    logic u01_trstn_i; // input
    logic u01_tms_i; // input
    logic u01_tdi_i; // input
    logic u01_tdo_o; // output
    logic [3:0] u01_sdram_dqm; // output
    logic [3:0] u01_sdram_cs_n_o; // output
    logic [14:0] u01_sdram_addr_o; // output
    logic [3:0] u01_sdram_cke_o; // output
    logic u01_sdram_ras_n_o; // output
    logic u01_sdram_cas_n_o; // output
    logic u01_sdram_we_n_o; // output
    logic u01_sdram_clk_o; // output
    logic u01_pll_atest0; // output
    logic u01_pll_atest1; // output
    logic [9:0] u01_dbg_mux_cfg; // input
    logic u01_test_signal_out; // output
    logic [2:0] u01_x; // input
    logic [2:0] u01_y; // input
    logic 11_01_dcc_atb; // output
    logic 11_01_spare1_out; // output
    logic 11_01_spare0_out; // output
    logic 11_01_spare1_in; // input
    logic 11_01_spare0_in; // input
    logic [7:0] u10_cfg_io; // input
    logic u10_uart0_rx_i; // input
    logic u10_uart0_tx_o; // output
    logic u10_uart1_rx_i; // input
    logic u10_uart1_tx_o; // output
    logic u10_spi_s0_clk_i; // input
    logic u10_spi_s0_cs_i; // input
    logic u10_spi_s0_sdo0_o; // output
    logic u10_spi_s0_sdi0_i; // input
    logic u10_spi_s1_clk_i; // input
    logic u10_spi_s1_cs_i; // input
    logic u10_spi_s1_sdo0_o; // output
    logic u10_spi_s1_sdi0_i; // input
    logic u10_spi_m_clk_o; // output
    logic u10_spi_m_csn0_o; // output
    logic u10_spi_m_csn1_o; // output
    logic u10_spi_m_csn2_o; // output
    logic u10_spi_m_csn3_o; // output
    logic u10_spi_m_sdo0_o; // output
    logic u10_spi_m_sdi0_i; // input
    logic u10_tck_i; // input
    logic u10_trstn_i; // input
    logic u10_tms_i; // input
    logic u10_tdi_i; // input
    logic u10_tdo_o; // output
    logic [3:0] u10_sdram_dqm; // output
    logic [3:0] u10_sdram_cs_n_o; // output
    logic [14:0] u10_sdram_addr_o; // output
    logic [3:0] u10_sdram_cke_o; // output
    logic u10_sdram_ras_n_o; // output
    logic u10_sdram_cas_n_o; // output
    logic u10_sdram_we_n_o; // output
    logic u10_sdram_clk_o; // output
    logic u10_pll_atest0; // output
    logic u10_pll_atest1; // output
    logic [9:0] u10_dbg_mux_cfg; // input
    logic u10_test_signal_out; // output
    logic [2:0] u10_x; // input
    logic [2:0] u10_y; // input
    logic 20_10_dcc_atb; // output
    logic 20_10_spare1_out; // output
    logic 20_10_spare0_out; // output
    logic 20_10_spare1_in; // input
    logic 20_10_spare0_in; // input
    logic 11_10_dcc_atb; // output
    logic 11_10_spare1_out; // output
    logic 11_10_spare0_out; // output
    logic 11_10_spare1_in; // input
    logic 11_10_spare0_in; // input
    logic [7:0] u11_cfg_io; // input
    logic u11_uart0_rx_i; // input
    logic u11_uart0_tx_o; // output
    logic u11_uart1_rx_i; // input
    logic u11_uart1_tx_o; // output
    logic u11_spi_s0_clk_i; // input
    logic u11_spi_s0_cs_i; // input
    logic u11_spi_s0_sdo0_o; // output
    logic u11_spi_s0_sdi0_i; // input
    logic u11_spi_s1_clk_i; // input
    logic u11_spi_s1_cs_i; // input
    logic u11_spi_s1_sdo0_o; // output
    logic u11_spi_s1_sdi0_i; // input
    logic u11_spi_m_clk_o; // output
    logic u11_spi_m_csn0_o; // output
    logic u11_spi_m_csn1_o; // output
    logic u11_spi_m_csn2_o; // output
    logic u11_spi_m_csn3_o; // output
    logic u11_spi_m_sdo0_o; // output
    logic u11_spi_m_sdi0_i; // input
    logic u11_tck_i; // input
    logic u11_trstn_i; // input
    logic u11_tms_i; // input
    logic u11_tdi_i; // input
    logic u11_tdo_o; // output
    logic [3:0] u11_sdram_dqm; // output
    logic [3:0] u11_sdram_cs_n_o; // output
    logic [14:0] u11_sdram_addr_o; // output
    logic [3:0] u11_sdram_cke_o; // output
    logic u11_sdram_ras_n_o; // output
    logic u11_sdram_cas_n_o; // output
    logic u11_sdram_we_n_o; // output
    logic u11_sdram_clk_o; // output
    logic u11_pll_atest0; // output
    logic u11_pll_atest1; // output
    logic [9:0] u11_dbg_mux_cfg; // input
    logic u11_test_signal_out; // output
    logic [2:0] u11_x; // input
    logic [2:0] u11_y; // input
    logic 21_11_dcc_atb; // output
    logic 21_11_spare1_out; // output
    logic 21_11_spare0_out; // output
    logic 21_11_spare1_in; // input
    logic 21_11_spare0_in; // input
    logic [7:0] u20_cfg_io; // input
    logic u20_uart0_rx_i; // input
    logic u20_uart0_tx_o; // output
    logic u20_uart1_rx_i; // input
    logic u20_uart1_tx_o; // output
    logic u20_spi_s0_clk_i; // input
    logic u20_spi_s0_cs_i; // input
    logic u20_spi_s0_sdo0_o; // output
    logic u20_spi_s0_sdi0_i; // input
    logic u20_spi_s1_clk_i; // input
    logic u20_spi_s1_cs_i; // input
    logic u20_spi_s1_sdo0_o; // output
    logic u20_spi_s1_sdi0_i; // input
    logic u20_spi_m_clk_o; // output
    logic u20_spi_m_csn0_o; // output
    logic u20_spi_m_csn1_o; // output
    logic u20_spi_m_csn2_o; // output
    logic u20_spi_m_csn3_o; // output
    logic u20_spi_m_sdo0_o; // output
    logic u20_spi_m_sdi0_i; // input
    logic u20_tck_i; // input
    logic u20_trstn_i; // input
    logic u20_tms_i; // input
    logic u20_tdi_i; // input
    logic u20_tdo_o; // output
    logic [3:0] u20_sdram_dqm; // output
    logic [3:0] u20_sdram_cs_n_o; // output
    logic [14:0] u20_sdram_addr_o; // output
    logic [3:0] u20_sdram_cke_o; // output
    logic u20_sdram_ras_n_o; // output
    logic u20_sdram_cas_n_o; // output
    logic u20_sdram_we_n_o; // output
    logic u20_sdram_clk_o; // output
    logic u20_pll_atest0; // output
    logic u20_pll_atest1; // output
    logic [9:0] u20_dbg_mux_cfg; // input
    logic u20_test_signal_out; // output
    logic [2:0] u20_x; // input
    logic [2:0] u20_y; // input
    logic 21_20_dcc_atb; // output
    logic 21_20_spare1_out; // output
    logic 21_20_spare0_out; // output
    logic 21_20_spare1_in; // input
    logic 21_20_spare0_in; // input
    logic [7:0] u21_cfg_io; // input
    logic u21_uart0_rx_i; // input
    logic u21_uart0_tx_o; // output
    logic u21_uart1_rx_i; // input
    logic u21_uart1_tx_o; // output
    logic u21_spi_s0_clk_i; // input
    logic u21_spi_s0_cs_i; // input
    logic u21_spi_s0_sdo0_o; // output
    logic u21_spi_s0_sdi0_i; // input
    logic u21_spi_s1_clk_i; // input
    logic u21_spi_s1_cs_i; // input
    logic u21_spi_s1_sdo0_o; // output
    logic u21_spi_s1_sdi0_i; // input
    logic u21_spi_m_clk_o; // output
    logic u21_spi_m_csn0_o; // output
    logic u21_spi_m_csn1_o; // output
    logic u21_spi_m_csn2_o; // output
    logic u21_spi_m_csn3_o; // output
    logic u21_spi_m_sdo0_o; // output
    logic u21_spi_m_sdi0_i; // input
    logic u21_tck_i; // input
    logic u21_trstn_i; // input
    logic u21_tms_i; // input
    logic u21_tdi_i; // input
    logic u21_tdo_o; // output
    logic [3:0] u21_sdram_dqm; // output
    logic [3:0] u21_sdram_cs_n_o; // output
    logic [14:0] u21_sdram_addr_o; // output
    logic [3:0] u21_sdram_cke_o; // output
    logic u21_sdram_ras_n_o; // output
    logic u21_sdram_cas_n_o; // output
    logic u21_sdram_we_n_o; // output
    logic u21_sdram_clk_o; // output
    logic u21_pll_atest0; // output
    logic u21_pll_atest1; // output
    logic [9:0] u21_dbg_mux_cfg; // input
    logic u21_test_signal_out; // output
    logic [2:0] u21_x; // input
    logic [2:0] u21_y; // input
    logic sim_end;


    `ifdef USE_UVM
        import uvm_pkg::*;
        `include "uvm_macros.svh"
        `define CHIPLETS_ROW_NUM 3
        `define CHIPLETS_COL_NUM 2
        import aib_globals_pkg::*;
        initial begin
            run_test("base_test");
        end
        `ifdef UVM_MONITOR_AIB
            `include "tb_aib_macros.sv"
            `declare_aib_uvm(chiplets_top, 0, 0, north, NORTH)
            `declare_aib_uvm(chiplets_top, 0, 0, west, WEST)
            `declare_aib_uvm(chiplets_top, 0, 0, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 0, 0, east, EAST)
            `declare_aib_uvm(chiplets_top, 0, 1, north, NORTH)
            `declare_aib_uvm(chiplets_top, 0, 1, west, WEST)
            `declare_aib_uvm(chiplets_top, 0, 1, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 0, 1, east, EAST)
            `declare_aib_uvm(chiplets_top, 1, 0, north, NORTH)
            `declare_aib_uvm(chiplets_top, 1, 0, west, WEST)
            `declare_aib_uvm(chiplets_top, 1, 0, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 1, 0, east, EAST)
            `declare_aib_uvm(chiplets_top, 1, 1, north, NORTH)
            `declare_aib_uvm(chiplets_top, 1, 1, west, WEST)
            `declare_aib_uvm(chiplets_top, 1, 1, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 1, 1, east, EAST)
            `declare_aib_uvm(chiplets_top, 2, 0, north, NORTH)
            `declare_aib_uvm(chiplets_top, 2, 0, west, WEST)
            `declare_aib_uvm(chiplets_top, 2, 0, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 2, 0, east, EAST)
            `declare_aib_uvm(chiplets_top, 2, 1, north, NORTH)
            `declare_aib_uvm(chiplets_top, 2, 1, west, WEST)
            `declare_aib_uvm(chiplets_top, 2, 1, south, SOUTH)
            `declare_aib_uvm(chiplets_top, 2, 1, east, EAST)
        `endif
    `endif
    

    // logic sim_end;
    assign sim_end = u00_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u00_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u01_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u10_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u11_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u20_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_0_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_0_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_0_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_0_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_1_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_1_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_1_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_1_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_2_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_2_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_2_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_2_3.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_3_0.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_3_1.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_3_2.peripherals_i.apb_pulpino_i.sim_end_o[0]
        && u21_chiplet.u_die_top.u_system_16core_top.pulpino_3_3.peripherals_i.apb_pulpino_i.sim_end_o[0];

    initial begin
        clk = 1;
        forever begin
            #(50ns/2) clk = ~clk;
        end
    end
    initial begin
        if($test$plusargs("FSDB_ON")) begin
            $fsdbDumpvars(0, chiplets_top)
            $fsdbDumpon;
        end
    end
    initial begin
        rstn = 0;
        #2500ns rstn = 1;
        `ifndef USE_UVM
            wait(sim_end) $display("simulation is over");
            $finish;
        `endif
    end
    
// 00 connection
    assign u00_x = 0;
    assign u00_y = 0;
    chiplet u00_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u00_x),
        .pad18_my_chip_y(u00_y),
        .pad18_cfg_io(u00_cfg_io),
        .pad18_uart0_rx_i(u00_uart0_rx_i),
        .pad18_uart0_tx_o(u00_uart0_tx_o),
        .pad18_uart1_rx_i(u00_uart1_rx_i),
        .pad18_uart1_tx_o(u00_uart1_tx_o),
        .pad18_spi_s0_clk_i(u00_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u00_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u00_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u00_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u00_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u00_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u00_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u00_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u00_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u00_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u00_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u00_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u00_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u00_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u00_spi_m_sdi0_i),
        .pad18_tck_i(u00_tck_i),
        .pad18_trstn_i(u00_trstn_i),
        .pad18_tms_i(u00_tms_i),
        .pad18_tdi_i(u00_tdi_i),
        .pad18_tdo_o(u00_tdo_o),
        .pad18_sdram_dqm(u00_sdram_dqm),
        .pad18_sdram_cs_n_o(u00_sdram_cs_n_o),
        .pad18_sdram_addr_o(u00_sdram_addr_o),
        .pad18_sdram_cke_o(u00_sdram_cke_o),
        .pad18_sdram_ras_n_o(u00_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u00_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u00_sdram_we_n_o),
        .pad18_sdram_clk_o(u00_sdram_clk_o),
        .pada_pll_atest0(u00_pll_atest0),
        .pada_pll_atest1(u00_pll_atest1),
        .pad18_dbg_mux_cfg(u00_dbg_mux_cfg),
        .pad18_test_signal_out(u00_test_signal_out),
        .pad09_south_dcc_atb(10_00_dcc_atb),
        .pad09_south_tx(10_00_rx),
        .pad09_south_rx(10_00_tx),
        .pad09_south_ns_fwd_clk(10_00_fs_fwd_clk),
        .pad09_south_ns_fwd_clkb(10_00_fs_fwd_clkb),
        .pad09_south_ns_sr_clk(10_00_fs_sr_clk),
        .pad09_south_ns_sr_clkb(10_00_fs_sr_clkb),
        .pad09_south_ns_sr_load(10_00_fs_sr_load),
        .pad09_south_ns_sr_data(10_00_fs_sr_data),
        .pad09_south_ns_mac_rdy(10_00_fs_mac_rdy),
        .pad09_south_ns_adapter_rstn(10_00_fs_adapter_rstn),
        .pad09_south_spare1_out(10_00_spare1_out),
        .pad09_south_spare0_out(10_00_spare0_out),
        .pad09_south_fs_fwd_clkb(10_00_ns_fwd_clkb),
        .pad09_south_fs_fwd_clk(10_00_ns_fwd_clk),
        .pad09_south_fs_sr_clkb(10_00_ns_sr_clkb),
        .pad09_south_fs_sr_clk(10_00_ns_sr_clk),
        .pad09_south_fs_sr_load(10_00_ns_sr_load),
        .pad09_south_fs_sr_data(10_00_ns_sr_data),
        .pad09_south_fs_mac_rdy(10_00_ns_mac_rdy),
        .pad09_south_fs_adapter_rstn(10_00_ns_adapter_rstn),
        .pad09_south_spare1_in(10_00_spare1_in),
        .pad09_south_spare0_in(10_00_spare0_in),
        .pad09_east_dcc_atb(01_00_dcc_atb),
        .pad09_east_tx(01_00_rx),
        .pad09_east_rx(01_00_tx),
        .pad09_east_ns_fwd_clk(01_00_fs_fwd_clk),
        .pad09_east_ns_fwd_clkb(01_00_fs_fwd_clkb),
        .pad09_east_ns_sr_clk(01_00_fs_sr_clk),
        .pad09_east_ns_sr_clkb(01_00_fs_sr_clkb),
        .pad09_east_ns_sr_load(01_00_fs_sr_load),
        .pad09_east_ns_sr_data(01_00_fs_sr_data),
        .pad09_east_ns_mac_rdy(01_00_fs_mac_rdy),
        .pad09_east_ns_adapter_rstn(01_00_fs_adapter_rstn),
        .pad09_east_spare1_out(01_00_spare1_out),
        .pad09_east_spare0_out(01_00_spare0_out),
        .pad09_east_fs_fwd_clk(01_00_ns_fwd_clk),
        .pad09_east_fs_fwd_clkb(01_00_ns_fwd_clkb),
        .pad09_east_fs_sr_clk(01_00_ns_sr_clk),
        .pad09_east_fs_sr_clkb(01_00_ns_sr_clkb),
        .pad09_east_fs_sr_load(01_00_ns_sr_load),
        .pad09_east_fs_sr_data(01_00_ns_sr_data),
        .pad09_east_fs_mac_rdy(01_00_ns_mac_rdy),
        .pad09_east_fs_adapter_rstn(01_00_ns_adapter_rstn),
        .pad09_east_spare1_in(01_00_spare1_in),
        .pad09_east_spare0_in(01_00_spare0_in));

// 01 connection
    assign u01_x = 0;
    assign u01_y = 1;
    chiplet u01_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u01_x),
        .pad18_my_chip_y(u01_y),
        .pad18_cfg_io(u01_cfg_io),
        .pad18_uart0_rx_i(u01_uart0_rx_i),
        .pad18_uart0_tx_o(u01_uart0_tx_o),
        .pad18_uart1_rx_i(u01_uart1_rx_i),
        .pad18_uart1_tx_o(u01_uart1_tx_o),
        .pad18_spi_s0_clk_i(u01_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u01_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u01_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u01_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u01_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u01_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u01_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u01_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u01_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u01_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u01_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u01_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u01_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u01_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u01_spi_m_sdi0_i),
        .pad18_tck_i(u01_tck_i),
        .pad18_trstn_i(u01_trstn_i),
        .pad18_tms_i(u01_tms_i),
        .pad18_tdi_i(u01_tdi_i),
        .pad18_tdo_o(u01_tdo_o),
        .pad18_sdram_dqm(u01_sdram_dqm),
        .pad18_sdram_cs_n_o(u01_sdram_cs_n_o),
        .pad18_sdram_addr_o(u01_sdram_addr_o),
        .pad18_sdram_cke_o(u01_sdram_cke_o),
        .pad18_sdram_ras_n_o(u01_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u01_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u01_sdram_we_n_o),
        .pad18_sdram_clk_o(u01_sdram_clk_o),
        .pada_pll_atest0(u01_pll_atest0),
        .pada_pll_atest1(u01_pll_atest1),
        .pad18_dbg_mux_cfg(u01_dbg_mux_cfg),
        .pad18_test_signal_out(u01_test_signal_out),
        .pad09_west_dcc_atb(01_00_dcc_atb),
        .pad09_west_tx(01_00_rx),
        .pad09_west_rx(01_00_tx),
        .pad09_west_ns_fwd_clk(01_00_fs_fwd_clk),
        .pad09_west_ns_fwd_clkb(01_00_fs_fwd_clkb),
        .pad09_west_ns_sr_clk(01_00_fs_sr_clk),
        .pad09_west_ns_sr_clkb(01_00_fs_sr_clkb),
        .pad09_west_ns_sr_load(01_00_fs_sr_load),
        .pad09_west_ns_sr_data(01_00_fs_sr_data),
        .pad09_west_ns_mac_rdy(01_00_fs_mac_rdy),
        .pad09_west_ns_adapter_rstn(01_00_fs_adapter_rstn),
        .pad09_west_spare1_out(01_00_spare1_out),
        .pad09_west_spare0_out(01_00_spare0_out),
        .pad09_west_fs_fwd_clkb(01_00_ns_fwd_clkb),
        .pad09_west_fs_fwd_clk(01_00_ns_fwd_clk),
        .pad09_west_fs_sr_clkb(01_00_ns_sr_clkb),
        .pad09_west_fs_sr_clk(01_00_ns_sr_clk),
        .pad09_west_fs_sr_load(01_00_ns_sr_load),
        .pad09_west_fs_sr_data(01_00_ns_sr_data),
        .pad09_west_fs_mac_rdy(01_00_ns_mac_rdy),
        .pad09_west_fs_adapter_rstn(01_00_ns_adapter_rstn),
        .pad09_west_spare1_in(01_00_spare1_in),
        .pad09_west_spare0_in(01_00_spare0_in),
        .pad09_south_dcc_atb(11_01_dcc_atb),
        .pad09_south_tx(11_01_rx),
        .pad09_south_rx(11_01_tx),
        .pad09_south_ns_fwd_clk(11_01_fs_fwd_clk),
        .pad09_south_ns_fwd_clkb(11_01_fs_fwd_clkb),
        .pad09_south_ns_sr_clk(11_01_fs_sr_clk),
        .pad09_south_ns_sr_clkb(11_01_fs_sr_clkb),
        .pad09_south_ns_sr_load(11_01_fs_sr_load),
        .pad09_south_ns_sr_data(11_01_fs_sr_data),
        .pad09_south_ns_mac_rdy(11_01_fs_mac_rdy),
        .pad09_south_ns_adapter_rstn(11_01_fs_adapter_rstn),
        .pad09_south_spare1_out(11_01_spare1_out),
        .pad09_south_spare0_out(11_01_spare0_out),
        .pad09_south_fs_fwd_clkb(11_01_ns_fwd_clkb),
        .pad09_south_fs_fwd_clk(11_01_ns_fwd_clk),
        .pad09_south_fs_sr_clkb(11_01_ns_sr_clkb),
        .pad09_south_fs_sr_clk(11_01_ns_sr_clk),
        .pad09_south_fs_sr_load(11_01_ns_sr_load),
        .pad09_south_fs_sr_data(11_01_ns_sr_data),
        .pad09_south_fs_mac_rdy(11_01_ns_mac_rdy),
        .pad09_south_fs_adapter_rstn(11_01_ns_adapter_rstn),
        .pad09_south_spare1_in(11_01_spare1_in),
        .pad09_south_spare0_in(11_01_spare0_in));

// 10 connection
    assign u10_x = 1;
    assign u10_y = 0;
    chiplet u10_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u10_x),
        .pad18_my_chip_y(u10_y),
        .pad18_cfg_io(u10_cfg_io),
        .pad18_uart0_rx_i(u10_uart0_rx_i),
        .pad18_uart0_tx_o(u10_uart0_tx_o),
        .pad18_uart1_rx_i(u10_uart1_rx_i),
        .pad18_uart1_tx_o(u10_uart1_tx_o),
        .pad18_spi_s0_clk_i(u10_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u10_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u10_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u10_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u10_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u10_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u10_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u10_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u10_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u10_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u10_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u10_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u10_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u10_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u10_spi_m_sdi0_i),
        .pad18_tck_i(u10_tck_i),
        .pad18_trstn_i(u10_trstn_i),
        .pad18_tms_i(u10_tms_i),
        .pad18_tdi_i(u10_tdi_i),
        .pad18_tdo_o(u10_tdo_o),
        .pad18_sdram_dqm(u10_sdram_dqm),
        .pad18_sdram_cs_n_o(u10_sdram_cs_n_o),
        .pad18_sdram_addr_o(u10_sdram_addr_o),
        .pad18_sdram_cke_o(u10_sdram_cke_o),
        .pad18_sdram_ras_n_o(u10_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u10_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u10_sdram_we_n_o),
        .pad18_sdram_clk_o(u10_sdram_clk_o),
        .pada_pll_atest0(u10_pll_atest0),
        .pada_pll_atest1(u10_pll_atest1),
        .pad18_dbg_mux_cfg(u10_dbg_mux_cfg),
        .pad18_test_signal_out(u10_test_signal_out),
        .pad09_north_dcc_atb(10_00_dcc_atb),
        .pad09_north_tx(10_00_rx),
        .pad09_north_rx(10_00_tx),
        .pad09_north_ns_fwd_clk(10_00_fs_fwd_clk),
        .pad09_north_ns_fwd_clkb(10_00_fs_fwd_clkb),
        .pad09_north_ns_sr_clk(10_00_fs_sr_clk),
        .pad09_north_ns_sr_clkb(10_00_fs_sr_clkb),
        .pad09_north_ns_sr_load(10_00_fs_sr_load),
        .pad09_north_ns_sr_data(10_00_fs_sr_data),
        .pad09_north_ns_mac_rdy(10_00_fs_mac_rdy),
        .pad09_north_ns_adapter_rstn(10_00_fs_adapter_rstn),
        .pad09_north_spare1_out(10_00_spare1_out),
        .pad09_north_spare0_out(10_00_spare0_out),
        .pad09_north_fs_fwd_clkb(10_00_ns_fwd_clkb),
        .pad09_north_fs_fwd_clk(10_00_ns_fwd_clk),
        .pad09_north_fs_sr_clkb(10_00_ns_sr_clkb),
        .pad09_north_fs_sr_clk(10_00_ns_sr_clk),
        .pad09_north_fs_sr_load(10_00_ns_sr_load),
        .pad09_north_fs_sr_data(10_00_ns_sr_data),
        .pad09_north_fs_mac_rdy(10_00_ns_mac_rdy),
        .pad09_north_fs_adapter_rstn(10_00_ns_adapter_rstn),
        .pad09_north_spare1_in(10_00_spare1_in),
        .pad09_north_spare0_in(10_00_spare0_in),
        .pad09_south_dcc_atb(20_10_dcc_atb),
        .pad09_south_tx(20_10_rx),
        .pad09_south_rx(20_10_tx),
        .pad09_south_ns_fwd_clk(20_10_fs_fwd_clk),
        .pad09_south_ns_fwd_clkb(20_10_fs_fwd_clkb),
        .pad09_south_ns_sr_clk(20_10_fs_sr_clk),
        .pad09_south_ns_sr_clkb(20_10_fs_sr_clkb),
        .pad09_south_ns_sr_load(20_10_fs_sr_load),
        .pad09_south_ns_sr_data(20_10_fs_sr_data),
        .pad09_south_ns_mac_rdy(20_10_fs_mac_rdy),
        .pad09_south_ns_adapter_rstn(20_10_fs_adapter_rstn),
        .pad09_south_spare1_out(20_10_spare1_out),
        .pad09_south_spare0_out(20_10_spare0_out),
        .pad09_south_fs_fwd_clkb(20_10_ns_fwd_clkb),
        .pad09_south_fs_fwd_clk(20_10_ns_fwd_clk),
        .pad09_south_fs_sr_clkb(20_10_ns_sr_clkb),
        .pad09_south_fs_sr_clk(20_10_ns_sr_clk),
        .pad09_south_fs_sr_load(20_10_ns_sr_load),
        .pad09_south_fs_sr_data(20_10_ns_sr_data),
        .pad09_south_fs_mac_rdy(20_10_ns_mac_rdy),
        .pad09_south_fs_adapter_rstn(20_10_ns_adapter_rstn),
        .pad09_south_spare1_in(20_10_spare1_in),
        .pad09_south_spare0_in(20_10_spare0_in),
        .pad09_east_dcc_atb(11_10_dcc_atb),
        .pad09_east_tx(11_10_rx),
        .pad09_east_rx(11_10_tx),
        .pad09_east_ns_fwd_clk(11_10_fs_fwd_clk),
        .pad09_east_ns_fwd_clkb(11_10_fs_fwd_clkb),
        .pad09_east_ns_sr_clk(11_10_fs_sr_clk),
        .pad09_east_ns_sr_clkb(11_10_fs_sr_clkb),
        .pad09_east_ns_sr_load(11_10_fs_sr_load),
        .pad09_east_ns_sr_data(11_10_fs_sr_data),
        .pad09_east_ns_mac_rdy(11_10_fs_mac_rdy),
        .pad09_east_ns_adapter_rstn(11_10_fs_adapter_rstn),
        .pad09_east_spare1_out(11_10_spare1_out),
        .pad09_east_spare0_out(11_10_spare0_out),
        .pad09_east_fs_fwd_clk(11_10_ns_fwd_clk),
        .pad09_east_fs_fwd_clkb(11_10_ns_fwd_clkb),
        .pad09_east_fs_sr_clk(11_10_ns_sr_clk),
        .pad09_east_fs_sr_clkb(11_10_ns_sr_clkb),
        .pad09_east_fs_sr_load(11_10_ns_sr_load),
        .pad09_east_fs_sr_data(11_10_ns_sr_data),
        .pad09_east_fs_mac_rdy(11_10_ns_mac_rdy),
        .pad09_east_fs_adapter_rstn(11_10_ns_adapter_rstn),
        .pad09_east_spare1_in(11_10_spare1_in),
        .pad09_east_spare0_in(11_10_spare0_in));

// 11 connection
    assign u11_x = 1;
    assign u11_y = 1;
    chiplet u11_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u11_x),
        .pad18_my_chip_y(u11_y),
        .pad18_cfg_io(u11_cfg_io),
        .pad18_uart0_rx_i(u11_uart0_rx_i),
        .pad18_uart0_tx_o(u11_uart0_tx_o),
        .pad18_uart1_rx_i(u11_uart1_rx_i),
        .pad18_uart1_tx_o(u11_uart1_tx_o),
        .pad18_spi_s0_clk_i(u11_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u11_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u11_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u11_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u11_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u11_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u11_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u11_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u11_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u11_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u11_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u11_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u11_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u11_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u11_spi_m_sdi0_i),
        .pad18_tck_i(u11_tck_i),
        .pad18_trstn_i(u11_trstn_i),
        .pad18_tms_i(u11_tms_i),
        .pad18_tdi_i(u11_tdi_i),
        .pad18_tdo_o(u11_tdo_o),
        .pad18_sdram_dqm(u11_sdram_dqm),
        .pad18_sdram_cs_n_o(u11_sdram_cs_n_o),
        .pad18_sdram_addr_o(u11_sdram_addr_o),
        .pad18_sdram_cke_o(u11_sdram_cke_o),
        .pad18_sdram_ras_n_o(u11_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u11_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u11_sdram_we_n_o),
        .pad18_sdram_clk_o(u11_sdram_clk_o),
        .pada_pll_atest0(u11_pll_atest0),
        .pada_pll_atest1(u11_pll_atest1),
        .pad18_dbg_mux_cfg(u11_dbg_mux_cfg),
        .pad18_test_signal_out(u11_test_signal_out),
        .pad09_north_dcc_atb(11_01_dcc_atb),
        .pad09_north_tx(11_01_rx),
        .pad09_north_rx(11_01_tx),
        .pad09_north_ns_fwd_clk(11_01_fs_fwd_clk),
        .pad09_north_ns_fwd_clkb(11_01_fs_fwd_clkb),
        .pad09_north_ns_sr_clk(11_01_fs_sr_clk),
        .pad09_north_ns_sr_clkb(11_01_fs_sr_clkb),
        .pad09_north_ns_sr_load(11_01_fs_sr_load),
        .pad09_north_ns_sr_data(11_01_fs_sr_data),
        .pad09_north_ns_mac_rdy(11_01_fs_mac_rdy),
        .pad09_north_ns_adapter_rstn(11_01_fs_adapter_rstn),
        .pad09_north_spare1_out(11_01_spare1_out),
        .pad09_north_spare0_out(11_01_spare0_out),
        .pad09_north_fs_fwd_clkb(11_01_ns_fwd_clkb),
        .pad09_north_fs_fwd_clk(11_01_ns_fwd_clk),
        .pad09_north_fs_sr_clkb(11_01_ns_sr_clkb),
        .pad09_north_fs_sr_clk(11_01_ns_sr_clk),
        .pad09_north_fs_sr_load(11_01_ns_sr_load),
        .pad09_north_fs_sr_data(11_01_ns_sr_data),
        .pad09_north_fs_mac_rdy(11_01_ns_mac_rdy),
        .pad09_north_fs_adapter_rstn(11_01_ns_adapter_rstn),
        .pad09_north_spare1_in(11_01_spare1_in),
        .pad09_north_spare0_in(11_01_spare0_in),
        .pad09_west_dcc_atb(11_10_dcc_atb),
        .pad09_west_tx(11_10_rx),
        .pad09_west_rx(11_10_tx),
        .pad09_west_ns_fwd_clk(11_10_fs_fwd_clk),
        .pad09_west_ns_fwd_clkb(11_10_fs_fwd_clkb),
        .pad09_west_ns_sr_clk(11_10_fs_sr_clk),
        .pad09_west_ns_sr_clkb(11_10_fs_sr_clkb),
        .pad09_west_ns_sr_load(11_10_fs_sr_load),
        .pad09_west_ns_sr_data(11_10_fs_sr_data),
        .pad09_west_ns_mac_rdy(11_10_fs_mac_rdy),
        .pad09_west_ns_adapter_rstn(11_10_fs_adapter_rstn),
        .pad09_west_spare1_out(11_10_spare1_out),
        .pad09_west_spare0_out(11_10_spare0_out),
        .pad09_west_fs_fwd_clkb(11_10_ns_fwd_clkb),
        .pad09_west_fs_fwd_clk(11_10_ns_fwd_clk),
        .pad09_west_fs_sr_clkb(11_10_ns_sr_clkb),
        .pad09_west_fs_sr_clk(11_10_ns_sr_clk),
        .pad09_west_fs_sr_load(11_10_ns_sr_load),
        .pad09_west_fs_sr_data(11_10_ns_sr_data),
        .pad09_west_fs_mac_rdy(11_10_ns_mac_rdy),
        .pad09_west_fs_adapter_rstn(11_10_ns_adapter_rstn),
        .pad09_west_spare1_in(11_10_spare1_in),
        .pad09_west_spare0_in(11_10_spare0_in),
        .pad09_south_dcc_atb(21_11_dcc_atb),
        .pad09_south_tx(21_11_rx),
        .pad09_south_rx(21_11_tx),
        .pad09_south_ns_fwd_clk(21_11_fs_fwd_clk),
        .pad09_south_ns_fwd_clkb(21_11_fs_fwd_clkb),
        .pad09_south_ns_sr_clk(21_11_fs_sr_clk),
        .pad09_south_ns_sr_clkb(21_11_fs_sr_clkb),
        .pad09_south_ns_sr_load(21_11_fs_sr_load),
        .pad09_south_ns_sr_data(21_11_fs_sr_data),
        .pad09_south_ns_mac_rdy(21_11_fs_mac_rdy),
        .pad09_south_ns_adapter_rstn(21_11_fs_adapter_rstn),
        .pad09_south_spare1_out(21_11_spare1_out),
        .pad09_south_spare0_out(21_11_spare0_out),
        .pad09_south_fs_fwd_clkb(21_11_ns_fwd_clkb),
        .pad09_south_fs_fwd_clk(21_11_ns_fwd_clk),
        .pad09_south_fs_sr_clkb(21_11_ns_sr_clkb),
        .pad09_south_fs_sr_clk(21_11_ns_sr_clk),
        .pad09_south_fs_sr_load(21_11_ns_sr_load),
        .pad09_south_fs_sr_data(21_11_ns_sr_data),
        .pad09_south_fs_mac_rdy(21_11_ns_mac_rdy),
        .pad09_south_fs_adapter_rstn(21_11_ns_adapter_rstn),
        .pad09_south_spare1_in(21_11_spare1_in),
        .pad09_south_spare0_in(21_11_spare0_in));

// 20 connection
    assign u20_x = 2;
    assign u20_y = 0;
    chiplet u20_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u20_x),
        .pad18_my_chip_y(u20_y),
        .pad18_cfg_io(u20_cfg_io),
        .pad18_uart0_rx_i(u20_uart0_rx_i),
        .pad18_uart0_tx_o(u20_uart0_tx_o),
        .pad18_uart1_rx_i(u20_uart1_rx_i),
        .pad18_uart1_tx_o(u20_uart1_tx_o),
        .pad18_spi_s0_clk_i(u20_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u20_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u20_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u20_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u20_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u20_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u20_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u20_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u20_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u20_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u20_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u20_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u20_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u20_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u20_spi_m_sdi0_i),
        .pad18_tck_i(u20_tck_i),
        .pad18_trstn_i(u20_trstn_i),
        .pad18_tms_i(u20_tms_i),
        .pad18_tdi_i(u20_tdi_i),
        .pad18_tdo_o(u20_tdo_o),
        .pad18_sdram_dqm(u20_sdram_dqm),
        .pad18_sdram_cs_n_o(u20_sdram_cs_n_o),
        .pad18_sdram_addr_o(u20_sdram_addr_o),
        .pad18_sdram_cke_o(u20_sdram_cke_o),
        .pad18_sdram_ras_n_o(u20_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u20_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u20_sdram_we_n_o),
        .pad18_sdram_clk_o(u20_sdram_clk_o),
        .pada_pll_atest0(u20_pll_atest0),
        .pada_pll_atest1(u20_pll_atest1),
        .pad18_dbg_mux_cfg(u20_dbg_mux_cfg),
        .pad18_test_signal_out(u20_test_signal_out),
        .pad09_north_dcc_atb(20_10_dcc_atb),
        .pad09_north_tx(20_10_rx),
        .pad09_north_rx(20_10_tx),
        .pad09_north_ns_fwd_clk(20_10_fs_fwd_clk),
        .pad09_north_ns_fwd_clkb(20_10_fs_fwd_clkb),
        .pad09_north_ns_sr_clk(20_10_fs_sr_clk),
        .pad09_north_ns_sr_clkb(20_10_fs_sr_clkb),
        .pad09_north_ns_sr_load(20_10_fs_sr_load),
        .pad09_north_ns_sr_data(20_10_fs_sr_data),
        .pad09_north_ns_mac_rdy(20_10_fs_mac_rdy),
        .pad09_north_ns_adapter_rstn(20_10_fs_adapter_rstn),
        .pad09_north_spare1_out(20_10_spare1_out),
        .pad09_north_spare0_out(20_10_spare0_out),
        .pad09_north_fs_fwd_clkb(20_10_ns_fwd_clkb),
        .pad09_north_fs_fwd_clk(20_10_ns_fwd_clk),
        .pad09_north_fs_sr_clkb(20_10_ns_sr_clkb),
        .pad09_north_fs_sr_clk(20_10_ns_sr_clk),
        .pad09_north_fs_sr_load(20_10_ns_sr_load),
        .pad09_north_fs_sr_data(20_10_ns_sr_data),
        .pad09_north_fs_mac_rdy(20_10_ns_mac_rdy),
        .pad09_north_fs_adapter_rstn(20_10_ns_adapter_rstn),
        .pad09_north_spare1_in(20_10_spare1_in),
        .pad09_north_spare0_in(20_10_spare0_in),
        .pad09_east_dcc_atb(21_20_dcc_atb),
        .pad09_east_tx(21_20_rx),
        .pad09_east_rx(21_20_tx),
        .pad09_east_ns_fwd_clk(21_20_fs_fwd_clk),
        .pad09_east_ns_fwd_clkb(21_20_fs_fwd_clkb),
        .pad09_east_ns_sr_clk(21_20_fs_sr_clk),
        .pad09_east_ns_sr_clkb(21_20_fs_sr_clkb),
        .pad09_east_ns_sr_load(21_20_fs_sr_load),
        .pad09_east_ns_sr_data(21_20_fs_sr_data),
        .pad09_east_ns_mac_rdy(21_20_fs_mac_rdy),
        .pad09_east_ns_adapter_rstn(21_20_fs_adapter_rstn),
        .pad09_east_spare1_out(21_20_spare1_out),
        .pad09_east_spare0_out(21_20_spare0_out),
        .pad09_east_fs_fwd_clk(21_20_ns_fwd_clk),
        .pad09_east_fs_fwd_clkb(21_20_ns_fwd_clkb),
        .pad09_east_fs_sr_clk(21_20_ns_sr_clk),
        .pad09_east_fs_sr_clkb(21_20_ns_sr_clkb),
        .pad09_east_fs_sr_load(21_20_ns_sr_load),
        .pad09_east_fs_sr_data(21_20_ns_sr_data),
        .pad09_east_fs_mac_rdy(21_20_ns_mac_rdy),
        .pad09_east_fs_adapter_rstn(21_20_ns_adapter_rstn),
        .pad09_east_spare1_in(21_20_spare1_in),
        .pad09_east_spare0_in(21_20_spare0_in));

// 21 connection
    assign u21_x = 2;
    assign u21_y = 1;
    chiplet u21_chiplet (
        .pad18_xin_osc(clk),
        .pad18_po_reset_n(rstn),
        .pad18_chip_mode(chip_mode),
        .pad18_my_chip_x(u21_x),
        .pad18_my_chip_y(u21_y),
        .pad18_cfg_io(u21_cfg_io),
        .pad18_uart0_rx_i(u21_uart0_rx_i),
        .pad18_uart0_tx_o(u21_uart0_tx_o),
        .pad18_uart1_rx_i(u21_uart1_rx_i),
        .pad18_uart1_tx_o(u21_uart1_tx_o),
        .pad18_spi_s0_clk_i(u21_spi_s0_clk_i),
        .pad18_spi_s0_cs_i(u21_spi_s0_cs_i),
        .pad18_spi_s0_sdo0_o(u21_spi_s0_sdo0_o),
        .pad18_spi_s0_sdi0_i(u21_spi_s0_sdi0_i),
        .pad18_spi_s1_clk_i(u21_spi_s1_clk_i),
        .pad18_spi_s1_cs_i(u21_spi_s1_cs_i),
        .pad18_spi_s1_sdo0_o(u21_spi_s1_sdo0_o),
        .pad18_spi_s1_sdi0_i(u21_spi_s1_sdi0_i),
        .pad18_spi_m_clk_o(u21_spi_m_clk_o),
        .pad18_spi_m_csn0_o(u21_spi_m_csn0_o),
        .pad18_spi_m_csn1_o(u21_spi_m_csn1_o),
        .pad18_spi_m_csn2_o(u21_spi_m_csn2_o),
        .pad18_spi_m_csn3_o(u21_spi_m_csn3_o),
        .pad18_spi_m_sdo0_o(u21_spi_m_sdo0_o),
        .pad18_spi_m_sdi0_i(u21_spi_m_sdi0_i),
        .pad18_tck_i(u21_tck_i),
        .pad18_trstn_i(u21_trstn_i),
        .pad18_tms_i(u21_tms_i),
        .pad18_tdi_i(u21_tdi_i),
        .pad18_tdo_o(u21_tdo_o),
        .pad18_sdram_dqm(u21_sdram_dqm),
        .pad18_sdram_cs_n_o(u21_sdram_cs_n_o),
        .pad18_sdram_addr_o(u21_sdram_addr_o),
        .pad18_sdram_cke_o(u21_sdram_cke_o),
        .pad18_sdram_ras_n_o(u21_sdram_ras_n_o),
        .pad18_sdram_cas_n_o(u21_sdram_cas_n_o),
        .pad18_sdram_we_n_o(u21_sdram_we_n_o),
        .pad18_sdram_clk_o(u21_sdram_clk_o),
        .pada_pll_atest0(u21_pll_atest0),
        .pada_pll_atest1(u21_pll_atest1),
        .pad18_dbg_mux_cfg(u21_dbg_mux_cfg),
        .pad18_test_signal_out(u21_test_signal_out),
        .pad09_north_dcc_atb(21_11_dcc_atb),
        .pad09_north_tx(21_11_rx),
        .pad09_north_rx(21_11_tx),
        .pad09_north_ns_fwd_clk(21_11_fs_fwd_clk),
        .pad09_north_ns_fwd_clkb(21_11_fs_fwd_clkb),
        .pad09_north_ns_sr_clk(21_11_fs_sr_clk),
        .pad09_north_ns_sr_clkb(21_11_fs_sr_clkb),
        .pad09_north_ns_sr_load(21_11_fs_sr_load),
        .pad09_north_ns_sr_data(21_11_fs_sr_data),
        .pad09_north_ns_mac_rdy(21_11_fs_mac_rdy),
        .pad09_north_ns_adapter_rstn(21_11_fs_adapter_rstn),
        .pad09_north_spare1_out(21_11_spare1_out),
        .pad09_north_spare0_out(21_11_spare0_out),
        .pad09_north_fs_fwd_clkb(21_11_ns_fwd_clkb),
        .pad09_north_fs_fwd_clk(21_11_ns_fwd_clk),
        .pad09_north_fs_sr_clkb(21_11_ns_sr_clkb),
        .pad09_north_fs_sr_clk(21_11_ns_sr_clk),
        .pad09_north_fs_sr_load(21_11_ns_sr_load),
        .pad09_north_fs_sr_data(21_11_ns_sr_data),
        .pad09_north_fs_mac_rdy(21_11_ns_mac_rdy),
        .pad09_north_fs_adapter_rstn(21_11_ns_adapter_rstn),
        .pad09_north_spare1_in(21_11_spare1_in),
        .pad09_north_spare0_in(21_11_spare0_in),
        .pad09_west_dcc_atb(21_20_dcc_atb),
        .pad09_west_tx(21_20_rx),
        .pad09_west_rx(21_20_tx),
        .pad09_west_ns_fwd_clk(21_20_fs_fwd_clk),
        .pad09_west_ns_fwd_clkb(21_20_fs_fwd_clkb),
        .pad09_west_ns_sr_clk(21_20_fs_sr_clk),
        .pad09_west_ns_sr_clkb(21_20_fs_sr_clkb),
        .pad09_west_ns_sr_load(21_20_fs_sr_load),
        .pad09_west_ns_sr_data(21_20_fs_sr_data),
        .pad09_west_ns_mac_rdy(21_20_fs_mac_rdy),
        .pad09_west_ns_adapter_rstn(21_20_fs_adapter_rstn),
        .pad09_west_spare1_out(21_20_spare1_out),
        .pad09_west_spare0_out(21_20_spare0_out),
        .pad09_west_fs_fwd_clkb(21_20_ns_fwd_clkb),
        .pad09_west_fs_fwd_clk(21_20_ns_fwd_clk),
        .pad09_west_fs_sr_clkb(21_20_ns_sr_clkb),
        .pad09_west_fs_sr_clk(21_20_ns_sr_clk),
        .pad09_west_fs_sr_load(21_20_ns_sr_load),
        .pad09_west_fs_sr_data(21_20_ns_sr_data),
        .pad09_west_fs_mac_rdy(21_20_ns_mac_rdy),
        .pad09_west_fs_adapter_rstn(21_20_ns_adapter_rstn),
        .pad09_west_spare1_in(21_20_spare1_in),
        .pad09_west_spare0_in(21_20_spare0_in));

`ifndef USE_UVM_UART
    cmsdk_uart_capture_ard u00_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u00_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u00_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u00_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u00_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u00_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u00_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u00_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u00_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u00_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u00_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u00_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u00_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u00_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u00_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u00_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u00_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

    cmsdk_uart_capture_ard u01_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u01_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u01_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u01_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u01_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u01_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u01_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u01_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u01_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u01_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u01_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u01_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u01_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u01_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u01_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u01_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u01_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

    cmsdk_uart_capture_ard u10_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u10_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u10_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u10_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u10_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u10_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u10_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u10_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u10_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u10_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u10_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u10_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u10_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u10_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u10_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u10_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u10_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

    cmsdk_uart_capture_ard u11_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u11_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u11_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u11_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u11_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u11_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u11_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u11_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u11_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u11_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u11_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u11_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u11_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u11_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u11_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u11_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u11_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

    cmsdk_uart_capture_ard u20_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u20_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u20_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u20_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u20_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u20_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u20_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u20_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u20_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u20_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u20_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u20_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u20_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u20_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u20_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u20_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u20_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

    cmsdk_uart_capture_ard u21_00_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart0_tx));

    cmsdk_uart_capture_ard u21_01_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart1_tx));

    cmsdk_uart_capture_ard u21_02_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart2_tx));

    cmsdk_uart_capture_ard u21_03_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart3_tx));

    cmsdk_uart_capture_ard u21_10_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart4_tx));

    cmsdk_uart_capture_ard u21_11_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart5_tx));

    cmsdk_uart_capture_ard u21_12_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart6_tx));

    cmsdk_uart_capture_ard u21_13_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart7_tx));

    cmsdk_uart_capture_ard u21_20_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart8_tx));

    cmsdk_uart_capture_ard u21_21_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart9_tx));

    cmsdk_uart_capture_ard u21_22_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart10_tx));

    cmsdk_uart_capture_ard u21_23_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart11_tx));

    cmsdk_uart_capture_ard u21_30_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart12_tx));

    cmsdk_uart_capture_ard u21_31_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart13_tx));

    cmsdk_uart_capture_ard u21_32_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart14_tx));

    cmsdk_uart_capture_ard u21_33_uart (
        .RESETn(rstn),
        .CLK(clk),
        .RXD(u21_chiplet_top.u_die_top.u_system_16core_top.uart15_tx));

`endif

endmodule