function [ vertical_slgs_dec ] = vertical_slgs( a,b,c,d,e,f,g )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
    end
    
    if(b>c)
        a2(1)='1';a2(2)='0';
    elseif(b<c) 
        a2(1)='0';a2(2)='1';
    else a2(1)='1';a2(2)='1';
    end
    
    if(a>b)
        a3(1)='1';a3(2)='0';
    elseif(a<b) 
        a3(1)='0';a3(2)='1';
    else a3(1)='1';a3(2)='1';
    end
    
    if(c>a)
        a4(1)='1';a4(2)='0';
    elseif(c<a) 
        a4(1)='0';a4(2)='1';
    else a4(1)='1';a4(2)='1';
    end
    
    if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(1)='0';a5(2)='1';
    else a5(1)='1';a5(2)='1';
    end
    
    if(g>e)
        a6(1)='1';a6(2)='0';
    elseif(g<e)
        a6(1)='0';a6(2)='1';
    else a6(1)='1';a6(2)='1';
    end
    
    if(f>g)
        a7(1)='1';a7(2)='0';
    elseif(f<g)
        a7(1)='0';a7(2)='1';
    else a7(1)='1';a7(2)='1';
    end
    
    if(e>f)
        a8(1)='1';a8(2)='0';
    elseif(e<f)
        a8(1)='0';a8(2)='1';
    else a8(1)='1';a8(2)='1';
    end
    
  vertical_slgs_dec=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);

end

