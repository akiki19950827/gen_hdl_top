#!/usr/bin/env python3
############################################################
# Filename      : gen_hdl.py
# Author        : kiki
# Create        : 2023-04-17 13:36:15
# Last Modified : 2023-04-17 13:36:33
# Description   : This is a python3 script.
############################################################


from gen_hdl_lib.VerilogModule import VerilogModule, parse_verilog
from undirected_graph_lib.UndirectedGraph import UndirectedGraph
import argparse

if __name__ == "__main__":
    # Create argument parser
    parser = argparse.ArgumentParser(description="Generate sunflower testbench.")
    parser.add_argument("-r", "--row", type=int, required=True, 
                        help="Number of rows in the grid.")
    parser.add_argument("-c", "--col", type=int, required=True,
                        help="Number of columns in the grid.")
    
    # Parse arguments from command line
    args = parser.parse_args()
    rows = args.row
    cols = args.col

    # Parse the verilog file and create the uart module.
    chiplet_module = parse_verilog("chiplet.sv")
    uart_module = VerilogModule("cmsdk_uart_capture_ard")

    # Add ports to the uart module.
    uart_module.add_port("RESETn")
    uart_module.add_port("CLK")
    uart_module.add_port("RXD")

    # Create the top-level chiplets module.
    chiplets_top = VerilogModule("chiplets_top", True)
    undir_graph = UndirectedGraph(rows, cols)
    dirs = ["north", "west", "south", "east"]

    # Instantiate all chiplets and add them to the top-level module.
    chiplet_insts = []
    for x in range(rows):
        row_chiplets = []
        for y in range(cols):
            row_chiplets.append(chiplets_top.add_inst(f"u{x}{y}_chiplet", chiplet_module))
        chiplet_insts.append(row_chiplets)
    
    # Instantiate all uarts for each core in chiplet.
    uart_insts = []
    for x in range(rows):
        row_uarts = []
        for y in range(cols):
            uart_row = []
            for xx in range(4):
                uart_col = []
                for yy in range(4):
                    uart_col.append(chiplets_top.add_inst(f"u{x}{y}_{xx}{yy}_uart", uart_module))
                uart_row.append(uart_col)
            row_uarts.append(uart_row)
        uart_insts.append(row_uarts)

    # Connect chiplets' ports.
    for x in range(rows):
        for y in range(cols):
            chiplet_inst = chiplet_insts[x][y]
            chiplet_node = undir_graph.matrix[x][y]
            pos_str = f"{x}{y}"

            # Add connection comments.
            chiplet_inst.add_comment(f"{pos_str} connection")
            # chiplet_inst.add_comment(f"2{pos_str} connection")
            # chiplet_inst.add_comment(f"6{pos_str} connection")
            chiplet_inst.connect_by_re("(pad18|pada)_(.*)", f"u{pos_str}_&2")
            chiplet_inst.connect("pad18_xin_osc", "clk")
            chiplet_inst.connect("pad18_po_reset_n", "rstn")
            chiplet_inst.connect("pad18_chip_mode", "chip_mode")
            chiplet_inst.connect_by_re("pad18_my_chip_(x|y)", f"u{pos_str}_&1")

            # Connect the chiplet to its neighbor chiplets.
            for d in dirs:
                neighbor_pos = getattr(chiplet_node, d)
                if neighbor_pos:
                    src, dest = (f"{pos_str}", f"{neighbor_pos.x}{neighbor_pos.y}") if d in ["north", "west"] \
                        else (f"{neighbor_pos.x}{neighbor_pos.y}", f"{pos_str}")
                    chiplet_inst.connect_by_re(f"(.*?)_{d}_(.*)",    f"{src}_{dest}_&2")
                    chiplet_inst.connect_by_re(f"(.*?)_{d}_tx",      f"{src}_{dest}_rx")
                    chiplet_inst.connect_by_re(f"(.*?)_{d}_rx",      f"{src}_{dest}_tx")
                    chiplet_inst.connect_by_re(f"(.*?)_{d}_ns_(.*)", f"{src}_{dest}_fs_&2")
                    chiplet_inst.connect_by_re(f"(.*?)_{d}_fs_(.*)", f"{src}_{dest}_ns_&2")
            
            # Connect the uarts to their corresponding pads on the chiplet.
            cnt = 0
            for xx in range(4):
                for yy in range(4):
                    uart_inst = uart_insts[x][y][xx][yy]
                    uart_inst.connect("RESETn", "rstn")
                    uart_inst.connect("CLK", "clk")
                    uart_inst.connect("RXD", f"u{x}{y}_chiplet_top.u_die_top.u_system_16core_top.uart{cnt}_tx")
                    cnt += 1
    chiplets_top.connect_finish()
    # Add comments and blocks for the chiplets_top module.
    chiplets_top.add_comment(chiplets_top, str(undir_graph))
    chiplets_top.add_block("USE_UVM", f'''
    `ifdef USE_UVM
        import uvm_pkg::*;
        `include "uvm_macros.svh"
        `define CHIPLETS_ROW_NUM {rows}
        `define CHIPLETS_COL_NUM {cols}
        import aib_globals_pkg::*;
        initial begin
            run_test("base_test");
        end
        `ifdef UVM_MONITOR_AIB
            `include "tb_aib_macros.sv"''')
    chiplets_top.add_sig("sim_end", 1, "logic")
    chiplets_top.add_block("COM", '''
    // logic sim_end;
    assign sim_end = ''')
    for x in range(rows):
        for y in range(cols):
            chiplet_inst = chiplet_insts[x][y]
            chiplets_top.add_block("pre" + f"{chiplet_inst.inst_name}", f"{' '*4}assign u{x}{y}_x = {x};\n")
            chiplets_top.add_block("pre" + f"{chiplet_inst.inst_name}", f"{' '*4}assign u{x}{y}_y = {y};\n")
            for d in dirs:
                chiplets_top.add_block("USE_UVM", f'''
            `declare_aib_uvm({chiplets_top.module_name}, {x}, {y}, {d}, {d.upper()})''')
            for xx in range(4):
                for yy in range(4):
                    if x == 0 and y == 0 and xx == 0 and yy == 0:
                        uart_inst = uart_insts[x][y][xx][yy]
                        chiplets_top.add_block("pre"+f"{uart_inst.inst_name}", "`ifndef USE_UVM_UART\n")
                        chiplets_top.add_block("COM", f"{chiplet_inst.inst_name}.u_die_top.u_system_16core_top.pulpino_{xx}_{yy}.peripherals_i.apb_pulpino_i.sim_end_o[0]")
                    elif x == rows-1 and y == cols-1 and xx == 3 and yy == 3:
                        uart_inst = uart_insts[x][y][xx][yy]
                        chiplets_top.add_block("post"+f"{uart_inst.inst_name}", "`endif\n")
                        chiplets_top.add_block("COM", f"\n{' '*8}&& {chiplet_inst.inst_name}.u_die_top.u_system_16core_top.pulpino_{xx}_{yy}.peripherals_i.apb_pulpino_i.sim_end_o[0];\n")
                    else:
                        chiplets_top.add_block("COM", f"\n{' '*8}&& {chiplet_inst.inst_name}.u_die_top.u_system_16core_top.pulpino_{xx}_{yy}.peripherals_i.apb_pulpino_i.sim_end_o[0]")
    chiplets_top.add_block("USE_UVM", f'''
        `endif
    `endif
    ''')
    chiplets_top.add_block("COM", f'''
    initial begin
        clk = 1;
        forever begin
            #(50ns/2) clk = ~clk;
        end
    end
    initial begin
        if($test$plusargs("FSDB_ON")) begin
            $fsdbDumpvars(0, {chiplets_top.module_name})
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
    ''')
    with open(f'chiplets_top.sv', 'w') as f:
        f.write(str(chiplets_top))
