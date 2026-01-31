`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2026 09:44:33
// Design Name: 
// Module Name: alu_16bit
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


module alu_16bit(result,carry,zero,negative,overflow,a,b,sel);
input [15:0]a;
input [15:0]b;
input [3:0]sel;
output reg[15:0]result;
output reg carry;
output reg zero;
output reg negative;
output reg overflow;
reg [16:0]temp;
always@(*)begin
result=16'b0;
carry=1'b0;
overflow=1'b0;
case(sel)
4'b00000:begin
temp=a+b;
result=temp[15:0];
carry=temp[16];
overflow=(a[15]==b[15])&&(result[15]!=a[15]);
end
4'b00001:begin
temp=a-b;
result=temp[15:0];
carry=temp[16];
overflow=(a[15]!=b[15])&&(result[15]!=a[15]);
end
4'b0010:result=a&b;
4'b0011:result=a^b;
4'b0100:result=a|b;
4'b0101:result=~a;
default:result=16'b0;
endcase
zero=(result==16'b0);
negative=result[15];
end
endmodule

