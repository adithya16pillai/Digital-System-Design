module Full_Adder_21BCE3546( x, y, cin, s, cout);
input x, y, cin;
output s, cout;
assign s = x ^ y ^ cin;
assign cout = x&y | (x^y) & cin;
endmodule
//Test bench
module Full_Adder_21BCE3546tb();
//declare testbench variables
 reg x, y, cin;
 wire s,cout;
//instantiate the design module and connect to the testbench variables
Full_Adder_21BCE3546 instantiation(.x(x), .y(y), .cin(cin), .s(s), .cout(cout));
 initial
 begin
 //$dumpfile("xyz.vcd"); //$dumpvars; //set stimulus to test the code
 $display("Verilog code for Full Adder in Mixed style");
 x=0; y=0; cin=0;
 #150 $finish;
 end
//provide the toggling input (just like truth table input)
//this acts as the clock input
always #40 x=~x;
always #20 y=~y;
always #10 cin=~cin;
//display output if there’s a change in the input event
 always @(x or y or cin)
 begin
 $monitor("21BCE3546 - At TIME(in %t ns)|, X=%d |Y=%d |Cin=%d| Sum = %d| Carry = %d|", $time, x,y,
cin, s,cout);
end
endmodule 