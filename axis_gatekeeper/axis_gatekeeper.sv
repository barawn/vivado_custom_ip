`timescale 1ns / 1ps
// This is a gatekeeper module: it has an input/output AXI4-Stream
// and an allow input which acts to throttle the throughput.
module axis_gatekeeper #(
        parameter C_AXIS_DATA_BYTES = 8,
        parameter C_AXIS_USE_TKEEP = 0,
        parameter C_AXIS_TUSER_WIDTH = 0,
        parameter C_AXIS_USE_TLAST = 0    
    )(
        input aclk,
        input aresetn,
        input [C_AXIS_DATA_BYTES*8-1:0] s_axis_tdata,
        input [C_AXIS_DATA_BYTES-1:0] s_axis_tkeep,
        input [((C_AXIS_TUSER_WIDTH>0) ? C_AXIS_TUSER_WIDTH-1 : 0) : 0] s_axis_tuser,
        input s_axis_tvalid,
        input s_axis_tlast,
        output s_axis_tready,
        
        output [C_AXIS_DATA_BYTES*8-1:0] m_axis_tdata,
        output [C_AXIS_DATA_BYTES-1:0] m_axis_tkeep,
        output [((C_AXIS_TUSER_WIDTH>0) ? C_AXIS_TUSER_WIDTH-1 : 0) : 0] m_axis_tuser,
        output m_axis_tvalid,
        output m_axis_tlast,
        input m_axis_tready,
        
        input s_allow,
        output [8:0] s_allow_count
    );
    
    wire local_tlast = (C_AXIS_USE_TLAST) ? s_axis_tlast : 1'b1;
    
    // Sigh, there *should* be a way to implement
    // this optimally, since we could just grab the
    // carry out and and it with an addsub control.
    // WHATEVER. Look into this later.
    reg [8:0] allow_count = {9{1'b0}};
    always @(posedge aclk) begin
        if (!aresetn) allow_count <= {9{1'b0}};
        else if (s_allow) begin
            // Don't count up if we're also counting down.
            // Don't count up if we would overflow.
            if (!(s_axis_tvalid && s_axis_tready && local_tlast) && !(&allow_count))
                allow_count <= allow_count + 1;
        end else begin
            // Counting down doesn't need a guard because
            // s_axis_tready is already qualified on being nonzero
            if (s_axis_tvalid && s_axis_tready && local_tlast)
                allow_count <= allow_count - 1;
        end
    end
    
    // qualify the outbound...
    assign m_axis_tvalid = s_axis_tvalid && |allow_count;
    // and the inbound
    assign s_axis_tready = m_axis_tready && |allow_count;
    
    assign m_axis_tdata = s_axis_tdata;
    generate
        if (C_AXIS_USE_TLAST) begin : TL
            assign m_axis_tlast = s_axis_tlast;
        end
        if (C_AXIS_USE_TKEEP) begin : TK
            assign m_axis_tkeep = s_axis_tkeep;
        end
        if (C_AXIS_TUSER_WIDTH>0) begin : TU
            assign m_axis_tuser = s_axis_tuser;
        end
    endgenerate
    
    assign s_allow_count = allow_count;
endmodule
