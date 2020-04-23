image=rgb2gray(imread('test.jpg'));
s=size(image);
for i=1:s(1)
    for j=1:s(2)
       horizontal=slgs_horizontal(image,i,j,s(1),s(2));
       vertical=slgs_vertical(image,i,j,s(1),s(2));
       awslgs(i,j)=awslgs_traversal(horizontal,vertical);
    end
end
imshow(uint8(awslgs));