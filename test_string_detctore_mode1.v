`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:23:02 11/06/2020
// Design Name:   string_detectore_mode1
// Module Name:   E:/university/3991/fpga/homeworks/string_detectore/test-string_detectore_mode1.v
// Project Name:  string-detectore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string_detectore_mode1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_string_detectore_mode1;

	// Inputs
	reg [3:0] string1;
	reg string2;
	reg clk;

	// Outputs
	wire [3:0] N;

	// Instantiate the Unit Under Test (UUT)
	string_detectore_mode1 uut (
		.string1(string1), 
		.string2(string2), 
		.clk(clk), 
		.N(N)
	);

	initial begin
		// Initialize Inputs
		//string1 = 0;
		//string2 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		string1 = 4'b0110;
		
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 0;
		
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 0;
		
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 1;
		
		@(negedge clk) string2 <= 1;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 0;
		@(negedge clk) string2 <= 1;

	end
	
	always #50 clk = ~clk;
      
endmodule

