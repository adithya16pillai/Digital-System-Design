module multiplier_3_bit_21BCE3546(a, b, out);
input [2:0] a;
input [2:0] b;
output [6:0] out;
assign out=(a*b);
endmodule
module multipliert_b;
reg [2:0] a;
reg [2:0] b;
wire [9:0] out;
integer i;
multiplier_3_bit_21BCE3546 uut (.a(a),.b(b),.out(out) );
initial
begin
$display("21BCE3546 - 3 bit (3X3) Multiplier output table ");
a<=0;b<=0;
$monitor("|a=%0d| b=%0d| out=%0d| ",a,b,out);
 for(i=0;i<256 ;i=i+1)
 begin
 {a,b} = i; #1;
 end
end
endmodule
