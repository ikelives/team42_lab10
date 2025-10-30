`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 01:49:00 PM
// Design Name: 
// Module Name: mux
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


module mux(
    input [7:0] in,
    input [1:0] addy, 
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    output reg [7:0] y
    );
    always@(*) begin
        case(addy)
            2'b00: y <= A;
            2'b01: y <= B;
            2'b10: y <= C;
            2'b11: y <= D;
        endcase    
     end     
endmodule
