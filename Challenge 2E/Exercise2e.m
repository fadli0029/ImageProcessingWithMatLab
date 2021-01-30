%STEP 1
IMG = imread('stained_teeth.jpg'); 
%STEP 2
R = IMG(:,:,1); %slicing off the red layer
G = IMG(:,:,2); %slicing off the green layer
B = IMG(:,:,3); %slicing off the blue layer
new_B = (1.5 .* B); %scaling
%STEP 3
new_image = cat(3, R, G, new_B); %concatenating
%STEP 4
subplot(2,1,1);
imshow(IMG);
subplot(2,1,2);
imshow(new_image);
