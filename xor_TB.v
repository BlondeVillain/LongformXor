`timescale 1ns/1ns
module my_xor_TB();
  reg a, b;
  wire a_xor_b;
  my_xor XOR1 (a_xor_b,a,b);
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(1,my_xor_TB);
    a = 0;
    b = 0;
    $display("a = %d, b=%d",a,b);
    #3
    a = 0;
    b = 0;
    $display("Hi2");
    #3
    a = 1;
    b = 0;
    #3
    a = 1;
    b = 0;
    #3
    
	$finish;
  
  end
  
endmodule
