//--------------------------------------------------------------------------------------------------------------------------
// File: squareroot.v
// Purpose: Calculate the square root of a 16-bit number
// Concept: The design implements and tests a hardware which calculates the square root of a 16-bit number.
//
// Owner: Rohit Kumar Singh
//---------------------------------------------------------------------------------------------------------------------------


`timescale 1ns/1ns

module square_root(num,CLK,RST,sqr,sqr_flag);
input CLK,RST;
input [15:0] num;
output reg [7:0] sqr;
output reg sqr_flag;
integer temp;
reg [15:0] i;
always@(posedge CLK) 
begin
if(RST)
begin
sqr<='b0;
sqr_flag<=1'b0;
end
else
begin
for (i=0;i<=(num/2);i=i+1) 
begin
temp=i*i;
if (temp<=num)
begin
sqr_flag<=1;
sqr<=i;
end
end
end

end
endmodule



