module demux1bit(
    input in,
    input [1:0] addy, 
    output reg A,
    output reg B,
    output reg C,
    output reg D
    );
    always @(*) begin
        case(addy)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, in}; 
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, in, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, in, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {in, 1'b0, 1'b0, 1'b0};
        endcase
    end
endmodule
