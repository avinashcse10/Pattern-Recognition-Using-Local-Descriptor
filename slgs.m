function [ slgs_dec ] = slgs( a,b,c,d,e,f,g )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
    end
    
    if(a>c)
        a2(1)='1';a2(2)='0';
    elseif(a<c)
        a2(1)='0';a2(2)='1';
    else a2(2)='1';a2(1)='1';
    end
    
    if(f>a)
        a3(1)='1';a3(2)='0';
    elseif(f<a)
        a3(2)='1';a3(2)='0';
    else a3(2)='1';a3(1)='1';        
    end
    
    if(c>f)
        a4(1)='1';a4(2)='0';
    elseif (c<f) 
        a4(2)='1';a4(1)='0';
    else a4(2)='1';a4(1)='1';
    end
    
    if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(2)='1';a5(1)='0';
    else a5(2)='1';a5(1)='1';
    end
    
    if(b>e)
        a6(1)='1';a6(2)='0';
    elseif(b<e)
        a6(2)='1';a6(1)='0';
    else a6(2)='1';a6(1)='1';
    end
    
    if(g>b)
        a7(1)='1';a7(2)='0';
    elseif (g<b)
        a7(2)='1';a7(1)='0';
    else a7(1)='1';a7(2)='1';
    end
    
    if(e>g)
        a8(1)='1';a8(2)='0';
    elseif (e<g)
        a8(2)='1';a8(1)='0';
    else a8(1)='1';a8(2)='1';
    end
    
    slgs_dec=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);

end

