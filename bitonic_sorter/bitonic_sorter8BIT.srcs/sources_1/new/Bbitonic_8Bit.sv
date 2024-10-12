`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 11:45:13
// Design Name: 
// Module Name: bitonic_8Bit
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


module bitonic_8Bit(
    input[7:0]d[7:0],
    output [7:0]o[7:0]
    );
    
    wire [7:0] s1 [7:0];
    wire [7:0] s21 [7:0];
    wire [7:0] s22 [7:0];
    wire [7:0] s23 [7:0];
    wire [7:0] s24 [7:0];
    wire [7:0] s25 [7:0];
    
    CAS_8 C1(d[0], d[1], s1[1], s1[0]);
    CAS_8 c2(d[2], d[3], s1[2], s1[3]);
    CAS_8 c3(d[4], d[5], s1[5], s1[4]);
    CAS_8 c4(d[6], d[7], s1[6], s1[7]);
    
    CAS_8 c5(s1[0], s1[2], s21[2], s21[0]);
    CAS_8 c6(s1[1], s1[3], s21[3], s21[1]);
    CAS_8 c7(s1[4], s1[6], s21[4], s21[6]);
    CAS_8 c8(s1[5], s1[7], s21[5], s21[7]);
    
    CAS_8 c9(s21[0], s21[1], s22[1], s22[0]);
    CAS_8 c10(s21[2], s21[3], s22[3], s22[2]);
    CAS_8 c11(s21[4], s21[5], s22[4], s22[5]);
    CAS_8 c12(s21[6], s21[7], s22[6], s22[7]);
    
    
    CAS_8 c13(s22[0], s22[4], s23[4], s23[0]);
    CAS_8 c14(s22[1], s22[5], s23[5], s23[1]);
    CAS_8 c15(s22[2], s22[6], s23[6], s23[2]);
    CAS_8 c16(s22[3], s22[7], s23[7], s23[3]);
    
    CAS_8 c17(s23[0], s23[2], s24[2], s24[0]);
    CAS_8 c18(s23[1], s23[3], s24[3], s24[1]);
    CAS_8 c19(s23[4], s23[6], s24[6], s24[4]);
    CAS_8 c20(s23[5], s23[7], s24[7], s24[5]);
    
    CAS_8 C21(s24[0], s24[1], o[1], o[0]);
    CAS_8 C22(s24[2], s24[3], o[3], o[2]);
    CAS_8 C23(s24[4], s24[5], o[5], o[4]);
    CAS_8 C24(s24[6], s24[7], o[7], o[6]);
    
endmodule
