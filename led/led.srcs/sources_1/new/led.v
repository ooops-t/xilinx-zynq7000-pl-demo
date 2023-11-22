`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 08:38:46
// Design Name: 
// Module Name: led
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


module led(
    input wire sys_clk, sys_rstn,
    
    output reg [1:0] led
    );
    
    parameter OVERFLOW = 26'd50_000_000;
    
    reg [25:0] cnt;
    wire overflow;
    
    always @ (posedge sys_clk or negedge sys_rstn) begin
        if (!sys_rstn) begin
            cnt <= 26'd1;
        end
        else if (cnt == OVERFLOW) begin
            cnt <= 26'd1;
        end
        else begin
            cnt <= cnt + 26'd1;
        end
    end
    
    assign overflow = (cnt == OVERFLOW);
    
    always @ (posedge sys_clk or negedge sys_rstn) begin
        if (!sys_rstn) begin
            led <= 2'b11;
        end
        else if (overflow) begin
            led <= ~led;
        end
        else begin
            led <= led;
        end
    end
    
endmodule
