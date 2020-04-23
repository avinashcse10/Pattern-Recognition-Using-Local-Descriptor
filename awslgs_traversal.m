function [ maximum ] = awslgs_traversal( horizontal,vertical )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
x=1;
for i=1:8
    for j=1:8
        awslgs(x)=bitor(horizontal(i),vertical(j));
        x=x+1;
    end
end
maximum=max(awslgs);

end

