`timescale 1ns / 1ps
module frame_address_reset(
        input aclk,
        input aresetn,
        output [15:0] m_axis_tdata,
        output        m_axis_tvalid,
        input         m_axis_tready,
        output [1:0]  m_req_suppress
    );

    reg [2:0] areset_delay = 3'b000;
    
    reg enable_refills = 0;
    reg filling = 0;
    reg [8:0] address_counter = {9{1'b0}};
    wire [9:0] address_counter_plus_one = address_counter + 1;
    always @(posedge aclk) begin
        if (!aresetn) enable_refills <= 0;
        else if (address_counter_plus_one[9] && m_axis_tready) enable_refills <= 1;
        
        if (!aresetn) filling <= 0;
        else if (areset_delay[2] && !areset_delay[1]) filling <= 1;
        else if (address_counter_plus_one[9] && m_axis_tready) filling <= 0;
        
        if (!aresetn) address_counter <= {9{1'b0}};
        else if (filling && m_axis_tready) address_counter <= address_counter_plus_one;
        
        areset_delay <= {areset_delay[1:0],~aresetn};
    end
    
    assign m_axis_tvalid = filling;
    assign m_axis_tdata = { {7{1'b0}}, address_counter };
    assign m_req_suppress = { 1'b0, !enable_refills };
        
endmodule
