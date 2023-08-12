`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 19:36:32
// Design Name: 
// Module Name: async_4bit_down_counter
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
module jk_ff(input clk,j,k,output reg q=1,output qbar);
always@(negedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
assign qbar=~q;
endmodule

module async_4bit_down_counter(
    input clk,
    input j1,
    input k1,
    input j2,
    input k2,
    input j3,
    input k3,
    input j4,
    input k4,
    output q1,
    output q2,
    output q3,
    output q4,q1bar,q2bar,q3bar,q4bar
    );
    jk_ff jkff1(clk,j1,k1,q1,q1bar);
    jk_ff jkff2(q1,j2,k2,q2,q2bar);
    jk_ff jkff3(q2,j3,k3,q3,q3bar);
    jk_ff jkff4(q3,j4,k4,q4,q4bar);
endmodule
