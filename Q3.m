clc;
clear all;
close all;



%image read and display
img1= imread("house.tiff");
img2= imread("peppers.tiff");
figure;
subplot(1,2,1)
imshow(img1)
title('given image-1');
subplot(1,2,2)
imshow(img2)
title('given image-2');

% convert image to monochrome version
img1=img1(:,:,3);
figure;
subplot(1,2,1)
imshow(img1)
title('monochrome version of image 1');
img2=img2(:,:,3);
subplot(1,2,2)
imshow(img2)
title('monochrome version of image 2')


% segment 50*100 from imagr 1
segment1= img1([231:280],[206:305]);
figure;
imshow(segment1)
title('selected 50*100 pixel of image-1 at center')



% 50*100 pixel of image-1 inserted in image-2 as same position
img2([231:280],[206:305])= img1([231:280],[206:305]);
figure;
imshow(img2)
title(' 50*100 pixel of image-1 inserted in image-2 as same position')

% 