D = imread('WeeksHallSmall.jpg');
D = rgb2gray(D);
D = double(D);

[loDecomp, hiDecomp] = wfilters('haar', 'd');

[cA, cH, cV, cD] = dwt2(D, loDecomp, hiDecomp, 'mode', 'symh');



figure

subplot(2,2,1)
imagesc(cA)
colormap gray
title('Approximation')

subplot(2,2,2)
imshow(cH)
title('Horizontal')

subplot(2,2,3)
imshow(cV)
title('Vertical')

subplot(2,2,4)
imshow(cD)
title('Diagonal')



figure

subplot(2,2,1)
imagesc(cA)
colormap gray
title('Approximation')

subplot(2,2,2)
imagesc(cH)
title('Horizontal')

subplot(2,2,3)
imagesc(cV)
title('Vertical')

subplot(2,2,4)
imagesc(cD)
title('Diagonal')


