 clc
 clear all
 close all
%% load classification model
 load ("STDeepNet.mat");
%% Test Image folder path
imdsValidation = imageDatastore("E:\DeepretinaNet\Disease Classification\Test images", ...
    IncludeSubfolders=true, ...
    LabelSource="foldernames");
% Number of classes
classNames = categories(imdsValidation.Labels)

scores = minibatchpredict(net,imdsValidation);
YValidation = scores2label(scores,classNames);
TValidation = imdsValidation.Labels;
% Accuracy calculation
accuracy = mean(YValidation == TValidation)
% Confusion Matric
plotconfusion(TValidation,YValidation)
title('Confusion matrix for testing images')


