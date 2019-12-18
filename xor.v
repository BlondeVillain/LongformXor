`timescale 1ns/1ns

module my_xor(output o,input ia, input ib);
  
  wire x, y, anot, bnot;
  and(x, ia, bnot);
  and(y, anot, ib);
  not(anot,ia);
  not(bnot,ib);
  or(o,x,y);
  
endmodule
