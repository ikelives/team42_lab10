module srlatch(
    input S,
    input R,
    output Q,
    output NQ
    

);

    assign Q = ~(R | NQ);
    assign NQ = ~(S | Q);
    
endmodule 