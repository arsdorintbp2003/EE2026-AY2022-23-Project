`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2023 09:31:02 PM
// Design Name: 
// Module Name: lab1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_module (
    input SW0,
    input SW1,
    input SW2,
    input SW3,
    input SW4,
    input SW5,
    input SW6,
    input SW7,
    input SW8,
    input SW9,
    output LD0,
    output LD1,
    output LD2,
    output LD3,
    output LD4,
    output LD5,
    output LD6,
    output LD7,
    output LD8,
    output LD9,
    output LD15,
    output AN0,
    output AN1,
    output AN2,
    output AN3,
    output dp,
    output seg0,
    output seg1,
    output seg2,
    output seg3,
    output seg4,
    output seg5,
    output seg6
    );
    
    assign LD0 = SW0; 
    assign LD1 = SW1; 
    assign LD2 = SW2; 
    assign LD3 = SW3; 
    assign LD4 = SW4; 
    assign LD5 = SW5; 
    assign LD6 = SW6; 
    assign LD7 = SW7; 
    assign LD8 = SW8;
    assign LD9 = SW9; 
    
    
    //5 digits: 44121 => 1 2 4 
    //2nd rightmost numerical value: 2
    assign correct = ~SW0 & SW1 & SW2 & ~SW3 & SW4 & ~SW5 & SW6 & SW7 & SW8 & SW9;
    assign AN0 = 0;
    assign AN1 = correct;
    assign AN2 = 1;
    assign AN3 = 0; 
    
    //last alphabet: X => 1001000
    assign dp = 1;
    assign seg0 = ~correct;
    assign seg1 = 0;
    assign seg2 = 0;
    assign seg3 = ~correct;
    assign seg4 = correct;
    assign seg5 = correct;
    assign seg6 = correct;
    assign seg7 = correct;
    assign LD15 = correct;
    
endmodule