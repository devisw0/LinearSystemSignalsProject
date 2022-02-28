D = imread('WeeksHallSmall.jpg');

D = rgb2gray(D);

D = double(D);

close all


d5 =[0 0 0 0 -1; 0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;1 0 0 0 0];
            
           
            
        
        
mat = conv2(d5, D);

figure
imshow(mat)





tau = 10;
mat = (mat > tau);

figure
imshow(mat)
title('threshold Tau = 10')
%used threhold of Tau =10
            
