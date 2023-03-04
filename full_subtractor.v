module Full_Subtractor_21BCE3546(output D, B, input X, Y, Z);
assign D = X ^ Y ^ Z;
assign B = ~X & (Y^Z) | Y & Z;
endmodule
//Test bench for Full Subtractor
module Full_Subtractor_DFL_tb;
wire D, B;
reg X, Y, Z;
Full_Subtractor_21BCE3546 Instance0 (D, B, X, Y, Z);
initial begin
//$dumpfile("xyz.vcd"); //$dumpvars; //set stimulus to test the code
 $display("21BCE3546 - Verilog code for Full Subtractor in Data flow level");
 X = 0; Y = 0; Z = 0;
#1 X = 0; Y = 0; Z = 1;
#1 X = 0; Y = 1; Z = 0;
#1 X = 0; Y = 1; Z = 1;
#1 X = 1; Y = 0; Z = 0;
#1 X = 1; Y = 0; Z = 1;
#1 X = 1; Y = 1; Z = 0;
#1 X = 1; Y = 1; Z = 1;
end
initial begin
 $monitor ("|Time%tms,| X = %d| Y = %d| Z = %d| B = %d| D = %d|",$time, X, Y, Z, B, D);
 $dumpfile("dump.vcd");
 $dumpvars();
end
endmodule