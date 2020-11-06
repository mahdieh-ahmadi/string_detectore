`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:12 11/06/2020 
// Design Name: 
// Module Name:    string_detectore_mode2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module string_detectore_mode2(
    input clk,
    input [3:0] string1,
    input string2,
    output reg [3:0] N
    );
reg [3:0] s;
reg [4:0] counter;
reg [2:0] sycle;

 initial begin 
		N <= 0;
		counter <= 0 ;
		sycle <= 0;
	end
	
	always @(posedge clk) begin
	
	if (string2 !== 1'bx && counter < 20) begin
		s[3] <= s[2];
		s[2] <= s[1];
		s[1] <= s[0];
		s[0] <= string2;
		counter <= counter +1 ;
	
		if (string1 == s && sycle == 0) begin
			N <= N+1;
			sycle <= sycle+1;
		end
		
		if (sycle != 0) begin
			sycle <= sycle+1;
			if(sycle == 3) sycle <= 0;
		end
	end
	
	if (counter  < 24 && counter > 19) begin
		s[3] <= s[2];
		s[2] <= s[1];
		s[1] <= s[0];
		s[0] <= string2;
		counter <= counter +1 ;
	end

		if (counter == 23) begin
			counter <= 0;
			N <= 0;
		end
	
end

endmodule
