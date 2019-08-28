`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2019 10:31:04 AM
// Design Name: 
// Module Name: axi_pwm_sim
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


module axi_pwm_sim;
    
    reg aclk = 0;
    always #2.5 aclk = ~aclk;
    reg aresetn = 1;
    
    reg pwm_clk = 0;
    always #2 pwm_clk = ~pwm_clk;
    
    reg [9:0] awaddr = {10{1'b0}};
    reg [9:0] araddr = {10{1'b0}};
    reg awvalid = 0;
    reg arvalid = 0;
    wire awready;
    wire arready;
    reg [31:0] wdata = {32{1'b0}};
    reg wvalid = 0;
    wire wready;
    wire [31:0] rdata;
    wire rvalid;
    reg rready = 1;
    wire [1:0] bresp;
    wire bvalid;
    reg bready = 1;
    
    wire [0:0] pwm;
    wire [0:0] pwm_oeb;
    
    reg [23:0] pwm_value = {24{1'b0}};
    
    axi_pwm #(.C_NUM_PWM(1)) uut(.S_AXI_ACLK(aclk),.S_AXI_ARESETN(aresetn),
                                    .S_AXI_AWADDR(awaddr),
                                    .S_AXI_AWVALID(awvalid),
                                    .S_AXI_AWREADY(awready),
                                    .S_AXI_ARADDR(araddr),
                                    .S_AXI_ARVALID(arvalid),
                                    .S_AXI_ARREADY(arready),
                                    .S_AXI_WDATA(wdata),
                                    .S_AXI_WVALID(wvalid),
                                    .S_AXI_WREADY(wready),
                                    .S_AXI_BRESP(bresp),
                                    .S_AXI_BVALID(bvalid),
                                    .S_AXI_BREADY(bready),
                                    .S_AXI_RDATA(rdata),
                                    .S_AXI_RVALID(rvalid),
                                    .S_AXI_RREADY(rready),
                                    .PWM_CLK(pwm_clk),
                                    .PWM(pwm),
                                    .PWM_OEB(pwm_oeb));
    initial begin
        #100;
        @(posedge aclk); #1 aresetn = 0; @(posedge aclk); #1 aresetn = 1;
        #100;
        @(posedge aclk); #1;
        araddr = 10'h04;
        arvalid = 1;
        @(posedge aclk); while (!arready) @(posedge aclk);
        #1 arvalid = 0;
        #100;
        @(posedge aclk); #1;
        araddr = 10'h04;
        arvalid = 1;
        @(posedge aclk); while (!arready) @(posedge aclk);
        #1 arvalid = 0;
        #100;
        @(posedge aclk); #1;
        awaddr = 10'h100;
        awvalid = 1;
        wdata = 24'hC0_0000;
        wvalid = 1;
        @(posedge aclk); 
        while (!wready || !awready) begin
            #1;
            if (wready) wvalid = 0;
            if (awready) awvalid = 0;
            @(posedge aclk);
        end
    end
        
    
endmodule
