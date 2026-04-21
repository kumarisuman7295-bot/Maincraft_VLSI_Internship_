`timescale 1ns / 1ps

module tb_half_adder;
    // Signals to drive the half adder
    reg A, B;
    wire Sum, Carry;

    // Instantiate the Half Adder
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin
        // --- Waveform setup for GTKWave ---
        $dumpfile("half_adder_output.vcd");
        $dumpvars(0, tb_half_adder);
        
        // Header for terminal output
        $display("A B | Sum Carry");
        $display("---------------");
        $monitor("%b %b |  %b    %b", A, B, Sum, Carry);
        
        // Stimulus - testing all 4 combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $finish;
    end
endmodule