`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 19:04:21
// Design Name: 
// Module Name: async_4bit_up_counter
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
module jk_ff(input clk,j,k,output reg q=0);
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

module async_4bit_up_counter(
    input clk,
    input j1,
    input j2,
    input j3,
    input j4,
    input k1,
    input k2,
    input k3,
    input k4,
    output q1,
    output q2,
    output q3,
    output q4
    );
    jk_ff jkff1(clk,j1,k1,q1);
    jk_ff jkff2(q1,j2,k2,q2);
    jk_ff jkff3(q2,j3,k3,q3);
    jk_ff jkff4(q3,j4,k4,q4);
endmodule
