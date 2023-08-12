module async_4bit_up_counter_tb();
reg clk,j1,j2,j3,j4,k1,k2,k3,k4;
wire q1,q2,q3,q4;
async_4bit_up_counter uut(clk,j1,j2,j3,j4,k1,k2,k3,k4,q1,q2,q3,q4);
initial begin
clk=1'b0;
forever #10 clk=~clk;
end
initial begin
j1=1;k1=1;
j2=1;k2=1;
j3=1;k3=1;
j4=1;k4=1;
end
endmodule