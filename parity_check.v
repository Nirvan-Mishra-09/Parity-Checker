`timescale 1ns / 1ps

module parity_check(
    input x, clk,
    output reg z
    );
    
    reg even_odd; // state machine
    parameter Even = 0, Odd = 1;
    
    always @ (posedge clk)
        case (even_odd)
            Even: even_odd <= x ? Odd : Even;   // if in even state but encountered odd no. of 1, hence 
                                                // change the state to odd, else remain in the same state and vice versa 
            Odd: even_odd <= x ? Even : Odd;
            default: even_odd <= Even;
        endcase
    
    always @ (even_odd)
        case(even_odd)
            Even: z = 0;
            Odd: z = 1; 
        endcase   
endmodule
