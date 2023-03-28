module decoder24_gate(en,a,b,y);
input en,a,b;
output [3:0]y;
wire enb,na,nb;
not n0(enb,en);
not n1(na,a);
not n2(nb,b);
nand n3(y[0], enb, na ,nb);
nand n4(y[1], enb, na, b);
nand n5(y[2], enb, a, nb);
nand n6(y[3], enb, a ,b);
endmodule