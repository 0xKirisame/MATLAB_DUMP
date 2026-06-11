clear;
close all;
clc;
im = imread('im.jpg');
if size(im, 3) == 3
im = rgb2gray(im);
end
h = [-1 -2 -1; 0 0 0; 1 2 1];
y_horiz = conv2(double(im), h);
v = [-1 0 1; -2 0 2; -1 0 1];
y_vert = conv2(double(im), v);
y_combined = abs(y_horiz) + abs(y_vert);
figure;
imshow(uint8(y_combined));
title('Task 4');
