module dlatch_behavioral(
    input D,      
    input En,     
    output reg Q  
);

    always @(*) begin
        if (En)    // When enable is high
            Q = D; // Output follows the input
        // When enable is low, Q retains its previous value (implied by latch behavior)
    end

endmodule

/*
always @(*)
begin
if(reset)
q<=0;
else
begin
if(en)
q<=d;
end
end*/
