`timescale 1ns / 1ps
// This module builds a 17-bit address out of
// a 9-bit base address and a high address of
// up to 8 bits.
// How much of the high address is used is
// determined by a separate 3-bit input. The 3-bit input specifies the number of trailing zeros.
// 0: 8 bits used: addr[15:0] = {highaddr[7:0],addr_in[8:0]}
// 1: 7 bits used: addr[15:0] = {highaddr[7:1],addr_in[8:0],1'b0}
// 2: 6 bits used: addr[15:0] = {highaddr[7:2],addr_in[8:0],2'b00)
// etc.
// Since the base memory space is 32 bits, this means each memory space corresponds to
// 0 = 2^15 bytes = 32k
// 1 = 2^16 bytes = 64k
// 2 = 2^17 bytes = 128k
// 3 = 2^18 bytes = 256k
// 4 = 2^19 bytes = 512k
// 5 = 2^20 bytes = 1024k
// 6 = 2^21 bytes = 2048k
// 7 = 2^22 bytes = 4096k
//
// The 9-bit base address is input as a 16-bit AXI Stream, but only 9 bits are relevant. 
// The output address is 24 bits, but only 17 are relevant.
module source_address_builder(
        input aclk,
        input aresetn,
        input [15:0] s_axis_tdata,
        input        s_axis_tvalid,
        output       s_axis_tready,
        
        output [23:0] m_axis_tdata,
        output        m_axis_tvalid,
        input         m_axis_tready,
        
        input [2:0] buffer_size,
        input [7:0] high_address
    );
    
    reg [23:0] address_remap;
    always @(*) begin
        case (buffer_size)
            0: address_remap <= { {7{1'b0}}, high_address[7:0], s_axis_tdata[9:0] };
            1: address_remap <= { {7{1'b0}}, high_address[7:1], s_axis_tdata[9:0], 1'b0 };
            2: address_remap <= { {7{1'b0}}, high_address[7:2], s_axis_tdata[9:0], 2'b0 };
            3: address_remap <= { {7{1'b0}}, high_address[7:3], s_axis_tdata[9:0], 3'b0 };
            4: address_remap <= { {7{1'b0}}, high_address[7:4], s_axis_tdata[9:0], 4'b0 };
            5: address_remap <= { {7{1'b0}}, high_address[7:5], s_axis_tdata[9:0], 5'b0 };
            6: address_remap <= { {7{1'b0}}, high_address[7:6], s_axis_tdata[9:0], 6'b0 };
            7: address_remap <= { {7{1'b0}}, high_address[7:7], s_axis_tdata[9:0], 7'b0 };
        endcase 
    end
    assign m_axis_tdata = address_remap;
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;    
endmodule
