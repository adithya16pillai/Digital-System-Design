module srffdf(s,r,clk,q,qb);
input s,r,clk;
inout q,qb;
wire s1,r1;
assign s1=!(s & clk);
assign r1=!(r&clk);
assign q=!(s1&qb);
assign qb=!(r1&q);
endmodule