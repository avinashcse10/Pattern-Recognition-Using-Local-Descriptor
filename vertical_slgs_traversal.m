function [ binary ] = vertical_slgs_traversal( a1,a2,a3,a4,a5,a6,a7,a8 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
binary(1)=bin2dec(strcat(a1(1),a2(1),a3(1),a4(1),a5(1),a6(1),a7(1),a8(1)));
binary(2)=bin2dec(strcat(a1(1),a2(1),a3(1),a4(1),a5(1),a8(2),a7(2),a6(2)));
binary(3)=bin2dec(strcat(a1(1),a4(2),a3(2),a2(2),a5(1),a6(1),a7(1),a8(1)));
binary(4)=bin2dec(strcat(a1(1),a4(2),a3(2),a2(2),a5(1),a8(2),a7(2),a6(2)));
binary(5)=bin2dec(strcat(a5(1),a6(1),a7(1),a8(1),a1(1),a2(1),a3(1),a4(1)));
binary(6)=bin2dec(strcat(a5(1),a6(1),a7(1),a8(1),a1(1),a4(2),a3(2),a2(2)));
binary(7)=bin2dec(strcat(a5(1),a8(2),a7(2),a6(2),a1(1),a2(1),a3(1),a4(1)));
binary(8)=bin2dec(strcat(a5(1),a8(2),a7(2),a6(2),a1(1),a4(2),a3(2),a2(2)));
end

