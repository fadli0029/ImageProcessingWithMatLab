IMG = imread('dark.jpg');
new_IMG = histeq(IMG);

subplot(2,1,1);
imshow(new_IMG);

subplot(2,1,2);
imhist(new_IMG);

% subplot(2,1,1);
% imshow(IMG);
% imhist(IMG);

% subplot(2,1,2);
% imhist(new_IMG);
% imshow(new_IMG);