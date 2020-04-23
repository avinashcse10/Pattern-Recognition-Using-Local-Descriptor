image=imread('test.jpg');
s=size(image);
for i=1:s(1)
    for j=1:s(2)
        d=image(i,j);
         if((i==1)&&(j==1))%1
            a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
            e=image(i+1,j);
            g=image(i+2,j+1);
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
            binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
            
         elseif((i==1)&&((j>1)&&(j<s(2))))%2
             a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';
            e=image(i+1,j);
             f=image(i+2,j-1);
            g=image(i+2,j+1);
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
        a7(1)='1';a7(0)='0';
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==1)&&(j==s(2)))%3
             a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
            e=image(i+1,j);
            f=image(i+2,j-1);
             if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(1)='0';a5(2)='1';
    else a5(1)='1';a5(2)='1';
             end
             if(e>f)
        a8(1)='1';a8(2)='0';
    elseif(e<f)
        a8(1)='0';a8(2)='1';
    else a8(1)='1';a8(2)='1';
             end
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==2)&&(j==1))%4
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             c=image(i-1,j);
            e=image(i+1,j);
            g=image(i+2,j+1);
            if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==2)&&((j>1)&&(j<s(2))))%5
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';
             c=image(i-1,j);
            e=image(i+1,j);
             f=image(i+2,j-1);
            g=image(i+2,j+1);
            if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
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
        a7(1)='1';a7(0)='0';
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==2)&&(j==s(2)))%6
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
             c=image(i-1,j);
            e=image(i+1,j);
             f=image(i+2,j-1);
             if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
             end
              if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(1)='0';a5(2)='1';
    else a5(1)='1';a5(2)='1';
              end
              if(e>f)
        a8(1)='1';a8(2)='0';
    elseif(e<f)
        a8(1)='0';a8(2)='1';
    else a8(1)='1';a8(2)='1';
              end
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif(((i>2)&&(i+2<=s(1)))&&(j==1))%7
             a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             b=image(i-2,j+1);
             c=image(i-1,j);
            e=image(i+1,j);
            g=image(i+2,j+1);
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif(((i>2)&&(i+2<=s(1)))&&(j==s(2)))%8
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
             a=image(i-2,j-1);
             c=image(i-1,j);
            e=image(i+1,j);
             f=image(i+2,j-1);
             if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
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
              if(e>f)
        a8(1)='1';a8(2)='0';
    elseif(e<f)
        a8(1)='0';a8(2)='1';
    else a8(1)='1';a8(2)='1';
              end
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i+1==s(1))&&(j==1))%9
             a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             b=image(i-2,j+1);
             c=image(i-1,j);
            e=image(i+1,j);
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
             if(e>d)
        a5(1)='1';a5(2)='0';
    elseif(e<d)
        a5(1)='0';a5(2)='1';
    else a5(1)='1';a5(2)='1';
             end
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
            
         elseif((i+1==s(1))&&((j>1)&&(j<s(2))))%10
             a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             a=image(i-2,j-1);
             b=image(i-2,j+1);
             c=image(i-1,j);
            e=image(i+1,j);
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i+1==s(1))&&(j==s(2)))%11
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             a=image(i-2,j-1);
             c=image(i-1,j);
             e=image(i+1,j);
             if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==s(1))&&(j==1))%12
             a3(1)='0';a3(2)='0';a4(1)='0';a4(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             b=image(i-2,j+1);
             c=image(i-1,j);
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==s(1))&&((j>1)&&(j<s(2))))%13
             a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             a=image(i-2,j-1);
             b=image(i-2,j+1);
             c=image(i-1,j);
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
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         elseif((i==s(1))&&(j==s(2)))%14
             a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';a8(2)='0';
             a=image(i-2,j-1);
             c=image(i-1,j);
             if(c>d)
        a1(1)='1';a1(2)='0';
    elseif(c<d) 
        a1(2)='1';a1(2)='0';
    else a1(1)='1';a1(2)='1';
             end
             if(c>a)
        a4(1)='1';a4(2)='0';
    elseif(c<a) 
        a4(1)='0';a4(2)='1';
    else a4(1)='1';a4(2)='1';
             end
    binary=vertical_slgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
    
         else
             a=image(i-2,j-1);
             b=image(i-2,j+1);
             c=image(i-1,j);
             e=image(i+1,j);
             f=image(i+2,j-1);
             g=image(i+2,j+1);
             binary=vertical_slgs(a,b,c,d,e,f,g);
         end
         vertical_slgs_new_image(i,j)=max(binary);
    end
end
imshow(uint8(vertical_slgs_new_image));