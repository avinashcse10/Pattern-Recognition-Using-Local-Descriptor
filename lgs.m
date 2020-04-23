function [ lgs_dec ] = lgs( a,b,c,d,e,f )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if(a>c)
    a1(1)='1';a1(2)='0';
elseif(a<c) 
    a1(1)='0';a1(2)='1';
else a1(2)='1';a1(1)='1';
end

if(e>a)
    a2(1)='1';a2(2)='0';
elseif(e<a) 
    a2(1)='0';a2(2)='1';
else a2(1)='1';a2(2)='1';
end

if(c>e)
    a3(1)='1';a3(2)='0';
elseif(c<e) 
    a3(1)='0';a3(2)='1';
else a3(1)='1';a3(2)='1';
end

if(d>c)
    a4(1)='1';a4(2)='0';
elseif(d<c) 
    a4(1)='0';a4(2)='1';
else a4(1)='1';a4(2)='1';
end

if(b>d)
    a5(1)='1';a5(2)='0';
elseif(b<d) 
    a5(1)='0';a5(2)='1';
else a5(1)='1';a5(2)='1';
end

if(f>b)
    a6(1)='1';a6(2)='1';
elseif(f<b) 
    a6(1)='0';a6(2)='1';
else a6(1)='1';a6(2)='1';
end

if(d>f)
    a7(1)='1';a7(2)='0';
elseif(d<f) 
    a7(1)='0';a7(2)='1';
else a7(1)='1';a7(2)='1';
end


if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
end
lgs_dec=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);

    
end

