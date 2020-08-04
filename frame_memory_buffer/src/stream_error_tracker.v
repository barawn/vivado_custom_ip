`timescale 1ns / 1ps
`define DLYFF #1
module stream_error_tracker(
        input aclk,
        input aresetn,
        
        input [511:0] s_axis_tdata,
        input [2:0]   s_axis_tuser,
        input         s_axis_tvalid,
        input         s_axis_tlast,
        output        s_axis_tready,
        
        output [7:0] m_axis_tdata,
        output       m_axis_tvalid,
        input        m_axis_tready
    );

    reg [2:0] error_sticky = {3{1'b0}};
    reg frame_seen = 0;
    // this is so stupid but easier to imagine
    localparam FSM_BITS = 1;
    localparam [FSM_BITS-1:0] WATCHING = 0;
    localparam [FSM_BITS-1:0] WRITING = 1;
    reg [FSM_BITS-1:0] state = WATCHING;
    
    assign m_axis_tvalid = (state == WRITING);
    assign s_axis_tready = (state == WATCHING);
    
    always @(posedge aclk) begin
        if (!aresetn) state <= WATCHING;
        else begin
            case (state)
                WATCHING: if (s_axis_tvalid && s_axis_tlast) state <= `DLYFF WRITING;
                WRITING: if (m_axis_tready) state <= `DLYFF WATCHING;
            endcase
        end
        if (!aresetn || (m_axis_tvalid && m_axis_tready)) begin
            error_sticky <= `DLYFF {3{1'b0}};
            frame_seen <= `DLYFF 1'b0;
        end else if (s_axis_tvalid && s_axis_tready) begin
            frame_seen <= `DLYFF 1'b1;
            if (s_axis_tuser[2]) error_sticky[2] <= 1;
            if (s_axis_tuser[1]) error_sticky[1] <= 1;
            if (s_axis_tuser[0] == frame_seen) error_sticky[0] <= 1;
        end
    end
    
    assign m_axis_tdata = { {5{1'b0}}, error_sticky };

endmodule
