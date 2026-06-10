`timescale 1ns / 1ps

module seq_mealy(

    input clk,       
    input rst,       
    input din,      
    output reg dout 
);
    
localparam [2:0] s0=0, s1=1, s2=2, s3=3;

reg [2:0] state,next_state;

always @(posedge clk)
begin
    if(rst)
        state <= 3'b000;
    else
        state <= next_state;
end    

always @(*)
begin
    next_state = state;
    case(state)
    
    s0: next_state <=din ? s1 : s0;
    s1: next_state <=din ? s1 : s2;
    s2: next_state <=din ? s3 : s0;
    s3: next_state <=din ? s1 : s0;
    endcase
end

always@(posedge clk)
begin
    if(rst)
        dout <= 0;
    else begin
        if(~din & (state == s3))
            dout <=1'b1;
        else
            dout <= 1'b0;
     end
end
endmodule
