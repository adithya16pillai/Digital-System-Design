module Half_Subtractor_21BCE3546(output D, B, input X, Y);
assign D = X ^ Y;
assign B = ~X & Y;
endmodule
module tb();
//declare testbench variables
 reg a,b;
 wire d,B;
 //instantiate the design module and connect to the testbench variables
 Half_Subtractor_21BCE3546 instantiation (.X(a), .Y(b), .D(d), .B(B));
 initial
 begin
// $dumpfile("xyz.vcd");
// $dumpvars;
 //set stimulus to test the code
 a=0;
 b=0;
 #100 $finish;
 end
//provide the toggling input (just like truth table input)
//this acts as the clock input
always #40 a=~a;
always #20 b=~b;
//display output if there’s a change in the input event
 always @(a,b)
 $monitor("21BCE3546 - At TIME(in ns)=%t, |X=%d }Y=%d | Difference = %d |Borrow = %d", $time, a, b, d,
B);
endmodule
