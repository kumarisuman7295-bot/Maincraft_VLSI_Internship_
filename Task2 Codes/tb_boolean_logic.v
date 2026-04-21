`timescale 1ns / 1ps

module tb_boolean_logic;
    reg A, B, C, D;
    wire Y;
    
    // Declare the integer here, outside the initial block
    integer i;

    // Instantiate the Boolean Logic Module
    boolean_logic uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y(Y)
    );

    initial begin
        // --- Waveform setup ---
        $dumpfile("bool_output.vcd");
        $dumpvars(0, tb_boolean_logic);
        
        // Header
        $display("A B C D | Y");
        $display("-----------");
        $monitor("%b %b %b %b | %b", A, B, C, D, Y);
        
        // Stimulus - iterating through all 16 combinations
        for (i = 0; i < 16; i = i + 1) begin
            {A, B, C, D} = i;
            #10;
        end
        
        $finish;
    end
endmodule