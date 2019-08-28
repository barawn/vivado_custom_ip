`timescale 1ns / 1ps
//% \brief An AXI core for generating up to 64 PWM outputs of up to 24-bit length.
//%
//% 0x000-0x0FF: control space
//% 0x100-0x1FF: PWM load registers.
//%
//% PWM register values are write-only - the values are stored in the DSP registers,
//% which can't be read out.
//% Control registers:
//% 0x00: RESET[31:0] : Reset for PWM pairs. A write of 0xFFFF_FFFF resets all DSPs.
//% 0x04: OEB[31:0]   : Output enables for PWMs 0-31.
//% 0x08: OEB[63:32]  : Output enables for PWMs 32-63.
//%
//% Note that the output enables are just outputs from the module, as IOBs aren't included internally.
module axi_pwm #(parameter C_NUM_PWM = 2, parameter C_PWM_WIDTH = 24) (
        input S_AXI_ACLK,
        input S_AXI_ARESETN,
        
        input [8:0] S_AXI_AWADDR,
        input S_AXI_AWVALID,
        output S_AXI_AWREADY,
        
        input [8:0] S_AXI_ARADDR,
        input S_AXI_ARVALID,
        output S_AXI_ARREADY,
        
        input [31:0] S_AXI_WDATA,
        input S_AXI_WVALID,
        output S_AXI_WREADY,
        input [3:0] S_AXI_WSTRB,
        
        output [31:0] S_AXI_RDATA,
        output S_AXI_RVALID,
        input S_AXI_RREADY,
        
        output [1:0] S_AXI_BRESP,
        output S_AXI_BVALID,
        input S_AXI_BREADY,
        
        input PWM_CLK,
        output [C_NUM_PWM-1:0] PWM,
        output [C_NUM_PWM-1:0] PWM_OEB
    );
    
    localparam PWM_OEB_REG0_MAX = (C_NUM_PWM > 32) ? 31 : C_NUM_PWM-1;
    
    // super-simple AXI4-Lite interface. 

    //% Write access. This works because BVALID is just this guy registered, so it's a flag.
    wire axi_write = S_AXI_AWVALID && S_AXI_WVALID && !S_AXI_BVALID;
    //% Read access. This works because RVALID is just this guy registered, so it's a flag.
    wire axi_read = S_AXI_ARVALID && !S_AXI_RVALID;

    //% AXI AWREADY signal.    
    reg awready = 0;
    //% AXI ARREADY signal.
    reg arready = 1;
    //% AXI WREADY signal.
    reg wready = 0;
    //% AXI RVALID signal.
    reg rvalid = 0;
    //% AXI BVALID signal.
    reg bvalid = 0;
    //% AXI BRESP signal
    reg [1:0] bresp = {2{1'b0}};
    //% AXI RDATA signal
    reg [31:0] rdata = {32{1'b0}};
    
    //% Local reset.
    reg reset = 0;

    //% Output enables.
    reg [C_NUM_PWM-1:0] pwm_oeb = {C_NUM_PWM{1'b1}};
    assign PWM_OEB = pwm_oeb;
    //% Expanded array of output enables
    wire [63:0] pwm_oeb_expanded;
    assign pwm_oeb_expanded[C_NUM_PWM-1:0] = pwm_oeb;
    always @(posedge S_AXI_ACLK) begin : AXI_CONTROL_LOGIC
        reset <= ~S_AXI_ARESETN;
        
        // Assert AWREADY only when all channels have valid data
        if (reset) awready <= 0;
        else awready <= axi_write;
        // Assert WREADY only when all channels have valid data
        if (reset) wready <= 0;
        else wready <= axi_write;
        
        if (reset) bvalid <= 0;
        // Assert BVALID when write completes...        
        else if (axi_write) bvalid <= 1;
        // and deassert when BRESP transaction complete
        else if (bvalid && S_AXI_BREADY) bvalid <= 0;
        
        // The read sequence goes
        // for short turnaround (rready always valid, arvalid always ready)
        // ARVALID ARREADY RREADY RVALID axi_read
        // 0       1       X      0      0
        // 1       1       X      0      1
        // 1       0       1      1      0
        // 1       1       1      0      1
        // 0       0       1      1      0
        // 0       1       X      0      0
        //
        // for longer turn RREADY:
        // 0       1       X      0      0
        // 1       1       X      0      1
        // 1       0       0      1      0
        // 1       0       0      1      0
        // 1       0       1      1      0
        // 1       1       X      0      1
        //
        // So ARREADY is just !RVALID.
        if (reset) arready <= 1;
        else if (axi_read) arready <= 0;
        else if (rvalid && S_AXI_RREADY) arready <= 1;
        
        if (reset) rvalid <= 0;
        else if (axi_read) rvalid <= 1;
        else if (rvalid && S_AXI_RREADY) rvalid <= 0;

        // read data. Only the PWM OEBs can be read back
        if (axi_read) begin
            if (S_AXI_ARADDR == 9'h004) rdata <= pwm_oeb_expanded[0 +: 32];
            else if (S_AXI_ARADDR == 9'h008) rdata <= pwm_oeb_expanded[32 +: 32];
            else rdata <= {32{1'b0}};
        end
        
        // OEB register for PWMs 0-31
        if (axi_write && (S_AXI_AWADDR == 9'h004)) pwm_oeb[PWM_OEB_REG0_MAX:0] <= S_AXI_WDATA[PWM_OEB_REG0_MAX:0];
    end

    // generate the extra OEB register if we run over 32 PWMs
    generate
        if (C_NUM_PWM > 32) begin : PWM_OEB_REG1
            always @(posedge S_AXI_ACLK) begin : PWM_OEB_REG1_LOGIC
                if (axi_write && (S_AXI_AWADDR == 9'h008)) pwm_oeb[C_NUM_PWM-1:32] <= S_AXI_WDATA[C_NUM_PWM-32:0];
            end
        end
    endgenerate

    generate
        genvar i;
        if (C_NUM_PWM < 64) begin : PWM_OEB_UNUSED_BITS
            assign pwm_oeb_expanded[63:C_NUM_PWM] = {64-C_NUM_PWM{1'b0}};
        end
        for (i=0;i<C_NUM_PWM;i=i+2) begin : PWM_LOOP
            wire [1:0] pwm_load;
            wire [1:0] pwm_reset;
            wire [1:0] pwm_output;
            assign PWM[i] = pwm_output[0];
            assign pwm_load[0] = S_AXI_AWADDR[8] && (S_AXI_AWADDR[7:0] == i) && axi_write;
            assign pwm_reset = (S_AXI_AWADDR == 9'h000) && axi_write && S_AXI_WDATA[i/2];
            if (i+1 == C_NUM_PWM) begin : SINGLE_PWM
                assign pwm_load[1] = 1'b0;
            end else begin : DOUBLE_PWM
                assign pwm_load[1] = S_AXI_AWADDR[8] && (S_AXI_AWADDR[7:0] == i+1) && axi_write;
                assign PWM[i+1] = pwm_output[1];
            end
            async_pwm_output #(.C_PWM_WIDTH(C_PWM_WIDTH)) u_pwm(.pwm_value_clk_i(S_AXI_ACLK),.pwm_value_i(S_AXI_WDATA[C_PWM_WIDTH-1:0]),
                                                                .pwm_value_load_i(pwm_load),
                                                                .pwm_rst_i(pwm_reset),
                                                                .pwm_clk_i(PWM_CLK),
                                                                .PWM(pwm_output));
        end
    endgenerate

    // outbound channels
    assign S_AXI_RDATA = rdata;
    assign S_AXI_RVALID = rvalid;
    assign S_AXI_BVALID = bvalid;
    assign S_AXI_BRESP = bresp;
    // inbound channels
    assign S_AXI_AWREADY = awready;
    assign S_AXI_WREADY = wready;
    assign S_AXI_ARREADY = arready;    
endmodule
