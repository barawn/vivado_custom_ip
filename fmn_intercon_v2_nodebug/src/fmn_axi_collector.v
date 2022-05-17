`timescale 1ns / 1ps
// The FMN AXI collector is a utility module for the block diagram
// which collects all of the AXI interfaces and merges them into
// vectors so they can go through a port.
//
// The only reason we're using the block diagrams in the first place
// is so we can use the most recent AXI Interconnect and also the
// System ILA (since debugging memory-mapped AXI is crazy hard).

// We want supa-magic.

`include "mem_axi.vh"

`undef AXIM_BUILD_FROM
`undef AXIM_BUILD_TO
`define AXIM_BUILD_TO( x , y ) { M7_``y , M6_``y, M5_``y, M4_``y, M3_``y, M2_``y, M1_``y , M0_``y }
`define AXIM_BUILD_FROM( x , y ) SN_``y

// clk/aresetn here are just to help the inference    
module fmn_axi_collector(
        input aclk,
        input aresetn,

        `S_AXIM_PORT( SN_ , 8 ),
        `M_AXIM_PORT( M0_ , 1 ),
        `M_AXIM_PORT( M1_ , 1 ),
        `M_AXIM_PORT( M2_ , 1 ),
        `M_AXIM_PORT( M3_ , 1 ),
        `M_AXIM_PORT( M4_ , 1 ),
        `M_AXIM_PORT( M5_ , 1 ),
        `M_AXIM_PORT( M6_ , 1 ),
        `M_AXIM_PORT( M7_ , 1 )
    );

    // yes, this is all done in one macro,
    // but this looks exactly like what it is: assign SN = { M7, M6, M5, M4, M3, M2, M1, M0 }.
    // Everything Just Works.
    // assign_axim( to, from)
    // arready is from = to
    // araddr is to = from
    // SN_ is a slave port: it *accepts* addresses
    // M... are master ports : they *drive* addresses
    // So this needs to be the other way around
    `ASSIGN_AXIM( { M7_ , M6_ , M5_ , M4_ , M3 , M2_ , M1_ , M0_ } , SN_ );
        
endmodule

