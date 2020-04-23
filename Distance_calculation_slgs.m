image=rgb2gray(imread('test.jpg'));
%image=imresize(image,[50 50]);
image_size=size(image);
pattern=rgb2gray(imread('test1.jpg'));
%pattern=imresize(pattern,[5 5]);
pattern_size=size(pattern);
pattern_slgs=slgs_generator(pattern);
window_length=image_size(1)-pattern_size(1)+1;
window_breadth=image_size(2)-pattern_size(2)+1;
a=1;
for i=0:window_length-1
    for j=0:window_breadth-1
        for k=1:pattern_size(1)
            for l=1:pattern_size(2)
              image_window(k,l)=image(i+k,j+l);
            end
        end
     image_window_slgs=slgs_generator(image_window);
     window(:,:,i+1,j+1)=image_window_slgs;
     dis(:,:,i+1,j+1)=image_window_slgs-pattern_slgs;
     dist=(dis.^2);
    dista=0;
     for k=1:pattern_size(1)
       for l=1:pattern_size(2)
           dista=dista+dist(k,l,i+1,j+1);
       end
     end
     e_distance(i+1,j+1)=sqrt(dista);
    end
end
min=9999;
for i=1:window_length
    for j=1:window_breadth
        if(e_distance(i,j)<min)
            min=e_distance(i,j);
        end
    end
end
x=rand(0.1,1.21);
threshold=(1.75*min)+(pattern_size(1)*pattern_size(2));
for i=1:window_length
    for j=1:window_breadth
        if(e_distance(i,j)==min)
            imshow(uint8(window(:,:,i,j)));
        end
    end
end
