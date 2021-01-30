% Color: RGB 3-Dimensional Matrix
% Overlay 3 Matricies
clear all; clc; close all;
%These are 2D arrays with a 3 by 3 array
A_R = [255 0 0; 255 0 0; 255 0 0;];
A_G = [0 255 0; 0 255 0; 0 255 0;];
A_B = [0 0 255; 0 0 255; 0 0 255;];
A = zeros(3,3,3); %this is a 3D array of all zeros
%The zeros() function creates an array of all zeros
%the number of arguments corresponds to the dimension
%a single argument creates a square array, double arguments create
%rectangular array, triple arguments create 3D array
A(:,:,1) = A_R; %for all rows and all columns on the first "page" (layer), replace all zeros with A_R array
A(:,:,2) = A_G; %for all rows and all columns on the second "page" (layer), replace all zeros with A_R array
A(:,:,3) = A_B; %for all rows and all columns on the third "page" (layer), replace all zeros with A_R array
%here^ we are extending our 2D arrays to make it 3D, i.e: we are layering
%it
imshow(uint8(A))
truesize(gcf,[100 100])
set (gcf, 'Units', 'normalized', 'Position', [0.1,0.1,0.7,0.7]);