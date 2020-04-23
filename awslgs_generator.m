function [ awslgs ] = awslgs_generator( image )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
s=size(image);
for i=1:s(1)
    for j=1:s(2)
       horizontal=slgs_horizontal(image,i,j,s(1),s(2));
       vertical=slgs_vertical(image,i,j,s(1),s(2));
       awslgs(i,j)=awslgs_traversal(horizontal,vertical);
    end
end

end

