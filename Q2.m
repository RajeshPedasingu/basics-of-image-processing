clc;
clear all;
close all;


img1= imread("peppers.tiff");
figure;
imshow(img1)
title('given image-1')


%% a) answer

img2=img1; 

temp=img2(:,:,1);
img2(:,:,1)=img2(:,:,3);
img2(:,:,3)=temp;
swap_colour=img2;
figure;
imshow(swap_colour)
title('after swaping the colours of image-1')




%%  b) answer


M1g=img1(:,:,2);
figure;
imshow(M1g)
title('monochrome image (M1g) only green channel')






%% c) answer

M1r=img1(:,:,1);
figure;
imshow(M1r)
title('monochrome image (M1r) only red channel')








%% d) answer

M1b=img1(:,:,3);

figure;
subplot(2,3,1)
imshow(M1g)
title('given channel')
subplot(2,3,2)
imshow(M1r)
title('red channel')
subplot(2,3,3)
imshow(M1b)
title('blue channel')


subplot(2,3,4)
histogram(M1g)
title('M1g histogram')

subplot(2,3,5)
histogram(M1r)
title('M1r histogram')

subplot(2,3,6)
histogram(M1b)
title('M1b histogram')













% M1g=img1(:,:,1);
% figure;
% imshow(M1g)
% 
% M1g=img1(:,:,2);
% figure;
% imshow(M1g)
% 
% M1g=img1(:,:,3);
% figure;
% imshow(M1g)