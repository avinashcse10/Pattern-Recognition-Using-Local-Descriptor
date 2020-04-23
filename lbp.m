function [ lbp_decimal ] = lbp( a1,a2,a3,a4,a5,a6,a7,a8,a9 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if(a1>=a5)
    a11='1';
else a11='0';
end

if(a2>=a5);
    a22='1';
else a22='0';
end
if(a3>=a5)
    a33='1';
else a33='0';
end
if(a4>=a5)
    a44='1';
else a44='0';
end
if(a6>=a5)
    a66='1';
else a66='0';
end
if(a7>=a5)
    a77='1';
else a77='0';
end
if(a8>=a5)
    a88='1';
else a88='0';
end

if(a9>=a5)
    a99='1';
else a99='0';
end

b=strcat(a11,a22,a33,a66,a99,a88,a77,a44);
lbp_decimal=bin2dec(b);


end

