IMG = imread('test.jpg');
R = IMG(:,:,1);
%slicing off the layer
G = IMG(:,:,2);
B = IMG(:,:,3);
% imshow(R);
% imshow(G);
% imshow(B);
new_B = (0.5 .* B);
new_image = cat(3, R, G, new_B);
imshow(new_image);
% imshow(new_B);