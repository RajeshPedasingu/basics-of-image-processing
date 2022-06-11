clc;
clear all;
close all;

img1= imread("house.tiff");
figure;
imshow(img1)
title('given image-1')


img2= imread("peppers.tiff");
figure;
imshow(img2)
title('given image-2')

whos

house_info=imfinfo('house.tiff');
pepper_info=imfinfo('peppers.tiff');