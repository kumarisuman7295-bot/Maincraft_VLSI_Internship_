module full_adder (
    input A, B, Cin,
    output Sum, Cout
);
    wire s1, c1, c2;

    // Structural modeling using half adders
    half_adder HA1 (.A(A), .B(B), .Sum(s1), .Carry(c1));
    half_adder HA2 (.A(s1), .B(Cin), .Sum(Sum), .Carry(c2));
    
    assign Cout = c1 | c2; // Logic: C_out = (A&B) | (Cin&(A^B))
endmodule