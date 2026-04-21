`timescale 1ns / 1ps

module tb_full_adder;
    // Signals to drive the full adder
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate the Full Adder
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // --- Waveform setup for GTKWave ---
        $dumpfile("full_adder_output.vcd");
        $dumpvars(0, tb_full_adder);
        
        // Header for terminal output
        $display("A B Cin | Sum Cout");
        $display("------------------");
        $monitor("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
        
        // Stimulus - testing all 8 combinations
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;
        
        $finish;
    end
endmodule