`timescale 1ns / 1ps
//% \brief Dual PWM output of parametrizable width (up to 24), loaded through a clock asynchronous to the PWM clock.
//%
//% Note that the math internally is always 24 bit - for C_PWM_WIDTH less than 24, it just truncates the holding
//% register and shifts up the value as input to the DSP (e.g. a 16-bit 80_00 is just presented as 80_00_00).
module async_pwm_output #(parameter C_PWM_WIDTH=24) (
        input pwm_value_clk_i,
        input [C_PWM_WIDTH-1:0] pwm_value_i,
        input [1:0] pwm_value_load_i,
        input pwm_rst_i,
        
        input pwm_clk_i,
        output [1:0] PWM
    );
    
    
    //% Register in the pwm_value_clk_i domain.
    reg [C_PWM_WIDTH-1:0] pwm_value_reg = {C_PWM_WIDTH{1'b0}};
    //% map to the high bits
    wire [23:0] pwm_value_remap;
    assign pwm_value_remap[23:(24-C_PWM_WIDTH)] = pwm_value_reg;
    generate
        if (C_PWM_WIDTH < 24) begin : SHORT_PWM_VALUE
            assign pwm_value_remap[0 +: (24-C_PWM_WIDTH)] = {24-C_PWM_WIDTH{1'b0}};
        end
    endgenerate

    //% Holdoff to make sure pwm_value_reg is stable.
    reg [1:0] pwm_loading = 2'b00;
    //% Flag register to indicate to pwm_clk_i domain to load 0.
    reg [1:0] pwm_do_load = 0;

    //% pwm_do_load in pwm_clk_i domain
    wire [1:0] pwm_do_load_pwm_clk;
    //% indicates the load flag is busy crossing clock domains
    wire [1:0] pwm_do_load_busy;

    //% Holdoff on reset.
    reg resetting = 0;
    //% Flag to pwm_clk_i to indicate reset
    reg pwm_do_reset = 0;
    //% pwm_do_reset in pwm_clk_i domain
    wire pwm_do_reset_pwm_clk;
    //% indicates the reset flag is busy crossing clock domains
    wire pwm_do_reset_busy;
    
    // The PWM clock logic uses a DSP48 slice to generate the PWM output using an NCO approach,
    // which minimizes ripple.
    // The DSP48 slice is configured as an accumulator, adding a static 24-bit value using a SIMD architecture.
    // PWM0 uses the A/B inputs for the addend, and PWM1 uses the C input for the addend.
    // This allows the use of separate clock enables.    
    wire [23:0] SIMD_A1 = 24'h00_00_00;    // uses CARRYOUT[3]
    wire [23:0] SIMD_A0 = pwm_value_remap;   // uses CARRYOUT[1]
    wire [23:0] SIMD_C1 = pwm_value_remap;
    wire [23:0] SIMD_C0 = {24{1'b0}};
    wire [29:0] DSP_A = {SIMD_A1,SIMD_A0[23:18]};
    wire [17:0] DSP_B = SIMD_A0[0 +: 18]; 
    wire [47:0] DSP_C = {SIMD_C1, SIMD_C0};
    wire [3:0] DSP_CARRYOUT;
    
    wire [2:0] DSP_ZMUX = 3'b010;
    wire [1:0] DSP_YMUX = 2'b11;
    wire [1:0] DSP_XMUX = 2'b11;
    wire [6:0] OPMODE = {DSP_ZMUX,DSP_YMUX,DSP_XMUX};

    wire [2:0] CARRYINSEL = 3'b000;
    
    wire [3:0] ALUMODE = {4{1'b0}};
    wire [47:0] DSP_P;
    wire [23:0] DSP_P0 = DSP_P[0 +: 24];
    wire [23:0] DSP_P1 = DSP_P[24 +: 24];
    wire DSP_RST = pwm_do_reset_pwm_clk;
    DSP48E1 #(.AREG(1),.BREG(1),.CREG(1),.PREG(1),.A_INPUT("DIRECT"),.B_INPUT("DIRECT"),.USE_DPORT("FALSE"),.USE_MULT("NONE"),.USE_SIMD("TWO24"),.OPMODEREG(1'b0),.INMODEREG(1'b0),.CARRYINREG(1'b0),.CARRYINSELREG(1'b0),.BCASCREG(1'b1),.ACASCREG(1'b1),
              .ADREG(1'b0),.ALUMODEREG(1'b0),.MREG(1'b0),.DREG(1'b0)) u_dsp(.A(DSP_A),.B(DSP_B),.C(DSP_C),.CARRYOUT(DSP_CARRYOUT),.OPMODE(OPMODE),.ALUMODE(ALUMODE),.INMODE(4'h0),.P(DSP_P),.CLK(pwm_clk_i),
              .CEA2(pwm_do_load_pwm_clk[0]),.CEB2(pwm_do_load_pwm_clk[0]),
              .CEA1(1'b0),.CEB1(1'b0),
              .CEC(pwm_do_load_pwm_clk[1]),
              .CEP(1'b1),
              .RSTA(DSP_RST),.RSTB(DSP_RST),.RSTC(DSP_RST),.RSTP(DSP_RST),.CARRYINSEL(CARRYINSEL),.CARRYIN(1'b0));
    
    assign PWM[0] = DSP_CARRYOUT[1];
    assign PWM[1] = DSP_CARRYOUT[3];
            
    always @(posedge pwm_value_clk_i) begin
        if ((pwm_value_load_i[0] || pwm_value_load_i[1]) && !pwm_loading) pwm_value_reg <= pwm_value_i;
        
        if (pwm_loading && !pwm_do_load_busy[0] && !pwm_do_load_busy[1] && !pwm_do_load[0] && !pwm_do_load[1]) pwm_loading <= 0;
        else if (pwm_value_load_i[0] || pwm_value_load_i[1]) pwm_loading <= 1;

        pwm_do_load <= {pwm_value_load_i[1] && !pwm_loading, pwm_value_load_i[0] && !pwm_loading};
            
        if (resetting && !pwm_do_reset_busy && !pwm_do_reset) resetting <= 0;
        else if (pwm_rst_i) resetting <= 1;

        pwm_do_reset <= (pwm_rst_i && !resetting);
    end
    
    flag_sync u_load0_sync(.in_clkA(pwm_do_load[0]),.out_clkB(pwm_do_load_pwm_clk[0]),.clkA(pwm_value_clk_i),.clkB(pwm_clk_i),.busy_clkA(pwm_do_load_busy[0]));
    flag_sync u_load1_sync(.in_clkA(pwm_do_load[1]),.out_clkB(pwm_do_load_pwm_clk[1]),.clkA(pwm_value_clk_i),.clkB(pwm_clk_i),.busy_clkA(pwm_do_load_busy[1]));
    flag_sync u_reset_sync(.in_clkA(pwm_do_reset),.out_clkB(pwm_do_reset_pwm_clk),.clkA(pwm_value_clk_i),.clkB(pwm_clk_i),.busy_clkA(pwm_do_reset_busy));
endmodule
