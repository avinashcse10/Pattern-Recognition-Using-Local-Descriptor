function [ new_pixel ] = lgs_traversal( a1,a2,a3,a4,a5,a6,a7,a8 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

pixel(1)=bin2dec(strcat(a1(1),a2(1),a3(1),a4(1),a5(1),a6(1),a7(1),a8(1)));
pixel(2)=bin2dec(strcat(a1(1),a2(1),a3(1),a4(1),a7(2),a6(2),a5(2),a8(1)));
pixel(3)=bin2dec(strcat(a3(2),a2(2),a1(2),a4(1),a5(1),a6(1),a7(1),a8(1)));
pixel(4)=bin2dec(strcat(a3(2),a2(2),a1(2),a4(1),a7(2),a6(2),a5(2),a8(1)));
pixel(5)=bin2dec(strcat(a4(1),a5(1),a6(1),a7(1),a8(1),a1(1),a2(1),a3(1)));
pixel(6)=bin2dec(strcat(a4(1),a5(1),a6(1),a7(1),a8(1),a3(2),a2(2),a1(2)));
pixel(7)=bin2dec(strcat(a4(1),a7(2),a6(2),a5(2),a8(1),a1(1),a2(1),a3(1)));
pixel(8)=bin2dec(strcat(a4(1),a7(2),a6(2),a5(2),a8(1),a3(2),a2(2),a1(2)));
new_pixel=0;
for i=1:8
    if(pixel(i)>=new_pixel)
        new_pixel=pixel(i);
    end
end
end

