D = imread('WeeksHallSmall.jpg');

D = rgb2gray(D);

D = double(D);

[cA, cH, cV, cD] = dwt2(D, 'haar');

inv = idwt2(cA, cH, cV, cD,'haar', size(D));

figure
imagesc(inv)
title("Inverse DWT")
colormap gray

 
squared_error = immse((D), inv)*539*650

max_diff = max(max(abs(D - inv))) 

