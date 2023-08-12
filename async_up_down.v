`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 20:16:14
// Design Name: 
// Module Name: async_up_down
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module jk_ff(input clk,j,k,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
endmodule
module async_up_down(input clk,m,j1,k1,j2,k2,j3,k3,
    output q1,q2,q3,q1bar,q2bar,q3bar);
    
 wire x1,x2,x3,x4,x5,x6,x7;
 assign x1=q1&(~m);
 assign x2=~q1&m;
 assign x3=x1|x2;
 assign x4=q2&~m;
 assign x5=~q2&m;
 assign x6=x4|x5;
 jk_ff JKFF1(clk,j1,k1,q1,q1bar);
 jk_ff JKFF2(x3,j2,k2,q2,q2bar);
 jk_ff JKFF3(x6,j3,k3,q3,q3bar);
   
    
    
endmodule
