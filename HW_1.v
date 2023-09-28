`timescale 1ns / 1ps

module HW_1(led,clk,rst);
    input clk,rst;
    output reg [7:0] led;
    
    wire divclk;
    reg [24:0] cnt;
    
    assign divclk = cnt[24];
    always @(posedge clk or negedge rst)begin
        if(rst)
            cnt <= 25'd0;
        else 
            cnt <= cnt + 1'b1; 
    end    
    
    always @(posedge divclk or negedge rst)begin
        if(rst)
            led <= 8'd0;
        else 
            led <= led + 1'b1;
     end
endmodule
