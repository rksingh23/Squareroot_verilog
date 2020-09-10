//--------------------------------------------------------------------------------------------------------------------------
// File: squareroot.v
// Purpose: Calculate the square root of a 16-bit number
// Concept: The design implements and tests a hardware which calculates the square root of a 16-bit number.
//
// Owner: Rohit Kumar Singh
//---------------------------------------------------------------------------------------------------------------------------


`timescale 1ns/1ns

module tb_squareroot();
reg [15:0] num='b0;
wire [7:0] sqr;
wire sqr_flag;
reg CLK=0;
reg RST=1;


square_root dut(.num(num),.CLK(CLK),.RST(RST),.sqr(sqr),.sqr_flag(sqr_flag));

always #2.5 CLK=~CLK;


initial 
begin
		#2
		RST=0;
		#5
         num = 16'd4;  
		 #5;
         num = 16'd25;
		 #5;
         num = 16'd33;
		 #5;
         num = 16'd49;
		 #8;
         num = 16'd6536;
		 #8;
         num = 16'd121;
		 #7;
end

initial
begin
$monitor ("Square Root of number %d is %d",num,sqr);
end
endmodule
