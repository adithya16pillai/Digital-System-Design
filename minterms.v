module circuit_using_case_21BCE3546 (y,i,enable);
 input [3:0] i  ;
 		input enable;  
  		output y ;
  		reg y ;
 		  always @ (i)
  		    begin
   				       y = 0;
      	                       if (enable) 
                       	            begin
       			case (i)
        				4'h0 : y = 0;    //sample reg.no. is 21BCE3546
        				4'h1 : y = 1;
     				4'h2 : y = 1;
     				4'h3 : y = 1;
  			              4'h4 : y = 1;
  				4'h5 : y = 1;
 				4'h6 : y = 1;
  			               4'h7 : y = 0;
                                                        4'h8 : y = 0;
                                                        4'h9 : y = 0;
                                                        4'hA : y= 0;
                                                        4'hB : y = 1 ;
                                                        4'hC : y = 1 ;
                                                        4'hD : y = 0;
                                                        4'hE : y = 1 ;
                                                        4'hF : y = 0;
   		               endcase
                                    end
                            end
                 endmodule
 module tb;
reg [3:0]i;
reg enable;
wire y;
integer j;
circuit_using_case_21BCE3546 u0(.enable(enable),.i(i),.y(y));
initial 
begin
assign enable=0;
j=0; $display("21BCE3546 TASK I Output Truth table " );
     $display("-------------------------- " );
				$monitor("|enable=%0b |i =%0b | Y= %0b |",enable,i,y);
  			for(j=0;j< 32;j=j+1)
    				begin
         					i = j;                             #10;
   				 end
   					 assign enable=1;
j=0;
			$monitor("enable=%0b |i =%0b | Y= %0b",enable,i,y);
  				for(j=0;j< 32;j=j+1)
    					begin
         						i = j;                     #10;
    					end
end
      endmodule