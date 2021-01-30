IMG = imread('dark.jpg');
new_IMG = imadjust(IMG,stretchlim(IMG),[]);

subplot(2,1,1);
imshow(new_IMG);

subplot(2,1,2);
imhist(new_IMG);