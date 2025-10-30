`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 01:49:00 PM
// Design Name: 
// Module Name: demux
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


module demux(
    input [7:0] in,
    input [1:0] addy, 
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
    );
    always @(*) begin
        case(addy)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, in}; 
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, in, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, in, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {in, 8'b0, 8'b0, 8'b0};
        endcase
    end
endmodule
