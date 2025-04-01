`timescale 1ns / 1ps
module RCA(A,B,Cin, Sum,Cout);
   
	 input [3:0] A;    // 4-bit 
    input [3:0] B;   // 4-bit 
    input Cin;        // Initial carry-in
    output [3:0] Sum; // 4-bit Sum
    output Cout;       // Final carry-out

wire C1, C2, C3;  

Full__Adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(C1));
Full__Adder FA1 (.A(A[1]), .B(B[1]), .Cin(C1), .Sum(Sum[1]), .Cout(C2));
Full__Adder FA2 (.A(A[2]), .B(B[2]), .Cin(C2), .Sum(Sum[2]), .Cout(C3));
Full__Adder FA3 (.A(A[3]), .B(B[3]), .Cin(C3), .Sum(Sum[3]), .Cout(Cout));


endmodule
