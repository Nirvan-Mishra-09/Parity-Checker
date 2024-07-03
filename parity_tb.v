`timescale 1ns / 1ps
module parity_tb();
    reg x, clk;
    wire z;
    
    parity_check dut(.x(x), .z(z), .clk(clk));
    
    initial  clk = 1'b0;
    always #5 clk = ~clk;
    
    initial
         begin
            #2 x = 0; #10 x = 1; #10 x = 0; #10 x = 1;
            #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            $finish;
         end
    
endmodule
