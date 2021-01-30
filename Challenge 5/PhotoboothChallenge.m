%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  CODES  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%first strip/original
img = imread('5.png');

%second strip -scaled(Blue Layer)
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
SecStrip = (3.0 .* B);
new_imgSecStrip = cat(3, R, G, SecStrip);

%third strip -motion
ThirdStripMotion = fspecial('motion',40,55); 
ThirdStrip = imfilter(img,ThirdStripMotion,'replicate');

%Fourth strip -black and white
R4 = img(:,:,1);
G4 = img(:,:,2);
B4 = img(:,:,3);

%Fifth strip -prewitt
FifthStripPrewitt = fspecial('prewitt');
FifthStrip = imfilter(img,FifthStripPrewitt,'replicate');

%Sixth strip -scaled(Red)
R6 = img(:,:,1);
G6 = img(:,:,2);
B6 = img(:,:,3);
SixthStrip = (3.0 .* R6);
new_imgSixthStrip = cat(3, SixthStrip, G6, B6);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  PLOTS  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%first strip -original
subplot(6,1,1);
imshow(img);

%second strip -scaled(Blue Layer)
subplot(6,1,2);
imshow(new_imgSecStrip);

%third strip -motion
subplot(6,1,3);
imshow(ThirdStrip);

%Fourth strip -black and white
subplot(6,1,4);
imshow(B4);

%Fifth strip -prewitt
subplot(6,1,5);
imshow(FifthStrip);

%Sixth strip -scaled(Red Layer)
subplot(6,1,6);
imshow(new_imgSixthStrip);