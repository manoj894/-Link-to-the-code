clc
clear all
close all
% load segmentation model
load ("RetisegNet.mat")
% path for test image
testImage = imread('E:\DeepretinaNet\Vesssel Segmentation\testing images\1.jpg');
% Semantic segmentation
C = semanticseg(testImage,net);
B = labeloverlay(testImage,C);
figure(1),imshow(B)
% white vessels extraction
[r c]=size(C);
for i=1:r
    for j=1:c
        if C(i,j)== 'background'
            C1(i,j)= 0;
        else
            C1(i,j)= 1;
        end
    end
end
% figure,imshow(C1)
I2=im2bw(C1);
figure(2),imshow(I2)
%Vessel ground truth
gt =  imread('E:\DeepretinaNet\Vesssel Segmentation\groundtruth\1_A_bw.jpg');
gt = im2bw(gt,0.2);
figure(3),imshow(gt)
