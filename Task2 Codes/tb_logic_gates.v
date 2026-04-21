`timescale 1ns / 1ps

module tb_logic_gates;
    // Signals to drive the gates
    reg A, B;
    wire y_and, y_or, y_not, y_nand, y_nor, y_xor, not_A;

    // Intermediate assignment for the NOT gate logic
    assign not_A = ~A;

    // Instantiate the gate modules
    // Ensure these module names match your gate definitions exactly
    and_gate  u_and  (.A(A), .B(B), .Y(y_and));
    or_gate   u_or   (.A(A), .B(B), .Y(y_or));
    not_gate  u_not  (.A(A), .Y(y_not));
    nand_gate u_nand (.A(A), .B(B), .Y(y_nand));
    nor_gate  u_nor  (.A(A), .B(B), .Y(y_nor));
    xor_gate  u_xor  (.A(A), .B(B), .Y(y_xor));

    initial begin
        // --- Waveform setup for GTKWave ---
        $dumpfile("test_output.vcd");
        $dumpvars(0, tb_logic_gates);
        
        // Header for terminal output
        $display("A B | AND OR NOT NAND NOR XOR");
        $display("-----------------------------");
        $monitor("%b %b |  %b   %b   %b    %b    %b   %b", 
                  A, B, y_and, y_or, not_A, y_nand, y_nor, y_xor);
        
        // Stimulus
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $finish;
    end
endmodule