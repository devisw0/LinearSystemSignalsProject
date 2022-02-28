D = imread('WeeksHallSmall.jpg');
D = rgb2gray(D);
D = double(D);

close all 

[loDecomp, hiDecomp] = wfilters('haar', 'd');

[cA, cH, cV, cD] = dwt2(D, loDecomp, hiDecomp, 'mode', 'symh'); %#ok<ASGLU>

cH = zeros(270, 325);

cV = zeros(270, 325);

cD = zeros(270, 325);



inv = idwt2(cA, cH, cV, cD,'haar', size(D));
invImg = inv;

result = D - inv;

squared_error = immse((D), inv)*539*650
max_diff = max(max(abs(result)))

tau = 10;
result = (result > tau);


figure
imshow(result)
%Difference between Original image and Inverted Image above

diffResult = result;

figure
invImg = mat2gray(invImg);
imshow(invImg)
%Inverted Image above

tau = 10;
newMat = (diffResult < tau);

zeroedImg = D;
for i = 1:5
    zeroedImg(i,:) = 0;
end

original_error = sum(sum((D - zeroedImg).^2))/(numel(zeroedImg));

zeroedImg = mat2gray(zeroedImg);
figure
imshow(zeroedImg)
%Image with 5 Zeroed out rows above


