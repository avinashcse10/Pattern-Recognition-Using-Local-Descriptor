function [ slgs_new_image ] = slgs_generator( image )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s=size(image);
for i=1:s(1)
    for j=1:s(2)
            d=image(i,j);
            if((i==1)&&(j==1))%1
                a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
                e=image(i,j+1);
                g=image(i+1,j+2);
                  if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(2)='1';a5(1)='0';
    else a5(2)='1';a5(1)='1';
                  end
    
                  if(e>g)
        a8(1)='1';a8(2)='0';
    elseif (e<g)
        a8(2)='1';a8(1)='0';
    else a8(1)='1';a8(2)='1';
                  end
        binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
                
            elseif((i==1)&&(j==2))%2
                a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
                c=image(i,j-1);
                e=image(i,j+1);
                g=image(i+1,j+2);
                if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
                end    
      if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(2)='1';a5(1)='0';
    else a5(2)='1';a5(1)='1';
      end    
     if(e>g)
        a8(1)='1';a8(2)='0';
    elseif (e<g)
        a8(2)='1';a8(1)='0';
    else a8(1)='1';a8(2)='1';
     end
    
     binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
                
            elseif((i==1)&&((j>2)&&(j+2<=s(2))))%3
                a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a7(1)='0';a7(2)='0';a6(1)='0';a6(2)='0';
                c=image(i,j-1);
                e=image(i,j+1);
                f=image(i+1,j-2);
                g=image(i+1,j+2);
                   if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
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
    
      if(e>g)
        a8(1)='1';a8(2)='0';
    elseif (e<g)
        a8(2)='1';a8(1)='0';
    else a8(1)='1';a8(2)='1';
      end
    
                
           binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
               
            elseif((i==1)&&((j+1==s(2))))%4
                a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                c=image(i,j-1);
                e=image(i,j+1);
                f=image(i+1,j-2);
                if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
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
    
           binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
               
            elseif((i==1)&&(j==s(2)))%5
                a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                c=image(i,j-1);
                f=image(i+1,j-2);
                if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
                end
    
                if(c>f)
        a4(1)='1';a4(2)='0';
    elseif (c<f) 
        a4(2)='1';a4(1)='0';
    else a4(2)='1';a4(1)='1';
                end
    
           binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
                  
            elseif(((i>1)&&(i<s(1)))&&(j==1))%6
                a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';
                b=image(i-1,j+2);
                e=image(i,j+1);
                g=image(i+1,j+2);
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
    
    
            binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
              
            elseif(((i>1)&&(i<s(1)))&&(j==2))%7
                a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';
                b=image(i-1,j+2);
                c=image(i,j-1);
                e=image(i,j+1);
                g=image(i+1,j+2);
                  if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
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
            binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
                  
            elseif(((i>1)&&(i<s(1)))&&((j+1==s(2))))%8
                a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                a=image(i-1,j-2);
                c=image(i,j-1);
                e=image(i,j+1);
                f=image(i+1,j-2);
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
    
     binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
                
            elseif(((i>1)&&(i<s(1)))&&(j==s(2)))%9
                a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                a=image(i-1,j-2);
                c=image(i,j-1);
                f=image(i+1,j-2);
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
    
              binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
            
            elseif((i==s(1))&&(j==1))%10
                a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                b=image(i-1,j+2);
                e=image(i,j+1);
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
    
     binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         

            elseif((i==s(1))&&(j==2))%11
              a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                b=image(i-1,j+2);
                c=image(i,j-1);
                e=image(i,j+1);
                if(c>d)
        a1(1)='1';a1(2)='0';
    elseif (c<d)
        a1(2)='1';a1(1)='0';
    else a1(2)='1';a1(1)='1';
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
    
 binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
            elseif((i==s(1))&&((j>2)&&(j+2<=s(2))))%12
                a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                a=image(i-1,j-2);
                b=image(i-1,j+2);
                c=image(i,j-1);
                e=image(i,j+1);
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
 binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
            elseif((i==s(1))&&((j>2)&&(j+1<=s(2))))%13
                a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                a=image(i-1,j-2);
                c=image(i,j-1);
                e=image(i,j+1);
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
    
    if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(2)='1';a5(1)='0';
    else a5(2)='1';a5(1)='1';
    end  
     binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
            elseif((i==s(1))&&(j==s(2)))%14
                a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
                a=image(i-1,j-2);
                c=image(i,j-1);
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
     binary=slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
         
            else
                a=image(i-1,j-2);
                b=image(i-1,j+2);
                c=image(i,j-1);
                e=image(i,j+1);
                f=image(i+1,j-2);
                g=image(i+1,j+2);
                binary=slgs(a,b,c,d,e,f,g);
            end          
            slgs_new_image(i,j)=max(binary);
    end
end
end
