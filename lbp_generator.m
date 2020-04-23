function [ lbp_new_image ] = lbp_generator( image )
s=size(image);
for i=1:s(1)
    for j=1:s(2)
        for k=1:s(3)
        if((i==1)&&(j==1))
            a1=0;a2=0;a3=0;a4=0;a7=0;
            a6=image(i,j+1,k);
            a8=image(i+1,j,k);
            a9=image(i+1,j+1,k);
        elseif((i==1)&&((j>1)&&(j~=s(2))))
            a1=0;a2=0;a3=0;
            a4=image(i,j-1,k);
            a6=image(i,j+1,k);
            a7=image(i+1,j-1,k);
            a8=image(i+1,j,k);
            a9=image(i+1,j+1,k);
        elseif((i==1)&&(j==s(2)))
            a1=0;a2=0;a3=0;a6=0;a9=0;
            a4=image(i,j-1,k);
            a7=image(i+1,j-1,k);
            a8=image(i+1,j,k);
        elseif((i==s(1))&&(j==1))
            a2=image(i-1,j,k);
            a3=image(i-1,j+1,k);
            a6=image(i,j+1,k);
            a1=0;a4=0;a7=0;a8=0;a9=0;
        elseif(((i>1)&&(i~=s(1)))&&(j==1))
            a1=0;a4=0;a7=0;
            a2=image(i-1,j,k);
            a3=image(i-1,j+1,k);
            a6=image(i,j+1,k);
            a8=image(i+1,j,k);
            a9=image(i+1,j+1,k);
        elseif((i==s(1))&&(j==s(2)))
            a1=image(i-1,j-1,k);
            a2=image(i-1,j,k);
            a4=image(i,j-1,k);
            a3=0;a6=0;a7=0;a8=0;a9=0;
        elseif((i==s(1))&&(j<s(2)))
            a1=image(i-1,j-1,k);
            a2=image(i-1,j,k);
            a3=image(i-1,j+1,k);
            a4=image(i,j-1,k);
            a6=image(i,j+1,k);
            a7=0;a8=0;a9=0;
        elseif((i>1)&&(j==s(2)))
            a1=image(i-1,j-1,k);
            a2=image(i-1,j,k);
            a4=image(i,j-1,k);
            a7=image(i+1,j-1,k);
            a8=image(i+1,j,k);
            a3=0;a6=0;a9=0;
            
        else
            a1=image(i-1,j-1,k);
            a2=image(i-1,j,k);
            a3=image(i-1,j+1,k);
            a4=image(i,j-1,k);
            a6=image(i,j+1,k);
            a7=image(i+1,j-1,k);
            a8=image(i+1,j,k);
            a9=image(i+1,j+1,k);
        end
            a5=image(i,j,k);
            lbp_new_image(i,j,k)=lbp(a1,a2,a3,a4,a5,a6,a7,a8,a9);
        end
    end
end
lbp_new_image=uint8(lbp_new_image);



end

