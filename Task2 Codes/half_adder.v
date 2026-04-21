module half_adder (
    input A, B,
    output Sum, Carry
);
    assign Sum   = A ^ B;    // XOR gate
    assign Carry = A & B;    // AND gate
endmodule