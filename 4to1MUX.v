module mux4to1_21BCE3546(Y, i0, i1, i2, i3, s1, s0);
  input i0, i1, i2, i3;
  input s1, s0;
  output Y;
  assign Y = (~s1 & ~s0 & i0) | (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i3);
endmodule

module mux1 (select, d, q);
  input [1:0] select;
  input [3:0] d;
  output reg q;
  always @* begin
    case (select)
      2'b00: q = d[0];
      2'b01: q = d[1];
      2'b10: q = d[2];
      2'b11: q = d[3];
    endcase
  end
endmodule

module mux_tb;
  reg [3:0] d;
  reg [1:0] select;
  wire q;
  integer i;
  mux1 my_mux (
    .select(select),
    .d(d),
    .q(q)
  );
  initial begin
    $monitor("21BCE3546 - d = %b, select = %d, q = %b", d, select, q);
    for (i = 0; i <= 15; i = i + 1) begin
      #1 d = i;
      #1 select = 0;
      #1 select = 1;
      #1 select = 2;
      #1 select = 3;
      #1 $display("=======================");
    end
  end
endmodule