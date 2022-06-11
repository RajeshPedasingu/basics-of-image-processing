clc;
clear all;
close all;


img1= imread("peppers.tiff");
figure;
imshow(img1)
title('given image-1')


M1g=img1(:,:,2);
figure;
imshow(M1g)
title('monochrome image (M1g) only green channel')

min = min(min(M1g));
disp("minimum pixel value= " + num2str(min) )
max = max(max(M1g));
disp("maximum pixel value= " + num2str(max) )

x=mean(mean(M1g));
disp("mean of M1g is = " + num2str(x) )

% standard deviation finding.



 %variance

% M1g=double(M1g);
% p=sum(((M1g(:))-x).^2);
% sd=sqrt(p/numel(M1g))

M=double(M1g);
p=var(M(:));
sd=sqrt(p);

disp("standard deviation of M1g is = " + num2str(sd) )

%-----------------------------------------------
% 4b)
M1=double(M1g);
x1=(((M1(:)-x)./sd)*10)+x;
x2=reshape(x1,512,[]);
figure;
imshow(x2/255)
title('Required image after doing  required operation in question(4-b)')


%------------------------------------------
% 4c)
x3=M1g;
x3=[x3(:,[3:length(x3)]) x3(:,[1:2])];
figure;
imshow(x3)
title('Shift M1g to the left by 2 pixels')



%------------------------------------------
% 4d)


M1g=double(M1g);
x4= (M1g-double(x3))/255;
x5=(x4+1)/2;
figure;
imshow(x5)
title('Subtract the shifted version of M1g from the original')









