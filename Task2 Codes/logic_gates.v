// AND Gate
module and_gate (
    input A,
    input B,
    output Y
);
    assign Y = A & B;
endmodule

// OR Gate
module or_gate (
    input A,
    input B,
    output Y
);
    assign Y = A | B;
endmodule

// NOT Gate
module not_gate (
    input A,
    output Y
);
    assign Y = ~A;
endmodule

// NAND Gate
module nand_gate (
    input A,
    input B,
    output Y
);
    assign Y = ~(A & B);
endmodule

// NOR Gate
module nor_gate (
    input A,
    input B,
    output Y
);
    assign Y = ~(A | B);
endmodule

// XOR Gate
module xor_gate (
    input A,
    input B,
    output Y
);
    assign Y = A ^ B;
endmodule