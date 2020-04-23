image=imread('test.jpg');
s=size(image);
for i=1:s(1)
    for j=1:s(2)
            c=image(i,j);
           if((i==1)&&(j==1))%1
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
               d=image(i,j+1);
               f=image(i+1,j+2);
              if(d>c)
    a4(1)='1';a4(2)='0';
elseif(d<c) 
    a4(1)='0';a4(2)='1';
else a4(1)='1';a4(2)='1';
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
               
               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
               
           elseif((i==1)&&((j>1)&&(j+2<=s(2))))%2
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';
               d=image(i,j+1);
               e=image(i+1,j-1);
               f=image(i+1,j+2);
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

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
               
           elseif((i==1)&&((j+1==s(2))))%3
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
               d=image(i,j+1);
               e=image(i+1,j-1);
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

                if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
                end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif((i==1)&&(j==s(2)))%4
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a4(1)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';
               e=image(i+1,j-1);
                if(c>e)
    a3(1)='1';a3(2)='0';
elseif(c<e) 
    a3(1)='0';a3(2)='1';
else a3(1)='1';a3(2)='1';
                end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif(((i>1)&&(i<s(1)))&&(j==1))%5
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';
               b=image(i-1,j+2);
               d=image(i,j+1);
               f=image(i+1,j+2);
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

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif(((i==s(1)))&&(j==1))%6
               a1(1)='0';a1(2)='0';a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
               b=image(i-1,j+2);
               d=image(i,j+1);
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

                if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
                end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif(((i==s(1)))&&(((j>1)&&(j+2<=s(2)))))%7
               a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
                a=image(i-1,j-1);
               b=image(i-1,j+2);
               d=image(i,j+1);
              if(a>c)
    a1(1)='1';a1(2)='0';
elseif(a<c) 
    a1(1)='0';a1(2)='1';
else a1(2)='1';a1(1)='1';
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

               if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
               end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif(((i==s(1)))&&(((j+1==s(2)))))%8
               a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
                a=image(i-1,j-1);
               d=image(i,j+1);
              if(a>c)
    a1(1)='1';a1(2)='0';
elseif(a<c) 
    a1(1)='0';a1(2)='1';
else a1(2)='1';a1(1)='1';
              end

               if(d>c)
    a4(1)='1';a4(2)='0';
elseif(d<c) 
    a4(1)='0';a4(2)='1';
else a4(1)='1';a4(2)='1';
               end

                 if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
                 end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif((i==s(1))&&(j==s(2)))%9
               a2(1)='0';a2(2)='0';a3(1)='0';a3(2)='0';a4(1)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';
                a=image(i-1,j-1);
                if(a>c)
    a1(1)='1';a1(2)='0';
elseif(a<c) 
    a1(1)='0';a1(2)='1';
else a1(2)='1';a1(1)='1';
                end

                lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
           elseif(((i>1)&&(i<s(1)))&&(j+1==s(2)))%10
               a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';
                a=image(i-1,j-1);
                d=image(i,j+1);
                e=image(i+1,j-1);
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

                if(c>d)
    a8(1)='1';a8(2)='0';
elseif(c<d)
    a8(1)='0';a8(2)='1';
else a8(1)='1';a8(2)='1';
                end

               lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
                 
           elseif(((i>1)&&(i<s(1)))&&(j==s(2)))%11
               a4(1)='0';a5(1)='0';a5(2)='0';a6(1)='0';a6(2)='0';a7(1)='0';a7(2)='0';a8(1)='0';
                a=image(i-1,j-1);
                e=image(i+1,j-1);
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

                 lgs_new_image(i,j)=lgs_traversal(a1,a2,a3,a4,a5,a6,a7,a8);
            else
                a=image(i-1,j-1);
                b=image(i-1,j+2);
                d=image(i,j+1);
                e=image(i+1,j-1);
                f=image(i+1,j+2);
                lgs_new_image(i,j)=lgs(a,b,c,d,e,f);
           end
    end
end
imshow(uint8(lgs_new_image));