function data = fiveX5_LNDP(img)
%img = imread('C:\Users\Shaik Nazeer\Documents\MATLAB\test\Bottle\2.jpg');
[x, y] = size(img);

if y==3
    img = rgb2gray(img);
end
%imshow(img);
img = int16(img);

result_mode0 = lndp(img);
result_mode0 = uint8(result_mode0);
%%subplot(1,3,1);
%%imshow(result_mode0);
%%title('Mode 0');

result_mode1 = lndp_mode1(img);
result_mode1 = uint8(result_mode1);
%%subplot(1,3,2);
%%imshow(result_mode1);
%%title('mode 1');
result_mode2 = lndp_mode2(img);
result_mode2 = uint8(result_mode2);
%%subplot(1,3,3);
%%imshow(result_mode2);
%%title('mode 2');
histogram1 = imhist(result_mode0,32);
histogram2 = imhist(result_mode1,32);
histogram3 = imhist(result_mode2,32);
combinedhist = [histogram1(:); histogram2(:);histogram3(:)];
data = combinedhist;
%%figure
%%plot(combinedhist);
end
