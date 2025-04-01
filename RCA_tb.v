`timescale 1ns / 1ps

module RCA_tb_v;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
	     A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        A = 4'b0011; B = 4'b0101; Cin = 1; #10;
        A = 4'b1000; B = 4'b1000; Cin = 1; #10;

    $stop;

	end
      
endmodule

