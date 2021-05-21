module alu (
	input [31:0] A, B,
	input [2:0] SEL,
	output reg [31:0] R,
	output reg ZF
);

	always @* begin
		case (SEL)
			3'd0: R <= A + B;
			3'd1: R <= A - B;
			3'd2: R <= A && B;
			3'd3: R <= A || B;
			3'd4: R <= (A < B) ? 32'd1 : 32'd0;
			default: R <= 32'bx;
		endcase

		ZF <= (R) ? 0 : 1;
	end

endmodule