% File that when executed prepares the deep networks that can extract deep features.
% This step is optional because the features' files are already uploaded to matlab.

%Install and compile MatConvNet (needed once).
oldDir = cd('..');
untar('http://www.vlfeat.org/matconvnet/download/matconvnet-1.0-beta23.tar.gz',...
    'matconvnet') ;
cd matconvnet
% Download a pre-trained VGG-Face CNN from the web (needed once).
urlwrite(...
 'http://www.vlfeat.org/matconvnet/models/vgg-face.mat', ...
 'vgg-face.mat') ;
% Download a pre-trained VGG-F CNN from the web (needed once).
urlwrite(...
 'http://www.vlfeat.org/matconvnet/models/imagenet-vgg-f.mat', ...
 'vgg-f.mat') ;

cd(oldDir);
