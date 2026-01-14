module alu_project1(out,sel,a,b);
input [3:0]a;
input [3:0]b;
input [3:0]sel;
output reg [3:0]out;
always@(*)begin
case(sel)
4'b0000:out=a+b;
4'b0001:out=a-b;
4'b0010:out=a&b;
4'b0011:out=a|b;
4'b0100:out=a^b;
4'b0101:out=~a;
4'b0110:out=a<<1;
4'b0111:out=a>>1;
default:out=4'b0000;
endcase 
end
endmodule
<img width="1366" height="768" alt="Screenshot 2026-01-14 094158" src="https://github.com/user-attachments/assets/1cfc8d90-93ed-4f4b-9594-2382ea2fe149" />
