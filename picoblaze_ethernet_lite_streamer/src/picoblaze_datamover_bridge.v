`timescale 1ns / 1ps
`include "axi_macros.vh"

module picoblaze_datamover_bridge #(
        parameter C_BASE_ADDRESS = 8'h20
        )(
        input clk,
        input resetn,
        input [7:0] out_port,
        output [7:0] in_port,
        input [7:0] port_id,
        input write_strobe,
        input read_strobe,
        
        // DataMover S2MM command connection.
        output [71:0] m_axis_s2mm_cmd_tdata,
        input m_axis_s2mm_cmd_tready,
        output m_axis_s2mm_cmd_tvalid,
        // DataMover S2MM status connection.
        input [31:0] s_axis_s2mm_sts_tdata,
        output s_axis_s2mm_sts_tready,
        input s_axis_s2mm_sts_tvalid,
        // DataMover S2MM connection. Needed so we can see when a transfer
        // begins/ends. For connection purposes, we just make it complete,
        // and then *pass it out again*. Note: it SUCKS that we can't just
        // initiate a pending action and it'll just 'happen'. But, y'know,
        // Xilinx sucks.
        output [7:0] m_axis_s2mm_tdata,
        input m_axis_s2mm_tready,
        output m_axis_s2mm_tvalid,
        output m_axis_s2mm_tlast,
        // *Input* S2MM connection.
        input [7:0] s_axis_s2mm_tdata,
        output s_axis_s2mm_tready,
        input s_axis_s2mm_tvalid,
        input s_axis_s2mm_tlast,

        // DataMover MM2S command connection
        output [71:0] m_axis_mm2s_cmd_tdata,
        input m_axis_mm2s_cmd_tready,
        output m_axis_mm2s_cmd_tvalid,
        // DataMover MM2S status connection
        input [7:0] s_axis_mm2s_sts_tdata,
        output s_axis_mm2s_sts_tready,
        input s_axis_mm2s_sts_tvalid    
);

    // Loop the S2MM input <-> output connections.
    assign m_axis_s2mm_tdata = s_axis_s2mm_tdata;
    assign m_axis_s2mm_tvalid = s_axis_s2mm_tvalid;
    assign s_axis_s2mm_tready = m_axis_s2mm_tready;
    assign m_axis_s2mm_tlast = s_axis_s2mm_tlast;

    // DataMover definitions.

    // The S2MM command interface is nearly static, so we can just about preassign it.
    reg s2mm_buffer = 0;

    // S2MM Status path. Note DataMover has a _tlast, but this isn't a framed connection (_tlast is always 1). So we don't connect it.
    // Stream to MM capture.
    reg [7:0] s2mm_status_byte = {8{1'b0}};
    reg [10:0] s2mm_bytes_received = {11{1'b0}};
    wire [15:0] s2mm_bytes_received_expanded = {{5{1'b0}},s2mm_bytes_received};
    
    // S2MM Control.
    // Watches for TVALID asserted when not currently active.
    reg s2mm_pending = 0;            
    reg s2mm_begin = 0;
    reg s2mm_active = 0;
    reg s2mm_done = 0;
    wire s2mm_err;
    wire [7:0] s2mm_control = {2'b00, s2mm_pending, s2mm_err,s2mm_buffer,s2mm_done,s2mm_active,s2mm_begin};
       

    // The MM2S is almost static - we need to be able to specify the byte count and buffer.
    reg mm2s_buffer = 0;
    reg [10:0] mm2s_bytes_to_transfer = {11{1'b0}};
    // make a 16-bit version of mm2s_bytes_to_transfer
    wire [15:0] mm2s_bytes_to_transfer_expanded = {{5{1'b0}},mm2s_bytes_to_transfer};

    // MM2S Status.
    // Status capture.
    reg [7:0] mm2s_status_byte = {8{1'b0}};

    // MM2S Control.
    reg mm2s_begin = 0;
    reg mm2s_active = 0;
    reg mm2s_done = 0;
    wire mm2s_err;
    wire [7:0] mm2s_control = {3'b000,mm2s_err,mm2s_buffer,mm2s_done,mm2s_active,mm2s_begin};

    // DataMover PicoBlaze map.
    // We need: status word (2x1 bytes)
    // Bytes to send (2x2 bytes)
    // TX control word (1 byte).
    // RX control word (1 byte).
    // That's 4 bytes for each, so organize it as:
    // 0x00: MM2S Control
    // 0x01: MM2S Status
    // 0x02: MM2S Bytes to Transfer[07:00]
    // 0x03: MM2S Bytes to Transfer[15:08]
    // 0x04: S2MM Control
    // 0x05: S2MM Status
    // 0x06: S2MM Bytes Transferred[07:00]
    // 0x07: S2MM Bytes Transferred[15:08]
    wire [7:0] datamover_register_map[7:0];
    assign datamover_register_map[0] = mm2s_status_byte;
    assign datamover_register_map[1] = mm2s_control;
    assign datamover_register_map[2] = mm2s_bytes_to_transfer_expanded[7:0];
    assign datamover_register_map[3] = mm2s_bytes_to_transfer_expanded[15:8];
    assign datamover_register_map[4] = s2mm_status_byte;
    assign datamover_register_map[5] = s2mm_control;
    assign datamover_register_map[6] = s2mm_bytes_received_expanded[7:0];
    assign datamover_register_map[7] = s2mm_bytes_received_expanded[15:8];
    wire datamover_port_access = ({port_id[7:5],5'h00} == C_BASE_ADDRESS);

    always @(posedge clk) begin : DATAMOVER_LOGIC
        //// S2MM

        // Active when 'begin' is asserted and cleared when 'last' is asserted.
        if (!resetn) s2mm_active <= 0;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h5) && out_port[0]) s2mm_active <= 1;
        else if (s_axis_s2mm_tlast && s_axis_s2mm_tready && s_axis_s2mm_tvalid) s2mm_active <= 0;        

        // Pending when tvalid is asserted and not already active. Cleared when 'begin' is asserted.
        if (!resetn) s2mm_pending <= 0;
        else if (!s2mm_active && s_axis_s2mm_tvalid) s2mm_pending <= 1;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h5) && out_port[0]) s2mm_pending <= 0;
        
        // Write 1 to bit 0 to begin S2MM transaction.
        if (!resetn) s2mm_begin <= 0;
        else if (s2mm_begin && m_axis_s2mm_cmd_tready) s2mm_begin <= 0;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h5) && out_port[0]) s2mm_begin <= 1;

        // Capture status byte and bytes received.
        if (s_axis_s2mm_sts_tvalid && s_axis_s2mm_sts_tready) begin
            s2mm_status_byte <= s_axis_s2mm_sts_tdata[7:0];
            s2mm_bytes_received <= s_axis_s2mm_sts_tdata[8 +: 11];
        end
        // Write 1 to bit 2 to acknowledge that S2MM status has been read.
        if (!resetn) s2mm_done <= 0;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h5) && out_port[2]) s2mm_done <= 0;
        // the s_axis_s2mm_sts_tready qualifier here isn't needed because it's !s2mm_done
        else if (s_axis_s2mm_sts_tvalid) s2mm_done <= 1;
        // Update buffer if beginning transaction
        if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h5) && out_port[0]) s2mm_buffer <= out_port[3];

        //// MM2S 
                        
        // Write 1 to bit 0 to begin MM2S transaction.
        if (!resetn) mm2s_begin <= 0;
        else if (mm2s_begin && m_axis_mm2s_cmd_tready) mm2s_begin <= 0;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h1) && out_port[0]) mm2s_begin <= 1;
        
        // Capture status byte.
        if (s_axis_mm2s_sts_tvalid && s_axis_mm2s_sts_tready) mm2s_status_byte <= s_axis_mm2s_sts_tdata;

        // Write 1 to bit 2 to acknowledge that MM2S status has been read.
        if (!resetn) mm2s_done <= 0;
        else if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h1) && out_port[2]) mm2s_done <= 0;
        // the s_axis_mm2s_sts_tready qualifier isn't needed because it's !mm2s_done
        else if (s_axis_mm2s_sts_tvalid) mm2s_done <= 1;
        // Update buffer if we're beginning transaction.
        if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h1) && out_port[0]) mm2s_buffer <= out_port[3];
        if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h2)) mm2s_bytes_to_transfer[7:0] <= out_port;
        if (datamover_port_access && write_strobe && (port_id[2:0] == 4'h3)) mm2s_bytes_to_transfer[10:8] <= out_port[2:0];        
    end

    assign in_port = datamover_register_map[port_id[2:0]];

    assign m_axis_mm2s_cmd_tvalid = mm2s_begin;
    assign s_axis_mm2s_sts_tready = !mm2s_done;

    assign m_axis_s2mm_cmd_tvalid = s2mm_begin;
    assign s_axis_s2mm_sts_tready = !s2mm_done;

    // Length is always maximal (1024).
    assign m_axis_s2mm_cmd_tdata[15:0] = 16'd1024;
    // Type = 1 (incrementing), and EOF (expect TLAST).
    assign m_axis_s2mm_cmd_tdata[31:16] = 16'h8080;
    // Start addr = 0 or 0800. So it's 4'h0,s2mm_buffer,{11{1'b0}}
    assign m_axis_s2mm_cmd_tdata[32 +: 16] = {4'h0,s2mm_buffer,{11{1'b0}}};
    assign m_axis_s2mm_cmd_tdata[48 +: 16] = {16{1'b0}};
    // Tag is 0x8 if buffer == 1. Else 0.
    assign m_axis_s2mm_cmd_tdata[64 +: 8] = {{4{1'b0}}, s2mm_buffer, 3'b000};

    assign m_axis_mm2s_cmd_tdata[15:0] = {{5{1'b0}},mm2s_bytes_to_transfer};
    // Type 1 (incrementing), and EOF (assert TLAST).
    assign m_axis_mm2s_cmd_tdata[31:16] = 16'h4080;
    // Address is 0x1000 or 0x1800. So it's {4'h1,mm2s_buffer,{11{1'b0}}};
    assign m_axis_mm2s_cmd_tdata[32 +: 16] = {4'h1,mm2s_buffer,{11{1'b0}}};
    assign m_axis_mm2s_cmd_tdata[48 +: 16] = {16{1'b0}};
    // Tag is 0x8 if buffer == 1. Else 0.
    assign m_axis_mm2s_cmd_tdata[64 +: 8] = {{4{1'b0}}, mm2s_buffer, 3'b000};

endmodule
