`timescale 1ns / 1ps
module seq_tb;

    reg clk, rst, din;
    wire dout;
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        din = 0;

        #25 rst = 0;
         
        #20 din = 1;
        #20 din = 0;
        #20 din = 1;
        #20 din = 0;
        #20 din = 1;
        #20 din = 0;
        #20 din = 0; 
        #20 din = 1;   
        #20 din = 0;
        #20 din = 1;
        #20 din = 0;
        #20 din = 1;

        #40 $stop;
    end
    
    sequence_detector aa (
        .clk(clk),       
        .rst(rst),       
        .din(din),       
        .dout(dout)  );
endmodule
