`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Flag synchronizer, with feedback. Blatantly stolen from fpga4fun.com
//
//////////////////////////////////////////////////////////////////////////////////
module flag_sync(
    input clkA,
    input clkB,
    input in_clkA,
    output busy_clkA,
    output out_clkB
    );

	parameter CLKA="POSEDGE";
	parameter CLKB="POSEDGE";

	reg FlagToggle_clkA;
	reg [2:0] SyncA_clkB;
	reg [1:0] SyncB_clkA;

	initial begin
		SyncA_clkB <= 3'b000;
		SyncB_clkA <= 2'b00;
		FlagToggle_clkA <= 0;
	end
	
	generate
		if (CLKA=="POSEDGE") begin : A_POS_POL
			always @(posedge clkA) if (in_clkA & ~busy_clkA) FlagToggle_clkA <= ~FlagToggle_clkA;
			always @(posedge clkA) SyncB_clkA <= {SyncB_clkA[0],SyncA_clkB[1]};
		end else begin : A_NEG_POL
			always @(negedge clkA) if (in_clkA & ~busy_clkA) FlagToggle_clkA <= ~FlagToggle_clkA;
			always @(negedge clkA) SyncB_clkA <= {SyncB_clkA[0],SyncA_clkB[2]};
		end
	endgenerate
	generate
		if (CLKB=="POSEDGE") begin : B_POS_POL
			always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};
		end else begin : B_NEG_POL
			always @(negedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};
		end
	endgenerate

	assign out_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);
	assign busy_clkA = FlagToggle_clkA ^ SyncB_clkA[1];
endmodule
