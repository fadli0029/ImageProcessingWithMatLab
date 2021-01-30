clear all; clc; close all;

Fade_R = [180*ones(6,3) zeros(6,1) 215*ones(6,1) zeros(6,1)];
Fade_G = [zeros(6,1) 230*ones(6,3) 111*ones(6,1) zeros(6,1)];
Fade_B = [55*ones(6,3) zeros(6,1) 215*ones(6,1) zeros(6,1)];

Fade = zeros(6,6,3);
Fade(:,:,1) = Fade_R;
Fade(:,:,2) = Fade_G;
Fade(:,:,3) = Fade_B;

imshow(uint8(Fade))
truesize(gcf,[100 100])
set (gcf, 'units', 'normalize', 'position', [0.1,0.1,0.7,0.7]);
