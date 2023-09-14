`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 12:46:00 PM
// Design Name: 
// Module Name: helix_picoblaze
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module helix_picoblaze(
        input clk_i,
        input sys_rst_i,
        output sys_rst_complete_o,
        input rst_i,
        input step_i,
        input [7:0] in_port,
        output [7:0] out_port,
        output k_write_strobe,
        output write_strobe,
        output read_strobe,
        output [7:0] port_id
    );

    reg reset_complete = 0;
    
    wire [9:0] address;
    wire [17:0] instruction;
    reg step = 0;
    reg step_rereg = 0;
    always @(posedge clk_i) begin
        step_rereg <= step_i;
        if (step_i && !step_rereg) step <= 1;
        else if (port_id[7] && write_strobe && out_port[0]) step <= 0;

        if (sys_rst_i) reset_complete <= 0;
        else if (port_id[7] && write_strobe && out_port[1]) reset_complete <= 1;
    end
    wire [7:0] in_port_mux = port_id[7] ? {{6{1'b0}},reset_complete,step} : in_port;
    kcpsm6 u_picoblaze(.clk(clk_i),.reset(rst_i),.interrupt(1'b0),.port_id(port_id),.out_port(out_port),.in_port(in_port_mux),.sleep(1'b0),
                       .write_strobe(write_strobe),.k_write_strobe(k_write_strobe),.read_strobe(read_strobe),
                       .address(address),.instruction(instruction));
    pblaze_helix_setup u_rom(.clk(clk_i),.address(address),.instruction(instruction));
    
    assign sys_rst_complete_o = reset_complete;
endmodule
