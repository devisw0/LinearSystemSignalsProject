A = imread('WeeksHallSmall.jpg');
A = rgb2gray(A);
A = double(A);

[loDecomp, hiDecomp] = wfilters('haar', 'd');

[cA, cH, cV, cD] = dwt2(A, loDecomp, hiDecomp, 'mode', 'symh');

figure
suptitle("DWT Using imshow")
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
suptitle("DWT Using imagesc")
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


