module half_adder_21BCE3546(s,c,a,b);
 input a,b; output s,c;
 and and1 (c,a,b); xor xor1 (s,a,b);
endmodule
module xor_gate(a1, b1, c1);
input a1, b1;output c1;
assign c1 = a1 ^ b1;
endmodule
//AND gate
module and_gate(a2, b2, c2);
input a2, b2;output c2;
assign c2 = a2 & b2;
endmodule
module tb();//declare testbench variables
 reg a,b; wire s,c;
//instantiate the design module and connect to the testbench //variables
 half_adder_21BCE3546 instantiation (.a(a), .b(b), .s(s), .c(c));
 initial
 begin
// $dumpfile("xyz.vcd"); // $dumpvars;
 //set stimulus to test the code
 a=0; b=0;
 #100 $finish;
 end//provide the toggling input (just like truth table input)
//this acts as the clock input
always #40 a=~a;
always #20 b=~b;//display output if there’s a change in the input event
 always @(a,b)
 $monitor("21BCE3546 At TIME(in ns)=%t, |a=%d }b=%d | Sum = %d |Carry = %d",
$time, a, b, s, c);
endmodule
—---------------------------------------------------------------
module Half_Adder_21BCE3546 (input a, b;output sum, carry );
always @(a or b)
assign {carry,sum} = a + b;
endmodule