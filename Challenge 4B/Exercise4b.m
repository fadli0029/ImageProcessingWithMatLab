IMG = imread('Penguin.jpg');
new_IMG = medfilt2(IMG);

new_IMAGE = fspecial('average');
Average = imfilter(new_IMG,new_IMAGE,'replicate');

all_noise_removedIMG = Average;

subplot(4,1,1);
imshow(all_noise_removedIMG);
title('All Noise Removed');

subplot(4,1,2);
imhist(all_noise_removedIMG);
title('All Noise Removed');

subplot(4,1,3);
imshow(IMG);
title('Original');

subplot(4,1,4);
imhist(IMG);
title('Original');
