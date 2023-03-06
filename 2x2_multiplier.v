module multiplier_2_bit_21BCE3546(out,a,b);
output [3:0]out;
input [1:0]a;
input [1:0]b;
assign out=a*b;
endmodule
module multipliert_b;
reg [1:0] a;
reg [1:0] b;
wire [3:0] out;
integer i;
multiplier_2_bit_21BCE3546 uut (.a(a),.b(b),.out(out) );
initial
begin
$display("21BCE3546 - 2 bit (2X2) Multiplier output table ");
a<=0;b<=0;
$monitor("|a=%0d| b=%0d| out=%0d| ",a,b,out);
 for(i=0;i<16 ;i=i+1)
 begin
 {a,b} = i; #1;
 end
end
endmodule
